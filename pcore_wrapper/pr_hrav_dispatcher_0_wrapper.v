//-----------------------------------------------------------------------------
// pr_hrav_dispatcher_0_wrapper.v
//-----------------------------------------------------------------------------

module pr_hrav_dispatcher_0_wrapper
  (
    ACLK,
    ARESETN,
    CORE_CLK,
    CORE_RESETN,
    core_0_enb,
    core_1_enb,
    dbg_ctrl_0,
    dbg_ctrl_1,
    dbg_ctrl_2,
    dbg_ctrl_3,
    S_AXIS_TDATA,
    S_AXIS_TSTRB,
    S_AXIS_TUSER,
    S_AXIS_TLAST,
    S_AXIS_TVALID,
    S_AXIS_TREADY,
    CORE0_M_AXIS_TVALID,
    CORE0_M_AXIS_TDATA,
    CORE0_M_AXIS_TSTRB,
    CORE0_M_AXIS_TUSER,
    CORE0_M_AXIS_TLAST,
    CORE0_M_AXIS_TREADY,
    CORE1_M_AXIS_TVALID,
    CORE1_M_AXIS_TDATA,
    CORE1_M_AXIS_TSTRB,
    CORE1_M_AXIS_TUSER,
    CORE1_M_AXIS_TLAST,
    CORE1_M_AXIS_TREADY,
    ICAP_M_AXIS_TVALID,
    ICAP_M_AXIS_TDATA,
    ICAP_M_AXIS_TSTRB,
    ICAP_M_AXIS_TUSER,
    ICAP_M_AXIS_TLAST,
    ICAP_M_AXIS_TREADY
  );
  input ACLK;
  input ARESETN;
  input CORE_CLK;
  input CORE_RESETN;
  input core_0_enb;
  input core_1_enb;
  input dbg_ctrl_0;
  input dbg_ctrl_1;
  input dbg_ctrl_2;
  input dbg_ctrl_3;
  input [255:0] S_AXIS_TDATA;
  input [31:0] S_AXIS_TSTRB;
  input [127:0] S_AXIS_TUSER;
  input S_AXIS_TLAST;
  input S_AXIS_TVALID;
  output S_AXIS_TREADY;
  output CORE0_M_AXIS_TVALID;
  output [255:0] CORE0_M_AXIS_TDATA;
  output [31:0] CORE0_M_AXIS_TSTRB;
  output [127:0] CORE0_M_AXIS_TUSER;
  output CORE0_M_AXIS_TLAST;
  input CORE0_M_AXIS_TREADY;
  output CORE1_M_AXIS_TVALID;
  output [255:0] CORE1_M_AXIS_TDATA;
  output [31:0] CORE1_M_AXIS_TSTRB;
  output [127:0] CORE1_M_AXIS_TUSER;
  output CORE1_M_AXIS_TLAST;
  input CORE1_M_AXIS_TREADY;
  output ICAP_M_AXIS_TVALID;
  output [255:0] ICAP_M_AXIS_TDATA;
  output [31:0] ICAP_M_AXIS_TSTRB;
  output [127:0] ICAP_M_AXIS_TUSER;
  output ICAP_M_AXIS_TLAST;
  input ICAP_M_AXIS_TREADY;

  pr_hrav_dispatcher
    #(
      .C_S_AXIS_DATA_WIDTH ( 256 ),
      .C_M_AXIS_DATA_WIDTH ( 256 )
    )
    pr_hrav_dispatcher_0 (
      .ACLK ( ACLK ),
      .ARESETN ( ARESETN ),
      .CORE_CLK ( CORE_CLK ),
      .CORE_RESETN ( CORE_RESETN ),
      .core_0_enb ( core_0_enb ),
      .core_1_enb ( core_1_enb ),
      .dbg_ctrl_0 ( dbg_ctrl_0 ),
      .dbg_ctrl_1 ( dbg_ctrl_1 ),
      .dbg_ctrl_2 ( dbg_ctrl_2 ),
      .dbg_ctrl_3 ( dbg_ctrl_3 ),
      .S_AXIS_TDATA ( S_AXIS_TDATA ),
      .S_AXIS_TSTRB ( S_AXIS_TSTRB ),
      .S_AXIS_TUSER ( S_AXIS_TUSER ),
      .S_AXIS_TLAST ( S_AXIS_TLAST ),
      .S_AXIS_TVALID ( S_AXIS_TVALID ),
      .S_AXIS_TREADY ( S_AXIS_TREADY ),
      .CORE0_M_AXIS_TVALID ( CORE0_M_AXIS_TVALID ),
      .CORE0_M_AXIS_TDATA ( CORE0_M_AXIS_TDATA ),
      .CORE0_M_AXIS_TSTRB ( CORE0_M_AXIS_TSTRB ),
      .CORE0_M_AXIS_TUSER ( CORE0_M_AXIS_TUSER ),
      .CORE0_M_AXIS_TLAST ( CORE0_M_AXIS_TLAST ),
      .CORE0_M_AXIS_TREADY ( CORE0_M_AXIS_TREADY ),
      .CORE1_M_AXIS_TVALID ( CORE1_M_AXIS_TVALID ),
      .CORE1_M_AXIS_TDATA ( CORE1_M_AXIS_TDATA ),
      .CORE1_M_AXIS_TSTRB ( CORE1_M_AXIS_TSTRB ),
      .CORE1_M_AXIS_TUSER ( CORE1_M_AXIS_TUSER ),
      .CORE1_M_AXIS_TLAST ( CORE1_M_AXIS_TLAST ),
      .CORE1_M_AXIS_TREADY ( CORE1_M_AXIS_TREADY ),
      .ICAP_M_AXIS_TVALID ( ICAP_M_AXIS_TVALID ),
      .ICAP_M_AXIS_TDATA ( ICAP_M_AXIS_TDATA ),
      .ICAP_M_AXIS_TSTRB ( ICAP_M_AXIS_TSTRB ),
      .ICAP_M_AXIS_TUSER ( ICAP_M_AXIS_TUSER ),
      .ICAP_M_AXIS_TLAST ( ICAP_M_AXIS_TLAST ),
      .ICAP_M_AXIS_TREADY ( ICAP_M_AXIS_TREADY )
    );

endmodule

