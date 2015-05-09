//-----------------------------------------------------------------------------
// pr_hrav_icap_controller_0_wrapper.v
//-----------------------------------------------------------------------------

module pr_hrav_icap_controller_0_wrapper
  (
    ACLK,
    ICAP_clk,
    RESETN,
    RESET,
    core_0_enb,
    core_1_enb,
    core_0_reset,
    core_1_reset,
    core_sync_reset,
    core_sync_reset_n,
    hrav_0_axis_lp,
    hrav_1_axis_lp,
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
  input ICAP_clk;
  input RESETN;
  input RESET;
  output core_0_enb;
  output core_1_enb;
  output core_0_reset;
  output core_1_reset;
  output core_sync_reset;
  output core_sync_reset_n;
  output hrav_0_axis_lp;
  output hrav_1_axis_lp;
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

  pr_hrav_icap_controller
    #(
      .C_S_AXIS_DATA_WIDTH ( 256 ),
      .C_M_AXIS_DATA_WIDTH ( 256 ),
      .C_BASEADDR ( 32'h12000000 ),
      .C_HIGHADDR ( 32'h1200FFFF ),
      .USER_MAGIC_CODE ( 24'haecafe )
    )
    pr_hrav_icap_controller_0 (
      .ACLK ( ACLK ),
      .ICAP_clk ( ICAP_clk ),
      .RESETN ( RESETN ),
      .RESET ( RESET ),
      .core_0_enb ( core_0_enb ),
      .core_1_enb ( core_1_enb ),
      .core_0_reset ( core_0_reset ),
      .core_1_reset ( core_1_reset ),
      .core_sync_reset ( core_sync_reset ),
      .core_sync_reset_n ( core_sync_reset_n ),
      .hrav_0_axis_lp ( hrav_0_axis_lp ),
      .hrav_1_axis_lp ( hrav_1_axis_lp ),
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

