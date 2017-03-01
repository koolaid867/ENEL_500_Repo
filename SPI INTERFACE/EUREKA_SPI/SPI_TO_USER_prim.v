// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Tue Feb 28 09:41:19 2017
//
// Verilog Description of module SPI_TO_USER
//

module SPI_TO_USER (CLKI, PLLCLK, PLLRST, PLLSTB, PLLWE, PLLDATI, 
            PLLADDR, CLKOP, PLLDATO, PLLACK) /* synthesis NGD_DRC_MASK=1 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(14[8:19])
    input CLKI;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(16[9:13])
    input PLLCLK;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(17[9:15])
    input PLLRST;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(18[9:15])
    input PLLSTB;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(19[9:15])
    input PLLWE;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(20[9:14])
    input [7:0]PLLDATI;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(21[9:16])
    input [4:0]PLLADDR;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(22[9:16])
    output CLKOP;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(23[9:14])
    output [7:0]PLLDATO;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(24[9:16])
    output PLLACK;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(25[9:15])
    
    wire CLKI_c /* synthesis is_clock=1 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(16[9:13])
    wire CLKOP_c /* synthesis is_clock=1 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(23[9:14])
    
    wire PLLCLK_c, PLLRST_c, PLLSTB_c, PLLWE_c, PLLDATI_c_7, PLLDATI_c_6, 
        PLLDATI_c_5, PLLDATI_c_4, PLLDATI_c_3, PLLDATI_c_2, PLLDATI_c_1, 
        PLLDATI_c_0, PLLADDR_c_4, PLLADDR_c_3, PLLADDR_c_2, PLLADDR_c_1, 
        PLLADDR_c_0, PLLDATO_c_7, PLLDATO_c_6, PLLDATO_c_5, PLLDATO_c_4, 
        PLLDATO_c_3, PLLDATO_c_2, PLLDATO_c_1, PLLDATO_c_0, PLLACK_c, 
        GND_net, VCC_net;
    
    EHXPLLJ PLLInst_0 (.CLKI(CLKI_c), .CLKFB(CLKOP_c), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(PLLCLK_c), .PLLRST(PLLRST_c), 
            .PLLSTB(PLLSTB_c), .PLLWE(PLLWE_c), .PLLDATI0(PLLDATI_c_0), 
            .PLLDATI1(PLLDATI_c_1), .PLLDATI2(PLLDATI_c_2), .PLLDATI3(PLLDATI_c_3), 
            .PLLDATI4(PLLDATI_c_4), .PLLDATI5(PLLDATI_c_5), .PLLDATI6(PLLDATI_c_6), 
            .PLLDATI7(PLLDATI_c_7), .PLLADDR0(PLLADDR_c_0), .PLLADDR1(PLLADDR_c_1), 
            .PLLADDR2(PLLADDR_c_2), .PLLADDR3(PLLADDR_c_3), .PLLADDR4(PLLADDR_c_4), 
            .CLKOP(CLKOP_c), .PLLDATO0(PLLDATO_c_0), .PLLDATO1(PLLDATO_c_1), 
            .PLLDATO2(PLLDATO_c_2), .PLLDATO3(PLLDATO_c_3), .PLLDATO4(PLLDATO_c_4), 
            .PLLDATO5(PLLDATO_c_5), .PLLDATO6(PLLDATO_c_6), .PLLDATO7(PLLDATO_c_7), 
            .PLLACK(PLLACK_c)) /* synthesis FREQUENCY_PIN_CLKOP="100.000000", FREQUENCY_PIN_CLKI="100.000000", ICP_CURRENT="12", LPF_RESISTOR="24", syn_instantiated=1 */ ;
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 1;
    defparam PLLInst_0.CLKOP_DIV = 5;
    defparam PLLInst_0.CLKOS_DIV = 1;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_A0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_B0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_C0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_D0 = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 4;
    defparam PLLInst_0.CLKOS_CPHASE = 0;
    defparam PLLInst_0.CLKOS2_CPHASE = 0;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 0;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.FEEDBK_PATH = "CLKOP";
    defparam PLLInst_0.FRACN_ENABLE = "DISABLED";
    defparam PLLInst_0.FRACN_DIV = 0;
    defparam PLLInst_0.CLKOP_TRIM_POL = "RISING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.PLL_USE_WB = "ENABLED";
    defparam PLLInst_0.PREDIVIDER_MUXA1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXB1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXC1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXD1 = 0;
    defparam PLLInst_0.OUTDIVIDER_MUXA2 = "DIVA";
    defparam PLLInst_0.OUTDIVIDER_MUXB2 = "DIVB";
    defparam PLLInst_0.OUTDIVIDER_MUXC2 = "DIVC";
    defparam PLLInst_0.OUTDIVIDER_MUXD2 = "DIVD";
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "DISABLED";
    defparam PLLInst_0.MRST_ENA = "DISABLED";
    defparam PLLInst_0.DCRST_ENA = "DISABLED";
    defparam PLLInst_0.DDRST_ENA = "DISABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    OB PLLDATO_pad_2 (.I(PLLDATO_c_2), .O(PLLDATO[2]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(24[9:16])
    VHI i46 (.Z(VCC_net));
    OB PLLDATO_pad_5 (.I(PLLDATO_c_5), .O(PLLDATO[5]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(24[9:16])
    VLO i4 (.Z(GND_net));
    OB PLLDATO_pad_6 (.I(PLLDATO_c_6), .O(PLLDATO[6]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(24[9:16])
    OB PLLDATO_pad_3 (.I(PLLDATO_c_3), .O(PLLDATO[3]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(24[9:16])
    OB PLLDATO_pad_7 (.I(PLLDATO_c_7), .O(PLLDATO[7]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(24[9:16])
    OB PLLDATO_pad_4 (.I(PLLDATO_c_4), .O(PLLDATO[4]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(24[9:16])
    OB CLKOP_pad (.I(CLKOP_c), .O(CLKOP));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(23[9:14])
    OB PLLDATO_pad_1 (.I(PLLDATO_c_1), .O(PLLDATO[1]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(24[9:16])
    OB PLLDATO_pad_0 (.I(PLLDATO_c_0), .O(PLLDATO[0]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(24[9:16])
    OB PLLACK_pad (.I(PLLACK_c), .O(PLLACK));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(25[9:15])
    IB CLKI_pad (.I(CLKI), .O(CLKI_c));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(16[9:13])
    IB PLLCLK_pad (.I(PLLCLK), .O(PLLCLK_c));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(17[9:15])
    IB PLLRST_pad (.I(PLLRST), .O(PLLRST_c));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(18[9:15])
    IB PLLSTB_pad (.I(PLLSTB), .O(PLLSTB_c));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(19[9:15])
    IB PLLWE_pad (.I(PLLWE), .O(PLLWE_c));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(20[9:14])
    IB PLLDATI_pad_7 (.I(PLLDATI[7]), .O(PLLDATI_c_7));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(21[9:16])
    IB PLLDATI_pad_6 (.I(PLLDATI[6]), .O(PLLDATI_c_6));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(21[9:16])
    IB PLLDATI_pad_5 (.I(PLLDATI[5]), .O(PLLDATI_c_5));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(21[9:16])
    IB PLLDATI_pad_4 (.I(PLLDATI[4]), .O(PLLDATI_c_4));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(21[9:16])
    IB PLLDATI_pad_3 (.I(PLLDATI[3]), .O(PLLDATI_c_3));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(21[9:16])
    IB PLLDATI_pad_2 (.I(PLLDATI[2]), .O(PLLDATI_c_2));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(21[9:16])
    IB PLLDATI_pad_1 (.I(PLLDATI[1]), .O(PLLDATI_c_1));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(21[9:16])
    IB PLLDATI_pad_0 (.I(PLLDATI[0]), .O(PLLDATI_c_0));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(21[9:16])
    IB PLLADDR_pad_4 (.I(PLLADDR[4]), .O(PLLADDR_c_4));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(22[9:16])
    IB PLLADDR_pad_3 (.I(PLLADDR[3]), .O(PLLADDR_c_3));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(22[9:16])
    IB PLLADDR_pad_2 (.I(PLLADDR[2]), .O(PLLADDR_c_2));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(22[9:16])
    IB PLLADDR_pad_1 (.I(PLLADDR[1]), .O(PLLADDR_c_1));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(22[9:16])
    IB PLLADDR_pad_0 (.I(PLLADDR[0]), .O(PLLADDR_c_0));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/spi interface/spi_to_user.vhd(22[9:16])
    GSR GSR_INST (.GSR(VCC_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
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

