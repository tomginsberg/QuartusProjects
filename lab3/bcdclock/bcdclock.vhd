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

    signal clk_sec_master: STD_LOGIC;
    signal clk_min_master: STD_LOGIC;
    signal clk_hour_master: STD_LOGIC;

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
                when "000000" => return "00000000";
                when "000001" => return "00000001";
                when "000010" => return "00000010";
                when "000011" => return "00000011";
                when "000100" => return "00000100";
                when "000101" => return "00000101";
                when "000110" => return "00000110";
                when "000111" => return "00000111";
                when "001000" => return "00001000";
                when "001001" => return "00001001";
                when "001010" => return "00010000";
                when "001011" => return "00010001";
                when "001100" => return "00010010";
                when "001101" => return "00010011";
                when "001110" => return "00010100";
                when "001111" => return "00010101";
                when "010000" => return "00010110";
                when "010001" => return "00010111";
                when "010010" => return "00011000";
                when "010011" => return "00011001";
                when "010100" => return "00100000";
                when "010101" => return "00100001";
                when "010110" => return "00100010";
                when "010111" => return "00100011";
                when "011000" => return "00100100";
                when "011001" => return "00100101";
                when "011010" => return "00100110";
                when "011011" => return "00100111";
                when "011100" => return "00101000";
                when "011101" => return "00101001";
                when "011110" => return "00110000";
                when "011111" => return "00110001";
                when "100000" => return "00110010";
                when "100001" => return "00110011";
                when "100010" => return "00110100";
                when "100011" => return "00110101";
                when "100100" => return "00110110";
                when "100101" => return "00110111";
                when "100110" => return "00111000";
                when "100111" => return "00111001";
                when "101000" => return "01000000";
                when "101001" => return "01000001";
                when "101010" => return "01000010";
                when "101011" => return "01000011";
                when "101100" => return "01000100";
                when "101101" => return "01000101";
                when "101110" => return "01000110";
                when "101111" => return "01000111";
                when "110000" => return "01001000";
                when "110001" => return "01001001";
                when "110010" => return "01010000";
                when "110011" => return "01010001";
                when "110100" => return "01010010";
                when "110101" => return "01010011";
                when "110110" => return "01010100";
                when "110111" => return "01010101";
                when "111000" => return "01010110";
                when "111001" => return "01010111";
                when "111010" => return "01011000";
                when "111011" => return "01011001";
				when others => return "00000000";
            end case;
        end;

    begin 
    process(CLK_50, SETMODE, counter, clk_sec)
    begin
        if(CLK_50'event and CLK_50='1' and SETMODE = '0') then 
            if counter<25000000 then
                counter <= counter + '1';
            else 
                counter <=(others => '0');
                clk_sec <= not clk_sec;
            end if;
        end if;
    end process;
    
    process(clk_sec, second, clk_min, SETMODE, UPSEC, clk_sec_master)
    begin

        clk_sec_master <= UPSEC when (SETMODE = '1') else clk_sec;

        if rising_edge(clk_sec_master) then
            if second < 59 then
                second <= second + '1';
            else 
                second <= (others => '0');
                clk_min <= not clk_min;
            end if;
        end if;
    end process;

    process(clk_min, minute, clk_hour, SETMODE, UPMIN)
    begin
        if rising_edge(clk_min) then
            if minute < 59 then
                minute <= minute + '1';
            else 
                minute <= (others => '0');
                clk_hour <= not clk_hour;
            end if;
        end if;
    end process;

    process(hour, clk_hour, SETMODE, UPHOUR)
    begin
        if rising_edge(clk_hour) then
            if hour < 12 then
                hour <= hour + '1';
            else 
                hour <= "0001";
            end if;
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

end Behavioral;