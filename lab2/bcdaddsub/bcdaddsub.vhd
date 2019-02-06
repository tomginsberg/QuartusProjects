library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity bcdaddsub is
	port 
	(
		-- Inputs (sw 7 to 0)
        NUMIN	: in STD_LOGIC_VECTOR (7 downto 0);
        -- sw 9, key 9, key 1
		ADD, LATCH1, LATCH2 : in STD_LOGIC;
		-- Outputs
        SEG0 : out STD_LOGIC_VECTOR (6 downto 0) := "0000000";
        SEG1 : out STD_LOGIC_VECTOR (6 downto 0) := "0000000";
        SEG2 : out STD_LOGIC_VECTOR (6 downto 0) := "0000000";
        SEG3 : out STD_LOGIC_VECTOR (6 downto 0) := "0000000";
        SEG4 : out STD_LOGIC_VECTOR (6 downto 0) := "0000000";
        SEG5 : out STD_LOGIC_VECTOR (6 downto 0) := "0000000";
        OVERFLOW : out STD_LOGIC := '0'
	);
end bcdaddsub;

architecture a of bcdaddsub is

    --digit a
    signal bcd00 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal bcd01 : STD_LOGIC_VECTOR (3 downto 0) := "0000";

    signal temp0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";

    --sev seg digit 0
    signal out0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";

    --digit b
    signal bcd10 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal bcd11 : STD_LOGIC_VECTOR (3 downto 0) := "0000";

    signal temp1 : STD_LOGIC_VECTOR (4 downto 0) := "00000";


    --sev seg digit 1
    signal out1 : STD_LOGIC_VECTOR (3 downto 0) := "0000";


    function bcdToSeven(bcd : std_logic_vector(3 downto 0))
    return std_logic_vector is
        begin
            case bcd is
                when "0000" => return "0000001"; --0
                when "0001" => return "1001111"; --1 
                when "0010" => return "0010010"; --2
                when "0011" => return "0000110"; --3
                when "0100" => return "1001100"; --4
                when "0101" => return "0100100"; --5
                when "0110" => return "0100000"; --6
                when "0111" => return "0001111"; --7 
                when "1000" => return "0000000"; --8
                when "1001" => return "0000100"; --9
                when others => return "1111111"; --no display
            end case;
        end;


    function addsub( bcd0 : std_logic_vector(3 downto 0); bcd1 : std_logic_vector(3 downto 0); carryin : std_logic; addTF : std_logic)
    return std_logic_vector is

        variable bcd1comp : std_logic_vector(4 downto 0);
        variable sumtemp0 : std_logic_vector(4 downto 0);
        variable sumtemp1 : std_logic_vector(4 downto 0);

        begin
            if addTF = '0' then

                case bcd1 is
                    when "0000" => bcd1comp:="01001";
                    when "0001" => bcd1comp:="01000";
                    when "0010" => bcd1comp:="00111"; 
                    when "0011" => bcd1comp:="00110";
                    when "0100" => bcd1comp:="00101";
                    when "0101" => bcd1comp:="00100";
                    when "0110" => bcd1comp:="00011";
                    when "0111" => bcd1comp:="00010";
                    when "1000" => bcd1comp:="00001";
                    when others => bcd1comp:="00000";
                end case;
                
            else
                bcd1comp := ('0' & bcd1);
            end if;

            sumtemp0 := ('0' & bcd0) + bcd1comp + ("0000" & carryin);
            sumtemp1 := sumtemp0 + "00110";

            if sumtemp0 > 9 then
                return ('1' & sumtemp1(3 downto 0));
            else
                return sumtemp0;
            end if;

        end;

    begin
    process(NUMIN, ADD, LATCH1, LATCH2, bcd00, bcd01, bcd10, bcd11, temp0, temp1, out0, out1) is
    
	begin
        if rising_edge(LATCH1) then
            -- assign digit 0 to bcd variables on trigger
            bcd00 <= NUMIN(3 downto 0);
            bcd01 <= NUMIN(7 downto 4);
        end if;
        
        SEG4 <= bcdToSeven(bcd00);
        SEG5 <= bcdToSeven(bcd01);
		
        if rising_edge(LATCH2) then
            -- assign digit 1 to bcd variables on trigger
            bcd10 <= NUMIN(3 downto 0);
            bcd11 <= NUMIN(7 downto 4);
        end if;
        
        SEG2 <= bcdToSeven(bcd10);
        SEG3 <= bcdToSeven(bcd11);
        
        if (ADD = '1') then
            temp0 <= addsub(bcd00, bcd10, '0', '1');
            out0 <= temp0(3 downto 0);
            
            temp1 <= addsub(bcd01, bcd11, temp0(4), '1');
            out1 <= temp1(3 downto 0);
            
            OVERFLOW <= temp1(4);

        else 
            temp0 <= addsub(bcd00, bcd10, '1', '0');
            out0 <= temp0(3 downto 0);
            
            temp1 <= addsub(bcd01, bcd11, temp0(4), '0');
            out1 <= temp1(3 downto 0);
            
            OVERFLOW <= '0';
        end if;
        
        SEG0 <= bcdToSeven(out0);
        SEG1 <= bcdToSeven(out1);

	end process;
			
end a;
