-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Full Version"

-- DATE "04/21/2017 18:05:12"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lfsr IS
    PORT (
	enable : IN std_logic;
	clk : IN std_logic;
	rand : OUT std_logic_vector(7 DOWNTO 0)
	);
END lfsr;

-- Design Ports Information
-- rand[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rand[1]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rand[2]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rand[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rand[4]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rand[5]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rand[6]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rand[7]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lfsr IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rand : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rand[0]~output_o\ : std_logic;
SIGNAL \rand[1]~output_o\ : std_logic;
SIGNAL \rand[2]~output_o\ : std_logic;
SIGNAL \rand[3]~output_o\ : std_logic;
SIGNAL \rand[4]~output_o\ : std_logic;
SIGNAL \rand[5]~output_o\ : std_logic;
SIGNAL \rand[6]~output_o\ : std_logic;
SIGNAL \rand[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \count[1]~feeder_combout\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \count[2]~feeder_combout\ : std_logic;
SIGNAL \count[3]~feeder_combout\ : std_logic;
SIGNAL \count[4]~feeder_combout\ : std_logic;
SIGNAL \count[5]~feeder_combout\ : std_logic;
SIGNAL \count[6]~feeder_combout\ : std_logic;
SIGNAL \count[7]~feeder_combout\ : std_logic;
SIGNAL \linear_feedback~0_combout\ : std_logic;
SIGNAL count : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_enable <= enable;
ww_clk <= clk;
rand <= ww_rand;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X0_Y4_N16
\rand[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(0),
	devoe => ww_devoe,
	o => \rand[0]~output_o\);

-- Location: IOOBUF_X0_Y2_N23
\rand[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(1),
	devoe => ww_devoe,
	o => \rand[1]~output_o\);

-- Location: IOOBUF_X0_Y2_N9
\rand[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(2),
	devoe => ww_devoe,
	o => \rand[2]~output_o\);

-- Location: IOOBUF_X0_Y2_N2
\rand[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(3),
	devoe => ww_devoe,
	o => \rand[3]~output_o\);

-- Location: IOOBUF_X0_Y2_N16
\rand[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(4),
	devoe => ww_devoe,
	o => \rand[4]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\rand[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(5),
	devoe => ww_devoe,
	o => \rand[5]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\rand[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(6),
	devoe => ww_devoe,
	o => \rand[6]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\rand[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(7),
	devoe => ww_devoe,
	o => \rand[7]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y2_N18
\count[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[1]~feeder_combout\ = count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => count(0),
	combout => \count[1]~feeder_combout\);

-- Location: IOIBUF_X1_Y0_N1
\enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: FF_X1_Y2_N19
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[1]~feeder_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X1_Y2_N16
\count[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[2]~feeder_combout\ = count(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => count(1),
	combout => \count[2]~feeder_combout\);

-- Location: FF_X1_Y2_N17
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[2]~feeder_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X1_Y2_N6
\count[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[3]~feeder_combout\ = count(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => count(2),
	combout => \count[3]~feeder_combout\);

-- Location: FF_X1_Y2_N7
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[3]~feeder_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X1_Y2_N24
\count[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[4]~feeder_combout\ = count(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => count(3),
	combout => \count[4]~feeder_combout\);

-- Location: FF_X1_Y2_N25
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[4]~feeder_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X1_Y2_N10
\count[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[5]~feeder_combout\ = count(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => count(4),
	combout => \count[5]~feeder_combout\);

-- Location: FF_X1_Y2_N11
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[5]~feeder_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X1_Y2_N12
\count[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[6]~feeder_combout\ = count(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => count(5),
	combout => \count[6]~feeder_combout\);

-- Location: FF_X1_Y2_N13
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[6]~feeder_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X1_Y2_N14
\count[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[7]~feeder_combout\ = count(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => count(6),
	combout => \count[7]~feeder_combout\);

-- Location: FF_X1_Y2_N15
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[7]~feeder_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X1_Y2_N28
\linear_feedback~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \linear_feedback~0_combout\ = count(7) $ (!count(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(7),
	datad => count(3),
	combout => \linear_feedback~0_combout\);

-- Location: FF_X1_Y2_N29
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \linear_feedback~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

ww_rand(0) <= \rand[0]~output_o\;

ww_rand(1) <= \rand[1]~output_o\;

ww_rand(2) <= \rand[2]~output_o\;

ww_rand(3) <= \rand[3]~output_o\;

ww_rand(4) <= \rand[4]~output_o\;

ww_rand(5) <= \rand[5]~output_o\;

ww_rand(6) <= \rand[6]~output_o\;

ww_rand(7) <= \rand[7]~output_o\;
END structure;


