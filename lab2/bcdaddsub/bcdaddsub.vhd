library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity bcdaddsub is
	port 
	(
		-- Inputs
		NUMIN1, NUMIN2	: in STD_LOGIC_VECTOR (3 downto 0);
		ADD, LATCH1, LATCH2 : in STD_LOGIC;
		-- Outputs
		NUMOUT : out STD_LOGIC_VECTOR (4 downto 0) := "00000"
	);
end bcdaddsub;

architecture a of bcdaddsub is

    signal num_1 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal num_2 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal sum_temp : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    signal sum_temp_helper : STD_LOGIC_VECTOR (4 downto 0) := "00000";

  
  function modNum ( num_in : std_logic_vector(3 downto 0); addTF : STD_LOGIC)
    return std_logic_vector is
    variable num : std_logic_vector(4 downto 0);
    begin
        if addTF = '0' then
            case num_in is
                when "0000" => num<="01001";
                when "0001" => num<="01000";
                when "0010" => num<="00111"; 
                when "0011" => num<="00110";
                when "0100" => num<="00101";
                when "0101" => num<="00100";
                when "0110" => num<="00011";
                when "0111" => num<="00010";
                when "1000" => num<="00001";
                when "1001" => num<="00000";
                when others => num<="00000";
            end case;

        else
            num <= ('0' & num_in);
        end if;
        return num
    end;

begin

    process(NUMIN1, NUMIN2, ADD, LATCH1, LATCH2, num_1, num_2, sum_temp, sum_temp_helper)
    
	begin
		if rising_edge(LATCH1) then
			num_1 <= NUMIN1;
		end if;
		
		if rising_edge(LATCH2) then
			num_2 <= NUMIN2;
		end if;
		
        sum_temp <= ('0' & num_1) + modNum(num_2, ADD);
        sum_temp_helper <= sum_temp + "00110";

        if sum_temp > 9 then
            NUMOUT <= (1 & sum_temp_helper(3 downto 0));
        else
            NUMOUT <= ('0' & sum_temp(3 downto 0));
        end if;

	end process;
		
	
end a;
