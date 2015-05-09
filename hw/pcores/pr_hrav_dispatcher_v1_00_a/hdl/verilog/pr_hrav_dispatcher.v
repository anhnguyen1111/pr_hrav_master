//////////////////////////////////////////////////////////////////////////////////
// Company: HOCHIMINH CITY UNIVERSITY OF TECHNOLOGY - HCMUT
// Project: HR-AV
// Engineer: Nguyen Van Quang Anh
// Email: nvqanh@gmail.com
// 
// Create Date:    
// Design Name: 
// Module Name:    pr_hrav_dispatcher
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//    * This module is to interface with SW in-order to dispatch data
//    to either scanner core 0, scanner 1 or ICAP controller
//    * It's assumed that packet is sent without interleaving
//    * Currently, dispatcher is based on HEADER[4] of the packet
//      to dispatch data received from S/W. Rule is as below
//      [1:0]: 11 To ICAP
//             10 To scanner
//             01, 00: Reserved (but implementation treat as to scanner)
//      [2]  : 0  To core 0
//             1  To core 1
//    * Note that packet is FWD. as it is, no modification is done       
//      It's in consideration if in case data is fwd. to ICAP controller
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////

`define EN_DISPATCHER_ASYNC_FIFO // Comment out this to remove async FIFO
                                 // In that case, ACLK must be same as CORE_CLK at TOP level
//----------------------------------------
// Module Section
//----------------------------------------
module pr_hrav_dispatcher 
#(
    // Master AXI Stream Data Width
  parameter                              C_M_AXIS_DATA_WIDTH = 256,
  parameter                              C_S_AXIS_DATA_WIDTH = 256
  )
	(
		// Clock/reset
	input	ACLK,
	input	ARESETN,
  input CORE_CLK,
  input CORE_RESETN,

    // Enable to de-coupling with scanner cores during reconfiguration
  input core_0_enb,
  input core_1_enb,

    // RX DMA interface to received data sent from S/W via PCIe EP
   input [C_S_AXIS_DATA_WIDTH-1:0]   S_AXIS_TDATA,
   input [((C_S_AXIS_DATA_WIDTH / 8)) - 1:0]    S_AXIS_TSTRB,
   input          S_AXIS_TVALID,
   input [127:0]  S_AXIS_TUSER,
   input          S_AXIS_TLAST,
   output         S_AXIS_TREADY,

    // To scanner core 0
   output  [C_M_AXIS_DATA_WIDTH-1:0]  CORE0_M_AXIS_TDATA,
   output  [((C_M_AXIS_DATA_WIDTH / 8)) - 1:0]   CORE0_M_AXIS_TSTRB,
   output          CORE0_M_AXIS_TVALID,
   output  [127:0] CORE0_M_AXIS_TUSER,
   output          CORE0_M_AXIS_TLAST,
   input           CORE0_M_AXIS_TREADY,

    // To scanner core 1
   output  [C_M_AXIS_DATA_WIDTH-1:0]  CORE1_M_AXIS_TDATA,
   output  [((C_M_AXIS_DATA_WIDTH / 8)) - 1:0]   CORE1_M_AXIS_TSTRB,
   output          CORE1_M_AXIS_TVALID,
   output  [127:0] CORE1_M_AXIS_TUSER,
   input           CORE1_M_AXIS_TREADY,
   output          CORE1_M_AXIS_TLAST,

    // To ICAP controller
   output  [C_M_AXIS_DATA_WIDTH-1:0]  ICAP_M_AXIS_TDATA,
   output  [((C_M_AXIS_DATA_WIDTH / 8)) - 1:0]   ICAP_M_AXIS_TSTRB,
   output          ICAP_M_AXIS_TVALID,
   output  [127:0] ICAP_M_AXIS_TUSER,
   input           ICAP_M_AXIS_TREADY,
   output          ICAP_M_AXIS_TLAST,

    // Debug interface
   input dbg_ctrl_0,
   input dbg_ctrl_1,
   input dbg_ctrl_2,
   input dbg_ctrl_3

	);

  //Handsake with RX DMA
  wire recv_data, last_data;
  reg  dispatcher_rdy;
  assign S_AXIS_TREADY  = dispatcher_rdy;
  assign recv_data      = S_AXIS_TVALID & dispatcher_rdy;
  assign last_data      = S_AXIS_TLAST;
  /////////////////////////////////////////////////////

  // Control sync.
  wire core_0_enb_aclk_syn, core_1_enb_aclk_syn;
  single_bit_sync_n core_0_enb_syn (.clk(ACLK), .rst_n(ARESETN), .in_sig(core_0_enb), .sync_sig(core_0_enb_aclk_syn));
  single_bit_sync_n core_1_enb_syn (.clk(ACLK), .rst_n(ARESETN), .in_sig(core_1_enb), .sync_sig(core_1_enb_aclk_syn));

  // Dispatcher FSM
    // FSM mapping
  localparam HEADER    = 3'b000; // In this state, packet header is parsed to decide the destination
  localparam CORE0_PKT = 3'b001; // In this state, packet is fwd. to scanner core 0
  localparam CORE1_PKT = 3'b010; // In this state, packet is fwd. to scanner core 1
  localparam ICAP_PKT  = 3'b100; // In this state, packet is fwd. to ICAP controller
  
  reg [2:0] state, nxt_state;
  reg [1:0] pr_state, nxt_pr_state;
  reg core_sel_mask, nxt_core_sel_mask;  

    // Dispatcher decoder
  wire [3:0] dis_patch_header = S_AXIS_TVALID ? {S_AXIS_TDATA[28], S_AXIS_TDATA[26:24]} // Bit [4], [2:0] of HEADER[4]
                                              : 4'b0_011;
                                // Need to use TVALID to quantify, avoid X-propagation in control
  wire [2:0] pre_dst_sel;
  assign pre_dst_sel[2:0] = (dis_patch_header[1:0] == 2'b11) ? 3'b100 : //  ICAP
                             core_sel_mask ? {1'b0, pr_state[0], pr_state[1]} : // PR is on progress, need to dis-patch
                                                                                // to the active core
                            (core_0_enb_aclk_syn & core_1_enb_aclk_syn) ? {1'b0, dis_patch_header[2], ~dis_patch_header[2]} : // Normal scan 
                            {1'b0, core_1_enb_aclk_syn, core_0_enb_aclk_syn}; // Debug
  
  wire [2:0] dst_sel = dbg_ctrl_3 ? {dbg_ctrl_2, dbg_ctrl_1, dbg_ctrl_0} : pre_dst_sel;
    // FSM Seq. logic
  always @(posedge ACLK) begin
    if(~ARESETN) state         <= HEADER;
    else         state         <= nxt_state;
  end
  
    // FSM Comb. logic
  reg  [2:0]  nxt_pe_valid; // To next processing element
  wire [2:0]  nxt_pe_ready;  // Next processing element is ready
  always @ (*) begin
    dispatcher_rdy  = 1'b0;
    nxt_pe_valid   = 3'b0;

    nxt_state = state;   

    case (state)
    HEADER: begin
      nxt_pe_valid = {3{S_AXIS_TVALID}} & dst_sel;
      dispatcher_rdy = |(nxt_pe_ready   & dst_sel);
     // State transition
      if (recv_data & ~last_data) begin
        nxt_state = ({3{dst_sel[0]}} & CORE0_PKT) |
                    ({3{dst_sel[1]}} & CORE1_PKT) |
                    ({3{dst_sel[2]}} & ICAP_PKT);
      end
    end

    CORE0_PKT: begin
      // Control
      dispatcher_rdy = nxt_pe_ready[0];
      nxt_pe_valid[0] = S_AXIS_TVALID;
      // State transition
      // Keep in this state till the last cell is received
      nxt_state = (recv_data & last_data) ? HEADER : CORE0_PKT;
    end

    CORE1_PKT: begin
      // Control
      dispatcher_rdy = nxt_pe_ready[1];
      nxt_pe_valid[1] = S_AXIS_TVALID;
      // State transition
      // Keep in this state till the last cell is received
      nxt_state = (recv_data & last_data) ? HEADER : CORE1_PKT;
    end

    ICAP_PKT: begin
      // Control
      dispatcher_rdy = nxt_pe_ready[2];
      nxt_pe_valid[2] = S_AXIS_TVALID;
      // State transition
      // Keep in this state till the last cell is received
      nxt_state = (recv_data & last_data) ? HEADER : ICAP_PKT;
    end
    endcase  
  end
  /////////////////////////////////////////////////////

  // Partial Configuration FSM
  localparam PR_IDLE  = 3'b00;
  localparam PR_CORE0_STR = 3'b001;
  localparam PR_CORE0_END = 3'b101;
  localparam PR_CORE1_STR = 3'b010;
  localparam PR_CORE1_END = 3'b110;
    // FSM Seq. logic
  always @(posedge ACLK) begin
    if(~ARESETN) begin
      pr_state         <= HEADER;
      core_sel_mask    <= 1'b0;
    end
    else begin         
      pr_state         <= nxt_pr_state;
      core_sel_mask    <= nxt_core_sel_mask;
    end
  end
  always @* begin
    nxt_pr_state = pr_state;
    nxt_core_sel_mask = core_sel_mask;
    case (pr_state)
    PR_IDLE: begin
      if ((state == HEADER) & (nxt_state == ICAP_PKT)) begin
        nxt_pr_state = dis_patch_header[2] ? PR_CORE1_STR : PR_CORE0_STR;
        nxt_core_sel_mask = 1'b1;
      end
    end
    PR_CORE0_STR: begin
      if (recv_data & dis_patch_header[3] & last_data) begin
        nxt_pr_state = PR_CORE0_END;
      end
    end
    PR_CORE0_END: begin
      // Core 0 enable
      if (core_0_enb_aclk_syn) begin
        nxt_pr_state = PR_IDLE;
        nxt_core_sel_mask = 1'b0;
      end
    end
    PR_CORE1_STR: begin
      if (recv_data & dis_patch_header[3] & last_data) begin
        nxt_pr_state = PR_CORE1_END;
      end
    end
    PR_CORE1_END: begin
      // Core 0 enable
      if (core_1_enb_aclk_syn) begin
         nxt_pr_state = PR_IDLE;
         nxt_core_sel_mask = 1'b0;
      end
    end
    endcase
  end

  /////////////////////////////////////////////////////
  wire [2:0] dbuf_valid, dbuf_ready;
  parameter DAT_BW = C_M_AXIS_DATA_WIDTH+16+(C_M_AXIS_DATA_WIDTH/8) + 1; // 305 fixed, only use 16-bit of TUSER
  wire [DAT_BW-1:0] core0_dbuf_data_in;
  wire [DAT_BW-1:0] core1_dbuf_data_in;
  wire [DAT_BW-1:0] icap_dbuf_data_in;

  // No buffer option for ICAP as ICAP has already async FIFO inside
  assign icap_dbuf_data_in = {S_AXIS_TLAST, S_AXIS_TUSER[15:0], S_AXIS_TSTRB, S_AXIS_TDATA};
  assign dbuf_valid[2]   = nxt_pe_valid[2];
  assign nxt_pe_ready[2] = dbuf_ready[2];
  
  `ifdef EN_DISPATCHER_ASYNC_FIFO
  wire core0_wfull, core0_winc, core0_rempty, core0_inc;
  wire [DAT_BW-1:0] core0_wdata, core0_rdata;
  wire core1_wfull, core1_winc, core1_rempty, core1_inc;
  wire [DAT_BW-1:0] core1_wdata, core1_rdata;

  assign core0_wdata = {S_AXIS_TLAST, S_AXIS_TUSER[15:0], S_AXIS_TSTRB, S_AXIS_TDATA};
  assign core1_wdata = {S_AXIS_TLAST, S_AXIS_TUSER[15:0], S_AXIS_TSTRB, S_AXIS_TDATA};

  assign nxt_pe_ready[1:0] = {~core1_wfull, ~core0_wfull};
  assign {core1_winc, core0_winc} = nxt_pe_valid[1:0] & {~core1_wfull, ~core0_wfull};
//  pr_hrav_dispatcher_asyncfifo core0_asyncfifo(
//    .wclk(ACLK), .wrst_n(ARESETN),
//    .rclk(CORE_CLK), .rrst_n(CORE_RESETN),
//		.wfull(core0_wfull), .winc(core0_winc), .wdata(core0_wdata),
//    .rempty(core0_rempty), .rinc(core0_rinc), .rdata(core0_rdata)
//  );
//  pr_hrav_dispatcher_asyncfifo core1_asyncfifo(
//    .wclk(ACLK), .wrst_n(ARESETN),
//    .rclk(CORE_CLK), .rrst_n(CORE_RESETN),
//		.wfull(core1_wfull), .winc(core1_winc), .wdata(core1_wdata),
//    .rempty(core1_rempty), .rinc(core1_rinc), .rdata(core1_rdata)
//  );
    pr_hrav_dispatcher_fifo core0_asyncfifo(
      .rst(~ARESETN),
      .wr_clk(ACLK),
      .rd_clk(CORE_CLK),
      .din(core0_wdata),
      .wr_en(core0_winc),
      .rd_en(core0_rinc),
      .dout(core0_rdata),
      .full(core0_wfull),
      .empty(core0_rempty)
    );
    pr_hrav_dispatcher_fifo core1_asyncfifo(
      .rst(~ARESETN),
      .wr_clk(ACLK),
      .rd_clk(CORE_CLK),
      .din(core1_wdata),
      .wr_en(core1_winc),
      .rd_en(core1_rinc),
      .dout(core1_rdata),
      .full(core1_wfull),
      .empty(core1_rempty)
    );    

  assign dbuf_valid[1:0] = {~core1_rempty, ~core0_rempty};
  assign {core1_rinc, core0_rinc} = {~core1_rempty , ~core0_rempty} & dbuf_ready[1:0];
  assign core0_dbuf_data_in = core0_rdata;
  assign core1_dbuf_data_in = core1_rdata;
  `else
  assign core0_dbuf_data_in = {S_AXIS_TLAST, S_AXIS_TUSER[15:0], S_AXIS_TSTRB, S_AXIS_TDATA};
  assign core1_dbuf_data_in = {S_AXIS_TLAST, S_AXIS_TUSER[15:0], S_AXIS_TSTRB, S_AXIS_TDATA};
  assign dbuf_valid[1:0]   = nxt_pe_valid[1:0];
  assign nxt_pe_ready[1:0] = dbuf_ready[1:0];  
  `endif

  /////////////////////////////////////////////////////
  // Double-buffer for timing closure
  assign CORE0_M_AXIS_TUSER[127:16] = 112'b0;
  assign CORE1_M_AXIS_TUSER[127:16] = 112'b0;
  assign ICAP_M_AXIS_TUSER[127:16] = 112'b0;
  pr_hrav_dbuf #(.DAT_BW(DAT_BW)) core0_dbuf( // Core 0
    // Clock, reset
    .clk(ACLK), .rst_n(ARESETN),
    // Write interface
    .vld_in(dbuf_valid[0]), .data_in(core0_dbuf_data_in), .ready_out(dbuf_ready[0]),
    // Read interface
    .ready_in(CORE0_M_AXIS_TREADY | ~core_0_enb | pr_state[0]), .vld_out(CORE0_M_AXIS_TVALID), 
    .data_out({CORE0_M_AXIS_TLAST, CORE0_M_AXIS_TUSER[15:0], CORE0_M_AXIS_TSTRB, CORE0_M_AXIS_TDATA})
  );

  pr_hrav_dbuf #(.DAT_BW(DAT_BW)) core1_dbuf( // Core 1
    // Clock, reset
    .clk(ACLK), .rst_n(ARESETN),
    // Write interface
    .vld_in(dbuf_valid[1]), .data_in(core1_dbuf_data_in), .ready_out(dbuf_ready[1]),
    // Read interface
    .ready_in(CORE1_M_AXIS_TREADY | ~core_1_enb | pr_state[1]), .vld_out(CORE1_M_AXIS_TVALID), 
    .data_out({CORE1_M_AXIS_TLAST, CORE1_M_AXIS_TUSER[15:0], CORE1_M_AXIS_TSTRB, CORE1_M_AXIS_TDATA})
  );

  pr_hrav_dbuf #(.DAT_BW(DAT_BW)) icap_dbuf( // ICAP controller
    // Clock, reset
    .clk(ACLK), .rst_n(ARESETN),
    // Write interface
    .vld_in(dbuf_valid[2]), .data_in(icap_dbuf_data_in), .ready_out(dbuf_ready[2]),
    // Read interface
    .ready_in(ICAP_M_AXIS_TREADY), .vld_out(ICAP_M_AXIS_TVALID), 
    .data_out({ICAP_M_AXIS_TLAST, ICAP_M_AXIS_TUSER[15:0], ICAP_M_AXIS_TSTRB, ICAP_M_AXIS_TDATA})
  );
endmodule

