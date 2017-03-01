library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library machxo2;
use machxo2.all;

ENTITY SPI_OUTPUT is
	PORT(
		ARRAY_FINAL: inout std_logic_vector(7 downto 0) := "00000000";	
		SEND_DATA_BITS: out std_logic);
END SPI_OUTPUT;

ARCHITECTURE BEHAVIOURAL OF SPI_OUTPUT IS
	signal ARRAY_INPUT: std_logic_vector(7 downto 0) := "00000000";
	signal CLK_GEN: std_logic; -- internal clock for Array sorting
	signal CLK_GEN_ARRAY: std_logic; -- output clock that will take care of 8 bit sorting
	signal RECEIVE_DATA_BITS: std_logic := '1'; -- must be 1 to send to motors
	signal SPI_CLK: std_logic;
	signal SPI_MISO: std_logic;
	signal SPI_MOSI: std_logic;
	signal SPI_SCSN: std_logic;
	signal temp_holder: std_logic;
	signal wb_dat_o: std_logic_vector(7 downto 0) := "00000000";
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
--			pll0_bus_i: in  std_logic_vector(8 downto 0) := "000000000"; 
--			pll0_bus_o: out  std_logic_vector(16 downto 0));
	END COMPONENT;
	

BEGIN

	I1: SPI_SLAVE
		PORT MAP(
			SPI_CLK => SPI_CLK,
			SPI_MISO => SPI_MISO,
			SPI_MOSI => SPI_MOSI,
			SPI_SCSN => SPI_SCSN,
			wb_dat_o => wb_dat_o);
	
------CREATE SECOND CLOCK FROM PLL MODULE TO READ IN VALUES TO ARRAY 8* AS FAST BEFORE OUTPUTTING TO PINS	
--	PROCESS(SPI_CLK_b)
--	variable Fill_Array: integer range 0 to 7;
--	BEGIN
--	if(SPI_CLK_B'EVENT and SPI_CLK_B = '1') then
	
--		for Fill_Array in 0 to 7 loop
--		ARRAY_INPUT(Fill_Array) <= SPI_MOSI_b;
--		if(Fill_Array = 7) then
--			RECEIVE_DATA_BITS <= '1';
--		else
--			RECEIVE_DATA_BITS <= '0';
--		end if;
--		end loop;
		
--	end if;
--	END PROCESS;
	
	PROCESS(SPI_CLK)
		variable Fill_Array: integer range 0 to 7 := 0;
	BEGIN
		
		if(SPI_CLK'EVENT and SPI_CLK = '1') then
			
			if(RECEIVE_DATA_BITS = '0') then
				Fill_Array := Fill_Array + 1;
				temp_holder <= SPI_MOSI;
				ARRAY_INPUT(Fill_Array) <= temp_holder;
				SEND_DATA_BITS <= RECEIVE_DATA_BITS;
				if(Fill_Array = 7) then
				RECEIVE_DATA_BITS <= '1';
				SEND_DATA_BITS <= RECEIVE_DATA_BITS;
			end if;
			else
				RECEIVE_DATA_BITS <= '0';
				Fill_Array := 0;
				temp_holder <= SPI_MOSI;
				ARRAY_INPUT(Fill_Array) <= temp_holder;
				ARRAY_FINAL <= ARRAY_INPUT;
				SEND_DATA_BITS <= RECEIVE_DATA_BITS;
			end if;
		end if;
	END PROCESS;
		
		--if count = 0 put in array 1 
		--if count = 1 put in array 2 
		--output to led's for now to test

END BEHAVIOURAL;
		
	