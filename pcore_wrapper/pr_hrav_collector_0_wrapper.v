//-----------------------------------------------------------------------------
// pr_hrav_collector_0_wrapper.v
//-----------------------------------------------------------------------------

module pr_hrav_collector_0_wrapper
  (
    ACLK,
    ARESETN,
    core_0_enb,
    core_1_enb,
    dbg_ctrl_0,
    dbg_ctrl_1,
    dbg_ctrl_2,
    dbg_ctrl_3,
    M_AXIS_TDATA,
    M_AXIS_TSTRB,
    M_AXIS_TUSER,
    M_AXIS_TLAST,
    M_AXIS_TVALID,
    M_AXIS_TREADY,
    CORE0_S_AXIS_TVALID,
    CORE0_S_AXIS_TDATA,
    CORE0_S_AXIS_TSTRB,
    CORE0_S_AXIS_TUSER,
    CORE0_S_AXIS_TLAST,
    CORE0_S_AXIS_TREADY,
    CORE1_S_AXIS_TVALID,
    CORE1_S_AXIS_TDATA,
    CORE1_S_AXIS_TSTRB,
    CORE1_S_AXIS_TUSER,
    CORE1_S_AXIS_TLAST,
    CORE1_S_AXIS_TREADY,
    ICAP_S_AXIS_TVALID,
    ICAP_S_AXIS_TDATA,
    ICAP_S_AXIS_TSTRB,
    ICAP_S_AXIS_TUSER,
    ICAP_S_AXIS_TLAST,
    ICAP_S_AXIS_TREADY
  );
  input ACLK;
  input ARESETN;
  input core_0_enb;
  input core_1_enb;
  input dbg_ctrl_0;
  input dbg_ctrl_1;
  input dbg_ctrl_2;
  input dbg_ctrl_3;
  output [255:0] M_AXIS_TDATA;
  output [31:0] M_AXIS_TSTRB;
  output [127:0] M_AXIS_TUSER;
  output M_AXIS_TLAST;
  output M_AXIS_TVALID;
  input M_AXIS_TREADY;
  input CORE0_S_AXIS_TVALID;
  input [255:0] CORE0_S_AXIS_TDATA;
  input [31:0] CORE0_S_AXIS_TSTRB;
  input [127:0] CORE0_S_AXIS_TUSER;
  input CORE0_S_AXIS_TLAST;
  output CORE0_S_AXIS_TREADY;
  input CORE1_S_AXIS_TVALID;
  input [255:0] CORE1_S_AXIS_TDATA;
  input [31:0] CORE1_S_AXIS_TSTRB;
  input [127:0] CORE1_S_AXIS_TUSER;
  input CORE1_S_AXIS_TLAST;
  output CORE1_S_AXIS_TREADY;
  input ICAP_S_AXIS_TVALID;
  input [255:0] ICAP_S_AXIS_TDATA;
  input [31:0] ICAP_S_AXIS_TSTRB;
  input [127:0] ICAP_S_AXIS_TUSER;
  input ICAP_S_AXIS_TLAST;
  output ICAP_S_AXIS_TREADY;

  pr_hrav_collector
    #(
      .C_M_AXIS_DATA_WIDTH ( 256 ),
      .C_S_AXIS_DATA_WIDTH ( 256 )
    )
    pr_hrav_collector_0 (
      .ACLK ( ACLK ),
      .ARESETN ( ARESETN ),
      .core_0_enb ( core_0_enb ),
      .core_1_enb ( core_1_enb ),
      .dbg_ctrl_0 ( dbg_ctrl_0 ),
      .dbg_ctrl_1 ( dbg_ctrl_1 ),
      .dbg_ctrl_2 ( dbg_ctrl_2 ),
      .dbg_ctrl_3 ( dbg_ctrl_3 ),
      .M_AXIS_TDATA ( M_AXIS_TDATA ),
      .M_AXIS_TSTRB ( M_AXIS_TSTRB ),
      .M_AXIS_TUSER ( M_AXIS_TUSER ),
      .M_AXIS_TLAST ( M_AXIS_TLAST ),
      .M_AXIS_TVALID ( M_AXIS_TVALID ),
      .M_AXIS_TREADY ( M_AXIS_TREADY ),
      .CORE0_S_AXIS_TVALID ( CORE0_S_AXIS_TVALID ),
      .CORE0_S_AXIS_TDATA ( CORE0_S_AXIS_TDATA ),
      .CORE0_S_AXIS_TSTRB ( CORE0_S_AXIS_TSTRB ),
      .CORE0_S_AXIS_TUSER ( CORE0_S_AXIS_TUSER ),
      .CORE0_S_AXIS_TLAST ( CORE0_S_AXIS_TLAST ),
      .CORE0_S_AXIS_TREADY ( CORE0_S_AXIS_TREADY ),
      .CORE1_S_AXIS_TVALID ( CORE1_S_AXIS_TVALID ),
      .CORE1_S_AXIS_TDATA ( CORE1_S_AXIS_TDATA ),
      .CORE1_S_AXIS_TSTRB ( CORE1_S_AXIS_TSTRB ),
      .CORE1_S_AXIS_TUSER ( CORE1_S_AXIS_TUSER ),
      .CORE1_S_AXIS_TLAST ( CORE1_S_AXIS_TLAST ),
      .CORE1_S_AXIS_TREADY ( CORE1_S_AXIS_TREADY ),
      .ICAP_S_AXIS_TVALID ( ICAP_S_AXIS_TVALID ),
      .ICAP_S_AXIS_TDATA ( ICAP_S_AXIS_TDATA ),
      .ICAP_S_AXIS_TSTRB ( ICAP_S_AXIS_TSTRB ),
      .ICAP_S_AXIS_TUSER ( ICAP_S_AXIS_TUSER ),
      .ICAP_S_AXIS_TLAST ( ICAP_S_AXIS_TLAST ),
      .ICAP_S_AXIS_TREADY ( ICAP_S_AXIS_TREADY )
    );

endmodule

