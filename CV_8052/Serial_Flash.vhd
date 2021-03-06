-- megafunction wizard: %Serial Flash Loader%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: altserial_flash_loader 

-- ============================================================
-- File Name: Serial_Flash.vhd
-- Megafunction Name(s):
-- 			altserial_flash_loader
--
-- Simulation Library Files(s):
-- 			altera_mf
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 13.0.1 Build 232 06/12/2013 SP 1 SJ Web Edition
-- ************************************************************


--Copyright (C) 1991-2013 Altera Corporation
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, Altera MegaCore Function License 
--Agreement, or other applicable license agreement, including, 
--without limitation, that your use is for the sole purpose of 
--programming logic devices manufactured by Altera and sold by 
--Altera or its authorized distributors.  Please refer to the 
--applicable agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY altera_mf;
USE altera_mf.all;

ENTITY Serial_Flash IS
	PORT
	(
		asmi_access_granted		: IN STD_LOGIC ;
		data_in		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		data_oe		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		dclk_in		: IN STD_LOGIC ;
		ncso_in		: IN STD_LOGIC ;
		noe_in		: IN STD_LOGIC ;
		asmi_access_request		: OUT STD_LOGIC ;
		data_out		: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	);
END Serial_Flash;


ARCHITECTURE SYN OF serial_flash IS

	SIGNAL sub_wire0	: STD_LOGIC ;
	SIGNAL sub_wire1	: STD_LOGIC_VECTOR (3 DOWNTO 0);



	COMPONENT altserial_flash_loader
	GENERIC (
		enable_quad_spi_support		: NATURAL;
		enable_shared_access		: STRING;
		enhanced_mode		: NATURAL;
		intended_device_family		: STRING;
		lpm_type		: STRING
	);
	PORT (
			data_in	: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			noe	: IN STD_LOGIC ;
			scein	: IN STD_LOGIC_VECTOR (0 DOWNTO 0);
			asmi_access_granted	: IN STD_LOGIC ;
			asmi_access_request	: OUT STD_LOGIC ;
			data_oe	: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			data_out	: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
			dclkin	: IN STD_LOGIC 
	);
	END COMPONENT;

BEGIN
	asmi_access_request    <= sub_wire0;
	data_out    <= sub_wire1(3 DOWNTO 0);

	altserial_flash_loader_component : altserial_flash_loader
	GENERIC MAP (
		enable_quad_spi_support => 1,
		enable_shared_access => "ON",
		enhanced_mode => 1,
		intended_device_family => "Cyclone V",
		lpm_type => "altserial_flash_loader"
	)
	PORT MAP (
		data_in => data_in,
		noe => noe_in,
		scein(0) => ncso_in,
		asmi_access_granted => asmi_access_granted,
		data_oe => data_oe,
		dclkin => dclk_in,
		asmi_access_request => sub_wire0,
		data_out => sub_wire1
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
-- Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
-- Retrieval info: CONSTANT: ENABLE_QUAD_SPI_SUPPORT NUMERIC "1"
-- Retrieval info: CONSTANT: ENABLE_SHARED_ACCESS STRING "ON"
-- Retrieval info: CONSTANT: ENHANCED_MODE NUMERIC "1"
-- Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
-- Retrieval info: USED_PORT: asmi_access_granted 0 0 0 0 INPUT NODEFVAL "asmi_access_granted"
-- Retrieval info: USED_PORT: asmi_access_request 0 0 0 0 OUTPUT NODEFVAL "asmi_access_request"
-- Retrieval info: USED_PORT: data_in 0 0 4 0 INPUT NODEFVAL "data_in[3..0]"
-- Retrieval info: USED_PORT: data_oe 0 0 4 0 INPUT NODEFVAL "data_oe[3..0]"
-- Retrieval info: USED_PORT: data_out 0 0 4 0 OUTPUT NODEFVAL "data_out[3..0]"
-- Retrieval info: USED_PORT: dclk_in 0 0 0 0 INPUT NODEFVAL "dclk_in"
-- Retrieval info: USED_PORT: ncso_in 0 0 0 0 INPUT NODEFVAL "ncso_in"
-- Retrieval info: USED_PORT: noe_in 0 0 0 0 INPUT NODEFVAL "noe_in"
-- Retrieval info: CONNECT: @asmi_access_granted 0 0 0 0 asmi_access_granted 0 0 0 0
-- Retrieval info: CONNECT: @data_in 0 0 4 0 data_in 0 0 4 0
-- Retrieval info: CONNECT: @data_oe 0 0 4 0 data_oe 0 0 4 0
-- Retrieval info: CONNECT: @dclkin 0 0 0 0 dclk_in 0 0 0 0
-- Retrieval info: CONNECT: @noe 0 0 0 0 noe_in 0 0 0 0
-- Retrieval info: CONNECT: @scein 0 0 0 0 ncso_in 0 0 0 0
-- Retrieval info: CONNECT: asmi_access_request 0 0 0 0 @asmi_access_request 0 0 0 0
-- Retrieval info: CONNECT: data_out 0 0 4 0 @data_out 0 0 4 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL Serial_Flash.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL Serial_Flash.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL Serial_Flash.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL Serial_Flash.bsf TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL Serial_Flash_inst.vhd TRUE
-- Retrieval info: LIB_FILE: altera_mf
