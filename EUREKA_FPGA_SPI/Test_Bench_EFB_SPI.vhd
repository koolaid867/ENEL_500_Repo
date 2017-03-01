library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;

library machxo2;
use machxo2.all;

ENTITY Test is
END Test;

Architecture behavioural of Test is


signal wb_clk_i: std_logic := '0'; 
signal wb_rst_i: std_logic := '0'; 
signal wb_cyc_i: std_logic := '0'; 
signal wb_stb_i: std_logic := '0'; 
signal wb_we_i: std_logic := '0'; 
signal wb_adr_i: std_logic_vector(7 downto 0) := "00000000"; 
signal wb_dat_i: std_logic_vector(7 downto 0) := "00000000"; 
signal wb_dat_o: std_logic_vector(7 downto 0) := "00000000"; 
signal wb_ack_o: std_logic; 
signal spi_clk: std_logic; 
signal spi_miso: std_logic; 
signal spi_mosi: std_logic; 
signal spi_scsn: std_logic;


constant clk_period: time := 2us;

	
COMPONENT EFB_SPI
	PORT(
		wb_clk_i: in  std_logic := '0'; 
		wb_rst_i: in  std_logic := '0'; 
		wb_cyc_i: in  std_logic := '0'; 
		wb_stb_i: in  std_logic := '0'; 
		wb_we_i: in  std_logic := '0'; 
		wb_adr_i: in  std_logic_vector(7 downto 0) := "00000000"; 
		wb_dat_i: in  std_logic_vector(7 downto 0) := "00000000"; 
		wb_dat_o: out  std_logic_vector(7 downto 0) := "00000000"; 
		wb_ack_o: out  std_logic; 
		spi_clk: inout  std_logic; 
		spi_miso: inout  std_logic; 
		spi_mosi: inout  std_logic; 
		spi_scsn: in  std_logic;
		ufm_sn: in  std_logic; 
        wbc_ufm_irq: out  std_logic);
	END COMPONENT;
	

	
BEGIN

		
uut: EFB_SPI
	PORT MAP(
		SPI_CLK => SPI_CLK,
		SPI_MISO => SPI_MISO,
		SPI_MOSI => SPI_MOSI,
		SPI_SCSN => SPI_SCSN,
		wb_clk_i => wb_clk_i,
		wb_we_i => wb_we_i,
		wb_dat_o => wb_dat_o);

clk_process: PROCESS
	BEGIN
	 SPI_CLK <= '0';
	 wait for clk_period/2;
	 SPI_CLK <= '1';
	 wait for clk_period/2;
END PROCESS;

clk_process_2: PROCESS
	BEGIN
	 wb_clk_i <= '0';
	 wait for clk_period/2;
	 wb_clk_i <= '1';
	 wait for clk_period/2;
END PROCESS;

Slave_Select: PROCESS
	BEGIN
	SPI_SCSN <= '0';
	wait;
END PROCESS;

Write_Enable: PROCESS
	BEGIN
	wb_we_i <= '1';
	wait;
END PROCESS;

MOSI_proces: PROCESS
begin
	--first set 10000000 0x80
	SPI_MOSI <= '1';
	wait for clk_period;
	SPI_MOSI <= '0';
	wait for clk_period;
	SPI_MOSI <= '0';
	wait for clk_period;
	SPI_MOSI <= '0';
	wait for clk_period;
	SPI_MOSI <= '0';
	wait for clk_period;
	SPI_MOSI <= '0';
	wait for clk_period;
	SPI_MOSI <= '0';
	wait for clk_period;
	SPI_MOSI <= '0';
	wait for clk_period;
	
	--second set 00111100 0x3c
	SPI_MOSI <= '0';
	wait for clk_period;
	SPI_MOSI <= '0';
	wait for clk_period;
	SPI_MOSI <= '1';
	wait for clk_period;
	SPI_MOSI <= '1';
	wait for clk_period;
	SPI_MOSI <= '1';
	wait for clk_period;
	SPI_MOSI <= '1';
	wait for clk_period;
	SPI_MOSI <= '0';
	wait for clk_period;
	SPI_MOSI <= '0';
	wait for clk_period;
	
	--third set 00000001 0x01
	SPI_MOSI <= '0';
	wait for clk_period;
	SPI_MOSI <= '0';
	wait for clk_period;
	SPI_MOSI <= '0';
	wait for clk_period;
	SPI_MOSI <= '0';
	wait for clk_period;
	SPI_MOSI <= '0';
	wait for clk_period;
	SPI_MOSI <= '0';
	wait for clk_period;
	SPI_MOSI <= '0';
	wait for clk_period;
	SPI_MOSI <= '1';
	wait for clk_period;
	
	--fourth set 01010101 0x55
	SPI_MOSI <= '0';
	wait for clk_period;
	SPI_MOSI <= '1';
	wait for clk_period;
	SPI_MOSI <= '0';
	wait for clk_period;
	SPI_MOSI <= '1';
	wait for clk_period;
	SPI_MOSI <= '0';
	wait for clk_period;
	SPI_MOSI <= '1';
	wait for clk_period;
	SPI_MOSI <= '0';
	wait for clk_period;
	SPI_MOSI <= '1';
	wait for clk_period;	
end process;
	
END BEHAVIOURAL;