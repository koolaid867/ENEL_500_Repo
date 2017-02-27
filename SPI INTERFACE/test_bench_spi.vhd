library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library machxo2;
use machxo2.all;

ENTITY Test is
END Test;

Architecture behavioural of Test is

signal SPI_CLK: std_logic;
signal SPI_MISO: std_logic;
signal SPI_MOSI: std_logic;
signal SPI_SCSN: std_logic;
signal ARRAY_OUT: std_logic_vector(7 downto 0);
--signal wb_dat_o: std_logic_vector(7 downto 0);

constant clk_period: time := 2us;

COMPONENT SPI_OUTPUT
	PORT(
		SPI_CLK_b: inout std_logic;
		SPI_MISO_b: inout std_logic;
		SPI_MOSI_b: inout std_logic;
		SPI_SCSN_b: in std_logic;
		ARRAY_FINAL: inout std_logic_vector(7 downto 0) := "00000000");	
	END COMPONENT;
	
COMPONENT SPI_SLAVE
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
		pll0_bus_i: in  std_logic_vector(8 downto 0) := "000000000"; 
		pll0_bus_o: out  std_logic_vector(16 downto 0));
	END COMPONENT;
	

	
BEGIN

uut: SPI_OUTPUT
	PORT MAP(
		SPI_CLK_b => SPI_CLK,
		SPI_MISO_b => SPI_MISO,
		SPI_MOSI_b => SPI_MOSI,
		SPI_SCSN_b => SPI_SCSN,
		ARRAY_FINAL => ARRAY_OUT
		);
		
--uut_2: SPI_SLAVE
--	PORT MAP(
--		wb_dat_o => wb_dat_o);

clk_proces: PROCESS
	BEGIN
	 SPI_CLK <= '0';
	 wait for clk_period/2;
	 SPI_CLK <= '1';
	 wait for clk_period/2;
END PROCESS;

Slave_Select: PROCESS
	BEGIN
	SPI_SCSN <= '0';
	wait for clk_period*8;
	SPI_SCSN <= '1';
	wait for clk_period;
END PROCESS;

MOSI_proces: PROCESS
begin
	wait for clk_period*9;
	--first set 10000000
	SPI_MOSI <= '1';
	wait for clk_period/2;
	SPI_MOSI <= '0';
	wait for clk_period/2;
	SPI_MOSI <= '0';
	wait for clk_period/2;
	SPI_MOSI <= '0';
	wait for clk_period/2;
	SPI_MOSI <= '0';
	wait for clk_period/2;
	SPI_MOSI <= '0';
	wait for clk_period/2;
	SPI_MOSI <= '0';
	wait for clk_period/2;
	SPI_MOSI <= '0';
	wait for clk_period/2;
	wait for clk_period *9;
	--second set 00111100
	SPI_MOSI <= '0';
	wait for clk_period/2;
	SPI_MOSI <= '0';
	wait for clk_period/2;
	SPI_MOSI <= '1';
	wait for clk_period/2;
	SPI_MOSI <= '1';
	wait for clk_period/2;
	SPI_MOSI <= '1';
	wait for clk_period/2;
	SPI_MOSI <= '1';
	wait for clk_period/2;
	SPI_MOSI <= '0';
	wait for clk_period/2;
	SPI_MOSI <= '0';
	wait for clk_period/2;
	wait for clk_period *9;
	--third set 00000001
	SPI_MOSI <= '0';
	wait for clk_period/2;
	SPI_MOSI <= '0';
	wait for clk_period/2;
	SPI_MOSI <= '0';
	wait for clk_period/2;
	SPI_MOSI <= '0';
	wait for clk_period/2;
	SPI_MOSI <= '0';
	wait for clk_period/2;
	SPI_MOSI <= '0';
	wait for clk_period/2;
	SPI_MOSI <= '0';
	wait for clk_period/2;
	SPI_MOSI <= '1';
	wait for clk_period/2;
	wait for clk_period *8;
	--fourth set 01010101
	SPI_MOSI <= '0';
	wait for clk_period/2;
	SPI_MOSI <= '1';
	wait for clk_period/2;
	SPI_MOSI <= '0';
	wait for clk_period/2;
	SPI_MOSI <= '1';
	wait for clk_period/2;
	SPI_MOSI <= '0';
	wait for clk_period/2;
	SPI_MOSI <= '1';
	wait for clk_period/2;
	SPI_MOSI <= '0';
	wait for clk_period/2;
	SPI_MOSI <= '1';
	wait for clk_period/2;	
	wait;
end process;
	
END BEHAVIOURAL;