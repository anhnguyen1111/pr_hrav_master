//-----------------------------------------------------------------------------
// hravframework_0_wrapper.v
//-----------------------------------------------------------------------------

module hravframework_0_wrapper
  (
    axi_aclk,
    axi_resetn,
    axi_reset,
    hrav_axis_lp,
    core_clk,
    core_clk_270,
    sram_clk_200,
    qdr_d_0,
    qdr_q_0,
    qdr_sa_0,
    qdr_w_n_0,
    qdr_r_n_0,
    qdr_bw_n_0,
    qdr_dll_off_n_0,
    qdr_cq_0,
    qdr_cq_n_0,
    qdr_c_n_0,
    qdr_k_n_0,
    qdr_c_0,
    qdr_k_0,
    qdr_d_1,
    qdr_q_1,
    qdr_sa_1,
    qdr_w_n_1,
    qdr_r_n_1,
    qdr_bw_n_1,
    qdr_dll_off_n_1,
    qdr_cq_1,
    qdr_cq_n_1,
    qdr_c_n_1,
    qdr_k_n_1,
    qdr_c_1,
    qdr_k_1,
    qdr_d_2,
    qdr_q_2,
    qdr_sa_2,
    qdr_w_n_2,
    qdr_r_n_2,
    qdr_bw_n_2,
    qdr_dll_off_n_2,
    qdr_cq_2,
    qdr_cq_n_2,
    qdr_c_n_2,
    qdr_k_n_2,
    qdr_c_2,
    qdr_k_2,
    masterbank_sel_pin,
    locked,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tlast,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tuser,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tlast,
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
  input axi_aclk;
  input axi_resetn;
  input axi_reset;
  input hrav_axis_lp;
  input core_clk;
  input core_clk_270;
  input sram_clk_200;
  output [35:0] qdr_d_0;
  input [35:0] qdr_q_0;
  output [18:0] qdr_sa_0;
  output qdr_w_n_0;
  output qdr_r_n_0;
  output [3:0] qdr_bw_n_0;
  output qdr_dll_off_n_0;
  input [0:0] qdr_cq_0;
  input [0:0] qdr_cq_n_0;
  output [0:0] qdr_c_n_0;
  output [0:0] qdr_k_n_0;
  output [0:0] qdr_c_0;
  output [0:0] qdr_k_0;
  output [35:0] qdr_d_1;
  input [35:0] qdr_q_1;
  output [18:0] qdr_sa_1;
  output qdr_w_n_1;
  output qdr_r_n_1;
  output [3:0] qdr_bw_n_1;
  output qdr_dll_off_n_1;
  input [0:0] qdr_cq_1;
  input [0:0] qdr_cq_n_1;
  output [0:0] qdr_c_n_1;
  output [0:0] qdr_k_n_1;
  output [0:0] qdr_c_1;
  output [0:0] qdr_k_1;
  output [35:0] qdr_d_2;
  input [35:0] qdr_q_2;
  output [18:0] qdr_sa_2;
  output qdr_w_n_2;
  output qdr_r_n_2;
  output [3:0] qdr_bw_n_2;
  output qdr_dll_off_n_2;
  input [0:0] qdr_cq_2;
  input [0:0] qdr_cq_n_2;
  output [0:0] qdr_c_n_2;
  output [0:0] qdr_k_n_2;
  output [0:0] qdr_c_2;
  output [0:0] qdr_k_2;
  input [2:0] masterbank_sel_pin;
  input locked;
  output [255:0] m_axis_tdata;
  output [31:0] m_axis_tstrb;
  output [127:0] m_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output m_axis_tlast;
  input [255:0] s_axis_tdata;
  input [31:0] s_axis_tstrb;
  input [127:0] s_axis_tuser;
  input s_axis_tvalid;
  output s_axis_tready;
  input s_axis_tlast;
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

  hravframework
    #(
      .C_M_AXIS_DATA_WIDTH ( 256 ),
      .C_S_AXIS_DATA_WIDTH ( 256 ),
      .C_M_AXIS_TUSER_WIDTH ( 128 ),
      .C_S_AXIS_TUSER_WIDTH ( 128 ),
      .C_BASEADDR ( 32'h78200000 ),
      .C_HIGHADDR ( 32'h7820FFFF )
    )
    hravframework_0 (
      .axi_aclk ( axi_aclk ),
      .axi_resetn ( axi_resetn ),
      .axi_reset ( axi_reset ),
      .hrav_axis_lp ( hrav_axis_lp ),
      .core_clk ( core_clk ),
      .core_clk_270 ( core_clk_270 ),
      .sram_clk_200 ( sram_clk_200 ),
      .qdr_d_0 ( qdr_d_0 ),
      .qdr_q_0 ( qdr_q_0 ),
      .qdr_sa_0 ( qdr_sa_0 ),
      .qdr_w_n_0 ( qdr_w_n_0 ),
      .qdr_r_n_0 ( qdr_r_n_0 ),
      .qdr_bw_n_0 ( qdr_bw_n_0 ),
      .qdr_dll_off_n_0 ( qdr_dll_off_n_0 ),
      .qdr_cq_0 ( qdr_cq_0 ),
      .qdr_cq_n_0 ( qdr_cq_n_0 ),
      .qdr_c_n_0 ( qdr_c_n_0 ),
      .qdr_k_n_0 ( qdr_k_n_0 ),
      .qdr_c_0 ( qdr_c_0 ),
      .qdr_k_0 ( qdr_k_0 ),
      .qdr_d_1 ( qdr_d_1 ),
      .qdr_q_1 ( qdr_q_1 ),
      .qdr_sa_1 ( qdr_sa_1 ),
      .qdr_w_n_1 ( qdr_w_n_1 ),
      .qdr_r_n_1 ( qdr_r_n_1 ),
      .qdr_bw_n_1 ( qdr_bw_n_1 ),
      .qdr_dll_off_n_1 ( qdr_dll_off_n_1 ),
      .qdr_cq_1 ( qdr_cq_1 ),
      .qdr_cq_n_1 ( qdr_cq_n_1 ),
      .qdr_c_n_1 ( qdr_c_n_1 ),
      .qdr_k_n_1 ( qdr_k_n_1 ),
      .qdr_c_1 ( qdr_c_1 ),
      .qdr_k_1 ( qdr_k_1 ),
      .qdr_d_2 ( qdr_d_2 ),
      .qdr_q_2 ( qdr_q_2 ),
      .qdr_sa_2 ( qdr_sa_2 ),
      .qdr_w_n_2 ( qdr_w_n_2 ),
      .qdr_r_n_2 ( qdr_r_n_2 ),
      .qdr_bw_n_2 ( qdr_bw_n_2 ),
      .qdr_dll_off_n_2 ( qdr_dll_off_n_2 ),
      .qdr_cq_2 ( qdr_cq_2 ),
      .qdr_cq_n_2 ( qdr_cq_n_2 ),
      .qdr_c_n_2 ( qdr_c_n_2 ),
      .qdr_k_n_2 ( qdr_k_n_2 ),
      .qdr_c_2 ( qdr_c_2 ),
      .qdr_k_2 ( qdr_k_2 ),
      .masterbank_sel_pin ( masterbank_sel_pin ),
      .locked ( locked ),
      .m_axis_tdata ( m_axis_tdata ),
      .m_axis_tstrb ( m_axis_tstrb ),
      .m_axis_tuser ( m_axis_tuser ),
      .m_axis_tvalid ( m_axis_tvalid ),
      .m_axis_tready ( m_axis_tready ),
      .m_axis_tlast ( m_axis_tlast ),
      .s_axis_tdata ( s_axis_tdata ),
      .s_axis_tstrb ( s_axis_tstrb ),
      .s_axis_tuser ( s_axis_tuser ),
      .s_axis_tvalid ( s_axis_tvalid ),
      .s_axis_tready ( s_axis_tready ),
      .s_axis_tlast ( s_axis_tlast ),
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

