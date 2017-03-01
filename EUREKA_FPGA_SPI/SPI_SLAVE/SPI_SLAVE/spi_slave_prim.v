// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Tue Feb 28 19:42:28 2017
//
// Verilog Description of module spi_slave
//

module spi_slave (sclk, reset_n, ss_n, mosi, rx_req, st_load_en, 
            st_load_trdy, st_load_rrdy, st_load_roe, tx_load_en, tx_load_data, 
            trdy, rrdy, roe, rx_data, busy, miso);   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(29[8:17])
    input sclk;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(35[5:9])
    input reset_n;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(36[5:12])
    input ss_n;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(37[5:9])
    input mosi;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(38[5:9])
    input rx_req;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(39[5:11])
    input st_load_en;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(40[5:15])
    input st_load_trdy;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(41[5:17])
    input st_load_rrdy;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(42[5:17])
    input st_load_roe;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(43[5:16])
    input tx_load_en;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(44[5:15])
    input [7:0]tx_load_data;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(45[5:17])
    output trdy;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(46[5:9])
    output rrdy;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(47[5:9])
    output roe;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(48[5:8])
    output [7:0]rx_data;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(49[5:12])
    output busy;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(50[5:9])
    output miso;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(51[5:9])
    
    wire sclk_c /* synthesis is_clock=1, SET_AS_NETWORK=sclk_c */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(35[5:9])
    wire sclk_N_33 /* synthesis is_inv_clock=1 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(56[10:13])
    wire rx_data_7__N_31 /* synthesis is_clock=1, SET_AS_NETWORK=rx_data_7__N_31 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(49[5:12])
    
    wire GND_net, reset_n_c, ss_n_c, mosi_c, rx_req_c, rx_data_c_7, 
        rx_data_c_6, rx_data_c_5, rx_data_c_4, rx_data_c_3, rx_data_c_2, 
        rx_data_c_1, rx_data_c_0, busy_c;
    wire [16:0]bit_cnt;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(57[10:17])
    
    wire wr_add;
    wire [7:0]rx_buf;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(60[10:16])
    
    wire bit_cnt_16__N_11, rx_buf_7__N_13, rx_buf_6__N_18, rx_buf_5__N_20, 
        rx_buf_4__N_22, rx_buf_3__N_24, rx_buf_2__N_26, rx_buf_1__N_28, 
        rx_buf_0__N_30, n260, VCC_net;
    
    VHI i209 (.Z(VCC_net));
    OB rx_data_pad_2 (.I(rx_data_c_2), .O(rx_data[2]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(49[5:12])
    FD1P3AX rx_buf_2__122 (.D(mosi_c), .SP(rx_buf_2__N_26), .CK(sclk_c), 
            .Q(rx_buf[2]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(103[9] 105[16])
    defparam rx_buf_2__122.GSR = "ENABLED";
    OB rx_data_pad_3 (.I(rx_data_c_3), .O(rx_data[3]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(49[5:12])
    LUT4 wr_add_N_15_I_0_152_2_lut (.A(wr_add), .B(bit_cnt[10]), .Z(rx_buf_6__N_18)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(103[12:69])
    defparam wr_add_N_15_I_0_152_2_lut.init = 16'h4444;
    FD1P3AX rx_buf_3__121 (.D(mosi_c), .SP(rx_buf_3__N_24), .CK(sclk_c), 
            .Q(rx_buf[3]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(103[9] 105[16])
    defparam rx_buf_3__121.GSR = "ENABLED";
    OB rx_data_pad_4 (.I(rx_data_c_4), .O(rx_data[4]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(49[5:12])
    FD1P3AX rx_buf_4__120 (.D(mosi_c), .SP(rx_buf_4__N_22), .CK(sclk_c), 
            .Q(rx_buf[4]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(103[9] 105[16])
    defparam rx_buf_4__120.GSR = "ENABLED";
    OB rx_data_pad_5 (.I(rx_data_c_5), .O(rx_data[5]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(49[5:12])
    FD1P3AX rx_buf_5__119 (.D(mosi_c), .SP(rx_buf_5__N_20), .CK(sclk_c), 
            .Q(rx_buf[5]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(103[9] 105[16])
    defparam rx_buf_5__119.GSR = "ENABLED";
    OB rx_data_pad_6 (.I(rx_data_c_6), .O(rx_data[6]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(49[5:12])
    LUT4 wr_add_N_15_I_0_157_2_lut (.A(wr_add), .B(bit_cnt[15]), .Z(rx_buf_1__N_28)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(103[12:69])
    defparam wr_add_N_15_I_0_157_2_lut.init = 16'h4444;
    FD1P3AX rx_buf_6__118 (.D(mosi_c), .SP(rx_buf_6__N_18), .CK(sclk_c), 
            .Q(rx_buf[6]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(103[9] 105[16])
    defparam rx_buf_6__118.GSR = "ENABLED";
    OB rx_data_pad_7 (.I(rx_data_c_7), .O(rx_data[7]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(49[5:12])
    LUT4 ss_n_I_0_1_lut (.A(ss_n_c), .Z(busy_c)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(63[11:19])
    defparam ss_n_I_0_1_lut.init = 16'h5555;
    FD1P3AX rx_buf_7__117 (.D(mosi_c), .SP(rx_buf_7__N_13), .CK(sclk_c), 
            .Q(rx_buf[7]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(103[9] 105[16])
    defparam rx_buf_7__117.GSR = "ENABLED";
    OB roe_pad (.I(GND_net), .O(roe));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(48[5:8])
    LUT4 ss_n_I_0_159_2_lut (.A(ss_n_c), .B(reset_n_c), .Z(bit_cnt_16__N_11)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(74[8:35])
    defparam ss_n_I_0_159_2_lut.init = 16'hbbbb;
    FD1P3AX wr_add_115 (.D(mosi_c), .SP(bit_cnt[1]), .CK(sclk_c), .Q(wr_add));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(87[5] 89[12])
    defparam wr_add_115.GSR = "DISABLED";
    OB rrdy_pad (.I(GND_net), .O(rrdy));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(47[5:9])
    LUT4 ss_n_I_0_160_2_lut (.A(ss_n_c), .B(rx_req_c), .Z(rx_data_7__N_31)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(111[11:38])
    defparam ss_n_I_0_160_2_lut.init = 16'h8888;
    FD1P3AX rx_buf_0__124 (.D(mosi_c), .SP(rx_buf_0__N_30), .CK(sclk_c), 
            .Q(rx_buf[0]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(103[9] 105[16])
    defparam rx_buf_0__124.GSR = "ENABLED";
    FD1S1A dlatchrs_161_i2 (.D(rx_buf[1]), .CK(rx_data_7__N_31), .Q(rx_data_c_1)) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(109[5] 113[12])
    defparam dlatchrs_161_i2.GSR = "ENABLED";
    LUT4 wr_add_N_15_I_0_2_lut (.A(wr_add), .B(bit_cnt[16]), .Z(rx_buf_0__N_30)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(103[12:69])
    defparam wr_add_N_15_I_0_2_lut.init = 16'h4444;
    LUT4 wr_add_N_15_I_0_156_2_lut (.A(wr_add), .B(bit_cnt[14]), .Z(rx_buf_2__N_26)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(103[12:69])
    defparam wr_add_N_15_I_0_156_2_lut.init = 16'h4444;
    LUT4 wr_add_N_15_I_0_155_2_lut (.A(wr_add), .B(bit_cnt[13]), .Z(rx_buf_3__N_24)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(103[12:69])
    defparam wr_add_N_15_I_0_155_2_lut.init = 16'h4444;
    LUT4 rx_buf_7__I_1_2_lut (.A(wr_add), .B(bit_cnt[9]), .Z(rx_buf_7__N_13)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(103[12:69])
    defparam rx_buf_7__I_1_2_lut.init = 16'h4444;
    FD1S1A dlatchrs_161_i1 (.D(rx_buf[0]), .CK(rx_data_7__N_31), .Q(rx_data_c_0)) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(109[5] 113[12])
    defparam dlatchrs_161_i1.GSR = "ENABLED";
    INV i211 (.A(sclk_c), .Z(sclk_N_33));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(35[5:9])
    GSR GSR_INST (.GSR(reset_n_c));
    FD1S1A dlatchrs_161_i3 (.D(rx_buf[2]), .CK(rx_data_7__N_31), .Q(rx_data_c_2)) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(109[5] 113[12])
    defparam dlatchrs_161_i3.GSR = "ENABLED";
    FD1S1A dlatchrs_161_i4 (.D(rx_buf[3]), .CK(rx_data_7__N_31), .Q(rx_data_c_3)) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(109[5] 113[12])
    defparam dlatchrs_161_i4.GSR = "ENABLED";
    FD1S1A dlatchrs_161_i5 (.D(rx_buf[4]), .CK(rx_data_7__N_31), .Q(rx_data_c_4)) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(109[5] 113[12])
    defparam dlatchrs_161_i5.GSR = "ENABLED";
    FD1S1A dlatchrs_161_i6 (.D(rx_buf[5]), .CK(rx_data_7__N_31), .Q(rx_data_c_5)) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(109[5] 113[12])
    defparam dlatchrs_161_i6.GSR = "ENABLED";
    FD1S1A dlatchrs_161_i7 (.D(rx_buf[6]), .CK(rx_data_7__N_31), .Q(rx_data_c_6)) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(109[5] 113[12])
    defparam dlatchrs_161_i7.GSR = "ENABLED";
    FD1S1A dlatchrs_161_i8 (.D(rx_buf[7]), .CK(rx_data_7__N_31), .Q(rx_data_c_7)) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(109[5] 113[12])
    defparam dlatchrs_161_i8.GSR = "ENABLED";
    FD1S3BX bit_cnt_i1 (.D(n260), .CK(sclk_N_33), .PD(bit_cnt_16__N_11), 
            .Q(bit_cnt[1]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(77[7] 79[14])
    defparam bit_cnt_i1.GSR = "DISABLED";
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 wr_add_N_15_I_0_154_2_lut (.A(wr_add), .B(bit_cnt[12]), .Z(rx_buf_4__N_22)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(103[12:69])
    defparam wr_add_N_15_I_0_154_2_lut.init = 16'h4444;
    OB trdy_pad (.I(GND_net), .O(trdy));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(46[5:9])
    OB rx_data_pad_1 (.I(rx_data_c_1), .O(rx_data[1]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(49[5:12])
    OB rx_data_pad_0 (.I(rx_data_c_0), .O(rx_data[0]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(49[5:12])
    OB busy_pad (.I(busy_c), .O(busy));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(50[5:9])
    OB miso_pad (.I(GND_net), .O(miso));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(51[5:9])
    IB sclk_pad (.I(sclk), .O(sclk_c));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(35[5:9])
    IB reset_n_pad (.I(reset_n), .O(reset_n_c));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(36[5:12])
    IB ss_n_pad (.I(ss_n), .O(ss_n_c));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(37[5:9])
    IB mosi_pad (.I(mosi), .O(mosi_c));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(38[5:9])
    IB rx_req_pad (.I(rx_req), .O(rx_req_c));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(39[5:11])
    FD1S3DX bit_cnt_i2 (.D(bit_cnt[1]), .CK(sclk_N_33), .CD(bit_cnt_16__N_11), 
            .Q(bit_cnt[2]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(77[7] 79[14])
    defparam bit_cnt_i2.GSR = "DISABLED";
    FD1S3DX bit_cnt_i3 (.D(bit_cnt[2]), .CK(sclk_N_33), .CD(bit_cnt_16__N_11), 
            .Q(bit_cnt[3]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(77[7] 79[14])
    defparam bit_cnt_i3.GSR = "DISABLED";
    FD1S3DX bit_cnt_i4 (.D(bit_cnt[3]), .CK(sclk_N_33), .CD(bit_cnt_16__N_11), 
            .Q(bit_cnt[4]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(77[7] 79[14])
    defparam bit_cnt_i4.GSR = "DISABLED";
    FD1S3DX bit_cnt_i5 (.D(bit_cnt[4]), .CK(sclk_N_33), .CD(bit_cnt_16__N_11), 
            .Q(bit_cnt[5]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(77[7] 79[14])
    defparam bit_cnt_i5.GSR = "DISABLED";
    FD1S3DX bit_cnt_i6 (.D(bit_cnt[5]), .CK(sclk_N_33), .CD(bit_cnt_16__N_11), 
            .Q(bit_cnt[6]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(77[7] 79[14])
    defparam bit_cnt_i6.GSR = "DISABLED";
    FD1S3DX bit_cnt_i7 (.D(bit_cnt[6]), .CK(sclk_N_33), .CD(bit_cnt_16__N_11), 
            .Q(bit_cnt[7]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(77[7] 79[14])
    defparam bit_cnt_i7.GSR = "DISABLED";
    FD1S3DX bit_cnt_i8 (.D(bit_cnt[7]), .CK(sclk_N_33), .CD(bit_cnt_16__N_11), 
            .Q(bit_cnt[8]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(77[7] 79[14])
    defparam bit_cnt_i8.GSR = "DISABLED";
    FD1S3DX bit_cnt_i9 (.D(bit_cnt[8]), .CK(sclk_N_33), .CD(bit_cnt_16__N_11), 
            .Q(bit_cnt[9]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(77[7] 79[14])
    defparam bit_cnt_i9.GSR = "DISABLED";
    FD1S3DX bit_cnt_i10 (.D(bit_cnt[9]), .CK(sclk_N_33), .CD(bit_cnt_16__N_11), 
            .Q(bit_cnt[10]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(77[7] 79[14])
    defparam bit_cnt_i10.GSR = "DISABLED";
    FD1S3DX bit_cnt_i11 (.D(bit_cnt[10]), .CK(sclk_N_33), .CD(bit_cnt_16__N_11), 
            .Q(bit_cnt[11]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(77[7] 79[14])
    defparam bit_cnt_i11.GSR = "DISABLED";
    FD1S3DX bit_cnt_i12 (.D(bit_cnt[11]), .CK(sclk_N_33), .CD(bit_cnt_16__N_11), 
            .Q(bit_cnt[12]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(77[7] 79[14])
    defparam bit_cnt_i12.GSR = "DISABLED";
    FD1S3DX bit_cnt_i13 (.D(bit_cnt[12]), .CK(sclk_N_33), .CD(bit_cnt_16__N_11), 
            .Q(bit_cnt[13]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(77[7] 79[14])
    defparam bit_cnt_i13.GSR = "DISABLED";
    FD1S3DX bit_cnt_i14 (.D(bit_cnt[13]), .CK(sclk_N_33), .CD(bit_cnt_16__N_11), 
            .Q(bit_cnt[14]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(77[7] 79[14])
    defparam bit_cnt_i14.GSR = "DISABLED";
    FD1S3DX bit_cnt_i15 (.D(bit_cnt[14]), .CK(sclk_N_33), .CD(bit_cnt_16__N_11), 
            .Q(bit_cnt[15]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(77[7] 79[14])
    defparam bit_cnt_i15.GSR = "DISABLED";
    FD1S3DX bit_cnt_i16 (.D(bit_cnt[15]), .CK(sclk_N_33), .CD(bit_cnt_16__N_11), 
            .Q(bit_cnt[16]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(77[7] 79[14])
    defparam bit_cnt_i16.GSR = "DISABLED";
    FD1P3AX rx_buf_1__123 (.D(mosi_c), .SP(rx_buf_1__N_28), .CK(sclk_c), 
            .Q(rx_buf[1]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(103[9] 105[16])
    defparam rx_buf_1__123.GSR = "ENABLED";
    LUT4 wr_add_N_15_I_0_153_2_lut (.A(wr_add), .B(bit_cnt[11]), .Z(rx_buf_5__N_20)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/spi_slave/spi_slave.vhd(103[12:69])
    defparam wr_add_N_15_I_0_153_2_lut.init = 16'h4444;
    LUT4 m0_lut (.Z(n260)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

