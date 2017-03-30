// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Thu Mar 30 15:24:37 2017
//
// Verilog Description of module SPI_OUTPUT
//

module SPI_OUTPUT (SPI_CLK_b, SPI_MISO_b, SPI_MOSI_b, SPI_SCSN_b, ARRAY_FINAL, 
            LEDS);   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(7[8:18])
    input SPI_CLK_b;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(9[3:12])
    output SPI_MISO_b;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(10[3:13])
    input SPI_MOSI_b;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(11[3:13])
    input SPI_SCSN_b;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(12[3:13])
    output [7:0]ARRAY_FINAL;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(14[3:14])
    output [7:0]LEDS;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(15[3:7])
    
    wire SPI_CLK_b_c /* synthesis SET_AS_NETWORK=SPI_CLK_b_c, is_clock=1 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(9[3:12])
    wire SPI_SCSN_b_c /* synthesis is_clock=1 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(12[3:13])
    wire SPI_SCSN_b_N_45 /* synthesis is_inv_clock=1 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(26[9:16])
    
    wire GND_net, VCC_net, SPI_MOSI_b_c, LEDS_c, n187, n188, n189, 
        n190, n191, n192, n193, SPI_CLK_b_c_enable_9, mosi_latch;
    wire [7:0]RX_Data;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(26[9:16])
    wire [2:0]Read_in;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(31[11:18])
    
    wire SPI_CLK_b_c_enable_1, n18, n19, SPI_CLK_b_c_enable_10, SPI_CLK_b_c_enable_7, 
        SPI_CLK_b_c_enable_3, n1, SPI_CLK_b_c_enable_16, SPI_CLK_b_c_enable_6, 
        SPI_CLK_b_c_enable_4;
    
    VHI i2 (.Z(VCC_net));
    INV i286 (.A(SPI_SCSN_b_c), .Z(SPI_SCSN_b_N_45));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(12[3:13])
    FD1P3AX RX_Data_i0_i2 (.D(mosi_latch), .SP(SPI_CLK_b_c_enable_1), .CK(SPI_CLK_b_c), 
            .Q(RX_Data[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(35[3] 43[10])
    defparam RX_Data_i0_i2.GSR = "ENABLED";
    FD1S1A i37 (.D(SPI_MOSI_b_c), .CK(SPI_SCSN_b_N_45), .Q(mosi_latch)) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(33[2] 44[10])
    defparam i37.GSR = "ENABLED";
    OB SPI_MISO_b_pad (.I(GND_net), .O(SPI_MISO_b));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(10[3:13])
    OB ARRAY_FINAL_pad_4 (.I(n189), .O(ARRAY_FINAL[4]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(14[3:14])
    OB ARRAY_FINAL_pad_0 (.I(n193), .O(ARRAY_FINAL[0]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(14[3:14])
    FD1P3AX RX_Data_i0_i6 (.D(mosi_latch), .SP(SPI_CLK_b_c_enable_16), .CK(SPI_CLK_b_c), 
            .Q(RX_Data[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(35[3] 43[10])
    defparam RX_Data_i0_i6.GSR = "ENABLED";
    OB ARRAY_FINAL_pad_1 (.I(n192), .O(ARRAY_FINAL[1]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(14[3:14])
    OB ARRAY_FINAL_pad_2 (.I(n191), .O(ARRAY_FINAL[2]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(14[3:14])
    OB ARRAY_FINAL_pad_3 (.I(n190), .O(ARRAY_FINAL[3]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(14[3:14])
    OB LEDS_pad_0 (.I(n193), .O(LEDS[0]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(15[3:7])
    OB ARRAY_FINAL_pad_7 (.I(LEDS_c), .O(ARRAY_FINAL[7]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(14[3:14])
    OB ARRAY_FINAL_pad_5 (.I(n188), .O(ARRAY_FINAL[5]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(14[3:14])
    FD1P3AX RX_Data_i0_i3 (.D(mosi_latch), .SP(SPI_CLK_b_c_enable_3), .CK(SPI_CLK_b_c), 
            .Q(RX_Data[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(35[3] 43[10])
    defparam RX_Data_i0_i3.GSR = "ENABLED";
    OB ARRAY_FINAL_pad_6 (.I(n187), .O(ARRAY_FINAL[6]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(14[3:14])
    OB LEDS_pad_1 (.I(n192), .O(LEDS[1]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(15[3:7])
    FD1P3AX RX_Data_i0_i4 (.D(mosi_latch), .SP(SPI_CLK_b_c_enable_4), .CK(SPI_CLK_b_c), 
            .Q(RX_Data[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(35[3] 43[10])
    defparam RX_Data_i0_i4.GSR = "ENABLED";
    FD1P3AX ARRAY_FINAL_i0_i1 (.D(RX_Data[0]), .SP(SPI_CLK_b_c_enable_16), 
            .CK(SPI_CLK_b_c), .Q(n193)) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(35[3] 43[10])
    defparam ARRAY_FINAL_i0_i1.GSR = "ENABLED";
    OB LEDS_pad_2 (.I(n191), .O(LEDS[2]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(15[3:7])
    OB LEDS_pad_3 (.I(n190), .O(LEDS[3]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(15[3:7])
    FD1P3AX RX_Data_i0_i5 (.D(mosi_latch), .SP(SPI_CLK_b_c_enable_6), .CK(SPI_CLK_b_c), 
            .Q(RX_Data[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(35[3] 43[10])
    defparam RX_Data_i0_i5.GSR = "ENABLED";
    OB LEDS_pad_4 (.I(n189), .O(LEDS[4]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(15[3:7])
    OB LEDS_pad_5 (.I(n188), .O(LEDS[5]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(15[3:7])
    FD1P3AX RX_Data_i0_i7 (.D(mosi_latch), .SP(SPI_CLK_b_c_enable_7), .CK(SPI_CLK_b_c), 
            .Q(RX_Data[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(35[3] 43[10])
    defparam RX_Data_i0_i7.GSR = "ENABLED";
    OB LEDS_pad_6 (.I(n187), .O(LEDS[6]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(15[3:7])
    OB LEDS_pad_7 (.I(LEDS_c), .O(LEDS[7]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(15[3:7])
    FD1P3IX Read_in_62__i1 (.D(n19), .SP(SPI_SCSN_b_N_45), .CD(SPI_CLK_b_c_enable_16), 
            .CK(SPI_CLK_b_c), .Q(Read_in[1]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(37[15:22])
    defparam Read_in_62__i1.GSR = "ENABLED";
    FD1P3AX ARRAY_FINAL_i0_i2 (.D(RX_Data[1]), .SP(SPI_CLK_b_c_enable_16), 
            .CK(SPI_CLK_b_c), .Q(n192)) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(35[3] 43[10])
    defparam ARRAY_FINAL_i0_i2.GSR = "ENABLED";
    IB SPI_CLK_b_pad (.I(SPI_CLK_b), .O(SPI_CLK_b_c));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(9[3:12])
    IB SPI_MOSI_b_pad (.I(SPI_MOSI_b), .O(SPI_MOSI_b_c));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(11[3:13])
    IB SPI_SCSN_b_pad (.I(SPI_SCSN_b), .O(SPI_SCSN_b_c));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(12[3:13])
    FD1P3AX RX_Data_i0_i0 (.D(mosi_latch), .SP(SPI_CLK_b_c_enable_9), .CK(SPI_CLK_b_c), 
            .Q(RX_Data[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(35[3] 43[10])
    defparam RX_Data_i0_i0.GSR = "ENABLED";
    FD1P3AX RX_Data_i0_i1 (.D(mosi_latch), .SP(SPI_CLK_b_c_enable_10), .CK(SPI_CLK_b_c), 
            .Q(RX_Data[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(35[3] 43[10])
    defparam RX_Data_i0_i1.GSR = "ENABLED";
    FD1P3AX ARRAY_FINAL_i0_i3 (.D(RX_Data[2]), .SP(SPI_CLK_b_c_enable_16), 
            .CK(SPI_CLK_b_c), .Q(n191)) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(35[3] 43[10])
    defparam ARRAY_FINAL_i0_i3.GSR = "ENABLED";
    FD1P3AX ARRAY_FINAL_i0_i4 (.D(RX_Data[3]), .SP(SPI_CLK_b_c_enable_16), 
            .CK(SPI_CLK_b_c), .Q(n190)) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(35[3] 43[10])
    defparam ARRAY_FINAL_i0_i4.GSR = "ENABLED";
    FD1P3AX ARRAY_FINAL_i0_i5 (.D(RX_Data[4]), .SP(SPI_CLK_b_c_enable_16), 
            .CK(SPI_CLK_b_c), .Q(n189)) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(35[3] 43[10])
    defparam ARRAY_FINAL_i0_i5.GSR = "ENABLED";
    FD1P3AX ARRAY_FINAL_i0_i6 (.D(RX_Data[5]), .SP(SPI_CLK_b_c_enable_16), 
            .CK(SPI_CLK_b_c), .Q(n188)) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(35[3] 43[10])
    defparam ARRAY_FINAL_i0_i6.GSR = "ENABLED";
    FD1P3AX ARRAY_FINAL_i0_i7 (.D(RX_Data[6]), .SP(SPI_CLK_b_c_enable_16), 
            .CK(SPI_CLK_b_c), .Q(n187)) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(35[3] 43[10])
    defparam ARRAY_FINAL_i0_i7.GSR = "ENABLED";
    FD1P3AX ARRAY_FINAL_i0_i8 (.D(RX_Data[7]), .SP(SPI_CLK_b_c_enable_16), 
            .CK(SPI_CLK_b_c), .Q(LEDS_c)) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(35[3] 43[10])
    defparam ARRAY_FINAL_i0_i8.GSR = "ENABLED";
    FD1P3IX Read_in_62__i2 (.D(n18), .SP(SPI_SCSN_b_N_45), .CD(SPI_CLK_b_c_enable_16), 
            .CK(SPI_CLK_b_c), .Q(Read_in[2]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(37[15:22])
    defparam Read_in_62__i2.GSR = "ENABLED";
    LUT4 i267_2_lut_2_lut_3_lut_4_lut (.A(Read_in[2]), .B(Read_in[1]), .C(Read_in[0]), 
         .D(SPI_SCSN_b_c), .Z(SPI_CLK_b_c_enable_7)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i267_2_lut_2_lut_3_lut_4_lut.init = 16'h0080;
    FD1P3IX Read_in_62__i0 (.D(n1), .SP(SPI_SCSN_b_N_45), .CD(SPI_CLK_b_c_enable_16), 
            .CK(SPI_CLK_b_c), .Q(Read_in[0]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(37[15:22])
    defparam Read_in_62__i0.GSR = "ENABLED";
    LUT4 i285_2_lut_2_lut_3_lut_4_lut (.A(Read_in[0]), .B(SPI_SCSN_b_c), 
         .C(Read_in[2]), .D(Read_in[1]), .Z(SPI_CLK_b_c_enable_9)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(36[12:19])
    defparam i285_2_lut_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i273_2_lut_2_lut_3_lut_4_lut (.A(Read_in[0]), .B(SPI_SCSN_b_c), 
         .C(Read_in[2]), .D(Read_in[1]), .Z(SPI_CLK_b_c_enable_4)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(36[12:19])
    defparam i273_2_lut_2_lut_3_lut_4_lut.init = 16'h0010;
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 i229_3_lut (.A(Read_in[2]), .B(Read_in[1]), .C(Read_in[0]), .Z(n18)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(37[15:22])
    defparam i229_3_lut.init = 16'h6a6a;
    LUT4 i75_1_lut (.A(Read_in[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(36[12:19])
    defparam i75_1_lut.init = 16'h5555;
    LUT4 i270_2_lut_2_lut_3_lut_4_lut (.A(SPI_SCSN_b_c), .B(Read_in[0]), 
         .C(Read_in[2]), .D(Read_in[1]), .Z(SPI_CLK_b_c_enable_6)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(38[7:18])
    defparam i270_2_lut_2_lut_3_lut_4_lut.init = 16'h0040;
    LUT4 i282_2_lut_2_lut_3_lut_4_lut (.A(SPI_SCSN_b_c), .B(Read_in[0]), 
         .C(Read_in[2]), .D(Read_in[1]), .Z(SPI_CLK_b_c_enable_10)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(38[7:18])
    defparam i282_2_lut_2_lut_3_lut_4_lut.init = 16'h0004;
    LUT4 i276_2_lut_2_lut_3_lut_4_lut (.A(Read_in[2]), .B(Read_in[1]), .C(Read_in[0]), 
         .D(SPI_SCSN_b_c), .Z(SPI_CLK_b_c_enable_3)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(36[12:19])
    defparam i276_2_lut_2_lut_3_lut_4_lut.init = 16'h0040;
    LUT4 i279_2_lut_2_lut_3_lut_4_lut (.A(Read_in[2]), .B(Read_in[1]), .C(SPI_SCSN_b_c), 
         .D(Read_in[0]), .Z(SPI_CLK_b_c_enable_1)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(36[12:19])
    defparam i279_2_lut_2_lut_3_lut_4_lut.init = 16'h0004;
    LUT4 i265_3_lut_4_lut (.A(Read_in[2]), .B(Read_in[1]), .C(Read_in[0]), 
         .D(SPI_SCSN_b_c), .Z(SPI_CLK_b_c_enable_16)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i265_3_lut_4_lut.init = 16'h0008;
    LUT4 i222_2_lut (.A(Read_in[1]), .B(Read_in[0]), .Z(n19)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(37[15:22])
    defparam i222_2_lut.init = 16'h6666;
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
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

