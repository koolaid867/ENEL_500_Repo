library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library machxo2;
use machxo2.all;

ENTITY SPI_OUTPUT is
	PORT(
		SPI_CLK_b: in std_logic;
		SPI_MISO_b: out std_logic := '0';
		SPI_MOSI_b: in std_logic := '0';
		SPI_SCSN_b: in std_logic; 
		ARRAY_FINAL: inout std_logic_vector(7 downto 0) := "11111111";	
		LEDS: out std_logic_vector(7 downto 0) := "11111111");
--		SEND_DATA_BITS: out std_logic);
END SPI_OUTPUT;

ARCHITECTURE BEHAVIOURAL OF SPI_OUTPUT IS
	signal ARRAY_INPUT: std_logic_vector(7 downto 0) := "00000000";
	signal CLK_GEN: std_logic; -- internal clock for Array sorting
	signal CLK_GEN_ARRAY: std_logic; -- output clock that will take care of 8 bit sorting
	signal RECEIVE_DATA_BITS: std_logic := '1'; -- must be 1 to send to motors

	

BEGIN--spi_scsn_b <= '0'; 
	
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
	
	PROCESS(SPI_CLK_b)
		variable Fill_Array: integer range 0 to 7 := 0;
	BEGIN
		
		if(SPI_SCSN_b = '0') then
			if(SPI_CLK_b'EVENT and SPI_CLK_B = '1') then
				if(RECEIVE_DATA_BITS = '0') then
					Fill_Array := Fill_Array + 1;
					ARRAY_INPUT(Fill_Array) <= SPI_MOSI_b;
--					SEND_DATA_BITS <= RECEIVE_DATA_BITS;
					if(Fill_Array = 7) then
						RECEIVE_DATA_BITS <= '1';
--						SEND_DATA_BITS <= RECEIVE_DATA_BITS;
					end if;
				else
					RECEIVE_DATA_BITS <= '0';
					Fill_Array := 0;
					ARRAY_INPUT(Fill_Array) <= SPI_MOSI_b;
					ARRAY_FINAL <= ARRAY_INPUT;
--					SEND_DATA_BITS <= RECEIVE_DATA_BITS;
				end if;
			end if;
		end if;
	END PROCESS;
		
		--if count = 0 put in array 1 
		--if count = 1 put in array 2 
		--output to led's for now to test

END BEHAVIOURAL;
		
	