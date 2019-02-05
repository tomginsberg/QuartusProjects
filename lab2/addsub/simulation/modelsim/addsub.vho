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

-- DATE "02/04/2019 00:49:01"

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

ENTITY 	addsub IS
    PORT (
	NUMIN : IN std_logic_vector(7 DOWNTO 0);
	ADD : IN std_logic;
	LATCH1 : IN std_logic;
	LATCH2 : IN std_logic;
	NUMOUT : BUFFER std_logic_vector(8 DOWNTO 0)
	);
END addsub;

-- Design Ports Information
-- NUMOUT[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUMOUT[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUMOUT[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUMOUT[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUMOUT[4]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUMOUT[5]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUMOUT[6]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUMOUT[7]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUMOUT[8]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUMIN[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LATCH2	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LATCH1	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUMIN[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUMIN[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUMIN[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUMIN[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUMIN[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUMIN[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUMIN[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF addsub IS
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
SIGNAL ww_ADD : std_logic;
SIGNAL ww_LATCH1 : std_logic;
SIGNAL ww_LATCH2 : std_logic;
SIGNAL ww_NUMOUT : std_logic_vector(8 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \ADD~input_o\ : std_logic;
SIGNAL \LATCH2~input_o\ : std_logic;
SIGNAL \LATCH2~inputCLKENA0_outclk\ : std_logic;
SIGNAL \NUMIN[0]~input_o\ : std_logic;
SIGNAL \temp2[0]~feeder_combout\ : std_logic;
SIGNAL \LATCH1~input_o\ : std_logic;
SIGNAL \LATCH1~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add0~38_cout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \NUMIN[1]~input_o\ : std_logic;
SIGNAL \temp2[1]~feeder_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \NUMIN[2]~input_o\ : std_logic;
SIGNAL \temp2[2]~feeder_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \NUMIN[3]~input_o\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \NUMIN[4]~input_o\ : std_logic;
SIGNAL \temp2[4]~feeder_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \NUMIN[5]~input_o\ : std_logic;
SIGNAL \temp2[5]~feeder_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \NUMIN[6]~input_o\ : std_logic;
SIGNAL \temp2[6]~feeder_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \NUMIN[7]~input_o\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL temp2 : std_logic_vector(7 DOWNTO 0);
SIGNAL temp1 : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_NUMIN[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_NUMIN[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_NUMIN[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_NUMIN[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_NUMIN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_NUMIN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADD~input_o\ : std_logic;
SIGNAL ALT_INV_temp1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_temp2 : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_NUMIN <= NUMIN;
ww_ADD <= ADD;
ww_LATCH1 <= LATCH1;
ww_LATCH2 <= LATCH2;
NUMOUT <= ww_NUMOUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_NUMIN[6]~input_o\ <= NOT \NUMIN[6]~input_o\;
\ALT_INV_NUMIN[5]~input_o\ <= NOT \NUMIN[5]~input_o\;
\ALT_INV_NUMIN[4]~input_o\ <= NOT \NUMIN[4]~input_o\;
\ALT_INV_NUMIN[2]~input_o\ <= NOT \NUMIN[2]~input_o\;
\ALT_INV_NUMIN[1]~input_o\ <= NOT \NUMIN[1]~input_o\;
\ALT_INV_NUMIN[0]~input_o\ <= NOT \NUMIN[0]~input_o\;
\ALT_INV_ADD~input_o\ <= NOT \ADD~input_o\;
ALT_INV_temp1(7) <= NOT temp1(7);
ALT_INV_temp2(7) <= NOT temp2(7);
ALT_INV_temp1(6) <= NOT temp1(6);
ALT_INV_temp2(6) <= NOT temp2(6);
ALT_INV_temp1(5) <= NOT temp1(5);
ALT_INV_temp2(5) <= NOT temp2(5);
ALT_INV_temp1(4) <= NOT temp1(4);
ALT_INV_temp2(4) <= NOT temp2(4);
ALT_INV_temp1(3) <= NOT temp1(3);
ALT_INV_temp2(3) <= NOT temp2(3);
ALT_INV_temp1(2) <= NOT temp1(2);
ALT_INV_temp2(2) <= NOT temp2(2);
ALT_INV_temp1(1) <= NOT temp1(1);
ALT_INV_temp2(1) <= NOT temp2(1);
ALT_INV_temp1(0) <= NOT temp1(0);
ALT_INV_temp2(0) <= NOT temp2(0);

-- Location: IOOBUF_X0_Y18_N79
\NUMOUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~1_sumout\,
	devoe => ww_devoe,
	o => ww_NUMOUT(0));

-- Location: IOOBUF_X0_Y18_N96
\NUMOUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~5_sumout\,
	devoe => ww_devoe,
	o => ww_NUMOUT(1));

-- Location: IOOBUF_X0_Y18_N62
\NUMOUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~9_sumout\,
	devoe => ww_devoe,
	o => ww_NUMOUT(2));

-- Location: IOOBUF_X0_Y18_N45
\NUMOUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~13_sumout\,
	devoe => ww_devoe,
	o => ww_NUMOUT(3));

-- Location: IOOBUF_X0_Y19_N39
\NUMOUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~17_sumout\,
	devoe => ww_devoe,
	o => ww_NUMOUT(4));

-- Location: IOOBUF_X0_Y19_N56
\NUMOUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~21_sumout\,
	devoe => ww_devoe,
	o => ww_NUMOUT(5));

-- Location: IOOBUF_X0_Y19_N5
\NUMOUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_NUMOUT(6));

-- Location: IOOBUF_X0_Y19_N22
\NUMOUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~29_sumout\,
	devoe => ww_devoe,
	o => ww_NUMOUT(7));

-- Location: IOOBUF_X0_Y20_N39
\NUMOUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~33_sumout\,
	devoe => ww_devoe,
	o => ww_NUMOUT(8));

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

-- Location: CLKCTRL_G5
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

-- Location: MLABCELL_X9_Y4_N0
\temp2[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp2[0]~feeder_combout\ = ( \NUMIN[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_NUMIN[0]~input_o\,
	combout => \temp2[0]~feeder_combout\);

-- Location: FF_X9_Y4_N1
\temp2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LATCH2~inputCLKENA0_outclk\,
	d => \temp2[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp2(0));

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

-- Location: CLKCTRL_G4
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

-- Location: FF_X9_Y4_N35
\temp1[0]\ : dffeas
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
	q => temp1(0));

-- Location: MLABCELL_X9_Y4_N30
\Add0~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~38_cout\ = CARRY(( !\ADD~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADD~input_o\,
	cin => GND,
	cout => \Add0~38_cout\);

-- Location: MLABCELL_X9_Y4_N33
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( temp1(0) ) + ( !\ADD~input_o\ $ (temp2(0)) ) + ( \Add0~38_cout\ ))
-- \Add0~2\ = CARRY(( temp1(0) ) + ( !\ADD~input_o\ $ (temp2(0)) ) + ( \Add0~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADD~input_o\,
	datac => ALT_INV_temp2(0),
	datad => ALT_INV_temp1(0),
	cin => \Add0~38_cout\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

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

-- Location: MLABCELL_X9_Y4_N6
\temp2[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp2[1]~feeder_combout\ = ( \NUMIN[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_NUMIN[1]~input_o\,
	combout => \temp2[1]~feeder_combout\);

-- Location: FF_X9_Y4_N8
\temp2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LATCH2~inputCLKENA0_outclk\,
	d => \temp2[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp2(1));

-- Location: FF_X9_Y4_N38
\temp1[1]\ : dffeas
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
	q => temp1(1));

-- Location: MLABCELL_X9_Y4_N36
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( temp1(1) ) + ( !\ADD~input_o\ $ (temp2(1)) ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( temp1(1) ) + ( !\ADD~input_o\ $ (temp2(1)) ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011001100110011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADD~input_o\,
	datab => ALT_INV_temp2(1),
	datad => ALT_INV_temp1(1),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

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

-- Location: MLABCELL_X9_Y4_N3
\temp2[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp2[2]~feeder_combout\ = ( \NUMIN[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_NUMIN[2]~input_o\,
	combout => \temp2[2]~feeder_combout\);

-- Location: FF_X9_Y4_N4
\temp2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LATCH2~inputCLKENA0_outclk\,
	d => \temp2[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp2(2));

-- Location: FF_X9_Y4_N41
\temp1[2]\ : dffeas
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
	q => temp1(2));

-- Location: MLABCELL_X9_Y4_N39
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( temp1(2) ) + ( !\ADD~input_o\ $ (temp2(2)) ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( temp1(2) ) + ( !\ADD~input_o\ $ (temp2(2)) ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADD~input_o\,
	datac => ALT_INV_temp2(2),
	datad => ALT_INV_temp1(2),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

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

-- Location: FF_X9_Y4_N10
\temp2[3]\ : dffeas
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
	q => temp2(3));

-- Location: FF_X9_Y4_N44
\temp1[3]\ : dffeas
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
	q => temp1(3));

-- Location: MLABCELL_X9_Y4_N42
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( temp1(3) ) + ( !\ADD~input_o\ $ (temp2(3)) ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( temp1(3) ) + ( !\ADD~input_o\ $ (temp2(3)) ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADD~input_o\,
	datac => ALT_INV_temp2(3),
	datad => ALT_INV_temp1(3),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

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

-- Location: MLABCELL_X9_Y4_N12
\temp2[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp2[4]~feeder_combout\ = ( \NUMIN[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_NUMIN[4]~input_o\,
	combout => \temp2[4]~feeder_combout\);

-- Location: FF_X9_Y4_N14
\temp2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LATCH2~inputCLKENA0_outclk\,
	d => \temp2[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp2(4));

-- Location: FF_X9_Y4_N47
\temp1[4]\ : dffeas
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
	q => temp1(4));

-- Location: MLABCELL_X9_Y4_N45
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( temp1(4) ) + ( !\ADD~input_o\ $ (temp2(4)) ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( temp1(4) ) + ( !\ADD~input_o\ $ (temp2(4)) ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADD~input_o\,
	datac => ALT_INV_temp2(4),
	datad => ALT_INV_temp1(4),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

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

-- Location: MLABCELL_X9_Y4_N15
\temp2[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp2[5]~feeder_combout\ = ( \NUMIN[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_NUMIN[5]~input_o\,
	combout => \temp2[5]~feeder_combout\);

-- Location: FF_X9_Y4_N17
\temp2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LATCH2~inputCLKENA0_outclk\,
	d => \temp2[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp2(5));

-- Location: FF_X9_Y4_N50
\temp1[5]\ : dffeas
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
	q => temp1(5));

-- Location: MLABCELL_X9_Y4_N48
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( temp1(5) ) + ( !\ADD~input_o\ $ (temp2(5)) ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( temp1(5) ) + ( !\ADD~input_o\ $ (temp2(5)) ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011001100110011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADD~input_o\,
	datab => ALT_INV_temp2(5),
	datad => ALT_INV_temp1(5),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

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

-- Location: MLABCELL_X9_Y4_N18
\temp2[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp2[6]~feeder_combout\ = ( \NUMIN[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_NUMIN[6]~input_o\,
	combout => \temp2[6]~feeder_combout\);

-- Location: FF_X9_Y4_N19
\temp2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LATCH2~inputCLKENA0_outclk\,
	d => \temp2[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp2(6));

-- Location: FF_X9_Y4_N53
\temp1[6]\ : dffeas
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
	q => temp1(6));

-- Location: MLABCELL_X9_Y4_N51
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( temp1(6) ) + ( !\ADD~input_o\ $ (temp2(6)) ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( temp1(6) ) + ( !\ADD~input_o\ $ (temp2(6)) ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADD~input_o\,
	datac => ALT_INV_temp2(6),
	datad => ALT_INV_temp1(6),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

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

-- Location: FF_X9_Y4_N23
\temp2[7]\ : dffeas
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
	q => temp2(7));

-- Location: FF_X9_Y4_N56
\temp1[7]\ : dffeas
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
	q => temp1(7));

-- Location: MLABCELL_X9_Y4_N54
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( temp1(7) ) + ( !\ADD~input_o\ $ (temp2(7)) ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( temp1(7) ) + ( !\ADD~input_o\ $ (temp2(7)) ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADD~input_o\,
	datac => ALT_INV_temp2(7),
	datad => ALT_INV_temp1(7),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: MLABCELL_X9_Y4_N57
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( !\ADD~input_o\ ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADD~input_o\,
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\);

-- Location: LABCELL_X29_Y42_N3
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


