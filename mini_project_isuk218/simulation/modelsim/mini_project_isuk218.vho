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

-- DATE "04/26/2017 19:30:19"

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

ENTITY 	ball_example IS
    PORT (
	red_out : OUT std_logic;
	bt1 : IN std_logic;
	bt2 : IN std_logic;
	pin_name1 : IN std_logic;
	green_out : OUT std_logic;
	blue_out : OUT std_logic;
	horiz_sync_out : OUT std_logic;
	vert_sync_out : OUT std_logic
	);
END ball_example;

-- Design Ports Information
-- red_out	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt1	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt2	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_out	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue_out	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horiz_sync_out	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vert_sync_out	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name1	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ball_example IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_red_out : std_logic;
SIGNAL ww_bt1 : std_logic;
SIGNAL ww_bt2 : std_logic;
SIGNAL ww_pin_name1 : std_logic;
SIGNAL ww_green_out : std_logic;
SIGNAL ww_blue_out : std_logic;
SIGNAL ww_horiz_sync_out : std_logic;
SIGNAL ww_vert_sync_out : std_logic;
SIGNAL \pin_name1~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|clock_25Mhz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|SYNC|vert_sync_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|Add2~0_combout\ : std_logic;
SIGNAL \inst1|Add2~4_combout\ : std_logic;
SIGNAL \inst1|Add2~6_combout\ : std_logic;
SIGNAL \inst1|Add2~8_combout\ : std_logic;
SIGNAL \inst1|Add3~4_combout\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add1~0_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add1~2_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add1~10_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add1~16_combout\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|Add0~30_combout\ : std_logic;
SIGNAL \inst|Add0~42_combout\ : std_logic;
SIGNAL \inst|Add0~44_combout\ : std_logic;
SIGNAL \inst|Add0~58_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|Equal0~6_combout\ : std_logic;
SIGNAL \inst1|SYNC|process_0~1_combout\ : std_logic;
SIGNAL \inst1|SYNC|Equal1~0_combout\ : std_logic;
SIGNAL \inst1|SYNC|Equal1~1_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_motion[2]~0_combout\ : std_logic;
SIGNAL \bt1~input_o\ : std_logic;
SIGNAL \bt2~input_o\ : std_logic;
SIGNAL \pin_name1~input_o\ : std_logic;
SIGNAL \pin_name1~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|SYNC|vert_sync_out~clkctrl_outclk\ : std_logic;
SIGNAL \red_out~output_o\ : std_logic;
SIGNAL \green_out~output_o\ : std_logic;
SIGNAL \blue_out~output_o\ : std_logic;
SIGNAL \horiz_sync_out~output_o\ : std_logic;
SIGNAL \vert_sync_out~output_o\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|Add0~21\ : std_logic;
SIGNAL \inst|Add0~23\ : std_logic;
SIGNAL \inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|Add0~25\ : std_logic;
SIGNAL \inst|Add0~26_combout\ : std_logic;
SIGNAL \inst|Add0~27\ : std_logic;
SIGNAL \inst|Add0~28_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|i~0_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Add0~29\ : std_logic;
SIGNAL \inst|Add0~31\ : std_logic;
SIGNAL \inst|Add0~32_combout\ : std_logic;
SIGNAL \inst|Add0~33\ : std_logic;
SIGNAL \inst|Add0~34_combout\ : std_logic;
SIGNAL \inst|Add0~35\ : std_logic;
SIGNAL \inst|Add0~36_combout\ : std_logic;
SIGNAL \inst|Add0~37\ : std_logic;
SIGNAL \inst|Add0~38_combout\ : std_logic;
SIGNAL \inst|Equal0~5_combout\ : std_logic;
SIGNAL \inst|Add0~39\ : std_logic;
SIGNAL \inst|Add0~40_combout\ : std_logic;
SIGNAL \inst|Add0~41\ : std_logic;
SIGNAL \inst|Add0~43\ : std_logic;
SIGNAL \inst|Add0~45\ : std_logic;
SIGNAL \inst|Add0~46_combout\ : std_logic;
SIGNAL \inst|Add0~47\ : std_logic;
SIGNAL \inst|Add0~48_combout\ : std_logic;
SIGNAL \inst|Add0~49\ : std_logic;
SIGNAL \inst|Add0~50_combout\ : std_logic;
SIGNAL \inst|Add0~51\ : std_logic;
SIGNAL \inst|Add0~52_combout\ : std_logic;
SIGNAL \inst|Add0~53\ : std_logic;
SIGNAL \inst|Add0~55\ : std_logic;
SIGNAL \inst|Add0~56_combout\ : std_logic;
SIGNAL \inst|Add0~57\ : std_logic;
SIGNAL \inst|Add0~59\ : std_logic;
SIGNAL \inst|Add0~60_combout\ : std_logic;
SIGNAL \inst|Add0~61\ : std_logic;
SIGNAL \inst|Add0~62_combout\ : std_logic;
SIGNAL \inst|Equal0~8_combout\ : std_logic;
SIGNAL \inst|Add0~54_combout\ : std_logic;
SIGNAL \inst|Equal0~7_combout\ : std_logic;
SIGNAL \inst|Equal0~9_combout\ : std_logic;
SIGNAL \inst|Equal0~10_combout\ : std_logic;
SIGNAL \inst|clock_25Mhz~q\ : std_logic;
SIGNAL \inst|clock_25Mhz~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|SYNC|Add1~1\ : std_logic;
SIGNAL \inst1|SYNC|Add1~3\ : std_logic;
SIGNAL \inst1|SYNC|Add1~4_combout\ : std_logic;
SIGNAL \inst1|SYNC|v_count[2]~9_combout\ : std_logic;
SIGNAL \inst1|SYNC|v_count[5]~3_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add1~5\ : std_logic;
SIGNAL \inst1|SYNC|Add1~6_combout\ : std_logic;
SIGNAL \inst1|SYNC|v_count[3]~8_combout\ : std_logic;
SIGNAL \inst1|SYNC|process_0~7_combout\ : std_logic;
SIGNAL \inst1|SYNC|process_0~8_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add0~1\ : std_logic;
SIGNAL \inst1|SYNC|Add0~2_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add0~3\ : std_logic;
SIGNAL \inst1|SYNC|Add0~4_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add0~5\ : std_logic;
SIGNAL \inst1|SYNC|Add0~6_combout\ : std_logic;
SIGNAL \inst1|SYNC|process_0~9_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add0~7\ : std_logic;
SIGNAL \inst1|SYNC|Add0~8_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add0~9\ : std_logic;
SIGNAL \inst1|SYNC|Add0~10_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add0~11\ : std_logic;
SIGNAL \inst1|SYNC|Add0~12_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add0~13\ : std_logic;
SIGNAL \inst1|SYNC|Add0~14_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add0~15\ : std_logic;
SIGNAL \inst1|SYNC|Add0~16_combout\ : std_logic;
SIGNAL \inst1|SYNC|h_count~1_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add0~17\ : std_logic;
SIGNAL \inst1|SYNC|Add0~18_combout\ : std_logic;
SIGNAL \inst1|SYNC|h_count~0_combout\ : std_logic;
SIGNAL \inst1|SYNC|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|SYNC|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|SYNC|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|SYNC|h_count~2_combout\ : std_logic;
SIGNAL \inst1|SYNC|process_0~10_combout\ : std_logic;
SIGNAL \inst1|SYNC|process_0~11_combout\ : std_logic;
SIGNAL \inst1|SYNC|v_count[2]~0_combout\ : std_logic;
SIGNAL \inst1|SYNC|v_count[8]~6_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add1~7\ : std_logic;
SIGNAL \inst1|SYNC|Add1~8_combout\ : std_logic;
SIGNAL \inst1|SYNC|v_count[4]~7_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add1~9\ : std_logic;
SIGNAL \inst1|SYNC|Add1~11\ : std_logic;
SIGNAL \inst1|SYNC|Add1~13\ : std_logic;
SIGNAL \inst1|SYNC|Add1~14_combout\ : std_logic;
SIGNAL \inst1|SYNC|v_count[7]~5_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add1~15\ : std_logic;
SIGNAL \inst1|SYNC|Add1~17\ : std_logic;
SIGNAL \inst1|SYNC|Add1~18_combout\ : std_logic;
SIGNAL \inst1|SYNC|v_count[9]~2_combout\ : std_logic;
SIGNAL \inst1|SYNC|process_0~12_combout\ : std_logic;
SIGNAL \inst1|SYNC|v_count[8]~1_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add1~12_combout\ : std_logic;
SIGNAL \inst1|SYNC|v_count[6]~4_combout\ : std_logic;
SIGNAL \inst1|SYNC|LessThan7~0_combout\ : std_logic;
SIGNAL \inst1|SYNC|LessThan7~1_combout\ : std_logic;
SIGNAL \inst1|SYNC|video_on_v~q\ : std_logic;
SIGNAL \inst1|SYNC|process_0~0_combout\ : std_logic;
SIGNAL \inst1|SYNC|video_on_h~q\ : std_logic;
SIGNAL \inst1|SYNC|video_on~0_combout\ : std_logic;
SIGNAL \inst1|SYNC|red_out~q\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[7]~22\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[8]~24\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[9]~25_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[1]~10\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[2]~11_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[2]~12\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[3]~13_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[3]~14\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[4]~15_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[4]~16\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[5]~17_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[8]~23_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_motion[2]~1_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_motion[2]~2_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_motion[2]~3_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[5]~18\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[6]~20\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[7]~21_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[6]~19_combout\ : std_logic;
SIGNAL \inst1|Add3~1\ : std_logic;
SIGNAL \inst1|Add3~3\ : std_logic;
SIGNAL \inst1|Add3~5\ : std_logic;
SIGNAL \inst1|Add3~7\ : std_logic;
SIGNAL \inst1|Add3~8_combout\ : std_logic;
SIGNAL \inst1|Add3~6_combout\ : std_logic;
SIGNAL \inst1|Add3~2_combout\ : std_logic;
SIGNAL \inst1|Add3~0_combout\ : std_logic;
SIGNAL \inst1|SYNC|v_count~10_combout\ : std_logic;
SIGNAL \inst1|SYNC|pixel_row[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|SYNC|v_count~11_combout\ : std_logic;
SIGNAL \inst1|LessThan3~1_cout\ : std_logic;
SIGNAL \inst1|LessThan3~3_cout\ : std_logic;
SIGNAL \inst1|LessThan3~5_cout\ : std_logic;
SIGNAL \inst1|LessThan3~7_cout\ : std_logic;
SIGNAL \inst1|LessThan3~9_cout\ : std_logic;
SIGNAL \inst1|LessThan3~11_cout\ : std_logic;
SIGNAL \inst1|LessThan3~13_cout\ : std_logic;
SIGNAL \inst1|LessThan3~15_cout\ : std_logic;
SIGNAL \inst1|LessThan3~16_combout\ : std_logic;
SIGNAL \inst1|Add0~1_cout\ : std_logic;
SIGNAL \inst1|Add0~3_cout\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add0~0_combout\ : std_logic;
SIGNAL \inst1|SYNC|green_out~1_combout\ : std_logic;
SIGNAL \inst1|SYNC|green_out~2_combout\ : std_logic;
SIGNAL \inst1|SYNC|green_out~3_combout\ : std_logic;
SIGNAL \inst1|Add2~1\ : std_logic;
SIGNAL \inst1|Add2~3\ : std_logic;
SIGNAL \inst1|Add2~5\ : std_logic;
SIGNAL \inst1|Add2~7\ : std_logic;
SIGNAL \inst1|Add2~9\ : std_logic;
SIGNAL \inst1|Add2~10_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|Add3~9\ : std_logic;
SIGNAL \inst1|Add3~10_combout\ : std_logic;
SIGNAL \inst1|SYNC|green_out~0_combout\ : std_logic;
SIGNAL \inst1|SYNC|green_out~4_combout\ : std_logic;
SIGNAL \inst1|Add2~2_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[1]~9_combout\ : std_logic;
SIGNAL \inst1|LessThan2~1_cout\ : std_logic;
SIGNAL \inst1|LessThan2~3_cout\ : std_logic;
SIGNAL \inst1|LessThan2~5_cout\ : std_logic;
SIGNAL \inst1|LessThan2~7_cout\ : std_logic;
SIGNAL \inst1|LessThan2~9_cout\ : std_logic;
SIGNAL \inst1|LessThan2~11_cout\ : std_logic;
SIGNAL \inst1|LessThan2~13_cout\ : std_logic;
SIGNAL \inst1|LessThan2~15_cout\ : std_logic;
SIGNAL \inst1|LessThan2~16_combout\ : std_logic;
SIGNAL \inst1|SYNC|green_out~5_combout\ : std_logic;
SIGNAL \inst1|SYNC|green_out~q\ : std_logic;
SIGNAL \inst1|SYNC|blue_out~q\ : std_logic;
SIGNAL \inst1|SYNC|process_0~2_combout\ : std_logic;
SIGNAL \inst1|SYNC|process_0~3_combout\ : std_logic;
SIGNAL \inst1|SYNC|process_0~4_combout\ : std_logic;
SIGNAL \inst1|SYNC|horiz_sync~q\ : std_logic;
SIGNAL \inst1|SYNC|horiz_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst1|SYNC|horiz_sync_out~q\ : std_logic;
SIGNAL \inst1|SYNC|process_0~5_combout\ : std_logic;
SIGNAL \inst1|SYNC|process_0~6_combout\ : std_logic;
SIGNAL \inst1|SYNC|vert_sync~q\ : std_logic;
SIGNAL \inst1|SYNC|vert_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst1|SYNC|vert_sync_out~q\ : std_logic;
SIGNAL \inst1|SYNC|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|SYNC|pixel_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|SYNC|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|SYNC|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|i\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|Ball_Y_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|Ball_Y_motion\ : std_logic_vector(9 DOWNTO 0);

BEGIN

red_out <= ww_red_out;
ww_bt1 <= bt1;
ww_bt2 <= bt2;
ww_pin_name1 <= pin_name1;
green_out <= ww_green_out;
blue_out <= ww_blue_out;
horiz_sync_out <= ww_horiz_sync_out;
vert_sync_out <= ww_vert_sync_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\pin_name1~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pin_name1~input_o\);

\inst|clock_25Mhz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|clock_25Mhz~q\);

\inst1|SYNC|vert_sync_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|SYNC|vert_sync_out~q\);

-- Location: LCCOMB_X38_Y19_N18
\inst1|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add2~0_combout\ = (\inst1|SYNC|pixel_row\(3) & (\inst1|SYNC|pixel_row\(4) $ (VCC))) # (!\inst1|SYNC|pixel_row\(3) & (\inst1|SYNC|pixel_row\(4) & VCC))
-- \inst1|Add2~1\ = CARRY((\inst1|SYNC|pixel_row\(3) & \inst1|SYNC|pixel_row\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_row\(3),
	datab => \inst1|SYNC|pixel_row\(4),
	datad => VCC,
	combout => \inst1|Add2~0_combout\,
	cout => \inst1|Add2~1\);

-- Location: LCCOMB_X38_Y19_N22
\inst1|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add2~4_combout\ = (\inst1|SYNC|pixel_row\(6) & (\inst1|Add2~3\ $ (GND))) # (!\inst1|SYNC|pixel_row\(6) & (!\inst1|Add2~3\ & VCC))
-- \inst1|Add2~5\ = CARRY((\inst1|SYNC|pixel_row\(6) & !\inst1|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|pixel_row\(6),
	datad => VCC,
	cin => \inst1|Add2~3\,
	combout => \inst1|Add2~4_combout\,
	cout => \inst1|Add2~5\);

-- Location: LCCOMB_X38_Y19_N24
\inst1|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add2~6_combout\ = (\inst1|SYNC|pixel_row\(7) & (!\inst1|Add2~5\)) # (!\inst1|SYNC|pixel_row\(7) & ((\inst1|Add2~5\) # (GND)))
-- \inst1|Add2~7\ = CARRY((!\inst1|Add2~5\) # (!\inst1|SYNC|pixel_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|pixel_row\(7),
	datad => VCC,
	cin => \inst1|Add2~5\,
	combout => \inst1|Add2~6_combout\,
	cout => \inst1|Add2~7\);

-- Location: LCCOMB_X38_Y19_N26
\inst1|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add2~8_combout\ = (\inst1|SYNC|pixel_row\(8) & (\inst1|Add2~7\ $ (GND))) # (!\inst1|SYNC|pixel_row\(8) & (!\inst1|Add2~7\ & VCC))
-- \inst1|Add2~9\ = CARRY((\inst1|SYNC|pixel_row\(8) & !\inst1|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|pixel_row\(8),
	datad => VCC,
	cin => \inst1|Add2~7\,
	combout => \inst1|Add2~8_combout\,
	cout => \inst1|Add2~9\);

-- Location: LCCOMB_X36_Y19_N6
\inst1|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add3~4_combout\ = (\inst1|Ball_Y_pos\(6) & (\inst1|Add3~3\ $ (GND))) # (!\inst1|Ball_Y_pos\(6) & (!\inst1|Add3~3\ & VCC))
-- \inst1|Add3~5\ = CARRY((\inst1|Ball_Y_pos\(6) & !\inst1|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Ball_Y_pos\(6),
	datad => VCC,
	cin => \inst1|Add3~3\,
	combout => \inst1|Add3~4_combout\,
	cout => \inst1|Add3~5\);

-- Location: LCCOMB_X37_Y19_N6
\inst1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst1|SYNC|pixel_column\(7) & (!\inst1|Add0~5\)) # (!\inst1|SYNC|pixel_column\(7) & ((\inst1|Add0~5\) # (GND)))
-- \inst1|Add0~7\ = CARRY((!\inst1|Add0~5\) # (!\inst1|SYNC|pixel_column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_column\(7),
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: LCCOMB_X37_Y19_N8
\inst1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|SYNC|pixel_column\(8) & (\inst1|Add0~7\ $ (GND))) # (!\inst1|SYNC|pixel_column\(8) & (!\inst1|Add0~7\ & VCC))
-- \inst1|Add0~9\ = CARRY((\inst1|SYNC|pixel_column\(8) & !\inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_column\(8),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: LCCOMB_X37_Y19_N10
\inst1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = \inst1|Add0~9\ $ (\inst1|SYNC|pixel_column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SYNC|pixel_column\(9),
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\);

-- Location: LCCOMB_X39_Y17_N4
\inst1|SYNC|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add1~0_combout\ = \inst1|SYNC|v_count\(0) $ (VCC)
-- \inst1|SYNC|Add1~1\ = CARRY(\inst1|SYNC|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count\(0),
	datad => VCC,
	combout => \inst1|SYNC|Add1~0_combout\,
	cout => \inst1|SYNC|Add1~1\);

-- Location: LCCOMB_X39_Y17_N6
\inst1|SYNC|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add1~2_combout\ = (\inst1|SYNC|v_count\(1) & (!\inst1|SYNC|Add1~1\)) # (!\inst1|SYNC|v_count\(1) & ((\inst1|SYNC|Add1~1\) # (GND)))
-- \inst1|SYNC|Add1~3\ = CARRY((!\inst1|SYNC|Add1~1\) # (!\inst1|SYNC|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count\(1),
	datad => VCC,
	cin => \inst1|SYNC|Add1~1\,
	combout => \inst1|SYNC|Add1~2_combout\,
	cout => \inst1|SYNC|Add1~3\);

-- Location: LCCOMB_X39_Y17_N14
\inst1|SYNC|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add1~10_combout\ = (\inst1|SYNC|v_count\(5) & (!\inst1|SYNC|Add1~9\)) # (!\inst1|SYNC|v_count\(5) & ((\inst1|SYNC|Add1~9\) # (GND)))
-- \inst1|SYNC|Add1~11\ = CARRY((!\inst1|SYNC|Add1~9\) # (!\inst1|SYNC|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count\(5),
	datad => VCC,
	cin => \inst1|SYNC|Add1~9\,
	combout => \inst1|SYNC|Add1~10_combout\,
	cout => \inst1|SYNC|Add1~11\);

-- Location: LCCOMB_X39_Y17_N20
\inst1|SYNC|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add1~16_combout\ = (\inst1|SYNC|v_count\(8) & (\inst1|SYNC|Add1~15\ $ (GND))) # (!\inst1|SYNC|v_count\(8) & (!\inst1|SYNC|Add1~15\ & VCC))
-- \inst1|SYNC|Add1~17\ = CARRY((\inst1|SYNC|v_count\(8) & !\inst1|SYNC|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|v_count\(8),
	datad => VCC,
	cin => \inst1|SYNC|Add1~15\,
	combout => \inst1|SYNC|Add1~16_combout\,
	cout => \inst1|SYNC|Add1~17\);

-- Location: LCCOMB_X16_Y11_N10
\inst|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|i\(5) & (!\inst|Add0~9\)) # (!\inst|i\(5) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|i\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X16_Y11_N12
\inst|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|i\(6) & (\inst|Add0~11\ $ (GND))) # (!\inst|i\(6) & (!\inst|Add0~11\ & VCC))
-- \inst|Add0~13\ = CARRY((\inst|i\(6) & !\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X16_Y11_N22
\inst|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~22_combout\ = (\inst|i\(11) & (!\inst|Add0~21\)) # (!\inst|i\(11) & ((\inst|Add0~21\) # (GND)))
-- \inst|Add0~23\ = CARRY((!\inst|Add0~21\) # (!\inst|i\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i\(11),
	datad => VCC,
	cin => \inst|Add0~21\,
	combout => \inst|Add0~22_combout\,
	cout => \inst|Add0~23\);

-- Location: LCCOMB_X16_Y11_N30
\inst|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~30_combout\ = (\inst|i\(15) & (!\inst|Add0~29\)) # (!\inst|i\(15) & ((\inst|Add0~29\) # (GND)))
-- \inst|Add0~31\ = CARRY((!\inst|Add0~29\) # (!\inst|i\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i\(15),
	datad => VCC,
	cin => \inst|Add0~29\,
	combout => \inst|Add0~30_combout\,
	cout => \inst|Add0~31\);

-- Location: LCCOMB_X16_Y10_N10
\inst|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~42_combout\ = (\inst|i\(21) & (!\inst|Add0~41\)) # (!\inst|i\(21) & ((\inst|Add0~41\) # (GND)))
-- \inst|Add0~43\ = CARRY((!\inst|Add0~41\) # (!\inst|i\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i\(21),
	datad => VCC,
	cin => \inst|Add0~41\,
	combout => \inst|Add0~42_combout\,
	cout => \inst|Add0~43\);

-- Location: LCCOMB_X16_Y10_N12
\inst|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~44_combout\ = (\inst|i\(22) & (\inst|Add0~43\ $ (GND))) # (!\inst|i\(22) & (!\inst|Add0~43\ & VCC))
-- \inst|Add0~45\ = CARRY((\inst|i\(22) & !\inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i\(22),
	datad => VCC,
	cin => \inst|Add0~43\,
	combout => \inst|Add0~44_combout\,
	cout => \inst|Add0~45\);

-- Location: LCCOMB_X16_Y10_N26
\inst|Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~58_combout\ = (\inst|i\(29) & (!\inst|Add0~57\)) # (!\inst|i\(29) & ((\inst|Add0~57\) # (GND)))
-- \inst|Add0~59\ = CARRY((!\inst|Add0~57\) # (!\inst|i\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i\(29),
	datad => VCC,
	cin => \inst|Add0~57\,
	combout => \inst|Add0~58_combout\,
	cout => \inst|Add0~59\);

-- Location: FF_X38_Y19_N31
\inst1|SYNC|pixel_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst1|SYNC|v_count\(5),
	sload => VCC,
	ena => \inst1|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_row\(5));

-- Location: FF_X37_Y19_N31
\inst1|SYNC|pixel_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst1|SYNC|h_count\(5),
	sload => VCC,
	ena => \inst1|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_column\(5));

-- Location: FF_X37_Y19_N23
\inst1|SYNC|pixel_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst1|SYNC|h_count\(3),
	sload => VCC,
	ena => \inst1|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_column\(3));

-- Location: FF_X37_Y19_N11
\inst1|SYNC|pixel_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst1|SYNC|h_count\(9),
	sload => VCC,
	ena => \inst1|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_column\(9));

-- Location: FF_X16_Y11_N13
\inst|i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~inputclkctrl_outclk\,
	d => \inst|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(6));

-- Location: FF_X16_Y11_N11
\inst|i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~inputclkctrl_outclk\,
	d => \inst|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(5));

-- Location: FF_X16_Y11_N23
\inst|i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~inputclkctrl_outclk\,
	d => \inst|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(11));

-- Location: LCCOMB_X17_Y11_N10
\inst|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (!\inst|i\(11) & (!\inst|i\(10) & (!\inst|i\(8) & !\inst|i\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i\(11),
	datab => \inst|i\(10),
	datac => \inst|i\(8),
	datad => \inst|i\(9),
	combout => \inst|Equal0~3_combout\);

-- Location: FF_X16_Y11_N31
\inst|i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~inputclkctrl_outclk\,
	d => \inst|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(15));

-- Location: FF_X16_Y10_N11
\inst|i[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~inputclkctrl_outclk\,
	d => \inst|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(21));

-- Location: FF_X16_Y10_N13
\inst|i[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~inputclkctrl_outclk\,
	d => \inst|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(22));

-- Location: LCCOMB_X17_Y10_N10
\inst|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal0~6_combout\ = (!\inst|i\(22) & (!\inst|i\(23) & (!\inst|i\(20) & !\inst|i\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i\(22),
	datab => \inst|i\(23),
	datac => \inst|i\(20),
	datad => \inst|i\(21),
	combout => \inst|Equal0~6_combout\);

-- Location: FF_X16_Y10_N27
\inst|i[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~inputclkctrl_outclk\,
	d => \inst|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(29));

-- Location: LCCOMB_X37_Y18_N28
\inst1|SYNC|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~1_combout\ = (\inst1|SYNC|h_count\(9) & (\inst1|SYNC|h_count\(7) & !\inst1|SYNC|h_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(9),
	datac => \inst1|SYNC|h_count\(7),
	datad => \inst1|SYNC|h_count\(8),
	combout => \inst1|SYNC|process_0~1_combout\);

-- Location: LCCOMB_X36_Y17_N20
\inst1|SYNC|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Equal1~0_combout\ = (\inst1|SYNC|h_count\(8)) # ((\inst1|SYNC|h_count\(2)) # ((!\inst1|SYNC|h_count\(5)) # (!\inst1|SYNC|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(8),
	datab => \inst1|SYNC|h_count\(2),
	datac => \inst1|SYNC|h_count\(7),
	datad => \inst1|SYNC|h_count\(5),
	combout => \inst1|SYNC|Equal1~0_combout\);

-- Location: LCCOMB_X38_Y17_N22
\inst1|SYNC|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Equal1~1_combout\ = ((\inst1|SYNC|h_count\(6)) # ((\inst1|SYNC|Equal1~0_combout\) # (!\inst1|SYNC|Equal0~0_combout\))) # (!\inst1|SYNC|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(9),
	datab => \inst1|SYNC|h_count\(6),
	datac => \inst1|SYNC|Equal1~0_combout\,
	datad => \inst1|SYNC|Equal0~0_combout\,
	combout => \inst1|SYNC|Equal1~1_combout\);

-- Location: LCCOMB_X35_Y19_N30
\inst1|Ball_Y_motion[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_motion[2]~0_combout\ = (\inst1|Ball_Y_pos\(6) & ((\inst1|Ball_Y_motion\(2)) # ((\inst1|Ball_Y_pos\(7) & \inst1|Ball_Y_pos\(8))))) # (!\inst1|Ball_Y_pos\(6) & (\inst1|Ball_Y_motion\(2) & ((\inst1|Ball_Y_pos\(7)) # (\inst1|Ball_Y_pos\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(6),
	datab => \inst1|Ball_Y_pos\(7),
	datac => \inst1|Ball_Y_pos\(8),
	datad => \inst1|Ball_Y_motion\(2),
	combout => \inst1|Ball_Y_motion[2]~0_combout\);

-- Location: IOIBUF_X0_Y14_N1
\pin_name1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name1,
	o => \pin_name1~input_o\);

-- Location: CLKCTRL_G4
\pin_name1~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pin_name1~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pin_name1~inputclkctrl_outclk\);

-- Location: CLKCTRL_G9
\inst1|SYNC|vert_sync_out~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|SYNC|vert_sync_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\);

-- Location: IOOBUF_X41_Y25_N2
\red_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|SYNC|red_out~q\,
	devoe => ww_devoe,
	o => \red_out~output_o\);

-- Location: IOOBUF_X41_Y24_N23
\green_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|SYNC|green_out~q\,
	devoe => ww_devoe,
	o => \green_out~output_o\);

-- Location: IOOBUF_X41_Y19_N9
\blue_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|SYNC|blue_out~q\,
	devoe => ww_devoe,
	o => \blue_out~output_o\);

-- Location: IOOBUF_X41_Y18_N16
\horiz_sync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|SYNC|horiz_sync_out~q\,
	devoe => ww_devoe,
	o => \horiz_sync_out~output_o\);

-- Location: IOOBUF_X41_Y18_N23
\vert_sync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|SYNC|vert_sync_out~q\,
	devoe => ww_devoe,
	o => \vert_sync_out~output_o\);

-- Location: LCCOMB_X16_Y11_N0
\inst|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|i\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|i\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: FF_X16_Y11_N1
\inst|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~inputclkctrl_outclk\,
	d => \inst|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(0));

-- Location: LCCOMB_X16_Y11_N2
\inst|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|i\(1) & (!\inst|Add0~1\)) # (!\inst|i\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X16_Y11_N4
\inst|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|i\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|i\(2) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|i\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|i\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: FF_X16_Y11_N5
\inst|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~inputclkctrl_outclk\,
	d => \inst|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(2));

-- Location: LCCOMB_X16_Y11_N6
\inst|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|i\(3) & (!\inst|Add0~5\)) # (!\inst|i\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|i\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X16_Y11_N8
\inst|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|i\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|i\(4) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|i\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|i\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: FF_X16_Y11_N9
\inst|i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~inputclkctrl_outclk\,
	d => \inst|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(4));

-- Location: LCCOMB_X16_Y11_N14
\inst|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|i\(7) & (!\inst|Add0~13\)) # (!\inst|i\(7) & ((\inst|Add0~13\) # (GND)))
-- \inst|Add0~15\ = CARRY((!\inst|Add0~13\) # (!\inst|i\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|i\(7),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: FF_X16_Y11_N15
\inst|i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~inputclkctrl_outclk\,
	d => \inst|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(7));

-- Location: LCCOMB_X16_Y11_N16
\inst|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|i\(8) & (\inst|Add0~15\ $ (GND))) # (!\inst|i\(8) & (!\inst|Add0~15\ & VCC))
-- \inst|Add0~17\ = CARRY((\inst|i\(8) & !\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|i\(8),
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: FF_X16_Y11_N17
\inst|i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~inputclkctrl_outclk\,
	d => \inst|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(8));

-- Location: LCCOMB_X16_Y11_N18
\inst|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|i\(9) & (!\inst|Add0~17\)) # (!\inst|i\(9) & ((\inst|Add0~17\) # (GND)))
-- \inst|Add0~19\ = CARRY((!\inst|Add0~17\) # (!\inst|i\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|i\(9),
	datad => VCC,
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: FF_X16_Y11_N19
\inst|i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~inputclkctrl_outclk\,
	d => \inst|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(9));

-- Location: LCCOMB_X16_Y11_N20
\inst|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = (\inst|i\(10) & (\inst|Add0~19\ $ (GND))) # (!\inst|i\(10) & (!\inst|Add0~19\ & VCC))
-- \inst|Add0~21\ = CARRY((\inst|i\(10) & !\inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|i\(10),
	datad => VCC,
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\,
	cout => \inst|Add0~21\);

-- Location: FF_X16_Y11_N21
\inst|i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~inputclkctrl_outclk\,
	d => \inst|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(10));

-- Location: LCCOMB_X16_Y11_N24
\inst|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~24_combout\ = (\inst|i\(12) & (\inst|Add0~23\ $ (GND))) # (!\inst|i\(12) & (!\inst|Add0~23\ & VCC))
-- \inst|Add0~25\ = CARRY((\inst|i\(12) & !\inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|i\(12),
	datad => VCC,
	cin => \inst|Add0~23\,
	combout => \inst|Add0~24_combout\,
	cout => \inst|Add0~25\);

-- Location: FF_X16_Y11_N25
\inst|i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~inputclkctrl_outclk\,
	d => \inst|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(12));

-- Location: LCCOMB_X16_Y11_N26
\inst|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~26_combout\ = (\inst|i\(13) & (!\inst|Add0~25\)) # (!\inst|i\(13) & ((\inst|Add0~25\) # (GND)))
-- \inst|Add0~27\ = CARRY((!\inst|Add0~25\) # (!\inst|i\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i\(13),
	datad => VCC,
	cin => \inst|Add0~25\,
	combout => \inst|Add0~26_combout\,
	cout => \inst|Add0~27\);

-- Location: FF_X16_Y11_N27
\inst|i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~inputclkctrl_outclk\,
	d => \inst|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(13));

-- Location: LCCOMB_X16_Y11_N28
\inst|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~28_combout\ = (\inst|i\(14) & (\inst|Add0~27\ $ (GND))) # (!\inst|i\(14) & (!\inst|Add0~27\ & VCC))
-- \inst|Add0~29\ = CARRY((\inst|i\(14) & !\inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|i\(14),
	datad => VCC,
	cin => \inst|Add0~27\,
	combout => \inst|Add0~28_combout\,
	cout => \inst|Add0~29\);

-- Location: FF_X16_Y11_N29
\inst|i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~inputclkctrl_outclk\,
	d => \inst|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(14));

-- Location: LCCOMB_X17_Y11_N28
\inst|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = (!\inst|i\(15) & (!\inst|i\(12) & (!\inst|i\(13) & !\inst|i\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i\(15),
	datab => \inst|i\(12),
	datac => \inst|i\(13),
	datad => \inst|i\(14),
	combout => \inst|Equal0~4_combout\);

-- Location: LCCOMB_X17_Y11_N4
\inst|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|i\(6) & !\inst|i\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i\(6),
	datad => \inst|i\(7),
	combout => \inst|Equal0~1_combout\);

-- Location: FF_X16_Y11_N7
\inst|i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~inputclkctrl_outclk\,
	d => \inst|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(3));

-- Location: LCCOMB_X17_Y11_N2
\inst|i~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|i~0_combout\ = (!\inst|Equal0~10_combout\ & \inst|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal0~10_combout\,
	datad => \inst|Add0~2_combout\,
	combout => \inst|i~0_combout\);

-- Location: FF_X17_Y11_N3
\inst|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~inputclkctrl_outclk\,
	d => \inst|i~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(1));

-- Location: LCCOMB_X17_Y11_N22
\inst|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|i\(0) & (!\inst|i\(3) & (!\inst|i\(2) & !\inst|i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i\(0),
	datab => \inst|i\(3),
	datac => \inst|i\(2),
	datad => \inst|i\(1),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y11_N30
\inst|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (!\inst|i\(5) & (\inst|Equal0~1_combout\ & (\inst|Equal0~0_combout\ & !\inst|i\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i\(5),
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|i\(4),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X16_Y10_N0
\inst|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~32_combout\ = (\inst|i\(16) & (\inst|Add0~31\ $ (GND))) # (!\inst|i\(16) & (!\inst|Add0~31\ & VCC))
-- \inst|Add0~33\ = CARRY((\inst|i\(16) & !\inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|i\(16),
	datad => VCC,
	cin => \inst|Add0~31\,
	combout => \inst|Add0~32_combout\,
	cout => \inst|Add0~33\);

-- Location: FF_X16_Y10_N1
\inst|i[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~inputclkctrl_outclk\,
	d => \inst|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(16));

-- Location: LCCOMB_X16_Y10_N2
\inst|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~34_combout\ = (\inst|i\(17) & (!\inst|Add0~33\)) # (!\inst|i\(17) & ((\inst|Add0~33\) # (GND)))
-- \inst|Add0~35\ = CARRY((!\inst|Add0~33\) # (!\inst|i\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|i\(17),
	datad => VCC,
	cin => \inst|Add0~33\,
	combout => \inst|Add0~34_combout\,
	cout => \inst|Add0~35\);

-- Location: FF_X16_Y10_N3
\inst|i[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~inputclkctrl_outclk\,
	d => \inst|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(17));

-- Location: LCCOMB_X16_Y10_N4
\inst|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~36_combout\ = (\inst|i\(18) & (\inst|Add0~35\ $ (GND))) # (!\inst|i\(18) & (!\inst|Add0~35\ & VCC))
-- \inst|Add0~37\ = CARRY((\inst|i\(18) & !\inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|i\(18),
	datad => VCC,
	cin => \inst|Add0~35\,
	combout => \inst|Add0~36_combout\,
	cout => \inst|Add0~37\);

-- Location: FF_X16_Y10_N5
\inst|i[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~inputclkctrl_outclk\,
	d => \inst|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(18));

-- Location: LCCOMB_X16_Y10_N6
\inst|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~38_combout\ = (\inst|i\(19) & (!\inst|Add0~37\)) # (!\inst|i\(19) & ((\inst|Add0~37\) # (GND)))
-- \inst|Add0~39\ = CARRY((!\inst|Add0~37\) # (!\inst|i\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i\(19),
	datad => VCC,
	cin => \inst|Add0~37\,
	combout => \inst|Add0~38_combout\,
	cout => \inst|Add0~39\);

-- Location: FF_X16_Y10_N7
\inst|i[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~inputclkctrl_outclk\,
	d => \inst|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(19));

-- Location: LCCOMB_X17_Y10_N4
\inst|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal0~5_combout\ = (!\inst|i\(16) & (!\inst|i\(18) & (!\inst|i\(19) & !\inst|i\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i\(16),
	datab => \inst|i\(18),
	datac => \inst|i\(19),
	datad => \inst|i\(17),
	combout => \inst|Equal0~5_combout\);

-- Location: LCCOMB_X16_Y10_N8
\inst|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~40_combout\ = (\inst|i\(20) & (\inst|Add0~39\ $ (GND))) # (!\inst|i\(20) & (!\inst|Add0~39\ & VCC))
-- \inst|Add0~41\ = CARRY((\inst|i\(20) & !\inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|i\(20),
	datad => VCC,
	cin => \inst|Add0~39\,
	combout => \inst|Add0~40_combout\,
	cout => \inst|Add0~41\);

-- Location: FF_X16_Y10_N9
\inst|i[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~inputclkctrl_outclk\,
	d => \inst|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(20));

-- Location: LCCOMB_X16_Y10_N14
\inst|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~46_combout\ = (\inst|i\(23) & (!\inst|Add0~45\)) # (!\inst|i\(23) & ((\inst|Add0~45\) # (GND)))
-- \inst|Add0~47\ = CARRY((!\inst|Add0~45\) # (!\inst|i\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|i\(23),
	datad => VCC,
	cin => \inst|Add0~45\,
	combout => \inst|Add0~46_combout\,
	cout => \inst|Add0~47\);

-- Location: FF_X16_Y10_N15
\inst|i[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~inputclkctrl_outclk\,
	d => \inst|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(23));

-- Location: LCCOMB_X16_Y10_N16
\inst|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~48_combout\ = (\inst|i\(24) & (\inst|Add0~47\ $ (GND))) # (!\inst|i\(24) & (!\inst|Add0~47\ & VCC))
-- \inst|Add0~49\ = CARRY((\inst|i\(24) & !\inst|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|i\(24),
	datad => VCC,
	cin => \inst|Add0~47\,
	combout => \inst|Add0~48_combout\,
	cout => \inst|Add0~49\);

-- Location: FF_X16_Y10_N17
\inst|i[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~inputclkctrl_outclk\,
	d => \inst|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(24));

-- Location: LCCOMB_X16_Y10_N18
\inst|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~50_combout\ = (\inst|i\(25) & (!\inst|Add0~49\)) # (!\inst|i\(25) & ((\inst|Add0~49\) # (GND)))
-- \inst|Add0~51\ = CARRY((!\inst|Add0~49\) # (!\inst|i\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|i\(25),
	datad => VCC,
	cin => \inst|Add0~49\,
	combout => \inst|Add0~50_combout\,
	cout => \inst|Add0~51\);

-- Location: FF_X16_Y10_N19
\inst|i[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~inputclkctrl_outclk\,
	d => \inst|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(25));

-- Location: LCCOMB_X16_Y10_N20
\inst|Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~52_combout\ = (\inst|i\(26) & (\inst|Add0~51\ $ (GND))) # (!\inst|i\(26) & (!\inst|Add0~51\ & VCC))
-- \inst|Add0~53\ = CARRY((\inst|i\(26) & !\inst|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|i\(26),
	datad => VCC,
	cin => \inst|Add0~51\,
	combout => \inst|Add0~52_combout\,
	cout => \inst|Add0~53\);

-- Location: FF_X16_Y10_N21
\inst|i[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~inputclkctrl_outclk\,
	d => \inst|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(26));

-- Location: LCCOMB_X16_Y10_N22
\inst|Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~54_combout\ = (\inst|i\(27) & (!\inst|Add0~53\)) # (!\inst|i\(27) & ((\inst|Add0~53\) # (GND)))
-- \inst|Add0~55\ = CARRY((!\inst|Add0~53\) # (!\inst|i\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i\(27),
	datad => VCC,
	cin => \inst|Add0~53\,
	combout => \inst|Add0~54_combout\,
	cout => \inst|Add0~55\);

-- Location: LCCOMB_X16_Y10_N24
\inst|Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~56_combout\ = (\inst|i\(28) & (\inst|Add0~55\ $ (GND))) # (!\inst|i\(28) & (!\inst|Add0~55\ & VCC))
-- \inst|Add0~57\ = CARRY((\inst|i\(28) & !\inst|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|i\(28),
	datad => VCC,
	cin => \inst|Add0~55\,
	combout => \inst|Add0~56_combout\,
	cout => \inst|Add0~57\);

-- Location: FF_X16_Y10_N25
\inst|i[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~inputclkctrl_outclk\,
	d => \inst|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(28));

-- Location: LCCOMB_X16_Y10_N28
\inst|Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~60_combout\ = (\inst|i\(30) & (\inst|Add0~59\ $ (GND))) # (!\inst|i\(30) & (!\inst|Add0~59\ & VCC))
-- \inst|Add0~61\ = CARRY((\inst|i\(30) & !\inst|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|i\(30),
	datad => VCC,
	cin => \inst|Add0~59\,
	combout => \inst|Add0~60_combout\,
	cout => \inst|Add0~61\);

-- Location: FF_X16_Y10_N29
\inst|i[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~inputclkctrl_outclk\,
	d => \inst|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(30));

-- Location: LCCOMB_X16_Y10_N30
\inst|Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~62_combout\ = \inst|i\(31) $ (\inst|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i\(31),
	cin => \inst|Add0~61\,
	combout => \inst|Add0~62_combout\);

-- Location: FF_X16_Y10_N31
\inst|i[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~inputclkctrl_outclk\,
	d => \inst|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(31));

-- Location: LCCOMB_X17_Y10_N22
\inst|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal0~8_combout\ = (!\inst|i\(29) & (!\inst|i\(31) & (!\inst|i\(28) & !\inst|i\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i\(29),
	datab => \inst|i\(31),
	datac => \inst|i\(28),
	datad => \inst|i\(30),
	combout => \inst|Equal0~8_combout\);

-- Location: FF_X16_Y10_N23
\inst|i[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~inputclkctrl_outclk\,
	d => \inst|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(27));

-- Location: LCCOMB_X17_Y10_N12
\inst|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal0~7_combout\ = (!\inst|i\(24) & (!\inst|i\(27) & (!\inst|i\(26) & !\inst|i\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i\(24),
	datab => \inst|i\(27),
	datac => \inst|i\(26),
	datad => \inst|i\(25),
	combout => \inst|Equal0~7_combout\);

-- Location: LCCOMB_X17_Y10_N0
\inst|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal0~9_combout\ = (\inst|Equal0~6_combout\ & (\inst|Equal0~5_combout\ & (\inst|Equal0~8_combout\ & \inst|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~6_combout\,
	datab => \inst|Equal0~5_combout\,
	datac => \inst|Equal0~8_combout\,
	datad => \inst|Equal0~7_combout\,
	combout => \inst|Equal0~9_combout\);

-- Location: LCCOMB_X17_Y11_N26
\inst|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal0~10_combout\ = (\inst|Equal0~3_combout\ & (\inst|Equal0~4_combout\ & (\inst|Equal0~2_combout\ & \inst|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~3_combout\,
	datab => \inst|Equal0~4_combout\,
	datac => \inst|Equal0~2_combout\,
	datad => \inst|Equal0~9_combout\,
	combout => \inst|Equal0~10_combout\);

-- Location: FF_X17_Y11_N5
\inst|clock_25Mhz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~inputclkctrl_outclk\,
	asdata => \inst|Equal0~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_25Mhz~q\);

-- Location: CLKCTRL_G18
\inst|clock_25Mhz~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|clock_25Mhz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|clock_25Mhz~clkctrl_outclk\);

-- Location: LCCOMB_X39_Y17_N8
\inst1|SYNC|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add1~4_combout\ = (\inst1|SYNC|v_count\(2) & (\inst1|SYNC|Add1~3\ $ (GND))) # (!\inst1|SYNC|v_count\(2) & (!\inst1|SYNC|Add1~3\ & VCC))
-- \inst1|SYNC|Add1~5\ = CARRY((\inst1|SYNC|v_count\(2) & !\inst1|SYNC|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count\(2),
	datad => VCC,
	cin => \inst1|SYNC|Add1~3\,
	combout => \inst1|SYNC|Add1~4_combout\,
	cout => \inst1|SYNC|Add1~5\);

-- Location: LCCOMB_X39_Y17_N26
\inst1|SYNC|v_count[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|v_count[2]~9_combout\ = (\inst1|SYNC|v_count[8]~1_combout\ & (\inst1|SYNC|Add1~4_combout\ & ((\inst1|SYNC|v_count[2]~0_combout\)))) # (!\inst1|SYNC|v_count[8]~1_combout\ & ((\inst1|SYNC|v_count\(2)) # ((\inst1|SYNC|Add1~4_combout\ & 
-- \inst1|SYNC|v_count[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count[8]~1_combout\,
	datab => \inst1|SYNC|Add1~4_combout\,
	datac => \inst1|SYNC|v_count\(2),
	datad => \inst1|SYNC|v_count[2]~0_combout\,
	combout => \inst1|SYNC|v_count[2]~9_combout\);

-- Location: FF_X39_Y17_N27
\inst1|SYNC|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|SYNC|v_count[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|v_count\(2));

-- Location: LCCOMB_X38_Y17_N2
\inst1|SYNC|v_count[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|v_count[5]~3_combout\ = (\inst1|SYNC|Add1~10_combout\ & ((\inst1|SYNC|v_count[2]~0_combout\) # ((!\inst1|SYNC|v_count[8]~1_combout\ & \inst1|SYNC|v_count\(5))))) # (!\inst1|SYNC|Add1~10_combout\ & (!\inst1|SYNC|v_count[8]~1_combout\ & 
-- (\inst1|SYNC|v_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|Add1~10_combout\,
	datab => \inst1|SYNC|v_count[8]~1_combout\,
	datac => \inst1|SYNC|v_count\(5),
	datad => \inst1|SYNC|v_count[2]~0_combout\,
	combout => \inst1|SYNC|v_count[5]~3_combout\);

-- Location: FF_X38_Y17_N3
\inst1|SYNC|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|SYNC|v_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|v_count\(5));

-- Location: LCCOMB_X39_Y17_N10
\inst1|SYNC|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add1~6_combout\ = (\inst1|SYNC|v_count\(3) & (!\inst1|SYNC|Add1~5\)) # (!\inst1|SYNC|v_count\(3) & ((\inst1|SYNC|Add1~5\) # (GND)))
-- \inst1|SYNC|Add1~7\ = CARRY((!\inst1|SYNC|Add1~5\) # (!\inst1|SYNC|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|v_count\(3),
	datad => VCC,
	cin => \inst1|SYNC|Add1~5\,
	combout => \inst1|SYNC|Add1~6_combout\,
	cout => \inst1|SYNC|Add1~7\);

-- Location: LCCOMB_X39_Y17_N28
\inst1|SYNC|v_count[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|v_count[3]~8_combout\ = (\inst1|SYNC|v_count[8]~1_combout\ & (\inst1|SYNC|Add1~6_combout\ & ((\inst1|SYNC|v_count[2]~0_combout\)))) # (!\inst1|SYNC|v_count[8]~1_combout\ & ((\inst1|SYNC|v_count\(3)) # ((\inst1|SYNC|Add1~6_combout\ & 
-- \inst1|SYNC|v_count[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count[8]~1_combout\,
	datab => \inst1|SYNC|Add1~6_combout\,
	datac => \inst1|SYNC|v_count\(3),
	datad => \inst1|SYNC|v_count[2]~0_combout\,
	combout => \inst1|SYNC|v_count[3]~8_combout\);

-- Location: FF_X39_Y17_N29
\inst1|SYNC|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|SYNC|v_count[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|v_count\(3));

-- Location: LCCOMB_X38_Y17_N30
\inst1|SYNC|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~7_combout\ = (!\inst1|SYNC|v_count\(4) & (!\inst1|SYNC|v_count\(5) & ((!\inst1|SYNC|v_count\(3)) # (!\inst1|SYNC|v_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count\(4),
	datab => \inst1|SYNC|v_count\(2),
	datac => \inst1|SYNC|v_count\(5),
	datad => \inst1|SYNC|v_count\(3),
	combout => \inst1|SYNC|process_0~7_combout\);

-- Location: LCCOMB_X38_Y17_N8
\inst1|SYNC|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~8_combout\ = (!\inst1|SYNC|v_count\(7) & (!\inst1|SYNC|v_count\(6) & (\inst1|SYNC|process_0~7_combout\ & !\inst1|SYNC|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count\(7),
	datab => \inst1|SYNC|v_count\(6),
	datac => \inst1|SYNC|process_0~7_combout\,
	datad => \inst1|SYNC|v_count\(8),
	combout => \inst1|SYNC|process_0~8_combout\);

-- Location: LCCOMB_X37_Y17_N6
\inst1|SYNC|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add0~0_combout\ = \inst1|SYNC|h_count\(0) $ (VCC)
-- \inst1|SYNC|Add0~1\ = CARRY(\inst1|SYNC|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(0),
	datad => VCC,
	combout => \inst1|SYNC|Add0~0_combout\,
	cout => \inst1|SYNC|Add0~1\);

-- Location: LCCOMB_X37_Y17_N8
\inst1|SYNC|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add0~2_combout\ = (\inst1|SYNC|h_count\(1) & (!\inst1|SYNC|Add0~1\)) # (!\inst1|SYNC|h_count\(1) & ((\inst1|SYNC|Add0~1\) # (GND)))
-- \inst1|SYNC|Add0~3\ = CARRY((!\inst1|SYNC|Add0~1\) # (!\inst1|SYNC|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|h_count\(1),
	datad => VCC,
	cin => \inst1|SYNC|Add0~1\,
	combout => \inst1|SYNC|Add0~2_combout\,
	cout => \inst1|SYNC|Add0~3\);

-- Location: FF_X37_Y17_N9
\inst1|SYNC|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|SYNC|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|h_count\(1));

-- Location: LCCOMB_X37_Y17_N10
\inst1|SYNC|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add0~4_combout\ = (\inst1|SYNC|h_count\(2) & (\inst1|SYNC|Add0~3\ $ (GND))) # (!\inst1|SYNC|h_count\(2) & (!\inst1|SYNC|Add0~3\ & VCC))
-- \inst1|SYNC|Add0~5\ = CARRY((\inst1|SYNC|h_count\(2) & !\inst1|SYNC|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(2),
	datad => VCC,
	cin => \inst1|SYNC|Add0~3\,
	combout => \inst1|SYNC|Add0~4_combout\,
	cout => \inst1|SYNC|Add0~5\);

-- Location: FF_X37_Y17_N11
\inst1|SYNC|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|SYNC|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|h_count\(2));

-- Location: LCCOMB_X37_Y17_N12
\inst1|SYNC|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add0~6_combout\ = (\inst1|SYNC|h_count\(3) & (!\inst1|SYNC|Add0~5\)) # (!\inst1|SYNC|h_count\(3) & ((\inst1|SYNC|Add0~5\) # (GND)))
-- \inst1|SYNC|Add0~7\ = CARRY((!\inst1|SYNC|Add0~5\) # (!\inst1|SYNC|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(3),
	datad => VCC,
	cin => \inst1|SYNC|Add0~5\,
	combout => \inst1|SYNC|Add0~6_combout\,
	cout => \inst1|SYNC|Add0~7\);

-- Location: FF_X37_Y17_N13
\inst1|SYNC|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|SYNC|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|h_count\(3));

-- Location: LCCOMB_X37_Y17_N4
\inst1|SYNC|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~9_combout\ = ((!\inst1|SYNC|h_count\(2) & ((!\inst1|SYNC|h_count\(1)) # (!\inst1|SYNC|h_count\(0))))) # (!\inst1|SYNC|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(0),
	datab => \inst1|SYNC|h_count\(2),
	datac => \inst1|SYNC|h_count\(1),
	datad => \inst1|SYNC|h_count\(3),
	combout => \inst1|SYNC|process_0~9_combout\);

-- Location: LCCOMB_X37_Y17_N14
\inst1|SYNC|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add0~8_combout\ = (\inst1|SYNC|h_count\(4) & (\inst1|SYNC|Add0~7\ $ (GND))) # (!\inst1|SYNC|h_count\(4) & (!\inst1|SYNC|Add0~7\ & VCC))
-- \inst1|SYNC|Add0~9\ = CARRY((\inst1|SYNC|h_count\(4) & !\inst1|SYNC|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|h_count\(4),
	datad => VCC,
	cin => \inst1|SYNC|Add0~7\,
	combout => \inst1|SYNC|Add0~8_combout\,
	cout => \inst1|SYNC|Add0~9\);

-- Location: FF_X37_Y17_N15
\inst1|SYNC|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|SYNC|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|h_count\(4));

-- Location: LCCOMB_X37_Y17_N16
\inst1|SYNC|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add0~10_combout\ = (\inst1|SYNC|h_count\(5) & (!\inst1|SYNC|Add0~9\)) # (!\inst1|SYNC|h_count\(5) & ((\inst1|SYNC|Add0~9\) # (GND)))
-- \inst1|SYNC|Add0~11\ = CARRY((!\inst1|SYNC|Add0~9\) # (!\inst1|SYNC|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|h_count\(5),
	datad => VCC,
	cin => \inst1|SYNC|Add0~9\,
	combout => \inst1|SYNC|Add0~10_combout\,
	cout => \inst1|SYNC|Add0~11\);

-- Location: LCCOMB_X37_Y17_N18
\inst1|SYNC|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add0~12_combout\ = (\inst1|SYNC|h_count\(6) & (\inst1|SYNC|Add0~11\ $ (GND))) # (!\inst1|SYNC|h_count\(6) & (!\inst1|SYNC|Add0~11\ & VCC))
-- \inst1|SYNC|Add0~13\ = CARRY((\inst1|SYNC|h_count\(6) & !\inst1|SYNC|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|h_count\(6),
	datad => VCC,
	cin => \inst1|SYNC|Add0~11\,
	combout => \inst1|SYNC|Add0~12_combout\,
	cout => \inst1|SYNC|Add0~13\);

-- Location: FF_X37_Y17_N19
\inst1|SYNC|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|SYNC|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|h_count\(6));

-- Location: LCCOMB_X37_Y17_N20
\inst1|SYNC|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add0~14_combout\ = (\inst1|SYNC|h_count\(7) & (!\inst1|SYNC|Add0~13\)) # (!\inst1|SYNC|h_count\(7) & ((\inst1|SYNC|Add0~13\) # (GND)))
-- \inst1|SYNC|Add0~15\ = CARRY((!\inst1|SYNC|Add0~13\) # (!\inst1|SYNC|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|h_count\(7),
	datad => VCC,
	cin => \inst1|SYNC|Add0~13\,
	combout => \inst1|SYNC|Add0~14_combout\,
	cout => \inst1|SYNC|Add0~15\);

-- Location: FF_X37_Y17_N21
\inst1|SYNC|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|SYNC|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|h_count\(7));

-- Location: LCCOMB_X37_Y17_N22
\inst1|SYNC|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add0~16_combout\ = (\inst1|SYNC|h_count\(8) & (\inst1|SYNC|Add0~15\ $ (GND))) # (!\inst1|SYNC|h_count\(8) & (!\inst1|SYNC|Add0~15\ & VCC))
-- \inst1|SYNC|Add0~17\ = CARRY((\inst1|SYNC|h_count\(8) & !\inst1|SYNC|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|h_count\(8),
	datad => VCC,
	cin => \inst1|SYNC|Add0~15\,
	combout => \inst1|SYNC|Add0~16_combout\,
	cout => \inst1|SYNC|Add0~17\);

-- Location: LCCOMB_X36_Y17_N22
\inst1|SYNC|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|h_count~1_combout\ = (!\inst1|SYNC|Equal0~2_combout\ & \inst1|SYNC|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|SYNC|Equal0~2_combout\,
	datad => \inst1|SYNC|Add0~16_combout\,
	combout => \inst1|SYNC|h_count~1_combout\);

-- Location: FF_X36_Y17_N23
\inst1|SYNC|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|SYNC|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|h_count\(8));

-- Location: LCCOMB_X37_Y17_N24
\inst1|SYNC|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add0~18_combout\ = \inst1|SYNC|Add0~17\ $ (\inst1|SYNC|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SYNC|h_count\(9),
	cin => \inst1|SYNC|Add0~17\,
	combout => \inst1|SYNC|Add0~18_combout\);

-- Location: LCCOMB_X36_Y17_N24
\inst1|SYNC|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|h_count~0_combout\ = (!\inst1|SYNC|Equal0~2_combout\ & \inst1|SYNC|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|SYNC|Equal0~2_combout\,
	datad => \inst1|SYNC|Add0~18_combout\,
	combout => \inst1|SYNC|h_count~0_combout\);

-- Location: FF_X36_Y17_N25
\inst1|SYNC|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|SYNC|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|h_count\(9));

-- Location: LCCOMB_X36_Y17_N26
\inst1|SYNC|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Equal0~1_combout\ = (\inst1|SYNC|h_count\(8) & (\inst1|SYNC|h_count\(2) & (!\inst1|SYNC|h_count\(7) & !\inst1|SYNC|h_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(8),
	datab => \inst1|SYNC|h_count\(2),
	datac => \inst1|SYNC|h_count\(7),
	datad => \inst1|SYNC|h_count\(5),
	combout => \inst1|SYNC|Equal0~1_combout\);

-- Location: LCCOMB_X37_Y17_N28
\inst1|SYNC|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Equal0~0_combout\ = (\inst1|SYNC|h_count\(0) & (\inst1|SYNC|h_count\(1) & (\inst1|SYNC|h_count\(4) & \inst1|SYNC|h_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(0),
	datab => \inst1|SYNC|h_count\(1),
	datac => \inst1|SYNC|h_count\(4),
	datad => \inst1|SYNC|h_count\(3),
	combout => \inst1|SYNC|Equal0~0_combout\);

-- Location: LCCOMB_X37_Y17_N30
\inst1|SYNC|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Equal0~2_combout\ = (!\inst1|SYNC|h_count\(6) & (\inst1|SYNC|h_count\(9) & (\inst1|SYNC|Equal0~1_combout\ & \inst1|SYNC|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(6),
	datab => \inst1|SYNC|h_count\(9),
	datac => \inst1|SYNC|Equal0~1_combout\,
	datad => \inst1|SYNC|Equal0~0_combout\,
	combout => \inst1|SYNC|Equal0~2_combout\);

-- Location: LCCOMB_X37_Y17_N2
\inst1|SYNC|h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|h_count~2_combout\ = (\inst1|SYNC|Add0~10_combout\ & !\inst1|SYNC|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|Add0~10_combout\,
	datac => \inst1|SYNC|Equal0~2_combout\,
	combout => \inst1|SYNC|h_count~2_combout\);

-- Location: FF_X37_Y17_N3
\inst1|SYNC|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|SYNC|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|h_count\(5));

-- Location: LCCOMB_X37_Y17_N26
\inst1|SYNC|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~10_combout\ = (\inst1|SYNC|h_count\(4) & \inst1|SYNC|h_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|SYNC|h_count\(4),
	datad => \inst1|SYNC|h_count\(5),
	combout => \inst1|SYNC|process_0~10_combout\);

-- Location: LCCOMB_X38_Y17_N18
\inst1|SYNC|process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~11_combout\ = (!\inst1|SYNC|h_count\(8) & (!\inst1|SYNC|h_count\(6) & ((\inst1|SYNC|process_0~9_combout\) # (!\inst1|SYNC|process_0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(8),
	datab => \inst1|SYNC|process_0~9_combout\,
	datac => \inst1|SYNC|process_0~10_combout\,
	datad => \inst1|SYNC|h_count\(6),
	combout => \inst1|SYNC|process_0~11_combout\);

-- Location: LCCOMB_X38_Y17_N12
\inst1|SYNC|v_count[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|v_count[2]~0_combout\ = (!\inst1|SYNC|Equal1~1_combout\ & ((\inst1|SYNC|process_0~12_combout\) # ((\inst1|SYNC|process_0~8_combout\) # (\inst1|SYNC|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|Equal1~1_combout\,
	datab => \inst1|SYNC|process_0~12_combout\,
	datac => \inst1|SYNC|process_0~8_combout\,
	datad => \inst1|SYNC|process_0~11_combout\,
	combout => \inst1|SYNC|v_count[2]~0_combout\);

-- Location: LCCOMB_X38_Y17_N24
\inst1|SYNC|v_count[8]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|v_count[8]~6_combout\ = (\inst1|SYNC|Add1~16_combout\ & ((\inst1|SYNC|v_count[2]~0_combout\) # ((!\inst1|SYNC|v_count[8]~1_combout\ & \inst1|SYNC|v_count\(8))))) # (!\inst1|SYNC|Add1~16_combout\ & (!\inst1|SYNC|v_count[8]~1_combout\ & 
-- (\inst1|SYNC|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|Add1~16_combout\,
	datab => \inst1|SYNC|v_count[8]~1_combout\,
	datac => \inst1|SYNC|v_count\(8),
	datad => \inst1|SYNC|v_count[2]~0_combout\,
	combout => \inst1|SYNC|v_count[8]~6_combout\);

-- Location: FF_X38_Y17_N25
\inst1|SYNC|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|SYNC|v_count[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|v_count\(8));

-- Location: LCCOMB_X39_Y17_N12
\inst1|SYNC|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add1~8_combout\ = (\inst1|SYNC|v_count\(4) & (\inst1|SYNC|Add1~7\ $ (GND))) # (!\inst1|SYNC|v_count\(4) & (!\inst1|SYNC|Add1~7\ & VCC))
-- \inst1|SYNC|Add1~9\ = CARRY((\inst1|SYNC|v_count\(4) & !\inst1|SYNC|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|v_count\(4),
	datad => VCC,
	cin => \inst1|SYNC|Add1~7\,
	combout => \inst1|SYNC|Add1~8_combout\,
	cout => \inst1|SYNC|Add1~9\);

-- Location: LCCOMB_X39_Y17_N2
\inst1|SYNC|v_count[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|v_count[4]~7_combout\ = (\inst1|SYNC|v_count[8]~1_combout\ & (\inst1|SYNC|Add1~8_combout\ & ((\inst1|SYNC|v_count[2]~0_combout\)))) # (!\inst1|SYNC|v_count[8]~1_combout\ & ((\inst1|SYNC|v_count\(4)) # ((\inst1|SYNC|Add1~8_combout\ & 
-- \inst1|SYNC|v_count[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count[8]~1_combout\,
	datab => \inst1|SYNC|Add1~8_combout\,
	datac => \inst1|SYNC|v_count\(4),
	datad => \inst1|SYNC|v_count[2]~0_combout\,
	combout => \inst1|SYNC|v_count[4]~7_combout\);

-- Location: FF_X39_Y17_N3
\inst1|SYNC|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|SYNC|v_count[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|v_count\(4));

-- Location: LCCOMB_X39_Y17_N16
\inst1|SYNC|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add1~12_combout\ = (\inst1|SYNC|v_count\(6) & (\inst1|SYNC|Add1~11\ $ (GND))) # (!\inst1|SYNC|v_count\(6) & (!\inst1|SYNC|Add1~11\ & VCC))
-- \inst1|SYNC|Add1~13\ = CARRY((\inst1|SYNC|v_count\(6) & !\inst1|SYNC|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count\(6),
	datad => VCC,
	cin => \inst1|SYNC|Add1~11\,
	combout => \inst1|SYNC|Add1~12_combout\,
	cout => \inst1|SYNC|Add1~13\);

-- Location: LCCOMB_X39_Y17_N18
\inst1|SYNC|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add1~14_combout\ = (\inst1|SYNC|v_count\(7) & (!\inst1|SYNC|Add1~13\)) # (!\inst1|SYNC|v_count\(7) & ((\inst1|SYNC|Add1~13\) # (GND)))
-- \inst1|SYNC|Add1~15\ = CARRY((!\inst1|SYNC|Add1~13\) # (!\inst1|SYNC|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|v_count\(7),
	datad => VCC,
	cin => \inst1|SYNC|Add1~13\,
	combout => \inst1|SYNC|Add1~14_combout\,
	cout => \inst1|SYNC|Add1~15\);

-- Location: LCCOMB_X38_Y17_N6
\inst1|SYNC|v_count[7]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|v_count[7]~5_combout\ = (\inst1|SYNC|v_count[2]~0_combout\ & ((\inst1|SYNC|Add1~14_combout\) # ((!\inst1|SYNC|v_count[8]~1_combout\ & \inst1|SYNC|v_count\(7))))) # (!\inst1|SYNC|v_count[2]~0_combout\ & (!\inst1|SYNC|v_count[8]~1_combout\ & 
-- (\inst1|SYNC|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count[2]~0_combout\,
	datab => \inst1|SYNC|v_count[8]~1_combout\,
	datac => \inst1|SYNC|v_count\(7),
	datad => \inst1|SYNC|Add1~14_combout\,
	combout => \inst1|SYNC|v_count[7]~5_combout\);

-- Location: FF_X38_Y17_N7
\inst1|SYNC|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|SYNC|v_count[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|v_count\(7));

-- Location: LCCOMB_X39_Y17_N22
\inst1|SYNC|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add1~18_combout\ = \inst1|SYNC|Add1~17\ $ (\inst1|SYNC|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SYNC|v_count\(9),
	cin => \inst1|SYNC|Add1~17\,
	combout => \inst1|SYNC|Add1~18_combout\);

-- Location: LCCOMB_X39_Y17_N0
\inst1|SYNC|v_count[9]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|v_count[9]~2_combout\ = (\inst1|SYNC|v_count[8]~1_combout\ & (\inst1|SYNC|Add1~18_combout\ & ((\inst1|SYNC|v_count[2]~0_combout\)))) # (!\inst1|SYNC|v_count[8]~1_combout\ & ((\inst1|SYNC|v_count\(9)) # ((\inst1|SYNC|Add1~18_combout\ & 
-- \inst1|SYNC|v_count[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count[8]~1_combout\,
	datab => \inst1|SYNC|Add1~18_combout\,
	datac => \inst1|SYNC|v_count\(9),
	datad => \inst1|SYNC|v_count[2]~0_combout\,
	combout => \inst1|SYNC|v_count[9]~2_combout\);

-- Location: FF_X39_Y17_N1
\inst1|SYNC|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|SYNC|v_count[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|v_count\(9));

-- Location: LCCOMB_X38_Y17_N20
\inst1|SYNC|process_0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~12_combout\ = (((!\inst1|SYNC|h_count\(8) & !\inst1|SYNC|h_count\(7))) # (!\inst1|SYNC|v_count\(9))) # (!\inst1|SYNC|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(9),
	datab => \inst1|SYNC|v_count\(9),
	datac => \inst1|SYNC|h_count\(8),
	datad => \inst1|SYNC|h_count\(7),
	combout => \inst1|SYNC|process_0~12_combout\);

-- Location: LCCOMB_X38_Y17_N14
\inst1|SYNC|v_count[8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|v_count[8]~1_combout\ = ((!\inst1|SYNC|process_0~12_combout\ & (!\inst1|SYNC|process_0~8_combout\ & !\inst1|SYNC|process_0~11_combout\))) # (!\inst1|SYNC|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|Equal1~1_combout\,
	datab => \inst1|SYNC|process_0~12_combout\,
	datac => \inst1|SYNC|process_0~8_combout\,
	datad => \inst1|SYNC|process_0~11_combout\,
	combout => \inst1|SYNC|v_count[8]~1_combout\);

-- Location: LCCOMB_X38_Y17_N16
\inst1|SYNC|v_count[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|v_count[6]~4_combout\ = (\inst1|SYNC|v_count[2]~0_combout\ & ((\inst1|SYNC|Add1~12_combout\) # ((!\inst1|SYNC|v_count[8]~1_combout\ & \inst1|SYNC|v_count\(6))))) # (!\inst1|SYNC|v_count[2]~0_combout\ & (!\inst1|SYNC|v_count[8]~1_combout\ & 
-- (\inst1|SYNC|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count[2]~0_combout\,
	datab => \inst1|SYNC|v_count[8]~1_combout\,
	datac => \inst1|SYNC|v_count\(6),
	datad => \inst1|SYNC|Add1~12_combout\,
	combout => \inst1|SYNC|v_count[6]~4_combout\);

-- Location: FF_X38_Y17_N17
\inst1|SYNC|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|SYNC|v_count[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|v_count\(6));

-- Location: LCCOMB_X38_Y17_N10
\inst1|SYNC|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|LessThan7~0_combout\ = (\inst1|SYNC|v_count\(7) & (\inst1|SYNC|v_count\(6) & (\inst1|SYNC|v_count\(5) & \inst1|SYNC|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count\(7),
	datab => \inst1|SYNC|v_count\(6),
	datac => \inst1|SYNC|v_count\(5),
	datad => \inst1|SYNC|v_count\(8),
	combout => \inst1|SYNC|LessThan7~0_combout\);

-- Location: LCCOMB_X38_Y19_N30
\inst1|SYNC|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|LessThan7~1_combout\ = (!\inst1|SYNC|v_count\(9) & !\inst1|SYNC|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count\(9),
	datad => \inst1|SYNC|LessThan7~0_combout\,
	combout => \inst1|SYNC|LessThan7~1_combout\);

-- Location: FF_X38_Y19_N1
\inst1|SYNC|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst1|SYNC|LessThan7~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|video_on_v~q\);

-- Location: LCCOMB_X37_Y19_N20
\inst1|SYNC|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~0_combout\ = ((!\inst1|SYNC|h_count\(8) & !\inst1|SYNC|h_count\(7))) # (!\inst1|SYNC|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(8),
	datab => \inst1|SYNC|h_count\(7),
	datad => \inst1|SYNC|h_count\(9),
	combout => \inst1|SYNC|process_0~0_combout\);

-- Location: FF_X36_Y19_N5
\inst1|SYNC|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst1|SYNC|process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|video_on_h~q\);

-- Location: LCCOMB_X37_Y19_N22
\inst1|SYNC|video_on~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|video_on~0_combout\ = (\inst1|SYNC|video_on_v~q\ & \inst1|SYNC|video_on_h~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|video_on_v~q\,
	datad => \inst1|SYNC|video_on_h~q\,
	combout => \inst1|SYNC|video_on~0_combout\);

-- Location: FF_X36_Y19_N17
\inst1|SYNC|red_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst1|SYNC|video_on~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|red_out~q\);

-- Location: FF_X38_Y19_N27
\inst1|SYNC|pixel_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst1|SYNC|v_count\(8),
	sload => VCC,
	ena => \inst1|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_row\(8));

-- Location: LCCOMB_X35_Y19_N24
\inst1|Ball_Y_pos[7]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_pos[7]~21_combout\ = ((\inst1|Ball_Y_motion\(2) $ (\inst1|Ball_Y_pos\(7) $ (!\inst1|Ball_Y_pos[6]~20\)))) # (GND)
-- \inst1|Ball_Y_pos[7]~22\ = CARRY((\inst1|Ball_Y_motion\(2) & ((\inst1|Ball_Y_pos\(7)) # (!\inst1|Ball_Y_pos[6]~20\))) # (!\inst1|Ball_Y_motion\(2) & (\inst1|Ball_Y_pos\(7) & !\inst1|Ball_Y_pos[6]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_motion\(2),
	datab => \inst1|Ball_Y_pos\(7),
	datad => VCC,
	cin => \inst1|Ball_Y_pos[6]~20\,
	combout => \inst1|Ball_Y_pos[7]~21_combout\,
	cout => \inst1|Ball_Y_pos[7]~22\);

-- Location: LCCOMB_X35_Y19_N26
\inst1|Ball_Y_pos[8]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_pos[8]~23_combout\ = (\inst1|Ball_Y_pos\(8) & ((\inst1|Ball_Y_motion\(2) & (\inst1|Ball_Y_pos[7]~22\ & VCC)) # (!\inst1|Ball_Y_motion\(2) & (!\inst1|Ball_Y_pos[7]~22\)))) # (!\inst1|Ball_Y_pos\(8) & ((\inst1|Ball_Y_motion\(2) & 
-- (!\inst1|Ball_Y_pos[7]~22\)) # (!\inst1|Ball_Y_motion\(2) & ((\inst1|Ball_Y_pos[7]~22\) # (GND)))))
-- \inst1|Ball_Y_pos[8]~24\ = CARRY((\inst1|Ball_Y_pos\(8) & (!\inst1|Ball_Y_motion\(2) & !\inst1|Ball_Y_pos[7]~22\)) # (!\inst1|Ball_Y_pos\(8) & ((!\inst1|Ball_Y_pos[7]~22\) # (!\inst1|Ball_Y_motion\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(8),
	datab => \inst1|Ball_Y_motion\(2),
	datad => VCC,
	cin => \inst1|Ball_Y_pos[7]~22\,
	combout => \inst1|Ball_Y_pos[8]~23_combout\,
	cout => \inst1|Ball_Y_pos[8]~24\);

-- Location: LCCOMB_X35_Y19_N28
\inst1|Ball_Y_pos[9]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_pos[9]~25_combout\ = \inst1|Ball_Y_motion\(2) $ (\inst1|Ball_Y_pos[8]~24\ $ (!\inst1|Ball_Y_pos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_motion\(2),
	datad => \inst1|Ball_Y_pos\(9),
	cin => \inst1|Ball_Y_pos[8]~24\,
	combout => \inst1|Ball_Y_pos[9]~25_combout\);

-- Location: FF_X35_Y19_N29
\inst1|Ball_Y_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Ball_Y_pos[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Ball_Y_pos\(9));

-- Location: LCCOMB_X35_Y19_N12
\inst1|Ball_Y_pos[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_pos[1]~9_combout\ = \inst1|Ball_Y_pos\(1) $ (VCC)
-- \inst1|Ball_Y_pos[1]~10\ = CARRY(\inst1|Ball_Y_pos\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(1),
	datad => VCC,
	combout => \inst1|Ball_Y_pos[1]~9_combout\,
	cout => \inst1|Ball_Y_pos[1]~10\);

-- Location: LCCOMB_X35_Y19_N14
\inst1|Ball_Y_pos[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_pos[2]~11_combout\ = (\inst1|Ball_Y_motion\(2) & ((\inst1|Ball_Y_pos\(2) & (\inst1|Ball_Y_pos[1]~10\ & VCC)) # (!\inst1|Ball_Y_pos\(2) & (!\inst1|Ball_Y_pos[1]~10\)))) # (!\inst1|Ball_Y_motion\(2) & ((\inst1|Ball_Y_pos\(2) & 
-- (!\inst1|Ball_Y_pos[1]~10\)) # (!\inst1|Ball_Y_pos\(2) & ((\inst1|Ball_Y_pos[1]~10\) # (GND)))))
-- \inst1|Ball_Y_pos[2]~12\ = CARRY((\inst1|Ball_Y_motion\(2) & (!\inst1|Ball_Y_pos\(2) & !\inst1|Ball_Y_pos[1]~10\)) # (!\inst1|Ball_Y_motion\(2) & ((!\inst1|Ball_Y_pos[1]~10\) # (!\inst1|Ball_Y_pos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_motion\(2),
	datab => \inst1|Ball_Y_pos\(2),
	datad => VCC,
	cin => \inst1|Ball_Y_pos[1]~10\,
	combout => \inst1|Ball_Y_pos[2]~11_combout\,
	cout => \inst1|Ball_Y_pos[2]~12\);

-- Location: FF_X35_Y19_N15
\inst1|Ball_Y_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Ball_Y_pos[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Ball_Y_pos\(2));

-- Location: LCCOMB_X35_Y19_N16
\inst1|Ball_Y_pos[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_pos[3]~13_combout\ = ((\inst1|Ball_Y_motion\(2) $ (\inst1|Ball_Y_pos\(3) $ (!\inst1|Ball_Y_pos[2]~12\)))) # (GND)
-- \inst1|Ball_Y_pos[3]~14\ = CARRY((\inst1|Ball_Y_motion\(2) & ((\inst1|Ball_Y_pos\(3)) # (!\inst1|Ball_Y_pos[2]~12\))) # (!\inst1|Ball_Y_motion\(2) & (\inst1|Ball_Y_pos\(3) & !\inst1|Ball_Y_pos[2]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_motion\(2),
	datab => \inst1|Ball_Y_pos\(3),
	datad => VCC,
	cin => \inst1|Ball_Y_pos[2]~12\,
	combout => \inst1|Ball_Y_pos[3]~13_combout\,
	cout => \inst1|Ball_Y_pos[3]~14\);

-- Location: FF_X35_Y19_N17
\inst1|Ball_Y_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Ball_Y_pos[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Ball_Y_pos\(3));

-- Location: LCCOMB_X35_Y19_N18
\inst1|Ball_Y_pos[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_pos[4]~15_combout\ = (\inst1|Ball_Y_motion\(2) & ((\inst1|Ball_Y_pos\(4) & (\inst1|Ball_Y_pos[3]~14\ & VCC)) # (!\inst1|Ball_Y_pos\(4) & (!\inst1|Ball_Y_pos[3]~14\)))) # (!\inst1|Ball_Y_motion\(2) & ((\inst1|Ball_Y_pos\(4) & 
-- (!\inst1|Ball_Y_pos[3]~14\)) # (!\inst1|Ball_Y_pos\(4) & ((\inst1|Ball_Y_pos[3]~14\) # (GND)))))
-- \inst1|Ball_Y_pos[4]~16\ = CARRY((\inst1|Ball_Y_motion\(2) & (!\inst1|Ball_Y_pos\(4) & !\inst1|Ball_Y_pos[3]~14\)) # (!\inst1|Ball_Y_motion\(2) & ((!\inst1|Ball_Y_pos[3]~14\) # (!\inst1|Ball_Y_pos\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_motion\(2),
	datab => \inst1|Ball_Y_pos\(4),
	datad => VCC,
	cin => \inst1|Ball_Y_pos[3]~14\,
	combout => \inst1|Ball_Y_pos[4]~15_combout\,
	cout => \inst1|Ball_Y_pos[4]~16\);

-- Location: FF_X35_Y19_N19
\inst1|Ball_Y_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Ball_Y_pos[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Ball_Y_pos\(4));

-- Location: LCCOMB_X35_Y19_N20
\inst1|Ball_Y_pos[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_pos[5]~17_combout\ = ((\inst1|Ball_Y_motion\(2) $ (\inst1|Ball_Y_pos\(5) $ (!\inst1|Ball_Y_pos[4]~16\)))) # (GND)
-- \inst1|Ball_Y_pos[5]~18\ = CARRY((\inst1|Ball_Y_motion\(2) & ((\inst1|Ball_Y_pos\(5)) # (!\inst1|Ball_Y_pos[4]~16\))) # (!\inst1|Ball_Y_motion\(2) & (\inst1|Ball_Y_pos\(5) & !\inst1|Ball_Y_pos[4]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_motion\(2),
	datab => \inst1|Ball_Y_pos\(5),
	datad => VCC,
	cin => \inst1|Ball_Y_pos[4]~16\,
	combout => \inst1|Ball_Y_pos[5]~17_combout\,
	cout => \inst1|Ball_Y_pos[5]~18\);

-- Location: FF_X35_Y19_N21
\inst1|Ball_Y_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Ball_Y_pos[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Ball_Y_pos\(5));

-- Location: FF_X35_Y19_N27
\inst1|Ball_Y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Ball_Y_pos[8]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Ball_Y_pos\(8));

-- Location: LCCOMB_X35_Y19_N0
\inst1|Ball_Y_motion[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_motion[2]~1_combout\ = (\inst1|Ball_Y_pos\(3) & ((\inst1|Ball_Y_pos\(1)) # ((\inst1|Ball_Y_pos\(8)) # (\inst1|Ball_Y_pos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(1),
	datab => \inst1|Ball_Y_pos\(3),
	datac => \inst1|Ball_Y_pos\(8),
	datad => \inst1|Ball_Y_pos\(2),
	combout => \inst1|Ball_Y_motion[2]~1_combout\);

-- Location: LCCOMB_X35_Y19_N10
\inst1|Ball_Y_motion[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_motion[2]~2_combout\ = (\inst1|Ball_Y_pos\(5)) # ((\inst1|Ball_Y_motion\(2) & ((\inst1|Ball_Y_pos\(4)) # (\inst1|Ball_Y_motion[2]~1_combout\))) # (!\inst1|Ball_Y_motion\(2) & (\inst1|Ball_Y_pos\(4) & \inst1|Ball_Y_motion[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_motion\(2),
	datab => \inst1|Ball_Y_pos\(5),
	datac => \inst1|Ball_Y_pos\(4),
	datad => \inst1|Ball_Y_motion[2]~1_combout\,
	combout => \inst1|Ball_Y_motion[2]~2_combout\);

-- Location: LCCOMB_X35_Y19_N4
\inst1|Ball_Y_motion[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_motion[2]~3_combout\ = (\inst1|Ball_Y_pos\(9)) # ((\inst1|Ball_Y_motion[2]~0_combout\ & ((\inst1|Ball_Y_motion\(2)) # (\inst1|Ball_Y_motion[2]~2_combout\))) # (!\inst1|Ball_Y_motion[2]~0_combout\ & (\inst1|Ball_Y_motion\(2) & 
-- \inst1|Ball_Y_motion[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_motion[2]~0_combout\,
	datab => \inst1|Ball_Y_pos\(9),
	datac => \inst1|Ball_Y_motion\(2),
	datad => \inst1|Ball_Y_motion[2]~2_combout\,
	combout => \inst1|Ball_Y_motion[2]~3_combout\);

-- Location: FF_X35_Y19_N5
\inst1|Ball_Y_motion[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Ball_Y_motion[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Ball_Y_motion\(2));

-- Location: LCCOMB_X35_Y19_N22
\inst1|Ball_Y_pos[6]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_pos[6]~19_combout\ = (\inst1|Ball_Y_pos\(6) & ((\inst1|Ball_Y_motion\(2) & (\inst1|Ball_Y_pos[5]~18\ & VCC)) # (!\inst1|Ball_Y_motion\(2) & (!\inst1|Ball_Y_pos[5]~18\)))) # (!\inst1|Ball_Y_pos\(6) & ((\inst1|Ball_Y_motion\(2) & 
-- (!\inst1|Ball_Y_pos[5]~18\)) # (!\inst1|Ball_Y_motion\(2) & ((\inst1|Ball_Y_pos[5]~18\) # (GND)))))
-- \inst1|Ball_Y_pos[6]~20\ = CARRY((\inst1|Ball_Y_pos\(6) & (!\inst1|Ball_Y_motion\(2) & !\inst1|Ball_Y_pos[5]~18\)) # (!\inst1|Ball_Y_pos\(6) & ((!\inst1|Ball_Y_pos[5]~18\) # (!\inst1|Ball_Y_motion\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(6),
	datab => \inst1|Ball_Y_motion\(2),
	datad => VCC,
	cin => \inst1|Ball_Y_pos[5]~18\,
	combout => \inst1|Ball_Y_pos[6]~19_combout\,
	cout => \inst1|Ball_Y_pos[6]~20\);

-- Location: FF_X35_Y19_N25
\inst1|Ball_Y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Ball_Y_pos[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Ball_Y_pos\(7));

-- Location: FF_X35_Y19_N23
\inst1|Ball_Y_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Ball_Y_pos[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Ball_Y_pos\(6));

-- Location: LCCOMB_X36_Y19_N2
\inst1|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add3~0_combout\ = (\inst1|Ball_Y_pos\(3) & (\inst1|Ball_Y_pos\(4) $ (VCC))) # (!\inst1|Ball_Y_pos\(3) & (\inst1|Ball_Y_pos\(4) & VCC))
-- \inst1|Add3~1\ = CARRY((\inst1|Ball_Y_pos\(3) & \inst1|Ball_Y_pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(3),
	datab => \inst1|Ball_Y_pos\(4),
	datad => VCC,
	combout => \inst1|Add3~0_combout\,
	cout => \inst1|Add3~1\);

-- Location: LCCOMB_X36_Y19_N4
\inst1|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add3~2_combout\ = (\inst1|Ball_Y_pos\(5) & (!\inst1|Add3~1\)) # (!\inst1|Ball_Y_pos\(5) & ((\inst1|Add3~1\) # (GND)))
-- \inst1|Add3~3\ = CARRY((!\inst1|Add3~1\) # (!\inst1|Ball_Y_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Ball_Y_pos\(5),
	datad => VCC,
	cin => \inst1|Add3~1\,
	combout => \inst1|Add3~2_combout\,
	cout => \inst1|Add3~3\);

-- Location: LCCOMB_X36_Y19_N8
\inst1|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add3~6_combout\ = (\inst1|Ball_Y_pos\(7) & (!\inst1|Add3~5\)) # (!\inst1|Ball_Y_pos\(7) & ((\inst1|Add3~5\) # (GND)))
-- \inst1|Add3~7\ = CARRY((!\inst1|Add3~5\) # (!\inst1|Ball_Y_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Ball_Y_pos\(7),
	datad => VCC,
	cin => \inst1|Add3~5\,
	combout => \inst1|Add3~6_combout\,
	cout => \inst1|Add3~7\);

-- Location: LCCOMB_X36_Y19_N10
\inst1|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add3~8_combout\ = (\inst1|Ball_Y_pos\(8) & (\inst1|Add3~7\ $ (GND))) # (!\inst1|Ball_Y_pos\(8) & (!\inst1|Add3~7\ & VCC))
-- \inst1|Add3~9\ = CARRY((\inst1|Ball_Y_pos\(8) & !\inst1|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(8),
	datad => VCC,
	cin => \inst1|Add3~7\,
	combout => \inst1|Add3~8_combout\,
	cout => \inst1|Add3~9\);

-- Location: FF_X38_Y19_N23
\inst1|SYNC|pixel_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst1|SYNC|v_count\(6),
	sload => VCC,
	ena => \inst1|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_row\(6));

-- Location: FF_X38_Y19_N7
\inst1|SYNC|pixel_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst1|SYNC|v_count\(3),
	sload => VCC,
	ena => \inst1|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_row\(3));

-- Location: FF_X38_Y19_N3
\inst1|SYNC|pixel_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst1|SYNC|v_count\(2),
	sload => VCC,
	ena => \inst1|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_row\(2));

-- Location: LCCOMB_X38_Y17_N0
\inst1|SYNC|v_count~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|v_count~10_combout\ = (\inst1|SYNC|Add1~2_combout\ & ((\inst1|SYNC|process_0~12_combout\) # ((\inst1|SYNC|process_0~8_combout\) # (\inst1|SYNC|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|Add1~2_combout\,
	datab => \inst1|SYNC|process_0~12_combout\,
	datac => \inst1|SYNC|process_0~8_combout\,
	datad => \inst1|SYNC|process_0~11_combout\,
	combout => \inst1|SYNC|v_count~10_combout\);

-- Location: FF_X38_Y17_N1
\inst1|SYNC|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|SYNC|v_count~10_combout\,
	ena => \inst1|SYNC|v_count[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|v_count\(1));

-- Location: LCCOMB_X36_Y19_N0
\inst1|SYNC|pixel_row[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|pixel_row[1]~feeder_combout\ = \inst1|SYNC|v_count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SYNC|v_count\(1),
	combout => \inst1|SYNC|pixel_row[1]~feeder_combout\);

-- Location: FF_X36_Y19_N1
\inst1|SYNC|pixel_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|SYNC|pixel_row[1]~feeder_combout\,
	ena => \inst1|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_row\(1));

-- Location: LCCOMB_X38_Y17_N26
\inst1|SYNC|v_count~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|v_count~11_combout\ = (\inst1|SYNC|Add1~0_combout\ & ((\inst1|SYNC|process_0~11_combout\) # ((\inst1|SYNC|process_0~8_combout\) # (\inst1|SYNC|process_0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|Add1~0_combout\,
	datab => \inst1|SYNC|process_0~11_combout\,
	datac => \inst1|SYNC|process_0~8_combout\,
	datad => \inst1|SYNC|process_0~12_combout\,
	combout => \inst1|SYNC|v_count~11_combout\);

-- Location: FF_X38_Y17_N27
\inst1|SYNC|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|SYNC|v_count~11_combout\,
	ena => \inst1|SYNC|v_count[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|v_count\(0));

-- Location: FF_X36_Y19_N15
\inst1|SYNC|pixel_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst1|SYNC|v_count\(0),
	sload => VCC,
	ena => \inst1|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_row\(0));

-- Location: LCCOMB_X36_Y19_N14
\inst1|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~1_cout\ = CARRY(\inst1|SYNC|pixel_row\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|pixel_row\(0),
	datad => VCC,
	cout => \inst1|LessThan3~1_cout\);

-- Location: LCCOMB_X36_Y19_N16
\inst1|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~3_cout\ = CARRY((\inst1|Ball_Y_pos\(1) & ((!\inst1|LessThan3~1_cout\) # (!\inst1|SYNC|pixel_row\(1)))) # (!\inst1|Ball_Y_pos\(1) & (!\inst1|SYNC|pixel_row\(1) & !\inst1|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(1),
	datab => \inst1|SYNC|pixel_row\(1),
	datad => VCC,
	cin => \inst1|LessThan3~1_cout\,
	cout => \inst1|LessThan3~3_cout\);

-- Location: LCCOMB_X36_Y19_N18
\inst1|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~5_cout\ = CARRY((\inst1|Ball_Y_pos\(2) & (\inst1|SYNC|pixel_row\(2) & !\inst1|LessThan3~3_cout\)) # (!\inst1|Ball_Y_pos\(2) & ((\inst1|SYNC|pixel_row\(2)) # (!\inst1|LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(2),
	datab => \inst1|SYNC|pixel_row\(2),
	datad => VCC,
	cin => \inst1|LessThan3~3_cout\,
	cout => \inst1|LessThan3~5_cout\);

-- Location: LCCOMB_X36_Y19_N20
\inst1|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~7_cout\ = CARRY((\inst1|Ball_Y_pos\(3) & (!\inst1|SYNC|pixel_row\(3) & !\inst1|LessThan3~5_cout\)) # (!\inst1|Ball_Y_pos\(3) & ((!\inst1|LessThan3~5_cout\) # (!\inst1|SYNC|pixel_row\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(3),
	datab => \inst1|SYNC|pixel_row\(3),
	datad => VCC,
	cin => \inst1|LessThan3~5_cout\,
	cout => \inst1|LessThan3~7_cout\);

-- Location: LCCOMB_X36_Y19_N22
\inst1|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~9_cout\ = CARRY((\inst1|SYNC|pixel_row\(4) & ((!\inst1|LessThan3~7_cout\) # (!\inst1|Add3~0_combout\))) # (!\inst1|SYNC|pixel_row\(4) & (!\inst1|Add3~0_combout\ & !\inst1|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_row\(4),
	datab => \inst1|Add3~0_combout\,
	datad => VCC,
	cin => \inst1|LessThan3~7_cout\,
	cout => \inst1|LessThan3~9_cout\);

-- Location: LCCOMB_X36_Y19_N24
\inst1|LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~11_cout\ = CARRY((\inst1|SYNC|pixel_row\(5) & (\inst1|Add3~2_combout\ & !\inst1|LessThan3~9_cout\)) # (!\inst1|SYNC|pixel_row\(5) & ((\inst1|Add3~2_combout\) # (!\inst1|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_row\(5),
	datab => \inst1|Add3~2_combout\,
	datad => VCC,
	cin => \inst1|LessThan3~9_cout\,
	cout => \inst1|LessThan3~11_cout\);

-- Location: LCCOMB_X36_Y19_N26
\inst1|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~13_cout\ = CARRY((\inst1|Add3~4_combout\ & (\inst1|SYNC|pixel_row\(6) & !\inst1|LessThan3~11_cout\)) # (!\inst1|Add3~4_combout\ & ((\inst1|SYNC|pixel_row\(6)) # (!\inst1|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add3~4_combout\,
	datab => \inst1|SYNC|pixel_row\(6),
	datad => VCC,
	cin => \inst1|LessThan3~11_cout\,
	cout => \inst1|LessThan3~13_cout\);

-- Location: LCCOMB_X36_Y19_N28
\inst1|LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~15_cout\ = CARRY((\inst1|SYNC|pixel_row\(7) & (\inst1|Add3~6_combout\ & !\inst1|LessThan3~13_cout\)) # (!\inst1|SYNC|pixel_row\(7) & ((\inst1|Add3~6_combout\) # (!\inst1|LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_row\(7),
	datab => \inst1|Add3~6_combout\,
	datad => VCC,
	cin => \inst1|LessThan3~13_cout\,
	cout => \inst1|LessThan3~15_cout\);

-- Location: LCCOMB_X36_Y19_N30
\inst1|LessThan3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~16_combout\ = (\inst1|SYNC|pixel_row\(8) & ((!\inst1|Add3~8_combout\) # (!\inst1|LessThan3~15_cout\))) # (!\inst1|SYNC|pixel_row\(8) & (!\inst1|LessThan3~15_cout\ & !\inst1|Add3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|pixel_row\(8),
	datad => \inst1|Add3~8_combout\,
	cin => \inst1|LessThan3~15_cout\,
	combout => \inst1|LessThan3~16_combout\);

-- Location: FF_X37_Y19_N21
\inst1|SYNC|pixel_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst1|SYNC|h_count\(4),
	sload => VCC,
	ena => \inst1|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_column\(4));

-- Location: LCCOMB_X37_Y19_N0
\inst1|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~1_cout\ = CARRY((\inst1|SYNC|pixel_column\(3) & \inst1|SYNC|pixel_column\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_column\(3),
	datab => \inst1|SYNC|pixel_column\(4),
	datad => VCC,
	cout => \inst1|Add0~1_cout\);

-- Location: LCCOMB_X37_Y19_N2
\inst1|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~3_cout\ = CARRY((!\inst1|Add0~1_cout\) # (!\inst1|SYNC|pixel_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_column\(5),
	datad => VCC,
	cin => \inst1|Add0~1_cout\,
	cout => \inst1|Add0~3_cout\);

-- Location: LCCOMB_X37_Y19_N4
\inst1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\inst1|SYNC|pixel_column\(6) & (\inst1|Add0~3_cout\ $ (GND))) # (!\inst1|SYNC|pixel_column\(6) & (!\inst1|Add0~3_cout\ & VCC))
-- \inst1|Add0~5\ = CARRY((\inst1|SYNC|pixel_column\(6) & !\inst1|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_column\(6),
	datad => VCC,
	cin => \inst1|Add0~3_cout\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: FF_X37_Y19_N25
\inst1|SYNC|pixel_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst1|SYNC|h_count\(6),
	sload => VCC,
	ena => \inst1|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_column\(6));

-- Location: FF_X37_Y17_N7
\inst1|SYNC|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|SYNC|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|h_count\(0));

-- Location: FF_X37_Y19_N3
\inst1|SYNC|pixel_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst1|SYNC|h_count\(0),
	sload => VCC,
	ena => \inst1|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_column\(0));

-- Location: FF_X37_Y19_N19
\inst1|SYNC|pixel_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst1|SYNC|h_count\(1),
	sload => VCC,
	ena => \inst1|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_column\(1));

-- Location: FF_X37_Y19_N17
\inst1|SYNC|pixel_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst1|SYNC|h_count\(2),
	sload => VCC,
	ena => \inst1|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_column\(2));

-- Location: LCCOMB_X37_Y19_N18
\inst1|SYNC|green_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|green_out~1_combout\ = (\inst1|SYNC|pixel_column\(3) & ((\inst1|SYNC|pixel_column\(0)) # ((\inst1|SYNC|pixel_column\(1)) # (\inst1|SYNC|pixel_column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_column\(3),
	datab => \inst1|SYNC|pixel_column\(0),
	datac => \inst1|SYNC|pixel_column\(1),
	datad => \inst1|SYNC|pixel_column\(2),
	combout => \inst1|SYNC|green_out~1_combout\);

-- Location: LCCOMB_X37_Y19_N24
\inst1|SYNC|green_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|green_out~2_combout\ = (\inst1|SYNC|pixel_column\(6) & ((\inst1|SYNC|pixel_column\(5)) # ((\inst1|SYNC|pixel_column\(4)) # (\inst1|SYNC|green_out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_column\(5),
	datab => \inst1|SYNC|pixel_column\(4),
	datac => \inst1|SYNC|pixel_column\(6),
	datad => \inst1|SYNC|green_out~1_combout\,
	combout => \inst1|SYNC|green_out~2_combout\);

-- Location: FF_X37_Y19_N27
\inst1|SYNC|pixel_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst1|SYNC|h_count\(7),
	sload => VCC,
	ena => \inst1|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_column\(7));

-- Location: FF_X37_Y19_N9
\inst1|SYNC|pixel_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst1|SYNC|h_count\(8),
	sload => VCC,
	ena => \inst1|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_column\(8));

-- Location: LCCOMB_X37_Y19_N26
\inst1|SYNC|green_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|green_out~3_combout\ = (\inst1|SYNC|pixel_column\(9)) # ((\inst1|SYNC|pixel_column\(8) & ((\inst1|SYNC|green_out~2_combout\) # (\inst1|SYNC|pixel_column\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_column\(9),
	datab => \inst1|SYNC|green_out~2_combout\,
	datac => \inst1|SYNC|pixel_column\(7),
	datad => \inst1|SYNC|pixel_column\(8),
	combout => \inst1|SYNC|green_out~3_combout\);

-- Location: FF_X38_Y19_N25
\inst1|SYNC|pixel_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst1|SYNC|v_count\(7),
	sload => VCC,
	ena => \inst1|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_row\(7));

-- Location: FF_X38_Y19_N19
\inst1|SYNC|pixel_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst1|SYNC|v_count\(4),
	sload => VCC,
	ena => \inst1|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_row\(4));

-- Location: LCCOMB_X38_Y19_N20
\inst1|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add2~2_combout\ = (\inst1|SYNC|pixel_row\(5) & (!\inst1|Add2~1\)) # (!\inst1|SYNC|pixel_row\(5) & ((\inst1|Add2~1\) # (GND)))
-- \inst1|Add2~3\ = CARRY((!\inst1|Add2~1\) # (!\inst1|SYNC|pixel_row\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_row\(5),
	datad => VCC,
	cin => \inst1|Add2~1\,
	combout => \inst1|Add2~2_combout\,
	cout => \inst1|Add2~3\);

-- Location: LCCOMB_X38_Y19_N28
\inst1|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add2~10_combout\ = \inst1|Add2~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Add2~9\,
	combout => \inst1|Add2~10_combout\);

-- Location: LCCOMB_X36_Y19_N12
\inst1|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add3~10_combout\ = \inst1|Add3~9\ $ (\inst1|Ball_Y_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Ball_Y_pos\(9),
	cin => \inst1|Add3~9\,
	combout => \inst1|Add3~10_combout\);

-- Location: LCCOMB_X37_Y19_N12
\inst1|SYNC|green_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|green_out~0_combout\ = (!\inst1|Add0~10_combout\ & (!\inst1|Add2~10_combout\ & (\inst1|Add0~8_combout\ & !\inst1|Add3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~10_combout\,
	datab => \inst1|Add2~10_combout\,
	datac => \inst1|Add0~8_combout\,
	datad => \inst1|Add3~10_combout\,
	combout => \inst1|SYNC|green_out~0_combout\);

-- Location: LCCOMB_X37_Y19_N14
\inst1|SYNC|green_out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|green_out~4_combout\ = (\inst1|SYNC|green_out~3_combout\) # (((!\inst1|Add0~6_combout\ & !\inst1|Add0~4_combout\)) # (!\inst1|SYNC|green_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~6_combout\,
	datab => \inst1|Add0~4_combout\,
	datac => \inst1|SYNC|green_out~3_combout\,
	datad => \inst1|SYNC|green_out~0_combout\,
	combout => \inst1|SYNC|green_out~4_combout\);

-- Location: FF_X35_Y19_N13
\inst1|Ball_Y_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Ball_Y_pos[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Ball_Y_pos\(1));

-- Location: LCCOMB_X38_Y19_N0
\inst1|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~1_cout\ = CARRY((!\inst1|SYNC|pixel_row\(1) & \inst1|Ball_Y_pos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_row\(1),
	datab => \inst1|Ball_Y_pos\(1),
	datad => VCC,
	cout => \inst1|LessThan2~1_cout\);

-- Location: LCCOMB_X38_Y19_N2
\inst1|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~3_cout\ = CARRY((\inst1|Ball_Y_pos\(2) & (\inst1|SYNC|pixel_row\(2) & !\inst1|LessThan2~1_cout\)) # (!\inst1|Ball_Y_pos\(2) & ((\inst1|SYNC|pixel_row\(2)) # (!\inst1|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(2),
	datab => \inst1|SYNC|pixel_row\(2),
	datad => VCC,
	cin => \inst1|LessThan2~1_cout\,
	cout => \inst1|LessThan2~3_cout\);

-- Location: LCCOMB_X38_Y19_N4
\inst1|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~5_cout\ = CARRY((\inst1|Ball_Y_pos\(3) & ((\inst1|SYNC|pixel_row\(3)) # (!\inst1|LessThan2~3_cout\))) # (!\inst1|Ball_Y_pos\(3) & (\inst1|SYNC|pixel_row\(3) & !\inst1|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(3),
	datab => \inst1|SYNC|pixel_row\(3),
	datad => VCC,
	cin => \inst1|LessThan2~3_cout\,
	cout => \inst1|LessThan2~5_cout\);

-- Location: LCCOMB_X38_Y19_N6
\inst1|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~7_cout\ = CARRY((\inst1|Add2~0_combout\ & ((!\inst1|LessThan2~5_cout\) # (!\inst1|Ball_Y_pos\(4)))) # (!\inst1|Add2~0_combout\ & (!\inst1|Ball_Y_pos\(4) & !\inst1|LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add2~0_combout\,
	datab => \inst1|Ball_Y_pos\(4),
	datad => VCC,
	cin => \inst1|LessThan2~5_cout\,
	cout => \inst1|LessThan2~7_cout\);

-- Location: LCCOMB_X38_Y19_N8
\inst1|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~9_cout\ = CARRY((\inst1|Ball_Y_pos\(5) & ((!\inst1|LessThan2~7_cout\) # (!\inst1|Add2~2_combout\))) # (!\inst1|Ball_Y_pos\(5) & (!\inst1|Add2~2_combout\ & !\inst1|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(5),
	datab => \inst1|Add2~2_combout\,
	datad => VCC,
	cin => \inst1|LessThan2~7_cout\,
	cout => \inst1|LessThan2~9_cout\);

-- Location: LCCOMB_X38_Y19_N10
\inst1|LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~11_cout\ = CARRY((\inst1|Add2~4_combout\ & ((!\inst1|LessThan2~9_cout\) # (!\inst1|Ball_Y_pos\(6)))) # (!\inst1|Add2~4_combout\ & (!\inst1|Ball_Y_pos\(6) & !\inst1|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add2~4_combout\,
	datab => \inst1|Ball_Y_pos\(6),
	datad => VCC,
	cin => \inst1|LessThan2~9_cout\,
	cout => \inst1|LessThan2~11_cout\);

-- Location: LCCOMB_X38_Y19_N12
\inst1|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~13_cout\ = CARRY((\inst1|Add2~6_combout\ & (\inst1|Ball_Y_pos\(7) & !\inst1|LessThan2~11_cout\)) # (!\inst1|Add2~6_combout\ & ((\inst1|Ball_Y_pos\(7)) # (!\inst1|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add2~6_combout\,
	datab => \inst1|Ball_Y_pos\(7),
	datad => VCC,
	cin => \inst1|LessThan2~11_cout\,
	cout => \inst1|LessThan2~13_cout\);

-- Location: LCCOMB_X38_Y19_N14
\inst1|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~15_cout\ = CARRY((\inst1|Add2~8_combout\ & ((!\inst1|LessThan2~13_cout\) # (!\inst1|Ball_Y_pos\(8)))) # (!\inst1|Add2~8_combout\ & (!\inst1|Ball_Y_pos\(8) & !\inst1|LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add2~8_combout\,
	datab => \inst1|Ball_Y_pos\(8),
	datad => VCC,
	cin => \inst1|LessThan2~13_cout\,
	cout => \inst1|LessThan2~15_cout\);

-- Location: LCCOMB_X38_Y19_N16
\inst1|LessThan2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~16_combout\ = (\inst1|Ball_Y_pos\(9) & ((!\inst1|Add2~10_combout\) # (!\inst1|LessThan2~15_cout\))) # (!\inst1|Ball_Y_pos\(9) & (!\inst1|LessThan2~15_cout\ & !\inst1|Add2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Ball_Y_pos\(9),
	datad => \inst1|Add2~10_combout\,
	cin => \inst1|LessThan2~15_cout\,
	combout => \inst1|LessThan2~16_combout\);

-- Location: LCCOMB_X37_Y19_N28
\inst1|SYNC|green_out~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|green_out~5_combout\ = (\inst1|SYNC|video_on~0_combout\ & ((\inst1|LessThan3~16_combout\) # ((\inst1|SYNC|green_out~4_combout\) # (\inst1|LessThan2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|video_on~0_combout\,
	datab => \inst1|LessThan3~16_combout\,
	datac => \inst1|SYNC|green_out~4_combout\,
	datad => \inst1|LessThan2~16_combout\,
	combout => \inst1|SYNC|green_out~5_combout\);

-- Location: FF_X37_Y19_N1
\inst1|SYNC|green_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst1|SYNC|green_out~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|green_out~q\);

-- Location: FF_X37_Y19_N29
\inst1|SYNC|blue_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|SYNC|green_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|blue_out~q\);

-- Location: LCCOMB_X37_Y19_N16
\inst1|SYNC|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~2_combout\ = (\inst1|SYNC|h_count\(2)) # ((\inst1|SYNC|h_count\(1) & (!\inst1|SYNC|h_count\(5) & \inst1|SYNC|h_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(1),
	datab => \inst1|SYNC|h_count\(5),
	datac => \inst1|SYNC|h_count\(2),
	datad => \inst1|SYNC|h_count\(0),
	combout => \inst1|SYNC|process_0~2_combout\);

-- Location: LCCOMB_X37_Y19_N30
\inst1|SYNC|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~3_combout\ = (\inst1|SYNC|h_count\(4) & ((\inst1|SYNC|h_count\(3)) # (\inst1|SYNC|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(3),
	datab => \inst1|SYNC|h_count\(4),
	datad => \inst1|SYNC|process_0~2_combout\,
	combout => \inst1|SYNC|process_0~3_combout\);

-- Location: LCCOMB_X37_Y17_N0
\inst1|SYNC|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~4_combout\ = ((\inst1|SYNC|h_count\(5) & (\inst1|SYNC|h_count\(6) & \inst1|SYNC|process_0~3_combout\)) # (!\inst1|SYNC|h_count\(5) & (!\inst1|SYNC|h_count\(6) & !\inst1|SYNC|process_0~3_combout\))) # 
-- (!\inst1|SYNC|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|process_0~1_combout\,
	datab => \inst1|SYNC|h_count\(5),
	datac => \inst1|SYNC|h_count\(6),
	datad => \inst1|SYNC|process_0~3_combout\,
	combout => \inst1|SYNC|process_0~4_combout\);

-- Location: FF_X37_Y17_N1
\inst1|SYNC|horiz_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|SYNC|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|horiz_sync~q\);

-- Location: LCCOMB_X40_Y17_N0
\inst1|SYNC|horiz_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|horiz_sync_out~feeder_combout\ = \inst1|SYNC|horiz_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SYNC|horiz_sync~q\,
	combout => \inst1|SYNC|horiz_sync_out~feeder_combout\);

-- Location: FF_X40_Y17_N1
\inst1|SYNC|horiz_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|SYNC|horiz_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|horiz_sync_out~q\);

-- Location: LCCOMB_X38_Y17_N28
\inst1|SYNC|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~5_combout\ = ((\inst1|SYNC|v_count\(1) $ (!\inst1|SYNC|v_count\(0))) # (!\inst1|SYNC|v_count\(3))) # (!\inst1|SYNC|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count\(1),
	datab => \inst1|SYNC|v_count\(2),
	datac => \inst1|SYNC|v_count\(0),
	datad => \inst1|SYNC|v_count\(3),
	combout => \inst1|SYNC|process_0~5_combout\);

-- Location: LCCOMB_X38_Y17_N4
\inst1|SYNC|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~6_combout\ = ((\inst1|SYNC|process_0~5_combout\) # ((\inst1|SYNC|v_count\(9)) # (\inst1|SYNC|v_count\(4)))) # (!\inst1|SYNC|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|LessThan7~0_combout\,
	datab => \inst1|SYNC|process_0~5_combout\,
	datac => \inst1|SYNC|v_count\(9),
	datad => \inst1|SYNC|v_count\(4),
	combout => \inst1|SYNC|process_0~6_combout\);

-- Location: FF_X38_Y17_N5
\inst1|SYNC|vert_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|SYNC|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|vert_sync~q\);

-- Location: LCCOMB_X40_Y15_N16
\inst1|SYNC|vert_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|vert_sync_out~feeder_combout\ = \inst1|SYNC|vert_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SYNC|vert_sync~q\,
	combout => \inst1|SYNC|vert_sync_out~feeder_combout\);

-- Location: FF_X40_Y15_N17
\inst1|SYNC|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|SYNC|vert_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|vert_sync_out~q\);

-- Location: IOIBUF_X0_Y23_N15
\bt1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt1,
	o => \bt1~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\bt2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt2,
	o => \bt2~input_o\);

ww_red_out <= \red_out~output_o\;

ww_green_out <= \green_out~output_o\;

ww_blue_out <= \blue_out~output_o\;

ww_horiz_sync_out <= \horiz_sync_out~output_o\;

ww_vert_sync_out <= \vert_sync_out~output_o\;
END structure;


