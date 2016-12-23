library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library machxo2;
use machxo2.all;

ENTITY blink_LED is
	PORT(
	CLKIN: in std_logic;
	STEP : buffer std_logic);
--	DIRECTION: out std_logic := '1');
END blink_LED;


ARCHITECTURE behavioural OF blink_LED IS
signal CLKI: std_logic;signal CLKOP: std_logic;


COMPONENT clock
	PORT( 
		CLKI: in std_logic;
		CLKOP:  out std_logic);
END COMPONENT;

BEGIN 

I1: CLOCK
	PORT MAP(
		CLKI => CLKIN,
		CLKOP => CLKOP);
step <= CLKOP;
--process(CLKI)

--variable count: integer range 0 to 10_000;
--begin
--if(clkI'event and clkI = '1') then
--	if(count < 10000) then
--		count := count + 1;
--	else
--		step <= NOT step;
--	end if;

--end if;
--end process;
end behavioural;


