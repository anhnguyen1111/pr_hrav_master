//-----------------------------------------------------------------------------
// system.v
//-----------------------------------------------------------------------------

module system
  (
    RESET,
    CLK,
    refclk_A_p,
    refclk_A_n,
    refclk_B_p,
    refclk_B_n,
    refclk_C_p,
    refclk_C_n,
    refclk_D_p,
    refclk_D_n,
    pcie_clk_p,
    pcie_top_0_pci_exp_0_txp_pin,
    pcie_clk_n,
    pcie_top_0_pci_exp_0_rxp_pin,
    pcie_top_0_pci_exp_0_rxn_pin,
    pcie_top_0_pci_exp_1_txp_pin,
    pcie_top_0_pci_exp_1_txn_pin,
    pcie_top_0_pci_exp_1_rxp_pin,
    pcie_top_0_pci_exp_1_rxn_pin,
    pcie_top_0_pci_exp_4_txp_pin,
    pcie_top_0_pci_exp_2_txp_pin,
    pcie_top_0_pci_exp_2_txn_pin,
    pcie_top_0_pci_exp_2_rxp_pin,
    pcie_top_0_pci_exp_2_rxn_pin,
    pcie_top_0_pci_exp_3_txp_pin,
    pcie_top_0_pci_exp_3_txn_pin,
    pcie_top_0_pci_exp_3_rxp_pin,
    pcie_top_0_pci_exp_3_rxn_pin,
    pcie_top_0_pci_exp_4_txn_pin,
    pcie_top_0_pci_exp_4_rxp_pin,
    pcie_top_0_pci_exp_4_rxn_pin,
    pcie_top_0_pci_exp_5_txp_pin,
    pcie_top_0_pci_exp_5_txn_pin,
    pcie_top_0_pci_exp_5_rxp_pin,
    pcie_top_0_pci_exp_5_rxn_pin,
    pcie_top_0_pci_exp_6_txp_pin,
    pcie_top_0_pci_exp_6_txn_pin,
    pcie_top_0_pci_exp_6_rxp_pin,
    pcie_top_0_pci_exp_6_rxn_pin,
    pcie_top_0_pci_exp_7_txn_pin,
    pcie_top_0_pci_exp_7_txp_pin,
    pcie_top_0_pci_exp_7_rxn_pin,
    pcie_top_0_pci_exp_7_rxp_pin,
    pcie_top_0_pci_exp_0_txn_pin,
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
    masterbank_sel_pin,
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
    qdr_k_2
  );
  input RESET;
  input CLK;
  input refclk_A_p;
  input refclk_A_n;
  input refclk_B_p;
  input refclk_B_n;
  input refclk_C_p;
  input refclk_C_n;
  input refclk_D_p;
  input refclk_D_n;
  input pcie_clk_p;
  output pcie_top_0_pci_exp_0_txp_pin;
  input pcie_clk_n;
  input pcie_top_0_pci_exp_0_rxp_pin;
  input pcie_top_0_pci_exp_0_rxn_pin;
  output pcie_top_0_pci_exp_1_txp_pin;
  output pcie_top_0_pci_exp_1_txn_pin;
  input pcie_top_0_pci_exp_1_rxp_pin;
  input pcie_top_0_pci_exp_1_rxn_pin;
  output pcie_top_0_pci_exp_4_txp_pin;
  output pcie_top_0_pci_exp_2_txp_pin;
  output pcie_top_0_pci_exp_2_txn_pin;
  input pcie_top_0_pci_exp_2_rxp_pin;
  input pcie_top_0_pci_exp_2_rxn_pin;
  output pcie_top_0_pci_exp_3_txp_pin;
  output pcie_top_0_pci_exp_3_txn_pin;
  input pcie_top_0_pci_exp_3_rxp_pin;
  input pcie_top_0_pci_exp_3_rxn_pin;
  output pcie_top_0_pci_exp_4_txn_pin;
  input pcie_top_0_pci_exp_4_rxp_pin;
  input pcie_top_0_pci_exp_4_rxn_pin;
  output pcie_top_0_pci_exp_5_txp_pin;
  output pcie_top_0_pci_exp_5_txn_pin;
  input pcie_top_0_pci_exp_5_rxp_pin;
  input pcie_top_0_pci_exp_5_rxn_pin;
  output pcie_top_0_pci_exp_6_txp_pin;
  output pcie_top_0_pci_exp_6_txn_pin;
  input pcie_top_0_pci_exp_6_rxp_pin;
  input pcie_top_0_pci_exp_6_rxn_pin;
  output pcie_top_0_pci_exp_7_txn_pin;
  output pcie_top_0_pci_exp_7_txp_pin;
  input pcie_top_0_pci_exp_7_rxn_pin;
  input pcie_top_0_pci_exp_7_rxp_pin;
  output pcie_top_0_pci_exp_0_txn_pin;
  output [35:0] qdr_d_0;
  input [35:0] qdr_q_0;
  output [18:0] qdr_sa_0;
  output qdr_w_n_0;
  output qdr_r_n_0;
  output [3:0] qdr_bw_n_0;
  output qdr_dll_off_n_0;
  input qdr_cq_0;
  input qdr_cq_n_0;
  output qdr_c_n_0;
  output qdr_k_n_0;
  output qdr_c_0;
  output qdr_k_0;
  input [2:0] masterbank_sel_pin;
  output [35:0] qdr_d_1;
  input [35:0] qdr_q_1;
  output [18:0] qdr_sa_1;
  output qdr_w_n_1;
  output qdr_r_n_1;
  output [3:0] qdr_bw_n_1;
  output qdr_dll_off_n_1;
  input qdr_cq_1;
  input qdr_cq_n_1;
  output qdr_c_n_1;
  output qdr_k_n_1;
  output qdr_c_1;
  output qdr_k_1;
  output [35:0] qdr_d_2;
  input [35:0] qdr_q_2;
  output [18:0] qdr_sa_2;
  output qdr_w_n_2;
  output qdr_r_n_2;
  output [3:0] qdr_bw_n_2;
  output qdr_dll_off_n_2;
  input qdr_cq_2;
  input qdr_cq_n_2;
  output qdr_c_n_2;
  output qdr_k_n_2;
  output qdr_c_2;
  output qdr_k_2;

  // Internal signals

  wire DIFF_INPUT_BUF_0_DIFF_INPUT_N;
  wire DIFF_INPUT_BUF_0_DIFF_INPUT_P;
  wire DIFF_INPUT_BUF_1_DIFF_INPUT_N;
  wire DIFF_INPUT_BUF_1_DIFF_INPUT_P;
  wire DIFF_INPUT_BUF_2_DIFF_INPUT_N;
  wire DIFF_INPUT_BUF_2_DIFF_INPUT_P;
  wire DIFF_INPUT_BUF_3_DIFF_INPUT_N;
  wire DIFF_INPUT_BUF_3_DIFF_INPUT_P;
  wire ICAP_clk;
  wire [0:0] Peripheral_Reset;
  wire [0:0] Peripheral_aresetn;
  wire [0:0] axi_clk;
  wire [191:0] axi_interconnect_0_M_ARADDR;
  wire [5:0] axi_interconnect_0_M_ARESETN;
  wire [5:0] axi_interconnect_0_M_ARREADY;
  wire [5:0] axi_interconnect_0_M_ARVALID;
  wire [191:0] axi_interconnect_0_M_AWADDR;
  wire [5:0] axi_interconnect_0_M_AWREADY;
  wire [5:0] axi_interconnect_0_M_AWVALID;
  wire [5:0] axi_interconnect_0_M_BREADY;
  wire [11:0] axi_interconnect_0_M_BRESP;
  wire [5:0] axi_interconnect_0_M_BVALID;
  wire [191:0] axi_interconnect_0_M_RDATA;
  wire [5:0] axi_interconnect_0_M_RREADY;
  wire [11:0] axi_interconnect_0_M_RRESP;
  wire [5:0] axi_interconnect_0_M_RVALID;
  wire [191:0] axi_interconnect_0_M_WDATA;
  wire [5:0] axi_interconnect_0_M_WREADY;
  wire [23:0] axi_interconnect_0_M_WSTRB;
  wire [5:0] axi_interconnect_0_M_WVALID;
  wire [31:0] axi_interconnect_0_S_ARADDR;
  wire [0:0] axi_interconnect_0_S_ARESETN;
  wire [0:0] axi_interconnect_0_S_ARREADY;
  wire [0:0] axi_interconnect_0_S_ARVALID;
  wire [31:0] axi_interconnect_0_S_AWADDR;
  wire [0:0] axi_interconnect_0_S_AWREADY;
  wire [0:0] axi_interconnect_0_S_AWVALID;
  wire [0:0] axi_interconnect_0_S_BREADY;
  wire [1:0] axi_interconnect_0_S_BRESP;
  wire [0:0] axi_interconnect_0_S_BVALID;
  wire [31:0] axi_interconnect_0_S_RDATA;
  wire [0:0] axi_interconnect_0_S_RREADY;
  wire [1:0] axi_interconnect_0_S_RRESP;
  wire [0:0] axi_interconnect_0_S_RVALID;
  wire [31:0] axi_interconnect_0_S_WDATA;
  wire [0:0] axi_interconnect_0_S_WREADY;
  wire [3:0] axi_interconnect_0_S_WSTRB;
  wire [0:0] axi_interconnect_0_S_WVALID;
  wire col_dbg_ctrl_0;
  wire col_dbg_ctrl_1;
  wire col_dbg_ctrl_2;
  wire col_dbg_ctrl_3;
  wire [0:0] connectnetwork_0_reset_reset_0_Reset_2_adhoc;
  wire core_0_enb;
  wire core_0_reset;
  wire core_1_enb;
  wire core_1_reset;
  wire core_clk;
  wire core_clk_270;
  wire core_sync_reset_n;
  wire dcm_locked;
  wire [255:0] dma_0_M_AXIS_TDATA;
  wire dma_0_M_AXIS_TLAST;
  wire dma_0_M_AXIS_TREADY;
  wire [31:0] dma_0_M_AXIS_TSTRB;
  wire [127:0] dma_0_M_AXIS_TUSER;
  wire dma_0_M_AXIS_TVALID;
  wire [255:0] dma_benchmark_0_M_AXIS_TDATA;
  wire dma_benchmark_0_M_AXIS_TLAST;
  wire dma_benchmark_0_M_AXIS_TREADY;
  wire [31:0] dma_benchmark_0_M_AXIS_TSTRB;
  wire [127:0] dma_benchmark_0_M_AXIS_TUSER;
  wire dma_benchmark_0_M_AXIS_TVALID;
  wire [255:0] dma_benchmark_1_M_AXIS_TDATA;
  wire dma_benchmark_1_M_AXIS_TLAST;
  wire dma_benchmark_1_M_AXIS_TREADY;
  wire [31:0] dma_benchmark_1_M_AXIS_TSTRB;
  wire [127:0] dma_benchmark_1_M_AXIS_TUSER;
  wire dma_benchmark_1_M_AXIS_TVALID;
  wire dpt_dbg_ctrl_0;
  wire dpt_dbg_ctrl_1;
  wire dpt_dbg_ctrl_2;
  wire dpt_dbg_ctrl_3;
  wire hrav_0_axis_lp;
  wire hrav_1_axis_lp;
  wire [255:0] hravframework_0_M_AXIS_TDATA;
  wire hravframework_0_M_AXIS_TLAST;
  wire hravframework_0_M_AXIS_TREADY;
  wire [31:0] hravframework_0_M_AXIS_TSTRB;
  wire [127:0] hravframework_0_M_AXIS_TUSER;
  wire hravframework_0_M_AXIS_TVALID;
  wire [2:0] hravframework_0_masterbank_sel_pin;
  wire [3:0] hravframework_0_qdr_bw_n_0;
  wire [3:0] hravframework_0_qdr_bw_n_1;
  wire [3:0] hravframework_0_qdr_bw_n_2;
  wire [0:0] hravframework_0_qdr_c_0;
  wire [0:0] hravframework_0_qdr_c_1;
  wire [0:0] hravframework_0_qdr_c_2;
  wire [0:0] hravframework_0_qdr_c_n_0;
  wire [0:0] hravframework_0_qdr_c_n_1;
  wire [0:0] hravframework_0_qdr_c_n_2;
  wire [0:0] hravframework_0_qdr_cq_0;
  wire [0:0] hravframework_0_qdr_cq_1;
  wire [0:0] hravframework_0_qdr_cq_2;
  wire [0:0] hravframework_0_qdr_cq_n_0;
  wire [0:0] hravframework_0_qdr_cq_n_1;
  wire [0:0] hravframework_0_qdr_cq_n_2;
  wire [35:0] hravframework_0_qdr_d_0;
  wire [35:0] hravframework_0_qdr_d_1;
  wire [35:0] hravframework_0_qdr_d_2;
  wire hravframework_0_qdr_dll_off_n_0;
  wire hravframework_0_qdr_dll_off_n_1;
  wire hravframework_0_qdr_dll_off_n_2;
  wire [0:0] hravframework_0_qdr_k_0;
  wire [0:0] hravframework_0_qdr_k_1;
  wire [0:0] hravframework_0_qdr_k_2;
  wire [0:0] hravframework_0_qdr_k_n_0;
  wire [0:0] hravframework_0_qdr_k_n_1;
  wire [0:0] hravframework_0_qdr_k_n_2;
  wire [35:0] hravframework_0_qdr_q_0;
  wire [35:0] hravframework_0_qdr_q_1;
  wire [35:0] hravframework_0_qdr_q_2;
  wire hravframework_0_qdr_r_n_0;
  wire hravframework_0_qdr_r_n_1;
  wire hravframework_0_qdr_r_n_2;
  wire [18:0] hravframework_0_qdr_sa_0;
  wire [18:0] hravframework_0_qdr_sa_1;
  wire [18:0] hravframework_0_qdr_sa_2;
  wire hravframework_0_qdr_w_n_0;
  wire hravframework_0_qdr_w_n_1;
  wire hravframework_0_qdr_w_n_2;
  wire [255:0] hravframework_1_M_AXIS_TDATA;
  wire hravframework_1_M_AXIS_TLAST;
  wire hravframework_1_M_AXIS_TREADY;
  wire [31:0] hravframework_1_M_AXIS_TSTRB;
  wire [127:0] hravframework_1_M_AXIS_TUSER;
  wire hravframework_1_M_AXIS_TVALID;
  wire net_gnd0;
  wire [0:0] net_gnd1;
  wire [1:0] net_gnd2;
  wire [2:0] net_gnd3;
  wire [3:0] net_gnd4;
  wire [5:0] net_gnd6;
  wire [7:0] net_gnd8;
  wire [31:0] net_gnd32;
  wire [35:0] net_gnd36;
  wire pcie_top_0_pci_exp_0_rxn;
  wire pcie_top_0_pci_exp_0_rxp;
  wire pcie_top_0_pci_exp_0_txn;
  wire pcie_top_0_pci_exp_0_txp;
  wire pcie_top_0_pci_exp_1_rxn;
  wire pcie_top_0_pci_exp_1_rxp;
  wire pcie_top_0_pci_exp_1_txn;
  wire pcie_top_0_pci_exp_1_txp;
  wire pcie_top_0_pci_exp_2_rxn;
  wire pcie_top_0_pci_exp_2_rxp;
  wire pcie_top_0_pci_exp_2_txn;
  wire pcie_top_0_pci_exp_2_txp;
  wire pcie_top_0_pci_exp_3_rxn;
  wire pcie_top_0_pci_exp_3_rxp;
  wire pcie_top_0_pci_exp_3_txn;
  wire pcie_top_0_pci_exp_3_txp;
  wire pcie_top_0_pci_exp_4_rxn;
  wire pcie_top_0_pci_exp_4_rxp;
  wire pcie_top_0_pci_exp_4_txn;
  wire pcie_top_0_pci_exp_4_txp;
  wire pcie_top_0_pci_exp_5_rxn;
  wire pcie_top_0_pci_exp_5_rxp;
  wire pcie_top_0_pci_exp_5_txn;
  wire pcie_top_0_pci_exp_5_txp;
  wire pcie_top_0_pci_exp_6_rxn;
  wire pcie_top_0_pci_exp_6_rxp;
  wire pcie_top_0_pci_exp_6_txn;
  wire pcie_top_0_pci_exp_6_txp;
  wire pcie_top_0_pci_exp_7_rxn;
  wire pcie_top_0_pci_exp_7_rxp;
  wire pcie_top_0_pci_exp_7_txn;
  wire pcie_top_0_pci_exp_7_txp;
  wire pcie_top_0_pcie_clk_n;
  wire pcie_top_0_pcie_clk_p;
  wire [5:0] pgassign1;
  wire [255:0] pr_hrav_collector_0_M_AXIS_TDATA;
  wire pr_hrav_collector_0_M_AXIS_TLAST;
  wire pr_hrav_collector_0_M_AXIS_TREADY;
  wire [31:0] pr_hrav_collector_0_M_AXIS_TSTRB;
  wire [127:0] pr_hrav_collector_0_M_AXIS_TUSER;
  wire pr_hrav_collector_0_M_AXIS_TVALID;
  wire [255:0] pr_hrav_dispatcher_0_CORE0_M_AXIS_TDATA;
  wire pr_hrav_dispatcher_0_CORE0_M_AXIS_TLAST;
  wire pr_hrav_dispatcher_0_CORE0_M_AXIS_TREADY;
  wire [31:0] pr_hrav_dispatcher_0_CORE0_M_AXIS_TSTRB;
  wire [127:0] pr_hrav_dispatcher_0_CORE0_M_AXIS_TUSER;
  wire pr_hrav_dispatcher_0_CORE0_M_AXIS_TVALID;
  wire [255:0] pr_hrav_dispatcher_0_CORE1_M_AXIS_TDATA;
  wire pr_hrav_dispatcher_0_CORE1_M_AXIS_TLAST;
  wire pr_hrav_dispatcher_0_CORE1_M_AXIS_TREADY;
  wire [31:0] pr_hrav_dispatcher_0_CORE1_M_AXIS_TSTRB;
  wire [127:0] pr_hrav_dispatcher_0_CORE1_M_AXIS_TUSER;
  wire pr_hrav_dispatcher_0_CORE1_M_AXIS_TVALID;
  wire [255:0] pr_hrav_dispatcher_0_ICAP_M_AXIS_TDATA;
  wire pr_hrav_dispatcher_0_ICAP_M_AXIS_TLAST;
  wire pr_hrav_dispatcher_0_ICAP_M_AXIS_TREADY;
  wire [31:0] pr_hrav_dispatcher_0_ICAP_M_AXIS_TSTRB;
  wire [127:0] pr_hrav_dispatcher_0_ICAP_M_AXIS_TUSER;
  wire pr_hrav_dispatcher_0_ICAP_M_AXIS_TVALID;
  wire [255:0] pr_hrav_icap_controller_0_M_AXIS_TDATA;
  wire pr_hrav_icap_controller_0_M_AXIS_TLAST;
  wire pr_hrav_icap_controller_0_M_AXIS_TREADY;
  wire [31:0] pr_hrav_icap_controller_0_M_AXIS_TSTRB;
  wire [127:0] pr_hrav_icap_controller_0_M_AXIS_TUSER;
  wire pr_hrav_icap_controller_0_M_AXIS_TVALID;
  wire sram_clk_200;

  // Internal assignments

  assign DIFF_INPUT_BUF_0_DIFF_INPUT_P = refclk_A_p;
  assign DIFF_INPUT_BUF_0_DIFF_INPUT_N = refclk_A_n;
  assign DIFF_INPUT_BUF_1_DIFF_INPUT_P = refclk_B_p;
  assign DIFF_INPUT_BUF_1_DIFF_INPUT_N = refclk_B_n;
  assign DIFF_INPUT_BUF_2_DIFF_INPUT_P = refclk_C_p;
  assign DIFF_INPUT_BUF_2_DIFF_INPUT_N = refclk_C_n;
  assign DIFF_INPUT_BUF_3_DIFF_INPUT_P = refclk_D_p;
  assign DIFF_INPUT_BUF_3_DIFF_INPUT_N = refclk_D_n;
  assign pcie_top_0_pcie_clk_p = pcie_clk_p;
  assign pcie_top_0_pci_exp_0_txp_pin = pcie_top_0_pci_exp_0_txp;
  assign pcie_top_0_pcie_clk_n = pcie_clk_n;
  assign pcie_top_0_pci_exp_0_rxp = pcie_top_0_pci_exp_0_rxp_pin;
  assign pcie_top_0_pci_exp_0_rxn = pcie_top_0_pci_exp_0_rxn_pin;
  assign pcie_top_0_pci_exp_1_txp_pin = pcie_top_0_pci_exp_1_txp;
  assign pcie_top_0_pci_exp_1_txn_pin = pcie_top_0_pci_exp_1_txn;
  assign pcie_top_0_pci_exp_1_rxp = pcie_top_0_pci_exp_1_rxp_pin;
  assign pcie_top_0_pci_exp_1_rxn = pcie_top_0_pci_exp_1_rxn_pin;
  assign pcie_top_0_pci_exp_4_txp_pin = pcie_top_0_pci_exp_4_txp;
  assign pcie_top_0_pci_exp_2_txp_pin = pcie_top_0_pci_exp_2_txp;
  assign pcie_top_0_pci_exp_2_txn_pin = pcie_top_0_pci_exp_2_txn;
  assign pcie_top_0_pci_exp_2_rxp = pcie_top_0_pci_exp_2_rxp_pin;
  assign pcie_top_0_pci_exp_2_rxn = pcie_top_0_pci_exp_2_rxn_pin;
  assign pcie_top_0_pci_exp_3_txp_pin = pcie_top_0_pci_exp_3_txp;
  assign pcie_top_0_pci_exp_3_txn_pin = pcie_top_0_pci_exp_3_txn;
  assign pcie_top_0_pci_exp_3_rxp = pcie_top_0_pci_exp_3_rxp_pin;
  assign pcie_top_0_pci_exp_3_rxn = pcie_top_0_pci_exp_3_rxn_pin;
  assign pcie_top_0_pci_exp_4_txn_pin = pcie_top_0_pci_exp_4_txn;
  assign pcie_top_0_pci_exp_4_rxp = pcie_top_0_pci_exp_4_rxp_pin;
  assign pcie_top_0_pci_exp_4_rxn = pcie_top_0_pci_exp_4_rxn_pin;
  assign pcie_top_0_pci_exp_5_txp_pin = pcie_top_0_pci_exp_5_txp;
  assign pcie_top_0_pci_exp_5_txn_pin = pcie_top_0_pci_exp_5_txn;
  assign pcie_top_0_pci_exp_5_rxp = pcie_top_0_pci_exp_5_rxp_pin;
  assign pcie_top_0_pci_exp_5_rxn = pcie_top_0_pci_exp_5_rxn_pin;
  assign pcie_top_0_pci_exp_6_txp_pin = pcie_top_0_pci_exp_6_txp;
  assign pcie_top_0_pci_exp_6_txn_pin = pcie_top_0_pci_exp_6_txn;
  assign pcie_top_0_pci_exp_6_rxp = pcie_top_0_pci_exp_6_rxp_pin;
  assign pcie_top_0_pci_exp_6_rxn = pcie_top_0_pci_exp_6_rxn_pin;
  assign pcie_top_0_pci_exp_7_txn_pin = pcie_top_0_pci_exp_7_txn;
  assign pcie_top_0_pci_exp_7_txp_pin = pcie_top_0_pci_exp_7_txp;
  assign pcie_top_0_pci_exp_7_rxn = pcie_top_0_pci_exp_7_rxn_pin;
  assign pcie_top_0_pci_exp_7_rxp = pcie_top_0_pci_exp_7_rxp_pin;
  assign pcie_top_0_pci_exp_0_txn_pin = pcie_top_0_pci_exp_0_txn;
  assign qdr_d_0 = hravframework_0_qdr_d_0;
  assign hravframework_0_qdr_q_0 = qdr_q_0;
  assign qdr_sa_0 = hravframework_0_qdr_sa_0;
  assign qdr_w_n_0 = hravframework_0_qdr_w_n_0;
  assign qdr_r_n_0 = hravframework_0_qdr_r_n_0;
  assign qdr_bw_n_0 = hravframework_0_qdr_bw_n_0;
  assign qdr_dll_off_n_0 = hravframework_0_qdr_dll_off_n_0;
  assign hravframework_0_qdr_cq_0[0] = qdr_cq_0;
  assign hravframework_0_qdr_cq_n_0[0] = qdr_cq_n_0;
  assign qdr_c_n_0 = hravframework_0_qdr_c_n_0[0];
  assign qdr_k_n_0 = hravframework_0_qdr_k_n_0[0];
  assign qdr_c_0 = hravframework_0_qdr_c_0[0];
  assign qdr_k_0 = hravframework_0_qdr_k_0[0];
  assign hravframework_0_masterbank_sel_pin = masterbank_sel_pin;
  assign qdr_d_1 = hravframework_0_qdr_d_1;
  assign hravframework_0_qdr_q_1 = qdr_q_1;
  assign qdr_sa_1 = hravframework_0_qdr_sa_1;
  assign qdr_w_n_1 = hravframework_0_qdr_w_n_1;
  assign qdr_r_n_1 = hravframework_0_qdr_r_n_1;
  assign qdr_bw_n_1 = hravframework_0_qdr_bw_n_1;
  assign qdr_dll_off_n_1 = hravframework_0_qdr_dll_off_n_1;
  assign hravframework_0_qdr_cq_1[0] = qdr_cq_1;
  assign hravframework_0_qdr_cq_n_1[0] = qdr_cq_n_1;
  assign qdr_c_n_1 = hravframework_0_qdr_c_n_1[0];
  assign qdr_k_n_1 = hravframework_0_qdr_k_n_1[0];
  assign qdr_c_1 = hravframework_0_qdr_c_1[0];
  assign qdr_k_1 = hravframework_0_qdr_k_1[0];
  assign qdr_d_2 = hravframework_0_qdr_d_2;
  assign hravframework_0_qdr_q_2 = qdr_q_2;
  assign qdr_sa_2 = hravframework_0_qdr_sa_2;
  assign qdr_w_n_2 = hravframework_0_qdr_w_n_2;
  assign qdr_r_n_2 = hravframework_0_qdr_r_n_2;
  assign qdr_bw_n_2 = hravframework_0_qdr_bw_n_2;
  assign qdr_dll_off_n_2 = hravframework_0_qdr_dll_off_n_2;
  assign hravframework_0_qdr_cq_2[0] = qdr_cq_2;
  assign hravframework_0_qdr_cq_n_2[0] = qdr_cq_n_2;
  assign qdr_c_n_2 = hravframework_0_qdr_c_n_2[0];
  assign qdr_k_n_2 = hravframework_0_qdr_k_n_2[0];
  assign qdr_c_2 = hravframework_0_qdr_c_2[0];
  assign qdr_k_2 = hravframework_0_qdr_k_2[0];
  assign pgassign1[5:5] = axi_clk[0:0];
  assign pgassign1[4:4] = axi_clk[0:0];
  assign pgassign1[3:3] = axi_clk[0:0];
  assign pgassign1[2:2] = axi_clk[0:0];
  assign pgassign1[1:1] = axi_clk[0:0];
  assign pgassign1[0:0] = axi_clk[0:0];
  assign net_gnd0 = 1'b0;
  assign net_gnd1[0:0] = 1'b0;
  assign net_gnd2[1:0] = 2'b00;
  assign net_gnd3[2:0] = 3'b000;
  assign net_gnd32[31:0] = 32'b00000000000000000000000000000000;
  assign net_gnd36[35:0] = 36'b000000000000000000000000000000000000;
  assign net_gnd4[3:0] = 4'b0000;
  assign net_gnd6[5:0] = 6'b000000;
  assign net_gnd8[7:0] = 8'b00000000;

  (* BOX_TYPE = "user_black_box" *)
  axi_interconnect_0_wrapper
    axi_interconnect_0 (
      .INTERCONNECT_ACLK ( axi_clk[0] ),
      .INTERCONNECT_ARESETN ( connectnetwork_0_reset_reset_0_Reset_2_adhoc[0] ),
      .S_AXI_ARESET_OUT_N ( axi_interconnect_0_S_ARESETN[0:0] ),
      .M_AXI_ARESET_OUT_N ( axi_interconnect_0_M_ARESETN ),
      .IRQ (  ),
      .S_AXI_ACLK ( axi_clk[0:0] ),
      .S_AXI_AWID ( net_gnd1[0:0] ),
      .S_AXI_AWADDR ( axi_interconnect_0_S_AWADDR ),
      .S_AXI_AWLEN ( net_gnd8 ),
      .S_AXI_AWSIZE ( net_gnd3 ),
      .S_AXI_AWBURST ( net_gnd2 ),
      .S_AXI_AWLOCK ( net_gnd2 ),
      .S_AXI_AWCACHE ( net_gnd4 ),
      .S_AXI_AWPROT ( net_gnd3 ),
      .S_AXI_AWQOS ( net_gnd4 ),
      .S_AXI_AWUSER ( net_gnd1[0:0] ),
      .S_AXI_AWVALID ( axi_interconnect_0_S_AWVALID[0:0] ),
      .S_AXI_AWREADY ( axi_interconnect_0_S_AWREADY[0:0] ),
      .S_AXI_WDATA ( axi_interconnect_0_S_WDATA ),
      .S_AXI_WSTRB ( axi_interconnect_0_S_WSTRB ),
      .S_AXI_WLAST ( net_gnd1[0:0] ),
      .S_AXI_WUSER ( net_gnd1[0:0] ),
      .S_AXI_WVALID ( axi_interconnect_0_S_WVALID[0:0] ),
      .S_AXI_WREADY ( axi_interconnect_0_S_WREADY[0:0] ),
      .S_AXI_BID (  ),
      .S_AXI_BRESP ( axi_interconnect_0_S_BRESP ),
      .S_AXI_BUSER (  ),
      .S_AXI_BVALID ( axi_interconnect_0_S_BVALID[0:0] ),
      .S_AXI_BREADY ( axi_interconnect_0_S_BREADY[0:0] ),
      .S_AXI_ARID ( net_gnd1[0:0] ),
      .S_AXI_ARADDR ( axi_interconnect_0_S_ARADDR ),
      .S_AXI_ARLEN ( net_gnd8 ),
      .S_AXI_ARSIZE ( net_gnd3 ),
      .S_AXI_ARBURST ( net_gnd2 ),
      .S_AXI_ARLOCK ( net_gnd2 ),
      .S_AXI_ARCACHE ( net_gnd4 ),
      .S_AXI_ARPROT ( net_gnd3 ),
      .S_AXI_ARQOS ( net_gnd4 ),
      .S_AXI_ARUSER ( net_gnd1[0:0] ),
      .S_AXI_ARVALID ( axi_interconnect_0_S_ARVALID[0:0] ),
      .S_AXI_ARREADY ( axi_interconnect_0_S_ARREADY[0:0] ),
      .S_AXI_RID (  ),
      .S_AXI_RDATA ( axi_interconnect_0_S_RDATA ),
      .S_AXI_RRESP ( axi_interconnect_0_S_RRESP ),
      .S_AXI_RLAST (  ),
      .S_AXI_RUSER (  ),
      .S_AXI_RVALID ( axi_interconnect_0_S_RVALID[0:0] ),
      .S_AXI_RREADY ( axi_interconnect_0_S_RREADY[0:0] ),
      .M_AXI_ACLK ( pgassign1 ),
      .M_AXI_AWID (  ),
      .M_AXI_AWADDR ( axi_interconnect_0_M_AWADDR ),
      .M_AXI_AWLEN (  ),
      .M_AXI_AWSIZE (  ),
      .M_AXI_AWBURST (  ),
      .M_AXI_AWLOCK (  ),
      .M_AXI_AWCACHE (  ),
      .M_AXI_AWPROT (  ),
      .M_AXI_AWREGION (  ),
      .M_AXI_AWQOS (  ),
      .M_AXI_AWUSER (  ),
      .M_AXI_AWVALID ( axi_interconnect_0_M_AWVALID ),
      .M_AXI_AWREADY ( axi_interconnect_0_M_AWREADY ),
      .M_AXI_WID (  ),
      .M_AXI_WDATA ( axi_interconnect_0_M_WDATA ),
      .M_AXI_WSTRB ( axi_interconnect_0_M_WSTRB ),
      .M_AXI_WLAST (  ),
      .M_AXI_WUSER (  ),
      .M_AXI_WVALID ( axi_interconnect_0_M_WVALID ),
      .M_AXI_WREADY ( axi_interconnect_0_M_WREADY ),
      .M_AXI_BID ( net_gnd6 ),
      .M_AXI_BRESP ( axi_interconnect_0_M_BRESP ),
      .M_AXI_BUSER ( net_gnd6 ),
      .M_AXI_BVALID ( axi_interconnect_0_M_BVALID ),
      .M_AXI_BREADY ( axi_interconnect_0_M_BREADY ),
      .M_AXI_ARID (  ),
      .M_AXI_ARADDR ( axi_interconnect_0_M_ARADDR ),
      .M_AXI_ARLEN (  ),
      .M_AXI_ARSIZE (  ),
      .M_AXI_ARBURST (  ),
      .M_AXI_ARLOCK (  ),
      .M_AXI_ARCACHE (  ),
      .M_AXI_ARPROT (  ),
      .M_AXI_ARREGION (  ),
      .M_AXI_ARQOS (  ),
      .M_AXI_ARUSER (  ),
      .M_AXI_ARVALID ( axi_interconnect_0_M_ARVALID ),
      .M_AXI_ARREADY ( axi_interconnect_0_M_ARREADY ),
      .M_AXI_RID ( net_gnd6 ),
      .M_AXI_RDATA ( axi_interconnect_0_M_RDATA ),
      .M_AXI_RRESP ( axi_interconnect_0_M_RRESP ),
      .M_AXI_RLAST ( net_gnd6 ),
      .M_AXI_RUSER ( net_gnd6 ),
      .M_AXI_RVALID ( axi_interconnect_0_M_RVALID ),
      .M_AXI_RREADY ( axi_interconnect_0_M_RREADY ),
      .S_AXI_CTRL_AWADDR ( net_gnd32 ),
      .S_AXI_CTRL_AWVALID ( net_gnd0 ),
      .S_AXI_CTRL_AWREADY (  ),
      .S_AXI_CTRL_WDATA ( net_gnd32 ),
      .S_AXI_CTRL_WVALID ( net_gnd0 ),
      .S_AXI_CTRL_WREADY (  ),
      .S_AXI_CTRL_BRESP (  ),
      .S_AXI_CTRL_BVALID (  ),
      .S_AXI_CTRL_BREADY ( net_gnd0 ),
      .S_AXI_CTRL_ARADDR ( net_gnd32 ),
      .S_AXI_CTRL_ARVALID ( net_gnd0 ),
      .S_AXI_CTRL_ARREADY (  ),
      .S_AXI_CTRL_RDATA (  ),
      .S_AXI_CTRL_RRESP (  ),
      .S_AXI_CTRL_RVALID (  ),
      .S_AXI_CTRL_RREADY ( net_gnd0 )
    );

  (* BOX_TYPE = "user_black_box" *)
  reset_0_wrapper
    reset_0 (
      .Slowest_sync_clk ( axi_clk[0] ),
      .Ext_Reset_In ( RESET ),
      .Aux_Reset_In ( net_gnd0 ),
      .MB_Debug_Sys_Rst ( net_gnd0 ),
      .Core_Reset_Req_0 ( net_gnd0 ),
      .Chip_Reset_Req_0 ( net_gnd0 ),
      .System_Reset_Req_0 ( net_gnd0 ),
      .Core_Reset_Req_1 ( net_gnd0 ),
      .Chip_Reset_Req_1 ( net_gnd0 ),
      .System_Reset_Req_1 ( net_gnd0 ),
      .Dcm_locked ( dcm_locked ),
      .RstcPPCresetcore_0 (  ),
      .RstcPPCresetchip_0 (  ),
      .RstcPPCresetsys_0 (  ),
      .RstcPPCresetcore_1 (  ),
      .RstcPPCresetchip_1 (  ),
      .RstcPPCresetsys_1 (  ),
      .MB_Reset (  ),
      .Bus_Struct_Reset (  ),
      .Peripheral_Reset ( Peripheral_Reset[0:0] ),
      .Interconnect_aresetn ( connectnetwork_0_reset_reset_0_Reset_2_adhoc[0:0] ),
      .Peripheral_aresetn ( Peripheral_aresetn[0:0] )
    );

  (* BOX_TYPE = "user_black_box" *)
  clock_generator_0_wrapper
    clock_generator_0 (
      .CLKIN ( CLK ),
      .CLKOUT0 ( axi_clk[0] ),
      .CLKOUT1 ( core_clk ),
      .CLKOUT2 ( core_clk_270 ),
      .CLKOUT3 ( sram_clk_200 ),
      .CLKOUT4 ( ICAP_clk ),
      .CLKOUT5 (  ),
      .CLKOUT6 (  ),
      .CLKOUT7 (  ),
      .CLKOUT8 (  ),
      .CLKOUT9 (  ),
      .CLKOUT10 (  ),
      .CLKOUT11 (  ),
      .CLKOUT12 (  ),
      .CLKOUT13 (  ),
      .CLKOUT14 (  ),
      .CLKOUT15 (  ),
      .CLKFBIN ( net_gnd0 ),
      .CLKFBOUT (  ),
      .PSCLK ( net_gnd0 ),
      .PSEN ( net_gnd0 ),
      .PSINCDEC ( net_gnd0 ),
      .PSDONE (  ),
      .RST ( RESET ),
      .LOCKED ( dcm_locked )
    );

  (* BOX_TYPE = "user_black_box" *)
  diff_input_buf_0_wrapper
    diff_input_buf_0 (
      .SINGLE_ENDED_INPUT (  ),
      .DIFF_INPUT_P ( DIFF_INPUT_BUF_0_DIFF_INPUT_P ),
      .DIFF_INPUT_N ( DIFF_INPUT_BUF_0_DIFF_INPUT_N )
    );

  (* BOX_TYPE = "user_black_box" *)
  diff_input_buf_1_wrapper
    diff_input_buf_1 (
      .SINGLE_ENDED_INPUT (  ),
      .DIFF_INPUT_P ( DIFF_INPUT_BUF_1_DIFF_INPUT_P ),
      .DIFF_INPUT_N ( DIFF_INPUT_BUF_1_DIFF_INPUT_N )
    );

  (* BOX_TYPE = "user_black_box" *)
  diff_input_buf_2_wrapper
    diff_input_buf_2 (
      .SINGLE_ENDED_INPUT (  ),
      .DIFF_INPUT_P ( DIFF_INPUT_BUF_2_DIFF_INPUT_P ),
      .DIFF_INPUT_N ( DIFF_INPUT_BUF_2_DIFF_INPUT_N )
    );

  (* BOX_TYPE = "user_black_box" *)
  diff_input_buf_3_wrapper
    diff_input_buf_3 (
      .SINGLE_ENDED_INPUT (  ),
      .DIFF_INPUT_P ( DIFF_INPUT_BUF_3_DIFF_INPUT_P ),
      .DIFF_INPUT_N ( DIFF_INPUT_BUF_3_DIFF_INPUT_N )
    );

  (* BOX_TYPE = "user_black_box" *)
  dma_0_wrapper
    dma_0 (
      .reset_n ( Peripheral_aresetn[0] ),
      .pcie_clk_p ( pcie_top_0_pcie_clk_p ),
      .pcie_clk_n ( pcie_top_0_pcie_clk_n ),
      .pci_exp_0_txp ( pcie_top_0_pci_exp_0_txp ),
      .pci_exp_0_txn ( pcie_top_0_pci_exp_0_txn ),
      .pci_exp_0_rxp ( pcie_top_0_pci_exp_0_rxp ),
      .pci_exp_0_rxn ( pcie_top_0_pci_exp_0_rxn ),
      .pci_exp_1_txp ( pcie_top_0_pci_exp_1_txp ),
      .pci_exp_1_txn ( pcie_top_0_pci_exp_1_txn ),
      .pci_exp_1_rxp ( pcie_top_0_pci_exp_1_rxp ),
      .pci_exp_1_rxn ( pcie_top_0_pci_exp_1_rxn ),
      .pci_exp_2_txp ( pcie_top_0_pci_exp_2_txp ),
      .pci_exp_2_txn ( pcie_top_0_pci_exp_2_txn ),
      .pci_exp_2_rxp ( pcie_top_0_pci_exp_2_rxp ),
      .pci_exp_2_rxn ( pcie_top_0_pci_exp_2_rxn ),
      .pci_exp_3_txp ( pcie_top_0_pci_exp_3_txp ),
      .pci_exp_3_txn ( pcie_top_0_pci_exp_3_txn ),
      .pci_exp_3_rxp ( pcie_top_0_pci_exp_3_rxp ),
      .pci_exp_3_rxn ( pcie_top_0_pci_exp_3_rxn ),
      .pci_exp_4_txp ( pcie_top_0_pci_exp_4_txp ),
      .pci_exp_4_txn ( pcie_top_0_pci_exp_4_txn ),
      .pci_exp_4_rxp ( pcie_top_0_pci_exp_4_rxp ),
      .pci_exp_4_rxn ( pcie_top_0_pci_exp_4_rxn ),
      .pci_exp_5_txp ( pcie_top_0_pci_exp_5_txp ),
      .pci_exp_5_txn ( pcie_top_0_pci_exp_5_txn ),
      .pci_exp_5_rxp ( pcie_top_0_pci_exp_5_rxp ),
      .pci_exp_5_rxn ( pcie_top_0_pci_exp_5_rxn ),
      .pci_exp_6_txp ( pcie_top_0_pci_exp_6_txp ),
      .pci_exp_6_txn ( pcie_top_0_pci_exp_6_txn ),
      .pci_exp_6_rxp ( pcie_top_0_pci_exp_6_rxp ),
      .pci_exp_6_rxn ( pcie_top_0_pci_exp_6_rxn ),
      .pci_exp_7_txp ( pcie_top_0_pci_exp_7_txp ),
      .pci_exp_7_txn ( pcie_top_0_pci_exp_7_txn ),
      .pci_exp_7_rxp ( pcie_top_0_pci_exp_7_rxp ),
      .pci_exp_7_rxn ( pcie_top_0_pci_exp_7_rxn ),
      .M_AXI_LITE_ACLK ( axi_clk[0] ),
      .M_AXI_LITE_ARESETN ( axi_interconnect_0_S_ARESETN[0] ),
      .M_AXI_LITE_AWADDR ( axi_interconnect_0_S_AWADDR ),
      .M_AXI_LITE_AWVALID ( axi_interconnect_0_S_AWVALID[0] ),
      .M_AXI_LITE_AWREADY ( axi_interconnect_0_S_AWREADY[0] ),
      .M_AXI_LITE_WDATA ( axi_interconnect_0_S_WDATA ),
      .M_AXI_LITE_WSTRB ( axi_interconnect_0_S_WSTRB ),
      .M_AXI_LITE_WVALID ( axi_interconnect_0_S_WVALID[0] ),
      .M_AXI_LITE_WREADY ( axi_interconnect_0_S_WREADY[0] ),
      .M_AXI_LITE_BRESP ( axi_interconnect_0_S_BRESP ),
      .M_AXI_LITE_BVALID ( axi_interconnect_0_S_BVALID[0] ),
      .M_AXI_LITE_BREADY ( axi_interconnect_0_S_BREADY[0] ),
      .M_AXI_LITE_ARADDR ( axi_interconnect_0_S_ARADDR ),
      .M_AXI_LITE_ARVALID ( axi_interconnect_0_S_ARVALID[0] ),
      .M_AXI_LITE_ARREADY ( axi_interconnect_0_S_ARREADY[0] ),
      .M_AXI_LITE_RDATA ( axi_interconnect_0_S_RDATA ),
      .M_AXI_LITE_RRESP ( axi_interconnect_0_S_RRESP ),
      .M_AXI_LITE_RVALID ( axi_interconnect_0_S_RVALID[0] ),
      .M_AXI_LITE_RREADY ( axi_interconnect_0_S_RREADY[0] ),
      .S_AXI_ACLK ( axi_clk[0] ),
      .S_AXI_ARESETN ( axi_interconnect_0_M_ARESETN[0] ),
      .S_AXI_AWADDR ( axi_interconnect_0_M_AWADDR[31:0] ),
      .S_AXI_AWVALID ( axi_interconnect_0_M_AWVALID[0] ),
      .S_AXI_AWREADY ( axi_interconnect_0_M_AWREADY[0] ),
      .S_AXI_WDATA ( axi_interconnect_0_M_WDATA[31:0] ),
      .S_AXI_WSTRB ( axi_interconnect_0_M_WSTRB[3:0] ),
      .S_AXI_WVALID ( axi_interconnect_0_M_WVALID[0] ),
      .S_AXI_WREADY ( axi_interconnect_0_M_WREADY[0] ),
      .S_AXI_BRESP ( axi_interconnect_0_M_BRESP[1:0] ),
      .S_AXI_BVALID ( axi_interconnect_0_M_BVALID[0] ),
      .S_AXI_BREADY ( axi_interconnect_0_M_BREADY[0] ),
      .S_AXI_ARADDR ( axi_interconnect_0_M_ARADDR[31:0] ),
      .S_AXI_ARVALID ( axi_interconnect_0_M_ARVALID[0] ),
      .S_AXI_ARREADY ( axi_interconnect_0_M_ARREADY[0] ),
      .S_AXI_RDATA ( axi_interconnect_0_M_RDATA[31:0] ),
      .S_AXI_RRESP ( axi_interconnect_0_M_RRESP[1:0] ),
      .S_AXI_RVALID ( axi_interconnect_0_M_RVALID[0] ),
      .S_AXI_RREADY ( axi_interconnect_0_M_RREADY[0] ),
      .M_AXIS_ACLK ( core_clk ),
      .M_AXIS_TDATA ( dma_0_M_AXIS_TDATA ),
      .M_AXIS_TSTRB ( dma_0_M_AXIS_TSTRB ),
      .M_AXIS_TUSER ( dma_0_M_AXIS_TUSER ),
      .M_AXIS_TVALID ( dma_0_M_AXIS_TVALID ),
      .M_AXIS_TREADY ( dma_0_M_AXIS_TREADY ),
      .M_AXIS_TLAST ( dma_0_M_AXIS_TLAST ),
      .S_AXIS_ACLK ( core_clk ),
      .S_AXIS_TDATA ( dma_benchmark_1_M_AXIS_TDATA ),
      .S_AXIS_TSTRB ( dma_benchmark_1_M_AXIS_TSTRB ),
      .S_AXIS_TUSER ( dma_benchmark_1_M_AXIS_TUSER ),
      .S_AXIS_TVALID ( dma_benchmark_1_M_AXIS_TVALID ),
      .S_AXIS_TREADY ( dma_benchmark_1_M_AXIS_TREADY ),
      .S_AXIS_TLAST ( dma_benchmark_1_M_AXIS_TLAST )
    );

  (* BOX_TYPE = "user_black_box" *)
  hravframework_0_wrapper
    hravframework_0 (
      .axi_aclk ( core_clk ),
      .axi_resetn ( core_sync_reset_n ),
      .axi_reset ( core_0_reset ),
      .hrav_axis_lp ( hrav_0_axis_lp ),
      .core_clk ( core_clk ),
      .core_clk_270 ( core_clk_270 ),
      .sram_clk_200 ( sram_clk_200 ),
      .qdr_d_0 ( hravframework_0_qdr_d_0 ),
      .qdr_q_0 ( hravframework_0_qdr_q_0 ),
      .qdr_sa_0 ( hravframework_0_qdr_sa_0 ),
      .qdr_w_n_0 ( hravframework_0_qdr_w_n_0 ),
      .qdr_r_n_0 ( hravframework_0_qdr_r_n_0 ),
      .qdr_bw_n_0 ( hravframework_0_qdr_bw_n_0 ),
      .qdr_dll_off_n_0 ( hravframework_0_qdr_dll_off_n_0 ),
      .qdr_cq_0 ( hravframework_0_qdr_cq_0[0:0] ),
      .qdr_cq_n_0 ( hravframework_0_qdr_cq_n_0[0:0] ),
      .qdr_c_n_0 ( hravframework_0_qdr_c_n_0[0:0] ),
      .qdr_k_n_0 ( hravframework_0_qdr_k_n_0[0:0] ),
      .qdr_c_0 ( hravframework_0_qdr_c_0[0:0] ),
      .qdr_k_0 ( hravframework_0_qdr_k_0[0:0] ),
      .qdr_d_1 ( hravframework_0_qdr_d_1 ),
      .qdr_q_1 ( hravframework_0_qdr_q_1 ),
      .qdr_sa_1 ( hravframework_0_qdr_sa_1 ),
      .qdr_w_n_1 ( hravframework_0_qdr_w_n_1 ),
      .qdr_r_n_1 ( hravframework_0_qdr_r_n_1 ),
      .qdr_bw_n_1 ( hravframework_0_qdr_bw_n_1 ),
      .qdr_dll_off_n_1 ( hravframework_0_qdr_dll_off_n_1 ),
      .qdr_cq_1 ( hravframework_0_qdr_cq_1[0:0] ),
      .qdr_cq_n_1 ( hravframework_0_qdr_cq_n_1[0:0] ),
      .qdr_c_n_1 ( hravframework_0_qdr_c_n_1[0:0] ),
      .qdr_k_n_1 ( hravframework_0_qdr_k_n_1[0:0] ),
      .qdr_c_1 ( hravframework_0_qdr_c_1[0:0] ),
      .qdr_k_1 ( hravframework_0_qdr_k_1[0:0] ),
      .qdr_d_2 ( hravframework_0_qdr_d_2 ),
      .qdr_q_2 ( hravframework_0_qdr_q_2 ),
      .qdr_sa_2 ( hravframework_0_qdr_sa_2 ),
      .qdr_w_n_2 ( hravframework_0_qdr_w_n_2 ),
      .qdr_r_n_2 ( hravframework_0_qdr_r_n_2 ),
      .qdr_bw_n_2 ( hravframework_0_qdr_bw_n_2 ),
      .qdr_dll_off_n_2 ( hravframework_0_qdr_dll_off_n_2 ),
      .qdr_cq_2 ( hravframework_0_qdr_cq_2[0:0] ),
      .qdr_cq_n_2 ( hravframework_0_qdr_cq_n_2[0:0] ),
      .qdr_c_n_2 ( hravframework_0_qdr_c_n_2[0:0] ),
      .qdr_k_n_2 ( hravframework_0_qdr_k_n_2[0:0] ),
      .qdr_c_2 ( hravframework_0_qdr_c_2[0:0] ),
      .qdr_k_2 ( hravframework_0_qdr_k_2[0:0] ),
      .masterbank_sel_pin ( hravframework_0_masterbank_sel_pin ),
      .locked ( dcm_locked ),
      .m_axis_tdata ( hravframework_0_M_AXIS_TDATA ),
      .m_axis_tstrb ( hravframework_0_M_AXIS_TSTRB ),
      .m_axis_tuser ( hravframework_0_M_AXIS_TUSER ),
      .m_axis_tvalid ( hravframework_0_M_AXIS_TVALID ),
      .m_axis_tready ( hravframework_0_M_AXIS_TREADY ),
      .m_axis_tlast ( hravframework_0_M_AXIS_TLAST ),
      .s_axis_tdata ( pr_hrav_dispatcher_0_CORE0_M_AXIS_TDATA ),
      .s_axis_tstrb ( pr_hrav_dispatcher_0_CORE0_M_AXIS_TSTRB ),
      .s_axis_tuser ( pr_hrav_dispatcher_0_CORE0_M_AXIS_TUSER ),
      .s_axis_tvalid ( pr_hrav_dispatcher_0_CORE0_M_AXIS_TVALID ),
      .s_axis_tready ( pr_hrav_dispatcher_0_CORE0_M_AXIS_TREADY ),
      .s_axis_tlast ( pr_hrav_dispatcher_0_CORE0_M_AXIS_TLAST ),
      .S_AXI_ACLK ( axi_clk[0] ),
      .S_AXI_ARESETN ( axi_interconnect_0_M_ARESETN[1] ),
      .S_AXI_AWADDR ( axi_interconnect_0_M_AWADDR[63:32] ),
      .S_AXI_AWVALID ( axi_interconnect_0_M_AWVALID[1] ),
      .S_AXI_AWREADY ( axi_interconnect_0_M_AWREADY[1] ),
      .S_AXI_WDATA ( axi_interconnect_0_M_WDATA[63:32] ),
      .S_AXI_WSTRB ( axi_interconnect_0_M_WSTRB[7:4] ),
      .S_AXI_WVALID ( axi_interconnect_0_M_WVALID[1] ),
      .S_AXI_WREADY ( axi_interconnect_0_M_WREADY[1] ),
      .S_AXI_BRESP ( axi_interconnect_0_M_BRESP[3:2] ),
      .S_AXI_BVALID ( axi_interconnect_0_M_BVALID[1] ),
      .S_AXI_BREADY ( axi_interconnect_0_M_BREADY[1] ),
      .S_AXI_ARADDR ( axi_interconnect_0_M_ARADDR[63:32] ),
      .S_AXI_ARVALID ( axi_interconnect_0_M_ARVALID[1] ),
      .S_AXI_ARREADY ( axi_interconnect_0_M_ARREADY[1] ),
      .S_AXI_RDATA ( axi_interconnect_0_M_RDATA[63:32] ),
      .S_AXI_RRESP ( axi_interconnect_0_M_RRESP[3:2] ),
      .S_AXI_RVALID ( axi_interconnect_0_M_RVALID[1] ),
      .S_AXI_RREADY ( axi_interconnect_0_M_RREADY[1] )
    );

  (* BOX_TYPE = "user_black_box" *)
  dma_benchmark_0_wrapper
    dma_benchmark_0 (
      .ACLK ( core_clk ),
      .RESETN ( core_sync_reset_n ),
      .dbg_ctrl_0 ( dpt_dbg_ctrl_0 ),
      .dbg_ctrl_1 ( dpt_dbg_ctrl_1 ),
      .dbg_ctrl_2 ( dpt_dbg_ctrl_2 ),
      .dbg_ctrl_3 ( dpt_dbg_ctrl_3 ),
      .S_AXIS_TREADY ( dma_0_M_AXIS_TREADY ),
      .S_AXIS_TDATA ( dma_0_M_AXIS_TDATA ),
      .S_AXIS_TSTRB ( dma_0_M_AXIS_TSTRB ),
      .S_AXIS_TUSER ( dma_0_M_AXIS_TUSER ),
      .S_AXIS_TLAST ( dma_0_M_AXIS_TLAST ),
      .S_AXIS_TVALID ( dma_0_M_AXIS_TVALID ),
      .M_AXIS_TVALID ( dma_benchmark_0_M_AXIS_TVALID ),
      .M_AXIS_TDATA ( dma_benchmark_0_M_AXIS_TDATA ),
      .M_AXIS_TSTRB ( dma_benchmark_0_M_AXIS_TSTRB ),
      .M_AXIS_TUSER ( dma_benchmark_0_M_AXIS_TUSER ),
      .M_AXIS_TLAST ( dma_benchmark_0_M_AXIS_TLAST ),
      .M_AXIS_TREADY ( dma_benchmark_0_M_AXIS_TREADY ),
      .S_AXI_ACLK ( axi_clk[0] ),
      .S_AXI_ARESETN ( axi_interconnect_0_M_ARESETN[2] ),
      .S_AXI_AWADDR ( axi_interconnect_0_M_AWADDR[95:64] ),
      .S_AXI_AWVALID ( axi_interconnect_0_M_AWVALID[2] ),
      .S_AXI_AWREADY ( axi_interconnect_0_M_AWREADY[2] ),
      .S_AXI_WDATA ( axi_interconnect_0_M_WDATA[95:64] ),
      .S_AXI_WSTRB ( axi_interconnect_0_M_WSTRB[11:8] ),
      .S_AXI_WVALID ( axi_interconnect_0_M_WVALID[2] ),
      .S_AXI_WREADY ( axi_interconnect_0_M_WREADY[2] ),
      .S_AXI_BRESP ( axi_interconnect_0_M_BRESP[5:4] ),
      .S_AXI_BVALID ( axi_interconnect_0_M_BVALID[2] ),
      .S_AXI_BREADY ( axi_interconnect_0_M_BREADY[2] ),
      .S_AXI_ARADDR ( axi_interconnect_0_M_ARADDR[95:64] ),
      .S_AXI_ARVALID ( axi_interconnect_0_M_ARVALID[2] ),
      .S_AXI_ARREADY ( axi_interconnect_0_M_ARREADY[2] ),
      .S_AXI_RDATA ( axi_interconnect_0_M_RDATA[95:64] ),
      .S_AXI_RRESP ( axi_interconnect_0_M_RRESP[5:4] ),
      .S_AXI_RVALID ( axi_interconnect_0_M_RVALID[2] ),
      .S_AXI_RREADY ( axi_interconnect_0_M_RREADY[2] )
    );

  (* BOX_TYPE = "user_black_box" *)
  dma_benchmark_1_wrapper
    dma_benchmark_1 (
      .ACLK ( core_clk ),
      .RESETN ( core_sync_reset_n ),
      .dbg_ctrl_0 ( col_dbg_ctrl_0 ),
      .dbg_ctrl_1 ( col_dbg_ctrl_1 ),
      .dbg_ctrl_2 ( col_dbg_ctrl_2 ),
      .dbg_ctrl_3 ( col_dbg_ctrl_3 ),
      .S_AXIS_TREADY ( pr_hrav_collector_0_M_AXIS_TREADY ),
      .S_AXIS_TDATA ( pr_hrav_collector_0_M_AXIS_TDATA ),
      .S_AXIS_TSTRB ( pr_hrav_collector_0_M_AXIS_TSTRB ),
      .S_AXIS_TUSER ( pr_hrav_collector_0_M_AXIS_TUSER ),
      .S_AXIS_TLAST ( pr_hrav_collector_0_M_AXIS_TLAST ),
      .S_AXIS_TVALID ( pr_hrav_collector_0_M_AXIS_TVALID ),
      .M_AXIS_TVALID ( dma_benchmark_1_M_AXIS_TVALID ),
      .M_AXIS_TDATA ( dma_benchmark_1_M_AXIS_TDATA ),
      .M_AXIS_TSTRB ( dma_benchmark_1_M_AXIS_TSTRB ),
      .M_AXIS_TUSER ( dma_benchmark_1_M_AXIS_TUSER ),
      .M_AXIS_TLAST ( dma_benchmark_1_M_AXIS_TLAST ),
      .M_AXIS_TREADY ( dma_benchmark_1_M_AXIS_TREADY ),
      .S_AXI_ACLK ( axi_clk[0] ),
      .S_AXI_ARESETN ( axi_interconnect_0_M_ARESETN[3] ),
      .S_AXI_AWADDR ( axi_interconnect_0_M_AWADDR[127:96] ),
      .S_AXI_AWVALID ( axi_interconnect_0_M_AWVALID[3] ),
      .S_AXI_AWREADY ( axi_interconnect_0_M_AWREADY[3] ),
      .S_AXI_WDATA ( axi_interconnect_0_M_WDATA[127:96] ),
      .S_AXI_WSTRB ( axi_interconnect_0_M_WSTRB[15:12] ),
      .S_AXI_WVALID ( axi_interconnect_0_M_WVALID[3] ),
      .S_AXI_WREADY ( axi_interconnect_0_M_WREADY[3] ),
      .S_AXI_BRESP ( axi_interconnect_0_M_BRESP[7:6] ),
      .S_AXI_BVALID ( axi_interconnect_0_M_BVALID[3] ),
      .S_AXI_BREADY ( axi_interconnect_0_M_BREADY[3] ),
      .S_AXI_ARADDR ( axi_interconnect_0_M_ARADDR[127:96] ),
      .S_AXI_ARVALID ( axi_interconnect_0_M_ARVALID[3] ),
      .S_AXI_ARREADY ( axi_interconnect_0_M_ARREADY[3] ),
      .S_AXI_RDATA ( axi_interconnect_0_M_RDATA[127:96] ),
      .S_AXI_RRESP ( axi_interconnect_0_M_RRESP[7:6] ),
      .S_AXI_RVALID ( axi_interconnect_0_M_RVALID[3] ),
      .S_AXI_RREADY ( axi_interconnect_0_M_RREADY[3] )
    );

  (* BOX_TYPE = "user_black_box" *)
  pr_hrav_dispatcher_0_wrapper
    pr_hrav_dispatcher_0 (
      .ACLK ( core_clk ),
      .ARESETN ( core_sync_reset_n ),
      .CORE_CLK ( core_clk ),
      .CORE_RESETN ( core_sync_reset_n ),
      .core_0_enb ( core_0_enb ),
      .core_1_enb ( core_1_enb ),
      .dbg_ctrl_0 ( dpt_dbg_ctrl_0 ),
      .dbg_ctrl_1 ( dpt_dbg_ctrl_1 ),
      .dbg_ctrl_2 ( dpt_dbg_ctrl_2 ),
      .dbg_ctrl_3 ( dpt_dbg_ctrl_3 ),
      .S_AXIS_TDATA ( dma_benchmark_0_M_AXIS_TDATA ),
      .S_AXIS_TSTRB ( dma_benchmark_0_M_AXIS_TSTRB ),
      .S_AXIS_TUSER ( dma_benchmark_0_M_AXIS_TUSER ),
      .S_AXIS_TLAST ( dma_benchmark_0_M_AXIS_TLAST ),
      .S_AXIS_TVALID ( dma_benchmark_0_M_AXIS_TVALID ),
      .S_AXIS_TREADY ( dma_benchmark_0_M_AXIS_TREADY ),
      .CORE0_M_AXIS_TVALID ( pr_hrav_dispatcher_0_CORE0_M_AXIS_TVALID ),
      .CORE0_M_AXIS_TDATA ( pr_hrav_dispatcher_0_CORE0_M_AXIS_TDATA ),
      .CORE0_M_AXIS_TSTRB ( pr_hrav_dispatcher_0_CORE0_M_AXIS_TSTRB ),
      .CORE0_M_AXIS_TUSER ( pr_hrav_dispatcher_0_CORE0_M_AXIS_TUSER ),
      .CORE0_M_AXIS_TLAST ( pr_hrav_dispatcher_0_CORE0_M_AXIS_TLAST ),
      .CORE0_M_AXIS_TREADY ( pr_hrav_dispatcher_0_CORE0_M_AXIS_TREADY ),
      .CORE1_M_AXIS_TVALID ( pr_hrav_dispatcher_0_CORE1_M_AXIS_TVALID ),
      .CORE1_M_AXIS_TDATA ( pr_hrav_dispatcher_0_CORE1_M_AXIS_TDATA ),
      .CORE1_M_AXIS_TSTRB ( pr_hrav_dispatcher_0_CORE1_M_AXIS_TSTRB ),
      .CORE1_M_AXIS_TUSER ( pr_hrav_dispatcher_0_CORE1_M_AXIS_TUSER ),
      .CORE1_M_AXIS_TLAST ( pr_hrav_dispatcher_0_CORE1_M_AXIS_TLAST ),
      .CORE1_M_AXIS_TREADY ( pr_hrav_dispatcher_0_CORE1_M_AXIS_TREADY ),
      .ICAP_M_AXIS_TVALID ( pr_hrav_dispatcher_0_ICAP_M_AXIS_TVALID ),
      .ICAP_M_AXIS_TDATA ( pr_hrav_dispatcher_0_ICAP_M_AXIS_TDATA ),
      .ICAP_M_AXIS_TSTRB ( pr_hrav_dispatcher_0_ICAP_M_AXIS_TSTRB ),
      .ICAP_M_AXIS_TUSER ( pr_hrav_dispatcher_0_ICAP_M_AXIS_TUSER ),
      .ICAP_M_AXIS_TLAST ( pr_hrav_dispatcher_0_ICAP_M_AXIS_TLAST ),
      .ICAP_M_AXIS_TREADY ( pr_hrav_dispatcher_0_ICAP_M_AXIS_TREADY )
    );

  (* BOX_TYPE = "user_black_box" *)
  hravframework_1_wrapper
    hravframework_1 (
      .axi_aclk ( core_clk ),
      .axi_resetn ( core_sync_reset_n ),
      .axi_reset ( core_1_reset ),
      .hrav_axis_lp ( hrav_1_axis_lp ),
      .core_clk ( core_clk ),
      .core_clk_270 ( core_clk_270 ),
      .sram_clk_200 ( sram_clk_200 ),
      .qdr_d_0 (  ),
      .qdr_q_0 ( net_gnd36 ),
      .qdr_sa_0 (  ),
      .qdr_w_n_0 (  ),
      .qdr_r_n_0 (  ),
      .qdr_bw_n_0 (  ),
      .qdr_dll_off_n_0 (  ),
      .qdr_cq_0 ( net_gnd1[0:0] ),
      .qdr_cq_n_0 ( net_gnd1[0:0] ),
      .qdr_c_n_0 (  ),
      .qdr_k_n_0 (  ),
      .qdr_c_0 (  ),
      .qdr_k_0 (  ),
      .qdr_d_1 (  ),
      .qdr_q_1 ( net_gnd36 ),
      .qdr_sa_1 (  ),
      .qdr_w_n_1 (  ),
      .qdr_r_n_1 (  ),
      .qdr_bw_n_1 (  ),
      .qdr_dll_off_n_1 (  ),
      .qdr_cq_1 ( net_gnd1[0:0] ),
      .qdr_cq_n_1 ( net_gnd1[0:0] ),
      .qdr_c_n_1 (  ),
      .qdr_k_n_1 (  ),
      .qdr_c_1 (  ),
      .qdr_k_1 (  ),
      .qdr_d_2 (  ),
      .qdr_q_2 ( net_gnd36 ),
      .qdr_sa_2 (  ),
      .qdr_w_n_2 (  ),
      .qdr_r_n_2 (  ),
      .qdr_bw_n_2 (  ),
      .qdr_dll_off_n_2 (  ),
      .qdr_cq_2 ( net_gnd1[0:0] ),
      .qdr_cq_n_2 ( net_gnd1[0:0] ),
      .qdr_c_n_2 (  ),
      .qdr_k_n_2 (  ),
      .qdr_c_2 (  ),
      .qdr_k_2 (  ),
      .masterbank_sel_pin ( net_gnd3 ),
      .locked ( dcm_locked ),
      .m_axis_tdata ( hravframework_1_M_AXIS_TDATA ),
      .m_axis_tstrb ( hravframework_1_M_AXIS_TSTRB ),
      .m_axis_tuser ( hravframework_1_M_AXIS_TUSER ),
      .m_axis_tvalid ( hravframework_1_M_AXIS_TVALID ),
      .m_axis_tready ( hravframework_1_M_AXIS_TREADY ),
      .m_axis_tlast ( hravframework_1_M_AXIS_TLAST ),
      .s_axis_tdata ( pr_hrav_dispatcher_0_CORE1_M_AXIS_TDATA ),
      .s_axis_tstrb ( pr_hrav_dispatcher_0_CORE1_M_AXIS_TSTRB ),
      .s_axis_tuser ( pr_hrav_dispatcher_0_CORE1_M_AXIS_TUSER ),
      .s_axis_tvalid ( pr_hrav_dispatcher_0_CORE1_M_AXIS_TVALID ),
      .s_axis_tready ( pr_hrav_dispatcher_0_CORE1_M_AXIS_TREADY ),
      .s_axis_tlast ( pr_hrav_dispatcher_0_CORE1_M_AXIS_TLAST ),
      .S_AXI_ACLK ( axi_clk[0] ),
      .S_AXI_ARESETN ( axi_interconnect_0_M_ARESETN[4] ),
      .S_AXI_AWADDR ( axi_interconnect_0_M_AWADDR[159:128] ),
      .S_AXI_AWVALID ( axi_interconnect_0_M_AWVALID[4] ),
      .S_AXI_AWREADY ( axi_interconnect_0_M_AWREADY[4] ),
      .S_AXI_WDATA ( axi_interconnect_0_M_WDATA[159:128] ),
      .S_AXI_WSTRB ( axi_interconnect_0_M_WSTRB[19:16] ),
      .S_AXI_WVALID ( axi_interconnect_0_M_WVALID[4] ),
      .S_AXI_WREADY ( axi_interconnect_0_M_WREADY[4] ),
      .S_AXI_BRESP ( axi_interconnect_0_M_BRESP[9:8] ),
      .S_AXI_BVALID ( axi_interconnect_0_M_BVALID[4] ),
      .S_AXI_BREADY ( axi_interconnect_0_M_BREADY[4] ),
      .S_AXI_ARADDR ( axi_interconnect_0_M_ARADDR[159:128] ),
      .S_AXI_ARVALID ( axi_interconnect_0_M_ARVALID[4] ),
      .S_AXI_ARREADY ( axi_interconnect_0_M_ARREADY[4] ),
      .S_AXI_RDATA ( axi_interconnect_0_M_RDATA[159:128] ),
      .S_AXI_RRESP ( axi_interconnect_0_M_RRESP[9:8] ),
      .S_AXI_RVALID ( axi_interconnect_0_M_RVALID[4] ),
      .S_AXI_RREADY ( axi_interconnect_0_M_RREADY[4] )
    );

  (* BOX_TYPE = "user_black_box" *)
  pr_hrav_icap_controller_0_wrapper
    pr_hrav_icap_controller_0 (
      .ACLK ( core_clk ),
      .ICAP_clk ( ICAP_clk ),
      .RESETN ( Peripheral_aresetn[0] ),
      .RESET ( Peripheral_Reset[0] ),
      .core_0_enb ( core_0_enb ),
      .core_1_enb ( core_1_enb ),
      .core_0_reset ( core_0_reset ),
      .core_1_reset ( core_1_reset ),
      .core_sync_reset (  ),
      .core_sync_reset_n ( core_sync_reset_n ),
      .hrav_0_axis_lp ( hrav_0_axis_lp ),
      .hrav_1_axis_lp ( hrav_1_axis_lp ),
      .S_AXIS_TREADY ( pr_hrav_dispatcher_0_ICAP_M_AXIS_TREADY ),
      .S_AXIS_TDATA ( pr_hrav_dispatcher_0_ICAP_M_AXIS_TDATA ),
      .S_AXIS_TSTRB ( pr_hrav_dispatcher_0_ICAP_M_AXIS_TSTRB ),
      .S_AXIS_TUSER ( pr_hrav_dispatcher_0_ICAP_M_AXIS_TUSER ),
      .S_AXIS_TLAST ( pr_hrav_dispatcher_0_ICAP_M_AXIS_TLAST ),
      .S_AXIS_TVALID ( pr_hrav_dispatcher_0_ICAP_M_AXIS_TVALID ),
      .M_AXIS_TVALID ( pr_hrav_icap_controller_0_M_AXIS_TVALID ),
      .M_AXIS_TDATA ( pr_hrav_icap_controller_0_M_AXIS_TDATA ),
      .M_AXIS_TSTRB ( pr_hrav_icap_controller_0_M_AXIS_TSTRB ),
      .M_AXIS_TUSER ( pr_hrav_icap_controller_0_M_AXIS_TUSER ),
      .M_AXIS_TLAST ( pr_hrav_icap_controller_0_M_AXIS_TLAST ),
      .M_AXIS_TREADY ( pr_hrav_icap_controller_0_M_AXIS_TREADY ),
      .S_AXI_ACLK ( axi_clk[0] ),
      .S_AXI_ARESETN ( axi_interconnect_0_M_ARESETN[5] ),
      .S_AXI_AWADDR ( axi_interconnect_0_M_AWADDR[191:160] ),
      .S_AXI_AWVALID ( axi_interconnect_0_M_AWVALID[5] ),
      .S_AXI_AWREADY ( axi_interconnect_0_M_AWREADY[5] ),
      .S_AXI_WDATA ( axi_interconnect_0_M_WDATA[191:160] ),
      .S_AXI_WSTRB ( axi_interconnect_0_M_WSTRB[23:20] ),
      .S_AXI_WVALID ( axi_interconnect_0_M_WVALID[5] ),
      .S_AXI_WREADY ( axi_interconnect_0_M_WREADY[5] ),
      .S_AXI_BRESP ( axi_interconnect_0_M_BRESP[11:10] ),
      .S_AXI_BVALID ( axi_interconnect_0_M_BVALID[5] ),
      .S_AXI_BREADY ( axi_interconnect_0_M_BREADY[5] ),
      .S_AXI_ARADDR ( axi_interconnect_0_M_ARADDR[191:160] ),
      .S_AXI_ARVALID ( axi_interconnect_0_M_ARVALID[5] ),
      .S_AXI_ARREADY ( axi_interconnect_0_M_ARREADY[5] ),
      .S_AXI_RDATA ( axi_interconnect_0_M_RDATA[191:160] ),
      .S_AXI_RRESP ( axi_interconnect_0_M_RRESP[11:10] ),
      .S_AXI_RVALID ( axi_interconnect_0_M_RVALID[5] ),
      .S_AXI_RREADY ( axi_interconnect_0_M_RREADY[5] )
    );

  (* BOX_TYPE = "user_black_box" *)
  pr_hrav_collector_0_wrapper
    pr_hrav_collector_0 (
      .ACLK ( core_clk ),
      .ARESETN ( core_sync_reset_n ),
      .core_0_enb ( core_0_enb ),
      .core_1_enb ( core_1_enb ),
      .dbg_ctrl_0 ( col_dbg_ctrl_0 ),
      .dbg_ctrl_1 ( col_dbg_ctrl_1 ),
      .dbg_ctrl_2 ( col_dbg_ctrl_2 ),
      .dbg_ctrl_3 ( col_dbg_ctrl_3 ),
      .M_AXIS_TDATA ( pr_hrav_collector_0_M_AXIS_TDATA ),
      .M_AXIS_TSTRB ( pr_hrav_collector_0_M_AXIS_TSTRB ),
      .M_AXIS_TUSER ( pr_hrav_collector_0_M_AXIS_TUSER ),
      .M_AXIS_TLAST ( pr_hrav_collector_0_M_AXIS_TLAST ),
      .M_AXIS_TVALID ( pr_hrav_collector_0_M_AXIS_TVALID ),
      .M_AXIS_TREADY ( pr_hrav_collector_0_M_AXIS_TREADY ),
      .CORE0_S_AXIS_TVALID ( hravframework_0_M_AXIS_TVALID ),
      .CORE0_S_AXIS_TDATA ( hravframework_0_M_AXIS_TDATA ),
      .CORE0_S_AXIS_TSTRB ( hravframework_0_M_AXIS_TSTRB ),
      .CORE0_S_AXIS_TUSER ( hravframework_0_M_AXIS_TUSER ),
      .CORE0_S_AXIS_TLAST ( hravframework_0_M_AXIS_TLAST ),
      .CORE0_S_AXIS_TREADY ( hravframework_0_M_AXIS_TREADY ),
      .CORE1_S_AXIS_TVALID ( hravframework_1_M_AXIS_TVALID ),
      .CORE1_S_AXIS_TDATA ( hravframework_1_M_AXIS_TDATA ),
      .CORE1_S_AXIS_TSTRB ( hravframework_1_M_AXIS_TSTRB ),
      .CORE1_S_AXIS_TUSER ( hravframework_1_M_AXIS_TUSER ),
      .CORE1_S_AXIS_TLAST ( hravframework_1_M_AXIS_TLAST ),
      .CORE1_S_AXIS_TREADY ( hravframework_1_M_AXIS_TREADY ),
      .ICAP_S_AXIS_TVALID ( pr_hrav_icap_controller_0_M_AXIS_TVALID ),
      .ICAP_S_AXIS_TDATA ( pr_hrav_icap_controller_0_M_AXIS_TDATA ),
      .ICAP_S_AXIS_TSTRB ( pr_hrav_icap_controller_0_M_AXIS_TSTRB ),
      .ICAP_S_AXIS_TUSER ( pr_hrav_icap_controller_0_M_AXIS_TUSER ),
      .ICAP_S_AXIS_TLAST ( pr_hrav_icap_controller_0_M_AXIS_TLAST ),
      .ICAP_S_AXIS_TREADY ( pr_hrav_icap_controller_0_M_AXIS_TREADY )
    );

endmodule

module axi_interconnect_0_wrapper
  (
    INTERCONNECT_ACLK,
    INTERCONNECT_ARESETN,
    S_AXI_ARESET_OUT_N,
    M_AXI_ARESET_OUT_N,
    IRQ,
    S_AXI_ACLK,
    S_AXI_AWID,
    S_AXI_AWADDR,
    S_AXI_AWLEN,
    S_AXI_AWSIZE,
    S_AXI_AWBURST,
    S_AXI_AWLOCK,
    S_AXI_AWCACHE,
    S_AXI_AWPROT,
    S_AXI_AWQOS,
    S_AXI_AWUSER,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WLAST,
    S_AXI_WUSER,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BID,
    S_AXI_BRESP,
    S_AXI_BUSER,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARID,
    S_AXI_ARADDR,
    S_AXI_ARLEN,
    S_AXI_ARSIZE,
    S_AXI_ARBURST,
    S_AXI_ARLOCK,
    S_AXI_ARCACHE,
    S_AXI_ARPROT,
    S_AXI_ARQOS,
    S_AXI_ARUSER,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RID,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RLAST,
    S_AXI_RUSER,
    S_AXI_RVALID,
    S_AXI_RREADY,
    M_AXI_ACLK,
    M_AXI_AWID,
    M_AXI_AWADDR,
    M_AXI_AWLEN,
    M_AXI_AWSIZE,
    M_AXI_AWBURST,
    M_AXI_AWLOCK,
    M_AXI_AWCACHE,
    M_AXI_AWPROT,
    M_AXI_AWREGION,
    M_AXI_AWQOS,
    M_AXI_AWUSER,
    M_AXI_AWVALID,
    M_AXI_AWREADY,
    M_AXI_WID,
    M_AXI_WDATA,
    M_AXI_WSTRB,
    M_AXI_WLAST,
    M_AXI_WUSER,
    M_AXI_WVALID,
    M_AXI_WREADY,
    M_AXI_BID,
    M_AXI_BRESP,
    M_AXI_BUSER,
    M_AXI_BVALID,
    M_AXI_BREADY,
    M_AXI_ARID,
    M_AXI_ARADDR,
    M_AXI_ARLEN,
    M_AXI_ARSIZE,
    M_AXI_ARBURST,
    M_AXI_ARLOCK,
    M_AXI_ARCACHE,
    M_AXI_ARPROT,
    M_AXI_ARREGION,
    M_AXI_ARQOS,
    M_AXI_ARUSER,
    M_AXI_ARVALID,
    M_AXI_ARREADY,
    M_AXI_RID,
    M_AXI_RDATA,
    M_AXI_RRESP,
    M_AXI_RLAST,
    M_AXI_RUSER,
    M_AXI_RVALID,
    M_AXI_RREADY,
    S_AXI_CTRL_AWADDR,
    S_AXI_CTRL_AWVALID,
    S_AXI_CTRL_AWREADY,
    S_AXI_CTRL_WDATA,
    S_AXI_CTRL_WVALID,
    S_AXI_CTRL_WREADY,
    S_AXI_CTRL_BRESP,
    S_AXI_CTRL_BVALID,
    S_AXI_CTRL_BREADY,
    S_AXI_CTRL_ARADDR,
    S_AXI_CTRL_ARVALID,
    S_AXI_CTRL_ARREADY,
    S_AXI_CTRL_RDATA,
    S_AXI_CTRL_RRESP,
    S_AXI_CTRL_RVALID,
    S_AXI_CTRL_RREADY
  );
  input INTERCONNECT_ACLK;
  input INTERCONNECT_ARESETN;
  output [0:0] S_AXI_ARESET_OUT_N;
  output [5:0] M_AXI_ARESET_OUT_N;
  output IRQ;
  input [0:0] S_AXI_ACLK;
  input [0:0] S_AXI_AWID;
  input [31:0] S_AXI_AWADDR;
  input [7:0] S_AXI_AWLEN;
  input [2:0] S_AXI_AWSIZE;
  input [1:0] S_AXI_AWBURST;
  input [1:0] S_AXI_AWLOCK;
  input [3:0] S_AXI_AWCACHE;
  input [2:0] S_AXI_AWPROT;
  input [3:0] S_AXI_AWQOS;
  input [0:0] S_AXI_AWUSER;
  input [0:0] S_AXI_AWVALID;
  output [0:0] S_AXI_AWREADY;
  input [31:0] S_AXI_WDATA;
  input [3:0] S_AXI_WSTRB;
  input [0:0] S_AXI_WLAST;
  input [0:0] S_AXI_WUSER;
  input [0:0] S_AXI_WVALID;
  output [0:0] S_AXI_WREADY;
  output [0:0] S_AXI_BID;
  output [1:0] S_AXI_BRESP;
  output [0:0] S_AXI_BUSER;
  output [0:0] S_AXI_BVALID;
  input [0:0] S_AXI_BREADY;
  input [0:0] S_AXI_ARID;
  input [31:0] S_AXI_ARADDR;
  input [7:0] S_AXI_ARLEN;
  input [2:0] S_AXI_ARSIZE;
  input [1:0] S_AXI_ARBURST;
  input [1:0] S_AXI_ARLOCK;
  input [3:0] S_AXI_ARCACHE;
  input [2:0] S_AXI_ARPROT;
  input [3:0] S_AXI_ARQOS;
  input [0:0] S_AXI_ARUSER;
  input [0:0] S_AXI_ARVALID;
  output [0:0] S_AXI_ARREADY;
  output [0:0] S_AXI_RID;
  output [31:0] S_AXI_RDATA;
  output [1:0] S_AXI_RRESP;
  output [0:0] S_AXI_RLAST;
  output [0:0] S_AXI_RUSER;
  output [0:0] S_AXI_RVALID;
  input [0:0] S_AXI_RREADY;
  input [5:0] M_AXI_ACLK;
  output [5:0] M_AXI_AWID;
  output [191:0] M_AXI_AWADDR;
  output [47:0] M_AXI_AWLEN;
  output [17:0] M_AXI_AWSIZE;
  output [11:0] M_AXI_AWBURST;
  output [11:0] M_AXI_AWLOCK;
  output [23:0] M_AXI_AWCACHE;
  output [17:0] M_AXI_AWPROT;
  output [23:0] M_AXI_AWREGION;
  output [23:0] M_AXI_AWQOS;
  output [5:0] M_AXI_AWUSER;
  output [5:0] M_AXI_AWVALID;
  input [5:0] M_AXI_AWREADY;
  output [5:0] M_AXI_WID;
  output [191:0] M_AXI_WDATA;
  output [23:0] M_AXI_WSTRB;
  output [5:0] M_AXI_WLAST;
  output [5:0] M_AXI_WUSER;
  output [5:0] M_AXI_WVALID;
  input [5:0] M_AXI_WREADY;
  input [5:0] M_AXI_BID;
  input [11:0] M_AXI_BRESP;
  input [5:0] M_AXI_BUSER;
  input [5:0] M_AXI_BVALID;
  output [5:0] M_AXI_BREADY;
  output [5:0] M_AXI_ARID;
  output [191:0] M_AXI_ARADDR;
  output [47:0] M_AXI_ARLEN;
  output [17:0] M_AXI_ARSIZE;
  output [11:0] M_AXI_ARBURST;
  output [11:0] M_AXI_ARLOCK;
  output [23:0] M_AXI_ARCACHE;
  output [17:0] M_AXI_ARPROT;
  output [23:0] M_AXI_ARREGION;
  output [23:0] M_AXI_ARQOS;
  output [5:0] M_AXI_ARUSER;
  output [5:0] M_AXI_ARVALID;
  input [5:0] M_AXI_ARREADY;
  input [5:0] M_AXI_RID;
  input [191:0] M_AXI_RDATA;
  input [11:0] M_AXI_RRESP;
  input [5:0] M_AXI_RLAST;
  input [5:0] M_AXI_RUSER;
  input [5:0] M_AXI_RVALID;
  output [5:0] M_AXI_RREADY;
  input [31:0] S_AXI_CTRL_AWADDR;
  input S_AXI_CTRL_AWVALID;
  output S_AXI_CTRL_AWREADY;
  input [31:0] S_AXI_CTRL_WDATA;
  input S_AXI_CTRL_WVALID;
  output S_AXI_CTRL_WREADY;
  output [1:0] S_AXI_CTRL_BRESP;
  output S_AXI_CTRL_BVALID;
  input S_AXI_CTRL_BREADY;
  input [31:0] S_AXI_CTRL_ARADDR;
  input S_AXI_CTRL_ARVALID;
  output S_AXI_CTRL_ARREADY;
  output [31:0] S_AXI_CTRL_RDATA;
  output [1:0] S_AXI_CTRL_RRESP;
  output S_AXI_CTRL_RVALID;
  input S_AXI_CTRL_RREADY;
endmodule

module reset_0_wrapper
  (
    Slowest_sync_clk,
    Ext_Reset_In,
    Aux_Reset_In,
    MB_Debug_Sys_Rst,
    Core_Reset_Req_0,
    Chip_Reset_Req_0,
    System_Reset_Req_0,
    Core_Reset_Req_1,
    Chip_Reset_Req_1,
    System_Reset_Req_1,
    Dcm_locked,
    RstcPPCresetcore_0,
    RstcPPCresetchip_0,
    RstcPPCresetsys_0,
    RstcPPCresetcore_1,
    RstcPPCresetchip_1,
    RstcPPCresetsys_1,
    MB_Reset,
    Bus_Struct_Reset,
    Peripheral_Reset,
    Interconnect_aresetn,
    Peripheral_aresetn
  );
  input Slowest_sync_clk;
  input Ext_Reset_In;
  input Aux_Reset_In;
  input MB_Debug_Sys_Rst;
  input Core_Reset_Req_0;
  input Chip_Reset_Req_0;
  input System_Reset_Req_0;
  input Core_Reset_Req_1;
  input Chip_Reset_Req_1;
  input System_Reset_Req_1;
  input Dcm_locked;
  output RstcPPCresetcore_0;
  output RstcPPCresetchip_0;
  output RstcPPCresetsys_0;
  output RstcPPCresetcore_1;
  output RstcPPCresetchip_1;
  output RstcPPCresetsys_1;
  output MB_Reset;
  output [0:0] Bus_Struct_Reset;
  output [0:0] Peripheral_Reset;
  output [0:0] Interconnect_aresetn;
  output [0:0] Peripheral_aresetn;
endmodule

module clock_generator_0_wrapper
  (
    CLKIN,
    CLKOUT0,
    CLKOUT1,
    CLKOUT2,
    CLKOUT3,
    CLKOUT4,
    CLKOUT5,
    CLKOUT6,
    CLKOUT7,
    CLKOUT8,
    CLKOUT9,
    CLKOUT10,
    CLKOUT11,
    CLKOUT12,
    CLKOUT13,
    CLKOUT14,
    CLKOUT15,
    CLKFBIN,
    CLKFBOUT,
    PSCLK,
    PSEN,
    PSINCDEC,
    PSDONE,
    RST,
    LOCKED
  );
  input CLKIN;
  output CLKOUT0;
  output CLKOUT1;
  output CLKOUT2;
  output CLKOUT3;
  output CLKOUT4;
  output CLKOUT5;
  output CLKOUT6;
  output CLKOUT7;
  output CLKOUT8;
  output CLKOUT9;
  output CLKOUT10;
  output CLKOUT11;
  output CLKOUT12;
  output CLKOUT13;
  output CLKOUT14;
  output CLKOUT15;
  input CLKFBIN;
  output CLKFBOUT;
  input PSCLK;
  input PSEN;
  input PSINCDEC;
  output PSDONE;
  input RST;
  output LOCKED;
endmodule

module diff_input_buf_0_wrapper
  (
    SINGLE_ENDED_INPUT,
    DIFF_INPUT_P,
    DIFF_INPUT_N
  );
  output SINGLE_ENDED_INPUT;
  input DIFF_INPUT_P;
  input DIFF_INPUT_N;
endmodule

module diff_input_buf_1_wrapper
  (
    SINGLE_ENDED_INPUT,
    DIFF_INPUT_P,
    DIFF_INPUT_N
  );
  output SINGLE_ENDED_INPUT;
  input DIFF_INPUT_P;
  input DIFF_INPUT_N;
endmodule

module diff_input_buf_2_wrapper
  (
    SINGLE_ENDED_INPUT,
    DIFF_INPUT_P,
    DIFF_INPUT_N
  );
  output SINGLE_ENDED_INPUT;
  input DIFF_INPUT_P;
  input DIFF_INPUT_N;
endmodule

module diff_input_buf_3_wrapper
  (
    SINGLE_ENDED_INPUT,
    DIFF_INPUT_P,
    DIFF_INPUT_N
  );
  output SINGLE_ENDED_INPUT;
  input DIFF_INPUT_P;
  input DIFF_INPUT_N;
endmodule

module dma_0_wrapper
  (
    reset_n,
    pcie_clk_p,
    pcie_clk_n,
    pci_exp_0_txp,
    pci_exp_0_txn,
    pci_exp_0_rxp,
    pci_exp_0_rxn,
    pci_exp_1_txp,
    pci_exp_1_txn,
    pci_exp_1_rxp,
    pci_exp_1_rxn,
    pci_exp_2_txp,
    pci_exp_2_txn,
    pci_exp_2_rxp,
    pci_exp_2_rxn,
    pci_exp_3_txp,
    pci_exp_3_txn,
    pci_exp_3_rxp,
    pci_exp_3_rxn,
    pci_exp_4_txp,
    pci_exp_4_txn,
    pci_exp_4_rxp,
    pci_exp_4_rxn,
    pci_exp_5_txp,
    pci_exp_5_txn,
    pci_exp_5_rxp,
    pci_exp_5_rxn,
    pci_exp_6_txp,
    pci_exp_6_txn,
    pci_exp_6_rxp,
    pci_exp_6_rxn,
    pci_exp_7_txp,
    pci_exp_7_txn,
    pci_exp_7_rxp,
    pci_exp_7_rxn,
    M_AXI_LITE_ACLK,
    M_AXI_LITE_ARESETN,
    M_AXI_LITE_AWADDR,
    M_AXI_LITE_AWVALID,
    M_AXI_LITE_AWREADY,
    M_AXI_LITE_WDATA,
    M_AXI_LITE_WSTRB,
    M_AXI_LITE_WVALID,
    M_AXI_LITE_WREADY,
    M_AXI_LITE_BRESP,
    M_AXI_LITE_BVALID,
    M_AXI_LITE_BREADY,
    M_AXI_LITE_ARADDR,
    M_AXI_LITE_ARVALID,
    M_AXI_LITE_ARREADY,
    M_AXI_LITE_RDATA,
    M_AXI_LITE_RRESP,
    M_AXI_LITE_RVALID,
    M_AXI_LITE_RREADY,
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
    S_AXI_RREADY,
    M_AXIS_ACLK,
    M_AXIS_TDATA,
    M_AXIS_TSTRB,
    M_AXIS_TUSER,
    M_AXIS_TVALID,
    M_AXIS_TREADY,
    M_AXIS_TLAST,
    S_AXIS_ACLK,
    S_AXIS_TDATA,
    S_AXIS_TSTRB,
    S_AXIS_TUSER,
    S_AXIS_TVALID,
    S_AXIS_TREADY,
    S_AXIS_TLAST
  );
  input reset_n;
  input pcie_clk_p;
  input pcie_clk_n;
  output pci_exp_0_txp;
  output pci_exp_0_txn;
  input pci_exp_0_rxp;
  input pci_exp_0_rxn;
  output pci_exp_1_txp;
  output pci_exp_1_txn;
  input pci_exp_1_rxp;
  input pci_exp_1_rxn;
  output pci_exp_2_txp;
  output pci_exp_2_txn;
  input pci_exp_2_rxp;
  input pci_exp_2_rxn;
  output pci_exp_3_txp;
  output pci_exp_3_txn;
  input pci_exp_3_rxp;
  input pci_exp_3_rxn;
  output pci_exp_4_txp;
  output pci_exp_4_txn;
  input pci_exp_4_rxp;
  input pci_exp_4_rxn;
  output pci_exp_5_txp;
  output pci_exp_5_txn;
  input pci_exp_5_rxp;
  input pci_exp_5_rxn;
  output pci_exp_6_txp;
  output pci_exp_6_txn;
  input pci_exp_6_rxp;
  input pci_exp_6_rxn;
  output pci_exp_7_txp;
  output pci_exp_7_txn;
  input pci_exp_7_rxp;
  input pci_exp_7_rxn;
  input M_AXI_LITE_ACLK;
  input M_AXI_LITE_ARESETN;
  output [31:0] M_AXI_LITE_AWADDR;
  output M_AXI_LITE_AWVALID;
  input M_AXI_LITE_AWREADY;
  output [31:0] M_AXI_LITE_WDATA;
  output [3:0] M_AXI_LITE_WSTRB;
  output M_AXI_LITE_WVALID;
  input M_AXI_LITE_WREADY;
  input [1:0] M_AXI_LITE_BRESP;
  input M_AXI_LITE_BVALID;
  output M_AXI_LITE_BREADY;
  output [31:0] M_AXI_LITE_ARADDR;
  output M_AXI_LITE_ARVALID;
  input M_AXI_LITE_ARREADY;
  input [31:0] M_AXI_LITE_RDATA;
  input [1:0] M_AXI_LITE_RRESP;
  input M_AXI_LITE_RVALID;
  output M_AXI_LITE_RREADY;
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
  input M_AXIS_ACLK;
  output [255:0] M_AXIS_TDATA;
  output [31:0] M_AXIS_TSTRB;
  output [127:0] M_AXIS_TUSER;
  output M_AXIS_TVALID;
  input M_AXIS_TREADY;
  output M_AXIS_TLAST;
  input S_AXIS_ACLK;
  input [255:0] S_AXIS_TDATA;
  input [31:0] S_AXIS_TSTRB;
  input [127:0] S_AXIS_TUSER;
  input S_AXIS_TVALID;
  output S_AXIS_TREADY;
  input S_AXIS_TLAST;
endmodule

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
endmodule

module dma_benchmark_0_wrapper
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
endmodule

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
endmodule

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
endmodule

module hravframework_1_wrapper
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
endmodule

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
endmodule

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
endmodule

