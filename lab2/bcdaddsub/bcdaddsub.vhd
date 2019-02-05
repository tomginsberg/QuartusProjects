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
        SEG0 : out STD_LOGIC_VECTOR (6 downto 0) := "0000000"
        SEG1 : out STD_LOGIC_VECTOR (6 downto 0) := "0000000"
        SEG2 : out STD_LOGIC_VECTOR (1 downto 0) := "00"
	);
end bcdaddsub;

architecture a of bcdaddsub is

    --digit a
    signal bcd00 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal bcd01 : STD_LOGIC_VECTOR (3 downto 0) := "0000";

    signal temp0 : STD_LOGIC_VECTOR (3 downto 0) := "00000";

    --sev seg digit 0
    signal out0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";

    --digit b
    signal bcd10 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal bcd11 : STD_LOGIC_VECTOR (3 downto 0) := "0000";

    signal temp1 : STD_LOGIC_VECTOR (3 downto 0) := "00000";


    --sev seg digit 1
    signal out1 : STD_LOGIC_VECTOR (3 downto 0) := "0000";

    --overblow for sev seg
    signal out2 : STD_LOGIC := '0';


    fucntion bcdToSeven(bcd : std_logic_vector(3 downto 0))
    return std_logic_vector is

        variable seven_seg : std_logic_vector(6 downto 0);

        begin
            case bcd is
                when "0000" => seven_seg <= "1111110"; --0
                when "0001" => seven_seg <= "0110000"; --1 
                when "0010" => seven_seg <= "1101101"; --2
                when "0011" => seven_seg <= "1111001"; --3
                when "0100" => seven_seg <= "0110011"; --4
                when "0101" => seven_seg <= "1011011"; --5
                when "0110" => seven_seg <= "1011111"; --6
                when "0111" => seven_seg <= "1110000"; --7 
                when "1000" => seven_seg <= "1111111"; --8
                when "1001" => seven_seg <= "1110011"; --9
                when others => seven_seg <= "0000000"; --no display
            end case;
        return seven_seg;
        end;


    function addsub( bcd0 : std_logic_vector(3 downto 0); bcd1 : std_logic_vector(3 downto 0); carryin : std_logic; addTF : std_logic)
    return std_logic_vector is

        variable bcd1comp : std_logic_vector(4 downto 0);
        variable sumtemp0 : std_logic_vector(4 downto 0);
        variable sumtemp1 : std_logic_vector(4 downto 0);
        variable numout : std_logic_vector(4 downto 0);

        begin
            if addTF = '0' then

                case bcd1 is
                    when "0000" => bcd1comp<="01001";
                    when "0001" => bcd1comp<="01000";
                    when "0010" => bcd1comp<="00111"; 
                    when "0011" => bcd1comp<="00110";
                    when "0100" => bcd1comp<="00101";
                    when "0101" => bcd1comp<="00100";
                    when "0110" => bcd1comp<="00011";
                    when "0111" => bcd1comp<="00010";
                    when "1000" => bcd1comp<="00001";
                    when others => bcd1comp<="00000";
                end case;

            else
                bcd1comp <= ('0' & bcd1);
            end if;

            sumtemp0 <= ('0' & bcd0) + bcd1comp + ("0000" & carryin);
            sumtemp1 <= sumtemp0 + "00110";

            if sumtemp0 > 9 then
                numout <= ('1' & sumtemp1(3 downto 0));
            else
                numout <= sumtemp0;
            end if;

            return numout
        end;

    begin
    process(NUMIN, ADD, LATCH1, LATCH2, bcd00, bcd01, bcd10, bcd11, temp0, temp1, out0, out1, out2) is
    
	begin
        if rising_edge(LATCH1) then
            -- assign digit 0 to bcd variables on trigger
            bcd00 <= NUMIN(3 downto 0);
            bcd01 <= NUMIN(7 downto 4);
		end if;
		
        if rising_edge(LATCH2) then
            -- assign digit 1 to bcd variables on trigger
            bcd10 <= NUMIN(3 downto 0);
			bcd11 <= NUMIN(7 downto 4);
		end if;
		
        temp0 <= addsub(bcd00, bcd10, '0', ADD);
        out0 <= temp0(3 downto 0);
        temp1 <= addsub(bcd01, bcd11, temp0(4), ADD);
        out1 <= temp1(3 downto 0);
        out2 <= temp1(4);

        SEG0 <= bcdToSeven(out0);
        SEG1 <= bcdToSeven(out1);
        if (out2 = '1') then
            SEG2 <= "11";
        else
            SEG2 <= "00";
        end if;

	end process;
			
end a;
