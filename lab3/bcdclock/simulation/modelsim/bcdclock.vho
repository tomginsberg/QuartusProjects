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

-- DATE "02/22/2019 19:21:09"

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

ENTITY 	bcdclock IS
    PORT (
	SETMODE : IN std_logic;
	UPSEC : IN std_logic;
	UPMIN : IN std_logic;
	UPHOUR : IN std_logic;
	CLK_50 : IN std_logic;
	SEC0 : OUT std_logic_vector(6 DOWNTO 0);
	SEC1 : OUT std_logic_vector(6 DOWNTO 0);
	MIN0 : OUT std_logic_vector(6 DOWNTO 0);
	MIN1 : OUT std_logic_vector(6 DOWNTO 0);
	HOUR0 : OUT std_logic_vector(6 DOWNTO 0);
	HOUR1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END bcdclock;

-- Design Ports Information
-- SEC0[0]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC0[1]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC0[2]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC0[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC0[4]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC0[5]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC0[6]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC1[0]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC1[1]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC1[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC1[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC1[4]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC1[5]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC1[6]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MIN0[0]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MIN0[1]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MIN0[2]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MIN0[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MIN0[4]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MIN0[5]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MIN0[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MIN1[0]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MIN1[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MIN1[2]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MIN1[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MIN1[4]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MIN1[5]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MIN1[6]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HOUR0[0]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HOUR0[1]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HOUR0[2]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HOUR0[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HOUR0[4]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HOUR0[5]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HOUR0[6]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HOUR1[0]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HOUR1[1]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HOUR1[2]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HOUR1[3]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HOUR1[4]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HOUR1[5]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HOUR1[6]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UPSEC	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SETMODE	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UPMIN	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UPHOUR	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_50	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bcdclock IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SETMODE : std_logic;
SIGNAL ww_UPSEC : std_logic;
SIGNAL ww_UPMIN : std_logic;
SIGNAL ww_UPHOUR : std_logic;
SIGNAL ww_CLK_50 : std_logic;
SIGNAL ww_SEC0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SEC1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_MIN0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_MIN1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HOUR0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HOUR1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \UPSEC~input_o\ : std_logic;
SIGNAL \SETMODE~input_o\ : std_logic;
SIGNAL \CLK_50~input_o\ : std_logic;
SIGNAL \CLK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \counter[16]~DUPLICATE_q\ : std_logic;
SIGNAL \counter[22]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \counter[28]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \counter[26]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \counter[14]~DUPLICATE_q\ : std_logic;
SIGNAL \counter[13]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \counter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \counter[10]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \counter[15]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \counter[20]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \counter[21]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \clk_sec~0_combout\ : std_logic;
SIGNAL \clk_sec~q\ : std_logic;
SIGNAL \clk_sec_master~combout\ : std_logic;
SIGNAL \second~0_combout\ : std_logic;
SIGNAL \second[0]~DUPLICATE_q\ : std_logic;
SIGNAL \second~5_combout\ : std_logic;
SIGNAL \second~3_combout\ : std_logic;
SIGNAL \second~4_combout\ : std_logic;
SIGNAL \second~2_combout\ : std_logic;
SIGNAL \second~1_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \UPMIN~input_o\ : std_logic;
SIGNAL \clk_min_master~combout\ : std_logic;
SIGNAL \minute[0]~DUPLICATE_q\ : std_logic;
SIGNAL \minute~2_combout\ : std_logic;
SIGNAL \minute~5_combout\ : std_logic;
SIGNAL \minute~3_combout\ : std_logic;
SIGNAL \minute~1_combout\ : std_logic;
SIGNAL \minute~0_combout\ : std_logic;
SIGNAL \minute~4_combout\ : std_logic;
SIGNAL \minute[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \UPHOUR~input_o\ : std_logic;
SIGNAL \clk_hour_master~combout\ : std_logic;
SIGNAL \hour~2_combout\ : std_logic;
SIGNAL \hour[1]~feeder_combout\ : std_logic;
SIGNAL \hour~0_combout\ : std_logic;
SIGNAL \hour~3_combout\ : std_logic;
SIGNAL \hour~1_combout\ : std_logic;
SIGNAL \Mux53~0_combout\ : std_logic;
SIGNAL \Mux52~0_combout\ : std_logic;
SIGNAL \Mux51~0_combout\ : std_logic;
SIGNAL \Mux50~0_combout\ : std_logic;
SIGNAL \Mux49~0_combout\ : std_logic;
SIGNAL \Mux48~0_combout\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL counter : std_logic_vector(28 DOWNTO 0);
SIGNAL second : std_logic_vector(5 DOWNTO 0);
SIGNAL minute : std_logic_vector(5 DOWNTO 0);
SIGNAL hour : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_minute[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_minute[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_second[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[26]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[28]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[14]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[13]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[10]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[15]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[20]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[21]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[22]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[16]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_UPHOUR~input_o\ : std_logic;
SIGNAL \ALT_INV_UPMIN~input_o\ : std_logic;
SIGNAL \ALT_INV_SETMODE~input_o\ : std_logic;
SIGNAL \ALT_INV_UPSEC~input_o\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_clk_sec~q\ : std_logic;
SIGNAL \ALT_INV_hour~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux53~0_combout\ : std_logic;
SIGNAL ALT_INV_hour : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux39~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL ALT_INV_minute : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL ALT_INV_second : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL ALT_INV_counter : std_logic_vector(28 DOWNTO 0);

BEGIN

ww_SETMODE <= SETMODE;
ww_UPSEC <= UPSEC;
ww_UPMIN <= UPMIN;
ww_UPHOUR <= UPHOUR;
ww_CLK_50 <= CLK_50;
SEC0 <= ww_SEC0;
SEC1 <= ww_SEC1;
MIN0 <= ww_MIN0;
MIN1 <= ww_MIN1;
HOUR0 <= ww_HOUR0;
HOUR1 <= ww_HOUR1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_minute[1]~DUPLICATE_q\ <= NOT \minute[1]~DUPLICATE_q\;
\ALT_INV_minute[0]~DUPLICATE_q\ <= NOT \minute[0]~DUPLICATE_q\;
\ALT_INV_second[0]~DUPLICATE_q\ <= NOT \second[0]~DUPLICATE_q\;
\ALT_INV_counter[26]~DUPLICATE_q\ <= NOT \counter[26]~DUPLICATE_q\;
\ALT_INV_counter[28]~DUPLICATE_q\ <= NOT \counter[28]~DUPLICATE_q\;
\ALT_INV_counter[14]~DUPLICATE_q\ <= NOT \counter[14]~DUPLICATE_q\;
\ALT_INV_counter[12]~DUPLICATE_q\ <= NOT \counter[12]~DUPLICATE_q\;
\ALT_INV_counter[13]~DUPLICATE_q\ <= NOT \counter[13]~DUPLICATE_q\;
\ALT_INV_counter[6]~DUPLICATE_q\ <= NOT \counter[6]~DUPLICATE_q\;
\ALT_INV_counter[10]~DUPLICATE_q\ <= NOT \counter[10]~DUPLICATE_q\;
\ALT_INV_counter[15]~DUPLICATE_q\ <= NOT \counter[15]~DUPLICATE_q\;
\ALT_INV_counter[20]~DUPLICATE_q\ <= NOT \counter[20]~DUPLICATE_q\;
\ALT_INV_counter[21]~DUPLICATE_q\ <= NOT \counter[21]~DUPLICATE_q\;
\ALT_INV_counter[22]~DUPLICATE_q\ <= NOT \counter[22]~DUPLICATE_q\;
\ALT_INV_counter[16]~DUPLICATE_q\ <= NOT \counter[16]~DUPLICATE_q\;
\ALT_INV_UPHOUR~input_o\ <= NOT \UPHOUR~input_o\;
\ALT_INV_UPMIN~input_o\ <= NOT \UPMIN~input_o\;
\ALT_INV_SETMODE~input_o\ <= NOT \SETMODE~input_o\;
\ALT_INV_UPSEC~input_o\ <= NOT \UPSEC~input_o\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_clk_sec~q\ <= NOT \clk_sec~q\;
\ALT_INV_hour~2_combout\ <= NOT \hour~2_combout\;
\ALT_INV_Mux53~0_combout\ <= NOT \Mux53~0_combout\;
ALT_INV_hour(0) <= NOT hour(0);
ALT_INV_hour(1) <= NOT hour(1);
ALT_INV_hour(2) <= NOT hour(2);
ALT_INV_hour(3) <= NOT hour(3);
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
\ALT_INV_Mux39~0_combout\ <= NOT \Mux39~0_combout\;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;
\ALT_INV_Mux11~0_combout\ <= NOT \Mux11~0_combout\;
\ALT_INV_Mux12~0_combout\ <= NOT \Mux12~0_combout\;
ALT_INV_minute(1) <= NOT minute(1);
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
ALT_INV_minute(3) <= NOT minute(3);
ALT_INV_minute(4) <= NOT minute(4);
ALT_INV_minute(5) <= NOT minute(5);
ALT_INV_minute(2) <= NOT minute(2);
ALT_INV_minute(0) <= NOT minute(0);
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux25~0_combout\ <= NOT \Mux25~0_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
ALT_INV_second(1) <= NOT second(1);
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
ALT_INV_second(4) <= NOT second(4);
ALT_INV_second(3) <= NOT second(3);
ALT_INV_second(5) <= NOT second(5);
ALT_INV_second(2) <= NOT second(2);
ALT_INV_second(0) <= NOT second(0);
ALT_INV_counter(0) <= NOT counter(0);
ALT_INV_counter(1) <= NOT counter(1);
ALT_INV_counter(2) <= NOT counter(2);
ALT_INV_counter(3) <= NOT counter(3);
ALT_INV_counter(4) <= NOT counter(4);
ALT_INV_counter(5) <= NOT counter(5);
ALT_INV_counter(25) <= NOT counter(25);
ALT_INV_counter(26) <= NOT counter(26);
ALT_INV_counter(27) <= NOT counter(27);
ALT_INV_counter(28) <= NOT counter(28);
ALT_INV_counter(14) <= NOT counter(14);
ALT_INV_counter(11) <= NOT counter(11);
ALT_INV_counter(12) <= NOT counter(12);
ALT_INV_counter(13) <= NOT counter(13);
ALT_INV_counter(6) <= NOT counter(6);
ALT_INV_counter(7) <= NOT counter(7);
ALT_INV_counter(8) <= NOT counter(8);
ALT_INV_counter(9) <= NOT counter(9);
ALT_INV_counter(10) <= NOT counter(10);
ALT_INV_counter(15) <= NOT counter(15);
ALT_INV_counter(19) <= NOT counter(19);
ALT_INV_counter(20) <= NOT counter(20);
ALT_INV_counter(21) <= NOT counter(21);
ALT_INV_counter(22) <= NOT counter(22);
ALT_INV_counter(16) <= NOT counter(16);
ALT_INV_counter(17) <= NOT counter(17);
ALT_INV_counter(18) <= NOT counter(18);
ALT_INV_counter(23) <= NOT counter(23);
ALT_INV_counter(24) <= NOT counter(24);

-- Location: IOOBUF_X46_Y0_N36
\SEC0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux25~0_combout\,
	devoe => ww_devoe,
	o => ww_SEC0(0));

-- Location: IOOBUF_X50_Y0_N53
\SEC0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~0_combout\,
	devoe => ww_devoe,
	o => ww_SEC0(1));

-- Location: IOOBUF_X48_Y0_N93
\SEC0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~0_combout\,
	devoe => ww_devoe,
	o => ww_SEC0(2));

-- Location: IOOBUF_X50_Y0_N36
\SEC0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~0_combout\,
	devoe => ww_devoe,
	o => ww_SEC0(3));

-- Location: IOOBUF_X48_Y0_N76
\SEC0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~0_combout\,
	devoe => ww_devoe,
	o => ww_SEC0(4));

-- Location: IOOBUF_X51_Y0_N36
\SEC0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~0_combout\,
	devoe => ww_devoe,
	o => ww_SEC0(5));

-- Location: IOOBUF_X52_Y0_N53
\SEC0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~0_combout\,
	devoe => ww_devoe,
	o => ww_SEC0(6));

-- Location: IOOBUF_X51_Y0_N53
\SEC1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux32~0_combout\,
	devoe => ww_devoe,
	o => ww_SEC1(0));

-- Location: IOOBUF_X43_Y0_N53
\SEC1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~0_combout\,
	devoe => ww_devoe,
	o => ww_SEC1(1));

-- Location: IOOBUF_X38_Y0_N36
\SEC1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~0_combout\,
	devoe => ww_devoe,
	o => ww_SEC1(2));

-- Location: IOOBUF_X43_Y0_N36
\SEC1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~0_combout\,
	devoe => ww_devoe,
	o => ww_SEC1(3));

-- Location: IOOBUF_X44_Y0_N53
\SEC1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~0_combout\,
	devoe => ww_devoe,
	o => ww_SEC1(4));

-- Location: IOOBUF_X40_Y0_N93
\SEC1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~0_combout\,
	devoe => ww_devoe,
	o => ww_SEC1(5));

-- Location: IOOBUF_X44_Y0_N36
\SEC1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~0_combout\,
	devoe => ww_devoe,
	o => ww_SEC1(6));

-- Location: IOOBUF_X40_Y0_N76
\MIN0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux39~0_combout\,
	devoe => ww_devoe,
	o => ww_MIN0(0));

-- Location: IOOBUF_X46_Y0_N53
\MIN0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux38~0_combout\,
	devoe => ww_devoe,
	o => ww_MIN0(1));

-- Location: IOOBUF_X38_Y0_N19
\MIN0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux37~0_combout\,
	devoe => ww_devoe,
	o => ww_MIN0(2));

-- Location: IOOBUF_X36_Y0_N19
\MIN0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux36~0_combout\,
	devoe => ww_devoe,
	o => ww_MIN0(3));

-- Location: IOOBUF_X22_Y0_N53
\MIN0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux35~0_combout\,
	devoe => ww_devoe,
	o => ww_MIN0(4));

-- Location: IOOBUF_X38_Y0_N53
\MIN0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux34~0_combout\,
	devoe => ww_devoe,
	o => ww_MIN0(5));

-- Location: IOOBUF_X48_Y0_N42
\MIN0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => ww_MIN0(6));

-- Location: IOOBUF_X51_Y0_N19
\MIN1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux46~0_combout\,
	devoe => ww_devoe,
	o => ww_MIN1(0));

-- Location: IOOBUF_X51_Y0_N2
\MIN1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux45~0_combout\,
	devoe => ww_devoe,
	o => ww_MIN1(1));

-- Location: IOOBUF_X52_Y0_N2
\MIN1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux44~0_combout\,
	devoe => ww_devoe,
	o => ww_MIN1(2));

-- Location: IOOBUF_X46_Y0_N19
\MIN1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux43~0_combout\,
	devoe => ww_devoe,
	o => ww_MIN1(3));

-- Location: IOOBUF_X40_Y0_N42
\MIN1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux42~0_combout\,
	devoe => ww_devoe,
	o => ww_MIN1(4));

-- Location: IOOBUF_X46_Y0_N2
\MIN1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux41~0_combout\,
	devoe => ww_devoe,
	o => ww_MIN1(5));

-- Location: IOOBUF_X40_Y0_N59
\MIN1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux40~0_combout\,
	devoe => ww_devoe,
	o => ww_MIN1(6));

-- Location: IOOBUF_X29_Y0_N19
\HOUR0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux53~0_combout\,
	devoe => ww_devoe,
	o => ww_HOUR0(0));

-- Location: IOOBUF_X36_Y0_N2
\HOUR0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux52~0_combout\,
	devoe => ww_devoe,
	o => ww_HOUR0(1));

-- Location: IOOBUF_X43_Y0_N2
\HOUR0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux51~0_combout\,
	devoe => ww_devoe,
	o => ww_HOUR0(2));

-- Location: IOOBUF_X52_Y0_N19
\HOUR0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux50~0_combout\,
	devoe => ww_devoe,
	o => ww_HOUR0(3));

-- Location: IOOBUF_X44_Y0_N19
\HOUR0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux49~0_combout\,
	devoe => ww_devoe,
	o => ww_HOUR0(4));

-- Location: IOOBUF_X48_Y0_N59
\HOUR0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux48~0_combout\,
	devoe => ww_devoe,
	o => ww_HOUR0(5));

-- Location: IOOBUF_X52_Y0_N36
\HOUR0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux47~0_combout\,
	devoe => ww_devoe,
	o => ww_HOUR0(6));

-- Location: IOOBUF_X44_Y0_N2
\HOUR1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HOUR1(0));

-- Location: IOOBUF_X0_Y21_N39
\HOUR1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~0_combout\,
	devoe => ww_devoe,
	o => ww_HOUR1(1));

-- Location: IOOBUF_X0_Y21_N56
\HOUR1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~0_combout\,
	devoe => ww_devoe,
	o => ww_HOUR1(2));

-- Location: IOOBUF_X50_Y0_N19
\HOUR1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~0_combout\,
	devoe => ww_devoe,
	o => ww_HOUR1(3));

-- Location: IOOBUF_X43_Y0_N19
\HOUR1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HOUR1(4));

-- Location: IOOBUF_X22_Y0_N19
\HOUR1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HOUR1(5));

-- Location: IOOBUF_X29_Y0_N2
\HOUR1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~0_combout\,
	devoe => ww_devoe,
	o => ww_HOUR1(6));

-- Location: IOIBUF_X10_Y0_N92
\UPSEC~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UPSEC,
	o => \UPSEC~input_o\);

-- Location: IOIBUF_X33_Y0_N41
\SETMODE~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SETMODE,
	o => \SETMODE~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\CLK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_50,
	o => \CLK_50~input_o\);

-- Location: CLKCTRL_G6
\CLK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_50~input_o\,
	outclk => \CLK_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X32_Y2_N30
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( counter(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~114\ = CARRY(( counter(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(0),
	cin => GND,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: FF_X32_Y1_N19
\counter[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[16]~DUPLICATE_q\);

-- Location: FF_X32_Y1_N32
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: FF_X32_Y1_N37
\counter[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[22]~DUPLICATE_q\);

-- Location: FF_X32_Y1_N34
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LABCELL_X32_Y2_N9
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( counter(19) & ( (counter(20) & (\counter[22]~DUPLICATE_q\ & counter(21))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(20),
	datac => \ALT_INV_counter[22]~DUPLICATE_q\,
	datad => ALT_INV_counter(21),
	dataf => ALT_INV_counter(19),
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X32_Y2_N12
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( \LessThan0~0_combout\ & ( (!counter(23) & ((!counter(18)) # ((!counter(17) & !\counter[16]~DUPLICATE_q\)))) ) ) # ( !\LessThan0~0_combout\ & ( !counter(23) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010100000001010101010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(23),
	datab => ALT_INV_counter(17),
	datac => \ALT_INV_counter[16]~DUPLICATE_q\,
	datad => ALT_INV_counter(18),
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LABCELL_X32_Y1_N42
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( counter(24) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~2\ = CARRY(( counter(24) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(24),
	cin => \Add0~6\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: LABCELL_X32_Y1_N45
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( counter(25) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~90\ = CARRY(( counter(25) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(25),
	cin => \Add0~2\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X32_Y1_N47
\counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(25));

-- Location: FF_X32_Y1_N55
\counter[28]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[28]~DUPLICATE_q\);

-- Location: LABCELL_X32_Y1_N48
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( counter(26) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~86\ = CARRY(( counter(26) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(26),
	cin => \Add0~90\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X32_Y1_N50
\counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(26));

-- Location: LABCELL_X32_Y1_N51
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( counter(27) ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~82\ = CARRY(( counter(27) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(27),
	cin => \Add0~86\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X32_Y1_N52
\counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(27));

-- Location: LABCELL_X32_Y1_N54
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( \counter[28]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter[28]~DUPLICATE_q\,
	cin => \Add0~82\,
	sumout => \Add0~77_sumout\);

-- Location: FF_X32_Y1_N56
\counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(28));

-- Location: FF_X32_Y1_N49
\counter[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[26]~DUPLICATE_q\);

-- Location: LABCELL_X32_Y2_N3
\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( !counter(27) & ( (!counter(25) & (!counter(28) & !\counter[26]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(25),
	datac => ALT_INV_counter(28),
	datad => \ALT_INV_counter[26]~DUPLICATE_q\,
	dataf => ALT_INV_counter(27),
	combout => \LessThan0~5_combout\);

-- Location: FF_X32_Y1_N16
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: FF_X32_Y1_N13
\counter[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[14]~DUPLICATE_q\);

-- Location: FF_X32_Y1_N8
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: FF_X32_Y1_N10
\counter[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[13]~DUPLICATE_q\);

-- Location: LABCELL_X32_Y2_N0
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( \counter[13]~DUPLICATE_q\ & ( (\counter[14]~DUPLICATE_q\ & (counter(12) & counter(11))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_counter[14]~DUPLICATE_q\,
	datac => ALT_INV_counter(12),
	datad => ALT_INV_counter(11),
	dataf => \ALT_INV_counter[13]~DUPLICATE_q\,
	combout => \LessThan0~3_combout\);

-- Location: FF_X32_Y2_N28
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	asdata => \Add0~57_sumout\,
	sclr => \LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: FF_X32_Y1_N1
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LABCELL_X32_Y2_N18
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( !counter(10) & ( (!counter(7) & (!counter(6) & (!counter(8) & !counter(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(7),
	datab => ALT_INV_counter(6),
	datac => ALT_INV_counter(8),
	datad => ALT_INV_counter(9),
	dataf => ALT_INV_counter(10),
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X32_Y2_N15
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( \LessThan0~2_combout\ & ( (!counter(23) & (!counter(17) & !counter(15))) ) ) # ( !\LessThan0~2_combout\ & ( (!counter(23) & (!counter(17) & (!counter(15) & !\LessThan0~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(23),
	datab => ALT_INV_counter(17),
	datac => ALT_INV_counter(15),
	datad => \ALT_INV_LessThan0~3_combout\,
	dataf => \ALT_INV_LessThan0~2_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LABCELL_X32_Y2_N6
\LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ( \LessThan0~4_combout\ & ( !\LessThan0~5_combout\ ) ) # ( !\LessThan0~4_combout\ & ( (!\LessThan0~5_combout\) # ((!\LessThan0~1_combout\ & counter(24))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111100111100001111110011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_LessThan0~5_combout\,
	datad => ALT_INV_counter(24),
	dataf => \ALT_INV_LessThan0~4_combout\,
	combout => \LessThan0~6_combout\);

-- Location: FF_X32_Y2_N50
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	asdata => \Add0~113_sumout\,
	sclr => \LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LABCELL_X32_Y2_N33
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( counter(1) ) + ( GND ) + ( \Add0~114\ ))
-- \Add0~110\ = CARRY(( counter(1) ) + ( GND ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(1),
	cin => \Add0~114\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: FF_X32_Y2_N34
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~109_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LABCELL_X32_Y2_N36
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( counter(2) ) + ( GND ) + ( \Add0~110\ ))
-- \Add0~106\ = CARRY(( counter(2) ) + ( GND ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(2),
	cin => \Add0~110\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X32_Y2_N38
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~105_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LABCELL_X32_Y2_N39
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( counter(3) ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~102\ = CARRY(( counter(3) ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(3),
	cin => \Add0~106\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X32_Y2_N41
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LABCELL_X32_Y2_N42
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( counter(4) ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~98\ = CARRY(( counter(4) ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(4),
	cin => \Add0~102\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X32_Y2_N43
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LABCELL_X32_Y2_N45
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( counter(5) ) + ( GND ) + ( \Add0~98\ ))
-- \Add0~94\ = CARRY(( counter(5) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(5),
	cin => \Add0~98\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X32_Y2_N47
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LABCELL_X32_Y2_N48
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \counter[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~94\ ))
-- \Add0~58\ = CARRY(( \counter[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter[6]~DUPLICATE_q\,
	cin => \Add0~94\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X32_Y2_N29
\counter[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	asdata => \Add0~57_sumout\,
	sclr => \LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[6]~DUPLICATE_q\);

-- Location: LABCELL_X32_Y2_N51
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( counter(7) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~54\ = CARRY(( counter(7) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(7),
	cin => \Add0~58\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X32_Y2_N53
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LABCELL_X32_Y2_N54
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( counter(8) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~50\ = CARRY(( counter(8) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(8),
	cin => \Add0~54\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X32_Y2_N56
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LABCELL_X32_Y2_N57
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( counter(9) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~46\ = CARRY(( counter(9) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(9),
	cin => \Add0~50\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X32_Y2_N59
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LABCELL_X32_Y1_N0
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \counter[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~42\ = CARRY(( \counter[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter[10]~DUPLICATE_q\,
	cin => \Add0~46\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X32_Y1_N2
\counter[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[10]~DUPLICATE_q\);

-- Location: LABCELL_X32_Y1_N3
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( counter(11) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~70\ = CARRY(( counter(11) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(11),
	cin => \Add0~42\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X32_Y1_N5
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LABCELL_X32_Y1_N6
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( \counter[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~66\ = CARRY(( \counter[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter[12]~DUPLICATE_q\,
	cin => \Add0~70\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X32_Y1_N7
\counter[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[12]~DUPLICATE_q\);

-- Location: LABCELL_X32_Y1_N9
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( counter(13) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~62\ = CARRY(( counter(13) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(13),
	cin => \Add0~66\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X32_Y1_N11
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LABCELL_X32_Y1_N12
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( counter(14) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~74\ = CARRY(( counter(14) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(14),
	cin => \Add0~62\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X32_Y1_N14
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LABCELL_X32_Y1_N15
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \counter[15]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~38\ = CARRY(( \counter[15]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_counter[15]~DUPLICATE_q\,
	cin => \Add0~74\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X32_Y1_N17
\counter[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[15]~DUPLICATE_q\);

-- Location: LABCELL_X32_Y1_N18
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( counter(16) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~18\ = CARRY(( counter(16) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(16),
	cin => \Add0~38\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X32_Y1_N20
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LABCELL_X32_Y1_N21
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( counter(17) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( counter(17) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(17),
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X32_Y1_N23
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LABCELL_X32_Y1_N24
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( counter(18) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~10\ = CARRY(( counter(18) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(18),
	cin => \Add0~14\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X32_Y1_N26
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LABCELL_X32_Y1_N27
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( counter(19) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~34\ = CARRY(( counter(19) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(19),
	cin => \Add0~10\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X32_Y1_N28
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LABCELL_X32_Y1_N30
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \counter[20]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~30\ = CARRY(( \counter[20]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_counter[20]~DUPLICATE_q\,
	cin => \Add0~34\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X32_Y1_N31
\counter[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[20]~DUPLICATE_q\);

-- Location: LABCELL_X32_Y1_N33
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \counter[21]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~26\ = CARRY(( \counter[21]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter[21]~DUPLICATE_q\,
	cin => \Add0~30\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X32_Y1_N35
\counter[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[21]~DUPLICATE_q\);

-- Location: LABCELL_X32_Y1_N36
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( counter(22) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~22\ = CARRY(( counter(22) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(22),
	cin => \Add0~26\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X32_Y1_N38
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: LABCELL_X32_Y1_N39
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( counter(23) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~6\ = CARRY(( counter(23) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(23),
	cin => \Add0~22\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X32_Y1_N40
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: FF_X32_Y1_N44
\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

-- Location: LABCELL_X32_Y2_N24
\clk_sec~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_sec~0_combout\ = ( \clk_sec~q\ & ( \LessThan0~4_combout\ & ( \LessThan0~5_combout\ ) ) ) # ( !\clk_sec~q\ & ( \LessThan0~4_combout\ & ( !\LessThan0~5_combout\ ) ) ) # ( \clk_sec~q\ & ( !\LessThan0~4_combout\ & ( (\LessThan0~5_combout\ & 
-- ((!counter(24)) # (\LessThan0~1_combout\))) ) ) ) # ( !\clk_sec~q\ & ( !\LessThan0~4_combout\ & ( (!\LessThan0~5_combout\) # ((counter(24) & !\LessThan0~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110000000011000000111111110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(24),
	datac => \ALT_INV_LessThan0~5_combout\,
	datad => \ALT_INV_LessThan0~1_combout\,
	datae => \ALT_INV_clk_sec~q\,
	dataf => \ALT_INV_LessThan0~4_combout\,
	combout => \clk_sec~0_combout\);

-- Location: FF_X32_Y2_N26
clk_sec : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \clk_sec~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_sec~q\);

-- Location: LABCELL_X32_Y2_N21
clk_sec_master : cyclonev_lcell_comb
-- Equation(s):
-- \clk_sec_master~combout\ = LCELL(( \clk_sec~q\ & ( (!\SETMODE~input_o\) # (\UPSEC~input_o\) ) ) # ( !\clk_sec~q\ & ( (\UPSEC~input_o\ & \SETMODE~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_UPSEC~input_o\,
	datad => \ALT_INV_SETMODE~input_o\,
	dataf => \ALT_INV_clk_sec~q\,
	combout => \clk_sec_master~combout\);

-- Location: LABCELL_X31_Y2_N24
\second~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \second~0_combout\ = ( second(2) & ( (!\second[0]~DUPLICATE_q\ & ((!second(4)) # ((!second(5)) # (!second(3))))) ) ) # ( !second(2) & ( !\second[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110010001100110011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_second(4),
	datab => \ALT_INV_second[0]~DUPLICATE_q\,
	datac => ALT_INV_second(5),
	datad => ALT_INV_second(3),
	dataf => ALT_INV_second(2),
	combout => \second~0_combout\);

-- Location: FF_X31_Y2_N49
\second[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_sec_master~combout\,
	asdata => \second~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \second[0]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y2_N15
\second~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \second~5_combout\ = ( second(5) & ( \second[0]~DUPLICATE_q\ & ( (!second(1) & ((!second(4)) # ((!second(2)) # (!second(3))))) ) ) ) # ( !second(5) & ( \second[0]~DUPLICATE_q\ & ( !second(1) ) ) ) # ( second(5) & ( !\second[0]~DUPLICATE_q\ & ( (second(1) 
-- & ((!second(4)) # ((!second(2)) # (!second(3))))) ) ) ) # ( !second(5) & ( !\second[0]~DUPLICATE_q\ & ( second(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001011001100110011001100110011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_second(4),
	datab => ALT_INV_second(1),
	datac => ALT_INV_second(2),
	datad => ALT_INV_second(3),
	datae => ALT_INV_second(5),
	dataf => \ALT_INV_second[0]~DUPLICATE_q\,
	combout => \second~5_combout\);

-- Location: FF_X31_Y2_N32
\second[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_sec_master~combout\,
	asdata => \second~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(1));

-- Location: LABCELL_X31_Y2_N21
\second~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \second~3_combout\ = ( second(5) & ( second(1) & ( (!second(3) & (second(2) & (\second[0]~DUPLICATE_q\))) # (second(3) & ((!second(2) & ((!\second[0]~DUPLICATE_q\) # (!second(4)))) # (second(2) & (!\second[0]~DUPLICATE_q\ & !second(4))))) ) ) ) # ( 
-- !second(5) & ( second(1) & ( !second(3) $ (((!second(2)) # (!\second[0]~DUPLICATE_q\))) ) ) ) # ( second(5) & ( !second(1) & ( (second(3) & ((!second(2)) # (!second(4)))) ) ) ) # ( !second(5) & ( !second(1) & ( second(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010100010001010110010101100101011001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_second(3),
	datab => ALT_INV_second(2),
	datac => \ALT_INV_second[0]~DUPLICATE_q\,
	datad => ALT_INV_second(4),
	datae => ALT_INV_second(5),
	dataf => ALT_INV_second(1),
	combout => \second~3_combout\);

-- Location: FF_X31_Y2_N38
\second[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_sec_master~combout\,
	asdata => \second~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(3));

-- Location: FF_X31_Y2_N50
\second[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_sec_master~combout\,
	asdata => \second~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(0));

-- Location: LABCELL_X31_Y2_N33
\second~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \second~4_combout\ = ( second(5) & ( second(1) & ( (!second(3) & (second(4))) # (second(3) & ((!second(4) & (second(2) & second(0))) # (second(4) & (!second(2) & !second(0))))) ) ) ) # ( !second(5) & ( second(1) & ( !second(4) $ (((!second(3)) # 
-- ((!second(2)) # (!second(0))))) ) ) ) # ( second(5) & ( !second(1) & ( (second(4) & ((!second(3)) # (!second(2)))) ) ) ) # ( !second(5) & ( !second(1) & ( second(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100100011001000110011001101100011001000100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_second(3),
	datab => ALT_INV_second(4),
	datac => ALT_INV_second(2),
	datad => ALT_INV_second(0),
	datae => ALT_INV_second(5),
	dataf => ALT_INV_second(1),
	combout => \second~4_combout\);

-- Location: FF_X31_Y2_N2
\second[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_sec_master~combout\,
	asdata => \second~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(4));

-- Location: LABCELL_X31_Y2_N51
\second~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \second~2_combout\ = ( second(3) & ( second(1) & ( (!second(5) & (second(4) & (second(2) & second(0)))) # (second(5) & ((!second(4)) # ((!second(2) & !second(0))))) ) ) ) # ( !second(3) & ( second(1) & ( second(5) ) ) ) # ( second(3) & ( !second(1) & ( 
-- (second(5) & ((!second(4)) # (!second(2)))) ) ) ) # ( !second(3) & ( !second(1) & ( second(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101000101010001010101010101010101010001000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_second(5),
	datab => ALT_INV_second(4),
	datac => ALT_INV_second(2),
	datad => ALT_INV_second(0),
	datae => ALT_INV_second(3),
	dataf => ALT_INV_second(1),
	combout => \second~2_combout\);

-- Location: FF_X31_Y2_N56
\second[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_sec_master~combout\,
	asdata => \second~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(5));

-- Location: LABCELL_X31_Y2_N45
\second~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \second~1_combout\ = ( second(3) & ( second(1) & ( (!second(5) & (!second(2) $ (((!second(0)))))) # (second(5) & (!second(4) & (!second(2) $ (!second(0))))) ) ) ) # ( !second(3) & ( second(1) & ( !second(2) $ (!second(0)) ) ) ) # ( second(3) & ( 
-- !second(1) & ( (second(2) & ((!second(5)) # (!second(4)))) ) ) ) # ( !second(3) & ( !second(1) & ( second(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100100011001000110011110011000011001011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_second(5),
	datab => ALT_INV_second(2),
	datac => ALT_INV_second(4),
	datad => ALT_INV_second(0),
	datae => ALT_INV_second(3),
	dataf => ALT_INV_second(1),
	combout => \second~1_combout\);

-- Location: FF_X31_Y2_N8
\second[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_sec_master~combout\,
	asdata => \second~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(2));

-- Location: LABCELL_X31_Y2_N36
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \second[0]~DUPLICATE_q\ & ( (!second(2)) # ((!second(5)) # ((!second(4)) # (!second(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_second(2),
	datab => ALT_INV_second(5),
	datac => ALT_INV_second(4),
	datad => ALT_INV_second(3),
	dataf => \ALT_INV_second[0]~DUPLICATE_q\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X31_Y2_N0
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( second(5) & ( (!second(2) & ((!second(1) & (second(3) & second(4))) # (second(1) & (!second(3) & !second(4))))) # (second(2) & (!second(4) $ (((second(1) & !second(3)))))) ) ) # ( !second(5) & ( (!second(2) & (second(4) & 
-- ((!second(1)) # (second(3))))) # (second(2) & (!second(4) & ((!second(3)) # (second(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000110001010010100011000101001100101000110000110010100011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_second(2),
	datab => ALT_INV_second(1),
	datac => ALT_INV_second(3),
	datad => ALT_INV_second(4),
	dataf => ALT_INV_second(5),
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X31_Y2_N39
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( second(3) & ( (!second(4) & ((!second(5) & (second(2) & !second(1))) # (second(5) & ((second(1)))))) # (second(4) & (!second(2) & (!second(5) $ (!second(1))))) ) ) # ( !second(3) & ( (!second(5) & (!second(1) $ (((!second(4)) # 
-- (second(2)))))) # (second(5) & (!second(1) & ((!second(4)) # (second(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110010010100001111001001010001000011001010000100001100101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_second(2),
	datab => ALT_INV_second(5),
	datac => ALT_INV_second(1),
	datad => ALT_INV_second(4),
	dataf => ALT_INV_second(3),
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X31_Y2_N3
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( second(3) & ( (!second(1) & (!second(5) & (!second(2) $ (second(4))))) # (second(1) & (!second(2) & (second(5) & second(4)))) ) ) # ( !second(3) & ( (!second(2) & (second(4) & (!second(1) $ (!second(5))))) # (second(2) & (second(1) & 
-- (second(5) & !second(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100101000000000010010100010000000010000101000000001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_second(2),
	datab => ALT_INV_second(1),
	datac => ALT_INV_second(5),
	datad => ALT_INV_second(4),
	dataf => ALT_INV_second(3),
	combout => \Mux3~0_combout\);

-- Location: MLABCELL_X37_Y2_N0
\Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = ( \Mux3~0_combout\ & ( (!\Mux4~0_combout\ & !\Mux5~0_combout\) ) ) # ( !\Mux3~0_combout\ & ( (!\Mux4~0_combout\ & ((\Mux5~0_combout\))) # (\Mux4~0_combout\ & ((!\Mux6~0_combout\) # (!\Mux5~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111100000011111111110011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux6~0_combout\,
	datac => \ALT_INV_Mux4~0_combout\,
	datad => \ALT_INV_Mux5~0_combout\,
	dataf => \ALT_INV_Mux3~0_combout\,
	combout => \Mux25~0_combout\);

-- Location: MLABCELL_X37_Y2_N9
\Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = ( \Mux5~0_combout\ & ( \Mux3~0_combout\ ) ) # ( !\Mux5~0_combout\ & ( \Mux3~0_combout\ & ( \Mux4~0_combout\ ) ) ) # ( \Mux5~0_combout\ & ( !\Mux3~0_combout\ & ( (!\Mux4~0_combout\) # (\Mux6~0_combout\) ) ) ) # ( !\Mux5~0_combout\ & ( 
-- !\Mux3~0_combout\ & ( (!\Mux4~0_combout\ & \Mux6~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010101011111010111101010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux4~0_combout\,
	datac => \ALT_INV_Mux6~0_combout\,
	datae => \ALT_INV_Mux5~0_combout\,
	dataf => \ALT_INV_Mux3~0_combout\,
	combout => \Mux24~0_combout\);

-- Location: MLABCELL_X37_Y2_N48
\Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = ( \Mux3~0_combout\ & ( ((\Mux5~0_combout\) # (\Mux4~0_combout\)) # (\Mux6~0_combout\) ) ) # ( !\Mux3~0_combout\ & ( ((\Mux4~0_combout\ & !\Mux5~0_combout\)) # (\Mux6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100110011001111110011001100111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux6~0_combout\,
	datac => \ALT_INV_Mux4~0_combout\,
	datad => \ALT_INV_Mux5~0_combout\,
	dataf => \ALT_INV_Mux3~0_combout\,
	combout => \Mux23~0_combout\);

-- Location: MLABCELL_X37_Y2_N51
\Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = ( \Mux3~0_combout\ & ( (\Mux5~0_combout\) # (\Mux4~0_combout\) ) ) # ( !\Mux3~0_combout\ & ( (!\Mux4~0_combout\ & (\Mux6~0_combout\ & !\Mux5~0_combout\)) # (\Mux4~0_combout\ & (!\Mux6~0_combout\ $ (\Mux5~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101100001011000010110000101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux4~0_combout\,
	datab => \ALT_INV_Mux6~0_combout\,
	datac => \ALT_INV_Mux5~0_combout\,
	dataf => \ALT_INV_Mux3~0_combout\,
	combout => \Mux22~0_combout\);

-- Location: MLABCELL_X37_Y2_N18
\Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = ( \Mux3~0_combout\ & ( (\Mux5~0_combout\) # (\Mux4~0_combout\) ) ) # ( !\Mux3~0_combout\ & ( (!\Mux6~0_combout\ & (!\Mux4~0_combout\ & \Mux5~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux6~0_combout\,
	datac => \ALT_INV_Mux4~0_combout\,
	datad => \ALT_INV_Mux5~0_combout\,
	dataf => \ALT_INV_Mux3~0_combout\,
	combout => \Mux21~0_combout\);

-- Location: MLABCELL_X37_Y2_N21
\Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = ( \Mux3~0_combout\ & ( (\Mux5~0_combout\) # (\Mux4~0_combout\) ) ) # ( !\Mux3~0_combout\ & ( (\Mux4~0_combout\ & (!\Mux6~0_combout\ $ (!\Mux5~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux4~0_combout\,
	datab => \ALT_INV_Mux6~0_combout\,
	datac => \ALT_INV_Mux5~0_combout\,
	dataf => \ALT_INV_Mux3~0_combout\,
	combout => \Mux20~0_combout\);

-- Location: MLABCELL_X37_Y2_N36
\Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = ( \Mux3~0_combout\ & ( (\Mux5~0_combout\) # (\Mux4~0_combout\) ) ) # ( !\Mux3~0_combout\ & ( (!\Mux5~0_combout\ & (!\Mux6~0_combout\ $ (!\Mux4~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000000001111000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux6~0_combout\,
	datac => \ALT_INV_Mux4~0_combout\,
	datad => \ALT_INV_Mux5~0_combout\,
	dataf => \ALT_INV_Mux3~0_combout\,
	combout => \Mux19~0_combout\);

-- Location: LABCELL_X31_Y2_N54
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( second(5) & ( second(3) & ( (second(4) & !second(2)) ) ) ) # ( !second(5) & ( second(3) & ( (!second(4) & ((second(2)) # (second(1)))) # (second(4) & (second(1) & second(2))) ) ) ) # ( second(5) & ( !second(3) & ( (!second(4)) # 
-- ((second(2)) # (second(1))) ) ) ) # ( !second(5) & ( !second(3) & ( (second(4) & !second(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000101111111011111100101011001010110101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_second(4),
	datab => ALT_INV_second(1),
	datac => ALT_INV_second(2),
	datae => ALT_INV_second(5),
	dataf => ALT_INV_second(3),
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X31_Y2_N6
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( second(3) & ( (second(4) & !second(5)) ) ) # ( !second(3) & ( (!second(4) & (second(5))) # (second(4) & (!second(5) & second(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001100110001000100110011001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_second(4),
	datab => ALT_INV_second(5),
	datad => ALT_INV_second(2),
	dataf => ALT_INV_second(3),
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X31_Y2_N9
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (second(5) & ((!second(4) & (second(3))) # (second(4) & ((!second(3)) # (!second(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010010000100110001001000010011000100100001001100010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_second(4),
	datab => ALT_INV_second(5),
	datac => ALT_INV_second(3),
	datad => ALT_INV_second(2),
	combout => \Mux0~0_combout\);

-- Location: MLABCELL_X37_Y2_N54
\Mux32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = ( \Mux0~0_combout\ & ( (\Mux2~0_combout\ & \Mux1~0_combout\) ) ) # ( !\Mux0~0_combout\ & ( !\Mux1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~0_combout\,
	datab => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \Mux32~0_combout\);

-- Location: MLABCELL_X37_Y2_N27
\Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = ( \Mux0~0_combout\ & ( (\Mux2~0_combout\ & \Mux1~0_combout\) ) ) # ( !\Mux0~0_combout\ & ( (\Mux1~0_combout\) # (\Mux2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \Mux31~0_combout\);

-- Location: MLABCELL_X37_Y2_N39
\Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = ( \Mux0~0_combout\ & ( (!\Mux1~0_combout\) # (\Mux2~0_combout\) ) ) # ( !\Mux0~0_combout\ & ( \Mux2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \Mux30~0_combout\);

-- Location: MLABCELL_X37_Y2_N42
\Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = ( \Mux0~0_combout\ & ( !\Mux2~0_combout\ $ (\Mux1~0_combout\) ) ) # ( !\Mux0~0_combout\ & ( (\Mux2~0_combout\ & !\Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~0_combout\,
	datab => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \Mux29~0_combout\);

-- Location: MLABCELL_X37_Y2_N45
\Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = ( !\Mux0~0_combout\ & ( (!\Mux2~0_combout\ & \Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~0_combout\,
	datab => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \Mux28~0_combout\);

-- Location: LABCELL_X31_Y2_N27
\Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = ( \Mux0~0_combout\ & ( !\Mux1~0_combout\ $ (!\Mux2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux1~0_combout\,
	datad => \ALT_INV_Mux2~0_combout\,
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \Mux27~0_combout\);

-- Location: MLABCELL_X37_Y2_N57
\Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = ( \Mux0~0_combout\ & ( (!\Mux2~0_combout\ & !\Mux1~0_combout\) ) ) # ( !\Mux0~0_combout\ & ( (\Mux2~0_combout\ & !\Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~0_combout\,
	datab => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \Mux26~0_combout\);

-- Location: IOIBUF_X11_Y0_N35
\UPMIN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UPMIN,
	o => \UPMIN~input_o\);

-- Location: LABCELL_X32_Y3_N15
clk_min_master : cyclonev_lcell_comb
-- Equation(s):
-- \clk_min_master~combout\ = LCELL(( \SETMODE~input_o\ & ( \UPMIN~input_o\ ) ) # ( !\SETMODE~input_o\ & ( \clk_sec~q\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_UPMIN~input_o\,
	datad => \ALT_INV_clk_sec~q\,
	dataf => \ALT_INV_SETMODE~input_o\,
	combout => \clk_min_master~combout\);

-- Location: FF_X32_Y3_N7
\minute[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_min_master~combout\,
	asdata => \minute~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minute[0]~DUPLICATE_q\);

-- Location: LABCELL_X32_Y3_N9
\minute~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \minute~2_combout\ = ( minute(4) & ( minute(1) & ( (!minute(5) & (minute(0) & (minute(2) & minute(3)))) # (minute(5) & ((!minute(3)) # ((!minute(0) & !minute(2))))) ) ) ) # ( !minute(4) & ( minute(1) & ( minute(5) ) ) ) # ( minute(4) & ( !minute(1) & ( 
-- (minute(5) & ((!minute(2)) # (!minute(3)))) ) ) ) # ( !minute(4) & ( !minute(1) & ( minute(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101000001010101010101010101010101000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_minute(5),
	datab => ALT_INV_minute(0),
	datac => ALT_INV_minute(2),
	datad => ALT_INV_minute(3),
	datae => ALT_INV_minute(4),
	dataf => ALT_INV_minute(1),
	combout => \minute~2_combout\);

-- Location: FF_X32_Y3_N26
\minute[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_min_master~combout\,
	asdata => \minute~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(5));

-- Location: LABCELL_X32_Y3_N21
\minute~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \minute~5_combout\ = ( minute(4) & ( minute(5) & ( (!minute(2) & (!minute(1) $ ((!minute(0))))) # (minute(2) & (!minute(3) & (!minute(1) $ (!minute(0))))) ) ) ) # ( !minute(4) & ( minute(5) & ( !minute(1) $ (!minute(0)) ) ) ) # ( minute(4) & ( !minute(5) 
-- & ( !minute(1) $ (!minute(0)) ) ) ) # ( !minute(4) & ( !minute(5) & ( !minute(1) $ (!minute(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_minute(1),
	datab => ALT_INV_minute(2),
	datac => ALT_INV_minute(0),
	datad => ALT_INV_minute(3),
	datae => ALT_INV_minute(4),
	dataf => ALT_INV_minute(5),
	combout => \minute~5_combout\);

-- Location: FF_X32_Y3_N56
\minute[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_min_master~combout\,
	asdata => \minute~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(1));

-- Location: LABCELL_X32_Y3_N39
\minute~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \minute~3_combout\ = ( minute(1) & ( minute(5) & ( (!minute(4) & (minute(0) & (minute(2) & minute(3)))) # (minute(4) & ((!minute(3)) # ((!minute(0) & !minute(2))))) ) ) ) # ( !minute(1) & ( minute(5) & ( (minute(4) & ((!minute(2)) # (!minute(3)))) ) ) ) # 
-- ( minute(1) & ( !minute(5) & ( !minute(4) $ (((!minute(0)) # ((!minute(2)) # (!minute(3))))) ) ) ) # ( !minute(1) & ( !minute(5) & ( minute(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101011001010101010100000101010101000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_minute(4),
	datab => ALT_INV_minute(0),
	datac => ALT_INV_minute(2),
	datad => ALT_INV_minute(3),
	datae => ALT_INV_minute(1),
	dataf => ALT_INV_minute(5),
	combout => \minute~3_combout\);

-- Location: FF_X32_Y3_N2
\minute[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_min_master~combout\,
	asdata => \minute~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(4));

-- Location: LABCELL_X32_Y3_N45
\minute~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \minute~1_combout\ = ( minute(1) & ( minute(5) & ( (!minute(3) & (!minute(2) $ ((!minute(0))))) # (minute(3) & (!minute(4) & (!minute(2) $ (!minute(0))))) ) ) ) # ( !minute(1) & ( minute(5) & ( (minute(2) & ((!minute(3)) # (!minute(4)))) ) ) ) # ( 
-- minute(1) & ( !minute(5) & ( !minute(2) $ (!minute(0)) ) ) ) # ( !minute(1) & ( !minute(5) & ( minute(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001111000011110000110011001000100011110000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_minute(3),
	datab => ALT_INV_minute(2),
	datac => ALT_INV_minute(0),
	datad => ALT_INV_minute(4),
	datae => ALT_INV_minute(1),
	dataf => ALT_INV_minute(5),
	combout => \minute~1_combout\);

-- Location: FF_X32_Y3_N32
\minute[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_min_master~combout\,
	asdata => \minute~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(2));

-- Location: LABCELL_X32_Y3_N12
\minute~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \minute~0_combout\ = ( minute(5) & ( (!\minute[0]~DUPLICATE_q\ & ((!minute(2)) # ((!minute(3)) # (!minute(4))))) ) ) # ( !minute(5) & ( !\minute[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010001010101010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_minute[0]~DUPLICATE_q\,
	datab => ALT_INV_minute(2),
	datac => ALT_INV_minute(3),
	datad => ALT_INV_minute(4),
	dataf => ALT_INV_minute(5),
	combout => \minute~0_combout\);

-- Location: FF_X32_Y3_N8
\minute[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_min_master~combout\,
	asdata => \minute~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(0));

-- Location: LABCELL_X32_Y3_N57
\minute~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \minute~4_combout\ = ( minute(4) & ( minute(5) & ( (!minute(3) & (minute(0) & (minute(2) & minute(1)))) # (minute(3) & (!minute(2) & ((!minute(0)) # (!minute(1))))) ) ) ) # ( !minute(4) & ( minute(5) & ( !minute(3) $ (((!minute(0)) # ((!minute(2)) # 
-- (!minute(1))))) ) ) ) # ( minute(4) & ( !minute(5) & ( !minute(3) $ (((!minute(0)) # ((!minute(2)) # (!minute(1))))) ) ) ) # ( !minute(4) & ( !minute(5) & ( !minute(3) $ (((!minute(0)) # ((!minute(2)) # (!minute(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010110010101010101011001010101010101100101000001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_minute(3),
	datab => ALT_INV_minute(0),
	datac => ALT_INV_minute(2),
	datad => ALT_INV_minute(1),
	datae => ALT_INV_minute(4),
	dataf => ALT_INV_minute(5),
	combout => \minute~4_combout\);

-- Location: FF_X32_Y3_N53
\minute[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_min_master~combout\,
	asdata => \minute~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(3));

-- Location: FF_X32_Y3_N55
\minute[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_min_master~combout\,
	asdata => \minute~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minute[1]~DUPLICATE_q\);

-- Location: LABCELL_X32_Y3_N3
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( minute(2) & ( (!minute(3) & (!minute(4) $ (((minute(5) & \minute[1]~DUPLICATE_q\))))) # (minute(3) & (!minute(4) & ((\minute[1]~DUPLICATE_q\) # (minute(5))))) ) ) # ( !minute(2) & ( (!minute(3) & ((!minute(5) & (minute(4) & 
-- !\minute[1]~DUPLICATE_q\)) # (minute(5) & (!minute(4) & \minute[1]~DUPLICATE_q\)))) # (minute(3) & (minute(4) & ((!minute(5)) # (!\minute[1]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100100100000011010010010010110000110100101011000011010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_minute(3),
	datab => ALT_INV_minute(5),
	datac => ALT_INV_minute(4),
	datad => \ALT_INV_minute[1]~DUPLICATE_q\,
	dataf => ALT_INV_minute(2),
	combout => \Mux11~0_combout\);

-- Location: LABCELL_X32_Y3_N27
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( minute(2) & ( (\minute[0]~DUPLICATE_q\ & ((!minute(3)) # ((!minute(4)) # (!minute(5))))) ) ) # ( !minute(2) & ( \minute[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111100000000011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_minute(3),
	datab => ALT_INV_minute(4),
	datac => ALT_INV_minute(5),
	datad => \ALT_INV_minute[0]~DUPLICATE_q\,
	dataf => ALT_INV_minute(2),
	combout => \Mux13~0_combout\);

-- Location: LABCELL_X32_Y3_N0
\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( \minute[1]~DUPLICATE_q\ & ( (!minute(5) & (!minute(3) $ (((!minute(2) & minute(4)))))) # (minute(5) & (minute(3) & ((!minute(4))))) ) ) # ( !\minute[1]~DUPLICATE_q\ & ( (!minute(3) & (!minute(5) $ (((!minute(4)) # (minute(2)))))) # 
-- (minute(3) & ((!minute(5) & (minute(2) & !minute(4))) # (minute(5) & (!minute(2) & minute(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011010010010001001101001001010011001010010001001100101001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_minute(3),
	datab => ALT_INV_minute(5),
	datac => ALT_INV_minute(2),
	datad => ALT_INV_minute(4),
	dataf => \ALT_INV_minute[1]~DUPLICATE_q\,
	combout => \Mux12~0_combout\);

-- Location: LABCELL_X32_Y3_N24
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \minute[1]~DUPLICATE_q\ & ( (!minute(4) & (!minute(3) & (minute(2) & minute(5)))) # (minute(4) & (!minute(2) & (!minute(3) $ (minute(5))))) ) ) # ( !\minute[1]~DUPLICATE_q\ & ( (!minute(3) & (minute(4) & (!minute(2) & minute(5)))) # 
-- (minute(3) & (!minute(5) & (!minute(4) $ (minute(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100100000010000010010000000100000000110000010000000011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_minute(3),
	datab => ALT_INV_minute(4),
	datac => ALT_INV_minute(2),
	datad => ALT_INV_minute(5),
	dataf => \ALT_INV_minute[1]~DUPLICATE_q\,
	combout => \Mux10~0_combout\);

-- Location: MLABCELL_X37_Y2_N12
\Mux39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = ( \Mux10~0_combout\ & ( (!\Mux11~0_combout\ & !\Mux12~0_combout\) ) ) # ( !\Mux10~0_combout\ & ( (!\Mux11~0_combout\ & ((\Mux12~0_combout\))) # (\Mux11~0_combout\ & ((!\Mux13~0_combout\) # (!\Mux12~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111100001100111111110011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux11~0_combout\,
	datac => \ALT_INV_Mux13~0_combout\,
	datad => \ALT_INV_Mux12~0_combout\,
	dataf => \ALT_INV_Mux10~0_combout\,
	combout => \Mux39~0_combout\);

-- Location: MLABCELL_X37_Y2_N3
\Mux38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = ( \Mux10~0_combout\ & ( (\Mux11~0_combout\) # (\Mux12~0_combout\) ) ) # ( !\Mux10~0_combout\ & ( (!\Mux13~0_combout\ & (\Mux12~0_combout\ & !\Mux11~0_combout\)) # (\Mux13~0_combout\ & ((!\Mux11~0_combout\) # (\Mux12~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000101010111110000010100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux13~0_combout\,
	datac => \ALT_INV_Mux12~0_combout\,
	datad => \ALT_INV_Mux11~0_combout\,
	dataf => \ALT_INV_Mux10~0_combout\,
	combout => \Mux38~0_combout\);

-- Location: MLABCELL_X37_Y2_N33
\Mux37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = ( \Mux10~0_combout\ & ( ((\Mux12~0_combout\) # (\Mux11~0_combout\)) # (\Mux13~0_combout\) ) ) # ( !\Mux10~0_combout\ & ( ((\Mux11~0_combout\ & !\Mux12~0_combout\)) # (\Mux13~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101110101011101010111010101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux13~0_combout\,
	datab => \ALT_INV_Mux11~0_combout\,
	datac => \ALT_INV_Mux12~0_combout\,
	dataf => \ALT_INV_Mux10~0_combout\,
	combout => \Mux37~0_combout\);

-- Location: MLABCELL_X37_Y2_N15
\Mux36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = ( \Mux10~0_combout\ & ( (\Mux12~0_combout\) # (\Mux11~0_combout\) ) ) # ( !\Mux10~0_combout\ & ( (!\Mux13~0_combout\ & (\Mux11~0_combout\ & !\Mux12~0_combout\)) # (\Mux13~0_combout\ & (!\Mux11~0_combout\ $ (\Mux12~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101100001011000010110000100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux13~0_combout\,
	datab => \ALT_INV_Mux11~0_combout\,
	datac => \ALT_INV_Mux12~0_combout\,
	dataf => \ALT_INV_Mux10~0_combout\,
	combout => \Mux36~0_combout\);

-- Location: LABCELL_X32_Y3_N48
\Mux35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = ( \Mux12~0_combout\ & ( ((!\Mux13~0_combout\ & !\Mux11~0_combout\)) # (\Mux10~0_combout\) ) ) # ( !\Mux12~0_combout\ & ( (\Mux11~0_combout\ & \Mux10~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111110100000111111111010000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux13~0_combout\,
	datac => \ALT_INV_Mux11~0_combout\,
	datad => \ALT_INV_Mux10~0_combout\,
	dataf => \ALT_INV_Mux12~0_combout\,
	combout => \Mux35~0_combout\);

-- Location: MLABCELL_X37_Y2_N24
\Mux34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = ( \Mux10~0_combout\ & ( (\Mux11~0_combout\) # (\Mux12~0_combout\) ) ) # ( !\Mux10~0_combout\ & ( (\Mux11~0_combout\ & (!\Mux12~0_combout\ $ (!\Mux13~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux12~0_combout\,
	datac => \ALT_INV_Mux13~0_combout\,
	datad => \ALT_INV_Mux11~0_combout\,
	dataf => \ALT_INV_Mux10~0_combout\,
	combout => \Mux34~0_combout\);

-- Location: MLABCELL_X37_Y2_N30
\Mux33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = ( \Mux10~0_combout\ & ( (\Mux12~0_combout\) # (\Mux11~0_combout\) ) ) # ( !\Mux10~0_combout\ & ( (!\Mux12~0_combout\ & (!\Mux11~0_combout\ $ (!\Mux13~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000000001111000000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux11~0_combout\,
	datac => \ALT_INV_Mux13~0_combout\,
	datad => \ALT_INV_Mux12~0_combout\,
	dataf => \ALT_INV_Mux10~0_combout\,
	combout => \Mux33~0_combout\);

-- Location: LABCELL_X32_Y3_N30
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \minute[1]~DUPLICATE_q\ & ( (!minute(5) & (!minute(3) $ (((!minute(4)) # (minute(2)))))) # (minute(5) & ((!minute(3)) # ((minute(4) & !minute(2))))) ) ) # ( !\minute[1]~DUPLICATE_q\ & ( (!minute(5) & ((!minute(4) & (minute(3) & 
-- minute(2))) # (minute(4) & (!minute(3) & !minute(2))))) # (minute(5) & (!minute(3) $ (((minute(4) & !minute(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101011000011000010101100001111001010110100111100101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_minute(5),
	datab => ALT_INV_minute(4),
	datac => ALT_INV_minute(3),
	datad => ALT_INV_minute(2),
	dataf => \ALT_INV_minute[1]~DUPLICATE_q\,
	combout => \Mux9~0_combout\);

-- Location: LABCELL_X32_Y3_N51
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( minute(2) & ( (!minute(4) & (minute(5) & !minute(3))) # (minute(4) & (!minute(5))) ) ) # ( !minute(2) & ( (!minute(4) & (minute(5) & !minute(3))) # (minute(4) & (!minute(5) & minute(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000110000000011000011000000111100001100000011110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_minute(4),
	datac => ALT_INV_minute(5),
	datad => ALT_INV_minute(3),
	dataf => ALT_INV_minute(2),
	combout => \Mux8~0_combout\);

-- Location: LABCELL_X32_Y3_N33
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (minute(5) & ((!minute(4) & (minute(3))) # (minute(4) & ((!minute(3)) # (!minute(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010100000101010001010000010101000101000001010100010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_minute(5),
	datab => ALT_INV_minute(4),
	datac => ALT_INV_minute(3),
	datad => ALT_INV_minute(2),
	combout => \Mux7~0_combout\);

-- Location: MLABCELL_X34_Y2_N15
\Mux46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = ( \Mux7~0_combout\ & ( (\Mux9~0_combout\ & \Mux8~0_combout\) ) ) # ( !\Mux7~0_combout\ & ( !\Mux8~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~0_combout\,
	datac => \ALT_INV_Mux8~0_combout\,
	dataf => \ALT_INV_Mux7~0_combout\,
	combout => \Mux46~0_combout\);

-- Location: MLABCELL_X34_Y2_N6
\Mux45~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = ( \Mux7~0_combout\ & ( (\Mux8~0_combout\ & \Mux9~0_combout\) ) ) # ( !\Mux7~0_combout\ & ( (\Mux9~0_combout\) # (\Mux8~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux8~0_combout\,
	datac => \ALT_INV_Mux9~0_combout\,
	dataf => \ALT_INV_Mux7~0_combout\,
	combout => \Mux45~0_combout\);

-- Location: MLABCELL_X34_Y2_N51
\Mux44~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = ( \Mux7~0_combout\ & ( (!\Mux8~0_combout\) # (\Mux9~0_combout\) ) ) # ( !\Mux7~0_combout\ & ( \Mux9~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~0_combout\,
	datac => \ALT_INV_Mux8~0_combout\,
	dataf => \ALT_INV_Mux7~0_combout\,
	combout => \Mux44~0_combout\);

-- Location: MLABCELL_X34_Y2_N42
\Mux43~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = ( \Mux7~0_combout\ & ( !\Mux8~0_combout\ $ (\Mux9~0_combout\) ) ) # ( !\Mux7~0_combout\ & ( (!\Mux8~0_combout\ & \Mux9~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux8~0_combout\,
	datac => \ALT_INV_Mux9~0_combout\,
	dataf => \ALT_INV_Mux7~0_combout\,
	combout => \Mux43~0_combout\);

-- Location: MLABCELL_X34_Y2_N0
\Mux42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = ( !\Mux7~0_combout\ & ( (\Mux8~0_combout\ & !\Mux9~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux8~0_combout\,
	datac => \ALT_INV_Mux9~0_combout\,
	dataf => \ALT_INV_Mux7~0_combout\,
	combout => \Mux42~0_combout\);

-- Location: MLABCELL_X34_Y2_N57
\Mux41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = ( \Mux7~0_combout\ & ( !\Mux9~0_combout\ $ (!\Mux8~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~0_combout\,
	datac => \ALT_INV_Mux8~0_combout\,
	dataf => \ALT_INV_Mux7~0_combout\,
	combout => \Mux41~0_combout\);

-- Location: MLABCELL_X34_Y2_N27
\Mux40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = ( \Mux7~0_combout\ & ( (!\Mux9~0_combout\ & !\Mux8~0_combout\) ) ) # ( !\Mux7~0_combout\ & ( (\Mux9~0_combout\ & !\Mux8~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~0_combout\,
	datac => \ALT_INV_Mux8~0_combout\,
	dataf => \ALT_INV_Mux7~0_combout\,
	combout => \Mux40~0_combout\);

-- Location: IOIBUF_X14_Y0_N1
\UPHOUR~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UPHOUR,
	o => \UPHOUR~input_o\);

-- Location: LABCELL_X35_Y2_N15
clk_hour_master : cyclonev_lcell_comb
-- Equation(s):
-- \clk_hour_master~combout\ = LCELL(( \clk_sec~q\ & ( (!\SETMODE~input_o\) # (\UPHOUR~input_o\) ) ) # ( !\clk_sec~q\ & ( (\UPHOUR~input_o\ & \SETMODE~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_UPHOUR~input_o\,
	datad => \ALT_INV_SETMODE~input_o\,
	dataf => \ALT_INV_clk_sec~q\,
	combout => \clk_hour_master~combout\);

-- Location: LABCELL_X35_Y2_N42
\hour~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \hour~2_combout\ = ( hour(3) & ( !hour(1) $ (!hour(0)) ) ) # ( !hour(3) & ( (hour(2) & (!hour(1) $ (!hour(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(1),
	datac => ALT_INV_hour(2),
	datad => ALT_INV_hour(0),
	dataf => ALT_INV_hour(3),
	combout => \hour~2_combout\);

-- Location: LABCELL_X35_Y2_N27
\hour[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \hour[1]~feeder_combout\ = \hour~2_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hour~2_combout\,
	combout => \hour[1]~feeder_combout\);

-- Location: FF_X35_Y2_N29
\hour[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_hour_master~combout\,
	d => \hour[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(1));

-- Location: LABCELL_X35_Y2_N18
\hour~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hour~0_combout\ = ( hour(1) & ( hour(2) & ( hour(3) ) ) ) # ( !hour(1) & ( hour(2) & ( hour(3) ) ) ) # ( hour(1) & ( !hour(2) & ( (!hour(0)) # (!hour(3)) ) ) ) # ( !hour(1) & ( !hour(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hour(0),
	datad => ALT_INV_hour(3),
	datae => ALT_INV_hour(1),
	dataf => ALT_INV_hour(2),
	combout => \hour~0_combout\);

-- Location: FF_X35_Y2_N11
\hour[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_hour_master~combout\,
	asdata => \hour~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(3));

-- Location: LABCELL_X35_Y2_N36
\hour~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \hour~3_combout\ = ( !hour(0) & ( hour(3) ) ) # ( hour(0) & ( !hour(3) & ( !hour(2) ) ) ) # ( !hour(0) & ( !hour(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111100001111000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hour(2),
	datae => ALT_INV_hour(0),
	dataf => ALT_INV_hour(3),
	combout => \hour~3_combout\);

-- Location: FF_X35_Y2_N56
\hour[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_hour_master~combout\,
	asdata => \hour~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(0));

-- Location: LABCELL_X35_Y2_N0
\hour~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \hour~1_combout\ = ( hour(1) & ( hour(2) & ( !hour(0) ) ) ) # ( !hour(1) & ( hour(2) ) ) # ( hour(1) & ( !hour(2) & ( (!hour(3)) # (hour(0)) ) ) ) # ( !hour(1) & ( !hour(2) & ( !hour(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000111111111111111111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hour(0),
	datad => ALT_INV_hour(3),
	datae => ALT_INV_hour(1),
	dataf => ALT_INV_hour(2),
	combout => \hour~1_combout\);

-- Location: FF_X35_Y2_N50
\hour[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_hour_master~combout\,
	asdata => \hour~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(2));

-- Location: MLABCELL_X34_Y2_N18
\Mux53~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux53~0_combout\ = ( hour(1) & ( (hour(3) & ((!hour(0)) # (hour(2)))) ) ) # ( !hour(1) & ( (!hour(2) & ((!hour(0)) # (hour(3)))) # (hour(2) & (!hour(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000111100000011110000001111111100001111000000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hour(2),
	datac => ALT_INV_hour(3),
	datad => ALT_INV_hour(0),
	datae => ALT_INV_hour(1),
	combout => \Mux53~0_combout\);

-- Location: LABCELL_X35_Y2_N33
\Mux52~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux52~0_combout\ = ( hour(1) & ( hour(3) & ( (hour(2)) # (hour(0)) ) ) ) # ( !hour(1) & ( hour(3) & ( (hour(0) & hour(2)) ) ) ) # ( hour(1) & ( !hour(3) & ( (!hour(2)) # (hour(0)) ) ) ) # ( !hour(1) & ( !hour(3) & ( !hour(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hour(0),
	datad => ALT_INV_hour(2),
	datae => ALT_INV_hour(1),
	dataf => ALT_INV_hour(3),
	combout => \Mux52~0_combout\);

-- Location: LABCELL_X35_Y2_N45
\Mux51~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux51~0_combout\ = ( hour(2) & ( hour(0) ) ) # ( !hour(2) & ( (!hour(1) $ (!hour(3))) # (hour(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110111101101111011011110110111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(1),
	datab => ALT_INV_hour(3),
	datac => ALT_INV_hour(0),
	dataf => ALT_INV_hour(2),
	combout => \Mux51~0_combout\);

-- Location: LABCELL_X35_Y2_N57
\Mux50~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux50~0_combout\ = ( hour(1) & ( hour(0) & ( (!hour(3)) # (!hour(2)) ) ) ) # ( !hour(1) & ( hour(0) & ( !hour(3) $ (hour(2)) ) ) ) # ( hour(1) & ( !hour(0) & ( (!hour(3) & !hour(2)) ) ) ) # ( !hour(1) & ( !hour(0) & ( (hour(3) & !hour(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000111100000000000011110000000011111111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hour(3),
	datad => ALT_INV_hour(2),
	datae => ALT_INV_hour(1),
	dataf => ALT_INV_hour(0),
	combout => \Mux50~0_combout\);

-- Location: LABCELL_X35_Y2_N9
\Mux49~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux49~0_combout\ = ( !hour(3) & ( hour(0) & ( !hour(2) ) ) ) # ( hour(3) & ( !hour(0) & ( (hour(1) & hour(2)) ) ) ) # ( !hour(3) & ( !hour(0) & ( !hour(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000000101010111111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(1),
	datad => ALT_INV_hour(2),
	datae => ALT_INV_hour(3),
	dataf => ALT_INV_hour(0),
	combout => \Mux49~0_combout\);

-- Location: LABCELL_X35_Y2_N12
\Mux48~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux48~0_combout\ = ( !hour(2) & ( (!hour(0) & ((hour(1)))) # (hour(0) & ((!hour(3)) # (!hour(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111101110010101011110111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(0),
	datab => ALT_INV_hour(3),
	datad => ALT_INV_hour(1),
	dataf => ALT_INV_hour(2),
	combout => \Mux48~0_combout\);

-- Location: LABCELL_X35_Y2_N48
\Mux47~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = ( hour(2) & ( hour(3) & ( (hour(0) & !hour(1)) ) ) ) # ( !hour(2) & ( hour(3) & ( (!hour(0) & !hour(1)) ) ) ) # ( hour(2) & ( !hour(3) & ( (hour(0) & hour(1)) ) ) ) # ( !hour(2) & ( !hour(3) & ( (hour(1)) # (hour(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111000001010000010110100000101000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(0),
	datac => ALT_INV_hour(1),
	datae => ALT_INV_hour(2),
	dataf => ALT_INV_hour(3),
	combout => \Mux47~0_combout\);

-- Location: MLABCELL_X34_Y2_N39
\Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( hour(1) & ( (!hour(3) & hour(2)) ) ) # ( !hour(1) & ( (!hour(3) & (!hour(0) & !hour(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000010100000101010000000100000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(3),
	datab => ALT_INV_hour(0),
	datac => ALT_INV_hour(2),
	datae => ALT_INV_hour(1),
	combout => \Mux14~0_combout\);

-- Location: LABCELL_X36_Y39_N0
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


