// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Thu Mar 30 14:41:35 2017
//
// Verilog Description of module spi_slave
//

module spi_slave (RESET_in, CLK_in, SPI_CLK, SPI_SS, SPI_MOSI, SPI_MISO, 
            SPI_DONE, DataToTx, DataToTxLoad, DataRxd);   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(7[8:17])
    input RESET_in;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(9[5:13])
    input CLK_in;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(10[5:11])
    input SPI_CLK;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(11[5:12])
    input SPI_SS;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(12[5:11])
    input SPI_MOSI;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(13[5:13])
    output SPI_MISO;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(14[5:13])
    output SPI_DONE;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(15[5:13])
    input [7:0]DataToTx;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(16[5:13])
    input DataToTxLoad;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(17[5:17])
    output [7:0]DataRxd;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(18[5:12])
    
    wire CLK_in_c /* synthesis is_clock=1, SET_AS_NETWORK=CLK_in_c */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(10[5:11])
    
    wire VCC_net, GND_net, RESET_in_c, SPI_CLK_c, SPI_SS_c, SPI_MOSI_c, 
        SPI_MISO_c, SPI_DONE_c, DataToTx_c_7, DataToTx_c_6, DataToTx_c_5, 
        DataToTx_c_4, DataToTx_c_3, DataToTx_c_2, DataToTx_c_1, DataToTx_c_0, 
        DataToTxLoad_c, DataRxd_c_7, DataRxd_c_6, DataRxd_c_5, DataRxd_c_4, 
        DataRxd_c_3, DataRxd_c_2, DataRxd_c_1, DataRxd_c_0, SCLK_latched, 
        SCLK_old, SS_latched, SS_old, MOSI_latched;
    wire [7:0]TxData;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(27[12:18])
    wire [2:0]index;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(28[12:17])
    
    wire n285, n286, n288, n290, n292, n279, n280, n238, n284, 
        CLK_in_c_enable_9, SPI_DONE_N_55, n278, n281, n251, n291, 
        n282, CLK_in_c_enable_10, n289, n287, n249, n179, n182, 
        n297, n277, n384;
    
    VLO i283 (.Z(GND_net));
    LUT4 i173_3_lut (.A(n279), .B(TxData[2]), .C(n182), .Z(n280)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam i173_3_lut.init = 16'hacac;
    FD1S3AX TxData_i0 (.D(n284), .CK(CLK_in_c), .Q(TxData[0]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam TxData_i0.GSR = "ENABLED";
    LUT4 i234_4_lut (.A(TxData[0]), .B(n182), .C(DataToTx_c_0), .D(DataToTxLoad_c), 
         .Z(n284)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A ((C (D))+!B)) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam i234_4_lut.init = 16'hf3bb;
    LUT4 i2_3_lut (.A(index[1]), .B(index[2]), .C(index[0]), .Z(SPI_DONE_N_55)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i137_2_lut_3_lut_4_lut_4_lut (.A(index[1]), .B(index[0]), .C(CLK_in_c_enable_10), 
         .D(index[2]), .Z(n238)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B (C)+!B !(C (D))))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(74[25:30])
    defparam i137_2_lut_3_lut_4_lut_4_lut.init = 16'h3c2c;
    LUT4 i174_3_lut (.A(TxData[5]), .B(DataToTx_c_5), .C(DataToTxLoad_c), 
         .Z(n281)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam i174_3_lut.init = 16'hcaca;
    OB SPI_DONE_pad (.I(SPI_DONE_c), .O(SPI_DONE));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(15[5:13])
    LUT4 i171_3_lut (.A(n277), .B(TxData[5]), .C(n182), .Z(n278)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam i171_3_lut.init = 16'hacac;
    LUT4 i190_1_lut (.A(RESET_in_c), .Z(n297)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(9[5:13])
    defparam i190_1_lut.init = 16'h5555;
    OB DataRxd_pad_4 (.I(DataRxd_c_4), .O(DataRxd[4]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(18[5:12])
    FD1S3AX SCLK_old_44 (.D(SCLK_latched), .CK(CLK_in_c), .Q(SCLK_old));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam SCLK_old_44.GSR = "ENABLED";
    FD1S3AX SCLK_latched_45 (.D(SPI_CLK_c), .CK(CLK_in_c), .Q(SCLK_latched));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam SCLK_latched_45.GSR = "ENABLED";
    FD1S3AX SS_old_46 (.D(SS_latched), .CK(CLK_in_c), .Q(SS_old));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam SS_old_46.GSR = "ENABLED";
    FD1S3AX SS_latched_47 (.D(SPI_SS_c), .CK(CLK_in_c), .Q(SS_latched));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam SS_latched_47.GSR = "ENABLED";
    LUT4 i2_3_lut_adj_1 (.A(SCLK_latched), .B(SCLK_old), .C(SS_latched), 
         .Z(CLK_in_c_enable_10)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(68[7] 82[14])
    defparam i2_3_lut_adj_1.init = 16'h0202;
    FD1S3AX MOSI_latched_49 (.D(SPI_MOSI_c), .CK(CLK_in_c), .Q(MOSI_latched));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam MOSI_latched_49.GSR = "ENABLED";
    FD1S3JX index_i0_i0 (.D(n238), .CK(CLK_in_c), .PD(n179), .Q(index[0]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam index_i0_i0.GSR = "ENABLED";
    LUT4 i170_3_lut (.A(TxData[6]), .B(DataToTx_c_6), .C(DataToTxLoad_c), 
         .Z(n277)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam i170_3_lut.init = 16'hcaca;
    OB DataRxd_pad_5 (.I(DataRxd_c_5), .O(DataRxd[5]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(18[5:12])
    LUT4 i185_3_lut (.A(n291), .B(TxData[6]), .C(n182), .Z(n292)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam i185_3_lut.init = 16'hacac;
    OB DataRxd_pad_6 (.I(DataRxd_c_6), .O(DataRxd[6]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(18[5:12])
    LUT4 i87_4_lut (.A(SS_old), .B(n384), .C(CLK_in_c_enable_10), .D(SS_latched), 
         .Z(n179)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C)))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(69[10] 81[17])
    defparam i87_4_lut.init = 16'h303a;
    LUT4 i184_3_lut (.A(SPI_MISO_c), .B(DataToTx_c_7), .C(DataToTxLoad_c), 
         .Z(n291)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam i184_3_lut.init = 16'hcaca;
    OB SPI_MISO_pad (.I(SPI_MISO_c), .O(SPI_MISO));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(14[5:13])
    OB DataRxd_pad_7 (.I(DataRxd_c_7), .O(DataRxd[7]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(18[5:12])
    FD1P3AX RxdData_i0_i2 (.D(DataRxd_c_0), .SP(CLK_in_c_enable_10), .CK(CLK_in_c), 
            .Q(DataRxd_c_1));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam RxdData_i0_i2.GSR = "ENABLED";
    LUT4 i181_3_lut (.A(n287), .B(TxData[0]), .C(n182), .Z(n288)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam i181_3_lut.init = 16'hacac;
    OB DataRxd_pad_3 (.I(DataRxd_c_3), .O(DataRxd[3]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(18[5:12])
    OB DataRxd_pad_2 (.I(DataRxd_c_2), .O(DataRxd[2]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(18[5:12])
    OB DataRxd_pad_1 (.I(DataRxd_c_1), .O(DataRxd[1]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(18[5:12])
    OB DataRxd_pad_0 (.I(DataRxd_c_0), .O(DataRxd[0]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(18[5:12])
    IB RESET_in_pad (.I(RESET_in), .O(RESET_in_c));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(9[5:13])
    IB CLK_in_pad (.I(CLK_in), .O(CLK_in_c));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(10[5:11])
    IB SPI_CLK_pad (.I(SPI_CLK), .O(SPI_CLK_c));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(11[5:12])
    IB SPI_SS_pad (.I(SPI_SS), .O(SPI_SS_c));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(12[5:11])
    IB SPI_MOSI_pad (.I(SPI_MOSI), .O(SPI_MOSI_c));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(13[5:13])
    IB DataToTx_pad_7 (.I(DataToTx[7]), .O(DataToTx_c_7));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(16[5:13])
    IB DataToTx_pad_6 (.I(DataToTx[6]), .O(DataToTx_c_6));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(16[5:13])
    IB DataToTx_pad_5 (.I(DataToTx[5]), .O(DataToTx_c_5));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(16[5:13])
    IB DataToTx_pad_4 (.I(DataToTx[4]), .O(DataToTx_c_4));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(16[5:13])
    IB DataToTx_pad_3 (.I(DataToTx[3]), .O(DataToTx_c_3));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(16[5:13])
    IB DataToTx_pad_2 (.I(DataToTx[2]), .O(DataToTx_c_2));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(16[5:13])
    IB DataToTx_pad_1 (.I(DataToTx[1]), .O(DataToTx_c_1));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(16[5:13])
    IB DataToTx_pad_0 (.I(DataToTx[0]), .O(DataToTx_c_0));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(16[5:13])
    IB DataToTxLoad_pad (.I(DataToTxLoad), .O(DataToTxLoad_c));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(17[5:17])
    LUT4 i1_2_lut_3_lut (.A(index[1]), .B(index[0]), .C(index[2]), .Z(n249)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(74[25:30])
    defparam i1_2_lut_3_lut.init = 16'he1e1;
    LUT4 i71_2_lut_rep_1_3_lut_4_lut (.A(index[1]), .B(index[0]), .C(CLK_in_c_enable_10), 
         .D(index[2]), .Z(CLK_in_c_enable_9)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(74[25:30])
    defparam i71_2_lut_rep_1_3_lut_4_lut.init = 16'hf0e0;
    FD1P3AX RxdData_i0_i3 (.D(DataRxd_c_1), .SP(CLK_in_c_enable_10), .CK(CLK_in_c), 
            .Q(DataRxd_c_2));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam RxdData_i0_i3.GSR = "ENABLED";
    FD1P3AX RxdData_i0_i4 (.D(DataRxd_c_2), .SP(CLK_in_c_enable_10), .CK(CLK_in_c), 
            .Q(DataRxd_c_3));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam RxdData_i0_i4.GSR = "ENABLED";
    FD1P3AX RxdData_i0_i5 (.D(DataRxd_c_3), .SP(CLK_in_c_enable_10), .CK(CLK_in_c), 
            .Q(DataRxd_c_4));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam RxdData_i0_i5.GSR = "ENABLED";
    FD1P3AX RxdData_i0_i6 (.D(DataRxd_c_4), .SP(CLK_in_c_enable_10), .CK(CLK_in_c), 
            .Q(DataRxd_c_5));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam RxdData_i0_i6.GSR = "ENABLED";
    FD1P3AX RxdData_i0_i7 (.D(DataRxd_c_5), .SP(CLK_in_c_enable_10), .CK(CLK_in_c), 
            .Q(DataRxd_c_6));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam RxdData_i0_i7.GSR = "ENABLED";
    FD1P3AX RxdData_i0_i8 (.D(DataRxd_c_6), .SP(CLK_in_c_enable_10), .CK(CLK_in_c), 
            .Q(DataRxd_c_7));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam RxdData_i0_i8.GSR = "ENABLED";
    FD1S3AX TxData_i1 (.D(n288), .CK(CLK_in_c), .Q(TxData[1]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam TxData_i1.GSR = "ENABLED";
    LUT4 i180_3_lut (.A(TxData[1]), .B(DataToTx_c_1), .C(DataToTxLoad_c), 
         .Z(n287)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam i180_3_lut.init = 16'hcaca;
    FD1S3AX TxData_i2 (.D(n286), .CK(CLK_in_c), .Q(TxData[2]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam TxData_i2.GSR = "ENABLED";
    FD1S3AX TxData_i3 (.D(n280), .CK(CLK_in_c), .Q(TxData[3]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam TxData_i3.GSR = "ENABLED";
    FD1S3AX TxData_i4 (.D(n290), .CK(CLK_in_c), .Q(TxData[4]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam TxData_i4.GSR = "ENABLED";
    FD1S3AX TxData_i5 (.D(n282), .CK(CLK_in_c), .Q(TxData[5]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam TxData_i5.GSR = "ENABLED";
    FD1S3AX TxData_i6 (.D(n278), .CK(CLK_in_c), .Q(TxData[6]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam TxData_i6.GSR = "ENABLED";
    FD1S3AX TxData_i7 (.D(n292), .CK(CLK_in_c), .Q(SPI_MISO_c));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam TxData_i7.GSR = "ENABLED";
    FD1P3JX index_i0_i1 (.D(n251), .SP(CLK_in_c_enable_9), .PD(n179), 
            .CK(CLK_in_c), .Q(index[1]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam index_i0_i1.GSR = "ENABLED";
    LUT4 i280_3_lut (.A(SS_latched), .B(SCLK_latched), .C(SCLK_old), .Z(n182)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(76[16:53])
    defparam i280_3_lut.init = 16'hefef;
    LUT4 i1_2_lut (.A(index[1]), .B(index[0]), .Z(n251)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut.init = 16'h9999;
    LUT4 i179_3_lut (.A(n285), .B(TxData[1]), .C(n182), .Z(n286)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam i179_3_lut.init = 16'hacac;
    FD1S3IX SPI_DONE_48 (.D(SPI_DONE_N_55), .CK(CLK_in_c), .CD(n182), 
            .Q(SPI_DONE_c));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam SPI_DONE_48.GSR = "ENABLED";
    FD1P3JX index_i0_i2 (.D(n249), .SP(CLK_in_c_enable_9), .PD(n179), 
            .CK(CLK_in_c), .Q(index[2]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam index_i0_i2.GSR = "ENABLED";
    FD1P3AX RxdData_i0_i1 (.D(MOSI_latched), .SP(CLK_in_c_enable_10), .CK(CLK_in_c), 
            .Q(DataRxd_c_0));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam RxdData_i0_i1.GSR = "ENABLED";
    LUT4 i2_2_lut_rep_2_3_lut (.A(index[1]), .B(index[0]), .C(index[2]), 
         .Z(n384)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(74[25:30])
    defparam i2_2_lut_rep_2_3_lut.init = 16'hfefe;
    LUT4 i172_3_lut (.A(TxData[3]), .B(DataToTx_c_3), .C(DataToTxLoad_c), 
         .Z(n279)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam i172_3_lut.init = 16'hcaca;
    LUT4 i183_3_lut (.A(n289), .B(TxData[3]), .C(n182), .Z(n290)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam i183_3_lut.init = 16'hacac;
    LUT4 i182_3_lut (.A(TxData[4]), .B(DataToTx_c_4), .C(DataToTxLoad_c), 
         .Z(n289)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam i182_3_lut.init = 16'hcaca;
    GSR GSR_INST (.GSR(n297));
    LUT4 i178_3_lut (.A(TxData[2]), .B(DataToTx_c_2), .C(DataToTxLoad_c), 
         .Z(n285)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam i178_3_lut.init = 16'hcaca;
    VHI i284 (.Z(VCC_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i175_3_lut (.A(n281), .B(TxData[4]), .C(n182), .Z(n282)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi_slave.vhd(40[5] 83[13])
    defparam i175_3_lut.init = 16'hacac;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

