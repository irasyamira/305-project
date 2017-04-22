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

-- DATE "04/22/2017 18:21:19"

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

ENTITY 	mini_project_isuk218 IS
    PORT (
	red : OUT std_logic;
	green : OUT std_logic;
	blue : OUT std_logic;
	hsync : OUT std_logic;
	vsync : OUT std_logic;
	mdata : OUT std_logic;
	clk : IN std_logic;
	mclk : OUT std_logic
	);
END mini_project_isuk218;

-- Design Ports Information
-- red	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hsync	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vsync	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdata	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mclk	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mini_project_isuk218 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_red : std_logic;
SIGNAL ww_green : std_logic;
SIGNAL ww_blue : std_logic;
SIGNAL ww_hsync : std_logic;
SIGNAL ww_vsync : std_logic;
SIGNAL ww_mdata : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_mclk : std_logic;
SIGNAL \inst|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|clock_25Mhz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inhibit_wait_count[2]~12_combout\ : std_logic;
SIGNAL \inst|inhibit_wait_count[3]~14_combout\ : std_logic;
SIGNAL \inst|inhibit_wait_count[8]~24_combout\ : std_logic;
SIGNAL \inst|inhibit_wait_count[9]~27\ : std_logic;
SIGNAL \inst|inhibit_wait_count[10]~28_combout\ : std_logic;
SIGNAL \inst7|Add0~0_combout\ : std_logic;
SIGNAL \inst7|Add0~1\ : std_logic;
SIGNAL \inst7|Add0~2_combout\ : std_logic;
SIGNAL \inst7|Add0~3\ : std_logic;
SIGNAL \inst7|Add0~4_combout\ : std_logic;
SIGNAL \inst7|Add0~5\ : std_logic;
SIGNAL \inst7|Add0~6_combout\ : std_logic;
SIGNAL \inst7|Add0~7\ : std_logic;
SIGNAL \inst7|Add0~8_combout\ : std_logic;
SIGNAL \inst7|Add0~9\ : std_logic;
SIGNAL \inst7|Add0~10_combout\ : std_logic;
SIGNAL \inst7|Add0~11\ : std_logic;
SIGNAL \inst7|Add0~12_combout\ : std_logic;
SIGNAL \inst7|Add0~13\ : std_logic;
SIGNAL \inst7|Add0~14_combout\ : std_logic;
SIGNAL \inst7|Add0~15\ : std_logic;
SIGNAL \inst7|Add0~16_combout\ : std_logic;
SIGNAL \inst7|Add0~17\ : std_logic;
SIGNAL \inst7|Add0~18_combout\ : std_logic;
SIGNAL \inst7|Add0~19\ : std_logic;
SIGNAL \inst7|Add0~20_combout\ : std_logic;
SIGNAL \inst7|Add0~21\ : std_logic;
SIGNAL \inst7|Add0~22_combout\ : std_logic;
SIGNAL \inst7|Add0~23\ : std_logic;
SIGNAL \inst7|Add0~24_combout\ : std_logic;
SIGNAL \inst7|Add0~25\ : std_logic;
SIGNAL \inst7|Add0~26_combout\ : std_logic;
SIGNAL \inst7|Add0~27\ : std_logic;
SIGNAL \inst7|Add0~28_combout\ : std_logic;
SIGNAL \inst7|Add0~29\ : std_logic;
SIGNAL \inst7|Add0~30_combout\ : std_logic;
SIGNAL \inst7|Add0~31\ : std_logic;
SIGNAL \inst7|Add0~32_combout\ : std_logic;
SIGNAL \inst7|Add0~33\ : std_logic;
SIGNAL \inst7|Add0~34_combout\ : std_logic;
SIGNAL \inst7|Add0~35\ : std_logic;
SIGNAL \inst7|Add0~36_combout\ : std_logic;
SIGNAL \inst7|Add0~37\ : std_logic;
SIGNAL \inst7|Add0~38_combout\ : std_logic;
SIGNAL \inst7|Add0~39\ : std_logic;
SIGNAL \inst7|Add0~40_combout\ : std_logic;
SIGNAL \inst7|Add0~41\ : std_logic;
SIGNAL \inst7|Add0~42_combout\ : std_logic;
SIGNAL \inst7|Add0~43\ : std_logic;
SIGNAL \inst7|Add0~44_combout\ : std_logic;
SIGNAL \inst7|Add0~45\ : std_logic;
SIGNAL \inst7|Add0~46_combout\ : std_logic;
SIGNAL \inst7|Add0~47\ : std_logic;
SIGNAL \inst7|Add0~48_combout\ : std_logic;
SIGNAL \inst7|Add0~49\ : std_logic;
SIGNAL \inst7|Add0~50_combout\ : std_logic;
SIGNAL \inst7|Add0~51\ : std_logic;
SIGNAL \inst7|Add0~52_combout\ : std_logic;
SIGNAL \inst7|Add0~53\ : std_logic;
SIGNAL \inst7|Add0~54_combout\ : std_logic;
SIGNAL \inst7|Add0~55\ : std_logic;
SIGNAL \inst7|Add0~56_combout\ : std_logic;
SIGNAL \inst7|Add0~57\ : std_logic;
SIGNAL \inst7|Add0~58_combout\ : std_logic;
SIGNAL \inst7|Add0~59\ : std_logic;
SIGNAL \inst7|Add0~60_combout\ : std_logic;
SIGNAL \inst7|Add0~61\ : std_logic;
SIGNAL \inst7|Add0~62_combout\ : std_logic;
SIGNAL \inst7|clock_25Mhz~q\ : std_logic;
SIGNAL \inst|MOUSE_CLK_FILTER~2_combout\ : std_logic;
SIGNAL \inst7|Equal0~0_combout\ : std_logic;
SIGNAL \inst7|Equal0~1_combout\ : std_logic;
SIGNAL \inst7|Equal0~2_combout\ : std_logic;
SIGNAL \inst7|Equal0~3_combout\ : std_logic;
SIGNAL \inst7|Equal0~4_combout\ : std_logic;
SIGNAL \inst7|Equal0~5_combout\ : std_logic;
SIGNAL \inst7|Equal0~6_combout\ : std_logic;
SIGNAL \inst7|Equal0~7_combout\ : std_logic;
SIGNAL \inst7|Equal0~8_combout\ : std_logic;
SIGNAL \inst7|Equal0~9_combout\ : std_logic;
SIGNAL \inst7|Equal0~10_combout\ : std_logic;
SIGNAL \inst7|i~0_combout\ : std_logic;
SIGNAL \inst|inhibit_wait_count[0]~30_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \inst7|clock_25Mhz~clkctrl_outclk\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst7|clock_25Mhz~feeder_combout\ : std_logic;
SIGNAL \mdata~output_o\ : std_logic;
SIGNAL \mclk~output_o\ : std_logic;
SIGNAL \red~output_o\ : std_logic;
SIGNAL \green~output_o\ : std_logic;
SIGNAL \blue~output_o\ : std_logic;
SIGNAL \hsync~output_o\ : std_logic;
SIGNAL \vsync~output_o\ : std_logic;
SIGNAL \inst|inhibit_wait_count[1]~10_combout\ : std_logic;
SIGNAL \inst|inhibit_wait_count[1]~11\ : std_logic;
SIGNAL \inst|inhibit_wait_count[2]~13\ : std_logic;
SIGNAL \inst|inhibit_wait_count[3]~15\ : std_logic;
SIGNAL \inst|inhibit_wait_count[4]~16_combout\ : std_logic;
SIGNAL \inst|inhibit_wait_count[4]~17\ : std_logic;
SIGNAL \inst|inhibit_wait_count[5]~18_combout\ : std_logic;
SIGNAL \inst|inhibit_wait_count[5]~19\ : std_logic;
SIGNAL \inst|inhibit_wait_count[6]~20_combout\ : std_logic;
SIGNAL \inst|inhibit_wait_count[6]~21\ : std_logic;
SIGNAL \inst|inhibit_wait_count[7]~22_combout\ : std_logic;
SIGNAL \inst|inhibit_wait_count[7]~23\ : std_logic;
SIGNAL \inst|inhibit_wait_count[8]~25\ : std_logic;
SIGNAL \inst|inhibit_wait_count[9]~26_combout\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \inst|filter[0]~feeder_combout\ : std_logic;
SIGNAL \inst|filter[1]~feeder_combout\ : std_logic;
SIGNAL \inst|filter[2]~feeder_combout\ : std_logic;
SIGNAL \inst|filter[3]~feeder_combout\ : std_logic;
SIGNAL \inst|filter[4]~feeder_combout\ : std_logic;
SIGNAL \inst|filter[5]~feeder_combout\ : std_logic;
SIGNAL \inst|MOUSE_CLK_FILTER~1_combout\ : std_logic;
SIGNAL \inst|filter[6]~feeder_combout\ : std_logic;
SIGNAL \inst|MOUSE_CLK_FILTER~0_combout\ : std_logic;
SIGNAL \inst|MOUSE_CLK_FILTER~3_combout\ : std_logic;
SIGNAL \inst|MOUSE_CLK_FILTER~feeder_combout\ : std_logic;
SIGNAL \inst|MOUSE_CLK_FILTER~q\ : std_logic;
SIGNAL \inst|MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \inst|SHIFTOUT[9]~feeder_combout\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|mouse_state.LOAD_COMMAND~q\ : std_logic;
SIGNAL \inst|Selector6~0_combout\ : std_logic;
SIGNAL \inst|send_data~q\ : std_logic;
SIGNAL \inst|OUTCNT~3_combout\ : std_logic;
SIGNAL \inst|send_char~0_combout\ : std_logic;
SIGNAL \inst|send_char~q\ : std_logic;
SIGNAL \inst|output_ready~0_combout\ : std_logic;
SIGNAL \inst|OUTCNT~2_combout\ : std_logic;
SIGNAL \inst|OUTCNT~0_combout\ : std_logic;
SIGNAL \inst|OUTCNT~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|output_ready~feeder_combout\ : std_logic;
SIGNAL \inst|output_ready~q\ : std_logic;
SIGNAL \inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst|mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;
SIGNAL \inst|MOUSE_DATA_BUF~0_combout\ : std_logic;
SIGNAL \inst|SHIFTOUT[8]~3_combout\ : std_logic;
SIGNAL \inst|SHIFTOUT[7]~feeder_combout\ : std_logic;
SIGNAL \inst|SHIFTOUT[6]~feeder_combout\ : std_logic;
SIGNAL \inst|SHIFTOUT[5]~feeder_combout\ : std_logic;
SIGNAL \inst|SHIFTOUT[4]~2_combout\ : std_logic;
SIGNAL \inst|SHIFTOUT[3]~1_combout\ : std_logic;
SIGNAL \inst|SHIFTOUT[2]~0_combout\ : std_logic;
SIGNAL \inst|SHIFTOUT[1]~feeder_combout\ : std_logic;
SIGNAL \inst|MOUSE_DATA_BUF~q\ : std_logic;
SIGNAL \inst|mouse_state.LOAD_COMMAND2~feeder_combout\ : std_logic;
SIGNAL \inst|mouse_state.LOAD_COMMAND2~q\ : std_logic;
SIGNAL \inst|WideOr4~combout\ : std_logic;
SIGNAL \inst|inhibit_wait_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|filter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|SHIFTOUT\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|OUTCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|i\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \inst|ALT_INV_send_data~q\ : std_logic;
SIGNAL \inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\ : std_logic;

BEGIN

red <= ww_red;
green <= ww_green;
blue <= ww_blue;
hsync <= ww_hsync;
vsync <= ww_vsync;
mdata <= ww_mdata;
ww_clk <= clk;
mclk <= ww_mclk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|MOUSE_CLK_FILTER~q\);

\inst7|clock_25Mhz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst7|clock_25Mhz~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ <= NOT \inst|MOUSE_CLK_FILTER~clkctrl_outclk\;
\inst|ALT_INV_send_data~q\ <= NOT \inst|send_data~q\;
\inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\ <= NOT \inst|mouse_state.INHIBIT_TRANS~q\;

-- Location: FF_X32_Y28_N27
\inst|inhibit_wait_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|inhibit_wait_count[10]~28_combout\,
	ena => \inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inhibit_wait_count\(10));

-- Location: FF_X32_Y28_N23
\inst|inhibit_wait_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|inhibit_wait_count[8]~24_combout\,
	ena => \inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inhibit_wait_count\(8));

-- Location: FF_X32_Y28_N13
\inst|inhibit_wait_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|inhibit_wait_count[3]~14_combout\,
	ena => \inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inhibit_wait_count\(3));

-- Location: FF_X32_Y28_N11
\inst|inhibit_wait_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|inhibit_wait_count[2]~12_combout\,
	ena => \inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inhibit_wait_count\(2));

-- Location: LCCOMB_X32_Y28_N10
\inst|inhibit_wait_count[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inhibit_wait_count[2]~12_combout\ = (\inst|inhibit_wait_count\(2) & (!\inst|inhibit_wait_count[1]~11\)) # (!\inst|inhibit_wait_count\(2) & ((\inst|inhibit_wait_count[1]~11\) # (GND)))
-- \inst|inhibit_wait_count[2]~13\ = CARRY((!\inst|inhibit_wait_count[1]~11\) # (!\inst|inhibit_wait_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inhibit_wait_count\(2),
	datad => VCC,
	cin => \inst|inhibit_wait_count[1]~11\,
	combout => \inst|inhibit_wait_count[2]~12_combout\,
	cout => \inst|inhibit_wait_count[2]~13\);

-- Location: LCCOMB_X32_Y28_N12
\inst|inhibit_wait_count[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inhibit_wait_count[3]~14_combout\ = (\inst|inhibit_wait_count\(3) & (\inst|inhibit_wait_count[2]~13\ $ (GND))) # (!\inst|inhibit_wait_count\(3) & (!\inst|inhibit_wait_count[2]~13\ & VCC))
-- \inst|inhibit_wait_count[3]~15\ = CARRY((\inst|inhibit_wait_count\(3) & !\inst|inhibit_wait_count[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inhibit_wait_count\(3),
	datad => VCC,
	cin => \inst|inhibit_wait_count[2]~13\,
	combout => \inst|inhibit_wait_count[3]~14_combout\,
	cout => \inst|inhibit_wait_count[3]~15\);

-- Location: LCCOMB_X32_Y28_N22
\inst|inhibit_wait_count[8]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inhibit_wait_count[8]~24_combout\ = (\inst|inhibit_wait_count\(8) & (!\inst|inhibit_wait_count[7]~23\)) # (!\inst|inhibit_wait_count\(8) & ((\inst|inhibit_wait_count[7]~23\) # (GND)))
-- \inst|inhibit_wait_count[8]~25\ = CARRY((!\inst|inhibit_wait_count[7]~23\) # (!\inst|inhibit_wait_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inhibit_wait_count\(8),
	datad => VCC,
	cin => \inst|inhibit_wait_count[7]~23\,
	combout => \inst|inhibit_wait_count[8]~24_combout\,
	cout => \inst|inhibit_wait_count[8]~25\);

-- Location: LCCOMB_X32_Y28_N24
\inst|inhibit_wait_count[9]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inhibit_wait_count[9]~26_combout\ = (\inst|inhibit_wait_count\(9) & (\inst|inhibit_wait_count[8]~25\ $ (GND))) # (!\inst|inhibit_wait_count\(9) & (!\inst|inhibit_wait_count[8]~25\ & VCC))
-- \inst|inhibit_wait_count[9]~27\ = CARRY((\inst|inhibit_wait_count\(9) & !\inst|inhibit_wait_count[8]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inhibit_wait_count\(9),
	datad => VCC,
	cin => \inst|inhibit_wait_count[8]~25\,
	combout => \inst|inhibit_wait_count[9]~26_combout\,
	cout => \inst|inhibit_wait_count[9]~27\);

-- Location: LCCOMB_X32_Y28_N26
\inst|inhibit_wait_count[10]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inhibit_wait_count[10]~28_combout\ = \inst|inhibit_wait_count\(10) $ (\inst|inhibit_wait_count[9]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inhibit_wait_count\(10),
	cin => \inst|inhibit_wait_count[9]~27\,
	combout => \inst|inhibit_wait_count[10]~28_combout\);

-- Location: LCCOMB_X2_Y14_N0
\inst7|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~0_combout\ = \inst7|i\(0) $ (VCC)
-- \inst7|Add0~1\ = CARRY(\inst7|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(0),
	datad => VCC,
	combout => \inst7|Add0~0_combout\,
	cout => \inst7|Add0~1\);

-- Location: LCCOMB_X2_Y14_N2
\inst7|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~2_combout\ = (\inst7|i\(1) & (!\inst7|Add0~1\)) # (!\inst7|i\(1) & ((\inst7|Add0~1\) # (GND)))
-- \inst7|Add0~3\ = CARRY((!\inst7|Add0~1\) # (!\inst7|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(1),
	datad => VCC,
	cin => \inst7|Add0~1\,
	combout => \inst7|Add0~2_combout\,
	cout => \inst7|Add0~3\);

-- Location: LCCOMB_X2_Y14_N4
\inst7|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~4_combout\ = (\inst7|i\(2) & (\inst7|Add0~3\ $ (GND))) # (!\inst7|i\(2) & (!\inst7|Add0~3\ & VCC))
-- \inst7|Add0~5\ = CARRY((\inst7|i\(2) & !\inst7|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(2),
	datad => VCC,
	cin => \inst7|Add0~3\,
	combout => \inst7|Add0~4_combout\,
	cout => \inst7|Add0~5\);

-- Location: LCCOMB_X2_Y14_N6
\inst7|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~6_combout\ = (\inst7|i\(3) & (!\inst7|Add0~5\)) # (!\inst7|i\(3) & ((\inst7|Add0~5\) # (GND)))
-- \inst7|Add0~7\ = CARRY((!\inst7|Add0~5\) # (!\inst7|i\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(3),
	datad => VCC,
	cin => \inst7|Add0~5\,
	combout => \inst7|Add0~6_combout\,
	cout => \inst7|Add0~7\);

-- Location: LCCOMB_X2_Y14_N8
\inst7|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~8_combout\ = (\inst7|i\(4) & (\inst7|Add0~7\ $ (GND))) # (!\inst7|i\(4) & (!\inst7|Add0~7\ & VCC))
-- \inst7|Add0~9\ = CARRY((\inst7|i\(4) & !\inst7|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(4),
	datad => VCC,
	cin => \inst7|Add0~7\,
	combout => \inst7|Add0~8_combout\,
	cout => \inst7|Add0~9\);

-- Location: LCCOMB_X2_Y14_N10
\inst7|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~10_combout\ = (\inst7|i\(5) & (!\inst7|Add0~9\)) # (!\inst7|i\(5) & ((\inst7|Add0~9\) # (GND)))
-- \inst7|Add0~11\ = CARRY((!\inst7|Add0~9\) # (!\inst7|i\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(5),
	datad => VCC,
	cin => \inst7|Add0~9\,
	combout => \inst7|Add0~10_combout\,
	cout => \inst7|Add0~11\);

-- Location: LCCOMB_X2_Y14_N12
\inst7|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~12_combout\ = (\inst7|i\(6) & (\inst7|Add0~11\ $ (GND))) # (!\inst7|i\(6) & (!\inst7|Add0~11\ & VCC))
-- \inst7|Add0~13\ = CARRY((\inst7|i\(6) & !\inst7|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(6),
	datad => VCC,
	cin => \inst7|Add0~11\,
	combout => \inst7|Add0~12_combout\,
	cout => \inst7|Add0~13\);

-- Location: LCCOMB_X2_Y14_N14
\inst7|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~14_combout\ = (\inst7|i\(7) & (!\inst7|Add0~13\)) # (!\inst7|i\(7) & ((\inst7|Add0~13\) # (GND)))
-- \inst7|Add0~15\ = CARRY((!\inst7|Add0~13\) # (!\inst7|i\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(7),
	datad => VCC,
	cin => \inst7|Add0~13\,
	combout => \inst7|Add0~14_combout\,
	cout => \inst7|Add0~15\);

-- Location: LCCOMB_X2_Y14_N16
\inst7|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~16_combout\ = (\inst7|i\(8) & (\inst7|Add0~15\ $ (GND))) # (!\inst7|i\(8) & (!\inst7|Add0~15\ & VCC))
-- \inst7|Add0~17\ = CARRY((\inst7|i\(8) & !\inst7|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(8),
	datad => VCC,
	cin => \inst7|Add0~15\,
	combout => \inst7|Add0~16_combout\,
	cout => \inst7|Add0~17\);

-- Location: LCCOMB_X2_Y14_N18
\inst7|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~18_combout\ = (\inst7|i\(9) & (!\inst7|Add0~17\)) # (!\inst7|i\(9) & ((\inst7|Add0~17\) # (GND)))
-- \inst7|Add0~19\ = CARRY((!\inst7|Add0~17\) # (!\inst7|i\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(9),
	datad => VCC,
	cin => \inst7|Add0~17\,
	combout => \inst7|Add0~18_combout\,
	cout => \inst7|Add0~19\);

-- Location: LCCOMB_X2_Y14_N20
\inst7|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~20_combout\ = (\inst7|i\(10) & (\inst7|Add0~19\ $ (GND))) # (!\inst7|i\(10) & (!\inst7|Add0~19\ & VCC))
-- \inst7|Add0~21\ = CARRY((\inst7|i\(10) & !\inst7|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(10),
	datad => VCC,
	cin => \inst7|Add0~19\,
	combout => \inst7|Add0~20_combout\,
	cout => \inst7|Add0~21\);

-- Location: LCCOMB_X2_Y14_N22
\inst7|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~22_combout\ = (\inst7|i\(11) & (!\inst7|Add0~21\)) # (!\inst7|i\(11) & ((\inst7|Add0~21\) # (GND)))
-- \inst7|Add0~23\ = CARRY((!\inst7|Add0~21\) # (!\inst7|i\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(11),
	datad => VCC,
	cin => \inst7|Add0~21\,
	combout => \inst7|Add0~22_combout\,
	cout => \inst7|Add0~23\);

-- Location: LCCOMB_X2_Y14_N24
\inst7|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~24_combout\ = (\inst7|i\(12) & (\inst7|Add0~23\ $ (GND))) # (!\inst7|i\(12) & (!\inst7|Add0~23\ & VCC))
-- \inst7|Add0~25\ = CARRY((\inst7|i\(12) & !\inst7|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(12),
	datad => VCC,
	cin => \inst7|Add0~23\,
	combout => \inst7|Add0~24_combout\,
	cout => \inst7|Add0~25\);

-- Location: LCCOMB_X2_Y14_N26
\inst7|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~26_combout\ = (\inst7|i\(13) & (!\inst7|Add0~25\)) # (!\inst7|i\(13) & ((\inst7|Add0~25\) # (GND)))
-- \inst7|Add0~27\ = CARRY((!\inst7|Add0~25\) # (!\inst7|i\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(13),
	datad => VCC,
	cin => \inst7|Add0~25\,
	combout => \inst7|Add0~26_combout\,
	cout => \inst7|Add0~27\);

-- Location: LCCOMB_X2_Y14_N28
\inst7|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~28_combout\ = (\inst7|i\(14) & (\inst7|Add0~27\ $ (GND))) # (!\inst7|i\(14) & (!\inst7|Add0~27\ & VCC))
-- \inst7|Add0~29\ = CARRY((\inst7|i\(14) & !\inst7|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(14),
	datad => VCC,
	cin => \inst7|Add0~27\,
	combout => \inst7|Add0~28_combout\,
	cout => \inst7|Add0~29\);

-- Location: LCCOMB_X2_Y14_N30
\inst7|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~30_combout\ = (\inst7|i\(15) & (!\inst7|Add0~29\)) # (!\inst7|i\(15) & ((\inst7|Add0~29\) # (GND)))
-- \inst7|Add0~31\ = CARRY((!\inst7|Add0~29\) # (!\inst7|i\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(15),
	datad => VCC,
	cin => \inst7|Add0~29\,
	combout => \inst7|Add0~30_combout\,
	cout => \inst7|Add0~31\);

-- Location: LCCOMB_X2_Y13_N0
\inst7|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~32_combout\ = (\inst7|i\(16) & (\inst7|Add0~31\ $ (GND))) # (!\inst7|i\(16) & (!\inst7|Add0~31\ & VCC))
-- \inst7|Add0~33\ = CARRY((\inst7|i\(16) & !\inst7|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(16),
	datad => VCC,
	cin => \inst7|Add0~31\,
	combout => \inst7|Add0~32_combout\,
	cout => \inst7|Add0~33\);

-- Location: LCCOMB_X2_Y13_N2
\inst7|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~34_combout\ = (\inst7|i\(17) & (!\inst7|Add0~33\)) # (!\inst7|i\(17) & ((\inst7|Add0~33\) # (GND)))
-- \inst7|Add0~35\ = CARRY((!\inst7|Add0~33\) # (!\inst7|i\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(17),
	datad => VCC,
	cin => \inst7|Add0~33\,
	combout => \inst7|Add0~34_combout\,
	cout => \inst7|Add0~35\);

-- Location: LCCOMB_X2_Y13_N4
\inst7|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~36_combout\ = (\inst7|i\(18) & (\inst7|Add0~35\ $ (GND))) # (!\inst7|i\(18) & (!\inst7|Add0~35\ & VCC))
-- \inst7|Add0~37\ = CARRY((\inst7|i\(18) & !\inst7|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(18),
	datad => VCC,
	cin => \inst7|Add0~35\,
	combout => \inst7|Add0~36_combout\,
	cout => \inst7|Add0~37\);

-- Location: LCCOMB_X2_Y13_N6
\inst7|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~38_combout\ = (\inst7|i\(19) & (!\inst7|Add0~37\)) # (!\inst7|i\(19) & ((\inst7|Add0~37\) # (GND)))
-- \inst7|Add0~39\ = CARRY((!\inst7|Add0~37\) # (!\inst7|i\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(19),
	datad => VCC,
	cin => \inst7|Add0~37\,
	combout => \inst7|Add0~38_combout\,
	cout => \inst7|Add0~39\);

-- Location: LCCOMB_X2_Y13_N8
\inst7|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~40_combout\ = (\inst7|i\(20) & (\inst7|Add0~39\ $ (GND))) # (!\inst7|i\(20) & (!\inst7|Add0~39\ & VCC))
-- \inst7|Add0~41\ = CARRY((\inst7|i\(20) & !\inst7|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(20),
	datad => VCC,
	cin => \inst7|Add0~39\,
	combout => \inst7|Add0~40_combout\,
	cout => \inst7|Add0~41\);

-- Location: LCCOMB_X2_Y13_N10
\inst7|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~42_combout\ = (\inst7|i\(21) & (!\inst7|Add0~41\)) # (!\inst7|i\(21) & ((\inst7|Add0~41\) # (GND)))
-- \inst7|Add0~43\ = CARRY((!\inst7|Add0~41\) # (!\inst7|i\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(21),
	datad => VCC,
	cin => \inst7|Add0~41\,
	combout => \inst7|Add0~42_combout\,
	cout => \inst7|Add0~43\);

-- Location: LCCOMB_X2_Y13_N12
\inst7|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~44_combout\ = (\inst7|i\(22) & (\inst7|Add0~43\ $ (GND))) # (!\inst7|i\(22) & (!\inst7|Add0~43\ & VCC))
-- \inst7|Add0~45\ = CARRY((\inst7|i\(22) & !\inst7|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(22),
	datad => VCC,
	cin => \inst7|Add0~43\,
	combout => \inst7|Add0~44_combout\,
	cout => \inst7|Add0~45\);

-- Location: LCCOMB_X2_Y13_N14
\inst7|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~46_combout\ = (\inst7|i\(23) & (!\inst7|Add0~45\)) # (!\inst7|i\(23) & ((\inst7|Add0~45\) # (GND)))
-- \inst7|Add0~47\ = CARRY((!\inst7|Add0~45\) # (!\inst7|i\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(23),
	datad => VCC,
	cin => \inst7|Add0~45\,
	combout => \inst7|Add0~46_combout\,
	cout => \inst7|Add0~47\);

-- Location: LCCOMB_X2_Y13_N16
\inst7|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~48_combout\ = (\inst7|i\(24) & (\inst7|Add0~47\ $ (GND))) # (!\inst7|i\(24) & (!\inst7|Add0~47\ & VCC))
-- \inst7|Add0~49\ = CARRY((\inst7|i\(24) & !\inst7|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(24),
	datad => VCC,
	cin => \inst7|Add0~47\,
	combout => \inst7|Add0~48_combout\,
	cout => \inst7|Add0~49\);

-- Location: LCCOMB_X2_Y13_N18
\inst7|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~50_combout\ = (\inst7|i\(25) & (!\inst7|Add0~49\)) # (!\inst7|i\(25) & ((\inst7|Add0~49\) # (GND)))
-- \inst7|Add0~51\ = CARRY((!\inst7|Add0~49\) # (!\inst7|i\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(25),
	datad => VCC,
	cin => \inst7|Add0~49\,
	combout => \inst7|Add0~50_combout\,
	cout => \inst7|Add0~51\);

-- Location: LCCOMB_X2_Y13_N20
\inst7|Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~52_combout\ = (\inst7|i\(26) & (\inst7|Add0~51\ $ (GND))) # (!\inst7|i\(26) & (!\inst7|Add0~51\ & VCC))
-- \inst7|Add0~53\ = CARRY((\inst7|i\(26) & !\inst7|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(26),
	datad => VCC,
	cin => \inst7|Add0~51\,
	combout => \inst7|Add0~52_combout\,
	cout => \inst7|Add0~53\);

-- Location: LCCOMB_X2_Y13_N22
\inst7|Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~54_combout\ = (\inst7|i\(27) & (!\inst7|Add0~53\)) # (!\inst7|i\(27) & ((\inst7|Add0~53\) # (GND)))
-- \inst7|Add0~55\ = CARRY((!\inst7|Add0~53\) # (!\inst7|i\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(27),
	datad => VCC,
	cin => \inst7|Add0~53\,
	combout => \inst7|Add0~54_combout\,
	cout => \inst7|Add0~55\);

-- Location: LCCOMB_X2_Y13_N24
\inst7|Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~56_combout\ = (\inst7|i\(28) & (\inst7|Add0~55\ $ (GND))) # (!\inst7|i\(28) & (!\inst7|Add0~55\ & VCC))
-- \inst7|Add0~57\ = CARRY((\inst7|i\(28) & !\inst7|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(28),
	datad => VCC,
	cin => \inst7|Add0~55\,
	combout => \inst7|Add0~56_combout\,
	cout => \inst7|Add0~57\);

-- Location: LCCOMB_X2_Y13_N26
\inst7|Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~58_combout\ = (\inst7|i\(29) & (!\inst7|Add0~57\)) # (!\inst7|i\(29) & ((\inst7|Add0~57\) # (GND)))
-- \inst7|Add0~59\ = CARRY((!\inst7|Add0~57\) # (!\inst7|i\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(29),
	datad => VCC,
	cin => \inst7|Add0~57\,
	combout => \inst7|Add0~58_combout\,
	cout => \inst7|Add0~59\);

-- Location: LCCOMB_X2_Y13_N28
\inst7|Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~60_combout\ = (\inst7|i\(30) & (\inst7|Add0~59\ $ (GND))) # (!\inst7|i\(30) & (!\inst7|Add0~59\ & VCC))
-- \inst7|Add0~61\ = CARRY((\inst7|i\(30) & !\inst7|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(30),
	datad => VCC,
	cin => \inst7|Add0~59\,
	combout => \inst7|Add0~60_combout\,
	cout => \inst7|Add0~61\);

-- Location: LCCOMB_X2_Y13_N30
\inst7|Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~62_combout\ = \inst7|i\(31) $ (\inst7|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(31),
	cin => \inst7|Add0~61\,
	combout => \inst7|Add0~62_combout\);

-- Location: FF_X1_Y14_N15
\inst7|clock_25Mhz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|clock_25Mhz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|clock_25Mhz~q\);

-- Location: LCCOMB_X23_Y28_N22
\inst|MOUSE_CLK_FILTER~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|MOUSE_CLK_FILTER~2_combout\ = (\inst|filter\(0) & ((\inst|MOUSE_CLK_FILTER~q\) # ((\inst|filter\(1) & \inst|filter\(6))))) # (!\inst|filter\(0) & (\inst|MOUSE_CLK_FILTER~q\ & ((\inst|filter\(1)) # (\inst|filter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|filter\(0),
	datab => \inst|MOUSE_CLK_FILTER~q\,
	datac => \inst|filter\(1),
	datad => \inst|filter\(6),
	combout => \inst|MOUSE_CLK_FILTER~2_combout\);

-- Location: FF_X2_Y14_N1
\inst7|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(0));

-- Location: FF_X2_Y14_N3
\inst7|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst7|i~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(1));

-- Location: FF_X2_Y14_N5
\inst7|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(2));

-- Location: FF_X2_Y14_N7
\inst7|i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(3));

-- Location: LCCOMB_X1_Y14_N26
\inst7|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~0_combout\ = (!\inst7|i\(1) & (!\inst7|i\(3) & (\inst7|i\(0) & !\inst7|i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(1),
	datab => \inst7|i\(3),
	datac => \inst7|i\(0),
	datad => \inst7|i\(2),
	combout => \inst7|Equal0~0_combout\);

-- Location: FF_X2_Y14_N9
\inst7|i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(4));

-- Location: FF_X2_Y14_N11
\inst7|i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(5));

-- Location: FF_X2_Y14_N13
\inst7|i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(6));

-- Location: FF_X2_Y14_N15
\inst7|i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(7));

-- Location: LCCOMB_X1_Y14_N16
\inst7|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~1_combout\ = (!\inst7|i\(5) & (!\inst7|i\(7) & (!\inst7|i\(6) & !\inst7|i\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(5),
	datab => \inst7|i\(7),
	datac => \inst7|i\(6),
	datad => \inst7|i\(4),
	combout => \inst7|Equal0~1_combout\);

-- Location: FF_X2_Y14_N17
\inst7|i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(8));

-- Location: FF_X2_Y14_N19
\inst7|i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(9));

-- Location: FF_X2_Y14_N21
\inst7|i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(10));

-- Location: FF_X2_Y14_N23
\inst7|i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(11));

-- Location: LCCOMB_X1_Y14_N4
\inst7|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~2_combout\ = (!\inst7|i\(10) & (!\inst7|i\(9) & (!\inst7|i\(8) & !\inst7|i\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(10),
	datab => \inst7|i\(9),
	datac => \inst7|i\(8),
	datad => \inst7|i\(11),
	combout => \inst7|Equal0~2_combout\);

-- Location: FF_X2_Y14_N25
\inst7|i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(12));

-- Location: FF_X2_Y14_N27
\inst7|i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(13));

-- Location: FF_X2_Y14_N29
\inst7|i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(14));

-- Location: FF_X2_Y14_N31
\inst7|i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(15));

-- Location: LCCOMB_X1_Y14_N0
\inst7|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~3_combout\ = (!\inst7|i\(15) & (!\inst7|i\(13) & (!\inst7|i\(12) & !\inst7|i\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(15),
	datab => \inst7|i\(13),
	datac => \inst7|i\(12),
	datad => \inst7|i\(14),
	combout => \inst7|Equal0~3_combout\);

-- Location: LCCOMB_X1_Y14_N20
\inst7|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~4_combout\ = (\inst7|Equal0~0_combout\ & (\inst7|Equal0~3_combout\ & (\inst7|Equal0~2_combout\ & \inst7|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~0_combout\,
	datab => \inst7|Equal0~3_combout\,
	datac => \inst7|Equal0~2_combout\,
	datad => \inst7|Equal0~1_combout\,
	combout => \inst7|Equal0~4_combout\);

-- Location: FF_X2_Y13_N1
\inst7|i[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(16));

-- Location: FF_X2_Y13_N3
\inst7|i[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(17));

-- Location: FF_X2_Y13_N5
\inst7|i[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(18));

-- Location: FF_X2_Y13_N7
\inst7|i[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(19));

-- Location: LCCOMB_X1_Y13_N8
\inst7|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~5_combout\ = (!\inst7|i\(17) & (!\inst7|i\(16) & (!\inst7|i\(19) & !\inst7|i\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(17),
	datab => \inst7|i\(16),
	datac => \inst7|i\(19),
	datad => \inst7|i\(18),
	combout => \inst7|Equal0~5_combout\);

-- Location: FF_X2_Y13_N9
\inst7|i[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(20));

-- Location: FF_X2_Y13_N11
\inst7|i[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(21));

-- Location: LCCOMB_X1_Y13_N10
\inst7|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~6_combout\ = (!\inst7|i\(20) & !\inst7|i\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|i\(20),
	datad => \inst7|i\(21),
	combout => \inst7|Equal0~6_combout\);

-- Location: FF_X2_Y13_N13
\inst7|i[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(22));

-- Location: FF_X2_Y13_N15
\inst7|i[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(23));

-- Location: LCCOMB_X1_Y13_N0
\inst7|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~7_combout\ = (!\inst7|i\(23) & (!\inst7|i\(22) & (\inst7|Equal0~5_combout\ & \inst7|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(23),
	datab => \inst7|i\(22),
	datac => \inst7|Equal0~5_combout\,
	datad => \inst7|Equal0~6_combout\,
	combout => \inst7|Equal0~7_combout\);

-- Location: FF_X2_Y13_N17
\inst7|i[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(24));

-- Location: FF_X2_Y13_N19
\inst7|i[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(25));

-- Location: FF_X2_Y13_N21
\inst7|i[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(26));

-- Location: FF_X2_Y13_N23
\inst7|i[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(27));

-- Location: LCCOMB_X1_Y13_N6
\inst7|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~8_combout\ = (!\inst7|i\(26) & (!\inst7|i\(25) & (!\inst7|i\(24) & !\inst7|i\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(26),
	datab => \inst7|i\(25),
	datac => \inst7|i\(24),
	datad => \inst7|i\(27),
	combout => \inst7|Equal0~8_combout\);

-- Location: FF_X2_Y13_N25
\inst7|i[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(28));

-- Location: FF_X2_Y13_N27
\inst7|i[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(29));

-- Location: FF_X2_Y13_N29
\inst7|i[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(30));

-- Location: FF_X2_Y13_N31
\inst7|i[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(31));

-- Location: LCCOMB_X1_Y13_N16
\inst7|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~9_combout\ = (!\inst7|i\(31) & (!\inst7|i\(28) & (!\inst7|i\(29) & !\inst7|i\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(31),
	datab => \inst7|i\(28),
	datac => \inst7|i\(29),
	datad => \inst7|i\(30),
	combout => \inst7|Equal0~9_combout\);

-- Location: LCCOMB_X1_Y14_N12
\inst7|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~10_combout\ = (\inst7|Equal0~8_combout\ & (\inst7|Equal0~7_combout\ & (\inst7|Equal0~9_combout\ & \inst7|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~8_combout\,
	datab => \inst7|Equal0~7_combout\,
	datac => \inst7|Equal0~9_combout\,
	datad => \inst7|Equal0~4_combout\,
	combout => \inst7|Equal0~10_combout\);

-- Location: FF_X32_Y28_N29
\inst|inhibit_wait_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|inhibit_wait_count[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inhibit_wait_count\(0));

-- Location: LCCOMB_X1_Y14_N6
\inst7|i~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|i~0_combout\ = (\inst7|Add0~2_combout\ & !\inst7|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Add0~2_combout\,
	datad => \inst7|Equal0~10_combout\,
	combout => \inst7|i~0_combout\);

-- Location: LCCOMB_X32_Y28_N28
\inst|inhibit_wait_count[0]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inhibit_wait_count[0]~30_combout\ = \inst|inhibit_wait_count\(0) $ (!\inst|mouse_state.INHIBIT_TRANS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inhibit_wait_count\(0),
	datad => \inst|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst|inhibit_wait_count[0]~30_combout\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G1
\inst7|clock_25Mhz~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7|clock_25Mhz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7|clock_25Mhz~clkctrl_outclk\);

-- Location: CLKCTRL_G9
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

-- Location: LCCOMB_X1_Y14_N14
\inst7|clock_25Mhz~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|clock_25Mhz~feeder_combout\ = \inst7|Equal0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|Equal0~10_combout\,
	combout => \inst7|clock_25Mhz~feeder_combout\);

-- Location: IOOBUF_X35_Y29_N16
\mdata~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MOUSE_DATA_BUF~q\,
	oe => \inst|mouse_state.WAIT_OUTPUT_READY~q\,
	devoe => ww_devoe,
	o => \mdata~output_o\);

-- Location: IOOBUF_X35_Y29_N23
\mclk~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|mouse_state.INHIBIT_TRANS~q\,
	oe => \inst|WideOr4~combout\,
	devoe => ww_devoe,
	o => \mclk~output_o\);

-- Location: IOOBUF_X37_Y29_N9
\red~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \red~output_o\);

-- Location: IOOBUF_X19_Y0_N9
\green~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \green~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\blue~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \blue~output_o\);

-- Location: IOOBUF_X39_Y29_N2
\hsync~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \hsync~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\vsync~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vsync~output_o\);

-- Location: LCCOMB_X32_Y28_N8
\inst|inhibit_wait_count[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inhibit_wait_count[1]~10_combout\ = (\inst|inhibit_wait_count\(0) & (\inst|inhibit_wait_count\(1) $ (VCC))) # (!\inst|inhibit_wait_count\(0) & (\inst|inhibit_wait_count\(1) & VCC))
-- \inst|inhibit_wait_count[1]~11\ = CARRY((\inst|inhibit_wait_count\(0) & \inst|inhibit_wait_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inhibit_wait_count\(0),
	datab => \inst|inhibit_wait_count\(1),
	datad => VCC,
	combout => \inst|inhibit_wait_count[1]~10_combout\,
	cout => \inst|inhibit_wait_count[1]~11\);

-- Location: FF_X32_Y28_N9
\inst|inhibit_wait_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|inhibit_wait_count[1]~10_combout\,
	ena => \inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inhibit_wait_count\(1));

-- Location: LCCOMB_X32_Y28_N14
\inst|inhibit_wait_count[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inhibit_wait_count[4]~16_combout\ = (\inst|inhibit_wait_count\(4) & (!\inst|inhibit_wait_count[3]~15\)) # (!\inst|inhibit_wait_count\(4) & ((\inst|inhibit_wait_count[3]~15\) # (GND)))
-- \inst|inhibit_wait_count[4]~17\ = CARRY((!\inst|inhibit_wait_count[3]~15\) # (!\inst|inhibit_wait_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inhibit_wait_count\(4),
	datad => VCC,
	cin => \inst|inhibit_wait_count[3]~15\,
	combout => \inst|inhibit_wait_count[4]~16_combout\,
	cout => \inst|inhibit_wait_count[4]~17\);

-- Location: FF_X32_Y28_N15
\inst|inhibit_wait_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|inhibit_wait_count[4]~16_combout\,
	ena => \inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inhibit_wait_count\(4));

-- Location: LCCOMB_X32_Y28_N16
\inst|inhibit_wait_count[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inhibit_wait_count[5]~18_combout\ = (\inst|inhibit_wait_count\(5) & (\inst|inhibit_wait_count[4]~17\ $ (GND))) # (!\inst|inhibit_wait_count\(5) & (!\inst|inhibit_wait_count[4]~17\ & VCC))
-- \inst|inhibit_wait_count[5]~19\ = CARRY((\inst|inhibit_wait_count\(5) & !\inst|inhibit_wait_count[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inhibit_wait_count\(5),
	datad => VCC,
	cin => \inst|inhibit_wait_count[4]~17\,
	combout => \inst|inhibit_wait_count[5]~18_combout\,
	cout => \inst|inhibit_wait_count[5]~19\);

-- Location: FF_X32_Y28_N17
\inst|inhibit_wait_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|inhibit_wait_count[5]~18_combout\,
	ena => \inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inhibit_wait_count\(5));

-- Location: LCCOMB_X32_Y28_N18
\inst|inhibit_wait_count[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inhibit_wait_count[6]~20_combout\ = (\inst|inhibit_wait_count\(6) & (!\inst|inhibit_wait_count[5]~19\)) # (!\inst|inhibit_wait_count\(6) & ((\inst|inhibit_wait_count[5]~19\) # (GND)))
-- \inst|inhibit_wait_count[6]~21\ = CARRY((!\inst|inhibit_wait_count[5]~19\) # (!\inst|inhibit_wait_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inhibit_wait_count\(6),
	datad => VCC,
	cin => \inst|inhibit_wait_count[5]~19\,
	combout => \inst|inhibit_wait_count[6]~20_combout\,
	cout => \inst|inhibit_wait_count[6]~21\);

-- Location: FF_X32_Y28_N19
\inst|inhibit_wait_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|inhibit_wait_count[6]~20_combout\,
	ena => \inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inhibit_wait_count\(6));

-- Location: LCCOMB_X32_Y28_N20
\inst|inhibit_wait_count[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inhibit_wait_count[7]~22_combout\ = (\inst|inhibit_wait_count\(7) & (\inst|inhibit_wait_count[6]~21\ $ (GND))) # (!\inst|inhibit_wait_count\(7) & (!\inst|inhibit_wait_count[6]~21\ & VCC))
-- \inst|inhibit_wait_count[7]~23\ = CARRY((\inst|inhibit_wait_count\(7) & !\inst|inhibit_wait_count[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inhibit_wait_count\(7),
	datad => VCC,
	cin => \inst|inhibit_wait_count[6]~21\,
	combout => \inst|inhibit_wait_count[7]~22_combout\,
	cout => \inst|inhibit_wait_count[7]~23\);

-- Location: FF_X32_Y28_N21
\inst|inhibit_wait_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|inhibit_wait_count[7]~22_combout\,
	ena => \inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inhibit_wait_count\(7));

-- Location: FF_X32_Y28_N25
\inst|inhibit_wait_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|inhibit_wait_count[9]~26_combout\,
	ena => \inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inhibit_wait_count\(9));

-- Location: LCCOMB_X32_Y28_N4
\inst|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = (\inst|mouse_state.INHIBIT_TRANS~q\) # ((\inst|inhibit_wait_count\(10) & \inst|inhibit_wait_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inhibit_wait_count\(10),
	datac => \inst|mouse_state.INHIBIT_TRANS~q\,
	datad => \inst|inhibit_wait_count\(9),
	combout => \inst|Selector0~0_combout\);

-- Location: FF_X32_Y28_N5
\inst|mouse_state.INHIBIT_TRANS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_state.INHIBIT_TRANS~q\);

-- Location: LCCOMB_X23_Y28_N12
\inst|filter[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|filter[0]~feeder_combout\ = \inst|mouse_state.INHIBIT_TRANS~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst|filter[0]~feeder_combout\);

-- Location: FF_X23_Y28_N13
\inst|filter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|filter[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|filter\(0));

-- Location: LCCOMB_X23_Y28_N14
\inst|filter[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|filter[1]~feeder_combout\ = \inst|filter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|filter\(0),
	combout => \inst|filter[1]~feeder_combout\);

-- Location: FF_X23_Y28_N15
\inst|filter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|filter[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|filter\(1));

-- Location: LCCOMB_X23_Y28_N30
\inst|filter[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|filter[2]~feeder_combout\ = \inst|filter\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|filter\(1),
	combout => \inst|filter[2]~feeder_combout\);

-- Location: FF_X23_Y28_N31
\inst|filter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|filter[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|filter\(2));

-- Location: LCCOMB_X23_Y28_N26
\inst|filter[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|filter[3]~feeder_combout\ = \inst|filter\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|filter\(2),
	combout => \inst|filter[3]~feeder_combout\);

-- Location: FF_X23_Y28_N27
\inst|filter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|filter[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|filter\(3));

-- Location: LCCOMB_X23_Y28_N20
\inst|filter[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|filter[4]~feeder_combout\ = \inst|filter\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|filter\(3),
	combout => \inst|filter[4]~feeder_combout\);

-- Location: FF_X23_Y28_N21
\inst|filter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|filter[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|filter\(4));

-- Location: LCCOMB_X23_Y28_N24
\inst|filter[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|filter[5]~feeder_combout\ = \inst|filter\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|filter\(4),
	combout => \inst|filter[5]~feeder_combout\);

-- Location: FF_X23_Y28_N25
\inst|filter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|filter[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|filter\(5));

-- Location: LCCOMB_X23_Y28_N10
\inst|MOUSE_CLK_FILTER~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|MOUSE_CLK_FILTER~1_combout\ = (\inst|filter\(3) & ((\inst|MOUSE_CLK_FILTER~q\) # ((\inst|filter\(2) & \inst|filter\(5))))) # (!\inst|filter\(3) & (\inst|MOUSE_CLK_FILTER~q\ & ((\inst|filter\(2)) # (\inst|filter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|filter\(3),
	datab => \inst|MOUSE_CLK_FILTER~q\,
	datac => \inst|filter\(2),
	datad => \inst|filter\(5),
	combout => \inst|MOUSE_CLK_FILTER~1_combout\);

-- Location: LCCOMB_X23_Y28_N16
\inst|filter[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|filter[6]~feeder_combout\ = \inst|filter\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|filter\(5),
	combout => \inst|filter[6]~feeder_combout\);

-- Location: FF_X23_Y28_N17
\inst|filter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|filter[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|filter\(6));

-- Location: FF_X23_Y28_N19
\inst|filter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst|filter\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|filter\(7));

-- Location: LCCOMB_X23_Y28_N18
\inst|MOUSE_CLK_FILTER~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|MOUSE_CLK_FILTER~0_combout\ = (\inst|filter\(2) & (\inst|filter\(4) & \inst|filter\(7))) # (!\inst|filter\(2) & ((\inst|filter\(4)) # (\inst|filter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|filter\(2),
	datab => \inst|filter\(4),
	datac => \inst|filter\(7),
	combout => \inst|MOUSE_CLK_FILTER~0_combout\);

-- Location: LCCOMB_X23_Y28_N28
\inst|MOUSE_CLK_FILTER~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|MOUSE_CLK_FILTER~3_combout\ = (\inst|MOUSE_CLK_FILTER~2_combout\ & ((\inst|MOUSE_CLK_FILTER~q\) # ((\inst|MOUSE_CLK_FILTER~1_combout\ & \inst|MOUSE_CLK_FILTER~0_combout\)))) # (!\inst|MOUSE_CLK_FILTER~2_combout\ & (\inst|MOUSE_CLK_FILTER~q\ & 
-- ((\inst|MOUSE_CLK_FILTER~1_combout\) # (\inst|MOUSE_CLK_FILTER~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MOUSE_CLK_FILTER~2_combout\,
	datab => \inst|MOUSE_CLK_FILTER~q\,
	datac => \inst|MOUSE_CLK_FILTER~1_combout\,
	datad => \inst|MOUSE_CLK_FILTER~0_combout\,
	combout => \inst|MOUSE_CLK_FILTER~3_combout\);

-- Location: LCCOMB_X23_Y28_N4
\inst|MOUSE_CLK_FILTER~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|MOUSE_CLK_FILTER~feeder_combout\ = \inst|MOUSE_CLK_FILTER~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|MOUSE_CLK_FILTER~3_combout\,
	combout => \inst|MOUSE_CLK_FILTER~feeder_combout\);

-- Location: FF_X23_Y28_N5
\inst|MOUSE_CLK_FILTER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|MOUSE_CLK_FILTER~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MOUSE_CLK_FILTER~q\);

-- Location: CLKCTRL_G13
\inst|MOUSE_CLK_FILTER~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|MOUSE_CLK_FILTER~clkctrl_outclk\);

-- Location: LCCOMB_X35_Y28_N22
\inst|SHIFTOUT[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTOUT[9]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|SHIFTOUT[9]~feeder_combout\);

-- Location: LCCOMB_X32_Y28_N30
\inst|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = (\inst|inhibit_wait_count\(10) & (\inst|inhibit_wait_count\(9) & !\inst|mouse_state.INHIBIT_TRANS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inhibit_wait_count\(10),
	datab => \inst|inhibit_wait_count\(9),
	datad => \inst|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst|Selector1~0_combout\);

-- Location: FF_X32_Y28_N31
\inst|mouse_state.LOAD_COMMAND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_state.LOAD_COMMAND~q\);

-- Location: LCCOMB_X35_Y28_N6
\inst|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector6~0_combout\ = (\inst|mouse_state.LOAD_COMMAND2~q\) # ((\inst|mouse_state.LOAD_COMMAND~q\) # ((\inst|send_data~q\ & !\inst|mouse_state.INHIBIT_TRANS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mouse_state.LOAD_COMMAND2~q\,
	datab => \inst|mouse_state.LOAD_COMMAND~q\,
	datac => \inst|send_data~q\,
	datad => \inst|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst|Selector6~0_combout\);

-- Location: FF_X35_Y28_N7
\inst|send_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|send_data~q\);

-- Location: LCCOMB_X36_Y28_N20
\inst|OUTCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|OUTCNT~3_combout\ = (!\inst|OUTCNT\(0) & (((!\inst|OUTCNT\(2) & !\inst|OUTCNT\(1))) # (!\inst|OUTCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OUTCNT\(2),
	datab => \inst|OUTCNT\(1),
	datac => \inst|OUTCNT\(0),
	datad => \inst|OUTCNT\(3),
	combout => \inst|OUTCNT~3_combout\);

-- Location: LCCOMB_X36_Y28_N4
\inst|send_char~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|send_char~0_combout\ = (\inst|send_char~q\) # ((\inst|LessThan0~0_combout\ & \inst|mouse_state.WAIT_OUTPUT_READY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LessThan0~0_combout\,
	datac => \inst|send_char~q\,
	datad => \inst|mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst|send_char~0_combout\);

-- Location: FF_X36_Y28_N5
\inst|send_char\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|send_char~0_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|send_char~q\);

-- Location: LCCOMB_X36_Y28_N14
\inst|output_ready~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|output_ready~0_combout\ = (!\inst|send_char~q\ & \inst|mouse_state.WAIT_OUTPUT_READY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|send_char~q\,
	datad => \inst|mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst|output_ready~0_combout\);

-- Location: FF_X36_Y28_N21
\inst|OUTCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|OUTCNT~3_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OUTCNT\(0));

-- Location: LCCOMB_X36_Y28_N10
\inst|OUTCNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|OUTCNT~2_combout\ = (\inst|OUTCNT\(0) & (!\inst|OUTCNT\(1) & ((!\inst|OUTCNT\(3)) # (!\inst|OUTCNT\(2))))) # (!\inst|OUTCNT\(0) & (((\inst|OUTCNT\(1) & !\inst|OUTCNT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OUTCNT\(2),
	datab => \inst|OUTCNT\(0),
	datac => \inst|OUTCNT\(1),
	datad => \inst|OUTCNT\(3),
	combout => \inst|OUTCNT~2_combout\);

-- Location: FF_X36_Y28_N11
\inst|OUTCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|OUTCNT~2_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OUTCNT\(1));

-- Location: LCCOMB_X36_Y28_N30
\inst|OUTCNT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|OUTCNT~0_combout\ = (\inst|OUTCNT\(2) & (\inst|OUTCNT\(1) & (!\inst|OUTCNT\(3) & \inst|OUTCNT\(0)))) # (!\inst|OUTCNT\(2) & (!\inst|OUTCNT\(1) & (\inst|OUTCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OUTCNT\(2),
	datab => \inst|OUTCNT\(1),
	datac => \inst|OUTCNT\(3),
	datad => \inst|OUTCNT\(0),
	combout => \inst|OUTCNT~0_combout\);

-- Location: FF_X36_Y28_N31
\inst|OUTCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|OUTCNT~0_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OUTCNT\(3));

-- Location: LCCOMB_X36_Y28_N16
\inst|OUTCNT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|OUTCNT~1_combout\ = (!\inst|OUTCNT\(3) & (\inst|OUTCNT\(2) $ (((\inst|OUTCNT\(1) & \inst|OUTCNT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OUTCNT\(3),
	datab => \inst|OUTCNT\(1),
	datac => \inst|OUTCNT\(2),
	datad => \inst|OUTCNT\(0),
	combout => \inst|OUTCNT~1_combout\);

-- Location: FF_X36_Y28_N17
\inst|OUTCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|OUTCNT~1_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OUTCNT\(2));

-- Location: LCCOMB_X36_Y28_N28
\inst|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (\inst|OUTCNT\(3) & ((\inst|OUTCNT\(1)) # (\inst|OUTCNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OUTCNT\(1),
	datac => \inst|OUTCNT\(3),
	datad => \inst|OUTCNT\(2),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X36_Y28_N18
\inst|output_ready~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|output_ready~feeder_combout\ = \inst|LessThan0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|output_ready~feeder_combout\);

-- Location: FF_X36_Y28_N19
\inst|output_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|output_ready~feeder_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|output_ready~q\);

-- Location: LCCOMB_X35_Y28_N14
\inst|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector3~0_combout\ = (\inst|mouse_state.LOAD_COMMAND2~q\) # ((\inst|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst|output_ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mouse_state.LOAD_COMMAND2~q\,
	datac => \inst|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst|output_ready~q\,
	combout => \inst|Selector3~0_combout\);

-- Location: FF_X35_Y28_N15
\inst|mouse_state.WAIT_OUTPUT_READY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_state.WAIT_OUTPUT_READY~q\);

-- Location: LCCOMB_X35_Y28_N24
\inst|MOUSE_DATA_BUF~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|MOUSE_DATA_BUF~0_combout\ = (!\inst|send_char~q\ & (\inst|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|send_char~q\,
	datab => \inst|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|MOUSE_DATA_BUF~0_combout\);

-- Location: FF_X35_Y28_N23
\inst|SHIFTOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTOUT[9]~feeder_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTOUT\(9));

-- Location: LCCOMB_X35_Y28_N12
\inst|SHIFTOUT[8]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTOUT[8]~3_combout\ = !\inst|SHIFTOUT\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SHIFTOUT\(9),
	combout => \inst|SHIFTOUT[8]~3_combout\);

-- Location: FF_X35_Y28_N13
\inst|SHIFTOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTOUT[8]~3_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTOUT\(8));

-- Location: LCCOMB_X35_Y28_N18
\inst|SHIFTOUT[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTOUT[7]~feeder_combout\ = \inst|SHIFTOUT\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SHIFTOUT\(8),
	combout => \inst|SHIFTOUT[7]~feeder_combout\);

-- Location: FF_X35_Y28_N19
\inst|SHIFTOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTOUT[7]~feeder_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTOUT\(7));

-- Location: LCCOMB_X35_Y28_N16
\inst|SHIFTOUT[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTOUT[6]~feeder_combout\ = \inst|SHIFTOUT\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SHIFTOUT\(7),
	combout => \inst|SHIFTOUT[6]~feeder_combout\);

-- Location: FF_X35_Y28_N17
\inst|SHIFTOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTOUT[6]~feeder_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTOUT\(6));

-- Location: LCCOMB_X35_Y28_N10
\inst|SHIFTOUT[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTOUT[5]~feeder_combout\ = \inst|SHIFTOUT\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SHIFTOUT\(6),
	combout => \inst|SHIFTOUT[5]~feeder_combout\);

-- Location: FF_X35_Y28_N11
\inst|SHIFTOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTOUT[5]~feeder_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTOUT\(5));

-- Location: LCCOMB_X35_Y28_N0
\inst|SHIFTOUT[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTOUT[4]~2_combout\ = !\inst|SHIFTOUT\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SHIFTOUT\(5),
	combout => \inst|SHIFTOUT[4]~2_combout\);

-- Location: FF_X35_Y28_N1
\inst|SHIFTOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTOUT[4]~2_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTOUT\(4));

-- Location: LCCOMB_X35_Y28_N30
\inst|SHIFTOUT[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTOUT[3]~1_combout\ = !\inst|SHIFTOUT\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SHIFTOUT\(4),
	combout => \inst|SHIFTOUT[3]~1_combout\);

-- Location: FF_X35_Y28_N31
\inst|SHIFTOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTOUT[3]~1_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTOUT\(3));

-- Location: LCCOMB_X35_Y28_N8
\inst|SHIFTOUT[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTOUT[2]~0_combout\ = !\inst|SHIFTOUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SHIFTOUT\(3),
	combout => \inst|SHIFTOUT[2]~0_combout\);

-- Location: FF_X35_Y28_N9
\inst|SHIFTOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTOUT[2]~0_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTOUT\(2));

-- Location: LCCOMB_X35_Y28_N28
\inst|SHIFTOUT[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTOUT[1]~feeder_combout\ = \inst|SHIFTOUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SHIFTOUT\(2),
	combout => \inst|SHIFTOUT[1]~feeder_combout\);

-- Location: FF_X35_Y28_N29
\inst|SHIFTOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTOUT[1]~feeder_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTOUT\(1));

-- Location: FF_X35_Y28_N25
\inst|MOUSE_DATA_BUF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst|SHIFTOUT\(1),
	clrn => \inst|ALT_INV_send_data~q\,
	sload => VCC,
	ena => \inst|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MOUSE_DATA_BUF~q\);

-- Location: LCCOMB_X35_Y28_N20
\inst|mouse_state.LOAD_COMMAND2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_state.LOAD_COMMAND2~feeder_combout\ = \inst|mouse_state.LOAD_COMMAND~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mouse_state.LOAD_COMMAND~q\,
	combout => \inst|mouse_state.LOAD_COMMAND2~feeder_combout\);

-- Location: FF_X35_Y28_N21
\inst|mouse_state.LOAD_COMMAND2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|mouse_state.LOAD_COMMAND2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_state.LOAD_COMMAND2~q\);

-- Location: LCCOMB_X35_Y28_N26
\inst|WideOr4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|WideOr4~combout\ = ((\inst|mouse_state.LOAD_COMMAND~q\) # (\inst|mouse_state.LOAD_COMMAND2~q\)) # (!\inst|mouse_state.INHIBIT_TRANS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mouse_state.INHIBIT_TRANS~q\,
	datab => \inst|mouse_state.LOAD_COMMAND~q\,
	datac => \inst|mouse_state.LOAD_COMMAND2~q\,
	combout => \inst|WideOr4~combout\);

ww_red <= \red~output_o\;

ww_green <= \green~output_o\;

ww_blue <= \blue~output_o\;

ww_hsync <= \hsync~output_o\;

ww_vsync <= \vsync~output_o\;

ww_mdata <= \mdata~output_o\;

ww_mclk <= \mclk~output_o\;
END structure;


