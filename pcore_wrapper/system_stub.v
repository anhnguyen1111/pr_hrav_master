//-----------------------------------------------------------------------------
// system_stub.v
//-----------------------------------------------------------------------------

module system_stub
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

  (* BOX_TYPE = "user_black_box" *)
  system
    system_i (
      .RESET ( RESET ),
      .CLK ( CLK ),
      .refclk_A_p ( refclk_A_p ),
      .refclk_A_n ( refclk_A_n ),
      .refclk_B_p ( refclk_B_p ),
      .refclk_B_n ( refclk_B_n ),
      .refclk_C_p ( refclk_C_p ),
      .refclk_C_n ( refclk_C_n ),
      .refclk_D_p ( refclk_D_p ),
      .refclk_D_n ( refclk_D_n ),
      .pcie_clk_p ( pcie_clk_p ),
      .pcie_top_0_pci_exp_0_txp_pin ( pcie_top_0_pci_exp_0_txp_pin ),
      .pcie_clk_n ( pcie_clk_n ),
      .pcie_top_0_pci_exp_0_rxp_pin ( pcie_top_0_pci_exp_0_rxp_pin ),
      .pcie_top_0_pci_exp_0_rxn_pin ( pcie_top_0_pci_exp_0_rxn_pin ),
      .pcie_top_0_pci_exp_1_txp_pin ( pcie_top_0_pci_exp_1_txp_pin ),
      .pcie_top_0_pci_exp_1_txn_pin ( pcie_top_0_pci_exp_1_txn_pin ),
      .pcie_top_0_pci_exp_1_rxp_pin ( pcie_top_0_pci_exp_1_rxp_pin ),
      .pcie_top_0_pci_exp_1_rxn_pin ( pcie_top_0_pci_exp_1_rxn_pin ),
      .pcie_top_0_pci_exp_4_txp_pin ( pcie_top_0_pci_exp_4_txp_pin ),
      .pcie_top_0_pci_exp_2_txp_pin ( pcie_top_0_pci_exp_2_txp_pin ),
      .pcie_top_0_pci_exp_2_txn_pin ( pcie_top_0_pci_exp_2_txn_pin ),
      .pcie_top_0_pci_exp_2_rxp_pin ( pcie_top_0_pci_exp_2_rxp_pin ),
      .pcie_top_0_pci_exp_2_rxn_pin ( pcie_top_0_pci_exp_2_rxn_pin ),
      .pcie_top_0_pci_exp_3_txp_pin ( pcie_top_0_pci_exp_3_txp_pin ),
      .pcie_top_0_pci_exp_3_txn_pin ( pcie_top_0_pci_exp_3_txn_pin ),
      .pcie_top_0_pci_exp_3_rxp_pin ( pcie_top_0_pci_exp_3_rxp_pin ),
      .pcie_top_0_pci_exp_3_rxn_pin ( pcie_top_0_pci_exp_3_rxn_pin ),
      .pcie_top_0_pci_exp_4_txn_pin ( pcie_top_0_pci_exp_4_txn_pin ),
      .pcie_top_0_pci_exp_4_rxp_pin ( pcie_top_0_pci_exp_4_rxp_pin ),
      .pcie_top_0_pci_exp_4_rxn_pin ( pcie_top_0_pci_exp_4_rxn_pin ),
      .pcie_top_0_pci_exp_5_txp_pin ( pcie_top_0_pci_exp_5_txp_pin ),
      .pcie_top_0_pci_exp_5_txn_pin ( pcie_top_0_pci_exp_5_txn_pin ),
      .pcie_top_0_pci_exp_5_rxp_pin ( pcie_top_0_pci_exp_5_rxp_pin ),
      .pcie_top_0_pci_exp_5_rxn_pin ( pcie_top_0_pci_exp_5_rxn_pin ),
      .pcie_top_0_pci_exp_6_txp_pin ( pcie_top_0_pci_exp_6_txp_pin ),
      .pcie_top_0_pci_exp_6_txn_pin ( pcie_top_0_pci_exp_6_txn_pin ),
      .pcie_top_0_pci_exp_6_rxp_pin ( pcie_top_0_pci_exp_6_rxp_pin ),
      .pcie_top_0_pci_exp_6_rxn_pin ( pcie_top_0_pci_exp_6_rxn_pin ),
      .pcie_top_0_pci_exp_7_txn_pin ( pcie_top_0_pci_exp_7_txn_pin ),
      .pcie_top_0_pci_exp_7_txp_pin ( pcie_top_0_pci_exp_7_txp_pin ),
      .pcie_top_0_pci_exp_7_rxn_pin ( pcie_top_0_pci_exp_7_rxn_pin ),
      .pcie_top_0_pci_exp_7_rxp_pin ( pcie_top_0_pci_exp_7_rxp_pin ),
      .pcie_top_0_pci_exp_0_txn_pin ( pcie_top_0_pci_exp_0_txn_pin ),
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
      .masterbank_sel_pin ( masterbank_sel_pin ),
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
      .qdr_k_2 ( qdr_k_2 )
    );

endmodule

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
endmodule

