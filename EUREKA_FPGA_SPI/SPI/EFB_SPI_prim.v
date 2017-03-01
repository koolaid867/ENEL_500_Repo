// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Tue Feb 28 20:16:41 2017
//
// Verilog Description of module EFB_SPI
//

module EFB_SPI (wb_clk_i, wb_rst_i, wb_cyc_i, wb_stb_i, wb_we_i, wb_adr_i, 
            wb_dat_i, wb_dat_o, wb_ack_o, spi_clk, spi_miso, spi_mosi, 
            spi_scsn, ufm_sn, wbc_ufm_irq) /* synthesis NGD_DRC_MASK=1 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(14[8:15])
    input wb_clk_i;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(16[9:17])
    input wb_rst_i;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(17[9:17])
    input wb_cyc_i;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(18[9:17])
    input wb_stb_i;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(19[9:17])
    input wb_we_i;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(20[9:16])
    input [7:0]wb_adr_i;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(21[9:17])
    input [7:0]wb_dat_i;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(22[9:17])
    output [7:0]wb_dat_o;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(23[9:17])
    output wb_ack_o;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(24[9:17])
    inout spi_clk /* synthesis black_box_pad_pin=1 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(25[9:16])
    inout spi_miso /* synthesis black_box_pad_pin=1 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(26[9:17])
    inout spi_mosi /* synthesis black_box_pad_pin=1 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(27[9:17])
    input spi_scsn;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(28[9:17])
    input ufm_sn;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(29[9:15])
    output wbc_ufm_irq;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(30[9:20])
    
    wire wb_clk_i_c /* synthesis is_clock=1 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(16[9:17])
    wire spi_clk_i /* synthesis is_clock=1 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(44[12:21])
    
    wire wb_rst_i_c, wb_cyc_i_c, wb_stb_i_c, wb_we_i_c, wb_adr_i_c_7, 
        wb_adr_i_c_6, wb_adr_i_c_5, wb_adr_i_c_4, wb_adr_i_c_3, wb_adr_i_c_2, 
        wb_adr_i_c_1, wb_adr_i_c_0, wb_dat_i_c_7, wb_dat_i_c_6, wb_dat_i_c_5, 
        wb_dat_i_c_4, wb_dat_i_c_3, wb_dat_i_c_2, wb_dat_i_c_1, wb_dat_i_c_0, 
        wb_dat_o_c_7, wb_dat_o_c_6, wb_dat_o_c_5, wb_dat_o_c_4, wb_dat_o_c_3, 
        wb_dat_o_c_2, wb_dat_o_c_1, wb_dat_o_c_0, wb_ack_o_c, spi_scsn_c, 
        ufm_sn_c, wbc_ufm_irq_c, spi_mosi_oe, spi_mosi_o, spi_miso_oe, 
        spi_miso_o, spi_clk_oe, spi_clk_o, spi_mosi_i, spi_miso_i, 
        GND_net, VCC_net;
    
    OB wb_dat_o_pad_4 (.I(wb_dat_o_c_4), .O(wb_dat_o[4]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(23[9:17])
    OB wb_dat_o_pad_5 (.I(wb_dat_o_c_5), .O(wb_dat_o[5]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(23[9:17])
    OB wb_dat_o_pad_6 (.I(wb_dat_o_c_6), .O(wb_dat_o[6]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(23[9:17])
    EFB EFBInst_0 (.WBCLKI(wb_clk_i_c), .WBRSTI(wb_rst_i_c), .WBCYCI(wb_cyc_i_c), 
        .WBSTBI(wb_stb_i_c), .WBWEI(wb_we_i_c), .WBADRI0(wb_adr_i_c_0), 
        .WBADRI1(wb_adr_i_c_1), .WBADRI2(wb_adr_i_c_2), .WBADRI3(wb_adr_i_c_3), 
        .WBADRI4(wb_adr_i_c_4), .WBADRI5(wb_adr_i_c_5), .WBADRI6(wb_adr_i_c_6), 
        .WBADRI7(wb_adr_i_c_7), .WBDATI0(wb_dat_i_c_0), .WBDATI1(wb_dat_i_c_1), 
        .WBDATI2(wb_dat_i_c_2), .WBDATI3(wb_dat_i_c_3), .WBDATI4(wb_dat_i_c_4), 
        .WBDATI5(wb_dat_i_c_5), .WBDATI6(wb_dat_i_c_6), .WBDATI7(wb_dat_i_c_7), 
        .I2C1SCLI(GND_net), .I2C1SDAI(GND_net), .I2C2SCLI(GND_net), .I2C2SDAI(GND_net), 
        .SPISCKI(spi_clk_i), .SPIMISOI(spi_miso_i), .SPIMOSII(spi_mosi_i), 
        .SPISCSN(spi_scsn_c), .TCCLKI(GND_net), .TCRSTN(GND_net), .TCIC(GND_net), 
        .UFMSN(ufm_sn_c), .PLL0DATI0(GND_net), .PLL0DATI1(GND_net), .PLL0DATI2(GND_net), 
        .PLL0DATI3(GND_net), .PLL0DATI4(GND_net), .PLL0DATI5(GND_net), 
        .PLL0DATI6(GND_net), .PLL0DATI7(GND_net), .PLL0ACKI(GND_net), 
        .PLL1DATI0(GND_net), .PLL1DATI1(GND_net), .PLL1DATI2(GND_net), 
        .PLL1DATI3(GND_net), .PLL1DATI4(GND_net), .PLL1DATI5(GND_net), 
        .PLL1DATI6(GND_net), .PLL1DATI7(GND_net), .PLL1ACKI(GND_net), 
        .WBDATO0(wb_dat_o_c_0), .WBDATO1(wb_dat_o_c_1), .WBDATO2(wb_dat_o_c_2), 
        .WBDATO3(wb_dat_o_c_3), .WBDATO4(wb_dat_o_c_4), .WBDATO5(wb_dat_o_c_5), 
        .WBDATO6(wb_dat_o_c_6), .WBDATO7(wb_dat_o_c_7), .WBACKO(wb_ack_o_c), 
        .WBCUFMIRQ(wbc_ufm_irq_c), .SPISCKO(spi_clk_o), .SPISCKEN(spi_clk_oe), 
        .SPIMISOO(spi_miso_o), .SPIMISOEN(spi_miso_oe), .SPIMOSIO(spi_mosi_o), 
        .SPIMOSIEN(spi_mosi_oe)) /* synthesis syn_instantiated=1 */ ;
    defparam EFBInst_0.EFB_I2C1 = "DISABLED";
    defparam EFBInst_0.EFB_I2C2 = "DISABLED";
    defparam EFBInst_0.EFB_SPI = "ENABLED";
    defparam EFBInst_0.EFB_TC = "DISABLED";
    defparam EFBInst_0.EFB_TC_PORTMODE = "WB";
    defparam EFBInst_0.EFB_UFM = "ENABLED";
    defparam EFBInst_0.EFB_WB_CLK_FREQ = "0.5";
    defparam EFBInst_0.DEV_DENSITY = "7000L";
    defparam EFBInst_0.UFM_INIT_PAGES = 1;
    defparam EFBInst_0.UFM_INIT_START_PAGE = 2045;
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
    OB wb_dat_o_pad_3 (.I(wb_dat_o_c_3), .O(wb_dat_o[3]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(23[9:17])
    VHI i15 (.Z(VCC_net));
    BB BBspi_mosi (.I(spi_mosi_o), .T(spi_mosi_oe), .B(spi_mosi), .O(spi_mosi_i)) /* synthesis syn_instantiated=1 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(146[17:19])
    BB BBspi_miso (.I(spi_miso_o), .T(spi_miso_oe), .B(spi_miso), .O(spi_miso_i)) /* synthesis syn_instantiated=1 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(150[17:19])
    BB BBspi_clk (.I(spi_clk_o), .T(spi_clk_oe), .B(spi_clk), .O(spi_clk_i)) /* synthesis syn_instantiated=1 */ ;   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(154[16:18])
    OB wb_dat_o_pad_7 (.I(wb_dat_o_c_7), .O(wb_dat_o[7]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(23[9:17])
    OB wb_dat_o_pad_2 (.I(wb_dat_o_c_2), .O(wb_dat_o[2]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(23[9:17])
    OB wb_dat_o_pad_1 (.I(wb_dat_o_c_1), .O(wb_dat_o[1]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(23[9:17])
    OB wb_dat_o_pad_0 (.I(wb_dat_o_c_0), .O(wb_dat_o[0]));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(23[9:17])
    OB wb_ack_o_pad (.I(wb_ack_o_c), .O(wb_ack_o));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(24[9:17])
    OB wbc_ufm_irq_pad (.I(wbc_ufm_irq_c), .O(wbc_ufm_irq));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(30[9:20])
    IB wb_clk_i_pad (.I(wb_clk_i), .O(wb_clk_i_c));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(16[9:17])
    IB wb_rst_i_pad (.I(wb_rst_i), .O(wb_rst_i_c));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(17[9:17])
    IB wb_cyc_i_pad (.I(wb_cyc_i), .O(wb_cyc_i_c));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(18[9:17])
    IB wb_stb_i_pad (.I(wb_stb_i), .O(wb_stb_i_c));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(19[9:17])
    IB wb_we_i_pad (.I(wb_we_i), .O(wb_we_i_c));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(20[9:16])
    IB wb_adr_i_pad_7 (.I(wb_adr_i[7]), .O(wb_adr_i_c_7));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(21[9:17])
    IB wb_adr_i_pad_6 (.I(wb_adr_i[6]), .O(wb_adr_i_c_6));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(21[9:17])
    IB wb_adr_i_pad_5 (.I(wb_adr_i[5]), .O(wb_adr_i_c_5));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(21[9:17])
    IB wb_adr_i_pad_4 (.I(wb_adr_i[4]), .O(wb_adr_i_c_4));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(21[9:17])
    IB wb_adr_i_pad_3 (.I(wb_adr_i[3]), .O(wb_adr_i_c_3));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(21[9:17])
    IB wb_adr_i_pad_2 (.I(wb_adr_i[2]), .O(wb_adr_i_c_2));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(21[9:17])
    IB wb_adr_i_pad_1 (.I(wb_adr_i[1]), .O(wb_adr_i_c_1));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(21[9:17])
    IB wb_adr_i_pad_0 (.I(wb_adr_i[0]), .O(wb_adr_i_c_0));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(21[9:17])
    IB wb_dat_i_pad_7 (.I(wb_dat_i[7]), .O(wb_dat_i_c_7));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(22[9:17])
    IB wb_dat_i_pad_6 (.I(wb_dat_i[6]), .O(wb_dat_i_c_6));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(22[9:17])
    IB wb_dat_i_pad_5 (.I(wb_dat_i[5]), .O(wb_dat_i_c_5));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(22[9:17])
    IB wb_dat_i_pad_4 (.I(wb_dat_i[4]), .O(wb_dat_i_c_4));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(22[9:17])
    IB wb_dat_i_pad_3 (.I(wb_dat_i[3]), .O(wb_dat_i_c_3));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(22[9:17])
    IB wb_dat_i_pad_2 (.I(wb_dat_i[2]), .O(wb_dat_i_c_2));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(22[9:17])
    IB wb_dat_i_pad_1 (.I(wb_dat_i[1]), .O(wb_dat_i_c_1));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(22[9:17])
    IB wb_dat_i_pad_0 (.I(wb_dat_i[0]), .O(wb_dat_i_c_0));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(22[9:17])
    IB spi_scsn_pad (.I(spi_scsn), .O(spi_scsn_c));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(28[9:17])
    IB ufm_sn_pad (.I(ufm_sn), .O(ufm_sn_c));   // c:/users/michael hosanee/documents/enel 500/git/enel_500_repo/eureka_fpga_spi/efb_spi.vhd(29[9:15])
    GSR GSR_INST (.GSR(VCC_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i4 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

