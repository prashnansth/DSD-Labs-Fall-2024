-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/02/2024 03:23:47"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          test
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY test_vhd_vec_tst IS
END test_vhd_vec_tst;
ARCHITECTURE test_arch OF test_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL c : STD_LOGIC;
SIGNAL d : STD_LOGIC;
SIGNAL d0 : STD_LOGIC;
SIGNAL d1 : STD_LOGIC;
SIGNAL d2 : STD_LOGIC;
SIGNAL d3 : STD_LOGIC;
SIGNAL e : STD_LOGIC;
SIGNAL f : STD_LOGIC;
SIGNAL g : STD_LOGIC;
COMPONENT test
	PORT (
	a : OUT STD_LOGIC;
	b : OUT STD_LOGIC;
	c : OUT STD_LOGIC;
	d : OUT STD_LOGIC;
	d0 : IN STD_LOGIC;
	d1 : IN STD_LOGIC;
	d2 : IN STD_LOGIC;
	d3 : IN STD_LOGIC;
	e : OUT STD_LOGIC;
	f : OUT STD_LOGIC;
	g : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : test
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	c => c,
	d => d,
	d0 => d0,
	d1 => d1,
	d2 => d2,
	d3 => d3,
	e => e,
	f => f,
	g => g
	);

-- d3
t_prcs_d3: PROCESS
BEGIN
	d3 <= '0';
	WAIT FOR 80000 ps;
	d3 <= '1';
	WAIT FOR 80000 ps;
	d3 <= '0';
WAIT;
END PROCESS t_prcs_d3;

-- d2
t_prcs_d2: PROCESS
BEGIN
	d2 <= '0';
	WAIT FOR 40000 ps;
	d2 <= '1';
	WAIT FOR 40000 ps;
	d2 <= '0';
	WAIT FOR 40000 ps;
	d2 <= '1';
	WAIT FOR 40000 ps;
	d2 <= '0';
WAIT;
END PROCESS t_prcs_d2;

-- d1
t_prcs_d1: PROCESS
BEGIN
	d1 <= '0';
	WAIT FOR 20000 ps;
	d1 <= '1';
	WAIT FOR 20000 ps;
	d1 <= '0';
	WAIT FOR 20000 ps;
	d1 <= '1';
	WAIT FOR 20000 ps;
	d1 <= '0';
	WAIT FOR 20000 ps;
	d1 <= '1';
	WAIT FOR 20000 ps;
	d1 <= '0';
	WAIT FOR 20000 ps;
	d1 <= '1';
	WAIT FOR 20000 ps;
	d1 <= '0';
WAIT;
END PROCESS t_prcs_d1;

-- d0
t_prcs_d0: PROCESS
BEGIN
	d0 <= '0';
	WAIT FOR 10000 ps;
	d0 <= '1';
	WAIT FOR 10000 ps;
	d0 <= '0';
	WAIT FOR 10000 ps;
	d0 <= '1';
	WAIT FOR 10000 ps;
	d0 <= '0';
	WAIT FOR 10000 ps;
	d0 <= '1';
	WAIT FOR 10000 ps;
	d0 <= '0';
	WAIT FOR 10000 ps;
	d0 <= '1';
	WAIT FOR 10000 ps;
	d0 <= '0';
	WAIT FOR 10000 ps;
	d0 <= '1';
	WAIT FOR 10000 ps;
	d0 <= '0';
	WAIT FOR 10000 ps;
	d0 <= '1';
	WAIT FOR 10000 ps;
	d0 <= '0';
	WAIT FOR 10000 ps;
	d0 <= '1';
	WAIT FOR 10000 ps;
	d0 <= '0';
	WAIT FOR 10000 ps;
	d0 <= '1';
	WAIT FOR 10000 ps;
	d0 <= '0';
WAIT;
END PROCESS t_prcs_d0;
END test_arch;
