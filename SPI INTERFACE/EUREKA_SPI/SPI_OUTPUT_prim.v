// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Mon Feb 27 23:07:23 2017
//
// Verilog Description of module SPI_OUTPUT
//

module SPI_OUTPUT (ARRAY_FINAL, SEND_DATA_BITS);   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(7[8:18])
    output [7:0]ARRAY_FINAL;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(9[3:14])
    output SEND_DATA_BITS;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(10[3:17])
    
    wire SPI_CLK /* synthesis SET_AS_NETWORK=SPI_CLK, is_clock=1 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(18[9:16])
    wire spi_clk_i /* synthesis is_clock=1 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_slave.vhd(43[12:21])
    
    wire GND_net, VCC_net, ARRAY_FINAL_c_7, ARRAY_FINAL_c_6, ARRAY_FINAL_c_5, 
        ARRAY_FINAL_c_4, ARRAY_FINAL_c_3, ARRAY_FINAL_c_2, ARRAY_FINAL_c_1, 
        ARRAY_FINAL_c_0, SEND_DATA_BITS_c;
    wire [7:0]ARRAY_INPUT;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(14[9:20])
    
    wire RECEIVE_DATA_BITS, SPI_MOSI, temp_holder;
    wire [2:0]Fill_Array;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(72[12:22])
    
    wire n18, SPI_CLK_enable_6, SPI_CLK_enable_2, n292, n19, n1, 
        spi_mosi_oe, spi_mosi_o, SPI_CLK_enable_1, spi_clk_oe, spi_clk_o, 
        spi_mosi_i, SPI_CLK_enable_5, SPI_CLK_enable_3, SPI_CLK_enable_7, 
        SPI_CLK_enable_8, SPI_CLK_enable_4;
    
    VHI i2 (.Z(VCC_net));
    SPI_SLAVE I1 (.GND_net(GND_net), .spi_mosi_oe(spi_mosi_oe), .spi_mosi_o(spi_mosi_o), 
            .spi_clk_oe(spi_clk_oe), .spi_clk_o(spi_clk_o), .spi_mosi_i(spi_mosi_i), 
            .spi_clk_i(spi_clk_i), .VCC_net(VCC_net)) /* synthesis NGD_DRC_MASK=1 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(46[6:15])
    OB SEND_DATA_BITS_pad (.I(SEND_DATA_BITS_c), .O(SEND_DATA_BITS));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(10[3:17])
    OB ARRAY_FINAL_pad_0 (.I(ARRAY_FINAL_c_0), .O(ARRAY_FINAL[0]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(9[3:14])
    FD1P3AX ARRAY_INPUT_i6 (.D(temp_holder), .SP(SPI_CLK_enable_1), .CK(SPI_CLK), 
            .Q(ARRAY_INPUT[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(75[3] 94[10])
    defparam ARRAY_INPUT_i6.GSR = "ENABLED";
    OB ARRAY_FINAL_pad_7 (.I(ARRAY_FINAL_c_7), .O(ARRAY_FINAL[7]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(9[3:14])
    FD1S3IX RECEIVE_DATA_BITS_32 (.D(n292), .CK(SPI_CLK), .CD(RECEIVE_DATA_BITS), 
            .Q(RECEIVE_DATA_BITS));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(75[3] 94[10])
    defparam RECEIVE_DATA_BITS_32.GSR = "ENABLED";
    FD1S3AX temp_holder_29 (.D(SPI_MOSI), .CK(SPI_CLK), .Q(temp_holder));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(75[3] 94[10])
    defparam temp_holder_29.GSR = "ENABLED";
    FD1S3IX Fill_Array_52__i0 (.D(n1), .CK(SPI_CLK), .CD(RECEIVE_DATA_BITS), 
            .Q(Fill_Array[0]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(78[19:29])
    defparam Fill_Array_52__i0.GSR = "ENABLED";
    FD1S3AX SEND_DATA_BITS_31 (.D(RECEIVE_DATA_BITS), .CK(SPI_CLK), .Q(SEND_DATA_BITS_c));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(75[3] 94[10])
    defparam SEND_DATA_BITS_31.GSR = "ENABLED";
    OB ARRAY_FINAL_pad_1 (.I(ARRAY_FINAL_c_1), .O(ARRAY_FINAL[1]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(9[3:14])
    BB BBspi_mosi (.I(spi_mosi_o), .T(spi_mosi_oe), .B(SPI_MOSI), .O(spi_mosi_i)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=15, LSE_LLINE=46, LSE_RLINE=46 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_slave.vhd(151[17:19])
    BB BBspi_clk (.I(spi_clk_o), .T(spi_clk_oe), .B(SPI_CLK), .O(spi_clk_i)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=15, LSE_LLINE=46, LSE_RLINE=46 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_slave.vhd(159[16:18])
    OB ARRAY_FINAL_pad_2 (.I(ARRAY_FINAL_c_2), .O(ARRAY_FINAL[2]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(9[3:14])
    OB ARRAY_FINAL_pad_3 (.I(ARRAY_FINAL_c_3), .O(ARRAY_FINAL[3]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(9[3:14])
    OB ARRAY_FINAL_pad_4 (.I(ARRAY_FINAL_c_4), .O(ARRAY_FINAL[4]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(9[3:14])
    OB ARRAY_FINAL_pad_5 (.I(ARRAY_FINAL_c_5), .O(ARRAY_FINAL[5]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(9[3:14])
    FD1S3IX Fill_Array_52__i2 (.D(n18), .CK(SPI_CLK), .CD(RECEIVE_DATA_BITS), 
            .Q(Fill_Array[2]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(78[19:29])
    defparam Fill_Array_52__i2.GSR = "ENABLED";
    FD1P3AX ARRAY_INPUT_i1 (.D(temp_holder), .SP(SPI_CLK_enable_2), .CK(SPI_CLK), 
            .Q(ARRAY_INPUT[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(75[3] 94[10])
    defparam ARRAY_INPUT_i1.GSR = "ENABLED";
    LUT4 i196_2_lut_3_lut_4_lut (.A(RECEIVE_DATA_BITS), .B(Fill_Array[0]), 
         .C(Fill_Array[2]), .D(Fill_Array[1]), .Z(SPI_CLK_enable_1)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(80[17:27])
    defparam i196_2_lut_3_lut_4_lut.init = 16'h0040;
    FD1S3IX Fill_Array_52__i1 (.D(n19), .CK(SPI_CLK), .CD(RECEIVE_DATA_BITS), 
            .Q(Fill_Array[1]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(78[19:29])
    defparam Fill_Array_52__i1.GSR = "ENABLED";
    FD1P3AX ARRAY_INPUT_i7 (.D(temp_holder), .SP(SPI_CLK_enable_3), .CK(SPI_CLK), 
            .Q(ARRAY_INPUT[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(75[3] 94[10])
    defparam ARRAY_INPUT_i7.GSR = "ENABLED";
    LUT4 i68_1_lut (.A(Fill_Array[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(80[17:27])
    defparam i68_1_lut.init = 16'h5555;
    LUT4 i164_3_lut (.A(Fill_Array[2]), .B(Fill_Array[1]), .C(Fill_Array[0]), 
         .Z(n18)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(78[19:29])
    defparam i164_3_lut.init = 16'h6a6a;
    LUT4 i201_3_lut_4_lut (.A(RECEIVE_DATA_BITS), .B(Fill_Array[0]), .C(Fill_Array[1]), 
         .D(Fill_Array[2]), .Z(SPI_CLK_enable_8)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(80[17:27])
    defparam i201_3_lut_4_lut.init = 16'h0100;
    FD1P3AX ARRAY_FINAL_i0_i1 (.D(ARRAY_INPUT[0]), .SP(RECEIVE_DATA_BITS), 
            .CK(SPI_CLK), .Q(ARRAY_FINAL_c_0)) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(75[3] 94[10])
    defparam ARRAY_FINAL_i0_i1.GSR = "ENABLED";
    LUT4 i191_2_lut_3_lut_4_lut (.A(RECEIVE_DATA_BITS), .B(Fill_Array[0]), 
         .C(Fill_Array[1]), .D(Fill_Array[2]), .Z(SPI_CLK_enable_2)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(80[17:27])
    defparam i191_2_lut_3_lut_4_lut.init = 16'h0001;
    OB ARRAY_FINAL_pad_6 (.I(ARRAY_FINAL_c_6), .O(ARRAY_FINAL[6]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(9[3:14])
    FD1P3AX ARRAY_INPUT_i2 (.D(temp_holder), .SP(SPI_CLK_enable_4), .CK(SPI_CLK), 
            .Q(ARRAY_INPUT[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(75[3] 94[10])
    defparam ARRAY_INPUT_i2.GSR = "ENABLED";
    FD1P3AX ARRAY_INPUT_i0 (.D(temp_holder), .SP(SPI_CLK_enable_5), .CK(SPI_CLK), 
            .Q(ARRAY_INPUT[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(75[3] 94[10])
    defparam ARRAY_INPUT_i0.GSR = "ENABLED";
    FD1P3AX ARRAY_FINAL_i0_i2 (.D(ARRAY_INPUT[1]), .SP(RECEIVE_DATA_BITS), 
            .CK(SPI_CLK), .Q(ARRAY_FINAL_c_1)) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(75[3] 94[10])
    defparam ARRAY_FINAL_i0_i2.GSR = "ENABLED";
    FD1P3AX ARRAY_INPUT_i3 (.D(temp_holder), .SP(SPI_CLK_enable_6), .CK(SPI_CLK), 
            .Q(ARRAY_INPUT[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(75[3] 94[10])
    defparam ARRAY_INPUT_i3.GSR = "ENABLED";
    FD1P3AX ARRAY_INPUT_i4 (.D(temp_holder), .SP(SPI_CLK_enable_7), .CK(SPI_CLK), 
            .Q(ARRAY_INPUT[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(75[3] 94[10])
    defparam ARRAY_INPUT_i4.GSR = "ENABLED";
    LUT4 i185_2_lut_3_lut_4_lut (.A(RECEIVE_DATA_BITS), .B(Fill_Array[0]), 
         .C(Fill_Array[1]), .D(Fill_Array[2]), .Z(SPI_CLK_enable_6)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(80[17:27])
    defparam i185_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i194_2_lut_rep_2_3_lut (.A(Fill_Array[2]), .B(Fill_Array[1]), .C(Fill_Array[0]), 
         .Z(n292)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i194_2_lut_rep_2_3_lut.init = 16'h0808;
    FD1P3AX ARRAY_FINAL_i0_i3 (.D(ARRAY_INPUT[2]), .SP(RECEIVE_DATA_BITS), 
            .CK(SPI_CLK), .Q(ARRAY_FINAL_c_2)) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(75[3] 94[10])
    defparam ARRAY_FINAL_i0_i3.GSR = "ENABLED";
    FD1P3AX ARRAY_FINAL_i0_i4 (.D(ARRAY_INPUT[3]), .SP(RECEIVE_DATA_BITS), 
            .CK(SPI_CLK), .Q(ARRAY_FINAL_c_3)) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(75[3] 94[10])
    defparam ARRAY_FINAL_i0_i4.GSR = "ENABLED";
    FD1P3AX ARRAY_FINAL_i0_i5 (.D(ARRAY_INPUT[4]), .SP(RECEIVE_DATA_BITS), 
            .CK(SPI_CLK), .Q(ARRAY_FINAL_c_4)) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(75[3] 94[10])
    defparam ARRAY_FINAL_i0_i5.GSR = "ENABLED";
    FD1P3AX ARRAY_FINAL_i0_i6 (.D(ARRAY_INPUT[5]), .SP(RECEIVE_DATA_BITS), 
            .CK(SPI_CLK), .Q(ARRAY_FINAL_c_5)) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(75[3] 94[10])
    defparam ARRAY_FINAL_i0_i6.GSR = "ENABLED";
    FD1P3AX ARRAY_FINAL_i0_i7 (.D(ARRAY_INPUT[6]), .SP(RECEIVE_DATA_BITS), 
            .CK(SPI_CLK), .Q(ARRAY_FINAL_c_6)) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(75[3] 94[10])
    defparam ARRAY_FINAL_i0_i7.GSR = "ENABLED";
    FD1P3AX ARRAY_FINAL_i0_i8 (.D(ARRAY_INPUT[7]), .SP(RECEIVE_DATA_BITS), 
            .CK(SPI_CLK), .Q(ARRAY_FINAL_c_7)) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(75[3] 94[10])
    defparam ARRAY_FINAL_i0_i8.GSR = "ENABLED";
    LUT4 i157_2_lut (.A(Fill_Array[1]), .B(Fill_Array[0]), .Z(n19)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(78[19:29])
    defparam i157_2_lut.init = 16'h6666;
    LUT4 i198_2_lut_3_lut_4_lut (.A(Fill_Array[2]), .B(Fill_Array[1]), .C(RECEIVE_DATA_BITS), 
         .D(Fill_Array[0]), .Z(SPI_CLK_enable_3)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i198_2_lut_3_lut_4_lut.init = 16'h0008;
    LUT4 i145_3_lut_4_lut (.A(Fill_Array[2]), .B(Fill_Array[1]), .C(RECEIVE_DATA_BITS), 
         .D(Fill_Array[0]), .Z(SPI_CLK_enable_5)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam i145_3_lut_4_lut.init = 16'hf8f0;
    FD1P3AX ARRAY_INPUT_i5 (.D(temp_holder), .SP(SPI_CLK_enable_8), .CK(SPI_CLK), 
            .Q(ARRAY_INPUT[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(75[3] 94[10])
    defparam ARRAY_INPUT_i5.GSR = "ENABLED";
    LUT4 i183_3_lut_4_lut (.A(RECEIVE_DATA_BITS), .B(Fill_Array[0]), .C(Fill_Array[2]), 
         .D(Fill_Array[1]), .Z(SPI_CLK_enable_7)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(80[17:27])
    defparam i183_3_lut_4_lut.init = 16'h0400;
    LUT4 i188_2_lut_3_lut_4_lut (.A(RECEIVE_DATA_BITS), .B(Fill_Array[0]), 
         .C(Fill_Array[2]), .D(Fill_Array[1]), .Z(SPI_CLK_enable_4)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(80[17:27])
    defparam i188_2_lut_3_lut_4_lut.init = 16'h0004;
    GSR GSR_INST (.GSR(VCC_net));
    VLO i1 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    TSALL TSALL_INST (.TSALL(GND_net));
    
endmodule
//
// Verilog Description of module SPI_SLAVE
//

module SPI_SLAVE (GND_net, spi_mosi_oe, spi_mosi_o, spi_clk_oe, spi_clk_o, 
            spi_mosi_i, spi_clk_i, VCC_net) /* synthesis NGD_DRC_MASK=1 */ ;
    input GND_net;
    output spi_mosi_oe;
    output spi_mosi_o;
    output spi_clk_oe;
    output spi_clk_o;
    input spi_mosi_i;
    input spi_clk_i;
    input VCC_net;
    
    wire spi_clk_i /* synthesis is_clock=1 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_slave.vhd(43[12:21])
    
    EFB EFBInst_0 (.WBCLKI(GND_net), .WBRSTI(GND_net), .WBCYCI(GND_net), 
        .WBSTBI(GND_net), .WBWEI(GND_net), .WBADRI0(GND_net), .WBADRI1(GND_net), 
        .WBADRI2(GND_net), .WBADRI3(GND_net), .WBADRI4(GND_net), .WBADRI5(GND_net), 
        .WBADRI6(GND_net), .WBADRI7(GND_net), .WBDATI0(GND_net), .WBDATI1(GND_net), 
        .WBDATI2(GND_net), .WBDATI3(GND_net), .WBDATI4(GND_net), .WBDATI5(GND_net), 
        .WBDATI6(GND_net), .WBDATI7(GND_net), .I2C1SCLI(GND_net), .I2C1SDAI(GND_net), 
        .I2C2SCLI(GND_net), .I2C2SDAI(GND_net), .SPISCKI(spi_clk_i), .SPIMISOI(GND_net), 
        .SPIMOSII(spi_mosi_i), .SPISCSN(GND_net), .TCCLKI(GND_net), .TCRSTN(GND_net), 
        .TCIC(GND_net), .UFMSN(VCC_net), .PLL0DATI0(GND_net), .PLL0DATI1(GND_net), 
        .PLL0DATI2(GND_net), .PLL0DATI3(GND_net), .PLL0DATI4(GND_net), 
        .PLL0DATI5(GND_net), .PLL0DATI6(GND_net), .PLL0DATI7(GND_net), 
        .PLL0ACKI(GND_net), .PLL1DATI0(GND_net), .PLL1DATI1(GND_net), 
        .PLL1DATI2(GND_net), .PLL1DATI3(GND_net), .PLL1DATI4(GND_net), 
        .PLL1DATI5(GND_net), .PLL1DATI6(GND_net), .PLL1DATI7(GND_net), 
        .PLL1ACKI(GND_net), .SPISCKO(spi_clk_o), .SPISCKEN(spi_clk_oe), 
        .SPIMOSIO(spi_mosi_o), .SPIMOSIEN(spi_mosi_oe)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=15, LSE_LLINE=46, LSE_RLINE=46 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/beagle_to_outputs.vhd(46[6:15])
    defparam EFBInst_0.EFB_I2C1 = "DISABLED";
    defparam EFBInst_0.EFB_I2C2 = "DISABLED";
    defparam EFBInst_0.EFB_SPI = "ENABLED";
    defparam EFBInst_0.EFB_TC = "DISABLED";
    defparam EFBInst_0.EFB_TC_PORTMODE = "WB";
    defparam EFBInst_0.EFB_UFM = "DISABLED";
    defparam EFBInst_0.EFB_WB_CLK_FREQ = "50.0";
    defparam EFBInst_0.DEV_DENSITY = "7000L";
    defparam EFBInst_0.UFM_INIT_PAGES = 0;
    defparam EFBInst_0.UFM_INIT_START_PAGE = 0;
    defparam EFBInst_0.UFM_INIT_ALL_ZEROS = "ENABLED";
    defparam EFBInst_0.UFM_INIT_FILE_NAME = "NONE";
    defparam EFBInst_0.UFM_INIT_FILE_FORMAT = "HEX";
    defparam EFBInst_0.I2C1_ADDRESSING = "7BIT";
    defparam EFBInst_0.I2C2_ADDRESSING = "7BIT";
    defparam EFBInst_0.I2C1_SLAVE_ADDR = "0b1000001";
    defparam EFBInst_0.I2C2_SLAVE_ADDR = "0b1000010";
    defparam EFBInst_0.I2C1_BUS_PERF = "100kHz";
    defparam EFBInst_0.I2C2_BUS_PERF = "100kHz";
    defparam EFBInst_0.I2C1_CLK_DIVIDER = 1;
    defparam EFBInst_0.I2C2_CLK_DIVIDER = 1;
    defparam EFBInst_0.I2C1_GEN_CALL = "DISABLED";
    defparam EFBInst_0.I2C2_GEN_CALL = "DISABLED";
    defparam EFBInst_0.I2C1_WAKEUP = "DISABLED";
    defparam EFBInst_0.I2C2_WAKEUP = "DISABLED";
    defparam EFBInst_0.SPI_MODE = "SLAVE";
    defparam EFBInst_0.SPI_CLK_DIVIDER = 1;
    defparam EFBInst_0.SPI_LSB_FIRST = "DISABLED";
    defparam EFBInst_0.SPI_CLK_INV = "DISABLED";
    defparam EFBInst_0.SPI_PHASE_ADJ = "DISABLED";
    defparam EFBInst_0.SPI_SLAVE_HANDSHAKE = "DISABLED";
    defparam EFBInst_0.SPI_INTR_TXRDY = "ENABLED";
    defparam EFBInst_0.SPI_INTR_RXRDY = "ENABLED";
    defparam EFBInst_0.SPI_INTR_TXOVR = "DISABLED";
    defparam EFBInst_0.SPI_INTR_RXOVR = "DISABLED";
    defparam EFBInst_0.SPI_WAKEUP = "DISABLED";
    defparam EFBInst_0.TC_MODE = "CTCM";
    defparam EFBInst_0.TC_SCLK_SEL = "PCLOCK";
    defparam EFBInst_0.TC_CCLK_SEL = 1;
    defparam EFBInst_0.GSR = "ENABLED";
    defparam EFBInst_0.TC_TOP_SET = 65535;
    defparam EFBInst_0.TC_OCR_SET = 32767;
    defparam EFBInst_0.TC_OC_MODE = "TOGGLE";
    defparam EFBInst_0.TC_RESETN = "ENABLED";
    defparam EFBInst_0.TC_TOP_SEL = "OFF";
    defparam EFBInst_0.TC_OV_INT = "OFF";
    defparam EFBInst_0.TC_OCR_INT = "OFF";
    defparam EFBInst_0.TC_ICR_INT = "OFF";
    defparam EFBInst_0.TC_OVERFLOW = "DISABLED";
    defparam EFBInst_0.TC_ICAPTURE = "DISABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

