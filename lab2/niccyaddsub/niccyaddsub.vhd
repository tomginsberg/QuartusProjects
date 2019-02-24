library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity niccyaddsub is
    Port ( 
					
				ADD : in STD_LOGIC;
				NUM1 : in  STD_LOGIC_VECTOR (7 downto 0);    -- 8-bit number
				NUM2 : in  STD_LOGIC_VECTOR (7 downto 0);    -- 8-bit number
				SUM : out  STD_LOGIC_VECTOR (8 downto 0)
			  );   -- 5 bit result
end niccyaddsub;

architecture Behavioral of niccyaddsub is
begin
	process(NUM1,NUM2,ADD) is	
	begin	
		if(ADD = '1') then
			SUM <= ('0' & NUM1) + ('0' & NUM2);
		else
			SUM <= ('0' & NUM1) - ('0' & NUM2);
		end if;
	end process;

end Behavioral;