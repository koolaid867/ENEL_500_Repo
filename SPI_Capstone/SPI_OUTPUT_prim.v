// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Fri Mar 10 21:07:24 2017
//
// Verilog Description of module SPI_OUTPUT
//

module SPI_OUTPUT (SPI_CLK_b, SPI_MISO_b, SPI_MOSI_b, SPI_SCSN_b, ARRAY_FINAL, 
            LEDS);   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(7[8:18])
    input SPI_CLK_b;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(9[3:12])
    output SPI_MISO_b;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(10[3:13])
    input SPI_MOSI_b;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(11[3:13])
    input SPI_SCSN_b;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(12[3:13])
    output [7:0]ARRAY_FINAL;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(13[3:14])
    output [7:0]LEDS;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(14[3:7])
    
    wire SPI_CLK_b_c /* synthesis SET_AS_NETWORK=SPI_CLK_b_c, is_clock=1 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(9[3:12])
    
    wire GND_net, VCC_net, SPI_MOSI_b_c, SPI_SCSN_b_c, ARRAY_FINAL_c_7, 
        ARRAY_FINAL_c_6, ARRAY_FINAL_c_5, ARRAY_FINAL_c_4, ARRAY_FINAL_c_3, 
        ARRAY_FINAL_c_2, ARRAY_FINAL_c_1, ARRAY_FINAL_c_0;
    wire [7:0]ARRAY_INPUT;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(19[9:20])
    
    wire RECEIVE_DATA_BITS;
    wire [2:0]Fill_Array;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(47[12:22])
    
    wire n223, SPI_CLK_b_c_enable_17, SPI_CLK_b_c_enable_18, n18, n19, 
        n1, n257, SPI_CLK_b_c_enable_13, n239, SPI_CLK_b_c_enable_10, 
        n351, SPI_CLK_b_c_enable_8, SPI_CLK_b_c_enable_3, SPI_CLK_b_c_enable_1, 
        SPI_CLK_b_c_enable_7, SPI_CLK_b_c_enable_14, n350, SPI_CLK_b_c_enable_19;
    
    VHI i2 (.Z(VCC_net));
    OB SPI_MISO_b_pad (.I(GND_net), .O(SPI_MISO_b));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(10[3:13])
    FD1S3AX RECEIVE_DATA_BITS_32 (.D(n239), .CK(SPI_CLK_b_c), .Q(RECEIVE_DATA_BITS));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(51[4] 67[11])
    defparam RECEIVE_DATA_BITS_32.GSR = "ENABLED";
    FD1P3AX ARRAY_INPUT_i0_i4 (.D(SPI_MOSI_b_c), .SP(SPI_CLK_b_c_enable_1), 
            .CK(SPI_CLK_b_c), .Q(ARRAY_INPUT[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(51[4] 67[11])
    defparam ARRAY_INPUT_i0_i4.GSR = "ENABLED";
    FD1P3AY ARRAY_FINAL_i0_i1 (.D(ARRAY_INPUT[0]), .SP(SPI_CLK_b_c_enable_13), 
            .CK(SPI_CLK_b_c), .Q(ARRAY_FINAL_c_0)) /* synthesis lse_init_val=1 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(51[4] 67[11])
    defparam ARRAY_FINAL_i0_i1.GSR = "ENABLED";
    OB ARRAY_FINAL_pad_0 (.I(ARRAY_FINAL_c_0), .O(ARRAY_FINAL[0]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(13[3:14])
    FD1P3AX ARRAY_INPUT_i0_i6 (.D(SPI_MOSI_b_c), .SP(SPI_CLK_b_c_enable_3), 
            .CK(SPI_CLK_b_c), .Q(ARRAY_INPUT[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(51[4] 67[11])
    defparam ARRAY_INPUT_i0_i6.GSR = "ENABLED";
    FD1P3AY ARRAY_FINAL_i0_i8 (.D(ARRAY_INPUT[7]), .SP(SPI_CLK_b_c_enable_13), 
            .CK(SPI_CLK_b_c), .Q(ARRAY_FINAL_c_7)) /* synthesis lse_init_val=1 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(51[4] 67[11])
    defparam ARRAY_FINAL_i0_i8.GSR = "ENABLED";
    GSR GSR_INST (.GSR(VCC_net));
    OB ARRAY_FINAL_pad_4 (.I(ARRAY_FINAL_c_4), .O(ARRAY_FINAL[4]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(13[3:14])
    OB ARRAY_FINAL_pad_1 (.I(ARRAY_FINAL_c_1), .O(ARRAY_FINAL[1]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(13[3:14])
    OB ARRAY_FINAL_pad_2 (.I(ARRAY_FINAL_c_2), .O(ARRAY_FINAL[2]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(13[3:14])
    OB ARRAY_FINAL_pad_3 (.I(ARRAY_FINAL_c_3), .O(ARRAY_FINAL[3]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(13[3:14])
    OB LEDS_pad_0 (.I(GND_net), .O(LEDS[0]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(14[3:7])
    FD1P3AY ARRAY_FINAL_i0_i7 (.D(ARRAY_INPUT[6]), .SP(SPI_CLK_b_c_enable_13), 
            .CK(SPI_CLK_b_c), .Q(ARRAY_FINAL_c_6)) /* synthesis lse_init_val=1 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(51[4] 67[11])
    defparam ARRAY_FINAL_i0_i7.GSR = "ENABLED";
    OB ARRAY_FINAL_pad_5 (.I(ARRAY_FINAL_c_5), .O(ARRAY_FINAL[5]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(13[3:14])
    OB LEDS_pad_1 (.I(GND_net), .O(LEDS[1]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(14[3:7])
    FD1P3AY ARRAY_FINAL_i0_i6 (.D(ARRAY_INPUT[5]), .SP(SPI_CLK_b_c_enable_13), 
            .CK(SPI_CLK_b_c), .Q(ARRAY_FINAL_c_5)) /* synthesis lse_init_val=1 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(51[4] 67[11])
    defparam ARRAY_FINAL_i0_i6.GSR = "ENABLED";
    FD1P3AX ARRAY_INPUT_i0_i3 (.D(SPI_MOSI_b_c), .SP(SPI_CLK_b_c_enable_7), 
            .CK(SPI_CLK_b_c), .Q(ARRAY_INPUT[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(51[4] 67[11])
    defparam ARRAY_INPUT_i0_i3.GSR = "ENABLED";
    FD1P3AX ARRAY_INPUT_i0_i2 (.D(SPI_MOSI_b_c), .SP(SPI_CLK_b_c_enable_8), 
            .CK(SPI_CLK_b_c), .Q(ARRAY_INPUT[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(51[4] 67[11])
    defparam ARRAY_INPUT_i0_i2.GSR = "ENABLED";
    OB ARRAY_FINAL_pad_6 (.I(ARRAY_FINAL_c_6), .O(ARRAY_FINAL[6]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(13[3:14])
    OB LEDS_pad_2 (.I(GND_net), .O(LEDS[2]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(14[3:7])
    OB LEDS_pad_3 (.I(GND_net), .O(LEDS[3]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(14[3:7])
    OB ARRAY_FINAL_pad_7 (.I(ARRAY_FINAL_c_7), .O(ARRAY_FINAL[7]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(13[3:14])
    FD1P3AY ARRAY_FINAL_i0_i5 (.D(ARRAY_INPUT[4]), .SP(SPI_CLK_b_c_enable_13), 
            .CK(SPI_CLK_b_c), .Q(ARRAY_FINAL_c_4)) /* synthesis lse_init_val=1 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(51[4] 67[11])
    defparam ARRAY_FINAL_i0_i5.GSR = "ENABLED";
    OB LEDS_pad_4 (.I(GND_net), .O(LEDS[4]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(14[3:7])
    OB LEDS_pad_5 (.I(GND_net), .O(LEDS[5]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(14[3:7])
    FD1P3AX ARRAY_INPUT_i0_i1 (.D(SPI_MOSI_b_c), .SP(SPI_CLK_b_c_enable_10), 
            .CK(SPI_CLK_b_c), .Q(ARRAY_INPUT[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(51[4] 67[11])
    defparam ARRAY_INPUT_i0_i1.GSR = "ENABLED";
    FD1P3AY ARRAY_FINAL_i0_i4 (.D(ARRAY_INPUT[3]), .SP(SPI_CLK_b_c_enable_13), 
            .CK(SPI_CLK_b_c), .Q(ARRAY_FINAL_c_3)) /* synthesis lse_init_val=1 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(51[4] 67[11])
    defparam ARRAY_FINAL_i0_i4.GSR = "ENABLED";
    OB LEDS_pad_6 (.I(GND_net), .O(LEDS[6]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(14[3:7])
    FD1P3AY ARRAY_FINAL_i0_i3 (.D(ARRAY_INPUT[2]), .SP(SPI_CLK_b_c_enable_13), 
            .CK(SPI_CLK_b_c), .Q(ARRAY_FINAL_c_2)) /* synthesis lse_init_val=1 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(51[4] 67[11])
    defparam ARRAY_FINAL_i0_i3.GSR = "ENABLED";
    LUT4 i249_2_lut_4_lut (.A(n351), .B(Fill_Array[2]), .C(Fill_Array[1]), 
         .D(Fill_Array[0]), .Z(SPI_CLK_b_c_enable_7)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(54[18:28])
    defparam i249_2_lut_4_lut.init = 16'h0010;
    FD1P3AY ARRAY_FINAL_i0_i2 (.D(ARRAY_INPUT[1]), .SP(SPI_CLK_b_c_enable_13), 
            .CK(SPI_CLK_b_c), .Q(ARRAY_FINAL_c_1)) /* synthesis lse_init_val=1 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(51[4] 67[11])
    defparam ARRAY_FINAL_i0_i2.GSR = "ENABLED";
    OB LEDS_pad_7 (.I(GND_net), .O(LEDS[7]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(14[3:7])
    LUT4 i2_3_lut (.A(Fill_Array[2]), .B(Fill_Array[1]), .C(Fill_Array[0]), 
         .Z(n223)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(56[9:23])
    defparam i2_3_lut.init = 16'hf7f7;
    LUT4 i251_2_lut_4_lut (.A(n351), .B(Fill_Array[2]), .C(Fill_Array[1]), 
         .D(Fill_Array[0]), .Z(SPI_CLK_b_c_enable_1)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(54[18:28])
    defparam i251_2_lut_4_lut.init = 16'h1000;
    IB SPI_CLK_b_pad (.I(SPI_CLK_b), .O(SPI_CLK_b_c));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(9[3:12])
    IB SPI_MOSI_b_pad (.I(SPI_MOSI_b), .O(SPI_MOSI_b_c));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(11[3:13])
    IB SPI_SCSN_b_pad (.I(SPI_SCSN_b), .O(SPI_SCSN_b_c));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(12[3:13])
    LUT4 i59_1_lut_rep_3 (.A(SPI_SCSN_b_c), .Z(SPI_CLK_b_c_enable_18)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(12[3:13])
    defparam i59_1_lut_rep_3.init = 16'h5555;
    LUT4 i257_2_lut (.A(RECEIVE_DATA_BITS), .B(SPI_SCSN_b_c), .Z(SPI_CLK_b_c_enable_13)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(50[3] 68[10])
    defparam i257_2_lut.init = 16'h2222;
    LUT4 i171_2_lut_2_lut (.A(SPI_SCSN_b_c), .B(RECEIVE_DATA_BITS), .Z(n257)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(12[3:13])
    defparam i171_2_lut_2_lut.init = 16'h4444;
    LUT4 i185_2_lut_rep_4 (.A(Fill_Array[0]), .B(Fill_Array[2]), .Z(n350)) /* synthesis lut_function=(A (B)) */ ;
    defparam i185_2_lut_rep_4.init = 16'h8888;
    LUT4 i241_4_lut (.A(Fill_Array[1]), .B(SPI_SCSN_b_c), .C(RECEIVE_DATA_BITS), 
         .D(n350), .Z(SPI_CLK_b_c_enable_17)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C)))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(51[4] 67[11])
    defparam i241_4_lut.init = 16'h3230;
    LUT4 i78_1_lut (.A(Fill_Array[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(54[18:28])
    defparam i78_1_lut.init = 16'h5555;
    LUT4 i167_3_lut (.A(RECEIVE_DATA_BITS), .B(SPI_SCSN_b_c), .C(n223), 
         .Z(n239)) /* synthesis lut_function=(A (B)+!A !(B+(C))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(51[4] 67[11])
    defparam i167_3_lut.init = 16'h8989;
    LUT4 i255_2_lut_2_lut_3_lut_4_lut (.A(Fill_Array[0]), .B(Fill_Array[2]), 
         .C(n351), .D(Fill_Array[1]), .Z(SPI_CLK_b_c_enable_3)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i255_2_lut_2_lut_3_lut_4_lut.init = 16'h0008;
    FD1P3AX ARRAY_INPUT_i0_i7 (.D(SPI_MOSI_b_c), .SP(SPI_CLK_b_c_enable_14), 
            .CK(SPI_CLK_b_c), .Q(ARRAY_INPUT[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(51[4] 67[11])
    defparam ARRAY_INPUT_i0_i7.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_5 (.A(RECEIVE_DATA_BITS), .B(SPI_SCSN_b_c), .Z(n351)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(54[18:28])
    defparam i1_2_lut_rep_5.init = 16'heeee;
    FD1P3IX Fill_Array_59__i2 (.D(n18), .SP(SPI_CLK_b_c_enable_18), .CD(n257), 
            .CK(SPI_CLK_b_c), .Q(Fill_Array[2]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(53[20:30])
    defparam Fill_Array_59__i2.GSR = "ENABLED";
    LUT4 i246_3_lut_4_lut (.A(Fill_Array[1]), .B(n351), .C(Fill_Array[2]), 
         .D(Fill_Array[0]), .Z(SPI_CLK_b_c_enable_8)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(54[18:28])
    defparam i246_3_lut_4_lut.init = 16'h0100;
    LUT4 i260_3_lut (.A(SPI_SCSN_b_c), .B(RECEIVE_DATA_BITS), .C(n223), 
         .Z(SPI_CLK_b_c_enable_14)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i260_3_lut.init = 16'h0101;
    LUT4 i212_3_lut (.A(Fill_Array[2]), .B(Fill_Array[1]), .C(Fill_Array[0]), 
         .Z(n18)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(53[20:30])
    defparam i212_3_lut.init = 16'h6a6a;
    LUT4 i244_2_lut_3_lut_4_lut (.A(Fill_Array[1]), .B(n351), .C(Fill_Array[2]), 
         .D(Fill_Array[0]), .Z(SPI_CLK_b_c_enable_10)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(54[18:28])
    defparam i244_2_lut_3_lut_4_lut.init = 16'h0001;
    FD1P3IX Fill_Array_59__i1 (.D(n19), .SP(SPI_CLK_b_c_enable_18), .CD(n257), 
            .CK(SPI_CLK_b_c), .Q(Fill_Array[1]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(53[20:30])
    defparam Fill_Array_59__i1.GSR = "ENABLED";
    FD1P3AX ARRAY_INPUT_i0_i0 (.D(SPI_MOSI_b_c), .SP(SPI_CLK_b_c_enable_17), 
            .CK(SPI_CLK_b_c), .Q(ARRAY_INPUT[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(51[4] 67[11])
    defparam ARRAY_INPUT_i0_i0.GSR = "ENABLED";
    FD1P3IX Fill_Array_59__i0 (.D(n1), .SP(SPI_CLK_b_c_enable_18), .CD(n257), 
            .CK(SPI_CLK_b_c), .Q(Fill_Array[0]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(53[20:30])
    defparam Fill_Array_59__i0.GSR = "ENABLED";
    LUT4 i253_2_lut_3_lut_4_lut (.A(Fill_Array[1]), .B(n351), .C(Fill_Array[2]), 
         .D(Fill_Array[0]), .Z(SPI_CLK_b_c_enable_19)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(54[18:28])
    defparam i253_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i205_2_lut (.A(Fill_Array[1]), .B(Fill_Array[0]), .Z(n19)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(53[20:30])
    defparam i205_2_lut.init = 16'h6666;
    VLO i1 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    FD1P3AX ARRAY_INPUT_i0_i5 (.D(SPI_MOSI_b_c), .SP(SPI_CLK_b_c_enable_19), 
            .CK(SPI_CLK_b_c), .Q(ARRAY_INPUT[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/beagle_to_outputs.vhd(51[4] 67[11])
    defparam ARRAY_INPUT_i0_i5.GSR = "ENABLED";
    TSALL TSALL_INST (.TSALL(GND_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

