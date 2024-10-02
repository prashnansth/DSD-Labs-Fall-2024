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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "10/02/2024 03:23:47"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	test IS
    PORT (
	d3 : IN std_logic;
	d2 : IN std_logic;
	d1 : IN std_logic;
	d0 : IN std_logic;
	g : OUT std_logic;
	f : OUT std_logic;
	e : OUT std_logic;
	d : OUT std_logic;
	c : OUT std_logic;
	b : OUT std_logic;
	a : OUT std_logic
	);
END test;

-- Design Ports Information
-- g	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_d3 : std_logic;
SIGNAL ww_d2 : std_logic;
SIGNAL ww_d1 : std_logic;
SIGNAL ww_d0 : std_logic;
SIGNAL ww_g : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL \g~output_o\ : std_logic;
SIGNAL \f~output_o\ : std_logic;
SIGNAL \e~output_o\ : std_logic;
SIGNAL \d~output_o\ : std_logic;
SIGNAL \c~output_o\ : std_logic;
SIGNAL \b~output_o\ : std_logic;
SIGNAL \a~output_o\ : std_logic;
SIGNAL \d2~input_o\ : std_logic;
SIGNAL \d3~input_o\ : std_logic;
SIGNAL \d1~input_o\ : std_logic;
SIGNAL \d0~input_o\ : std_logic;
SIGNAL \g_signal~0_combout\ : std_logic;
SIGNAL \f_signal~0_combout\ : std_logic;
SIGNAL \e_signal~0_combout\ : std_logic;
SIGNAL \d_signal~0_combout\ : std_logic;
SIGNAL \c_signal~0_combout\ : std_logic;
SIGNAL \b_signal~0_combout\ : std_logic;
SIGNAL \a_signal~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_d3 <= d3;
ww_d2 <= d2;
ww_d1 <= d1;
ww_d0 <= d0;
g <= ww_g;
f <= ww_f;
e <= ww_e;
d <= ww_d;
c <= ww_c;
b <= ww_b;
a <= ww_a;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y46_N23
\g~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_signal~0_combout\,
	devoe => ww_devoe,
	o => \g~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\f~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f_signal~0_combout\,
	devoe => ww_devoe,
	o => \f~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\e~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e_signal~0_combout\,
	devoe => ww_devoe,
	o => \e~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\d~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_signal~0_combout\,
	devoe => ww_devoe,
	o => \d~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\c~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c_signal~0_combout\,
	devoe => ww_devoe,
	o => \c~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\b~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_signal~0_combout\,
	devoe => ww_devoe,
	o => \b~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\a~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_signal~0_combout\,
	devoe => ww_devoe,
	o => \a~output_o\);

-- Location: IOIBUF_X0_Y42_N8
\d2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d2,
	o => \d2~input_o\);

-- Location: IOIBUF_X0_Y43_N15
\d3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d3,
	o => \d3~input_o\);

-- Location: IOIBUF_X0_Y42_N1
\d1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d1,
	o => \d1~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\d0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0,
	o => \d0~input_o\);

-- Location: LCCOMB_X1_Y44_N0
\g_signal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \g_signal~0_combout\ = (!\d3~input_o\ & ((\d2~input_o\ & (\d1~input_o\ & \d0~input_o\)) # (!\d2~input_o\ & (!\d1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2~input_o\,
	datab => \d3~input_o\,
	datac => \d1~input_o\,
	datad => \d0~input_o\,
	combout => \g_signal~0_combout\);

-- Location: LCCOMB_X1_Y44_N2
\f_signal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f_signal~0_combout\ = (\d2~input_o\ & ((\d3~input_o\ & (!\d1~input_o\)) # (!\d3~input_o\ & (\d1~input_o\ & \d0~input_o\)))) # (!\d2~input_o\ & (!\d3~input_o\ & ((\d1~input_o\) # (\d0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2~input_o\,
	datab => \d3~input_o\,
	datac => \d1~input_o\,
	datad => \d0~input_o\,
	combout => \f_signal~0_combout\);

-- Location: LCCOMB_X1_Y44_N12
\e_signal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \e_signal~0_combout\ = (\d1~input_o\ & (((!\d3~input_o\ & \d0~input_o\)))) # (!\d1~input_o\ & ((\d2~input_o\ & (!\d3~input_o\)) # (!\d2~input_o\ & ((\d0~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2~input_o\,
	datab => \d3~input_o\,
	datac => \d1~input_o\,
	datad => \d0~input_o\,
	combout => \e_signal~0_combout\);

-- Location: LCCOMB_X1_Y44_N14
\d_signal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_signal~0_combout\ = (\d0~input_o\ & (\d2~input_o\ $ (((!\d1~input_o\))))) # (!\d0~input_o\ & ((\d2~input_o\ & (!\d3~input_o\ & !\d1~input_o\)) # (!\d2~input_o\ & (\d3~input_o\ & \d1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2~input_o\,
	datab => \d3~input_o\,
	datac => \d1~input_o\,
	datad => \d0~input_o\,
	combout => \d_signal~0_combout\);

-- Location: LCCOMB_X1_Y44_N16
\c_signal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_signal~0_combout\ = (\d2~input_o\ & (\d3~input_o\ & ((\d1~input_o\) # (!\d0~input_o\)))) # (!\d2~input_o\ & (!\d3~input_o\ & (\d1~input_o\ & !\d0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2~input_o\,
	datab => \d3~input_o\,
	datac => \d1~input_o\,
	datad => \d0~input_o\,
	combout => \c_signal~0_combout\);

-- Location: LCCOMB_X1_Y44_N18
\b_signal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_signal~0_combout\ = (\d3~input_o\ & ((\d0~input_o\ & ((\d1~input_o\))) # (!\d0~input_o\ & (\d2~input_o\)))) # (!\d3~input_o\ & (\d2~input_o\ & (\d1~input_o\ $ (\d0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2~input_o\,
	datab => \d3~input_o\,
	datac => \d1~input_o\,
	datad => \d0~input_o\,
	combout => \b_signal~0_combout\);

-- Location: LCCOMB_X1_Y44_N28
\a_signal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_signal~0_combout\ = (\d2~input_o\ & (!\d1~input_o\ & ((\d3~input_o\) # (!\d0~input_o\)))) # (!\d2~input_o\ & (\d0~input_o\ & (\d3~input_o\ $ (!\d1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2~input_o\,
	datab => \d3~input_o\,
	datac => \d1~input_o\,
	datad => \d0~input_o\,
	combout => \a_signal~0_combout\);

ww_g <= \g~output_o\;

ww_f <= \f~output_o\;

ww_e <= \e~output_o\;

ww_d <= \d~output_o\;

ww_c <= \c~output_o\;

ww_b <= \b~output_o\;

ww_a <= \a~output_o\;
END structure;


