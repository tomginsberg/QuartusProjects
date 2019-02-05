library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity addsub is
	port 
	(
		-- Inputs
		NUMIN	: in STD_LOGIC_VECTOR (7 downto 0);
		ADD, LATCH1, LATCH2 : in STD_LOGIC;
		-- Outputs
		NUMOUT : out STD_LOGIC_VECTOR (8 downto 0) := "000000000"
	);
end addsub;

architecture a of addsub is
	signal temp1 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
	signal temp2 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
	
	begin
	process(NUMIN, temp1, temp2, ADD, LATCH1, LATCH2) is	
	
	begin
		if rising_edge(LATCH1) then
			temp1 <= NUMIN;
		end if;
		
		if rising_edge(LATCH2) then
			temp2 <= NUMIN;
		end if;
		
		if(ADD = '1') then
			NUMOUT <= ('0' & temp1) + ('0' & temp2);
		else
			NUMOUT <= ('0' & temp1) - ('0' & temp2);
		end if;
	end process;
end a;