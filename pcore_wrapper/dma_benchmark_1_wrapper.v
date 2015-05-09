//-----------------------------------------------------------------------------
// dma_benchmark_1_wrapper.v
//-----------------------------------------------------------------------------

module dma_benchmark_1_wrapper
  (
    ACLK,
    RESETN,
    dbg_ctrl_0,
    dbg_ctrl_1,
    dbg_ctrl_2,
    dbg_ctrl_3,
    S_AXIS_TREADY,
    S_AXIS_TDATA,
    S_AXIS_TSTRB,
    S_AXIS_TUSER,
    S_AXIS_TLAST,
    S_AXIS_TVALID,
    M_AXIS_TVALID,
    M_AXIS_TDATA,
    M_AXIS_TSTRB,
    M_AXIS_TUSER,
    M_AXIS_TLAST,
    M_AXIS_TREADY,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY
  );
  input ACLK;
  input RESETN;
  output dbg_ctrl_0;
  output dbg_ctrl_1;
  output dbg_ctrl_2;
  output dbg_ctrl_3;
  output S_AXIS_TREADY;
  input [255:0] S_AXIS_TDATA;
  input [31:0] S_AXIS_TSTRB;
  input [127:0] S_AXIS_TUSER;
  input S_AXIS_TLAST;
  input S_AXIS_TVALID;
  output M_AXIS_TVALID;
  output [255:0] M_AXIS_TDATA;
  output [31:0] M_AXIS_TSTRB;
  output [127:0] M_AXIS_TUSER;
  output M_AXIS_TLAST;
  input M_AXIS_TREADY;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input [31:0] S_AXI_AWADDR;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  input [31:0] S_AXI_WDATA;
  input [3:0] S_AXI_WSTRB;
  input S_AXI_WVALID;
  output S_AXI_WREADY;
  output [1:0] S_AXI_BRESP;
  output S_AXI_BVALID;
  input S_AXI_BREADY;
  input [31:0] S_AXI_ARADDR;
  input S_AXI_ARVALID;
  output S_AXI_ARREADY;
  output [31:0] S_AXI_RDATA;
  output [1:0] S_AXI_RRESP;
  output S_AXI_RVALID;
  input S_AXI_RREADY;

  dma_benchmark
    #(
      .C_S_AXIS_DATA_WIDTH ( 256 ),
      .C_M_AXIS_DATA_WIDTH ( 256 ),
      .C_BASEADDR ( 32'h10000000 ),
      .C_HIGHADDR ( 32'h1000FFFF ),
      .USER_MAGIC_CODE ( 24'haecafe )
    )
    dma_benchmark_1 (
      .ACLK ( ACLK ),
      .RESETN ( RESETN ),
      .dbg_ctrl_0 ( dbg_ctrl_0 ),
      .dbg_ctrl_1 ( dbg_ctrl_1 ),
      .dbg_ctrl_2 ( dbg_ctrl_2 ),
      .dbg_ctrl_3 ( dbg_ctrl_3 ),
      .S_AXIS_TREADY ( S_AXIS_TREADY ),
      .S_AXIS_TDATA ( S_AXIS_TDATA ),
      .S_AXIS_TSTRB ( S_AXIS_TSTRB ),
      .S_AXIS_TUSER ( S_AXIS_TUSER ),
      .S_AXIS_TLAST ( S_AXIS_TLAST ),
      .S_AXIS_TVALID ( S_AXIS_TVALID ),
      .M_AXIS_TVALID ( M_AXIS_TVALID ),
      .M_AXIS_TDATA ( M_AXIS_TDATA ),
      .M_AXIS_TSTRB ( M_AXIS_TSTRB ),
      .M_AXIS_TUSER ( M_AXIS_TUSER ),
      .M_AXIS_TLAST ( M_AXIS_TLAST ),
      .M_AXIS_TREADY ( M_AXIS_TREADY ),
      .S_AXI_ACLK ( S_AXI_ACLK ),
      .S_AXI_ARESETN ( S_AXI_ARESETN ),
      .S_AXI_AWADDR ( S_AXI_AWADDR ),
      .S_AXI_AWVALID ( S_AXI_AWVALID ),
      .S_AXI_AWREADY ( S_AXI_AWREADY ),
      .S_AXI_WDATA ( S_AXI_WDATA ),
      .S_AXI_WSTRB ( S_AXI_WSTRB ),
      .S_AXI_WVALID ( S_AXI_WVALID ),
      .S_AXI_WREADY ( S_AXI_WREADY ),
      .S_AXI_BRESP ( S_AXI_BRESP ),
      .S_AXI_BVALID ( S_AXI_BVALID ),
      .S_AXI_BREADY ( S_AXI_BREADY ),
      .S_AXI_ARADDR ( S_AXI_ARADDR ),
      .S_AXI_ARVALID ( S_AXI_ARVALID ),
      .S_AXI_ARREADY ( S_AXI_ARREADY ),
      .S_AXI_RDATA ( S_AXI_RDATA ),
      .S_AXI_RRESP ( S_AXI_RRESP ),
      .S_AXI_RVALID ( S_AXI_RVALID ),
      .S_AXI_RREADY ( S_AXI_RREADY )
    );

endmodule

