library ieee;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity bcdclock IS
	port(
		SETMODE, UPSEC, UPMIN, UPHOUR, CLK_50 :IN STD_LOGIC;
		SEC0, SEC1, MIN0, MIN1, HOUR0, HOUR1 :OUT STD_LOGIC_VECTOR (0 to 6)
	);
end bcdclock;


architecture Behavioral of bcdclock is
    signal clk_sec: STD_LOGIC;
    signal clk_min: STD_LOGIC;
    signal clk_hour: STD_LOGIC;

    signal second: std_logic_vector (5 downto 0) := "000000";
    signal minute: std_logic_vector (5 downto 0) := "000000";
    signal hour: std_logic_vector (3 downto 0) := "1100";

    signal secbcd: std_logic_vector (7 downto 0) := "00000000";
    signal minbcd: std_logic_vector (7 downto 0) := "00000000";
    signal hourbcd: std_logic_vector (7 downto 0) := "00000000";

    signal counter: STD_LOGIC_VECTOR(28 downto 0);


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

    function fourBitToBCD(fourbit : std_logic_vector(3 downto 0))
    return std_logic_vector is
        begin
            case fourbit is
                when "1010" => return "00010000";
                when "1011" => return "00010001";
                when "1100" => return "00010010";
                when others => return ("0000" & fourbit);
            end case;
        end;

    function sixBitToBCD(sixbit : std_logic_vector(5 downto 0))
    return std_logic_vector is
        begin
            case sixbit is
                when sixbit is "000000" => return "00000000";
                when sixbit is "000001" => return "00000001";
                when sixbit is "000010" => return "00000010";
                when sixbit is "000011" => return "00000011";
                when sixbit is "000100" => return "00000100";
                when sixbit is "000101" => return "00000101";
                when sixbit is "000110" => return "00000110";
                when sixbit is "000111" => return "00000111";
                when sixbit is "001000" => return "00001000";
                when sixbit is "001001" => return "00001001";
                when sixbit is "001010" => return "00010000";
                when sixbit is "001011" => return "00010001";
                when sixbit is "001100" => return "00010010";
                when sixbit is "001101" => return "00010011";
                when sixbit is "001110" => return "00010100";
                when sixbit is "001111" => return "00010101";
                when sixbit is "010000" => return "00010110";
                when sixbit is "010001" => return "00010111";
                when sixbit is "010010" => return "00011000";
                when sixbit is "010011" => return "00011001";
                when sixbit is "010100" => return "00100000";
                when sixbit is "010101" => return "00100001";
                when sixbit is "010110" => return "00100010";
                when sixbit is "010111" => return "00100011";
                when sixbit is "011000" => return "00100100";
                when sixbit is "011001" => return "00100101";
                when sixbit is "011010" => return "00100110";
                when sixbit is "011011" => return "00100111";
                when sixbit is "011100" => return "00101000";
                when sixbit is "011101" => return "00101001";
                when sixbit is "011110" => return "00110000";
                when sixbit is "011111" => return "00110001";
                when sixbit is "100000" => return "00110010";
                when sixbit is "100001" => return "00110011";
                when sixbit is "100010" => return "00110100";
                when sixbit is "100011" => return "00110101";
                when sixbit is "100100" => return "00110110";
                when sixbit is "100101" => return "00110111";
                when sixbit is "100110" => return "00111000";
                when sixbit is "100111" => return "00111001";
                when sixbit is "101000" => return "01000000";
                when sixbit is "101001" => return "01000001";
                when sixbit is "101010" => return "01000010";
                when sixbit is "101011" => return "01000011";
                when sixbit is "101100" => return "01000100";
                when sixbit is "101101" => return "01000101";
                when sixbit is "101110" => return "01000110";
                when sixbit is "101111" => return "01000111";
                when sixbit is "110000" => return "01001000";
                when sixbit is "110001" => return "01001001";
                when sixbit is "110010" => return "01010000";
                when sixbit is "110011" => return "01010001";
                when sixbit is "110100" => return "01010010";
                when sixbit is "110101" => return "01010011";
                when sixbit is "110110" => return "01010100";
                when sixbit is "110111" => return "01010101";
                when sixbit is "111000" => return "01010110";
                when sixbit is "111001" => return "01010111";
                when sixbit is "111010" => return "01011000";
                when sixbit is "111011" => return "01011001";
            end case;
        end;

    begin 
    process(CLK_50, SETMODE, counter, clk_sec)
    begin
        if(CLK_50'event and CLK_50='1' and SETMODE = '0') then 
            if counter<25000000 then
                counter <= counter + 1;
            else 
                counter <= 0;
                clk <= not clk;
            end if;
        end if;
    end process;
    
    process(clk_sec, second, clk_min)
    begin
        if rising_edge(clk_sec) then
            if second < 59 then
                second <= second + 1;
            else 
                second <= 0;
                clk_min <= not clk_min;
            end if
        end if;
    end process;

    process(clk_min, minute, clk_hour)
    begin
        if rising_edge(clk_min) then
            if minute < 59 then
                minute <= minute + 1;
            else 
                minute <= 0;
                clk_hour <= not clk_hour;
            end if
        end if;
    end process;

    process(hour, clk_hour)
    begin
        if rising_edge(clk_hour) then
            if hour < 12 then
                minute <= minute + 1;
            else 
                hour <= 1;
            end if
        end if;
    end process;

    process(second, minute, hour, secbcd, minbcd, hourbcd)
    begin
        secbcd <= sixBitToBCD(second);
        minbcd <= sixBitToBCD(minute);
        hourbcd <= fourBitToBCD(hour);

        SEC0 <= bcdToSeven(secbcd(3 downto 0));
        SEC1 <= bcdToSeven(secbcd(7 downto 4));

        MIN0 <= bcdToSeven(minbcd(3 downto 0));
        MIN1 <= bcdToSeven(minbcd(7 downto 4));

        HOUR0 <= bcdToSeven(hourbcd(3 downto 0));
        HOUR1 <= bcdToSeven(hourbcd(7 downto 4));

    end process;


    process(SETMODE, UPSEC, UPMIN, UPHOUR, clk_sec, clk_min, clk_hour)
    begin
        if SETMODE = '1' then 
            clk_sec <= UPSEC;
            clk_min <= UPMIN;
            clk_hour <= UPHOUR;
        end_if;
    end process;

end Behavioral;