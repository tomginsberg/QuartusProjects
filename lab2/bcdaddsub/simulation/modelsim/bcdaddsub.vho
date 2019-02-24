-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "02/13/2019 17:33:19"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	bcdaddsub IS
    PORT (
	NUMIN : IN std_logic_vector(7 DOWNTO 0);
	Q1 : IN std_logic;
	ADD : IN std_logic;
	LATCH1 : IN std_logic;
	LATCH2 : IN std_logic;
	SEG0 : BUFFER std_logic_vector(6 DOWNTO 0);
	SEG1 : BUFFER std_logic_vector(6 DOWNTO 0);
	SEG2 : BUFFER std_logic_vector(6 DOWNTO 0);
	SEG3 : BUFFER std_logic_vector(6 DOWNTO 0);
	SEG4 : BUFFER std_logic_vector(6 DOWNTO 0);
	SEG5 : BUFFER std_logic_vector(6 DOWNTO 0);
	OVERFLOW : BUFFER std_logic
	);
END bcdaddsub;

-- Design Ports Information
-- Q1	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG0[0]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG0[1]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG0[2]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG0[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG0[4]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG0[5]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG0[6]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG1[0]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG1[1]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG1[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG1[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG1[4]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG1[5]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG1[6]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG2[0]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG2[1]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG2[2]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG2[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG2[4]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG2[5]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG2[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG3[0]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG3[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG3[2]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG3[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG3[4]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG3[5]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG3[6]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG4[0]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG4[1]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG4[2]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG4[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG4[4]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG4[5]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG4[6]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG5[0]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG5[1]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG5[2]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG5[3]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG5[4]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG5[5]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG5[6]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OVERFLOW	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUMIN[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LATCH2	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUMIN[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUMIN[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUMIN[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUMIN[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUMIN[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUMIN[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUMIN[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LATCH1	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bcdaddsub IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_NUMIN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_ADD : std_logic;
SIGNAL ww_LATCH1 : std_logic;
SIGNAL ww_LATCH2 : std_logic;
SIGNAL ww_SEG0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SEG1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SEG2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SEG3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SEG4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SEG5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_OVERFLOW : std_logic;
SIGNAL \Q1~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \LATCH2~input_o\ : std_logic;
SIGNAL \LATCH2~inputCLKENA0_outclk\ : std_logic;
SIGNAL \NUMIN[1]~input_o\ : std_logic;
SIGNAL \NUMIN[3]~input_o\ : std_logic;
SIGNAL \LATCH1~input_o\ : std_logic;
SIGNAL \LATCH1~inputCLKENA0_outclk\ : std_logic;
SIGNAL \NUMIN[2]~input_o\ : std_logic;
SIGNAL \NUMIN[0]~input_o\ : std_logic;
SIGNAL \Add5~22_cout\ : std_logic;
SIGNAL \Add5~2\ : std_logic;
SIGNAL \Add5~5_sumout\ : std_logic;
SIGNAL \ADD~input_o\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add5~6\ : std_logic;
SIGNAL \Add5~17_sumout\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Add5~18\ : std_logic;
SIGNAL \Add5~14\ : std_logic;
SIGNAL \Add5~9_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Add5~13_sumout\ : std_logic;
SIGNAL \temp0[3]~3_combout\ : std_logic;
SIGNAL \temp0[3]~2_combout\ : std_logic;
SIGNAL \temp0[1]~0_combout\ : std_logic;
SIGNAL \temp0[2]~1_combout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add5~1_sumout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \NUMIN[7]~input_o\ : std_logic;
SIGNAL \NUMIN[6]~input_o\ : std_logic;
SIGNAL \NUMIN[5]~input_o\ : std_logic;
SIGNAL \NUMIN[4]~input_o\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \Add2~22_cout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \OVERFLOW~0_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \Add8~22_cout\ : std_logic;
SIGNAL \Add8~2\ : std_logic;
SIGNAL \Add8~5_sumout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Add8~6\ : std_logic;
SIGNAL \Add8~14\ : std_logic;
SIGNAL \Add8~17_sumout\ : std_logic;
SIGNAL \Add8~13_sumout\ : std_logic;
SIGNAL \temp1[3]~0_combout\ : std_logic;
SIGNAL \Add8~18\ : std_logic;
SIGNAL \Add8~9_sumout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \Add4~1_combout\ : std_logic;
SIGNAL \temp1[1]~1_combout\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \OVERFLOW~1_combout\ : std_logic;
SIGNAL \temp1[3]~2_combout\ : std_logic;
SIGNAL \temp1[2]~3_combout\ : std_logic;
SIGNAL \Add4~3_combout\ : std_logic;
SIGNAL \temp1[3]~4_combout\ : std_logic;
SIGNAL \Add8~1_sumout\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Mux49~0_combout\ : std_logic;
SIGNAL \Mux48~0_combout\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL bcd10 : std_logic_vector(3 DOWNTO 0);
SIGNAL bcd11 : std_logic_vector(3 DOWNTO 0);
SIGNAL bcd00 : std_logic_vector(3 DOWNTO 0);
SIGNAL bcd01 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_ADD~input_o\ : std_logic;
SIGNAL \ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux32~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux35~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL ALT_INV_bcd01 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL ALT_INV_bcd00 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL ALT_INV_bcd11 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL ALT_INV_bcd10 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Mux49~0_combout\ : std_logic;
SIGNAL \ALT_INV_temp1[3]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Add4~3_combout\ : std_logic;
SIGNAL \ALT_INV_temp1[2]~3_combout\ : std_logic;
SIGNAL \ALT_INV_Add4~2_combout\ : std_logic;
SIGNAL \ALT_INV_temp1[3]~2_combout\ : std_logic;
SIGNAL \ALT_INV_OVERFLOW~1_combout\ : std_logic;
SIGNAL \ALT_INV_temp1[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_temp1[3]~0_combout\ : std_logic;
SIGNAL \ALT_INV_OVERFLOW~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add4~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux42~0_combout\ : std_logic;
SIGNAL \ALT_INV_temp0[3]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_combout\ : std_logic;
SIGNAL \ALT_INV_temp0[2]~1_combout\ : std_logic;
SIGNAL \ALT_INV_temp0[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \ALT_INV_temp0[3]~3_combout\ : std_logic;
SIGNAL \ALT_INV_Add8~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_NUMIN <= NUMIN;
ww_Q1 <= Q1;
ww_ADD <= ADD;
ww_LATCH1 <= LATCH1;
ww_LATCH2 <= LATCH2;
SEG0 <= ww_SEG0;
SEG1 <= ww_SEG1;
SEG2 <= ww_SEG2;
SEG3 <= ww_SEG3;
SEG4 <= ww_SEG4;
SEG5 <= ww_SEG5;
OVERFLOW <= ww_OVERFLOW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_ADD~input_o\ <= NOT \ADD~input_o\;
\ALT_INV_LessThan2~0_combout\ <= NOT \LessThan2~0_combout\;
\ALT_INV_Mux32~0_combout\ <= NOT \Mux32~0_combout\;
\ALT_INV_Mux35~0_combout\ <= NOT \Mux35~0_combout\;
\ALT_INV_Mux28~0_combout\ <= NOT \Mux28~0_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
ALT_INV_bcd01(3) <= NOT bcd01(3);
ALT_INV_bcd01(2) <= NOT bcd01(2);
ALT_INV_bcd01(1) <= NOT bcd01(1);
ALT_INV_bcd01(0) <= NOT bcd01(0);
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
ALT_INV_bcd00(3) <= NOT bcd00(3);
ALT_INV_bcd00(2) <= NOT bcd00(2);
ALT_INV_bcd00(1) <= NOT bcd00(1);
ALT_INV_bcd00(0) <= NOT bcd00(0);
\ALT_INV_Mux27~0_combout\ <= NOT \Mux27~0_combout\;
ALT_INV_bcd11(3) <= NOT bcd11(3);
ALT_INV_bcd11(2) <= NOT bcd11(2);
ALT_INV_bcd11(1) <= NOT bcd11(1);
ALT_INV_bcd11(0) <= NOT bcd11(0);
\ALT_INV_Mux20~0_combout\ <= NOT \Mux20~0_combout\;
ALT_INV_bcd10(3) <= NOT bcd10(3);
ALT_INV_bcd10(2) <= NOT bcd10(2);
ALT_INV_bcd10(1) <= NOT bcd10(1);
ALT_INV_bcd10(0) <= NOT bcd10(0);
\ALT_INV_Mux49~0_combout\ <= NOT \Mux49~0_combout\;
\ALT_INV_temp1[3]~4_combout\ <= NOT \temp1[3]~4_combout\;
\ALT_INV_Add4~3_combout\ <= NOT \Add4~3_combout\;
\ALT_INV_temp1[2]~3_combout\ <= NOT \temp1[2]~3_combout\;
\ALT_INV_Add4~2_combout\ <= NOT \Add4~2_combout\;
\ALT_INV_temp1[3]~2_combout\ <= NOT \temp1[3]~2_combout\;
\ALT_INV_OVERFLOW~1_combout\ <= NOT \OVERFLOW~1_combout\;
\ALT_INV_temp1[1]~1_combout\ <= NOT \temp1[1]~1_combout\;
\ALT_INV_temp1[3]~0_combout\ <= NOT \temp1[3]~0_combout\;
\ALT_INV_OVERFLOW~0_combout\ <= NOT \OVERFLOW~0_combout\;
\ALT_INV_Add4~1_combout\ <= NOT \Add4~1_combout\;
\ALT_INV_Add4~0_combout\ <= NOT \Add4~0_combout\;
\ALT_INV_Mux42~0_combout\ <= NOT \Mux42~0_combout\;
\ALT_INV_temp0[3]~2_combout\ <= NOT \temp0[3]~2_combout\;
\ALT_INV_Add1~1_combout\ <= NOT \Add1~1_combout\;
\ALT_INV_temp0[2]~1_combout\ <= NOT \temp0[2]~1_combout\;
\ALT_INV_temp0[1]~0_combout\ <= NOT \temp0[1]~0_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_Add1~0_combout\ <= NOT \Add1~0_combout\;
\ALT_INV_temp0[3]~3_combout\ <= NOT \temp0[3]~3_combout\;
\ALT_INV_Add8~17_sumout\ <= NOT \Add8~17_sumout\;
\ALT_INV_Add8~13_sumout\ <= NOT \Add8~13_sumout\;
\ALT_INV_Add2~17_sumout\ <= NOT \Add2~17_sumout\;
\ALT_INV_Add2~13_sumout\ <= NOT \Add2~13_sumout\;
\ALT_INV_Add2~9_sumout\ <= NOT \Add2~9_sumout\;
\ALT_INV_Add8~9_sumout\ <= NOT \Add8~9_sumout\;
\ALT_INV_Add8~5_sumout\ <= NOT \Add8~5_sumout\;
\ALT_INV_Add2~5_sumout\ <= NOT \Add2~5_sumout\;
\ALT_INV_Add8~1_sumout\ <= NOT \Add8~1_sumout\;
\ALT_INV_Add2~1_sumout\ <= NOT \Add2~1_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add5~17_sumout\ <= NOT \Add5~17_sumout\;
\ALT_INV_Add5~13_sumout\ <= NOT \Add5~13_sumout\;
\ALT_INV_Add5~9_sumout\ <= NOT \Add5~9_sumout\;
\ALT_INV_Add5~5_sumout\ <= NOT \Add5~5_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add5~1_sumout\ <= NOT \Add5~1_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;

-- Location: IOOBUF_X46_Y0_N36
\SEG0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux42~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG0(0));

-- Location: IOOBUF_X50_Y0_N53
\SEG0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux41~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG0(1));

-- Location: IOOBUF_X48_Y0_N93
\SEG0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux40~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG0(2));

-- Location: IOOBUF_X50_Y0_N36
\SEG0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux39~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG0(3));

-- Location: IOOBUF_X48_Y0_N76
\SEG0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux38~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG0(4));

-- Location: IOOBUF_X51_Y0_N36
\SEG0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux37~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG0(5));

-- Location: IOOBUF_X52_Y0_N53
\SEG0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux36~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG0(6));

-- Location: IOOBUF_X51_Y0_N53
\SEG1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux49~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG1(0));

-- Location: IOOBUF_X43_Y0_N53
\SEG1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux48~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG1(1));

-- Location: IOOBUF_X38_Y0_N36
\SEG1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux47~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG1(2));

-- Location: IOOBUF_X43_Y0_N36
\SEG1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux46~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG1(3));

-- Location: IOOBUF_X44_Y0_N53
\SEG1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux45~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG1(4));

-- Location: IOOBUF_X40_Y0_N93
\SEG1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux44~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG1(5));

-- Location: IOOBUF_X44_Y0_N36
\SEG1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux43~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG1(6));

-- Location: IOOBUF_X40_Y0_N76
\SEG2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux20~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG2(0));

-- Location: IOOBUF_X46_Y0_N53
\SEG2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG2(1));

-- Location: IOOBUF_X38_Y0_N19
\SEG2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG2(2));

-- Location: IOOBUF_X36_Y0_N19
\SEG2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG2(3));

-- Location: IOOBUF_X22_Y0_N53
\SEG2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG2(4));

-- Location: IOOBUF_X38_Y0_N53
\SEG2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG2(5));

-- Location: IOOBUF_X48_Y0_N42
\SEG2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG2(6));

-- Location: IOOBUF_X51_Y0_N19
\SEG3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux27~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG3(0));

-- Location: IOOBUF_X51_Y0_N2
\SEG3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG3(1));

-- Location: IOOBUF_X52_Y0_N2
\SEG3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG3(2));

-- Location: IOOBUF_X46_Y0_N19
\SEG3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG3(3));

-- Location: IOOBUF_X40_Y0_N42
\SEG3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG3(4));

-- Location: IOOBUF_X46_Y0_N2
\SEG3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG3(5));

-- Location: IOOBUF_X40_Y0_N59
\SEG3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG3(6));

-- Location: IOOBUF_X29_Y0_N19
\SEG4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG4(0));

-- Location: IOOBUF_X36_Y0_N2
\SEG4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG4(1));

-- Location: IOOBUF_X43_Y0_N2
\SEG4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG4(2));

-- Location: IOOBUF_X52_Y0_N19
\SEG4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG4(3));

-- Location: IOOBUF_X44_Y0_N19
\SEG4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG4(4));

-- Location: IOOBUF_X48_Y0_N59
\SEG4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG4(5));

-- Location: IOOBUF_X52_Y0_N36
\SEG4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG4(6));

-- Location: IOOBUF_X44_Y0_N2
\SEG5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux13~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG5(0));

-- Location: IOOBUF_X0_Y21_N39
\SEG5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG5(1));

-- Location: IOOBUF_X0_Y21_N56
\SEG5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG5(2));

-- Location: IOOBUF_X50_Y0_N19
\SEG5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG5(3));

-- Location: IOOBUF_X43_Y0_N19
\SEG5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG5(4));

-- Location: IOOBUF_X22_Y0_N19
\SEG5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG5(5));

-- Location: IOOBUF_X29_Y0_N2
\SEG5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_SEG5(6));

-- Location: IOOBUF_X0_Y18_N45
\OVERFLOW~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OVERFLOW~1_combout\,
	devoe => ww_devoe,
	o => ww_OVERFLOW);

-- Location: IOIBUF_X11_Y0_N35
\LATCH2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LATCH2,
	o => \LATCH2~input_o\);

-- Location: CLKCTRL_G4
\LATCH2~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \LATCH2~input_o\,
	outclk => \LATCH2~inputCLKENA0_outclk\);

-- Location: IOIBUF_X33_Y0_N58
\NUMIN[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NUMIN(1),
	o => \NUMIN[1]~input_o\);

-- Location: FF_X37_Y1_N8
\bcd10[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LATCH2~inputCLKENA0_outclk\,
	asdata => \NUMIN[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd10(1));

-- Location: IOIBUF_X34_Y0_N18
\NUMIN[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NUMIN(3),
	o => \NUMIN[3]~input_o\);

-- Location: FF_X37_Y1_N53
\bcd10[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LATCH2~inputCLKENA0_outclk\,
	asdata => \NUMIN[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd10(3));

-- Location: IOIBUF_X10_Y0_N92
\LATCH1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LATCH1,
	o => \LATCH1~input_o\);

-- Location: CLKCTRL_G6
\LATCH1~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \LATCH1~input_o\,
	outclk => \LATCH1~inputCLKENA0_outclk\);

-- Location: FF_X37_Y1_N17
\bcd00[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LATCH1~inputCLKENA0_outclk\,
	asdata => \NUMIN[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd00(1));

-- Location: IOIBUF_X34_Y0_N1
\NUMIN[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NUMIN(2),
	o => \NUMIN[2]~input_o\);

-- Location: FF_X37_Y1_N47
\bcd10[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LATCH2~inputCLKENA0_outclk\,
	asdata => \NUMIN[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd10(2));

-- Location: IOIBUF_X33_Y0_N41
\NUMIN[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NUMIN(0),
	o => \NUMIN[0]~input_o\);

-- Location: FF_X37_Y1_N14
\bcd00[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LATCH1~inputCLKENA0_outclk\,
	asdata => \NUMIN[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd00(0));

-- Location: FF_X37_Y1_N2
\bcd10[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LATCH2~inputCLKENA0_outclk\,
	asdata => \NUMIN[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd10(0));

-- Location: MLABCELL_X42_Y1_N12
\Add5~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~22_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Add5~22_cout\);

-- Location: MLABCELL_X42_Y1_N15
\Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~1_sumout\ = SUM(( bcd00(0) ) + ( (!bcd10(0) & ((!bcd10(3)) # ((!bcd10(2) & !bcd10(1))))) ) + ( \Add5~22_cout\ ))
-- \Add5~2\ = CARRY(( bcd00(0) ) + ( (!bcd10(0) & ((!bcd10(3)) # ((!bcd10(2) & !bcd10(1))))) ) + ( \Add5~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcd10(2),
	datab => ALT_INV_bcd10(1),
	datac => ALT_INV_bcd10(3),
	datad => ALT_INV_bcd00(0),
	dataf => ALT_INV_bcd10(0),
	cin => \Add5~22_cout\,
	sumout => \Add5~1_sumout\,
	cout => \Add5~2\);

-- Location: MLABCELL_X42_Y1_N18
\Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~5_sumout\ = SUM(( (bcd10(1) & !bcd10(3)) ) + ( bcd00(1) ) + ( \Add5~2\ ))
-- \Add5~6\ = CARRY(( (bcd10(1) & !bcd10(3)) ) + ( bcd00(1) ) + ( \Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bcd10(1),
	datac => ALT_INV_bcd10(3),
	dataf => ALT_INV_bcd00(1),
	cin => \Add5~2\,
	sumout => \Add5~5_sumout\,
	cout => \Add5~6\);

-- Location: IOIBUF_X33_Y0_N75
\ADD~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD,
	o => \ADD~input_o\);

-- Location: FF_X37_Y1_N20
\bcd00[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LATCH1~inputCLKENA0_outclk\,
	asdata => \NUMIN[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd00(2));

-- Location: MLABCELL_X42_Y1_N30
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( bcd00(0) ) + ( bcd10(0) ) + ( !VCC ))
-- \Add0~2\ = CARRY(( bcd00(0) ) + ( bcd10(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bcd00(0),
	dataf => ALT_INV_bcd10(0),
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: MLABCELL_X42_Y1_N33
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( bcd00(1) ) + ( bcd10(1) ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( bcd00(1) ) + ( bcd10(1) ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bcd10(1),
	datac => ALT_INV_bcd00(1),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: MLABCELL_X42_Y1_N36
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( bcd00(2) ) + ( bcd10(2) ) + ( \Add0~6\ ))
-- \Add0~18\ = CARRY(( bcd00(2) ) + ( bcd10(2) ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bcd00(2),
	datac => ALT_INV_bcd10(2),
	cin => \Add0~6\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: MLABCELL_X42_Y1_N21
\Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~17_sumout\ = SUM(( (!bcd10(3) & (!bcd10(1) $ (!bcd10(2)))) ) + ( bcd00(2) ) + ( \Add5~6\ ))
-- \Add5~18\ = CARRY(( (!bcd10(3) & (!bcd10(1) $ (!bcd10(2)))) ) + ( bcd00(2) ) + ( \Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcd10(3),
	datab => ALT_INV_bcd10(1),
	datac => ALT_INV_bcd10(2),
	dataf => ALT_INV_bcd00(2),
	cin => \Add5~6\,
	sumout => \Add5~17_sumout\,
	cout => \Add5~18\);

-- Location: MLABCELL_X42_Y1_N51
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = ( \Add0~5_sumout\ & ( (!\Add5~5_sumout\ & (!\ADD~input_o\ & !\Add5~17_sumout\)) ) ) # ( !\Add0~5_sumout\ & ( (!\ADD~input_o\ & (!\Add5~5_sumout\ & ((!\Add5~17_sumout\)))) # (\ADD~input_o\ & (((!\Add0~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011100000110000101110000011000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~5_sumout\,
	datab => \ALT_INV_ADD~input_o\,
	datac => \ALT_INV_Add0~17_sumout\,
	datad => \ALT_INV_Add5~17_sumout\,
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \Add1~1_combout\);

-- Location: FF_X37_Y1_N23
\bcd00[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LATCH1~inputCLKENA0_outclk\,
	asdata => \NUMIN[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd00(3));

-- Location: MLABCELL_X42_Y1_N39
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( bcd00(3) ) + ( bcd10(3) ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( bcd00(3) ) + ( bcd10(3) ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcd10(3),
	datac => ALT_INV_bcd00(3),
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: LABCELL_X39_Y1_N54
\Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = ( !bcd10(1) & ( (!bcd10(3) & !bcd10(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bcd10(3),
	datad => ALT_INV_bcd10(2),
	dataf => ALT_INV_bcd10(1),
	combout => \Mux28~0_combout\);

-- Location: MLABCELL_X42_Y1_N24
\Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~13_sumout\ = SUM(( \Mux28~0_combout\ ) + ( bcd00(3) ) + ( \Add5~18\ ))
-- \Add5~14\ = CARRY(( \Mux28~0_combout\ ) + ( bcd00(3) ) + ( \Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bcd00(3),
	datac => \ALT_INV_Mux28~0_combout\,
	cin => \Add5~18\,
	sumout => \Add5~13_sumout\,
	cout => \Add5~14\);

-- Location: MLABCELL_X42_Y1_N27
\Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~9_sumout\ = SUM(( GND ) + ( GND ) + ( \Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add5~14\,
	sumout => \Add5~9_sumout\);

-- Location: MLABCELL_X42_Y1_N42
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( GND ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add0~14\,
	sumout => \Add0~9_sumout\);

-- Location: MLABCELL_X42_Y1_N6
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( \Add0~5_sumout\ & ( \Add0~13_sumout\ ) ) # ( !\Add0~5_sumout\ & ( (\Add0~13_sumout\ & \Add0~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~13_sumout\,
	datac => \ALT_INV_Add0~17_sumout\,
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \LessThan0~0_combout\);

-- Location: MLABCELL_X42_Y1_N0
\temp0[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp0[3]~3_combout\ = ( !\ADD~input_o\ & ( (((\Add5~13_sumout\ & ((\Add5~5_sumout\) # (\Add5~17_sumout\))))) # (\Add5~9_sumout\) ) ) # ( \ADD~input_o\ & ( (((\LessThan0~0_combout\)) # (\Add0~9_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010101010101001111110011111101011111111111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~9_sumout\,
	datab => \ALT_INV_Add0~9_sumout\,
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_Add5~5_sumout\,
	datae => \ALT_INV_ADD~input_o\,
	dataf => \ALT_INV_Add5~13_sumout\,
	datag => \ALT_INV_Add5~17_sumout\,
	combout => \temp0[3]~3_combout\);

-- Location: MLABCELL_X42_Y1_N9
\temp0[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp0[3]~2_combout\ = ( \Add5~13_sumout\ & ( (!\Add1~1_combout\ & (!\temp0[3]~3_combout\ $ (((!\Add0~13_sumout\ & \ADD~input_o\))))) # (\Add1~1_combout\ & (((!\ADD~input_o\)) # (\Add0~13_sumout\))) ) ) # ( !\Add5~13_sumout\ & ( (!\Add1~1_combout\ & 
-- (!\temp0[3]~3_combout\ $ (((!\Add0~13_sumout\) # (!\ADD~input_o\))))) # (\Add1~1_combout\ & (\Add0~13_sumout\ & (\ADD~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110101001000000111010100111110011010110011111001101011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~1_combout\,
	datab => \ALT_INV_Add0~13_sumout\,
	datac => \ALT_INV_ADD~input_o\,
	datad => \ALT_INV_temp0[3]~3_combout\,
	dataf => \ALT_INV_Add5~13_sumout\,
	combout => \temp0[3]~2_combout\);

-- Location: MLABCELL_X42_Y1_N48
\temp0[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp0[1]~0_combout\ = ( \Add0~5_sumout\ & ( !\temp0[3]~3_combout\ $ (((!\Add5~5_sumout\ & !\ADD~input_o\))) ) ) # ( !\Add0~5_sumout\ & ( !\temp0[3]~3_combout\ $ (((!\Add5~5_sumout\) # (\ADD~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101101001011010010110100101101111000011110000111100001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~5_sumout\,
	datab => \ALT_INV_ADD~input_o\,
	datac => \ALT_INV_temp0[3]~3_combout\,
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \temp0[1]~0_combout\);

-- Location: MLABCELL_X42_Y1_N54
\temp0[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp0[2]~1_combout\ = ( \Add5~17_sumout\ & ( \Add0~5_sumout\ & ( (!\ADD~input_o\ & ((!\temp0[3]~3_combout\) # ((\Add5~5_sumout\)))) # (\ADD~input_o\ & (((\Add0~17_sumout\)))) ) ) ) # ( !\Add5~17_sumout\ & ( \Add0~5_sumout\ & ( (!\ADD~input_o\ & 
-- (\temp0[3]~3_combout\ & ((!\Add5~5_sumout\)))) # (\ADD~input_o\ & (((\Add0~17_sumout\)))) ) ) ) # ( \Add5~17_sumout\ & ( !\Add0~5_sumout\ & ( (!\ADD~input_o\ & ((!\temp0[3]~3_combout\) # ((\Add5~5_sumout\)))) # (\ADD~input_o\ & (!\temp0[3]~3_combout\ $ 
-- ((!\Add0~17_sumout\)))) ) ) ) # ( !\Add5~17_sumout\ & ( !\Add0~5_sumout\ & ( (!\ADD~input_o\ & (\temp0[3]~3_combout\ & ((!\Add5~5_sumout\)))) # (\ADD~input_o\ & (!\temp0[3]~3_combout\ $ ((!\Add0~17_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011000010010100110101101111001000111000000111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_temp0[3]~3_combout\,
	datab => \ALT_INV_ADD~input_o\,
	datac => \ALT_INV_Add0~17_sumout\,
	datad => \ALT_INV_Add5~5_sumout\,
	datae => \ALT_INV_Add5~17_sumout\,
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \temp0[2]~1_combout\);

-- Location: LABCELL_X41_Y1_N33
\Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (!\ADD~input_o\ & ((\Add5~1_sumout\))) # (\ADD~input_o\ & (\Add0~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datac => \ALT_INV_ADD~input_o\,
	datad => \ALT_INV_Add5~1_sumout\,
	combout => \Add1~0_combout\);

-- Location: LABCELL_X41_Y1_N39
\Mux42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = ( \Add1~0_combout\ & ( (!\temp0[3]~2_combout\ & (!\temp0[1]~0_combout\ $ (!\temp0[2]~1_combout\))) # (\temp0[3]~2_combout\ & (!\temp0[1]~0_combout\ & !\temp0[2]~1_combout\)) ) ) # ( !\Add1~0_combout\ & ( !\temp0[3]~2_combout\ $ 
-- (((!\temp0[1]~0_combout\ & !\temp0[2]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010101010010110101010101001011010101000000101101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_temp0[3]~2_combout\,
	datac => \ALT_INV_temp0[1]~0_combout\,
	datad => \ALT_INV_temp0[2]~1_combout\,
	dataf => \ALT_INV_Add1~0_combout\,
	combout => \Mux42~0_combout\);

-- Location: LABCELL_X41_Y1_N36
\Mux41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = ( \Add1~0_combout\ & ( (!\temp0[3]~2_combout\ $ (\temp0[2]~1_combout\)) # (\temp0[1]~0_combout\) ) ) # ( !\Add1~0_combout\ & ( (!\temp0[2]~1_combout\ & ((\temp0[1]~0_combout\))) # (\temp0[2]~1_combout\ & (\temp0[3]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010110111011011101111011101101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_temp0[3]~2_combout\,
	datab => \ALT_INV_temp0[1]~0_combout\,
	datad => \ALT_INV_temp0[2]~1_combout\,
	dataf => \ALT_INV_Add1~0_combout\,
	combout => \Mux41~0_combout\);

-- Location: LABCELL_X41_Y1_N12
\Mux40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = ( \Add1~0_combout\ ) # ( !\Add1~0_combout\ & ( (!\temp0[1]~0_combout\ & ((\temp0[2]~1_combout\))) # (\temp0[1]~0_combout\ & (\temp0[3]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_temp0[3]~2_combout\,
	datab => \ALT_INV_temp0[1]~0_combout\,
	datad => \ALT_INV_temp0[2]~1_combout\,
	dataf => \ALT_INV_Add1~0_combout\,
	combout => \Mux40~0_combout\);

-- Location: LABCELL_X41_Y1_N15
\Mux39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = ( \Add1~0_combout\ & ( (!\temp0[3]~2_combout\ & (!\temp0[1]~0_combout\ $ (\temp0[2]~1_combout\))) # (\temp0[3]~2_combout\ & ((\temp0[2]~1_combout\) # (\temp0[1]~0_combout\))) ) ) # ( !\Add1~0_combout\ & ( (!\temp0[1]~0_combout\ & 
-- ((\temp0[2]~1_combout\))) # (\temp0[1]~0_combout\ & (\temp0[3]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010110100101010111111010010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_temp0[3]~2_combout\,
	datac => \ALT_INV_temp0[1]~0_combout\,
	datad => \ALT_INV_temp0[2]~1_combout\,
	dataf => \ALT_INV_Add1~0_combout\,
	combout => \Mux39~0_combout\);

-- Location: LABCELL_X41_Y1_N48
\Mux38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = ( \Add1~0_combout\ & ( (\temp0[3]~2_combout\ & ((\temp0[2]~1_combout\) # (\temp0[1]~0_combout\))) ) ) # ( !\Add1~0_combout\ & ( (!\temp0[2]~1_combout\ & (\temp0[1]~0_combout\)) # (\temp0[2]~1_combout\ & ((\temp0[3]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_temp0[1]~0_combout\,
	datac => \ALT_INV_temp0[3]~2_combout\,
	datad => \ALT_INV_temp0[2]~1_combout\,
	dataf => \ALT_INV_Add1~0_combout\,
	combout => \Mux38~0_combout\);

-- Location: LABCELL_X41_Y1_N51
\Mux37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = ( \Add1~0_combout\ & ( (!\temp0[1]~0_combout\ & ((\temp0[2]~1_combout\))) # (\temp0[1]~0_combout\ & (\temp0[3]~2_combout\)) ) ) # ( !\Add1~0_combout\ & ( (!\temp0[3]~2_combout\ & (\temp0[1]~0_combout\ & \temp0[2]~1_combout\)) # 
-- (\temp0[3]~2_combout\ & ((\temp0[2]~1_combout\) # (\temp0[1]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_temp0[3]~2_combout\,
	datab => \ALT_INV_temp0[1]~0_combout\,
	datac => \ALT_INV_temp0[2]~1_combout\,
	dataf => \ALT_INV_Add1~0_combout\,
	combout => \Mux37~0_combout\);

-- Location: LABCELL_X41_Y1_N30
\Mux36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = ( \Add1~0_combout\ & ( !\temp0[3]~2_combout\ $ (((\temp0[1]~0_combout\) # (\temp0[2]~1_combout\))) ) ) # ( !\Add1~0_combout\ & ( (!\temp0[1]~0_combout\ & (\temp0[2]~1_combout\)) # (\temp0[1]~0_combout\ & ((\temp0[3]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111111000011000011111100001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_temp0[2]~1_combout\,
	datac => \ALT_INV_temp0[3]~2_combout\,
	datad => \ALT_INV_temp0[1]~0_combout\,
	dataf => \ALT_INV_Add1~0_combout\,
	combout => \Mux36~0_combout\);

-- Location: IOIBUF_X34_Y0_N35
\NUMIN[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NUMIN(7),
	o => \NUMIN[7]~input_o\);

-- Location: FF_X39_Y1_N20
\bcd11[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LATCH2~inputCLKENA0_outclk\,
	asdata => \NUMIN[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd11(3));

-- Location: FF_X39_Y1_N53
\bcd01[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LATCH1~inputCLKENA0_outclk\,
	asdata => \NUMIN[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd01(3));

-- Location: IOIBUF_X34_Y0_N52
\NUMIN[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NUMIN(6),
	o => \NUMIN[6]~input_o\);

-- Location: FF_X39_Y1_N29
\bcd01[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LATCH1~inputCLKENA0_outclk\,
	asdata => \NUMIN[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd01(2));

-- Location: FF_X39_Y1_N17
\bcd11[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LATCH2~inputCLKENA0_outclk\,
	asdata => \NUMIN[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd11(2));

-- Location: IOIBUF_X36_Y0_N52
\NUMIN[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NUMIN(5),
	o => \NUMIN[5]~input_o\);

-- Location: FF_X39_Y1_N35
\bcd11[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LATCH2~inputCLKENA0_outclk\,
	asdata => \NUMIN[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd11(1));

-- Location: FF_X39_Y1_N50
\bcd01[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LATCH1~inputCLKENA0_outclk\,
	asdata => \NUMIN[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd01(1));

-- Location: IOIBUF_X36_Y0_N35
\NUMIN[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NUMIN(4),
	o => \NUMIN[4]~input_o\);

-- Location: FF_X39_Y1_N8
\bcd11[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LATCH2~inputCLKENA0_outclk\,
	asdata => \NUMIN[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd11(0));

-- Location: FF_X39_Y1_N44
\bcd01[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LATCH1~inputCLKENA0_outclk\,
	asdata => \NUMIN[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd01(0));

-- Location: LABCELL_X41_Y1_N0
\LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ( \Add5~5_sumout\ & ( (\Add5~13_sumout\) # (\Add5~9_sumout\) ) ) # ( !\Add5~5_sumout\ & ( ((\Add5~17_sumout\ & \Add5~13_sumout\)) # (\Add5~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~17_sumout\,
	datac => \ALT_INV_Add5~9_sumout\,
	datad => \ALT_INV_Add5~13_sumout\,
	dataf => \ALT_INV_Add5~5_sumout\,
	combout => \LessThan2~0_combout\);

-- Location: LABCELL_X40_Y1_N30
\Add2~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~22_cout\ = CARRY(( (!\ADD~input_o\ & (((\LessThan2~0_combout\)))) # (\ADD~input_o\ & (((\LessThan0~0_combout\)) # (\Add0~9_sumout\))) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~9_sumout\,
	datab => \ALT_INV_ADD~input_o\,
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_LessThan2~0_combout\,
	cin => GND,
	cout => \Add2~22_cout\);

-- Location: LABCELL_X40_Y1_N33
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( bcd11(0) ) + ( bcd01(0) ) + ( \Add2~22_cout\ ))
-- \Add2~2\ = CARRY(( bcd11(0) ) + ( bcd01(0) ) + ( \Add2~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bcd11(0),
	dataf => ALT_INV_bcd01(0),
	cin => \Add2~22_cout\,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: LABCELL_X40_Y1_N36
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( bcd01(1) ) + ( bcd11(1) ) + ( \Add2~2\ ))
-- \Add2~6\ = CARRY(( bcd01(1) ) + ( bcd11(1) ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bcd11(1),
	datad => ALT_INV_bcd01(1),
	cin => \Add2~2\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: LABCELL_X40_Y1_N39
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( bcd11(2) ) + ( bcd01(2) ) + ( \Add2~6\ ))
-- \Add2~14\ = CARRY(( bcd11(2) ) + ( bcd01(2) ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcd01(2),
	datad => ALT_INV_bcd11(2),
	cin => \Add2~6\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: LABCELL_X40_Y1_N42
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( bcd01(3) ) + ( bcd11(3) ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( bcd01(3) ) + ( bcd11(3) ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bcd11(3),
	datac => ALT_INV_bcd01(3),
	cin => \Add2~14\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: LABCELL_X41_Y1_N3
\OVERFLOW~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \OVERFLOW~0_combout\ = ( \Add2~5_sumout\ & ( (\Add2~17_sumout\ & \ADD~input_o\) ) ) # ( !\Add2~5_sumout\ & ( (\Add2~17_sumout\ & (\ADD~input_o\ & \Add2~13_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add2~17_sumout\,
	datac => \ALT_INV_ADD~input_o\,
	datad => \ALT_INV_Add2~13_sumout\,
	dataf => \ALT_INV_Add2~5_sumout\,
	combout => \OVERFLOW~0_combout\);

-- Location: LABCELL_X39_Y1_N9
\Mux35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = ( bcd11(3) & ( ((bcd11(2)) # (bcd11(0))) # (bcd11(1)) ) ) # ( !bcd11(3) & ( bcd11(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcd11(1),
	datab => ALT_INV_bcd11(0),
	datac => ALT_INV_bcd11(2),
	dataf => ALT_INV_bcd11(3),
	combout => \Mux35~0_combout\);

-- Location: LABCELL_X40_Y1_N0
\Add8~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~22_cout\ = CARRY(( (!\ADD~input_o\ & (((\LessThan2~0_combout\)))) # (\ADD~input_o\ & (((\LessThan0~0_combout\)) # (\Add0~9_sumout\))) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~9_sumout\,
	datab => \ALT_INV_ADD~input_o\,
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_LessThan2~0_combout\,
	cin => GND,
	cout => \Add8~22_cout\);

-- Location: LABCELL_X40_Y1_N3
\Add8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~1_sumout\ = SUM(( !\Mux35~0_combout\ ) + ( bcd01(0) ) + ( \Add8~22_cout\ ))
-- \Add8~2\ = CARRY(( !\Mux35~0_combout\ ) + ( bcd01(0) ) + ( \Add8~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux35~0_combout\,
	dataf => ALT_INV_bcd01(0),
	cin => \Add8~22_cout\,
	sumout => \Add8~1_sumout\,
	cout => \Add8~2\);

-- Location: LABCELL_X40_Y1_N6
\Add8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~5_sumout\ = SUM(( bcd01(1) ) + ( (!bcd11(3) & bcd11(1)) ) + ( \Add8~2\ ))
-- \Add8~6\ = CARRY(( bcd01(1) ) + ( (!bcd11(3) & bcd11(1)) ) + ( \Add8~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bcd11(3),
	datac => ALT_INV_bcd11(1),
	datad => ALT_INV_bcd01(1),
	cin => \Add8~2\,
	sumout => \Add8~5_sumout\,
	cout => \Add8~6\);

-- Location: LABCELL_X39_Y1_N18
\Mux32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = ( !bcd11(1) & ( (!bcd11(2) & !bcd11(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bcd11(2),
	datad => ALT_INV_bcd11(3),
	dataf => ALT_INV_bcd11(1),
	combout => \Mux32~0_combout\);

-- Location: LABCELL_X40_Y1_N9
\Add8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~13_sumout\ = SUM(( bcd01(2) ) + ( (!bcd11(3) & (!bcd11(2) $ (!bcd11(1)))) ) + ( \Add8~6\ ))
-- \Add8~14\ = CARRY(( bcd01(2) ) + ( (!bcd11(3) & (!bcd11(2) $ (!bcd11(1)))) ) + ( \Add8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101101111011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcd11(2),
	datab => ALT_INV_bcd11(3),
	datac => ALT_INV_bcd11(1),
	datad => ALT_INV_bcd01(2),
	cin => \Add8~6\,
	sumout => \Add8~13_sumout\,
	cout => \Add8~14\);

-- Location: LABCELL_X40_Y1_N12
\Add8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~17_sumout\ = SUM(( \Mux32~0_combout\ ) + ( bcd01(3) ) + ( \Add8~14\ ))
-- \Add8~18\ = CARRY(( \Mux32~0_combout\ ) + ( bcd01(3) ) + ( \Add8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux32~0_combout\,
	datac => ALT_INV_bcd01(3),
	cin => \Add8~14\,
	sumout => \Add8~17_sumout\,
	cout => \Add8~18\);

-- Location: LABCELL_X40_Y1_N18
\temp1[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp1[3]~0_combout\ = ( \Add8~13_sumout\ & ( (\Add8~17_sumout\ & !\ADD~input_o\) ) ) # ( !\Add8~13_sumout\ & ( (\Add8~5_sumout\ & (\Add8~17_sumout\ & !\ADD~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add8~5_sumout\,
	datab => \ALT_INV_Add8~17_sumout\,
	datac => \ALT_INV_ADD~input_o\,
	dataf => \ALT_INV_Add8~13_sumout\,
	combout => \temp1[3]~0_combout\);

-- Location: LABCELL_X40_Y1_N15
\Add8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~9_sumout\ = SUM(( GND ) + ( GND ) + ( \Add8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add8~18\,
	sumout => \Add8~9_sumout\);

-- Location: LABCELL_X40_Y1_N45
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( GND ) + ( GND ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add2~18\,
	sumout => \Add2~9_sumout\);

-- Location: LABCELL_X41_Y1_N54
\Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~1_combout\ = (!\ADD~input_o\ & ((\Add8~5_sumout\))) # (\ADD~input_o\ & (\Add2~5_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ADD~input_o\,
	datac => \ALT_INV_Add2~5_sumout\,
	datad => \ALT_INV_Add8~5_sumout\,
	combout => \Add4~1_combout\);

-- Location: LABCELL_X40_Y1_N54
\temp1[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp1[1]~1_combout\ = ( \Add2~9_sumout\ & ( \Add4~1_combout\ & ( (!\OVERFLOW~0_combout\ & (!\ADD~input_o\ & (!\temp1[3]~0_combout\ & !\Add8~9_sumout\))) ) ) ) # ( !\Add2~9_sumout\ & ( \Add4~1_combout\ & ( (!\OVERFLOW~0_combout\ & (!\temp1[3]~0_combout\ & 
-- ((!\Add8~9_sumout\) # (\ADD~input_o\)))) ) ) ) # ( \Add2~9_sumout\ & ( !\Add4~1_combout\ & ( (((\Add8~9_sumout\) # (\temp1[3]~0_combout\)) # (\ADD~input_o\)) # (\OVERFLOW~0_combout\) ) ) ) # ( !\Add2~9_sumout\ & ( !\Add4~1_combout\ & ( (((!\ADD~input_o\ & 
-- \Add8~9_sumout\)) # (\temp1[3]~0_combout\)) # (\OVERFLOW~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111011111011111111111111110100000001000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OVERFLOW~0_combout\,
	datab => \ALT_INV_ADD~input_o\,
	datac => \ALT_INV_temp1[3]~0_combout\,
	datad => \ALT_INV_Add8~9_sumout\,
	datae => \ALT_INV_Add2~9_sumout\,
	dataf => \ALT_INV_Add4~1_combout\,
	combout => \temp1[1]~1_combout\);

-- Location: LABCELL_X40_Y1_N48
\Add4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = ( \Add8~13_sumout\ & ( (!\ADD~input_o\) # (\Add2~13_sumout\) ) ) # ( !\Add8~13_sumout\ & ( (\Add2~13_sumout\ & \ADD~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add2~13_sumout\,
	datac => \ALT_INV_ADD~input_o\,
	dataf => \ALT_INV_Add8~13_sumout\,
	combout => \Add4~2_combout\);

-- Location: LABCELL_X40_Y1_N51
\OVERFLOW~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \OVERFLOW~1_combout\ = ( \ADD~input_o\ & ( ((\Add2~17_sumout\ & ((\Add2~13_sumout\) # (\Add2~5_sumout\)))) # (\Add2~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111011111110000111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~5_sumout\,
	datab => \ALT_INV_Add2~13_sumout\,
	datac => \ALT_INV_Add2~9_sumout\,
	datad => \ALT_INV_Add2~17_sumout\,
	dataf => \ALT_INV_ADD~input_o\,
	combout => \OVERFLOW~1_combout\);

-- Location: LABCELL_X40_Y1_N21
\temp1[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp1[3]~2_combout\ = ( \Add8~13_sumout\ & ( (!\ADD~input_o\ & ((\Add8~9_sumout\) # (\Add8~17_sumout\))) ) ) # ( !\Add8~13_sumout\ & ( (!\ADD~input_o\ & (((\Add8~5_sumout\ & \Add8~17_sumout\)) # (\Add8~9_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100000000000111110000000000111111000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add8~5_sumout\,
	datab => \ALT_INV_Add8~17_sumout\,
	datac => \ALT_INV_Add8~9_sumout\,
	datad => \ALT_INV_ADD~input_o\,
	dataf => \ALT_INV_Add8~13_sumout\,
	combout => \temp1[3]~2_combout\);

-- Location: LABCELL_X40_Y1_N24
\temp1[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp1[2]~3_combout\ = ( \Add4~1_combout\ & ( \Add4~2_combout\ ) ) # ( !\Add4~1_combout\ & ( !\Add4~2_combout\ $ (((!\OVERFLOW~1_combout\ & !\temp1[3]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101001101010011010100110101001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~2_combout\,
	datab => \ALT_INV_OVERFLOW~1_combout\,
	datac => \ALT_INV_temp1[3]~2_combout\,
	dataf => \ALT_INV_Add4~1_combout\,
	combout => \temp1[2]~3_combout\);

-- Location: LABCELL_X41_Y1_N57
\Add4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~3_combout\ = (!\ADD~input_o\ & ((\Add8~17_sumout\))) # (\ADD~input_o\ & (\Add2~17_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ADD~input_o\,
	datac => \ALT_INV_Add2~17_sumout\,
	datad => \ALT_INV_Add8~17_sumout\,
	combout => \Add4~3_combout\);

-- Location: LABCELL_X40_Y1_N27
\temp1[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp1[3]~4_combout\ = ( \Add4~1_combout\ & ( !\Add4~3_combout\ $ (((!\OVERFLOW~1_combout\ & !\temp1[3]~2_combout\))) ) ) # ( !\Add4~1_combout\ & ( !\Add4~3_combout\ $ (((!\Add4~2_combout\) # ((!\OVERFLOW~1_combout\ & !\temp1[3]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001011010000111100101101000111100111100000011110011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~2_combout\,
	datab => \ALT_INV_OVERFLOW~1_combout\,
	datac => \ALT_INV_Add4~3_combout\,
	datad => \ALT_INV_temp1[3]~2_combout\,
	dataf => \ALT_INV_Add4~1_combout\,
	combout => \temp1[3]~4_combout\);

-- Location: LABCELL_X39_Y1_N33
\Add4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = ( \Add2~1_sumout\ & ( (\ADD~input_o\) # (\Add8~1_sumout\) ) ) # ( !\Add2~1_sumout\ & ( (\Add8~1_sumout\ & !\ADD~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add8~1_sumout\,
	datac => \ALT_INV_ADD~input_o\,
	dataf => \ALT_INV_Add2~1_sumout\,
	combout => \Add4~0_combout\);

-- Location: LABCELL_X41_Y1_N6
\Mux49~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux49~0_combout\ = ( \Add4~0_combout\ & ( (!\temp1[1]~1_combout\ & (!\temp1[2]~3_combout\ $ (!\temp1[3]~4_combout\))) # (\temp1[1]~1_combout\ & (!\temp1[2]~3_combout\ & !\temp1[3]~4_combout\)) ) ) # ( !\Add4~0_combout\ & ( !\temp1[3]~4_combout\ $ 
-- (((!\temp1[1]~1_combout\ & !\temp1[2]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100001111000011110000111100001101000011010000110100001101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_temp1[1]~1_combout\,
	datab => \ALT_INV_temp1[2]~3_combout\,
	datac => \ALT_INV_temp1[3]~4_combout\,
	dataf => \ALT_INV_Add4~0_combout\,
	combout => \Mux49~0_combout\);

-- Location: LABCELL_X41_Y1_N9
\Mux48~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux48~0_combout\ = ( \Add4~0_combout\ & ( (!\temp1[2]~3_combout\ $ (\temp1[3]~4_combout\)) # (\temp1[1]~1_combout\) ) ) # ( !\Add4~0_combout\ & ( (!\temp1[2]~3_combout\ & (\temp1[1]~1_combout\)) # (\temp1[2]~3_combout\ & ((\temp1[3]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011111011101011101111101110101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_temp1[1]~1_combout\,
	datab => \ALT_INV_temp1[2]~3_combout\,
	datad => \ALT_INV_temp1[3]~4_combout\,
	dataf => \ALT_INV_Add4~0_combout\,
	combout => \Mux48~0_combout\);

-- Location: LABCELL_X41_Y1_N42
\Mux47~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = ( \temp1[3]~4_combout\ & ( \Add4~0_combout\ ) ) # ( !\temp1[3]~4_combout\ & ( \Add4~0_combout\ ) ) # ( \temp1[3]~4_combout\ & ( !\Add4~0_combout\ & ( (\temp1[2]~3_combout\) # (\temp1[1]~1_combout\) ) ) ) # ( !\temp1[3]~4_combout\ & ( 
-- !\Add4~0_combout\ & ( (!\temp1[1]~1_combout\ & \temp1[2]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_temp1[1]~1_combout\,
	datab => \ALT_INV_temp1[2]~3_combout\,
	datae => \ALT_INV_temp1[3]~4_combout\,
	dataf => \ALT_INV_Add4~0_combout\,
	combout => \Mux47~0_combout\);

-- Location: LABCELL_X41_Y1_N18
\Mux46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = ( \Add4~0_combout\ & ( (!\temp1[1]~1_combout\ & (!\temp1[2]~3_combout\ $ (\temp1[3]~4_combout\))) # (\temp1[1]~1_combout\ & ((\temp1[3]~4_combout\) # (\temp1[2]~3_combout\))) ) ) # ( !\Add4~0_combout\ & ( (!\temp1[1]~1_combout\ & 
-- (\temp1[2]~3_combout\)) # (\temp1[1]~1_combout\ & ((\temp1[3]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011110010111100101111001011110010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_temp1[1]~1_combout\,
	datab => \ALT_INV_temp1[2]~3_combout\,
	datac => \ALT_INV_temp1[3]~4_combout\,
	dataf => \ALT_INV_Add4~0_combout\,
	combout => \Mux46~0_combout\);

-- Location: LABCELL_X41_Y1_N21
\Mux45~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = ( \Add4~0_combout\ & ( (\temp1[3]~4_combout\ & ((\temp1[2]~3_combout\) # (\temp1[1]~1_combout\))) ) ) # ( !\Add4~0_combout\ & ( (!\temp1[2]~3_combout\ & (\temp1[1]~1_combout\)) # (\temp1[2]~3_combout\ & ((\temp1[3]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100000000011101110000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_temp1[1]~1_combout\,
	datab => \ALT_INV_temp1[2]~3_combout\,
	datad => \ALT_INV_temp1[3]~4_combout\,
	dataf => \ALT_INV_Add4~0_combout\,
	combout => \Mux45~0_combout\);

-- Location: LABCELL_X41_Y1_N27
\Mux44~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = ( \Add4~0_combout\ & ( (!\temp1[1]~1_combout\ & (\temp1[2]~3_combout\)) # (\temp1[1]~1_combout\ & ((\temp1[3]~4_combout\))) ) ) # ( !\Add4~0_combout\ & ( (!\temp1[1]~1_combout\ & (\temp1[2]~3_combout\ & \temp1[3]~4_combout\)) # 
-- (\temp1[1]~1_combout\ & ((\temp1[3]~4_combout\) # (\temp1[2]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_temp1[1]~1_combout\,
	datab => \ALT_INV_temp1[2]~3_combout\,
	datad => \ALT_INV_temp1[3]~4_combout\,
	dataf => \ALT_INV_Add4~0_combout\,
	combout => \Mux44~0_combout\);

-- Location: LABCELL_X41_Y1_N24
\Mux43~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = ( \Add4~0_combout\ & ( !\temp1[3]~4_combout\ $ (((\temp1[1]~1_combout\) # (\temp1[2]~3_combout\))) ) ) # ( !\Add4~0_combout\ & ( (!\temp1[1]~1_combout\ & (\temp1[2]~3_combout\)) # (\temp1[1]~1_combout\ & ((\temp1[3]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111111000000001111111100000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_temp1[2]~3_combout\,
	datac => \ALT_INV_temp1[1]~1_combout\,
	datad => \ALT_INV_temp1[3]~4_combout\,
	dataf => \ALT_INV_Add4~0_combout\,
	combout => \Mux43~0_combout\);

-- Location: MLABCELL_X37_Y1_N27
\Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = ( bcd10(1) & ( (!bcd10(3) & ((!bcd10(2)) # (!bcd10(0)))) ) ) # ( !bcd10(1) & ( !bcd10(3) $ (!bcd10(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010101010101000001010101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcd10(3),
	datac => ALT_INV_bcd10(2),
	datad => ALT_INV_bcd10(0),
	dataf => ALT_INV_bcd10(1),
	combout => \Mux20~0_combout\);

-- Location: MLABCELL_X37_Y1_N48
\Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = ( bcd10(2) & ( bcd10(1) & ( (bcd10(3)) # (bcd10(0)) ) ) ) # ( !bcd10(2) & ( bcd10(1) ) ) # ( bcd10(2) & ( !bcd10(1) & ( bcd10(3) ) ) ) # ( !bcd10(2) & ( !bcd10(1) & ( (bcd10(0) & !bcd10(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000011110000111111111111111111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcd10(0),
	datac => ALT_INV_bcd10(3),
	datae => ALT_INV_bcd10(2),
	dataf => ALT_INV_bcd10(1),
	combout => \Mux19~0_combout\);

-- Location: MLABCELL_X37_Y1_N33
\Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = ( bcd10(1) & ( (bcd10(0)) # (bcd10(3)) ) ) # ( !bcd10(1) & ( (bcd10(0)) # (bcd10(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcd10(3),
	datab => ALT_INV_bcd10(2),
	datad => ALT_INV_bcd10(0),
	dataf => ALT_INV_bcd10(1),
	combout => \Mux18~0_combout\);

-- Location: MLABCELL_X37_Y1_N42
\Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = ( bcd10(2) & ( bcd10(1) & ( (bcd10(3)) # (bcd10(0)) ) ) ) # ( !bcd10(2) & ( bcd10(1) & ( bcd10(3) ) ) ) # ( bcd10(2) & ( !bcd10(1) & ( (!bcd10(0)) # (bcd10(3)) ) ) ) # ( !bcd10(2) & ( !bcd10(1) & ( (bcd10(0) & !bcd10(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000101011111010111100001111000011110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcd10(0),
	datac => ALT_INV_bcd10(3),
	datae => ALT_INV_bcd10(2),
	dataf => ALT_INV_bcd10(1),
	combout => \Mux17~0_combout\);

-- Location: MLABCELL_X37_Y1_N39
\Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = ( bcd10(2) & ( bcd10(1) & ( bcd10(3) ) ) ) # ( !bcd10(2) & ( bcd10(1) & ( (!bcd10(0)) # (bcd10(3)) ) ) ) # ( bcd10(2) & ( !bcd10(1) & ( bcd10(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcd10(3),
	datad => ALT_INV_bcd10(0),
	datae => ALT_INV_bcd10(2),
	dataf => ALT_INV_bcd10(1),
	combout => \Mux16~0_combout\);

-- Location: MLABCELL_X37_Y1_N30
\Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( bcd10(1) & ( ((bcd10(2) & !bcd10(0))) # (bcd10(3)) ) ) # ( !bcd10(1) & ( (bcd10(2) & ((bcd10(0)) # (bcd10(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001101110101011101010111010101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcd10(3),
	datab => ALT_INV_bcd10(2),
	datac => ALT_INV_bcd10(0),
	dataf => ALT_INV_bcd10(1),
	combout => \Mux15~0_combout\);

-- Location: MLABCELL_X37_Y1_N3
\Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( bcd10(2) & ( bcd10(1) & ( bcd10(3) ) ) ) # ( !bcd10(2) & ( bcd10(1) & ( bcd10(3) ) ) ) # ( bcd10(2) & ( !bcd10(1) & ( (!bcd10(0)) # (bcd10(3)) ) ) ) # ( !bcd10(2) & ( !bcd10(1) & ( (!bcd10(3) & bcd10(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010111111110101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcd10(3),
	datad => ALT_INV_bcd10(0),
	datae => ALT_INV_bcd10(2),
	dataf => ALT_INV_bcd10(1),
	combout => \Mux14~0_combout\);

-- Location: LABCELL_X39_Y1_N57
\Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = ( bcd11(3) & ( (!bcd11(1) & !bcd11(2)) ) ) # ( !bcd11(3) & ( (!bcd11(1) & (bcd11(2))) # (bcd11(1) & ((!bcd11(2)) # (!bcd11(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011001110110011101100111011010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcd11(1),
	datab => ALT_INV_bcd11(2),
	datac => ALT_INV_bcd11(0),
	dataf => ALT_INV_bcd11(3),
	combout => \Mux27~0_combout\);

-- Location: LABCELL_X39_Y1_N0
\Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = ( bcd11(3) & ( (bcd11(2)) # (bcd11(1)) ) ) # ( !bcd11(3) & ( (!bcd11(1) & (bcd11(0) & !bcd11(2))) # (bcd11(1) & ((!bcd11(2)) # (bcd11(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcd11(1),
	datab => ALT_INV_bcd11(0),
	datac => ALT_INV_bcd11(2),
	dataf => ALT_INV_bcd11(3),
	combout => \Mux26~0_combout\);

-- Location: LABCELL_X39_Y1_N3
\Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = ( bcd11(3) & ( ((bcd11(2)) # (bcd11(0))) # (bcd11(1)) ) ) # ( !bcd11(3) & ( ((!bcd11(1) & bcd11(2))) # (bcd11(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100111011001110110011101101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcd11(1),
	datab => ALT_INV_bcd11(0),
	datac => ALT_INV_bcd11(2),
	dataf => ALT_INV_bcd11(3),
	combout => \Mux25~0_combout\);

-- Location: LABCELL_X39_Y1_N36
\Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = ( bcd11(3) & ( (bcd11(2)) # (bcd11(1)) ) ) # ( !bcd11(3) & ( (!bcd11(1) & (!bcd11(0) $ (!bcd11(2)))) # (bcd11(1) & (bcd11(0) & bcd11(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100100101001001010010010100101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcd11(1),
	datab => ALT_INV_bcd11(0),
	datac => ALT_INV_bcd11(2),
	dataf => ALT_INV_bcd11(3),
	combout => \Mux24~0_combout\);

-- Location: LABCELL_X39_Y1_N39
\Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = ( bcd11(3) & ( (bcd11(2)) # (bcd11(1)) ) ) # ( !bcd11(3) & ( (bcd11(1) & (!bcd11(0) & !bcd11(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcd11(1),
	datac => ALT_INV_bcd11(0),
	datad => ALT_INV_bcd11(2),
	dataf => ALT_INV_bcd11(3),
	combout => \Mux23~0_combout\);

-- Location: LABCELL_X39_Y1_N12
\Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = ( bcd11(3) & ( (bcd11(1)) # (bcd11(2)) ) ) # ( !bcd11(3) & ( (bcd11(2) & (!bcd11(1) $ (!bcd11(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bcd11(2),
	datac => ALT_INV_bcd11(1),
	datad => ALT_INV_bcd11(0),
	dataf => ALT_INV_bcd11(3),
	combout => \Mux22~0_combout\);

-- Location: LABCELL_X39_Y1_N30
\Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = ( bcd11(3) & ( (bcd11(2)) # (bcd11(1)) ) ) # ( !bcd11(3) & ( (!bcd11(1) & (!bcd11(0) $ (!bcd11(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bcd11(0),
	datac => ALT_INV_bcd11(1),
	datad => ALT_INV_bcd11(2),
	dataf => ALT_INV_bcd11(3),
	combout => \Mux21~0_combout\);

-- Location: MLABCELL_X37_Y1_N54
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( bcd00(2) & ( (!bcd00(3) & ((!bcd00(0)) # (!bcd00(1)))) ) ) # ( !bcd00(2) & ( !bcd00(1) $ (!bcd00(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcd00(0),
	datab => ALT_INV_bcd00(1),
	datac => ALT_INV_bcd00(3),
	dataf => ALT_INV_bcd00(2),
	combout => \Mux6~0_combout\);

-- Location: MLABCELL_X37_Y1_N57
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( bcd00(2) & ( ((bcd00(1) & bcd00(0))) # (bcd00(3)) ) ) # ( !bcd00(2) & ( ((bcd00(0) & !bcd00(3))) # (bcd00(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100110011001111110011001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bcd00(1),
	datac => ALT_INV_bcd00(0),
	datad => ALT_INV_bcd00(3),
	dataf => ALT_INV_bcd00(2),
	combout => \Mux5~0_combout\);

-- Location: MLABCELL_X37_Y1_N18
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( bcd00(0) ) # ( !bcd00(0) & ( (!bcd00(1) & ((bcd00(2)))) # (bcd00(1) & (bcd00(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bcd00(1),
	datac => ALT_INV_bcd00(3),
	datad => ALT_INV_bcd00(2),
	dataf => ALT_INV_bcd00(0),
	combout => \Mux4~0_combout\);

-- Location: MLABCELL_X37_Y1_N9
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( bcd00(3) & ( (bcd00(1)) # (bcd00(2)) ) ) # ( !bcd00(3) & ( (!bcd00(2) & (bcd00(0) & !bcd00(1))) # (bcd00(2) & (!bcd00(0) $ (bcd00(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101100001010111110101111101100001011000010101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcd00(2),
	datab => ALT_INV_bcd00(0),
	datac => ALT_INV_bcd00(1),
	datae => ALT_INV_bcd00(3),
	combout => \Mux3~0_combout\);

-- Location: MLABCELL_X37_Y1_N15
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( bcd00(1) & ( bcd00(2) & ( bcd00(3) ) ) ) # ( !bcd00(1) & ( bcd00(2) & ( bcd00(3) ) ) ) # ( bcd00(1) & ( !bcd00(2) & ( (!bcd00(0)) # (bcd00(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcd00(3),
	datac => ALT_INV_bcd00(0),
	datae => ALT_INV_bcd00(1),
	dataf => ALT_INV_bcd00(2),
	combout => \Mux2~0_combout\);

-- Location: MLABCELL_X37_Y1_N24
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( bcd00(0) & ( (!bcd00(1) & (bcd00(2))) # (bcd00(1) & ((bcd00(3)))) ) ) # ( !bcd00(0) & ( (!bcd00(1) & (bcd00(2) & bcd00(3))) # (bcd00(1) & ((bcd00(3)) # (bcd00(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bcd00(1),
	datac => ALT_INV_bcd00(2),
	datad => ALT_INV_bcd00(3),
	dataf => ALT_INV_bcd00(0),
	combout => \Mux1~0_combout\);

-- Location: MLABCELL_X37_Y1_N21
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( bcd00(0) & ( !bcd00(3) $ (((bcd00(2)) # (bcd00(1)))) ) ) # ( !bcd00(0) & ( (!bcd00(1) & (bcd00(2))) # (bcd00(1) & ((bcd00(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111111000000001111111100000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bcd00(1),
	datac => ALT_INV_bcd00(2),
	datad => ALT_INV_bcd00(3),
	dataf => ALT_INV_bcd00(0),
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X39_Y1_N21
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( bcd01(1) & ( (!bcd01(3) & ((!bcd01(2)) # (!bcd01(0)))) ) ) # ( !bcd01(1) & ( !bcd01(2) $ (!bcd01(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101011111010000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcd01(2),
	datac => ALT_INV_bcd01(0),
	datad => ALT_INV_bcd01(3),
	dataf => ALT_INV_bcd01(1),
	combout => \Mux13~0_combout\);

-- Location: LABCELL_X39_Y1_N45
\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( bcd01(3) & ( (bcd01(2)) # (bcd01(1)) ) ) # ( !bcd01(3) & ( (!bcd01(1) & (bcd01(0) & !bcd01(2))) # (bcd01(1) & ((!bcd01(2)) # (bcd01(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000101010111110000010101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcd01(1),
	datac => ALT_INV_bcd01(0),
	datad => ALT_INV_bcd01(2),
	dataf => ALT_INV_bcd01(3),
	combout => \Mux12~0_combout\);

-- Location: LABCELL_X39_Y1_N24
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( bcd01(3) & ( ((bcd01(2)) # (bcd01(0))) # (bcd01(1)) ) ) # ( !bcd01(3) & ( ((!bcd01(1) & bcd01(2))) # (bcd01(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100111011001110110011101101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcd01(1),
	datab => ALT_INV_bcd01(0),
	datac => ALT_INV_bcd01(2),
	dataf => ALT_INV_bcd01(3),
	combout => \Mux11~0_combout\);

-- Location: LABCELL_X39_Y1_N42
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( bcd01(3) & ( (bcd01(2)) # (bcd01(1)) ) ) # ( !bcd01(3) & ( (!bcd01(1) & (!bcd01(2) $ (!bcd01(0)))) # (bcd01(1) & (bcd01(2) & bcd01(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100101000010101010010101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcd01(1),
	datac => ALT_INV_bcd01(2),
	datad => ALT_INV_bcd01(0),
	dataf => ALT_INV_bcd01(3),
	combout => \Mux10~0_combout\);

-- Location: LABCELL_X39_Y1_N48
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (!bcd01(2) & (bcd01(1) & ((!bcd01(0)) # (bcd01(3))))) # (bcd01(2) & (((bcd01(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001111000001011000111100000101100011110000010110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcd01(2),
	datab => ALT_INV_bcd01(0),
	datac => ALT_INV_bcd01(3),
	datad => ALT_INV_bcd01(1),
	combout => \Mux9~0_combout\);

-- Location: LABCELL_X39_Y1_N27
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( bcd01(3) & ( (bcd01(2)) # (bcd01(1)) ) ) # ( !bcd01(3) & ( (bcd01(2) & (!bcd01(1) $ (!bcd01(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcd01(1),
	datab => ALT_INV_bcd01(0),
	datad => ALT_INV_bcd01(2),
	dataf => ALT_INV_bcd01(3),
	combout => \Mux8~0_combout\);

-- Location: LABCELL_X39_Y1_N51
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( bcd01(1) & ( bcd01(3) ) ) # ( !bcd01(1) & ( !bcd01(2) $ (((!bcd01(0)) # (bcd01(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001010101011001100101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bcd01(2),
	datab => ALT_INV_bcd01(0),
	datad => ALT_INV_bcd01(3),
	dataf => ALT_INV_bcd01(1),
	combout => \Mux7~0_combout\);

-- Location: IOIBUF_X11_Y0_N52
\Q1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Q1,
	o => \Q1~input_o\);

-- Location: LABCELL_X12_Y43_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


