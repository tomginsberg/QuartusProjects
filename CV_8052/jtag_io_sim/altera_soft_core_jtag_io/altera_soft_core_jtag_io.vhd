-- (C) 2001-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions and other 
-- software and tools, and its AMPP partner logic functions, and any output 
-- files any of the foregoing (including device programming or simulation 
-- files), and any associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License Subscription 
-- Agreement, Altera MegaCore Function License Agreement, or other applicable 
-- license agreement, including, without limitation, that your use is for the 
-- sole purpose of programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the applicable 
-- agreement for further details.


-- START_FILE_HEADER --------------------------------------------------
--
-- Filename    : altera_soft_core_jtag_io.vhd
--
-- Description : This component provides a JTAG interface that drives the one
--               on sld_jtag_hub, which is the central control unit for all
--               Quartus II tools that depends on JTAG communication.
-- 
-- Authors     : ypeng
--
-- Copyright (c) Altera Corporation 2012
-- All rights reserved
--
-- END_FILE_HEADER --------------------------------------------------


-- LIBRARY USED-----------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

---START_ENTITY_HEADER-------------------------------------------------
--
-- Entity Name     : altera_soft_core_jtag_io
--
-- Description     : This component provides a JTAG interface that drives the one
--                   on sld_jtag_hub, which is the central control unit for all
--                   Quartus II tools that depends on JTAG communication.
--
-- Parameter       : ENABLE_JTAG_IO_SELECTION
--                   Specifies whether the jtag I/O selection is enabled.  
--                   If enabled, a select input port is used and drives a mux that 
--                   selects JTAG I/O between the interface on this megafunction and 
--                   the interface on the JTAG hard controller.   As mux is added on 
--                   tck, a clock input to register, close skew may happen.  User is 
--                   responsible for timing closure.  No extra fitter action is provided 
--                   on this.  A non-zero value enables; zero disables.  The default is 0.
--
-- Authors         : ypeng
--
---END_ENTITY_HEADER-------------------------------------------------

entity altera_soft_core_jtag_io is
	generic
	(
		ENABLE_JTAG_IO_SELECTION       : natural          := 0;
		NAME                           : string           := "SOFT_JTAG";
		HINTS                          : string           := ""
	);

	port
	(
		-- JTAG Interface
		tck				: in std_logic;  -- JTAG test clock.  This signal is not used if ENABLE_JTAG_IO_SELECTION is non-zero and select input is zero.
		tms				: in std_logic;  -- JTAG test mode select.  This signal is not used if ENABLE_JTAG_IO_SELECTION is non-zero and select input is zero.
		tdi				: in std_logic;  -- JTAG test data in.  This signal is not used if ENABLE_JTAG_IO_SELECTION is non-zero and select input is zero.
		tdo				: out std_logic; -- JTAG test data out.	This output is not tri-stated.
		
		-- JTAG Interface Selection
		select_this		: in std_logic   -- JTAG input selection.  If this input is high then the SLD hub is connected to the tck, tdi, tms and tdo ports on this entity.  
										 -- If this input is low then the SLD hub is connected to the normal device JTAG pins via the hard configuration logic.
										 -- This signal is not used if ENABLE_JTAG_IO_SELECTION is zero.

    );

end altera_soft_core_jtag_io;

architecture rtl of altera_soft_core_jtag_io is

begin
	tdo <= '0';
	
end rtl;
