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

constant clk_period: time := 2us;

COMPONENT SPI_OUTPUT
	PORT(
		SPI_CLK_b: inout std_logic;
		SPI_MISO_b: inout std_logic := '0';
		SPI_MOSI_b: inout std_logic := '0';
		SPI_SCSN_b: in std_logic; 
		ARRAY_FINAL: inout std_logic_vector(7 downto 0) := "00000000");	
--		SEND_DATA_BITS: out std_logic);
	END COMPONENT;

	
BEGIN

uut: SPI_OUTPUT
	PORT MAP(
		SPI_CLK_b => SPI_CLK,
		SPI_MISO_b => SPI_MISO,
		SPI_MOSI_b => SPI_MOSI,
		SPI_SCSN_b => SPI_SCSN,
		ARRAY_FINAL => ARRAY_OUT
--		SEND_DATA_BITS => SEND_DATA_BITS
		);
		
--uut_2: SPI_SLAVE
--	PORT MAP(
--		wb_dat_o => wb_dat_o);

clk_process: PROCESS
	BEGIN
	 SPI_CLK <= '0';
	 wait for clk_period/2;
	 SPI_CLK <= '0';
	 wait for clk_period; --stall for 3 half cycles
	 SPI_CLK <= '1'; -- start 8 bit transfer
	 wait for clk_period/2;
	 SPI_CLK <= '0';
	 wait for clk_period/2;
	 SPI_CLK <= '1';
	 wait for clk_period/2;
	 SPI_CLK <= '0';
	 wait for clk_period/2;
	 SPI_CLK <= '1';
	 wait for clk_period/2;
	 SPI_CLK <= '0';
	 wait for clk_period/2;
	 SPI_CLK <= '1';
	 wait for clk_period/2;
	 SPI_CLK <= '0';
	 wait for clk_period/2;
	 SPI_CLK <= '1';
	 wait for clk_period/2;
	 SPI_CLK <= '0';
	 wait for clk_period/2;
	 SPI_CLK <= '1';
	 wait for clk_period/2;
	 SPI_CLK <= '0';
	 wait for clk_period/2;
	 SPI_CLK <= '1';
	 wait for clk_period/2;
	 SPI_CLK <= '0';
	 wait for clk_period/2;
	 SPI_CLK <= '1';     
	 wait for clk_period/2;
	 SPI_CLK <= '0'; --end 8 bit transfer
	 wait for clk_period/2;
	 SPI_CLK <= '0';
	 wait for clk_period; --stall for 1 clock cycle
	  SPI_CLK <= '1'; -- start 8 bit transfer
	 wait for clk_period/2;
	 SPI_CLK <= '0';
	 wait for clk_period/2;
	 SPI_CLK <= '1';
	 wait for clk_period/2;
	 SPI_CLK <= '0';
	 wait for clk_period/2;
	 SPI_CLK <= '1';
	 wait for clk_period/2;
	 SPI_CLK <= '0';
	 wait for clk_period/2;
	 SPI_CLK <= '1';
	 wait for clk_period/2;
	 SPI_CLK <= '0';
	 wait for clk_period/2;
	 SPI_CLK <= '1';
	 wait for clk_period/2;
	 SPI_CLK <= '0';
	 wait for clk_period/2;
	 SPI_CLK <= '1';
	 wait for clk_period/2;
	 SPI_CLK <= '0';
	 wait for clk_period/2;
	 SPI_CLK <= '1';
	 wait for clk_period/2;
	 SPI_CLK <= '0';
	 wait for clk_period/2;
	 SPI_CLK <= '1';    
	 wait for clk_period/2;
	 SPI_CLK <= '0'; --end 8 bit transfer
	 wait for clk_period*14;
	  SPI_CLK <= '0';
	 wait for clk_period/2;
	 SPI_CLK <= '0';
	 wait for clk_period; --stall for 3 half cycles
	 SPI_CLK <= '1'; -- start 8 bit transfer
	 wait for clk_period/2;
	 SPI_CLK <= '0';
	 wait for clk_period/2;
	 SPI_CLK <= '1';
	 wait for clk_period/2;
	 SPI_CLK <= '0';
	 wait for clk_period/2;
	 SPI_CLK <= '1';
	 wait for clk_period/2;
	 SPI_CLK <= '0';
	 wait for clk_period/2;
	 SPI_CLK <= '1';
	 wait for clk_period/2;
	 SPI_CLK <= '0';
	 wait for clk_period/2;
	 SPI_CLK <= '1';
	 wait for clk_period/2;
	 SPI_CLK <= '0';
	 wait for clk_period/2;
	 SPI_CLK <= '1';
	 wait for clk_period/2;
	 SPI_CLK <= '0';
	 wait for clk_period/2;
	 SPI_CLK <= '1';
	 wait for clk_period/2;
	 SPI_CLK <= '0';
	 wait for clk_period/2;
	 SPI_CLK <= '1';     
	 wait for clk_period/2;
	 SPI_CLK <= '0'; --end 8 bit transfer
	 wait for clk_period/2;
	 SPI_CLK <= '0';
	 wait for clk_period*5; --stall for 5 clock cycles
END PROCESS;

Slave_Select: PROCESS
	BEGIN
	SPI_SCSN <= '0';
	wait for clk_period/2;
	SPI_SCSN <= '1';
	wait for clk_period/2;
	SPI_SCSN <= '0';
	wait for clk_period*8;
	SPI_SCSN <= '0';
	wait for clk_period/2;
	SPI_SCSN <= '1';
	wait for clk_period/2;
	SPI_SCSN <= '0';
	wait for clk_period/2;
	SPI_SCSN <= '0';
	wait for clk_period*9;
	SPI_SCSN <= '1';
	wait for clk_period*13;
	SPI_SCSN <= '1';
	wait for clk_period/2;
	SPI_SCSN <= '0';
	wait for clk_period*8;
	SPI_SCSN <= '1';
	wait for clk_period*5;
	

END PROCESS;

MOSI_proces: PROCESS
begin
	SPI_MOSI <= '0';
	wait for clk_period/2;
	SPI_MOSI <= '1';
	wait for clk_period/2;
	--first set 10000000 put in 0x40 (expecting 0x02 out)
	SPI_MOSI <= '0';
	wait for clk_period;
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
	wait for clk_period/2;
	
	SPI_MOSI <= '1';
	wait for clk_period/2;
	
	
	--second set 01010000 put in 0x50 expecting 0x0a
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
	SPI_MOSI <= '0';
	wait for clk_period;
	SPI_MOSI <= '0';
	wait for clk_period;
	SPI_MOSI <= '0';
	wait for clk_period;
	SPI_MOSI <= '0';
	wait for clk_period/2;
	
	SPI_MOSI <= '1';
	wait for clk_period*14;
	SPI_MOSI <= '1';
	wait for clk_period/2;
	
	--third set 01000000 0x40 expect 0x02
	SPI_MOSI <= '0';
	wait for clk_period;
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
	
	SPI_MOSI <= '1';
	wait for clk_period*4;
	SPI_MOSI <= '1';
	wait for clk_period/2;
	
	--fourth set 01000000 0x50 expect 0x0a
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