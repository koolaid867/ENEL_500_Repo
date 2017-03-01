library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library machxo2;
use machxo2.all;

ENTITY Test is
END Test;

Architecture behavioural of Test is

signal SPI_CLK: std_logic := '0';
signal SPI_MISO: std_logic := '0';
signal SPI_MOSI: std_logic := '0';
signal SPI_SCSN: std_logic := '0';
signal ARRAY_OUT: std_logic_vector(7 downto 0) := "00000000";
signal SEND_DATA_BITS: std_logic;
signal wb_dat_o: std_logic_vector(7 downto 0) := "00000000";

constant clk_period: time := 2us;

COMPONENT SPI_OUTPUT
	PORT(
		ARRAY_FINAL: inout std_logic_vector(7 downto 0) := "00000000";	
		SEND_DATA_BITS: out std_logic);
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
		spi_scsn: in  std_logic); 
	END COMPONENT;
	

	
BEGIN

uut: SPI_OUTPUT
	PORT MAP(
		ARRAY_FINAL => ARRAY_OUT,
		SEND_DATA_BITS => SEND_DATA_BITS
		);
		
uut_2: SPI_SLAVE
	PORT MAP(
		SPI_CLK => SPI_CLK,
		SPI_MISO => SPI_MISO,
		SPI_MOSI => SPI_MOSI,
		SPI_SCSN => SPI_SCSN,
		wb_dat_o => wb_dat_o);

clk_proces: PROCESS
	BEGIN
	 SPI_CLK <= '0';
	 wait for clk_period/2;
	 SPI_CLK <= '1';
	 wait for clk_period/2;
END PROCESS;

Slave_Select: PROCESS
	BEGIN
	SPI_SCSN <= '1';
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