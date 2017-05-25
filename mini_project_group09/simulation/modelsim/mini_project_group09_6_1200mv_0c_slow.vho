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

-- DATE "05/25/2017 18:03:52"

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

ENTITY 	mini_project_group09 IS
    PORT (
	seg0_dec : OUT std_logic;
	clk : IN std_logic;
	mouse_data : INOUT std_logic;
	mouse_clk : INOUT std_logic;
	seg1_dec : OUT std_logic;
	horiz_sync_out : OUT std_logic;
	sw0 : IN std_logic;
	bt2 : IN std_logic;
	bt1 : IN std_logic;
	vert_sync_out : OUT std_logic;
	blue : OUT std_logic_vector(3 DOWNTO 0);
	green : OUT std_logic_vector(3 DOWNTO 0);
	red : OUT std_logic_vector(3 DOWNTO 0);
	seg0 : OUT std_logic_vector(0 TO 6)
	);
END mini_project_group09;

-- Design Ports Information
-- seg0_dec	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1_dec	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horiz_sync_out	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vert_sync_out	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[3]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[2]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[3]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[0]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[3]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[2]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[1]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_data	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_clk	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw0	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt2	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt1	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mini_project_group09 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_seg0_dec : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_seg1_dec : std_logic;
SIGNAL ww_horiz_sync_out : std_logic;
SIGNAL ww_sw0 : std_logic;
SIGNAL ww_bt2 : std_logic;
SIGNAL ww_bt1 : std_logic;
SIGNAL ww_vert_sync_out : std_logic;
SIGNAL ww_blue : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_green : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_red : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_seg0 : std_logic_vector(0 TO 6);
SIGNAL \inst12|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst12|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst1|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|clock_25Mhz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst14|character_address[4]~45clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|vert_sync_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst11|Add0~10_combout\ : std_logic;
SIGNAL \inst11|Add0~12_combout\ : std_logic;
SIGNAL \inst11|Add0~16_combout\ : std_logic;
SIGNAL \inst11|Add4~4_combout\ : std_logic;
SIGNAL \inst11|Add4~6_combout\ : std_logic;
SIGNAL \inst11|Add4~10_combout\ : std_logic;
SIGNAL \inst11|Add2~10_combout\ : std_logic;
SIGNAL \inst11|Add6~0_combout\ : std_logic;
SIGNAL \inst11|Add9~2_combout\ : std_logic;
SIGNAL \inst11|Add9~4_combout\ : std_logic;
SIGNAL \inst11|Add9~6_combout\ : std_logic;
SIGNAL \inst11|Add9~8_combout\ : std_logic;
SIGNAL \inst11|Add9~10_combout\ : std_logic;
SIGNAL \inst11|Add9~13\ : std_logic;
SIGNAL \inst11|Add8~0_combout\ : std_logic;
SIGNAL \inst11|Add8~1\ : std_logic;
SIGNAL \inst11|Add8~2_combout\ : std_logic;
SIGNAL \inst11|Add8~3\ : std_logic;
SIGNAL \inst11|Add8~4_combout\ : std_logic;
SIGNAL \inst11|Add8~5\ : std_logic;
SIGNAL \inst11|Add8~6_combout\ : std_logic;
SIGNAL \inst11|Add8~7\ : std_logic;
SIGNAL \inst11|Add8~8_combout\ : std_logic;
SIGNAL \inst11|Add8~9\ : std_logic;
SIGNAL \inst11|Add8~10_combout\ : std_logic;
SIGNAL \inst11|Add8~11\ : std_logic;
SIGNAL \inst11|Add8~12_combout\ : std_logic;
SIGNAL \inst11|LessThan10~1_cout\ : std_logic;
SIGNAL \inst11|LessThan10~3_cout\ : std_logic;
SIGNAL \inst11|LessThan10~5_cout\ : std_logic;
SIGNAL \inst11|LessThan10~7_cout\ : std_logic;
SIGNAL \inst11|LessThan10~9_cout\ : std_logic;
SIGNAL \inst11|LessThan10~11_cout\ : std_logic;
SIGNAL \inst11|LessThan10~13_cout\ : std_logic;
SIGNAL \inst11|LessThan10~15_cout\ : std_logic;
SIGNAL \inst11|LessThan10~16_combout\ : std_logic;
SIGNAL \inst11|Add9~14_combout\ : std_logic;
SIGNAL \inst11|Add3~6_combout\ : std_logic;
SIGNAL \inst11|Add3~8_combout\ : std_logic;
SIGNAL \inst11|Add3~12_combout\ : std_logic;
SIGNAL \inst11|Add1~2_combout\ : std_logic;
SIGNAL \inst11|Add1~10_combout\ : std_logic;
SIGNAL \inst11|Add1~14_combout\ : std_logic;
SIGNAL \inst11|Add18~8_combout\ : std_logic;
SIGNAL \inst11|Add18~10_combout\ : std_logic;
SIGNAL \inst11|Add18~14_combout\ : std_logic;
SIGNAL \inst11|Add18~16_combout\ : std_logic;
SIGNAL \inst11|Add10~8_combout\ : std_logic;
SIGNAL \inst7|Add0~2_combout\ : std_logic;
SIGNAL \inst7|Add0~10_combout\ : std_logic;
SIGNAL \inst7|Add0~22_combout\ : std_logic;
SIGNAL \inst7|Add0~30_combout\ : std_logic;
SIGNAL \inst7|Add0~42_combout\ : std_logic;
SIGNAL \inst7|Add0~55\ : std_logic;
SIGNAL \inst7|Add0~56_combout\ : std_logic;
SIGNAL \inst7|Add0~57\ : std_logic;
SIGNAL \inst7|Add0~58_combout\ : std_logic;
SIGNAL \inst7|Add0~59\ : std_logic;
SIGNAL \inst7|Add0~60_combout\ : std_logic;
SIGNAL \inst7|Add0~61\ : std_logic;
SIGNAL \inst7|Add0~62_combout\ : std_logic;
SIGNAL \inst|Add1~8_combout\ : std_logic;
SIGNAL \inst|Add1~10_combout\ : std_logic;
SIGNAL \inst1|new_cursor_column[8]~27\ : std_logic;
SIGNAL \inst1|new_cursor_column[9]~29_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[1]~10_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[2]~12_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[7]~22_combout\ : std_logic;
SIGNAL \inst11|LessThan7~0_combout\ : std_logic;
SIGNAL \inst15|process_0~2_combout\ : std_logic;
SIGNAL \inst15|process_0~3_combout\ : std_logic;
SIGNAL \inst15|process_0~4_combout\ : std_logic;
SIGNAL \inst15|process_0~5_combout\ : std_logic;
SIGNAL \inst15|process_0~9_combout\ : std_logic;
SIGNAL \inst|process_0~1_combout\ : std_logic;
SIGNAL \inst|process_0~2_combout\ : std_logic;
SIGNAL \inst7|Equal0~2_combout\ : std_logic;
SIGNAL \inst7|Equal0~9_combout\ : std_logic;
SIGNAL \inst|LessThan7~3_combout\ : std_logic;
SIGNAL \inst14|LessThan4~1_combout\ : std_logic;
SIGNAL \inst14|process_0~32_combout\ : std_logic;
SIGNAL \inst14|character_address[4]~25_combout\ : std_logic;
SIGNAL \inst14|character_address[5]~31_combout\ : std_logic;
SIGNAL \inst14|process_0~52_combout\ : std_logic;
SIGNAL \inst14|character_address[5]~32_combout\ : std_logic;
SIGNAL \inst14|character_address[5]~33_combout\ : std_logic;
SIGNAL \inst14|character_address[5]~34_combout\ : std_logic;
SIGNAL \inst14|character_address[5]~35_combout\ : std_logic;
SIGNAL \inst14|character_address[5]~37_combout\ : std_logic;
SIGNAL \inst14|LessThan18~2_combout\ : std_logic;
SIGNAL \inst11|player_x_pos[4]~33_combout\ : std_logic;
SIGNAL \inst11|player_x_pos[4]~34_combout\ : std_logic;
SIGNAL \inst11|player_x_pos[4]~37_combout\ : std_logic;
SIGNAL \inst11|player_x_pos[4]~38_combout\ : std_logic;
SIGNAL \inst11|player_x_pos[4]~39_combout\ : std_logic;
SIGNAL \inst11|bullet_x_pos~3_combout\ : std_logic;
SIGNAL \inst11|bullet_x_pos~5_combout\ : std_logic;
SIGNAL \inst11|bullet_x_pos~7_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst14|font_row[0]~0_combout\ : std_logic;
SIGNAL \inst14|character_address[0]~57_combout\ : std_logic;
SIGNAL \inst14|character_address[0]~60_combout\ : std_logic;
SIGNAL \inst14|character_address[0]~61_combout\ : std_logic;
SIGNAL \inst14|character_address[0]~64_combout\ : std_logic;
SIGNAL \inst14|character_address[1]~70_combout\ : std_logic;
SIGNAL \inst14|character_address[1]~77_combout\ : std_logic;
SIGNAL \inst14|character_address[1]~79_combout\ : std_logic;
SIGNAL \inst14|character_address[1]~80_combout\ : std_logic;
SIGNAL \inst14|character_address[2]~95_combout\ : std_logic;
SIGNAL \inst14|character_address[2]~96_combout\ : std_logic;
SIGNAL \inst14|character_address[3]~107_combout\ : std_logic;
SIGNAL \inst14|character_address[3]~112_combout\ : std_logic;
SIGNAL \inst14|character_address[4]~115_combout\ : std_logic;
SIGNAL \inst14|character_address[4]~117_combout\ : std_logic;
SIGNAL \inst14|character_address[4]~121_combout\ : std_logic;
SIGNAL \inst14|character_address[0]~125_combout\ : std_logic;
SIGNAL \inst14|character_address[5]~128_combout\ : std_logic;
SIGNAL \inst1|cursor_column~10_combout\ : std_logic;
SIGNAL \inst11|tank_y_pos[1]~3_combout\ : std_logic;
SIGNAL \inst11|tank_x_motion~4_combout\ : std_logic;
SIGNAL \inst11|tank_x_motion~5_combout\ : std_logic;
SIGNAL \inst11|tank_x_motion~6_combout\ : std_logic;
SIGNAL \inst11|tank_x_motion~7_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR2[7]~2_combout\ : std_logic;
SIGNAL \inst14|character_address[1]~137_combout\ : std_logic;
SIGNAL \inst11|tank_x_motion~8_combout\ : std_logic;
SIGNAL \inst11|tank_y_pos[5]~6_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \bt1~input_o\ : std_logic;
SIGNAL \inst|vert_sync_out~clkctrl_outclk\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|PACKET_CHAR2[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_COUNT[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR2[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR2[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR2[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR2[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR2[5]~feeder_combout\ : std_logic;
SIGNAL \mouse_data~output_o\ : std_logic;
SIGNAL \mouse_clk~output_o\ : std_logic;
SIGNAL \seg0_dec~output_o\ : std_logic;
SIGNAL \seg1_dec~output_o\ : std_logic;
SIGNAL \horiz_sync_out~output_o\ : std_logic;
SIGNAL \vert_sync_out~output_o\ : std_logic;
SIGNAL \blue[3]~output_o\ : std_logic;
SIGNAL \blue[2]~output_o\ : std_logic;
SIGNAL \blue[1]~output_o\ : std_logic;
SIGNAL \blue[0]~output_o\ : std_logic;
SIGNAL \green[3]~output_o\ : std_logic;
SIGNAL \green[2]~output_o\ : std_logic;
SIGNAL \green[1]~output_o\ : std_logic;
SIGNAL \green[0]~output_o\ : std_logic;
SIGNAL \red[3]~output_o\ : std_logic;
SIGNAL \red[2]~output_o\ : std_logic;
SIGNAL \red[1]~output_o\ : std_logic;
SIGNAL \red[0]~output_o\ : std_logic;
SIGNAL \seg0[0]~output_o\ : std_logic;
SIGNAL \seg0[1]~output_o\ : std_logic;
SIGNAL \seg0[2]~output_o\ : std_logic;
SIGNAL \seg0[3]~output_o\ : std_logic;
SIGNAL \seg0[4]~output_o\ : std_logic;
SIGNAL \seg0[5]~output_o\ : std_logic;
SIGNAL \seg0[6]~output_o\ : std_logic;
SIGNAL \mouse_clk~input_o\ : std_logic;
SIGNAL \inst1|filter[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|filter[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|filter[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|filter[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|filter[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|filter[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|MOUSE_CLK_FILTER~2_combout\ : std_logic;
SIGNAL \inst1|MOUSE_CLK_FILTER~1_combout\ : std_logic;
SIGNAL \inst1|MOUSE_CLK_FILTER~0_combout\ : std_logic;
SIGNAL \inst1|MOUSE_CLK_FILTER~3_combout\ : std_logic;
SIGNAL \inst1|MOUSE_CLK_FILTER~feeder_combout\ : std_logic;
SIGNAL \inst1|MOUSE_CLK_FILTER~q\ : std_logic;
SIGNAL \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|SHIFTOUT[9]~feeder_combout\ : std_logic;
SIGNAL \inst1|Selector0~0_combout\ : std_logic;
SIGNAL \inst1|mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[0]~30_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[1]~11\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[2]~13\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[3]~14_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[3]~15\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[4]~16_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[4]~17\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[5]~18_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[5]~19\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[6]~20_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[6]~21\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[7]~23\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[8]~24_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[8]~25\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[9]~27\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[10]~28_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[9]~26_combout\ : std_logic;
SIGNAL \inst1|Selector1~0_combout\ : std_logic;
SIGNAL \inst1|mouse_state.LOAD_COMMAND~q\ : std_logic;
SIGNAL \inst1|mouse_state.LOAD_COMMAND2~q\ : std_logic;
SIGNAL \inst1|OUTCNT~3_combout\ : std_logic;
SIGNAL \inst1|send_char~0_combout\ : std_logic;
SIGNAL \inst1|send_char~q\ : std_logic;
SIGNAL \inst1|output_ready~0_combout\ : std_logic;
SIGNAL \inst1|OUTCNT~0_combout\ : std_logic;
SIGNAL \inst1|OUTCNT~2_combout\ : std_logic;
SIGNAL \inst1|OUTCNT~1_combout\ : std_logic;
SIGNAL \inst1|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|output_ready~feeder_combout\ : std_logic;
SIGNAL \inst1|output_ready~q\ : std_logic;
SIGNAL \inst1|Selector3~0_combout\ : std_logic;
SIGNAL \inst1|mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;
SIGNAL \mouse_data~input_o\ : std_logic;
SIGNAL \inst1|READ_CHAR~0_combout\ : std_logic;
SIGNAL \inst1|READ_CHAR~q\ : std_logic;
SIGNAL \inst1|iready_set~0_combout\ : std_logic;
SIGNAL \inst1|iready_set~q\ : std_logic;
SIGNAL \inst1|Selector4~0_combout\ : std_logic;
SIGNAL \inst1|mouse_state.WAIT_CMD_ACK~q\ : std_logic;
SIGNAL \inst1|mouse_state.INPUT_PACKETS~0_combout\ : std_logic;
SIGNAL \inst1|mouse_state.INPUT_PACKETS~q\ : std_logic;
SIGNAL \inst1|Selector6~0_combout\ : std_logic;
SIGNAL \inst1|Selector6~1_combout\ : std_logic;
SIGNAL \inst1|send_data~q\ : std_logic;
SIGNAL \inst1|MOUSE_DATA_BUF~0_combout\ : std_logic;
SIGNAL \inst1|SHIFTOUT[8]~3_combout\ : std_logic;
SIGNAL \inst1|SHIFTOUT[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTOUT[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTOUT[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTOUT[4]~2_combout\ : std_logic;
SIGNAL \inst1|SHIFTOUT[3]~1_combout\ : std_logic;
SIGNAL \inst1|SHIFTOUT[2]~0_combout\ : std_logic;
SIGNAL \inst1|SHIFTOUT[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|MOUSE_DATA_BUF~q\ : std_logic;
SIGNAL \inst1|WideOr4~combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[8]~feeder_combout\ : std_logic;
SIGNAL \inst1|INCNT~3_combout\ : std_logic;
SIGNAL \inst1|INCNT[3]~2_combout\ : std_logic;
SIGNAL \inst1|INCNT~4_combout\ : std_logic;
SIGNAL \inst1|INCNT~5_combout\ : std_logic;
SIGNAL \inst1|INCNT~1_combout\ : std_logic;
SIGNAL \inst1|LessThan1~0_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[0]~2_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR1[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|Add3~0_combout\ : std_logic;
SIGNAL \inst1|PACKET_COUNT[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR2[7]~4_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR1[0]~0_combout\ : std_logic;
SIGNAL \inst1|INCNT[3]~0_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR1[0]~1_combout\ : std_logic;
SIGNAL \inst1|Equal4~0_combout\ : std_logic;
SIGNAL \inst1|left_button~0_combout\ : std_logic;
SIGNAL \inst1|left_button~q\ : std_logic;
SIGNAL \inst1|PACKET_CHAR1[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|right_button~feeder_combout\ : std_logic;
SIGNAL \inst1|right_button~q\ : std_logic;
SIGNAL \inst7|Add0~0_combout\ : std_logic;
SIGNAL \inst7|Add0~1\ : std_logic;
SIGNAL \inst7|Add0~3\ : std_logic;
SIGNAL \inst7|Add0~4_combout\ : std_logic;
SIGNAL \inst7|Add0~5\ : std_logic;
SIGNAL \inst7|Add0~7\ : std_logic;
SIGNAL \inst7|Add0~8_combout\ : std_logic;
SIGNAL \inst7|Add0~9\ : std_logic;
SIGNAL \inst7|Add0~11\ : std_logic;
SIGNAL \inst7|Add0~13\ : std_logic;
SIGNAL \inst7|Add0~14_combout\ : std_logic;
SIGNAL \inst7|Add0~15\ : std_logic;
SIGNAL \inst7|Add0~16_combout\ : std_logic;
SIGNAL \inst7|Add0~17\ : std_logic;
SIGNAL \inst7|Add0~18_combout\ : std_logic;
SIGNAL \inst7|Add0~19\ : std_logic;
SIGNAL \inst7|Add0~20_combout\ : std_logic;
SIGNAL \inst7|Add0~21\ : std_logic;
SIGNAL \inst7|Add0~23\ : std_logic;
SIGNAL \inst7|Add0~24_combout\ : std_logic;
SIGNAL \inst7|Add0~25\ : std_logic;
SIGNAL \inst7|Add0~27\ : std_logic;
SIGNAL \inst7|Add0~28_combout\ : std_logic;
SIGNAL \inst7|Add0~29\ : std_logic;
SIGNAL \inst7|Add0~31\ : std_logic;
SIGNAL \inst7|Add0~32_combout\ : std_logic;
SIGNAL \inst7|Add0~33\ : std_logic;
SIGNAL \inst7|Add0~34_combout\ : std_logic;
SIGNAL \inst7|Add0~35\ : std_logic;
SIGNAL \inst7|Add0~36_combout\ : std_logic;
SIGNAL \inst7|Add0~37\ : std_logic;
SIGNAL \inst7|Add0~39\ : std_logic;
SIGNAL \inst7|Add0~40_combout\ : std_logic;
SIGNAL \inst7|Add0~41\ : std_logic;
SIGNAL \inst7|Add0~43\ : std_logic;
SIGNAL \inst7|Add0~44_combout\ : std_logic;
SIGNAL \inst7|Equal0~6_combout\ : std_logic;
SIGNAL \inst7|Add0~38_combout\ : std_logic;
SIGNAL \inst7|Equal0~5_combout\ : std_logic;
SIGNAL \inst7|Equal0~7_combout\ : std_logic;
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
SIGNAL \inst7|Equal0~8_combout\ : std_logic;
SIGNAL \inst7|Add0~26_combout\ : std_logic;
SIGNAL \inst7|Equal0~3_combout\ : std_logic;
SIGNAL \inst7|Add0~6_combout\ : std_logic;
SIGNAL \inst7|i~0_combout\ : std_logic;
SIGNAL \inst7|Equal0~0_combout\ : std_logic;
SIGNAL \inst7|Add0~12_combout\ : std_logic;
SIGNAL \inst7|Equal0~1_combout\ : std_logic;
SIGNAL \inst7|Equal0~4_combout\ : std_logic;
SIGNAL \inst7|Equal0~10_combout\ : std_logic;
SIGNAL \inst7|clock_25Mhz~feeder_combout\ : std_logic;
SIGNAL \inst7|clock_25Mhz~q\ : std_logic;
SIGNAL \inst7|clock_25Mhz~clkctrl_outclk\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|h_count~2_combout\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|h_count~0_combout\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|process_0~0_combout\ : std_logic;
SIGNAL \inst|process_0~3_combout\ : std_logic;
SIGNAL \inst|horiz_sync~q\ : std_logic;
SIGNAL \inst|horiz_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst|horiz_sync_out~q\ : std_logic;
SIGNAL \inst|Add1~0_combout\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|process_0~6_combout\ : std_logic;
SIGNAL \inst|process_0~7_combout\ : std_logic;
SIGNAL \inst|process_0~8_combout\ : std_logic;
SIGNAL \inst|v_count~5_combout\ : std_logic;
SIGNAL \inst|v_count[0]~1_combout\ : std_logic;
SIGNAL \inst|Add1~1\ : std_logic;
SIGNAL \inst|Add1~2_combout\ : std_logic;
SIGNAL \inst|v_count~2_combout\ : std_logic;
SIGNAL \inst|Add1~3\ : std_logic;
SIGNAL \inst|Add1~4_combout\ : std_logic;
SIGNAL \inst|v_count~3_combout\ : std_logic;
SIGNAL \inst|Add1~5\ : std_logic;
SIGNAL \inst|Add1~6_combout\ : std_logic;
SIGNAL \inst|v_count~4_combout\ : std_logic;
SIGNAL \inst|process_0~9_combout\ : std_logic;
SIGNAL \inst|v_count~6_combout\ : std_logic;
SIGNAL \inst|Add1~7\ : std_logic;
SIGNAL \inst|Add1~9\ : std_logic;
SIGNAL \inst|Add1~11\ : std_logic;
SIGNAL \inst|Add1~13\ : std_logic;
SIGNAL \inst|Add1~14_combout\ : std_logic;
SIGNAL \inst|v_count~8_combout\ : std_logic;
SIGNAL \inst|process_0~10_combout\ : std_logic;
SIGNAL \inst|Add1~15\ : std_logic;
SIGNAL \inst|Add1~17\ : std_logic;
SIGNAL \inst|Add1~18_combout\ : std_logic;
SIGNAL \inst|v_count[9]~10_combout\ : std_logic;
SIGNAL \inst|process_0~11_combout\ : std_logic;
SIGNAL \inst|process_0~12_combout\ : std_logic;
SIGNAL \inst|v_count~0_combout\ : std_logic;
SIGNAL \inst|process_0~4_combout\ : std_logic;
SIGNAL \inst|Add1~12_combout\ : std_logic;
SIGNAL \inst|v_count~7_combout\ : std_logic;
SIGNAL \inst|Add1~16_combout\ : std_logic;
SIGNAL \inst|v_count~9_combout\ : std_logic;
SIGNAL \inst|LessThan7~2_combout\ : std_logic;
SIGNAL \inst|process_0~5_combout\ : std_logic;
SIGNAL \inst|vert_sync~q\ : std_logic;
SIGNAL \inst|vert_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst|vert_sync_out~q\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|h_count~1_combout\ : std_logic;
SIGNAL \inst|LessThan6~0_combout\ : std_logic;
SIGNAL \inst1|cursor_column~7_combout\ : std_logic;
SIGNAL \inst1|cursor_column[9]~4_combout\ : std_logic;
SIGNAL \inst1|RECV_UART~1_combout\ : std_logic;
SIGNAL \inst1|Equal3~0_combout\ : std_logic;
SIGNAL \inst1|cursor_column~8_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR2[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR2[7]~3_combout\ : std_logic;
SIGNAL \inst1|new_cursor_column[0]~10_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst1|new_cursor_column[9]~28_combout\ : std_logic;
SIGNAL \inst1|cursor_column~13_combout\ : std_logic;
SIGNAL \inst1|new_cursor_column[0]~11\ : std_logic;
SIGNAL \inst1|new_cursor_column[1]~12_combout\ : std_logic;
SIGNAL \inst1|cursor_column~12_combout\ : std_logic;
SIGNAL \inst1|new_cursor_column[1]~13\ : std_logic;
SIGNAL \inst1|new_cursor_column[2]~14_combout\ : std_logic;
SIGNAL \inst1|cursor_column~11_combout\ : std_logic;
SIGNAL \inst1|new_cursor_column[2]~15\ : std_logic;
SIGNAL \inst1|new_cursor_column[3]~17\ : std_logic;
SIGNAL \inst1|new_cursor_column[4]~18_combout\ : std_logic;
SIGNAL \inst1|cursor_column~9_combout\ : std_logic;
SIGNAL \inst1|new_cursor_column[4]~19\ : std_logic;
SIGNAL \inst1|new_cursor_column[5]~20_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR2[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|new_cursor_column[5]~21\ : std_logic;
SIGNAL \inst1|new_cursor_column[6]~22_combout\ : std_logic;
SIGNAL \inst1|new_cursor_column[3]~16_combout\ : std_logic;
SIGNAL \inst1|RECV_UART~0_combout\ : std_logic;
SIGNAL \inst1|RECV_UART~2_combout\ : std_logic;
SIGNAL \inst1|cursor_column~1_combout\ : std_logic;
SIGNAL \inst1|cursor_column~2_combout\ : std_logic;
SIGNAL \inst1|cursor_column~3_combout\ : std_logic;
SIGNAL \inst1|new_cursor_column[6]~23\ : std_logic;
SIGNAL \inst1|new_cursor_column[7]~25\ : std_logic;
SIGNAL \inst1|new_cursor_column[8]~26_combout\ : std_logic;
SIGNAL \inst1|new_cursor_column[7]~24_combout\ : std_logic;
SIGNAL \inst1|LessThan9~0_combout\ : std_logic;
SIGNAL \inst1|cursor_column[9]~0_combout\ : std_logic;
SIGNAL \inst1|cursor_column~5_combout\ : std_logic;
SIGNAL \inst1|cursor_column~6_combout\ : std_logic;
SIGNAL \inst11|LessThan14~0_combout\ : std_logic;
SIGNAL \inst11|player_x_pos[0]~12\ : std_logic;
SIGNAL \inst11|player_x_pos[1]~13_combout\ : std_logic;
SIGNAL \inst11|player_x_pos[4]~35_combout\ : std_logic;
SIGNAL \inst11|LessThan16~0_combout\ : std_logic;
SIGNAL \inst11|LessThan16~1_combout\ : std_logic;
SIGNAL \inst11|player_x_pos[4]~40_combout\ : std_logic;
SIGNAL \sw0~input_o\ : std_logic;
SIGNAL \bt2~input_o\ : std_logic;
SIGNAL \inst15|s_game_mode~0_combout\ : std_logic;
SIGNAL \inst15|s_game_mode[0]~1_combout\ : std_logic;
SIGNAL \inst15|s_game_mode~2_combout\ : std_logic;
SIGNAL \inst11|player_x_pos[4]~36_combout\ : std_logic;
SIGNAL \inst11|player_x_pos[4]~41_combout\ : std_logic;
SIGNAL \inst11|player_x_pos[1]~14\ : std_logic;
SIGNAL \inst11|player_x_pos[2]~15_combout\ : std_logic;
SIGNAL \inst11|player_x_pos[2]~16\ : std_logic;
SIGNAL \inst11|player_x_pos[3]~17_combout\ : std_logic;
SIGNAL \inst11|player_x_pos[3]~18\ : std_logic;
SIGNAL \inst11|player_x_pos[4]~19_combout\ : std_logic;
SIGNAL \inst11|player_x_pos[4]~20\ : std_logic;
SIGNAL \inst11|player_x_pos[5]~21_combout\ : std_logic;
SIGNAL \inst11|player_x_pos[5]~22\ : std_logic;
SIGNAL \inst11|player_x_pos[6]~24\ : std_logic;
SIGNAL \inst11|player_x_pos[7]~25_combout\ : std_logic;
SIGNAL \inst11|player_x_pos[7]~26\ : std_logic;
SIGNAL \inst11|player_x_pos[8]~28\ : std_logic;
SIGNAL \inst11|player_x_pos[9]~29_combout\ : std_logic;
SIGNAL \inst11|bullet_x_pos~2_combout\ : std_logic;
SIGNAL \inst11|player_x_pos[9]~30\ : std_logic;
SIGNAL \inst11|player_x_pos[10]~31_combout\ : std_logic;
SIGNAL \inst11|bullet_x_pos~0_combout\ : std_logic;
SIGNAL \inst11|bullet_x_pos~4_combout\ : std_logic;
SIGNAL \inst11|bullet_x_pos~6_combout\ : std_logic;
SIGNAL \inst11|bullet_x_pos~8_combout\ : std_logic;
SIGNAL \inst11|Add7~1\ : std_logic;
SIGNAL \inst11|Add7~3\ : std_logic;
SIGNAL \inst11|Add7~5\ : std_logic;
SIGNAL \inst11|Add7~7\ : std_logic;
SIGNAL \inst11|Add7~9\ : std_logic;
SIGNAL \inst11|Add7~11\ : std_logic;
SIGNAL \inst11|Add7~13\ : std_logic;
SIGNAL \inst11|Add7~15\ : std_logic;
SIGNAL \inst11|Add7~16_combout\ : std_logic;
SIGNAL \inst11|tank_x_pos[0]~11_combout\ : std_logic;
SIGNAL \inst11|bullet_y_pos~10_combout\ : std_logic;
SIGNAL \inst11|tank_x_pos[0]~12\ : std_logic;
SIGNAL \inst11|tank_x_pos[1]~13_combout\ : std_logic;
SIGNAL \inst11|tank_x_pos[1]~14\ : std_logic;
SIGNAL \inst11|tank_x_pos[2]~15_combout\ : std_logic;
SIGNAL \inst11|LessThan13~0_combout\ : std_logic;
SIGNAL \inst11|tank_x_pos[2]~16\ : std_logic;
SIGNAL \inst11|tank_x_pos[3]~18\ : std_logic;
SIGNAL \inst11|tank_x_pos[4]~19_combout\ : std_logic;
SIGNAL \inst11|tank_x_pos[4]~20\ : std_logic;
SIGNAL \inst11|tank_x_pos[5]~22\ : std_logic;
SIGNAL \inst11|tank_x_pos[6]~24\ : std_logic;
SIGNAL \inst11|tank_x_pos[7]~25_combout\ : std_logic;
SIGNAL \inst11|tank_x_pos[7]~26\ : std_logic;
SIGNAL \inst11|tank_x_pos[8]~27_combout\ : std_logic;
SIGNAL \inst11|LessThan13~1_combout\ : std_logic;
SIGNAL \inst11|LessThan13~2_combout\ : std_logic;
SIGNAL \inst11|tank_y_pos[1]~4_combout\ : std_logic;
SIGNAL \inst11|tank_x_motion~3_combout\ : std_logic;
SIGNAL \inst11|tank_x_pos[8]~28\ : std_logic;
SIGNAL \inst11|tank_x_pos[9]~30\ : std_logic;
SIGNAL \inst11|tank_x_pos[10]~31_combout\ : std_logic;
SIGNAL \inst11|tank_x_pos[9]~29_combout\ : std_logic;
SIGNAL \inst11|tank_x_pos[3]~17_combout\ : std_logic;
SIGNAL \inst11|Add18~1_cout\ : std_logic;
SIGNAL \inst11|Add18~3\ : std_logic;
SIGNAL \inst11|Add18~5\ : std_logic;
SIGNAL \inst11|Add18~7\ : std_logic;
SIGNAL \inst11|Add18~9\ : std_logic;
SIGNAL \inst11|Add18~11\ : std_logic;
SIGNAL \inst11|Add18~13\ : std_logic;
SIGNAL \inst11|Add18~15\ : std_logic;
SIGNAL \inst11|Add18~17\ : std_logic;
SIGNAL \inst11|Add18~18_combout\ : std_logic;
SIGNAL \inst11|Add7~12_combout\ : std_logic;
SIGNAL \inst11|Add18~12_combout\ : std_logic;
SIGNAL \inst11|Add7~8_combout\ : std_logic;
SIGNAL \inst11|Add7~6_combout\ : std_logic;
SIGNAL \inst11|Add18~6_combout\ : std_logic;
SIGNAL \inst11|Add18~4_combout\ : std_logic;
SIGNAL \inst11|Add18~2_combout\ : std_logic;
SIGNAL \inst11|player_x_pos[0]~11_combout\ : std_logic;
SIGNAL \inst11|bullet_x_pos~11_combout\ : std_logic;
SIGNAL \inst11|LessThan21~1_cout\ : std_logic;
SIGNAL \inst11|LessThan21~3_cout\ : std_logic;
SIGNAL \inst11|LessThan21~5_cout\ : std_logic;
SIGNAL \inst11|LessThan21~7_cout\ : std_logic;
SIGNAL \inst11|LessThan21~9_cout\ : std_logic;
SIGNAL \inst11|LessThan21~11_cout\ : std_logic;
SIGNAL \inst11|LessThan21~13_cout\ : std_logic;
SIGNAL \inst11|LessThan21~15_cout\ : std_logic;
SIGNAL \inst11|LessThan21~17_cout\ : std_logic;
SIGNAL \inst11|LessThan21~19_cout\ : std_logic;
SIGNAL \inst11|LessThan21~20_combout\ : std_logic;
SIGNAL \inst11|tank_x_pos[6]~23_combout\ : std_logic;
SIGNAL \inst11|tank_x_pos[5]~21_combout\ : std_logic;
SIGNAL \inst11|Add1~1\ : std_logic;
SIGNAL \inst11|Add1~3\ : std_logic;
SIGNAL \inst11|Add1~5\ : std_logic;
SIGNAL \inst11|Add1~7\ : std_logic;
SIGNAL \inst11|Add1~9\ : std_logic;
SIGNAL \inst11|Add1~11\ : std_logic;
SIGNAL \inst11|Add1~13\ : std_logic;
SIGNAL \inst11|Add1~15\ : std_logic;
SIGNAL \inst11|Add1~17\ : std_logic;
SIGNAL \inst11|Add1~18_combout\ : std_logic;
SIGNAL \inst11|Add1~16_combout\ : std_logic;
SIGNAL \inst11|Add7~10_combout\ : std_logic;
SIGNAL \inst11|Add1~6_combout\ : std_logic;
SIGNAL \inst11|Add1~4_combout\ : std_logic;
SIGNAL \inst11|Add7~0_combout\ : std_logic;
SIGNAL \inst11|bullet_x_pos~10_combout\ : std_logic;
SIGNAL \inst11|LessThan20~1_cout\ : std_logic;
SIGNAL \inst11|LessThan20~3_cout\ : std_logic;
SIGNAL \inst11|LessThan20~5_cout\ : std_logic;
SIGNAL \inst11|LessThan20~7_cout\ : std_logic;
SIGNAL \inst11|LessThan20~9_cout\ : std_logic;
SIGNAL \inst11|LessThan20~11_cout\ : std_logic;
SIGNAL \inst11|LessThan20~13_cout\ : std_logic;
SIGNAL \inst11|LessThan20~15_cout\ : std_logic;
SIGNAL \inst11|LessThan20~17_cout\ : std_logic;
SIGNAL \inst11|LessThan20~19_cout\ : std_logic;
SIGNAL \inst11|LessThan20~20_combout\ : std_logic;
SIGNAL \inst11|Add10~1\ : std_logic;
SIGNAL \inst11|Add10~2_combout\ : std_logic;
SIGNAL \inst11|LessThan13~3_combout\ : std_logic;
SIGNAL \inst11|LessThan12~0_combout\ : std_logic;
SIGNAL \inst11|tank_x_motion~2_combout\ : std_logic;
SIGNAL \inst11|tank_y_pos[1]~2_combout\ : std_logic;
SIGNAL \inst11|tank_y_pos[1]~5_combout\ : std_logic;
SIGNAL \inst11|Add10~3\ : std_logic;
SIGNAL \inst11|Add10~4_combout\ : std_logic;
SIGNAL \inst11|tank_y_pos[3]~7_combout\ : std_logic;
SIGNAL \inst11|Add10~5\ : std_logic;
SIGNAL \inst11|Add10~6_combout\ : std_logic;
SIGNAL \inst11|tank_y_pos[4]~feeder_combout\ : std_logic;
SIGNAL \inst11|Add10~7\ : std_logic;
SIGNAL \inst11|Add10~9\ : std_logic;
SIGNAL \inst11|Add10~10_combout\ : std_logic;
SIGNAL \inst11|Add10~11\ : std_logic;
SIGNAL \inst11|Add10~12_combout\ : std_logic;
SIGNAL \inst11|Add10~13\ : std_logic;
SIGNAL \inst11|Add10~15\ : std_logic;
SIGNAL \inst11|Add10~17\ : std_logic;
SIGNAL \inst11|Add10~18_combout\ : std_logic;
SIGNAL \inst11|Add10~16_combout\ : std_logic;
SIGNAL \inst11|Add10~14_combout\ : std_logic;
SIGNAL \inst11|tank_y_pos[8]~feeder_combout\ : std_logic;
SIGNAL \inst11|Add10~0_combout\ : std_logic;
SIGNAL \inst11|Add3~1\ : std_logic;
SIGNAL \inst11|Add3~3\ : std_logic;
SIGNAL \inst11|Add3~5\ : std_logic;
SIGNAL \inst11|Add3~7\ : std_logic;
SIGNAL \inst11|Add3~9\ : std_logic;
SIGNAL \inst11|Add3~11\ : std_logic;
SIGNAL \inst11|Add3~13\ : std_logic;
SIGNAL \inst11|Add3~15\ : std_logic;
SIGNAL \inst11|Add3~17\ : std_logic;
SIGNAL \inst11|Add3~18_combout\ : std_logic;
SIGNAL \inst11|Add3~16_combout\ : std_logic;
SIGNAL \inst11|Add3~14_combout\ : std_logic;
SIGNAL \inst11|bullet_y_pos[1]~12\ : std_logic;
SIGNAL \inst11|bullet_y_pos[2]~13_combout\ : std_logic;
SIGNAL \inst11|bullet_y_pos[3]~15_combout\ : std_logic;
SIGNAL \inst11|bullet_y_pos[8]~30_combout\ : std_logic;
SIGNAL \inst11|LessThan18~0_combout\ : std_logic;
SIGNAL \inst11|bullet_y_pos[7]~24\ : std_logic;
SIGNAL \inst11|bullet_y_pos[8]~25_combout\ : std_logic;
SIGNAL \inst11|LessThan18~1_combout\ : std_logic;
SIGNAL \inst11|bullet_y_pos[8]~26\ : std_logic;
SIGNAL \inst11|bullet_y_pos[9]~27_combout\ : std_logic;
SIGNAL \inst11|move_tank~0_wirecell_combout\ : std_logic;
SIGNAL \inst11|bullet_y_pos[9]~28\ : std_logic;
SIGNAL \inst11|bullet_y_pos[10]~31_combout\ : std_logic;
SIGNAL \inst11|LessThan18~2_combout\ : std_logic;
SIGNAL \inst11|bullet_fired~0_combout\ : std_logic;
SIGNAL \inst11|bullet_fired~q\ : std_logic;
SIGNAL \inst11|bullet_y_pos[8]~29_combout\ : std_logic;
SIGNAL \inst11|bullet_y_pos[2]~14\ : std_logic;
SIGNAL \inst11|bullet_y_pos[3]~16\ : std_logic;
SIGNAL \inst11|bullet_y_pos[4]~17_combout\ : std_logic;
SIGNAL \inst11|bullet_y_pos[4]~18\ : std_logic;
SIGNAL \inst11|bullet_y_pos[5]~19_combout\ : std_logic;
SIGNAL \inst11|bullet_y_pos[5]~20\ : std_logic;
SIGNAL \inst11|bullet_y_pos[6]~21_combout\ : std_logic;
SIGNAL \inst11|bullet_y_pos[6]~22\ : std_logic;
SIGNAL \inst11|bullet_y_pos[7]~23_combout\ : std_logic;
SIGNAL \inst11|Add3~2_combout\ : std_logic;
SIGNAL \inst11|Add3~0_combout\ : std_logic;
SIGNAL \inst11|LessThan19~1_cout\ : std_logic;
SIGNAL \inst11|LessThan19~3_cout\ : std_logic;
SIGNAL \inst11|LessThan19~5_cout\ : std_logic;
SIGNAL \inst11|LessThan19~7_cout\ : std_logic;
SIGNAL \inst11|LessThan19~9_cout\ : std_logic;
SIGNAL \inst11|LessThan19~11_cout\ : std_logic;
SIGNAL \inst11|LessThan19~13_cout\ : std_logic;
SIGNAL \inst11|LessThan19~15_cout\ : std_logic;
SIGNAL \inst11|LessThan19~17_cout\ : std_logic;
SIGNAL \inst11|LessThan19~18_combout\ : std_logic;
SIGNAL \inst11|move_tank~0_combout\ : std_logic;
SIGNAL \inst11|bullet_x_pos[6]~1_combout\ : std_logic;
SIGNAL \inst11|Add7~14_combout\ : std_logic;
SIGNAL \inst11|Add7~4_combout\ : std_logic;
SIGNAL \inst11|Add7~2_combout\ : std_logic;
SIGNAL \inst11|LessThan9~1_cout\ : std_logic;
SIGNAL \inst11|LessThan9~3_cout\ : std_logic;
SIGNAL \inst11|LessThan9~5_cout\ : std_logic;
SIGNAL \inst11|LessThan9~7_cout\ : std_logic;
SIGNAL \inst11|LessThan9~9_cout\ : std_logic;
SIGNAL \inst11|LessThan9~11_cout\ : std_logic;
SIGNAL \inst11|LessThan9~13_cout\ : std_logic;
SIGNAL \inst11|LessThan9~15_cout\ : std_logic;
SIGNAL \inst11|LessThan9~17_cout\ : std_logic;
SIGNAL \inst11|LessThan9~18_combout\ : std_logic;
SIGNAL \inst11|Add6~1\ : std_logic;
SIGNAL \inst11|Add6~3\ : std_logic;
SIGNAL \inst11|Add6~5\ : std_logic;
SIGNAL \inst11|Add6~7\ : std_logic;
SIGNAL \inst11|Add6~9\ : std_logic;
SIGNAL \inst11|Add6~11\ : std_logic;
SIGNAL \inst11|Add6~13\ : std_logic;
SIGNAL \inst11|Add6~14_combout\ : std_logic;
SIGNAL \inst11|Add6~12_combout\ : std_logic;
SIGNAL \inst11|Add6~10_combout\ : std_logic;
SIGNAL \inst11|Add6~8_combout\ : std_logic;
SIGNAL \inst11|Add6~6_combout\ : std_logic;
SIGNAL \inst11|Add6~4_combout\ : std_logic;
SIGNAL \inst11|Add6~2_combout\ : std_logic;
SIGNAL \inst11|bullet_x_pos~9_combout\ : std_logic;
SIGNAL \inst11|LessThan8~1_cout\ : std_logic;
SIGNAL \inst11|LessThan8~3_cout\ : std_logic;
SIGNAL \inst11|LessThan8~5_cout\ : std_logic;
SIGNAL \inst11|LessThan8~7_cout\ : std_logic;
SIGNAL \inst11|LessThan8~9_cout\ : std_logic;
SIGNAL \inst11|LessThan8~11_cout\ : std_logic;
SIGNAL \inst11|LessThan8~13_cout\ : std_logic;
SIGNAL \inst11|LessThan8~15_cout\ : std_logic;
SIGNAL \inst11|LessThan8~17_cout\ : std_logic;
SIGNAL \inst11|LessThan8~19_cout\ : std_logic;
SIGNAL \inst11|LessThan8~20_combout\ : std_logic;
SIGNAL \inst14|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Add1~19\ : std_logic;
SIGNAL \inst|Add1~20_combout\ : std_logic;
SIGNAL \inst|v_count[10]~11_combout\ : std_logic;
SIGNAL \inst|LessThan7~4_combout\ : std_logic;
SIGNAL \inst11|Add9~0_combout\ : std_logic;
SIGNAL \inst11|bullet_y_pos[1]~11_combout\ : std_logic;
SIGNAL \inst|pixel_row[0]~feeder_combout\ : std_logic;
SIGNAL \inst11|LessThan11~1_cout\ : std_logic;
SIGNAL \inst11|LessThan11~3_cout\ : std_logic;
SIGNAL \inst11|LessThan11~5_cout\ : std_logic;
SIGNAL \inst11|LessThan11~7_cout\ : std_logic;
SIGNAL \inst11|LessThan11~9_cout\ : std_logic;
SIGNAL \inst11|LessThan11~11_cout\ : std_logic;
SIGNAL \inst11|LessThan11~13_cout\ : std_logic;
SIGNAL \inst11|LessThan11~15_cout\ : std_logic;
SIGNAL \inst11|LessThan11~16_combout\ : std_logic;
SIGNAL \inst11|Add9~1\ : std_logic;
SIGNAL \inst11|Add9~3\ : std_logic;
SIGNAL \inst11|Add9~5\ : std_logic;
SIGNAL \inst11|Add9~7\ : std_logic;
SIGNAL \inst11|Add9~9\ : std_logic;
SIGNAL \inst11|Add9~11\ : std_logic;
SIGNAL \inst11|Add9~12_combout\ : std_logic;
SIGNAL \inst15|process_0~8_combout\ : std_logic;
SIGNAL \inst15|process_0~10_combout\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst11|Add0~1\ : std_logic;
SIGNAL \inst11|Add0~3\ : std_logic;
SIGNAL \inst11|Add0~5\ : std_logic;
SIGNAL \inst11|Add0~7\ : std_logic;
SIGNAL \inst11|Add0~9\ : std_logic;
SIGNAL \inst11|Add0~11\ : std_logic;
SIGNAL \inst11|Add0~13\ : std_logic;
SIGNAL \inst11|Add0~15\ : std_logic;
SIGNAL \inst11|Add0~17\ : std_logic;
SIGNAL \inst11|Add0~18_combout\ : std_logic;
SIGNAL \inst11|player_x_pos[8]~27_combout\ : std_logic;
SIGNAL \inst11|player_x_pos[6]~23_combout\ : std_logic;
SIGNAL \inst11|Add4~1\ : std_logic;
SIGNAL \inst11|Add4~3\ : std_logic;
SIGNAL \inst11|Add4~5\ : std_logic;
SIGNAL \inst11|Add4~7\ : std_logic;
SIGNAL \inst11|Add4~9\ : std_logic;
SIGNAL \inst11|Add4~11\ : std_logic;
SIGNAL \inst11|Add4~13\ : std_logic;
SIGNAL \inst11|Add4~15\ : std_logic;
SIGNAL \inst11|Add4~16_combout\ : std_logic;
SIGNAL \inst15|process_0~14_combout\ : std_logic;
SIGNAL \inst11|Add4~14_combout\ : std_logic;
SIGNAL \inst11|Add4~12_combout\ : std_logic;
SIGNAL \inst11|Add4~8_combout\ : std_logic;
SIGNAL \inst11|Add4~2_combout\ : std_logic;
SIGNAL \inst11|Add4~0_combout\ : std_logic;
SIGNAL \inst11|LessThan5~1_cout\ : std_logic;
SIGNAL \inst11|LessThan5~3_cout\ : std_logic;
SIGNAL \inst11|LessThan5~5_cout\ : std_logic;
SIGNAL \inst11|LessThan5~7_cout\ : std_logic;
SIGNAL \inst11|LessThan5~9_cout\ : std_logic;
SIGNAL \inst11|LessThan5~11_cout\ : std_logic;
SIGNAL \inst11|LessThan5~13_cout\ : std_logic;
SIGNAL \inst11|LessThan5~15_cout\ : std_logic;
SIGNAL \inst11|LessThan5~17_cout\ : std_logic;
SIGNAL \inst11|LessThan5~18_combout\ : std_logic;
SIGNAL \inst11|Add0~14_combout\ : std_logic;
SIGNAL \inst11|Add0~8_combout\ : std_logic;
SIGNAL \inst11|Add0~6_combout\ : std_logic;
SIGNAL \inst11|Add0~4_combout\ : std_logic;
SIGNAL \inst11|Add0~2_combout\ : std_logic;
SIGNAL \inst11|LessThan4~1_cout\ : std_logic;
SIGNAL \inst11|LessThan4~3_cout\ : std_logic;
SIGNAL \inst11|LessThan4~5_cout\ : std_logic;
SIGNAL \inst11|LessThan4~7_cout\ : std_logic;
SIGNAL \inst11|LessThan4~9_cout\ : std_logic;
SIGNAL \inst11|LessThan4~11_cout\ : std_logic;
SIGNAL \inst11|LessThan4~13_cout\ : std_logic;
SIGNAL \inst11|LessThan4~15_cout\ : std_logic;
SIGNAL \inst11|LessThan4~17_cout\ : std_logic;
SIGNAL \inst11|LessThan4~19_cout\ : std_logic;
SIGNAL \inst11|LessThan4~20_combout\ : std_logic;
SIGNAL \inst15|process_0~7_combout\ : std_logic;
SIGNAL \inst|blue_out~0_combout\ : std_logic;
SIGNAL \inst14|LessThan12~0_combout\ : std_logic;
SIGNAL \inst14|process_0~43_combout\ : std_logic;
SIGNAL \inst14|LessThan4~0_combout\ : std_logic;
SIGNAL \inst14|process_0~46_combout\ : std_logic;
SIGNAL \inst14|process_0~47_combout\ : std_logic;
SIGNAL \inst14|LessThan38~0_combout\ : std_logic;
SIGNAL \inst14|process_0~49_combout\ : std_logic;
SIGNAL \inst14|process_0~34_combout\ : std_logic;
SIGNAL \inst14|character_address[1]~21_combout\ : std_logic;
SIGNAL \inst14|process_0~50_combout\ : std_logic;
SIGNAL \inst14|process_0~42_combout\ : std_logic;
SIGNAL \inst14|process_0~51_combout\ : std_logic;
SIGNAL \inst14|character_address[5]~29_combout\ : std_logic;
SIGNAL \inst14|process_0~45_combout\ : std_logic;
SIGNAL \inst14|process_0~40_combout\ : std_logic;
SIGNAL \inst14|process_0~70_combout\ : std_logic;
SIGNAL \inst14|process_0~41_combout\ : std_logic;
SIGNAL \inst14|process_0~72_combout\ : std_logic;
SIGNAL \inst14|process_0~55_combout\ : std_logic;
SIGNAL \inst14|character_address[4]~40_combout\ : std_logic;
SIGNAL \inst14|character_address[4]~41_combout\ : std_logic;
SIGNAL \inst14|character_address[5]~42_combout\ : std_logic;
SIGNAL \inst14|character_address[0]~23_combout\ : std_logic;
SIGNAL \inst14|process_0~38_combout\ : std_logic;
SIGNAL \inst14|LessThan24~0_combout\ : std_logic;
SIGNAL \inst14|process_0~20_combout\ : std_logic;
SIGNAL \inst14|process_0~39_combout\ : std_logic;
SIGNAL \inst14|character_address[5]~24_combout\ : std_logic;
SIGNAL \inst14|character_address[4]~22_combout\ : std_logic;
SIGNAL \inst14|process_0~73_combout\ : std_logic;
SIGNAL \inst14|character_address[4]~27_combout\ : std_logic;
SIGNAL \inst14|character_address[4]~28_combout\ : std_logic;
SIGNAL \inst14|LessThan5~0_combout\ : std_logic;
SIGNAL \inst|pixel_row[1]~feeder_combout\ : std_logic;
SIGNAL \inst14|LessThan6~0_combout\ : std_logic;
SIGNAL \inst14|LessThan5~1_combout\ : std_logic;
SIGNAL \inst14|process_0~21_combout\ : std_logic;
SIGNAL \inst14|process_0~22_combout\ : std_logic;
SIGNAL \inst14|process_0~27_combout\ : std_logic;
SIGNAL \inst14|process_0~36_combout\ : std_logic;
SIGNAL \inst14|process_0~56_combout\ : std_logic;
SIGNAL \inst14|character_address[3]~43_combout\ : std_logic;
SIGNAL \inst14|LessThan30~0_combout\ : std_logic;
SIGNAL \inst14|process_0~33_combout\ : std_logic;
SIGNAL \inst14|LessThan18~1_combout\ : std_logic;
SIGNAL \inst14|process_0~28_combout\ : std_logic;
SIGNAL \inst14|process_0~29_combout\ : std_logic;
SIGNAL \inst14|process_0~23_combout\ : std_logic;
SIGNAL \inst14|process_0~26_combout\ : std_logic;
SIGNAL \inst14|process_0~24_combout\ : std_logic;
SIGNAL \inst14|character_address[2]~20_combout\ : std_logic;
SIGNAL \inst14|font_col[1]~0_combout\ : std_logic;
SIGNAL \inst14|character_address[5]~44_combout\ : std_logic;
SIGNAL \inst14|character_address[4]~45_combout\ : std_logic;
SIGNAL \inst14|character_address[4]~45clkctrl_outclk\ : std_logic;
SIGNAL \inst14|process_0~25_combout\ : std_logic;
SIGNAL \inst14|process_0~35_combout\ : std_logic;
SIGNAL \inst14|font_col[1]~1_combout\ : std_logic;
SIGNAL \inst14|font_col[2]~4_combout\ : std_logic;
SIGNAL \inst14|font_row[1]~1_combout\ : std_logic;
SIGNAL \inst14|font_row[2]~2_combout\ : std_logic;
SIGNAL \inst14|process_0~30_combout\ : std_logic;
SIGNAL \inst14|LessThan4~2_combout\ : std_logic;
SIGNAL \inst14|process_0~31_combout\ : std_logic;
SIGNAL \inst14|process_0~57_combout\ : std_logic;
SIGNAL \inst14|character_address[0]~46_combout\ : std_logic;
SIGNAL \inst14|process_0~64_combout\ : std_logic;
SIGNAL \inst14|character_address[0]~135_combout\ : std_logic;
SIGNAL \inst14|character_address[0]~63_combout\ : std_logic;
SIGNAL \inst14|character_address[0]~38_combout\ : std_logic;
SIGNAL \inst14|LessThan44~0_combout\ : std_logic;
SIGNAL \inst14|LessThan38~1_combout\ : std_logic;
SIGNAL \inst14|LessThan38~2_combout\ : std_logic;
SIGNAL \inst14|process_0~62_combout\ : std_logic;
SIGNAL \inst14|process_0~77_combout\ : std_logic;
SIGNAL \inst14|process_0~53_combout\ : std_logic;
SIGNAL \inst14|process_0~54_combout\ : std_logic;
SIGNAL \inst14|character_address[0]~132_combout\ : std_logic;
SIGNAL \inst14|process_0~44_combout\ : std_logic;
SIGNAL \inst14|character_address[0]~133_combout\ : std_logic;
SIGNAL \inst14|character_address[0]~47_combout\ : std_logic;
SIGNAL \inst14|process_0~63_combout\ : std_logic;
SIGNAL \inst14|character_address[5]~30_combout\ : std_logic;
SIGNAL \inst14|character_address[0]~49_combout\ : std_logic;
SIGNAL \inst14|character_address[0]~50_combout\ : std_logic;
SIGNAL \inst14|character_address[0]~51_combout\ : std_logic;
SIGNAL \inst14|process_0~60_combout\ : std_logic;
SIGNAL \inst14|process_0~61_combout\ : std_logic;
SIGNAL \inst14|character_address[4]~52_combout\ : std_logic;
SIGNAL \inst14|character_address[4]~53_combout\ : std_logic;
SIGNAL \inst14|process_0~76_combout\ : std_logic;
SIGNAL \inst14|character_address[0]~54_combout\ : std_logic;
SIGNAL \inst14|character_address[0]~55_combout\ : std_logic;
SIGNAL \inst14|character_address[0]~48_combout\ : std_logic;
SIGNAL \inst14|character_address[0]~56_combout\ : std_logic;
SIGNAL \inst14|character_address[0]~58_combout\ : std_logic;
SIGNAL \inst14|character_address[1]~136_combout\ : std_logic;
SIGNAL \inst14|character_address[0]~65_combout\ : std_logic;
SIGNAL \inst14|character_address[0]~66_combout\ : std_logic;
SIGNAL \inst14|character_address[1]~83_combout\ : std_logic;
SIGNAL \inst14|character_address[1]~82_combout\ : std_logic;
SIGNAL \inst14|character_address[1]~84_combout\ : std_logic;
SIGNAL \inst14|character_address[1]~71_combout\ : std_logic;
SIGNAL \inst14|character_address[2]~26_combout\ : std_logic;
SIGNAL \inst14|character_address[1]~75_combout\ : std_logic;
SIGNAL \inst14|character_address[1]~73_combout\ : std_logic;
SIGNAL \inst14|LessThan18~0_combout\ : std_logic;
SIGNAL \inst14|process_0~67_combout\ : std_logic;
SIGNAL \inst14|character_address[1]~74_combout\ : std_logic;
SIGNAL \inst14|character_address[1]~76_combout\ : std_logic;
SIGNAL \inst14|character_address[5]~36_combout\ : std_logic;
SIGNAL \inst14|process_0~37_combout\ : std_logic;
SIGNAL \inst14|process_0~69_combout\ : std_logic;
SIGNAL \inst14|character_address[1]~72_combout\ : std_logic;
SIGNAL \inst14|character_address[0]~39_combout\ : std_logic;
SIGNAL \inst14|character_address[1]~78_combout\ : std_logic;
SIGNAL \inst14|character_address[1]~81_combout\ : std_logic;
SIGNAL \inst14|process_0~71_combout\ : std_logic;
SIGNAL \inst14|process_0~66_combout\ : std_logic;
SIGNAL \inst14|process_0~65_combout\ : std_logic;
SIGNAL \inst14|character_address[1]~67_combout\ : std_logic;
SIGNAL \inst14|character_address[1]~68_combout\ : std_logic;
SIGNAL \inst14|character_address[1]~69_combout\ : std_logic;
SIGNAL \inst14|character_address[1]~85_combout\ : std_logic;
SIGNAL \inst14|character_address[4]~138_combout\ : std_logic;
SIGNAL \inst14|character_address[2]~89_combout\ : std_logic;
SIGNAL \inst14|character_address[2]~87_combout\ : std_logic;
SIGNAL \inst11|Equal0~0_combout\ : std_logic;
SIGNAL \inst14|character_address[2]~86_combout\ : std_logic;
SIGNAL \inst14|character_address[2]~88_combout\ : std_logic;
SIGNAL \inst14|character_address[2]~139_combout\ : std_logic;
SIGNAL \inst14|process_0~48_combout\ : std_logic;
SIGNAL \inst14|process_0~74_combout\ : std_logic;
SIGNAL \inst14|character_address[2]~131_combout\ : std_logic;
SIGNAL \inst14|character_address[2]~93_combout\ : std_logic;
SIGNAL \inst14|character_address[2]~94_combout\ : std_logic;
SIGNAL \inst14|character_address[2]~90_combout\ : std_logic;
SIGNAL \inst14|character_address[2]~91_combout\ : std_logic;
SIGNAL \inst14|character_address[2]~92_combout\ : std_logic;
SIGNAL \inst14|character_address[2]~97_combout\ : std_logic;
SIGNAL \inst14|character_address[2]~98_combout\ : std_logic;
SIGNAL \inst14|character_address[2]~141_combout\ : std_logic;
SIGNAL \inst14|character_address[2]~142_combout\ : std_logic;
SIGNAL \inst14|character_address[3]~103_combout\ : std_logic;
SIGNAL \inst14|character_address[3]~106_combout\ : std_logic;
SIGNAL \inst14|character_address[3]~108_combout\ : std_logic;
SIGNAL \inst14|process_0~58_combout\ : std_logic;
SIGNAL \inst14|character_address[3]~109_combout\ : std_logic;
SIGNAL \inst14|process_0~68_combout\ : std_logic;
SIGNAL \inst14|character_address[3]~110_combout\ : std_logic;
SIGNAL \inst14|character_address[3]~111_combout\ : std_logic;
SIGNAL \inst14|character_address[3]~100_combout\ : std_logic;
SIGNAL \inst14|character_address[3]~99_combout\ : std_logic;
SIGNAL \inst14|character_address[3]~101_combout\ : std_logic;
SIGNAL \inst14|character_address[3]~140_combout\ : std_logic;
SIGNAL \inst14|character_address[3]~102_combout\ : std_logic;
SIGNAL \inst14|character_address[3]~104_combout\ : std_logic;
SIGNAL \inst14|character_address[3]~113_combout\ : std_logic;
SIGNAL \inst14|character_address[0]~59_combout\ : std_logic;
SIGNAL \inst14|character_address[0]~134_combout\ : std_logic;
SIGNAL \inst14|process_0~75_combout\ : std_logic;
SIGNAL \inst14|process_0~59_combout\ : std_logic;
SIGNAL \inst14|character_address[4]~118_combout\ : std_logic;
SIGNAL \inst14|character_address[4]~119_combout\ : std_logic;
SIGNAL \inst14|character_address[4]~120_combout\ : std_logic;
SIGNAL \inst14|character_address[0]~62_combout\ : std_logic;
SIGNAL \inst14|character_address[4]~114_combout\ : std_logic;
SIGNAL \inst14|character_address[4]~116_combout\ : std_logic;
SIGNAL \inst14|character_address[4]~122_combout\ : std_logic;
SIGNAL \inst14|character_address[4]~123_combout\ : std_logic;
SIGNAL \inst14|character_address[4]~124_combout\ : std_logic;
SIGNAL \inst14|character_address[5]~105_combout\ : std_logic;
SIGNAL \inst14|character_address[5]~126_combout\ : std_logic;
SIGNAL \inst14|character_address[5]~127_combout\ : std_logic;
SIGNAL \inst14|character_address[5]~129_combout\ : std_logic;
SIGNAL \inst14|character_address[5]~130_combout\ : std_logic;
SIGNAL \inst14|font_col[1]~3_combout\ : std_logic;
SIGNAL \inst14|font_col[0]~2_combout\ : std_logic;
SIGNAL \inst12|Mux0~2_combout\ : std_logic;
SIGNAL \inst12|Mux0~3_combout\ : std_logic;
SIGNAL \inst12|Mux0~4_combout\ : std_logic;
SIGNAL \inst15|process_0~6_combout\ : std_logic;
SIGNAL \inst11|Add2~1\ : std_logic;
SIGNAL \inst11|Add2~3\ : std_logic;
SIGNAL \inst11|Add2~5\ : std_logic;
SIGNAL \inst11|Add2~7\ : std_logic;
SIGNAL \inst11|Add2~9\ : std_logic;
SIGNAL \inst11|Add2~11\ : std_logic;
SIGNAL \inst11|Add2~13\ : std_logic;
SIGNAL \inst11|Add2~15\ : std_logic;
SIGNAL \inst11|Add2~16_combout\ : std_logic;
SIGNAL \inst11|Add2~14_combout\ : std_logic;
SIGNAL \inst11|Add2~12_combout\ : std_logic;
SIGNAL \inst11|Add2~8_combout\ : std_logic;
SIGNAL \inst11|Add2~6_combout\ : std_logic;
SIGNAL \inst11|Add2~4_combout\ : std_logic;
SIGNAL \inst11|Add2~2_combout\ : std_logic;
SIGNAL \inst11|Add2~0_combout\ : std_logic;
SIGNAL \inst11|LessThan2~1_cout\ : std_logic;
SIGNAL \inst11|LessThan2~3_cout\ : std_logic;
SIGNAL \inst11|LessThan2~5_cout\ : std_logic;
SIGNAL \inst11|LessThan2~7_cout\ : std_logic;
SIGNAL \inst11|LessThan2~9_cout\ : std_logic;
SIGNAL \inst11|LessThan2~11_cout\ : std_logic;
SIGNAL \inst11|LessThan2~13_cout\ : std_logic;
SIGNAL \inst11|LessThan2~15_cout\ : std_logic;
SIGNAL \inst11|LessThan2~16_combout\ : std_logic;
SIGNAL \inst15|process_0~12_combout\ : std_logic;
SIGNAL \inst11|Add3~10_combout\ : std_logic;
SIGNAL \inst11|Add3~4_combout\ : std_logic;
SIGNAL \inst11|LessThan3~1_cout\ : std_logic;
SIGNAL \inst11|LessThan3~3_cout\ : std_logic;
SIGNAL \inst11|LessThan3~5_cout\ : std_logic;
SIGNAL \inst11|LessThan3~7_cout\ : std_logic;
SIGNAL \inst11|LessThan3~9_cout\ : std_logic;
SIGNAL \inst11|LessThan3~11_cout\ : std_logic;
SIGNAL \inst11|LessThan3~13_cout\ : std_logic;
SIGNAL \inst11|LessThan3~15_cout\ : std_logic;
SIGNAL \inst11|LessThan3~16_combout\ : std_logic;
SIGNAL \inst11|Add0~0_combout\ : std_logic;
SIGNAL \inst11|LessThan0~1_cout\ : std_logic;
SIGNAL \inst11|LessThan0~3_cout\ : std_logic;
SIGNAL \inst11|LessThan0~5_cout\ : std_logic;
SIGNAL \inst11|LessThan0~7_cout\ : std_logic;
SIGNAL \inst11|LessThan0~9_cout\ : std_logic;
SIGNAL \inst11|LessThan0~11_cout\ : std_logic;
SIGNAL \inst11|LessThan0~13_cout\ : std_logic;
SIGNAL \inst11|LessThan0~15_cout\ : std_logic;
SIGNAL \inst11|LessThan0~17_cout\ : std_logic;
SIGNAL \inst11|LessThan0~19_cout\ : std_logic;
SIGNAL \inst11|LessThan0~20_combout\ : std_logic;
SIGNAL \inst11|Add1~12_combout\ : std_logic;
SIGNAL \inst11|Add1~8_combout\ : std_logic;
SIGNAL \inst11|Add1~0_combout\ : std_logic;
SIGNAL \inst11|LessThan1~1_cout\ : std_logic;
SIGNAL \inst11|LessThan1~3_cout\ : std_logic;
SIGNAL \inst11|LessThan1~5_cout\ : std_logic;
SIGNAL \inst11|LessThan1~7_cout\ : std_logic;
SIGNAL \inst11|LessThan1~9_cout\ : std_logic;
SIGNAL \inst11|LessThan1~11_cout\ : std_logic;
SIGNAL \inst11|LessThan1~13_cout\ : std_logic;
SIGNAL \inst11|LessThan1~15_cout\ : std_logic;
SIGNAL \inst11|LessThan1~17_cout\ : std_logic;
SIGNAL \inst11|LessThan1~18_combout\ : std_logic;
SIGNAL \inst15|process_0~11_combout\ : std_logic;
SIGNAL \inst15|process_0~13_combout\ : std_logic;
SIGNAL \inst|blue_out~1_combout\ : std_logic;
SIGNAL \inst12|Mux0~0_combout\ : std_logic;
SIGNAL \inst12|Mux0~1_combout\ : std_logic;
SIGNAL \inst|blue_out~2_combout\ : std_logic;
SIGNAL \inst|blue_out[0]~feeder_combout\ : std_logic;
SIGNAL \inst|video_on_h~q\ : std_logic;
SIGNAL \inst|video_on_v~feeder_combout\ : std_logic;
SIGNAL \inst|video_on_v~q\ : std_logic;
SIGNAL \inst|video_on~combout\ : std_logic;
SIGNAL \inst|green_out~0_combout\ : std_logic;
SIGNAL \inst|green_out~1_combout\ : std_logic;
SIGNAL \inst|red_out~2_combout\ : std_logic;
SIGNAL \inst|red_out~3_combout\ : std_logic;
SIGNAL \inst|red_out[1]~feeder_combout\ : std_logic;
SIGNAL \inst11|Equal0~1_combout\ : std_logic;
SIGNAL \inst99|segment7[2]~feeder_combout\ : std_logic;
SIGNAL \inst99|segment7[4]~feeder_combout\ : std_logic;
SIGNAL \inst99|segment7[5]~feeder_combout\ : std_logic;
SIGNAL \inst99|segment7[6]~0_combout\ : std_logic;
SIGNAL \inst99|segment7[6]~feeder_combout\ : std_logic;
SIGNAL \inst11|tank_y_pos\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst11|tank_x_pos\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst11|tank_x_motion\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst11|player_x_pos\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst11|bullet_y_pos\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst11|bullet_x_pos\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst99|segment7\ : std_logic_vector(0 TO 6);
SIGNAL \inst1|PACKET_COUNT\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|red_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|cursor_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst12|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|new_cursor_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst14|font_col\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst7|i\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|green_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|v_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst1|SHIFTOUT\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst14|font_row\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|pixel_row\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst1|OUTCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|h_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst15|s_game_mode\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|filter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|SHIFTIN\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|blue_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|inhibit_wait_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst1|INCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|pixel_column\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst1|PACKET_CHAR2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|PACKET_CHAR1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst14|character_address\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|ALT_INV_send_data~q\ : std_logic;
SIGNAL \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \inst1|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;

BEGIN

seg0_dec <= ww_seg0_dec;
ww_clk <= clk;
seg1_dec <= ww_seg1_dec;
horiz_sync_out <= ww_horiz_sync_out;
ww_sw0 <= sw0;
ww_bt2 <= bt2;
ww_bt1 <= bt1;
vert_sync_out <= ww_vert_sync_out;
blue <= ww_blue;
green <= ww_green;
red <= ww_red;
seg0 <= ww_seg0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst12|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst14|character_address\(5) & \inst14|character_address\(4) & \inst14|character_address\(3) & \inst14|character_address\(2) & \inst14|character_address\(1) & 
\inst14|character_address\(0) & \inst14|font_row\(2) & \inst14|font_row\(1) & \inst14|font_row\(0));

\inst12|altsyncram_component|auto_generated|q_a\(0) <= \inst12|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst12|altsyncram_component|auto_generated|q_a\(1) <= \inst12|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst12|altsyncram_component|auto_generated|q_a\(2) <= \inst12|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst12|altsyncram_component|auto_generated|q_a\(3) <= \inst12|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst12|altsyncram_component|auto_generated|q_a\(4) <= \inst12|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst12|altsyncram_component|auto_generated|q_a\(5) <= \inst12|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst12|altsyncram_component|auto_generated|q_a\(6) <= \inst12|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst12|altsyncram_component|auto_generated|q_a\(7) <= \inst12|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\inst1|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|MOUSE_CLK_FILTER~q\);

\inst7|clock_25Mhz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst7|clock_25Mhz~q\);

\inst14|character_address[4]~45clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst14|character_address[4]~45_combout\);

\inst|vert_sync_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|vert_sync_out~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ <= NOT \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\;
\inst1|ALT_INV_send_data~q\ <= NOT \inst1|send_data~q\;
\inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\ <= NOT \inst1|mouse_state.INHIBIT_TRANS~q\;
\inst1|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\ <= NOT \inst1|mouse_state.WAIT_OUTPUT_READY~q\;

-- Location: M9K_X25_Y22_N0
\inst12|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"000000060001800060001E0006000180007E00000007E001800060001E0006000180007E000000078001B00066001980066001B0007800000003C00198006000180006000198003C00000007C001980066001F0006600198007C000000066001980066001F80066000F0001800000003C001980006000F8006600198003C0000",
	mem_init3 => X"0003C001980066000F0006600198003C00000001800060001800060000C00198007E00000003C001980066001F0006000198003C00000003C00198000600018007C00180007E00000000600018007F00198001E00038000600000003C00198000600070000600198003C00000007E00180003000030000600198003C00000007E00060001800060003800060001800000003C001980066001D8006E00198003C000000060000C000180003000060000C0000000000018000600000000000000000000000000000000000000000001F80000000000000000C00018000600000000000000000000000000000000000600018001F80018000600000000000000001",
	mem_init2 => X"98003C003FC003C00198000000000003000060000C00030000C00060003000000000C000600030000C0003000060000C00000000000000000000000001800030000600000003F001980067000E0003C00198003C00000004600198003000060000C001980062000000018001F00006000F00060000F800180000000660019800FF0019800FF001980066000000000000000000000000066001980066000000018000000000000600018000600018000000000000000000000000000000000000000000010000C0007F001FC0030000400000000600018000600018001F8003C00060000000000003C00030000C00030000C00030003C000000018000F0007E00",
	mem_init1 => X"060001800060001800000003C000C00030000C00030000C0003C00000007E00180003000060000C00018007E000000018000600018000F0006600198006600000006600198003C00060003C001980066000000063001DC007F001AC00630018C0063000000018000F0006600198006600198006600000003C00198006600198006600198006600000001800060001800060001800060007E00000003C001980006000F0006000198003C000000066001B00078001F0006600198007C00000000E000F0006600198006600198003C000000060001800060001F0006600198007C00000003C00198006600198006600198003C00000006600198006E001F8007E0",
	mem_init0 => X"01D800660000000630018C0063001AC007F001DC006300000007E001800060001800060001800060000000066001B00078001C00078001B00066000000038001B0000C00030000C00030001E00000003C00060001800060001800060003C000000066001980066001F8006600198006600000003C001980066001B8006000198003C000000060001800060001E0006000180007E00000007E001800060001E0006000180007E000000078001B00066001980066001B0007800000003C00198006000180006000198003C00000007C001980066001F0006600198007C000000066001980066001F80066000F0001800000003C001880060001B8006E00198003C",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "tcgrom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "char_rom:inst12|altsyncram:altsyncram_component|altsyncram_kt91:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 9,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \inst7|clock_25Mhz~clkctrl_outclk\,
	portaaddr => \inst12|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst12|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X29_Y20_N16
\inst11|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add0~10_combout\ = (\inst|pixel_column\(6) & (!\inst11|Add0~9\)) # (!\inst|pixel_column\(6) & ((\inst11|Add0~9\) # (GND)))
-- \inst11|Add0~11\ = CARRY((!\inst11|Add0~9\) # (!\inst|pixel_column\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_column\(6),
	datad => VCC,
	cin => \inst11|Add0~9\,
	combout => \inst11|Add0~10_combout\,
	cout => \inst11|Add0~11\);

-- Location: LCCOMB_X29_Y20_N18
\inst11|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add0~12_combout\ = (\inst|pixel_column\(7) & (\inst11|Add0~11\ $ (GND))) # (!\inst|pixel_column\(7) & (!\inst11|Add0~11\ & VCC))
-- \inst11|Add0~13\ = CARRY((\inst|pixel_column\(7) & !\inst11|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_column\(7),
	datad => VCC,
	cin => \inst11|Add0~11\,
	combout => \inst11|Add0~12_combout\,
	cout => \inst11|Add0~13\);

-- Location: LCCOMB_X29_Y20_N22
\inst11|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add0~16_combout\ = (\inst|pixel_column\(9) & (\inst11|Add0~15\ $ (GND))) # (!\inst|pixel_column\(9) & (!\inst11|Add0~15\ & VCC))
-- \inst11|Add0~17\ = CARRY((\inst|pixel_column\(9) & !\inst11|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(9),
	datad => VCC,
	cin => \inst11|Add0~15\,
	combout => \inst11|Add0~16_combout\,
	cout => \inst11|Add0~17\);

-- Location: LCCOMB_X29_Y16_N12
\inst11|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add4~4_combout\ = (\inst11|player_x_pos\(4) & (\inst11|Add4~3\ $ (GND))) # (!\inst11|player_x_pos\(4) & (!\inst11|Add4~3\ & VCC))
-- \inst11|Add4~5\ = CARRY((\inst11|player_x_pos\(4) & !\inst11|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|player_x_pos\(4),
	datad => VCC,
	cin => \inst11|Add4~3\,
	combout => \inst11|Add4~4_combout\,
	cout => \inst11|Add4~5\);

-- Location: LCCOMB_X29_Y16_N14
\inst11|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add4~6_combout\ = (\inst11|player_x_pos\(5) & (!\inst11|Add4~5\)) # (!\inst11|player_x_pos\(5) & ((\inst11|Add4~5\) # (GND)))
-- \inst11|Add4~7\ = CARRY((!\inst11|Add4~5\) # (!\inst11|player_x_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|player_x_pos\(5),
	datad => VCC,
	cin => \inst11|Add4~5\,
	combout => \inst11|Add4~6_combout\,
	cout => \inst11|Add4~7\);

-- Location: LCCOMB_X29_Y16_N18
\inst11|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add4~10_combout\ = (\inst11|player_x_pos\(7) & (!\inst11|Add4~9\)) # (!\inst11|player_x_pos\(7) & ((\inst11|Add4~9\) # (GND)))
-- \inst11|Add4~11\ = CARRY((!\inst11|Add4~9\) # (!\inst11|player_x_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|player_x_pos\(7),
	datad => VCC,
	cin => \inst11|Add4~9\,
	combout => \inst11|Add4~10_combout\,
	cout => \inst11|Add4~11\);

-- Location: LCCOMB_X27_Y21_N20
\inst11|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add2~10_combout\ = (\inst|pixel_row\(6) & (!\inst11|Add2~9\)) # (!\inst|pixel_row\(6) & ((\inst11|Add2~9\) # (GND)))
-- \inst11|Add2~11\ = CARRY((!\inst11|Add2~9\) # (!\inst|pixel_row\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(6),
	datad => VCC,
	cin => \inst11|Add2~9\,
	combout => \inst11|Add2~10_combout\,
	cout => \inst11|Add2~11\);

-- Location: LCCOMB_X33_Y19_N6
\inst11|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add6~0_combout\ = (\inst|pixel_column\(2) & (\inst|pixel_column\(3) $ (VCC))) # (!\inst|pixel_column\(2) & (\inst|pixel_column\(3) & VCC))
-- \inst11|Add6~1\ = CARRY((\inst|pixel_column\(2) & \inst|pixel_column\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(2),
	datab => \inst|pixel_column\(3),
	datad => VCC,
	combout => \inst11|Add6~0_combout\,
	cout => \inst11|Add6~1\);

-- Location: LCCOMB_X27_Y20_N8
\inst11|Add9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add9~2_combout\ = (\inst11|bullet_y_pos\(4) & (!\inst11|Add9~1\)) # (!\inst11|bullet_y_pos\(4) & ((\inst11|Add9~1\) # (GND)))
-- \inst11|Add9~3\ = CARRY((!\inst11|Add9~1\) # (!\inst11|bullet_y_pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|bullet_y_pos\(4),
	datad => VCC,
	cin => \inst11|Add9~1\,
	combout => \inst11|Add9~2_combout\,
	cout => \inst11|Add9~3\);

-- Location: LCCOMB_X27_Y20_N10
\inst11|Add9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add9~4_combout\ = (\inst11|bullet_y_pos\(5) & (\inst11|Add9~3\ $ (GND))) # (!\inst11|bullet_y_pos\(5) & (!\inst11|Add9~3\ & VCC))
-- \inst11|Add9~5\ = CARRY((\inst11|bullet_y_pos\(5) & !\inst11|Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_y_pos\(5),
	datad => VCC,
	cin => \inst11|Add9~3\,
	combout => \inst11|Add9~4_combout\,
	cout => \inst11|Add9~5\);

-- Location: LCCOMB_X27_Y20_N12
\inst11|Add9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add9~6_combout\ = (\inst11|bullet_y_pos\(6) & (!\inst11|Add9~5\)) # (!\inst11|bullet_y_pos\(6) & ((\inst11|Add9~5\) # (GND)))
-- \inst11|Add9~7\ = CARRY((!\inst11|Add9~5\) # (!\inst11|bullet_y_pos\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_y_pos\(6),
	datad => VCC,
	cin => \inst11|Add9~5\,
	combout => \inst11|Add9~6_combout\,
	cout => \inst11|Add9~7\);

-- Location: LCCOMB_X27_Y20_N14
\inst11|Add9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add9~8_combout\ = (\inst11|bullet_y_pos\(7) & (\inst11|Add9~7\ $ (GND))) # (!\inst11|bullet_y_pos\(7) & (!\inst11|Add9~7\ & VCC))
-- \inst11|Add9~9\ = CARRY((\inst11|bullet_y_pos\(7) & !\inst11|Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|bullet_y_pos\(7),
	datad => VCC,
	cin => \inst11|Add9~7\,
	combout => \inst11|Add9~8_combout\,
	cout => \inst11|Add9~9\);

-- Location: LCCOMB_X27_Y20_N16
\inst11|Add9~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add9~10_combout\ = (\inst11|bullet_y_pos\(8) & (!\inst11|Add9~9\)) # (!\inst11|bullet_y_pos\(8) & ((\inst11|Add9~9\) # (GND)))
-- \inst11|Add9~11\ = CARRY((!\inst11|Add9~9\) # (!\inst11|bullet_y_pos\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|bullet_y_pos\(8),
	datad => VCC,
	cin => \inst11|Add9~9\,
	combout => \inst11|Add9~10_combout\,
	cout => \inst11|Add9~11\);

-- Location: LCCOMB_X27_Y20_N18
\inst11|Add9~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add9~12_combout\ = (\inst11|bullet_y_pos\(9) & (\inst11|Add9~11\ $ (GND))) # (!\inst11|bullet_y_pos\(9) & (!\inst11|Add9~11\ & VCC))
-- \inst11|Add9~13\ = CARRY((\inst11|bullet_y_pos\(9) & !\inst11|Add9~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_y_pos\(9),
	datad => VCC,
	cin => \inst11|Add9~11\,
	combout => \inst11|Add9~12_combout\,
	cout => \inst11|Add9~13\);

-- Location: LCCOMB_X32_Y20_N18
\inst11|Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add8~0_combout\ = (\inst|pixel_row\(2) & (\inst|pixel_row\(3) $ (VCC))) # (!\inst|pixel_row\(2) & (\inst|pixel_row\(3) & VCC))
-- \inst11|Add8~1\ = CARRY((\inst|pixel_row\(2) & \inst|pixel_row\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(2),
	datab => \inst|pixel_row\(3),
	datad => VCC,
	combout => \inst11|Add8~0_combout\,
	cout => \inst11|Add8~1\);

-- Location: LCCOMB_X32_Y20_N20
\inst11|Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add8~2_combout\ = (\inst|pixel_row\(4) & (!\inst11|Add8~1\)) # (!\inst|pixel_row\(4) & ((\inst11|Add8~1\) # (GND)))
-- \inst11|Add8~3\ = CARRY((!\inst11|Add8~1\) # (!\inst|pixel_row\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_row\(4),
	datad => VCC,
	cin => \inst11|Add8~1\,
	combout => \inst11|Add8~2_combout\,
	cout => \inst11|Add8~3\);

-- Location: LCCOMB_X32_Y20_N22
\inst11|Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add8~4_combout\ = (\inst|pixel_row\(5) & (\inst11|Add8~3\ $ (GND))) # (!\inst|pixel_row\(5) & (!\inst11|Add8~3\ & VCC))
-- \inst11|Add8~5\ = CARRY((\inst|pixel_row\(5) & !\inst11|Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_row\(5),
	datad => VCC,
	cin => \inst11|Add8~3\,
	combout => \inst11|Add8~4_combout\,
	cout => \inst11|Add8~5\);

-- Location: LCCOMB_X32_Y20_N24
\inst11|Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add8~6_combout\ = (\inst|pixel_row\(6) & (!\inst11|Add8~5\)) # (!\inst|pixel_row\(6) & ((\inst11|Add8~5\) # (GND)))
-- \inst11|Add8~7\ = CARRY((!\inst11|Add8~5\) # (!\inst|pixel_row\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_row\(6),
	datad => VCC,
	cin => \inst11|Add8~5\,
	combout => \inst11|Add8~6_combout\,
	cout => \inst11|Add8~7\);

-- Location: LCCOMB_X32_Y20_N26
\inst11|Add8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add8~8_combout\ = (\inst|pixel_row\(7) & (\inst11|Add8~7\ $ (GND))) # (!\inst|pixel_row\(7) & (!\inst11|Add8~7\ & VCC))
-- \inst11|Add8~9\ = CARRY((\inst|pixel_row\(7) & !\inst11|Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(7),
	datad => VCC,
	cin => \inst11|Add8~7\,
	combout => \inst11|Add8~8_combout\,
	cout => \inst11|Add8~9\);

-- Location: LCCOMB_X32_Y20_N28
\inst11|Add8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add8~10_combout\ = (\inst|pixel_row\(8) & (!\inst11|Add8~9\)) # (!\inst|pixel_row\(8) & ((\inst11|Add8~9\) # (GND)))
-- \inst11|Add8~11\ = CARRY((!\inst11|Add8~9\) # (!\inst|pixel_row\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(8),
	datad => VCC,
	cin => \inst11|Add8~9\,
	combout => \inst11|Add8~10_combout\,
	cout => \inst11|Add8~11\);

-- Location: LCCOMB_X32_Y20_N30
\inst11|Add8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add8~12_combout\ = !\inst11|Add8~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst11|Add8~11\,
	combout => \inst11|Add8~12_combout\);

-- Location: LCCOMB_X32_Y20_N0
\inst11|LessThan10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan10~1_cout\ = CARRY((!\inst|pixel_row\(1) & \inst11|bullet_y_pos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(1),
	datab => \inst11|bullet_y_pos\(1),
	datad => VCC,
	cout => \inst11|LessThan10~1_cout\);

-- Location: LCCOMB_X32_Y20_N2
\inst11|LessThan10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan10~3_cout\ = CARRY((\inst11|bullet_y_pos\(2) & (!\inst|pixel_row\(2) & !\inst11|LessThan10~1_cout\)) # (!\inst11|bullet_y_pos\(2) & ((!\inst11|LessThan10~1_cout\) # (!\inst|pixel_row\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_y_pos\(2),
	datab => \inst|pixel_row\(2),
	datad => VCC,
	cin => \inst11|LessThan10~1_cout\,
	cout => \inst11|LessThan10~3_cout\);

-- Location: LCCOMB_X32_Y20_N4
\inst11|LessThan10~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan10~5_cout\ = CARRY((\inst11|bullet_y_pos\(3) & ((!\inst11|LessThan10~3_cout\) # (!\inst11|Add8~0_combout\))) # (!\inst11|bullet_y_pos\(3) & (!\inst11|Add8~0_combout\ & !\inst11|LessThan10~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_y_pos\(3),
	datab => \inst11|Add8~0_combout\,
	datad => VCC,
	cin => \inst11|LessThan10~3_cout\,
	cout => \inst11|LessThan10~5_cout\);

-- Location: LCCOMB_X32_Y20_N6
\inst11|LessThan10~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan10~7_cout\ = CARRY((\inst11|bullet_y_pos\(4) & (\inst11|Add8~2_combout\ & !\inst11|LessThan10~5_cout\)) # (!\inst11|bullet_y_pos\(4) & ((\inst11|Add8~2_combout\) # (!\inst11|LessThan10~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_y_pos\(4),
	datab => \inst11|Add8~2_combout\,
	datad => VCC,
	cin => \inst11|LessThan10~5_cout\,
	cout => \inst11|LessThan10~7_cout\);

-- Location: LCCOMB_X32_Y20_N8
\inst11|LessThan10~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan10~9_cout\ = CARRY((\inst11|Add8~4_combout\ & (\inst11|bullet_y_pos\(5) & !\inst11|LessThan10~7_cout\)) # (!\inst11|Add8~4_combout\ & ((\inst11|bullet_y_pos\(5)) # (!\inst11|LessThan10~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add8~4_combout\,
	datab => \inst11|bullet_y_pos\(5),
	datad => VCC,
	cin => \inst11|LessThan10~7_cout\,
	cout => \inst11|LessThan10~9_cout\);

-- Location: LCCOMB_X32_Y20_N10
\inst11|LessThan10~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan10~11_cout\ = CARRY((\inst11|bullet_y_pos\(6) & (\inst11|Add8~6_combout\ & !\inst11|LessThan10~9_cout\)) # (!\inst11|bullet_y_pos\(6) & ((\inst11|Add8~6_combout\) # (!\inst11|LessThan10~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_y_pos\(6),
	datab => \inst11|Add8~6_combout\,
	datad => VCC,
	cin => \inst11|LessThan10~9_cout\,
	cout => \inst11|LessThan10~11_cout\);

-- Location: LCCOMB_X32_Y20_N12
\inst11|LessThan10~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan10~13_cout\ = CARRY((\inst11|Add8~8_combout\ & (\inst11|bullet_y_pos\(7) & !\inst11|LessThan10~11_cout\)) # (!\inst11|Add8~8_combout\ & ((\inst11|bullet_y_pos\(7)) # (!\inst11|LessThan10~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add8~8_combout\,
	datab => \inst11|bullet_y_pos\(7),
	datad => VCC,
	cin => \inst11|LessThan10~11_cout\,
	cout => \inst11|LessThan10~13_cout\);

-- Location: LCCOMB_X32_Y20_N14
\inst11|LessThan10~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan10~15_cout\ = CARRY((\inst11|bullet_y_pos\(8) & (\inst11|Add8~10_combout\ & !\inst11|LessThan10~13_cout\)) # (!\inst11|bullet_y_pos\(8) & ((\inst11|Add8~10_combout\) # (!\inst11|LessThan10~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_y_pos\(8),
	datab => \inst11|Add8~10_combout\,
	datad => VCC,
	cin => \inst11|LessThan10~13_cout\,
	cout => \inst11|LessThan10~15_cout\);

-- Location: LCCOMB_X32_Y20_N16
\inst11|LessThan10~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan10~16_combout\ = (\inst11|Add8~12_combout\ & (!\inst11|LessThan10~15_cout\ & \inst11|bullet_y_pos\(9))) # (!\inst11|Add8~12_combout\ & ((\inst11|bullet_y_pos\(9)) # (!\inst11|LessThan10~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add8~12_combout\,
	datad => \inst11|bullet_y_pos\(9),
	cin => \inst11|LessThan10~15_cout\,
	combout => \inst11|LessThan10~16_combout\);

-- Location: LCCOMB_X27_Y20_N20
\inst11|Add9~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add9~14_combout\ = \inst11|Add9~13\ $ (\inst11|bullet_y_pos\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst11|bullet_y_pos\(10),
	cin => \inst11|Add9~13\,
	combout => \inst11|Add9~14_combout\);

-- Location: LCCOMB_X27_Y22_N10
\inst11|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add3~6_combout\ = (\inst11|tank_y_pos\(4) & (!\inst11|Add3~5\)) # (!\inst11|tank_y_pos\(4) & ((\inst11|Add3~5\) # (GND)))
-- \inst11|Add3~7\ = CARRY((!\inst11|Add3~5\) # (!\inst11|tank_y_pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|tank_y_pos\(4),
	datad => VCC,
	cin => \inst11|Add3~5\,
	combout => \inst11|Add3~6_combout\,
	cout => \inst11|Add3~7\);

-- Location: LCCOMB_X27_Y22_N12
\inst11|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add3~8_combout\ = (\inst11|tank_y_pos\(5) & (!\inst11|Add3~7\ & VCC)) # (!\inst11|tank_y_pos\(5) & (\inst11|Add3~7\ $ (GND)))
-- \inst11|Add3~9\ = CARRY((!\inst11|tank_y_pos\(5) & !\inst11|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_y_pos\(5),
	datad => VCC,
	cin => \inst11|Add3~7\,
	combout => \inst11|Add3~8_combout\,
	cout => \inst11|Add3~9\);

-- Location: LCCOMB_X27_Y22_N16
\inst11|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add3~12_combout\ = (\inst11|tank_y_pos\(7) & (\inst11|Add3~11\ $ (GND))) # (!\inst11|tank_y_pos\(7) & (!\inst11|Add3~11\ & VCC))
-- \inst11|Add3~13\ = CARRY((\inst11|tank_y_pos\(7) & !\inst11|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|tank_y_pos\(7),
	datad => VCC,
	cin => \inst11|Add3~11\,
	combout => \inst11|Add3~12_combout\,
	cout => \inst11|Add3~13\);

-- Location: LCCOMB_X22_Y19_N6
\inst11|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add1~2_combout\ = (\inst11|tank_x_pos\(2) & (!\inst11|Add1~1\)) # (!\inst11|tank_x_pos\(2) & ((\inst11|Add1~1\) # (GND)))
-- \inst11|Add1~3\ = CARRY((!\inst11|Add1~1\) # (!\inst11|tank_x_pos\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_pos\(2),
	datad => VCC,
	cin => \inst11|Add1~1\,
	combout => \inst11|Add1~2_combout\,
	cout => \inst11|Add1~3\);

-- Location: LCCOMB_X22_Y19_N14
\inst11|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add1~10_combout\ = (\inst11|tank_x_pos\(6) & (!\inst11|Add1~9\)) # (!\inst11|tank_x_pos\(6) & ((\inst11|Add1~9\) # (GND)))
-- \inst11|Add1~11\ = CARRY((!\inst11|Add1~9\) # (!\inst11|tank_x_pos\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|tank_x_pos\(6),
	datad => VCC,
	cin => \inst11|Add1~9\,
	combout => \inst11|Add1~10_combout\,
	cout => \inst11|Add1~11\);

-- Location: LCCOMB_X22_Y19_N18
\inst11|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add1~14_combout\ = (\inst11|tank_x_pos\(8) & (!\inst11|Add1~13\)) # (!\inst11|tank_x_pos\(8) & ((\inst11|Add1~13\) # (GND)))
-- \inst11|Add1~15\ = CARRY((!\inst11|Add1~13\) # (!\inst11|tank_x_pos\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|tank_x_pos\(8),
	datad => VCC,
	cin => \inst11|Add1~13\,
	combout => \inst11|Add1~14_combout\,
	cout => \inst11|Add1~15\);

-- Location: LCCOMB_X24_Y19_N8
\inst11|Add18~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add18~8_combout\ = (\inst11|tank_x_pos\(5) & ((GND) # (!\inst11|Add18~7\))) # (!\inst11|tank_x_pos\(5) & (\inst11|Add18~7\ $ (GND)))
-- \inst11|Add18~9\ = CARRY((\inst11|tank_x_pos\(5)) # (!\inst11|Add18~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_pos\(5),
	datad => VCC,
	cin => \inst11|Add18~7\,
	combout => \inst11|Add18~8_combout\,
	cout => \inst11|Add18~9\);

-- Location: LCCOMB_X24_Y19_N10
\inst11|Add18~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add18~10_combout\ = (\inst11|tank_x_pos\(6) & (\inst11|Add18~9\ & VCC)) # (!\inst11|tank_x_pos\(6) & (!\inst11|Add18~9\))
-- \inst11|Add18~11\ = CARRY((!\inst11|tank_x_pos\(6) & !\inst11|Add18~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_pos\(6),
	datad => VCC,
	cin => \inst11|Add18~9\,
	combout => \inst11|Add18~10_combout\,
	cout => \inst11|Add18~11\);

-- Location: LCCOMB_X24_Y19_N14
\inst11|Add18~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add18~14_combout\ = (\inst11|tank_x_pos\(8) & (\inst11|Add18~13\ & VCC)) # (!\inst11|tank_x_pos\(8) & (!\inst11|Add18~13\))
-- \inst11|Add18~15\ = CARRY((!\inst11|tank_x_pos\(8) & !\inst11|Add18~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_pos\(8),
	datad => VCC,
	cin => \inst11|Add18~13\,
	combout => \inst11|Add18~14_combout\,
	cout => \inst11|Add18~15\);

-- Location: LCCOMB_X24_Y19_N16
\inst11|Add18~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add18~16_combout\ = (\inst11|tank_x_pos\(9) & ((GND) # (!\inst11|Add18~15\))) # (!\inst11|tank_x_pos\(9) & (\inst11|Add18~15\ $ (GND)))
-- \inst11|Add18~17\ = CARRY((\inst11|tank_x_pos\(9)) # (!\inst11|Add18~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|tank_x_pos\(9),
	datad => VCC,
	cin => \inst11|Add18~15\,
	combout => \inst11|Add18~16_combout\,
	cout => \inst11|Add18~17\);

-- Location: LCCOMB_X26_Y22_N14
\inst11|Add10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add10~8_combout\ = (\inst11|tank_y_pos\(5) & (!\inst11|Add10~7\ & VCC)) # (!\inst11|tank_y_pos\(5) & (\inst11|Add10~7\ $ (GND)))
-- \inst11|Add10~9\ = CARRY((!\inst11|tank_y_pos\(5) & !\inst11|Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_y_pos\(5),
	datad => VCC,
	cin => \inst11|Add10~7\,
	combout => \inst11|Add10~8_combout\,
	cout => \inst11|Add10~9\);

-- Location: LCCOMB_X16_Y5_N2
\inst7|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~2_combout\ = (\inst7|i\(1) & (!\inst7|Add0~1\)) # (!\inst7|i\(1) & ((\inst7|Add0~1\) # (GND)))
-- \inst7|Add0~3\ = CARRY((!\inst7|Add0~1\) # (!\inst7|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(1),
	datad => VCC,
	cin => \inst7|Add0~1\,
	combout => \inst7|Add0~2_combout\,
	cout => \inst7|Add0~3\);

-- Location: LCCOMB_X16_Y5_N10
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

-- Location: LCCOMB_X16_Y5_N22
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

-- Location: LCCOMB_X16_Y5_N30
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

-- Location: LCCOMB_X16_Y4_N10
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

-- Location: LCCOMB_X16_Y4_N22
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

-- Location: LCCOMB_X16_Y4_N24
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

-- Location: LCCOMB_X16_Y4_N26
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

-- Location: LCCOMB_X16_Y4_N28
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

-- Location: LCCOMB_X16_Y4_N30
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

-- Location: LCCOMB_X27_Y23_N10
\inst|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~8_combout\ = (\inst|v_count\(4) & (\inst|Add1~7\ $ (GND))) # (!\inst|v_count\(4) & (!\inst|Add1~7\ & VCC))
-- \inst|Add1~9\ = CARRY((\inst|v_count\(4) & !\inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|v_count\(4),
	datad => VCC,
	cin => \inst|Add1~7\,
	combout => \inst|Add1~8_combout\,
	cout => \inst|Add1~9\);

-- Location: LCCOMB_X27_Y23_N12
\inst|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~10_combout\ = (\inst|v_count\(5) & (!\inst|Add1~9\)) # (!\inst|v_count\(5) & ((\inst|Add1~9\) # (GND)))
-- \inst|Add1~11\ = CARRY((!\inst|Add1~9\) # (!\inst|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|v_count\(5),
	datad => VCC,
	cin => \inst|Add1~9\,
	combout => \inst|Add1~10_combout\,
	cout => \inst|Add1~11\);

-- Location: FF_X30_Y17_N29
\inst1|new_cursor_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_column[9]~29_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_column[9]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_column\(9));

-- Location: LCCOMB_X30_Y17_N26
\inst1|new_cursor_column[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_column[8]~26_combout\ = ((\inst1|PACKET_CHAR2\(7) $ (\inst1|cursor_column\(8) $ (!\inst1|new_cursor_column[7]~25\)))) # (GND)
-- \inst1|new_cursor_column[8]~27\ = CARRY((\inst1|PACKET_CHAR2\(7) & ((\inst1|cursor_column\(8)) # (!\inst1|new_cursor_column[7]~25\))) # (!\inst1|PACKET_CHAR2\(7) & (\inst1|cursor_column\(8) & !\inst1|new_cursor_column[7]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PACKET_CHAR2\(7),
	datab => \inst1|cursor_column\(8),
	datad => VCC,
	cin => \inst1|new_cursor_column[7]~25\,
	combout => \inst1|new_cursor_column[8]~26_combout\,
	cout => \inst1|new_cursor_column[8]~27\);

-- Location: LCCOMB_X30_Y17_N28
\inst1|new_cursor_column[9]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_column[9]~29_combout\ = \inst1|PACKET_CHAR2\(7) $ (\inst1|new_cursor_column[8]~27\ $ (\inst1|cursor_column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PACKET_CHAR2\(7),
	datad => \inst1|cursor_column\(9),
	cin => \inst1|new_cursor_column[8]~27\,
	combout => \inst1|new_cursor_column[9]~29_combout\);

-- Location: FF_X27_Y15_N23
\inst1|inhibit_wait_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[7]~22_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(7));

-- Location: FF_X27_Y15_N13
\inst1|inhibit_wait_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[2]~12_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(2));

-- Location: FF_X27_Y15_N11
\inst1|inhibit_wait_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[1]~10_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(1));

-- Location: LCCOMB_X27_Y15_N10
\inst1|inhibit_wait_count[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[1]~10_combout\ = (\inst1|inhibit_wait_count\(1) & (\inst1|inhibit_wait_count\(0) $ (VCC))) # (!\inst1|inhibit_wait_count\(1) & (\inst1|inhibit_wait_count\(0) & VCC))
-- \inst1|inhibit_wait_count[1]~11\ = CARRY((\inst1|inhibit_wait_count\(1) & \inst1|inhibit_wait_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inhibit_wait_count\(1),
	datab => \inst1|inhibit_wait_count\(0),
	datad => VCC,
	combout => \inst1|inhibit_wait_count[1]~10_combout\,
	cout => \inst1|inhibit_wait_count[1]~11\);

-- Location: LCCOMB_X27_Y15_N12
\inst1|inhibit_wait_count[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[2]~12_combout\ = (\inst1|inhibit_wait_count\(2) & (!\inst1|inhibit_wait_count[1]~11\)) # (!\inst1|inhibit_wait_count\(2) & ((\inst1|inhibit_wait_count[1]~11\) # (GND)))
-- \inst1|inhibit_wait_count[2]~13\ = CARRY((!\inst1|inhibit_wait_count[1]~11\) # (!\inst1|inhibit_wait_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inhibit_wait_count\(2),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[1]~11\,
	combout => \inst1|inhibit_wait_count[2]~12_combout\,
	cout => \inst1|inhibit_wait_count[2]~13\);

-- Location: LCCOMB_X27_Y15_N22
\inst1|inhibit_wait_count[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[7]~22_combout\ = (\inst1|inhibit_wait_count\(7) & (\inst1|inhibit_wait_count[6]~21\ $ (GND))) # (!\inst1|inhibit_wait_count\(7) & (!\inst1|inhibit_wait_count[6]~21\ & VCC))
-- \inst1|inhibit_wait_count[7]~23\ = CARRY((\inst1|inhibit_wait_count\(7) & !\inst1|inhibit_wait_count[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inhibit_wait_count\(7),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[6]~21\,
	combout => \inst1|inhibit_wait_count[7]~22_combout\,
	cout => \inst1|inhibit_wait_count[7]~23\);

-- Location: FF_X28_Y17_N11
\inst1|PACKET_COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_COUNT[0]~feeder_combout\,
	ena => \inst1|PACKET_CHAR2[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_COUNT\(0));

-- Location: LCCOMB_X27_Y21_N0
\inst11|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan7~0_combout\ = (\inst|pixel_row\(5)) # ((\inst|pixel_row\(1) & (\inst|pixel_row\(2) & \inst|pixel_row\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(1),
	datab => \inst|pixel_row\(2),
	datac => \inst|pixel_row\(5),
	datad => \inst|pixel_row\(0),
	combout => \inst11|LessThan7~0_combout\);

-- Location: LCCOMB_X27_Y21_N4
\inst15|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|process_0~2_combout\ = (\inst|pixel_row\(4)) # ((\inst11|LessThan7~0_combout\) # ((\inst|pixel_row\(3)) # (\inst|pixel_row\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(4),
	datab => \inst11|LessThan7~0_combout\,
	datac => \inst|pixel_row\(3),
	datad => \inst|pixel_row\(6),
	combout => \inst15|process_0~2_combout\);

-- Location: LCCOMB_X27_Y21_N2
\inst15|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|process_0~3_combout\ = (\inst11|Add2~6_combout\ & (\inst11|Add2~10_combout\ & (\inst11|Add2~4_combout\ & \inst11|Add2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add2~6_combout\,
	datab => \inst11|Add2~10_combout\,
	datac => \inst11|Add2~4_combout\,
	datad => \inst11|Add2~8_combout\,
	combout => \inst15|process_0~3_combout\);

-- Location: LCCOMB_X27_Y21_N28
\inst15|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|process_0~4_combout\ = (\inst11|Add2~14_combout\ & ((\inst11|Add2~12_combout\) # ((\inst11|Add2~2_combout\ & \inst15|process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add2~2_combout\,
	datab => \inst11|Add2~14_combout\,
	datac => \inst11|Add2~12_combout\,
	datad => \inst15|process_0~3_combout\,
	combout => \inst15|process_0~4_combout\);

-- Location: LCCOMB_X27_Y21_N8
\inst15|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|process_0~5_combout\ = (\inst14|LessThan44~0_combout\ & (!\inst15|process_0~2_combout\ & ((\inst11|Add2~16_combout\) # (\inst15|process_0~4_combout\)))) # (!\inst14|LessThan44~0_combout\ & (((\inst11|Add2~16_combout\) # 
-- (\inst15|process_0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LessThan44~0_combout\,
	datab => \inst15|process_0~2_combout\,
	datac => \inst11|Add2~16_combout\,
	datad => \inst15|process_0~4_combout\,
	combout => \inst15|process_0~5_combout\);

-- Location: FF_X31_Y19_N27
\inst11|bullet_x_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|bullet_x_pos~3_combout\,
	ena => \inst11|bullet_x_pos[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|bullet_x_pos\(8));

-- Location: FF_X32_Y19_N31
\inst11|bullet_x_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|bullet_x_pos~5_combout\,
	ena => \inst11|bullet_x_pos[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|bullet_x_pos\(6));

-- Location: FF_X31_Y19_N7
\inst11|bullet_x_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|bullet_x_pos~7_combout\,
	ena => \inst11|bullet_x_pos[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|bullet_x_pos\(4));

-- Location: LCCOMB_X28_Y20_N6
\inst15|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|process_0~9_combout\ = (!\inst11|Add7~16_combout\ & (!\inst11|Add9~14_combout\ & (!\inst11|Add6~14_combout\ & !\inst11|LessThan10~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add7~16_combout\,
	datab => \inst11|Add9~14_combout\,
	datac => \inst11|Add6~14_combout\,
	datad => \inst11|LessThan10~16_combout\,
	combout => \inst15|process_0~9_combout\);

-- Location: FF_X27_Y22_N31
\inst11|tank_y_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|tank_y_pos[5]~6_combout\,
	ena => \inst11|tank_y_pos[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|tank_y_pos\(5));

-- Location: LCCOMB_X31_Y23_N6
\inst|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~1_combout\ = (\inst|h_count\(3)) # ((\inst|h_count\(1) & (\inst|h_count\(0) & !\inst|h_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(3),
	datab => \inst|h_count\(1),
	datac => \inst|h_count\(0),
	datad => \inst|h_count\(5),
	combout => \inst|process_0~1_combout\);

-- Location: LCCOMB_X31_Y23_N12
\inst|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~2_combout\ = (\inst|h_count\(4) & ((\inst|process_0~1_combout\) # (\inst|h_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~1_combout\,
	datac => \inst|h_count\(2),
	datad => \inst|h_count\(4),
	combout => \inst|process_0~2_combout\);

-- Location: FF_X16_Y5_N11
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

-- Location: FF_X16_Y5_N23
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

-- Location: LCCOMB_X17_Y5_N28
\inst7|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~2_combout\ = (!\inst7|i\(10) & (!\inst7|i\(11) & (!\inst7|i\(8) & !\inst7|i\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(10),
	datab => \inst7|i\(11),
	datac => \inst7|i\(8),
	datad => \inst7|i\(9),
	combout => \inst7|Equal0~2_combout\);

-- Location: FF_X16_Y5_N31
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

-- Location: FF_X16_Y4_N11
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

-- Location: FF_X16_Y4_N25
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

-- Location: FF_X16_Y4_N27
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

-- Location: FF_X16_Y4_N29
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

-- Location: FF_X16_Y4_N31
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

-- Location: LCCOMB_X17_Y4_N12
\inst7|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~9_combout\ = (!\inst7|i\(28) & (!\inst7|i\(31) & (!\inst7|i\(29) & !\inst7|i\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(28),
	datab => \inst7|i\(31),
	datac => \inst7|i\(29),
	datad => \inst7|i\(30),
	combout => \inst7|Equal0~9_combout\);

-- Location: LCCOMB_X28_Y23_N22
\inst|LessThan7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan7~3_combout\ = (!\inst|v_count\(10) & !\inst|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|v_count\(10),
	datad => \inst|v_count\(9),
	combout => \inst|LessThan7~3_combout\);

-- Location: LCCOMB_X30_Y22_N22
\inst14|LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LessThan4~1_combout\ = (\inst|pixel_column\(5) & ((\inst|pixel_column\(4)) # (!\inst14|LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LessThan4~0_combout\,
	datac => \inst|pixel_column\(5),
	datad => \inst|pixel_column\(4),
	combout => \inst14|LessThan4~1_combout\);

-- Location: LCCOMB_X31_Y20_N12
\inst14|process_0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~32_combout\ = (\inst|pixel_column\(7)) # ((\inst|pixel_column\(5) & \inst|pixel_column\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(5),
	datac => \inst|pixel_column\(7),
	datad => \inst|pixel_column\(6),
	combout => \inst14|process_0~32_combout\);

-- Location: LCCOMB_X29_Y19_N30
\inst14|character_address[4]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[4]~25_combout\ = (\inst15|s_game_mode\(1) & (\inst14|process_0~71_combout\ & !\inst15|s_game_mode\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|s_game_mode\(1),
	datac => \inst14|process_0~71_combout\,
	datad => \inst15|s_game_mode\(0),
	combout => \inst14|character_address[4]~25_combout\);

-- Location: LCCOMB_X28_Y21_N30
\inst14|character_address[5]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[5]~31_combout\ = (\inst14|character_address[5]~30_combout\ & (((!\inst14|LessThan38~1_combout\ & !\inst|pixel_row\(2))) # (!\inst14|LessThan38~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LessThan38~1_combout\,
	datab => \inst14|LessThan38~0_combout\,
	datac => \inst14|character_address[5]~30_combout\,
	datad => \inst|pixel_row\(2),
	combout => \inst14|character_address[5]~31_combout\);

-- Location: LCCOMB_X28_Y21_N8
\inst14|process_0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~52_combout\ = (\inst|pixel_column\(6) & (\inst|pixel_column\(7) & \inst|pixel_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_column\(6),
	datac => \inst|pixel_column\(7),
	datad => \inst|pixel_column\(5),
	combout => \inst14|process_0~52_combout\);

-- Location: LCCOMB_X30_Y20_N10
\inst14|character_address[5]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[5]~32_combout\ = (\inst|pixel_column\(5) & ((\inst|pixel_column\(6)) # (\inst|pixel_column\(4) $ (!\inst|pixel_column\(7))))) # (!\inst|pixel_column\(5) & ((\inst|pixel_column\(4) $ (!\inst|pixel_column\(7))) # 
-- (!\inst|pixel_column\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(5),
	datab => \inst|pixel_column\(6),
	datac => \inst|pixel_column\(4),
	datad => \inst|pixel_column\(7),
	combout => \inst14|character_address[5]~32_combout\);

-- Location: LCCOMB_X28_Y21_N6
\inst14|character_address[5]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[5]~33_combout\ = (!\inst|pixel_column\(9) & ((\inst14|process_0~52_combout\) # ((\inst|pixel_column\(8) & \inst14|character_address[5]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(9),
	datab => \inst14|process_0~52_combout\,
	datac => \inst|pixel_column\(8),
	datad => \inst14|character_address[5]~32_combout\,
	combout => \inst14|character_address[5]~33_combout\);

-- Location: LCCOMB_X30_Y20_N22
\inst14|character_address[5]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[5]~34_combout\ = (!\inst|pixel_column\(4) & (!\inst|pixel_column\(6) & (!\inst|pixel_column\(5) & !\inst|pixel_column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(4),
	datab => \inst|pixel_column\(6),
	datac => \inst|pixel_column\(5),
	datad => \inst|pixel_column\(7),
	combout => \inst14|character_address[5]~34_combout\);

-- Location: LCCOMB_X28_Y21_N20
\inst14|character_address[5]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[5]~35_combout\ = (\inst14|LessThan4~0_combout\ & ((\inst|pixel_column\(9) & (!\inst|pixel_column\(8) & \inst14|character_address[5]~34_combout\)) # (!\inst|pixel_column\(9) & (\inst|pixel_column\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(9),
	datab => \inst14|LessThan4~0_combout\,
	datac => \inst|pixel_column\(8),
	datad => \inst14|character_address[5]~34_combout\,
	combout => \inst14|character_address[5]~35_combout\);

-- Location: LCCOMB_X28_Y21_N12
\inst14|character_address[5]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[5]~37_combout\ = ((\inst14|character_address[5]~31_combout\ & ((\inst14|character_address[5]~35_combout\) # (\inst14|character_address[5]~33_combout\)))) # (!\inst14|character_address[5]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[5]~36_combout\,
	datab => \inst14|character_address[5]~35_combout\,
	datac => \inst14|character_address[5]~31_combout\,
	datad => \inst14|character_address[5]~33_combout\,
	combout => \inst14|character_address[5]~37_combout\);

-- Location: LCCOMB_X30_Y20_N6
\inst14|LessThan18~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LessThan18~2_combout\ = ((\inst|pixel_column\(4)) # ((\inst|pixel_column\(7)) # (!\inst14|LessThan4~0_combout\))) # (!\inst14|character_address[1]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[1]~21_combout\,
	datab => \inst|pixel_column\(4),
	datac => \inst14|LessThan4~0_combout\,
	datad => \inst|pixel_column\(7),
	combout => \inst14|LessThan18~2_combout\);

-- Location: LCCOMB_X29_Y16_N28
\inst11|player_x_pos[4]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|player_x_pos[4]~33_combout\ = (\inst11|player_x_pos\(5) & ((\inst11|player_x_pos\(3)) # ((\inst11|player_x_pos\(2) & \inst11|player_x_pos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|player_x_pos\(2),
	datab => \inst11|player_x_pos\(3),
	datac => \inst11|player_x_pos\(5),
	datad => \inst11|player_x_pos\(1),
	combout => \inst11|player_x_pos[4]~33_combout\);

-- Location: LCCOMB_X29_Y16_N2
\inst11|player_x_pos[4]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|player_x_pos[4]~34_combout\ = (\inst11|player_x_pos\(8)) # ((\inst11|player_x_pos\(4) & (\inst11|player_x_pos\(6) & \inst11|player_x_pos[4]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|player_x_pos\(4),
	datab => \inst11|player_x_pos\(8),
	datac => \inst11|player_x_pos\(6),
	datad => \inst11|player_x_pos[4]~33_combout\,
	combout => \inst11|player_x_pos[4]~34_combout\);

-- Location: LCCOMB_X29_Y16_N0
\inst11|player_x_pos[4]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|player_x_pos[4]~37_combout\ = ((!\inst11|player_x_pos\(2) & ((!\inst11|player_x_pos\(0)) # (!\inst11|player_x_pos\(1))))) # (!\inst11|player_x_pos\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|player_x_pos\(1),
	datab => \inst11|player_x_pos\(3),
	datac => \inst11|player_x_pos\(0),
	datad => \inst11|player_x_pos\(2),
	combout => \inst11|player_x_pos[4]~37_combout\);

-- Location: LCCOMB_X29_Y16_N6
\inst11|player_x_pos[4]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|player_x_pos[4]~38_combout\ = (!\inst11|player_x_pos\(5) & (!\inst11|player_x_pos\(4) & (!\inst11|player_x_pos\(7) & !\inst11|player_x_pos\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|player_x_pos\(5),
	datab => \inst11|player_x_pos\(4),
	datac => \inst11|player_x_pos\(7),
	datad => \inst11|player_x_pos\(8),
	combout => \inst11|player_x_pos[4]~38_combout\);

-- Location: LCCOMB_X29_Y16_N26
\inst11|player_x_pos[4]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|player_x_pos[4]~39_combout\ = (\inst11|player_x_pos[4]~38_combout\ & (!\inst11|player_x_pos\(9) & (!\inst11|player_x_pos\(6) & \inst11|player_x_pos[4]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|player_x_pos[4]~38_combout\,
	datab => \inst11|player_x_pos\(9),
	datac => \inst11|player_x_pos\(6),
	datad => \inst11|player_x_pos[4]~37_combout\,
	combout => \inst11|player_x_pos[4]~39_combout\);

-- Location: FF_X31_Y16_N11
\inst1|cursor_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_column~10_combout\,
	ena => \inst1|cursor_column[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_column\(3));

-- Location: LCCOMB_X31_Y19_N26
\inst11|bullet_x_pos~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|bullet_x_pos~3_combout\ = (\inst11|player_x_pos\(8)) # (!\inst11|move_tank~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|player_x_pos\(8),
	datad => \inst11|move_tank~0_combout\,
	combout => \inst11|bullet_x_pos~3_combout\);

-- Location: LCCOMB_X32_Y19_N30
\inst11|bullet_x_pos~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|bullet_x_pos~5_combout\ = (\inst11|player_x_pos\(6)) # (!\inst11|move_tank~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|player_x_pos\(6),
	datad => \inst11|move_tank~0_combout\,
	combout => \inst11|bullet_x_pos~5_combout\);

-- Location: LCCOMB_X31_Y19_N6
\inst11|bullet_x_pos~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|bullet_x_pos~7_combout\ = (\inst11|player_x_pos\(4)) # (!\inst11|move_tank~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|move_tank~0_combout\,
	datad => \inst11|player_x_pos\(4),
	combout => \inst11|bullet_x_pos~7_combout\);

-- Location: FF_X29_Y19_N21
\inst11|tank_x_motion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|tank_x_motion~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|tank_x_motion\(1));

-- Location: FF_X29_Y19_N19
\inst11|tank_x_motion[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|tank_x_motion~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|tank_x_motion\(0));

-- Location: LCCOMB_X32_Y23_N6
\inst|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|h_count\(9) & (!\inst|h_count\(10) & (\inst|h_count\(0) & \inst|h_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(9),
	datab => \inst|h_count\(10),
	datac => \inst|h_count\(0),
	datad => \inst|h_count\(1),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X31_Y23_N10
\inst|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (\inst|h_count\(2)) # (((\inst|h_count\(8)) # (!\inst|h_count\(5))) # (!\inst|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(2),
	datab => \inst|h_count\(7),
	datac => \inst|h_count\(8),
	datad => \inst|h_count\(5),
	combout => \inst|Equal1~0_combout\);

-- Location: LCCOMB_X32_Y22_N16
\inst14|font_row[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|font_row[0]~0_combout\ = (\inst14|font_col[1]~1_combout\ & ((\inst|pixel_row\(1)))) # (!\inst14|font_col[1]~1_combout\ & (\inst|pixel_row\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_row\(2),
	datac => \inst|pixel_row\(1),
	datad => \inst14|font_col[1]~1_combout\,
	combout => \inst14|font_row[0]~0_combout\);

-- Location: LCCOMB_X31_Y21_N6
\inst14|character_address[0]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[0]~57_combout\ = (\inst14|process_0~49_combout\ & ((\inst14|character_address[0]~50_combout\) # (!\inst14|process_0~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|process_0~49_combout\,
	datac => \inst14|character_address[0]~50_combout\,
	datad => \inst14|process_0~70_combout\,
	combout => \inst14|character_address[0]~57_combout\);

-- Location: LCCOMB_X30_Y23_N12
\inst14|character_address[0]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[0]~60_combout\ = (((\inst14|process_0~70_combout\) # (!\inst14|process_0~44_combout\)) # (!\inst14|process_0~72_combout\)) # (!\inst14|process_0~71_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~71_combout\,
	datab => \inst14|process_0~72_combout\,
	datac => \inst14|process_0~44_combout\,
	datad => \inst14|process_0~70_combout\,
	combout => \inst14|character_address[0]~60_combout\);

-- Location: LCCOMB_X30_Y23_N30
\inst14|character_address[0]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[0]~61_combout\ = (\inst14|process_0~24_combout\ & (((\inst14|character_address[0]~134_combout\ & \inst14|Equal0~0_combout\)))) # (!\inst14|process_0~24_combout\ & ((\inst14|character_address[0]~46_combout\) # 
-- ((\inst14|character_address[0]~134_combout\ & \inst14|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~24_combout\,
	datab => \inst14|character_address[0]~46_combout\,
	datac => \inst14|character_address[0]~134_combout\,
	datad => \inst14|Equal0~0_combout\,
	combout => \inst14|character_address[0]~61_combout\);

-- Location: LCCOMB_X30_Y22_N12
\inst14|character_address[0]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[0]~64_combout\ = (!\inst14|process_0~36_combout\ & (\inst14|character_address[1]~136_combout\ & ((\inst14|process_0~33_combout\) # (\inst14|process_0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~36_combout\,
	datab => \inst14|process_0~33_combout\,
	datac => \inst14|character_address[1]~136_combout\,
	datad => \inst14|process_0~26_combout\,
	combout => \inst14|character_address[0]~64_combout\);

-- Location: LCCOMB_X31_Y21_N22
\inst14|character_address[1]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[1]~70_combout\ = (\inst14|process_0~72_combout\ & (\inst14|process_0~44_combout\ & \inst14|process_0~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|process_0~72_combout\,
	datac => \inst14|process_0~44_combout\,
	datad => \inst14|process_0~70_combout\,
	combout => \inst14|character_address[1]~70_combout\);

-- Location: LCCOMB_X32_Y21_N10
\inst14|character_address[1]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[1]~77_combout\ = (!\inst14|character_address[0]~54_combout\ & (((!\inst14|process_0~69_combout\ & \inst14|character_address[1]~75_combout\)) # (!\inst14|process_0~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~69_combout\,
	datab => \inst14|character_address[0]~54_combout\,
	datac => \inst14|process_0~74_combout\,
	datad => \inst14|character_address[1]~75_combout\,
	combout => \inst14|character_address[1]~77_combout\);

-- Location: LCCOMB_X31_Y21_N14
\inst14|character_address[1]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[1]~79_combout\ = (\inst14|process_0~55_combout\ & (\inst14|character_address[5]~36_combout\ & (\inst14|process_0~49_combout\ & !\inst14|process_0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~55_combout\,
	datab => \inst14|character_address[5]~36_combout\,
	datac => \inst14|process_0~49_combout\,
	datad => \inst14|process_0~38_combout\,
	combout => \inst14|character_address[1]~79_combout\);

-- Location: LCCOMB_X31_Y21_N18
\inst14|character_address[1]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[1]~80_combout\ = (\inst14|character_address[1]~79_combout\) # ((\inst14|process_0~55_combout\ & (\inst14|process_0~49_combout\ & !\inst14|process_0~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~55_combout\,
	datab => \inst14|process_0~49_combout\,
	datac => \inst14|process_0~72_combout\,
	datad => \inst14|character_address[1]~79_combout\,
	combout => \inst14|character_address[1]~80_combout\);

-- Location: LCCOMB_X29_Y22_N8
\inst14|character_address[2]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[2]~95_combout\ = (\inst14|character_address[2]~131_combout\ & ((\inst14|process_0~58_combout\) # ((!\inst14|process_0~73_combout\ & \inst14|process_0~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~73_combout\,
	datab => \inst14|character_address[2]~131_combout\,
	datac => \inst14|process_0~58_combout\,
	datad => \inst14|process_0~74_combout\,
	combout => \inst14|character_address[2]~95_combout\);

-- Location: LCCOMB_X29_Y22_N10
\inst14|character_address[2]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[2]~96_combout\ = (\inst14|character_address[0]~132_combout\) # ((\inst14|character_address[2]~95_combout\) # ((\inst14|process_0~49_combout\ & \inst14|process_0~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~49_combout\,
	datab => \inst14|character_address[0]~132_combout\,
	datac => \inst14|character_address[2]~95_combout\,
	datad => \inst14|process_0~69_combout\,
	combout => \inst14|character_address[2]~96_combout\);

-- Location: LCCOMB_X30_Y19_N28
\inst14|character_address[3]~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[3]~107_combout\ = (\inst14|LessThan24~0_combout\) # ((\inst|pixel_column\(7) & ((\inst|pixel_column\(5)) # (\inst|pixel_column\(6)))) # (!\inst|pixel_column\(7) & ((!\inst|pixel_column\(6)) # (!\inst|pixel_column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(7),
	datab => \inst|pixel_column\(5),
	datac => \inst14|LessThan24~0_combout\,
	datad => \inst|pixel_column\(6),
	combout => \inst14|character_address[3]~107_combout\);

-- Location: LCCOMB_X33_Y20_N20
\inst14|character_address[3]~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[3]~112_combout\ = (\inst14|character_address[2]~91_combout\ & (!\inst14|process_0~64_combout\ & ((\inst14|process_0~44_combout\) # (!\inst14|process_0~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~49_combout\,
	datab => \inst14|process_0~44_combout\,
	datac => \inst14|character_address[2]~91_combout\,
	datad => \inst14|process_0~64_combout\,
	combout => \inst14|character_address[3]~112_combout\);

-- Location: LCCOMB_X31_Y21_N2
\inst14|character_address[4]~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[4]~115_combout\ = (\inst14|process_0~55_combout\ & (\inst14|process_0~72_combout\ & (!\inst14|process_0~44_combout\ & \inst14|process_0~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~55_combout\,
	datab => \inst14|process_0~72_combout\,
	datac => \inst14|process_0~44_combout\,
	datad => \inst14|process_0~49_combout\,
	combout => \inst14|character_address[4]~115_combout\);

-- Location: LCCOMB_X30_Y21_N14
\inst14|character_address[4]~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[4]~117_combout\ = (!\inst14|process_0~58_combout\ & (\inst14|process_0~74_combout\ & ((!\inst14|process_0~38_combout\) # (!\inst14|character_address[1]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[1]~75_combout\,
	datab => \inst14|process_0~58_combout\,
	datac => \inst14|process_0~38_combout\,
	datad => \inst14|process_0~74_combout\,
	combout => \inst14|character_address[4]~117_combout\);

-- Location: LCCOMB_X31_Y21_N26
\inst14|character_address[4]~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[4]~121_combout\ = (!\inst14|process_0~26_combout\ & (!\inst14|process_0~77_combout\ & (!\inst14|character_address[0]~62_combout\ & !\inst14|character_address[0]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~26_combout\,
	datab => \inst14|process_0~77_combout\,
	datac => \inst14|character_address[0]~62_combout\,
	datad => \inst14|character_address[0]~57_combout\,
	combout => \inst14|character_address[4]~121_combout\);

-- Location: LCCOMB_X31_Y20_N14
\inst14|character_address[0]~125\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[0]~125_combout\ = (\inst|pixel_column\(8) & ((\inst14|character_address[0]~49_combout\) # ((!\inst14|LessThan30~0_combout\ & !\inst14|process_0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LessThan30~0_combout\,
	datab => \inst14|character_address[0]~49_combout\,
	datac => \inst|pixel_column\(8),
	datad => \inst14|process_0~37_combout\,
	combout => \inst14|character_address[0]~125_combout\);

-- Location: LCCOMB_X31_Y21_N28
\inst14|character_address[5]~128\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[5]~128_combout\ = (\inst14|process_0~49_combout\ & (((!\inst14|character_address[2]~90_combout\ & \inst14|process_0~34_combout\)) # (!\inst14|character_address[1]~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[1]~70_combout\,
	datab => \inst14|character_address[2]~90_combout\,
	datac => \inst14|process_0~34_combout\,
	datad => \inst14|process_0~49_combout\,
	combout => \inst14|character_address[5]~128_combout\);

-- Location: LCCOMB_X31_Y16_N10
\inst1|cursor_column~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~10_combout\ = (\inst1|new_cursor_column\(3) & (\inst1|cursor_column[9]~0_combout\ & \inst1|cursor_column~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|new_cursor_column\(3),
	datac => \inst1|cursor_column[9]~0_combout\,
	datad => \inst1|cursor_column~2_combout\,
	combout => \inst1|cursor_column~10_combout\);

-- Location: LCCOMB_X29_Y19_N16
\inst11|tank_y_pos[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|tank_y_pos[1]~3_combout\ = (\inst11|tank_x_pos\(9) & !\inst11|tank_x_motion~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_pos\(9),
	datac => \inst11|tank_x_motion~2_combout\,
	combout => \inst11|tank_y_pos[1]~3_combout\);

-- Location: LCCOMB_X29_Y19_N6
\inst11|tank_x_motion~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|tank_x_motion~4_combout\ = (\inst15|s_game_mode\(0) & (\inst11|tank_x_motion\(1) & ((\inst15|s_game_mode\(1))))) # (!\inst15|s_game_mode\(0) & ((\inst11|tank_x_motion\(1)) # ((\inst11|tank_y_pos[1]~2_combout\ & \inst15|s_game_mode\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|s_game_mode\(0),
	datab => \inst11|tank_x_motion\(1),
	datac => \inst11|tank_y_pos[1]~2_combout\,
	datad => \inst15|s_game_mode\(1),
	combout => \inst11|tank_x_motion~4_combout\);

-- Location: LCCOMB_X29_Y19_N20
\inst11|tank_x_motion~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|tank_x_motion~5_combout\ = (\inst11|tank_x_motion~4_combout\) # ((!\inst11|tank_y_pos[1]~3_combout\ & (\inst11|tank_x_motion~8_combout\ & !\inst11|tank_x_pos\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_motion~4_combout\,
	datab => \inst11|tank_y_pos[1]~3_combout\,
	datac => \inst11|tank_x_motion~8_combout\,
	datad => \inst11|tank_x_pos\(10),
	combout => \inst11|tank_x_motion~5_combout\);

-- Location: LCCOMB_X29_Y19_N12
\inst11|tank_x_motion~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|tank_x_motion~6_combout\ = (!\inst11|tank_x_pos\(10) & ((\inst11|tank_x_pos\(9) & (\inst11|tank_x_motion~2_combout\)) # (!\inst11|tank_x_pos\(9) & ((\inst11|LessThan13~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_pos\(9),
	datab => \inst11|tank_x_pos\(10),
	datac => \inst11|tank_x_motion~2_combout\,
	datad => \inst11|LessThan13~2_combout\,
	combout => \inst11|tank_x_motion~6_combout\);

-- Location: LCCOMB_X29_Y19_N18
\inst11|tank_x_motion~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|tank_x_motion~7_combout\ = (\inst11|tank_y_pos[1]~5_combout\) # ((\inst11|tank_x_motion\(0) & ((\inst11|tank_x_motion~6_combout\) # (!\inst11|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_motion~6_combout\,
	datab => \inst11|tank_y_pos[1]~5_combout\,
	datac => \inst11|tank_x_motion\(0),
	datad => \inst11|Equal0~1_combout\,
	combout => \inst11|tank_x_motion~7_combout\);

-- Location: FF_X29_Y17_N11
\inst1|PACKET_CHAR2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR2[7]~feeder_combout\,
	ena => \inst1|PACKET_CHAR2[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR2\(7));

-- Location: FF_X29_Y17_N15
\inst1|PACKET_CHAR2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR2[5]~feeder_combout\,
	ena => \inst1|PACKET_CHAR2[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR2\(5));

-- Location: FF_X29_Y17_N17
\inst1|PACKET_CHAR2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR2[4]~feeder_combout\,
	ena => \inst1|PACKET_CHAR2[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR2\(4));

-- Location: FF_X29_Y17_N3
\inst1|PACKET_CHAR2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR2[2]~feeder_combout\,
	ena => \inst1|PACKET_CHAR2[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR2\(2));

-- Location: FF_X29_Y17_N1
\inst1|PACKET_CHAR2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR2[1]~feeder_combout\,
	ena => \inst1|PACKET_CHAR2[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR2\(1));

-- Location: FF_X29_Y17_N13
\inst1|PACKET_CHAR2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR2[0]~feeder_combout\,
	ena => \inst1|PACKET_CHAR2[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR2\(0));

-- Location: LCCOMB_X28_Y17_N6
\inst1|PACKET_CHAR2[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR2[7]~2_combout\ = (!\inst1|PACKET_COUNT\(0) & \inst1|PACKET_COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PACKET_COUNT\(0),
	datad => \inst1|PACKET_COUNT\(1),
	combout => \inst1|PACKET_CHAR2[7]~2_combout\);

-- Location: LCCOMB_X31_Y22_N16
\inst14|character_address[1]~137\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[1]~137_combout\ = (!\inst14|process_0~31_combout\ & (!\inst15|s_game_mode\(0) & (!\inst14|process_0~29_combout\ & !\inst15|s_game_mode\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~31_combout\,
	datab => \inst15|s_game_mode\(0),
	datac => \inst14|process_0~29_combout\,
	datad => \inst15|s_game_mode\(1),
	combout => \inst14|character_address[1]~137_combout\);

-- Location: LCCOMB_X29_Y19_N22
\inst11|tank_x_motion~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|tank_x_motion~8_combout\ = (\inst11|tank_x_motion\(1)) # ((!\inst11|tank_y_pos[1]~4_combout\ & (!\inst15|s_game_mode\(1) & \inst15|s_game_mode\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_motion\(1),
	datab => \inst11|tank_y_pos[1]~4_combout\,
	datac => \inst15|s_game_mode\(1),
	datad => \inst15|s_game_mode\(0),
	combout => \inst11|tank_x_motion~8_combout\);

-- Location: LCCOMB_X27_Y22_N30
\inst11|tank_y_pos[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|tank_y_pos[5]~6_combout\ = !\inst11|Add10~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst11|Add10~8_combout\,
	combout => \inst11|tank_y_pos[5]~6_combout\);

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

-- Location: CLKCTRL_G6
\inst|vert_sync_out~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|vert_sync_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|vert_sync_out~clkctrl_outclk\);

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

-- Location: LCCOMB_X29_Y17_N12
\inst1|PACKET_CHAR2[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR2[0]~feeder_combout\ = \inst1|SHIFTIN\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|SHIFTIN\(0),
	combout => \inst1|PACKET_CHAR2[0]~feeder_combout\);

-- Location: LCCOMB_X28_Y17_N10
\inst1|PACKET_COUNT[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_COUNT[0]~feeder_combout\ = \inst1|PACKET_CHAR1[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PACKET_CHAR1[0]~0_combout\,
	combout => \inst1|PACKET_COUNT[0]~feeder_combout\);

-- Location: LCCOMB_X29_Y17_N0
\inst1|PACKET_CHAR2[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR2[1]~feeder_combout\ = \inst1|SHIFTIN\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|SHIFTIN\(1),
	combout => \inst1|PACKET_CHAR2[1]~feeder_combout\);

-- Location: LCCOMB_X29_Y17_N2
\inst1|PACKET_CHAR2[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR2[2]~feeder_combout\ = \inst1|SHIFTIN\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(2),
	combout => \inst1|PACKET_CHAR2[2]~feeder_combout\);

-- Location: LCCOMB_X29_Y17_N16
\inst1|PACKET_CHAR2[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR2[4]~feeder_combout\ = \inst1|SHIFTIN\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(4),
	combout => \inst1|PACKET_CHAR2[4]~feeder_combout\);

-- Location: LCCOMB_X29_Y17_N10
\inst1|PACKET_CHAR2[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR2[7]~feeder_combout\ = \inst1|SHIFTIN\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(7),
	combout => \inst1|PACKET_CHAR2[7]~feeder_combout\);

-- Location: LCCOMB_X29_Y17_N14
\inst1|PACKET_CHAR2[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR2[5]~feeder_combout\ = \inst1|SHIFTIN\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(5),
	combout => \inst1|PACKET_CHAR2[5]~feeder_combout\);

-- Location: IOOBUF_X41_Y12_N23
\mouse_data~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|MOUSE_DATA_BUF~q\,
	oe => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	devoe => ww_devoe,
	o => \mouse_data~output_o\);

-- Location: IOOBUF_X41_Y11_N2
\mouse_clk~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|mouse_state.INHIBIT_TRANS~q\,
	oe => \inst1|WideOr4~combout\,
	devoe => ww_devoe,
	o => \mouse_clk~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\seg0_dec~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|left_button~q\,
	devoe => ww_devoe,
	o => \seg0_dec~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\seg1_dec~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|right_button~q\,
	devoe => ww_devoe,
	o => \seg1_dec~output_o\);

-- Location: IOOBUF_X41_Y18_N16
\horiz_sync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|horiz_sync_out~q\,
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
	i => \inst|vert_sync_out~q\,
	devoe => ww_devoe,
	o => \vert_sync_out~output_o\);

-- Location: IOOBUF_X41_Y21_N9
\blue[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|blue_out\(3),
	devoe => ww_devoe,
	o => \blue[3]~output_o\);

-- Location: IOOBUF_X41_Y19_N2
\blue[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|blue_out\(2),
	devoe => ww_devoe,
	o => \blue[2]~output_o\);

-- Location: IOOBUF_X41_Y19_N9
\blue[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|blue_out\(1),
	devoe => ww_devoe,
	o => \blue[1]~output_o\);

-- Location: IOOBUF_X41_Y19_N16
\blue[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|blue_out\(0),
	devoe => ww_devoe,
	o => \blue[0]~output_o\);

-- Location: IOOBUF_X41_Y20_N23
\green[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|green_out\(3),
	devoe => ww_devoe,
	o => \green[3]~output_o\);

-- Location: IOOBUF_X41_Y21_N16
\green[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|green_out\(2),
	devoe => ww_devoe,
	o => \green[2]~output_o\);

-- Location: IOOBUF_X41_Y24_N23
\green[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|green_out\(1),
	devoe => ww_devoe,
	o => \green[1]~output_o\);

-- Location: IOOBUF_X41_Y20_N2
\green[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|green_out\(0),
	devoe => ww_devoe,
	o => \green[0]~output_o\);

-- Location: IOOBUF_X41_Y21_N23
\red[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|red_out\(3),
	devoe => ww_devoe,
	o => \red[3]~output_o\);

-- Location: IOOBUF_X41_Y22_N2
\red[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|red_out\(2),
	devoe => ww_devoe,
	o => \red[2]~output_o\);

-- Location: IOOBUF_X41_Y25_N2
\red[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|red_out\(1),
	devoe => ww_devoe,
	o => \red[1]~output_o\);

-- Location: IOOBUF_X41_Y23_N23
\red[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|red_out\(0),
	devoe => ww_devoe,
	o => \red[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\seg0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst99|segment7\(0),
	devoe => ww_devoe,
	o => \seg0[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\seg0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg0[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\seg0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst99|segment7\(2),
	devoe => ww_devoe,
	o => \seg0[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\seg0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst99|segment7\(3),
	devoe => ww_devoe,
	o => \seg0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\seg0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst99|segment7\(4),
	devoe => ww_devoe,
	o => \seg0[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\seg0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst99|segment7\(5),
	devoe => ww_devoe,
	o => \seg0[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\seg0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst99|segment7\(6),
	devoe => ww_devoe,
	o => \seg0[6]~output_o\);

-- Location: IOIBUF_X41_Y11_N1
\mouse_clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => mouse_clk,
	o => \mouse_clk~input_o\);

-- Location: LCCOMB_X28_Y15_N14
\inst1|filter[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|filter[0]~feeder_combout\ = \mouse_clk~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse_clk~input_o\,
	combout => \inst1|filter[0]~feeder_combout\);

-- Location: FF_X28_Y15_N15
\inst1|filter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|filter[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|filter\(0));

-- Location: LCCOMB_X28_Y15_N6
\inst1|filter[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|filter[1]~feeder_combout\ = \inst1|filter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|filter\(0),
	combout => \inst1|filter[1]~feeder_combout\);

-- Location: FF_X28_Y15_N7
\inst1|filter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|filter[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|filter\(1));

-- Location: LCCOMB_X28_Y15_N2
\inst1|filter[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|filter[2]~feeder_combout\ = \inst1|filter\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|filter\(1),
	combout => \inst1|filter[2]~feeder_combout\);

-- Location: FF_X28_Y15_N3
\inst1|filter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|filter[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|filter\(2));

-- Location: LCCOMB_X28_Y15_N22
\inst1|filter[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|filter[3]~feeder_combout\ = \inst1|filter\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|filter\(2),
	combout => \inst1|filter[3]~feeder_combout\);

-- Location: FF_X28_Y15_N23
\inst1|filter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|filter[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|filter\(3));

-- Location: LCCOMB_X28_Y15_N10
\inst1|filter[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|filter[4]~feeder_combout\ = \inst1|filter\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|filter\(3),
	combout => \inst1|filter[4]~feeder_combout\);

-- Location: FF_X28_Y15_N11
\inst1|filter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|filter[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|filter\(4));

-- Location: LCCOMB_X28_Y15_N8
\inst1|filter[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|filter[5]~feeder_combout\ = \inst1|filter\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|filter\(4),
	combout => \inst1|filter[5]~feeder_combout\);

-- Location: FF_X28_Y15_N9
\inst1|filter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|filter[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|filter\(5));

-- Location: FF_X28_Y15_N17
\inst1|filter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst1|filter\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|filter\(6));

-- Location: LCCOMB_X28_Y15_N12
\inst1|MOUSE_CLK_FILTER~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|MOUSE_CLK_FILTER~2_combout\ = (\inst1|filter\(1) & ((\inst1|MOUSE_CLK_FILTER~q\) # ((\inst1|filter\(0) & \inst1|filter\(6))))) # (!\inst1|filter\(1) & (\inst1|MOUSE_CLK_FILTER~q\ & ((\inst1|filter\(0)) # (\inst1|filter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|filter\(1),
	datab => \inst1|MOUSE_CLK_FILTER~q\,
	datac => \inst1|filter\(0),
	datad => \inst1|filter\(6),
	combout => \inst1|MOUSE_CLK_FILTER~2_combout\);

-- Location: LCCOMB_X28_Y15_N26
\inst1|MOUSE_CLK_FILTER~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|MOUSE_CLK_FILTER~1_combout\ = (\inst1|filter\(3) & ((\inst1|MOUSE_CLK_FILTER~q\) # ((\inst1|filter\(5) & \inst1|filter\(2))))) # (!\inst1|filter\(3) & (\inst1|MOUSE_CLK_FILTER~q\ & ((\inst1|filter\(5)) # (\inst1|filter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|filter\(3),
	datab => \inst1|MOUSE_CLK_FILTER~q\,
	datac => \inst1|filter\(5),
	datad => \inst1|filter\(2),
	combout => \inst1|MOUSE_CLK_FILTER~1_combout\);

-- Location: FF_X28_Y15_N19
\inst1|filter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst1|filter\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|filter\(7));

-- Location: LCCOMB_X28_Y15_N18
\inst1|MOUSE_CLK_FILTER~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|MOUSE_CLK_FILTER~0_combout\ = (\inst1|filter\(4) & ((\inst1|filter\(7)) # (!\inst1|filter\(2)))) # (!\inst1|filter\(4) & (\inst1|filter\(7) & !\inst1|filter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|filter\(4),
	datac => \inst1|filter\(7),
	datad => \inst1|filter\(2),
	combout => \inst1|MOUSE_CLK_FILTER~0_combout\);

-- Location: LCCOMB_X28_Y15_N20
\inst1|MOUSE_CLK_FILTER~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|MOUSE_CLK_FILTER~3_combout\ = (\inst1|MOUSE_CLK_FILTER~q\ & ((\inst1|MOUSE_CLK_FILTER~2_combout\) # ((\inst1|MOUSE_CLK_FILTER~1_combout\) # (\inst1|MOUSE_CLK_FILTER~0_combout\)))) # (!\inst1|MOUSE_CLK_FILTER~q\ & (\inst1|MOUSE_CLK_FILTER~2_combout\ 
-- & (\inst1|MOUSE_CLK_FILTER~1_combout\ & \inst1|MOUSE_CLK_FILTER~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|MOUSE_CLK_FILTER~q\,
	datab => \inst1|MOUSE_CLK_FILTER~2_combout\,
	datac => \inst1|MOUSE_CLK_FILTER~1_combout\,
	datad => \inst1|MOUSE_CLK_FILTER~0_combout\,
	combout => \inst1|MOUSE_CLK_FILTER~3_combout\);

-- Location: LCCOMB_X28_Y15_N28
\inst1|MOUSE_CLK_FILTER~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|MOUSE_CLK_FILTER~feeder_combout\ = \inst1|MOUSE_CLK_FILTER~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|MOUSE_CLK_FILTER~3_combout\,
	combout => \inst1|MOUSE_CLK_FILTER~feeder_combout\);

-- Location: FF_X28_Y15_N29
\inst1|MOUSE_CLK_FILTER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|MOUSE_CLK_FILTER~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|MOUSE_CLK_FILTER~q\);

-- Location: CLKCTRL_G5
\inst1|MOUSE_CLK_FILTER~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\);

-- Location: LCCOMB_X26_Y16_N16
\inst1|SHIFTOUT[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTOUT[9]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|SHIFTOUT[9]~feeder_combout\);

-- Location: LCCOMB_X27_Y15_N6
\inst1|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Selector0~0_combout\ = (\inst1|mouse_state.INHIBIT_TRANS~q\) # ((\inst1|inhibit_wait_count\(9) & \inst1|inhibit_wait_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inhibit_wait_count\(9),
	datac => \inst1|mouse_state.INHIBIT_TRANS~q\,
	datad => \inst1|inhibit_wait_count\(10),
	combout => \inst1|Selector0~0_combout\);

-- Location: FF_X27_Y15_N7
\inst1|mouse_state.INHIBIT_TRANS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mouse_state.INHIBIT_TRANS~q\);

-- Location: LCCOMB_X27_Y15_N2
\inst1|inhibit_wait_count[0]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[0]~30_combout\ = \inst1|inhibit_wait_count\(0) $ (!\inst1|mouse_state.INHIBIT_TRANS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inhibit_wait_count\(0),
	datad => \inst1|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst1|inhibit_wait_count[0]~30_combout\);

-- Location: FF_X27_Y15_N3
\inst1|inhibit_wait_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(0));

-- Location: LCCOMB_X27_Y15_N14
\inst1|inhibit_wait_count[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[3]~14_combout\ = (\inst1|inhibit_wait_count\(3) & (\inst1|inhibit_wait_count[2]~13\ $ (GND))) # (!\inst1|inhibit_wait_count\(3) & (!\inst1|inhibit_wait_count[2]~13\ & VCC))
-- \inst1|inhibit_wait_count[3]~15\ = CARRY((\inst1|inhibit_wait_count\(3) & !\inst1|inhibit_wait_count[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inhibit_wait_count\(3),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[2]~13\,
	combout => \inst1|inhibit_wait_count[3]~14_combout\,
	cout => \inst1|inhibit_wait_count[3]~15\);

-- Location: FF_X27_Y15_N15
\inst1|inhibit_wait_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[3]~14_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(3));

-- Location: LCCOMB_X27_Y15_N16
\inst1|inhibit_wait_count[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[4]~16_combout\ = (\inst1|inhibit_wait_count\(4) & (!\inst1|inhibit_wait_count[3]~15\)) # (!\inst1|inhibit_wait_count\(4) & ((\inst1|inhibit_wait_count[3]~15\) # (GND)))
-- \inst1|inhibit_wait_count[4]~17\ = CARRY((!\inst1|inhibit_wait_count[3]~15\) # (!\inst1|inhibit_wait_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inhibit_wait_count\(4),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[3]~15\,
	combout => \inst1|inhibit_wait_count[4]~16_combout\,
	cout => \inst1|inhibit_wait_count[4]~17\);

-- Location: FF_X27_Y15_N17
\inst1|inhibit_wait_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[4]~16_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(4));

-- Location: LCCOMB_X27_Y15_N18
\inst1|inhibit_wait_count[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[5]~18_combout\ = (\inst1|inhibit_wait_count\(5) & (\inst1|inhibit_wait_count[4]~17\ $ (GND))) # (!\inst1|inhibit_wait_count\(5) & (!\inst1|inhibit_wait_count[4]~17\ & VCC))
-- \inst1|inhibit_wait_count[5]~19\ = CARRY((\inst1|inhibit_wait_count\(5) & !\inst1|inhibit_wait_count[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inhibit_wait_count\(5),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[4]~17\,
	combout => \inst1|inhibit_wait_count[5]~18_combout\,
	cout => \inst1|inhibit_wait_count[5]~19\);

-- Location: FF_X27_Y15_N19
\inst1|inhibit_wait_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[5]~18_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(5));

-- Location: LCCOMB_X27_Y15_N20
\inst1|inhibit_wait_count[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[6]~20_combout\ = (\inst1|inhibit_wait_count\(6) & (!\inst1|inhibit_wait_count[5]~19\)) # (!\inst1|inhibit_wait_count\(6) & ((\inst1|inhibit_wait_count[5]~19\) # (GND)))
-- \inst1|inhibit_wait_count[6]~21\ = CARRY((!\inst1|inhibit_wait_count[5]~19\) # (!\inst1|inhibit_wait_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inhibit_wait_count\(6),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[5]~19\,
	combout => \inst1|inhibit_wait_count[6]~20_combout\,
	cout => \inst1|inhibit_wait_count[6]~21\);

-- Location: FF_X27_Y15_N21
\inst1|inhibit_wait_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[6]~20_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(6));

-- Location: LCCOMB_X27_Y15_N24
\inst1|inhibit_wait_count[8]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[8]~24_combout\ = (\inst1|inhibit_wait_count\(8) & (!\inst1|inhibit_wait_count[7]~23\)) # (!\inst1|inhibit_wait_count\(8) & ((\inst1|inhibit_wait_count[7]~23\) # (GND)))
-- \inst1|inhibit_wait_count[8]~25\ = CARRY((!\inst1|inhibit_wait_count[7]~23\) # (!\inst1|inhibit_wait_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inhibit_wait_count\(8),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[7]~23\,
	combout => \inst1|inhibit_wait_count[8]~24_combout\,
	cout => \inst1|inhibit_wait_count[8]~25\);

-- Location: FF_X27_Y15_N25
\inst1|inhibit_wait_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[8]~24_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(8));

-- Location: LCCOMB_X27_Y15_N26
\inst1|inhibit_wait_count[9]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[9]~26_combout\ = (\inst1|inhibit_wait_count\(9) & (\inst1|inhibit_wait_count[8]~25\ $ (GND))) # (!\inst1|inhibit_wait_count\(9) & (!\inst1|inhibit_wait_count[8]~25\ & VCC))
-- \inst1|inhibit_wait_count[9]~27\ = CARRY((\inst1|inhibit_wait_count\(9) & !\inst1|inhibit_wait_count[8]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inhibit_wait_count\(9),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[8]~25\,
	combout => \inst1|inhibit_wait_count[9]~26_combout\,
	cout => \inst1|inhibit_wait_count[9]~27\);

-- Location: LCCOMB_X27_Y15_N28
\inst1|inhibit_wait_count[10]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[10]~28_combout\ = \inst1|inhibit_wait_count[9]~27\ $ (\inst1|inhibit_wait_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inhibit_wait_count\(10),
	cin => \inst1|inhibit_wait_count[9]~27\,
	combout => \inst1|inhibit_wait_count[10]~28_combout\);

-- Location: FF_X27_Y15_N29
\inst1|inhibit_wait_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[10]~28_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(10));

-- Location: FF_X27_Y15_N27
\inst1|inhibit_wait_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[9]~26_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(9));

-- Location: LCCOMB_X27_Y15_N0
\inst1|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Selector1~0_combout\ = (\inst1|inhibit_wait_count\(10) & (\inst1|inhibit_wait_count\(9) & !\inst1|mouse_state.INHIBIT_TRANS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inhibit_wait_count\(10),
	datac => \inst1|inhibit_wait_count\(9),
	datad => \inst1|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst1|Selector1~0_combout\);

-- Location: FF_X27_Y15_N1
\inst1|mouse_state.LOAD_COMMAND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mouse_state.LOAD_COMMAND~q\);

-- Location: FF_X27_Y16_N17
\inst1|mouse_state.LOAD_COMMAND2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst1|mouse_state.LOAD_COMMAND~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mouse_state.LOAD_COMMAND2~q\);

-- Location: LCCOMB_X27_Y16_N20
\inst1|OUTCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|OUTCNT~3_combout\ = (!\inst1|OUTCNT\(0) & (((!\inst1|OUTCNT\(2) & !\inst1|OUTCNT\(1))) # (!\inst1|OUTCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTCNT\(2),
	datab => \inst1|OUTCNT\(1),
	datac => \inst1|OUTCNT\(0),
	datad => \inst1|OUTCNT\(3),
	combout => \inst1|OUTCNT~3_combout\);

-- Location: LCCOMB_X26_Y16_N6
\inst1|send_char~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|send_char~0_combout\ = (\inst1|send_char~q\) # ((\inst1|mouse_state.WAIT_OUTPUT_READY~q\ & \inst1|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst1|send_char~q\,
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|send_char~0_combout\);

-- Location: FF_X26_Y16_N7
\inst1|send_char\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|send_char~0_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|send_char~q\);

-- Location: LCCOMB_X27_Y16_N22
\inst1|output_ready~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|output_ready~0_combout\ = (!\inst1|send_char~q\ & \inst1|mouse_state.WAIT_OUTPUT_READY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|send_char~q\,
	datad => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst1|output_ready~0_combout\);

-- Location: FF_X27_Y16_N21
\inst1|OUTCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|OUTCNT~3_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|OUTCNT\(0));

-- Location: LCCOMB_X27_Y16_N30
\inst1|OUTCNT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|OUTCNT~0_combout\ = (\inst1|OUTCNT\(2) & (\inst1|OUTCNT\(1) & (!\inst1|OUTCNT\(3) & \inst1|OUTCNT\(0)))) # (!\inst1|OUTCNT\(2) & (!\inst1|OUTCNT\(1) & (\inst1|OUTCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTCNT\(2),
	datab => \inst1|OUTCNT\(1),
	datac => \inst1|OUTCNT\(3),
	datad => \inst1|OUTCNT\(0),
	combout => \inst1|OUTCNT~0_combout\);

-- Location: FF_X27_Y16_N31
\inst1|OUTCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|OUTCNT~0_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|OUTCNT\(3));

-- Location: LCCOMB_X27_Y16_N2
\inst1|OUTCNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|OUTCNT~2_combout\ = (\inst1|OUTCNT\(3) & (!\inst1|OUTCNT\(2) & (!\inst1|OUTCNT\(1) & \inst1|OUTCNT\(0)))) # (!\inst1|OUTCNT\(3) & ((\inst1|OUTCNT\(1) $ (\inst1|OUTCNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTCNT\(2),
	datab => \inst1|OUTCNT\(3),
	datac => \inst1|OUTCNT\(1),
	datad => \inst1|OUTCNT\(0),
	combout => \inst1|OUTCNT~2_combout\);

-- Location: FF_X27_Y16_N3
\inst1|OUTCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|OUTCNT~2_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|OUTCNT\(1));

-- Location: LCCOMB_X27_Y16_N4
\inst1|OUTCNT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|OUTCNT~1_combout\ = (!\inst1|OUTCNT\(3) & (\inst1|OUTCNT\(2) $ (((\inst1|OUTCNT\(1) & \inst1|OUTCNT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTCNT\(3),
	datab => \inst1|OUTCNT\(1),
	datac => \inst1|OUTCNT\(2),
	datad => \inst1|OUTCNT\(0),
	combout => \inst1|OUTCNT~1_combout\);

-- Location: FF_X27_Y16_N5
\inst1|OUTCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|OUTCNT~1_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|OUTCNT\(2));

-- Location: LCCOMB_X27_Y16_N16
\inst1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~0_combout\ = (\inst1|OUTCNT\(3) & ((\inst1|OUTCNT\(2)) # (\inst1|OUTCNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTCNT\(3),
	datab => \inst1|OUTCNT\(2),
	datad => \inst1|OUTCNT\(1),
	combout => \inst1|LessThan0~0_combout\);

-- Location: LCCOMB_X27_Y16_N6
\inst1|output_ready~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|output_ready~feeder_combout\ = \inst1|LessThan0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|output_ready~feeder_combout\);

-- Location: FF_X27_Y16_N7
\inst1|output_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|output_ready~feeder_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|output_ready~q\);

-- Location: LCCOMB_X27_Y16_N12
\inst1|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Selector3~0_combout\ = (\inst1|mouse_state.LOAD_COMMAND2~q\) # ((\inst1|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst1|output_ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|mouse_state.LOAD_COMMAND2~q\,
	datac => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst1|output_ready~q\,
	combout => \inst1|Selector3~0_combout\);

-- Location: FF_X27_Y16_N13
\inst1|mouse_state.WAIT_OUTPUT_READY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mouse_state.WAIT_OUTPUT_READY~q\);

-- Location: IOIBUF_X41_Y12_N22
\mouse_data~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => mouse_data,
	o => \mouse_data~input_o\);

-- Location: LCCOMB_X28_Y16_N12
\inst1|READ_CHAR~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|READ_CHAR~0_combout\ = (\inst1|READ_CHAR~q\ & (\inst1|LessThan1~0_combout\)) # (!\inst1|READ_CHAR~q\ & ((!\mouse_data~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~0_combout\,
	datac => \inst1|READ_CHAR~q\,
	datad => \mouse_data~input_o\,
	combout => \inst1|READ_CHAR~0_combout\);

-- Location: FF_X28_Y16_N13
\inst1|READ_CHAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|READ_CHAR~0_combout\,
	ena => \inst1|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|READ_CHAR~q\);

-- Location: LCCOMB_X28_Y16_N28
\inst1|iready_set~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|iready_set~0_combout\ = (\inst1|READ_CHAR~q\ & (!\inst1|LessThan1~0_combout\)) # (!\inst1|READ_CHAR~q\ & (((\inst1|iready_set~q\ & \mouse_data~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~0_combout\,
	datab => \inst1|READ_CHAR~q\,
	datac => \inst1|iready_set~q\,
	datad => \mouse_data~input_o\,
	combout => \inst1|iready_set~0_combout\);

-- Location: FF_X28_Y16_N29
\inst1|iready_set\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|iready_set~0_combout\,
	ena => \inst1|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|iready_set~q\);

-- Location: LCCOMB_X27_Y16_N24
\inst1|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Selector4~0_combout\ = (\inst1|output_ready~q\ & ((\inst1|mouse_state.WAIT_OUTPUT_READY~q\) # ((\inst1|mouse_state.WAIT_CMD_ACK~q\ & !\inst1|iready_set~q\)))) # (!\inst1|output_ready~q\ & (((\inst1|mouse_state.WAIT_CMD_ACK~q\ & 
-- !\inst1|iready_set~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output_ready~q\,
	datab => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst1|mouse_state.WAIT_CMD_ACK~q\,
	datad => \inst1|iready_set~q\,
	combout => \inst1|Selector4~0_combout\);

-- Location: FF_X27_Y16_N25
\inst1|mouse_state.WAIT_CMD_ACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mouse_state.WAIT_CMD_ACK~q\);

-- Location: LCCOMB_X28_Y16_N30
\inst1|mouse_state.INPUT_PACKETS~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|mouse_state.INPUT_PACKETS~0_combout\ = (\inst1|mouse_state.INPUT_PACKETS~q\) # ((\inst1|mouse_state.WAIT_CMD_ACK~q\ & \inst1|iready_set~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|mouse_state.WAIT_CMD_ACK~q\,
	datac => \inst1|mouse_state.INPUT_PACKETS~q\,
	datad => \inst1|iready_set~q\,
	combout => \inst1|mouse_state.INPUT_PACKETS~0_combout\);

-- Location: FF_X28_Y16_N31
\inst1|mouse_state.INPUT_PACKETS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|mouse_state.INPUT_PACKETS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mouse_state.INPUT_PACKETS~q\);

-- Location: LCCOMB_X27_Y16_N14
\inst1|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Selector6~0_combout\ = (\inst1|send_data~q\ & ((\inst1|mouse_state.INPUT_PACKETS~q\) # (!\inst1|mouse_state.INHIBIT_TRANS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|send_data~q\,
	datac => \inst1|mouse_state.INPUT_PACKETS~q\,
	datad => \inst1|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst1|Selector6~0_combout\);

-- Location: LCCOMB_X27_Y16_N0
\inst1|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Selector6~1_combout\ = (\inst1|Selector6~0_combout\) # ((\inst1|mouse_state.LOAD_COMMAND~q\) # (\inst1|mouse_state.LOAD_COMMAND2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Selector6~0_combout\,
	datac => \inst1|mouse_state.LOAD_COMMAND~q\,
	datad => \inst1|mouse_state.LOAD_COMMAND2~q\,
	combout => \inst1|Selector6~1_combout\);

-- Location: FF_X27_Y16_N1
\inst1|send_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|send_data~q\);

-- Location: LCCOMB_X26_Y16_N24
\inst1|MOUSE_DATA_BUF~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|MOUSE_DATA_BUF~0_combout\ = (!\inst1|send_char~q\ & (\inst1|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst1|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|send_char~q\,
	datab => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|MOUSE_DATA_BUF~0_combout\);

-- Location: FF_X26_Y16_N17
\inst1|SHIFTOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTOUT[9]~feeder_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(9));

-- Location: LCCOMB_X26_Y16_N22
\inst1|SHIFTOUT[8]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTOUT[8]~3_combout\ = !\inst1|SHIFTOUT\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTOUT\(9),
	combout => \inst1|SHIFTOUT[8]~3_combout\);

-- Location: FF_X26_Y16_N23
\inst1|SHIFTOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTOUT[8]~3_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(8));

-- Location: LCCOMB_X26_Y16_N8
\inst1|SHIFTOUT[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTOUT[7]~feeder_combout\ = \inst1|SHIFTOUT\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|SHIFTOUT\(8),
	combout => \inst1|SHIFTOUT[7]~feeder_combout\);

-- Location: FF_X26_Y16_N9
\inst1|SHIFTOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTOUT[7]~feeder_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(7));

-- Location: LCCOMB_X26_Y16_N30
\inst1|SHIFTOUT[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTOUT[6]~feeder_combout\ = \inst1|SHIFTOUT\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|SHIFTOUT\(7),
	combout => \inst1|SHIFTOUT[6]~feeder_combout\);

-- Location: FF_X26_Y16_N31
\inst1|SHIFTOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTOUT[6]~feeder_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(6));

-- Location: LCCOMB_X26_Y16_N28
\inst1|SHIFTOUT[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTOUT[5]~feeder_combout\ = \inst1|SHIFTOUT\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTOUT\(6),
	combout => \inst1|SHIFTOUT[5]~feeder_combout\);

-- Location: FF_X26_Y16_N29
\inst1|SHIFTOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTOUT[5]~feeder_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(5));

-- Location: LCCOMB_X26_Y16_N10
\inst1|SHIFTOUT[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTOUT[4]~2_combout\ = !\inst1|SHIFTOUT\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTOUT\(5),
	combout => \inst1|SHIFTOUT[4]~2_combout\);

-- Location: FF_X26_Y16_N11
\inst1|SHIFTOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTOUT[4]~2_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(4));

-- Location: LCCOMB_X26_Y16_N12
\inst1|SHIFTOUT[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTOUT[3]~1_combout\ = !\inst1|SHIFTOUT\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTOUT\(4),
	combout => \inst1|SHIFTOUT[3]~1_combout\);

-- Location: FF_X26_Y16_N13
\inst1|SHIFTOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTOUT[3]~1_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(3));

-- Location: LCCOMB_X26_Y16_N18
\inst1|SHIFTOUT[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTOUT[2]~0_combout\ = !\inst1|SHIFTOUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTOUT\(3),
	combout => \inst1|SHIFTOUT[2]~0_combout\);

-- Location: FF_X26_Y16_N19
\inst1|SHIFTOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTOUT[2]~0_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(2));

-- Location: LCCOMB_X26_Y16_N20
\inst1|SHIFTOUT[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTOUT[1]~feeder_combout\ = \inst1|SHIFTOUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTOUT\(2),
	combout => \inst1|SHIFTOUT[1]~feeder_combout\);

-- Location: FF_X26_Y16_N21
\inst1|SHIFTOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTOUT[1]~feeder_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(1));

-- Location: FF_X26_Y16_N25
\inst1|MOUSE_DATA_BUF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst1|SHIFTOUT\(1),
	clrn => \inst1|ALT_INV_send_data~q\,
	sload => VCC,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|MOUSE_DATA_BUF~q\);

-- Location: LCCOMB_X27_Y16_N8
\inst1|WideOr4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|WideOr4~combout\ = (\inst1|mouse_state.LOAD_COMMAND~q\) # ((\inst1|mouse_state.LOAD_COMMAND2~q\) # (!\inst1|mouse_state.INHIBIT_TRANS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mouse_state.LOAD_COMMAND~q\,
	datab => \inst1|mouse_state.INHIBIT_TRANS~q\,
	datad => \inst1|mouse_state.LOAD_COMMAND2~q\,
	combout => \inst1|WideOr4~combout\);

-- Location: LCCOMB_X30_Y17_N8
\inst1|SHIFTIN[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[8]~feeder_combout\ = \mouse_data~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse_data~input_o\,
	combout => \inst1|SHIFTIN[8]~feeder_combout\);

-- Location: LCCOMB_X28_Y17_N16
\inst1|INCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|INCNT~3_combout\ = (!\inst1|INCNT\(3) & (\inst1|INCNT\(0) $ (\inst1|INCNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|INCNT\(0),
	datac => \inst1|INCNT\(1),
	datad => \inst1|INCNT\(3),
	combout => \inst1|INCNT~3_combout\);

-- Location: LCCOMB_X28_Y17_N14
\inst1|INCNT[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|INCNT[3]~2_combout\ = (!\inst1|mouse_state.WAIT_OUTPUT_READY~q\ & \inst1|READ_CHAR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst1|READ_CHAR~q\,
	combout => \inst1|INCNT[3]~2_combout\);

-- Location: FF_X28_Y17_N17
\inst1|INCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|INCNT~3_combout\,
	ena => \inst1|INCNT[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|INCNT\(1));

-- Location: LCCOMB_X28_Y17_N22
\inst1|INCNT~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|INCNT~4_combout\ = (!\inst1|INCNT\(0) & (((!\inst1|INCNT\(2) & !\inst1|INCNT\(1))) # (!\inst1|INCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|INCNT\(2),
	datab => \inst1|INCNT\(3),
	datac => \inst1|INCNT\(0),
	datad => \inst1|INCNT\(1),
	combout => \inst1|INCNT~4_combout\);

-- Location: FF_X28_Y17_N23
\inst1|INCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|INCNT~4_combout\,
	ena => \inst1|INCNT[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|INCNT\(0));

-- Location: LCCOMB_X28_Y17_N28
\inst1|INCNT~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|INCNT~5_combout\ = (\inst1|INCNT\(2) & (\inst1|INCNT\(1) & (!\inst1|INCNT\(3) & \inst1|INCNT\(0)))) # (!\inst1|INCNT\(2) & (!\inst1|INCNT\(1) & (\inst1|INCNT\(3) & !\inst1|INCNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|INCNT\(2),
	datab => \inst1|INCNT\(1),
	datac => \inst1|INCNT\(3),
	datad => \inst1|INCNT\(0),
	combout => \inst1|INCNT~5_combout\);

-- Location: FF_X28_Y17_N29
\inst1|INCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|INCNT~5_combout\,
	ena => \inst1|INCNT[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|INCNT\(3));

-- Location: LCCOMB_X28_Y17_N26
\inst1|INCNT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|INCNT~1_combout\ = (!\inst1|INCNT\(3) & (\inst1|INCNT\(2) $ (((\inst1|INCNT\(0) & \inst1|INCNT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|INCNT\(0),
	datab => \inst1|INCNT\(3),
	datac => \inst1|INCNT\(2),
	datad => \inst1|INCNT\(1),
	combout => \inst1|INCNT~1_combout\);

-- Location: FF_X28_Y17_N27
\inst1|INCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|INCNT~1_combout\,
	ena => \inst1|INCNT[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|INCNT\(2));

-- Location: LCCOMB_X28_Y17_N30
\inst1|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~0_combout\ = ((!\inst1|INCNT\(0) & (!\inst1|INCNT\(2) & !\inst1|INCNT\(1)))) # (!\inst1|INCNT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|INCNT\(0),
	datab => \inst1|INCNT\(3),
	datac => \inst1|INCNT\(2),
	datad => \inst1|INCNT\(1),
	combout => \inst1|LessThan1~0_combout\);

-- Location: LCCOMB_X29_Y17_N6
\inst1|SHIFTIN[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[0]~2_combout\ = (\inst1|READ_CHAR~q\ & (\inst1|LessThan1~0_combout\ & !\inst1|mouse_state.WAIT_OUTPUT_READY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|READ_CHAR~q\,
	datab => \inst1|LessThan1~0_combout\,
	datad => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst1|SHIFTIN[0]~2_combout\);

-- Location: FF_X30_Y17_N9
\inst1|SHIFTIN[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[8]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(8));

-- Location: LCCOMB_X29_Y17_N18
\inst1|SHIFTIN[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[7]~feeder_combout\ = \inst1|SHIFTIN\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|SHIFTIN\(8),
	combout => \inst1|SHIFTIN[7]~feeder_combout\);

-- Location: FF_X29_Y17_N19
\inst1|SHIFTIN[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[7]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(7));

-- Location: LCCOMB_X29_Y17_N26
\inst1|SHIFTIN[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[6]~feeder_combout\ = \inst1|SHIFTIN\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(7),
	combout => \inst1|SHIFTIN[6]~feeder_combout\);

-- Location: FF_X29_Y17_N27
\inst1|SHIFTIN[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[6]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(6));

-- Location: FF_X29_Y17_N23
\inst1|SHIFTIN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst1|SHIFTIN\(6),
	sload => VCC,
	ena => \inst1|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(5));

-- Location: LCCOMB_X29_Y17_N24
\inst1|SHIFTIN[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[4]~feeder_combout\ = \inst1|SHIFTIN\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(5),
	combout => \inst1|SHIFTIN[4]~feeder_combout\);

-- Location: FF_X29_Y17_N25
\inst1|SHIFTIN[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[4]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(4));

-- Location: LCCOMB_X29_Y17_N28
\inst1|SHIFTIN[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[3]~feeder_combout\ = \inst1|SHIFTIN\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(4),
	combout => \inst1|SHIFTIN[3]~feeder_combout\);

-- Location: FF_X29_Y17_N29
\inst1|SHIFTIN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[3]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(3));

-- Location: LCCOMB_X29_Y17_N8
\inst1|SHIFTIN[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[2]~feeder_combout\ = \inst1|SHIFTIN\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(3),
	combout => \inst1|SHIFTIN[2]~feeder_combout\);

-- Location: FF_X29_Y17_N9
\inst1|SHIFTIN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[2]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(2));

-- Location: LCCOMB_X29_Y17_N20
\inst1|SHIFTIN[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[1]~feeder_combout\ = \inst1|SHIFTIN\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(2),
	combout => \inst1|SHIFTIN[1]~feeder_combout\);

-- Location: FF_X29_Y17_N21
\inst1|SHIFTIN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[1]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(1));

-- Location: FF_X29_Y17_N7
\inst1|SHIFTIN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst1|SHIFTIN\(1),
	sload => VCC,
	ena => \inst1|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(0));

-- Location: LCCOMB_X27_Y17_N22
\inst1|PACKET_CHAR1[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR1[0]~feeder_combout\ = \inst1|SHIFTIN\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(0),
	combout => \inst1|PACKET_CHAR1[0]~feeder_combout\);

-- Location: LCCOMB_X28_Y17_N24
\inst1|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add3~0_combout\ = \inst1|PACKET_COUNT\(0) $ (\inst1|PACKET_COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PACKET_COUNT\(0),
	datad => \inst1|PACKET_COUNT\(1),
	combout => \inst1|Add3~0_combout\);

-- Location: LCCOMB_X28_Y17_N20
\inst1|PACKET_COUNT[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_COUNT[1]~feeder_combout\ = \inst1|Add3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Add3~0_combout\,
	combout => \inst1|PACKET_COUNT[1]~feeder_combout\);

-- Location: LCCOMB_X28_Y17_N2
\inst1|PACKET_CHAR2[7]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR2[7]~4_combout\ = (!\inst1|mouse_state.WAIT_OUTPUT_READY~q\ & (!\inst1|LessThan1~0_combout\ & \inst1|READ_CHAR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst1|LessThan1~0_combout\,
	datad => \inst1|READ_CHAR~q\,
	combout => \inst1|PACKET_CHAR2[7]~4_combout\);

-- Location: FF_X28_Y17_N21
\inst1|PACKET_COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_COUNT[1]~feeder_combout\,
	ena => \inst1|PACKET_CHAR2[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_COUNT\(1));

-- Location: LCCOMB_X28_Y17_N18
\inst1|PACKET_CHAR1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR1[0]~0_combout\ = (\inst1|PACKET_COUNT\(1)) # (!\inst1|PACKET_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PACKET_COUNT\(0),
	datad => \inst1|PACKET_COUNT\(1),
	combout => \inst1|PACKET_CHAR1[0]~0_combout\);

-- Location: LCCOMB_X27_Y16_N10
\inst1|INCNT[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|INCNT[3]~0_combout\ = (!\inst1|mouse_state.WAIT_OUTPUT_READY~q\ & ((\mouse_data~input_o\) # (\inst1|READ_CHAR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse_data~input_o\,
	datac => \inst1|READ_CHAR~q\,
	datad => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst1|INCNT[3]~0_combout\);

-- Location: LCCOMB_X27_Y17_N2
\inst1|PACKET_CHAR1[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR1[0]~1_combout\ = (!\inst1|LessThan1~0_combout\ & (!\inst1|PACKET_CHAR1[0]~0_combout\ & (\inst1|READ_CHAR~q\ & \inst1|INCNT[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~0_combout\,
	datab => \inst1|PACKET_CHAR1[0]~0_combout\,
	datac => \inst1|READ_CHAR~q\,
	datad => \inst1|INCNT[3]~0_combout\,
	combout => \inst1|PACKET_CHAR1[0]~1_combout\);

-- Location: FF_X27_Y17_N23
\inst1|PACKET_CHAR1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR1[0]~feeder_combout\,
	ena => \inst1|PACKET_CHAR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR1\(0));

-- Location: LCCOMB_X28_Y17_N8
\inst1|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Equal4~0_combout\ = (!\inst1|PACKET_COUNT\(1)) # (!\inst1|PACKET_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PACKET_COUNT\(0),
	datad => \inst1|PACKET_COUNT\(1),
	combout => \inst1|Equal4~0_combout\);

-- Location: LCCOMB_X28_Y17_N0
\inst1|left_button~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|left_button~0_combout\ = (!\inst1|LessThan1~0_combout\ & (\inst1|READ_CHAR~q\ & (!\inst1|Equal4~0_combout\ & \inst1|INCNT[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~0_combout\,
	datab => \inst1|READ_CHAR~q\,
	datac => \inst1|Equal4~0_combout\,
	datad => \inst1|INCNT[3]~0_combout\,
	combout => \inst1|left_button~0_combout\);

-- Location: FF_X27_Y19_N29
\inst1|left_button\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst1|PACKET_CHAR1\(0),
	sload => VCC,
	ena => \inst1|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|left_button~q\);

-- Location: LCCOMB_X27_Y17_N0
\inst1|PACKET_CHAR1[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR1[1]~feeder_combout\ = \inst1|SHIFTIN\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(1),
	combout => \inst1|PACKET_CHAR1[1]~feeder_combout\);

-- Location: FF_X27_Y17_N1
\inst1|PACKET_CHAR1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR1[1]~feeder_combout\,
	ena => \inst1|PACKET_CHAR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR1\(1));

-- Location: LCCOMB_X27_Y17_N8
\inst1|right_button~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|right_button~feeder_combout\ = \inst1|PACKET_CHAR1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PACKET_CHAR1\(1),
	combout => \inst1|right_button~feeder_combout\);

-- Location: FF_X27_Y17_N9
\inst1|right_button\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|right_button~feeder_combout\,
	ena => \inst1|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|right_button~q\);

-- Location: LCCOMB_X16_Y5_N0
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

-- Location: FF_X16_Y5_N1
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

-- Location: LCCOMB_X16_Y5_N4
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

-- Location: FF_X16_Y5_N5
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

-- Location: LCCOMB_X16_Y5_N6
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

-- Location: LCCOMB_X16_Y5_N8
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

-- Location: FF_X16_Y5_N9
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

-- Location: LCCOMB_X16_Y5_N12
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

-- Location: LCCOMB_X16_Y5_N14
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

-- Location: FF_X16_Y5_N15
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

-- Location: LCCOMB_X16_Y5_N16
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

-- Location: FF_X16_Y5_N17
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

-- Location: LCCOMB_X16_Y5_N18
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

-- Location: FF_X16_Y5_N19
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

-- Location: LCCOMB_X16_Y5_N20
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

-- Location: FF_X16_Y5_N21
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

-- Location: LCCOMB_X16_Y5_N24
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

-- Location: FF_X16_Y5_N25
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

-- Location: LCCOMB_X16_Y5_N26
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

-- Location: LCCOMB_X16_Y5_N28
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

-- Location: FF_X16_Y5_N29
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

-- Location: LCCOMB_X16_Y4_N0
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

-- Location: FF_X16_Y4_N1
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

-- Location: LCCOMB_X16_Y4_N2
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

-- Location: FF_X16_Y4_N3
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

-- Location: LCCOMB_X16_Y4_N4
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

-- Location: FF_X16_Y4_N5
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

-- Location: LCCOMB_X16_Y4_N6
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

-- Location: LCCOMB_X16_Y4_N8
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

-- Location: FF_X16_Y4_N9
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

-- Location: LCCOMB_X16_Y4_N12
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

-- Location: FF_X16_Y4_N13
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

-- Location: LCCOMB_X17_Y4_N2
\inst7|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~6_combout\ = (!\inst7|i\(23) & !\inst7|i\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(23),
	datad => \inst7|i\(22),
	combout => \inst7|Equal0~6_combout\);

-- Location: FF_X16_Y4_N7
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

-- Location: LCCOMB_X17_Y4_N4
\inst7|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~5_combout\ = (!\inst7|i\(16) & (!\inst7|i\(19) & (!\inst7|i\(18) & !\inst7|i\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(16),
	datab => \inst7|i\(19),
	datac => \inst7|i\(18),
	datad => \inst7|i\(17),
	combout => \inst7|Equal0~5_combout\);

-- Location: LCCOMB_X17_Y4_N0
\inst7|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~7_combout\ = (!\inst7|i\(21) & (\inst7|Equal0~6_combout\ & (\inst7|Equal0~5_combout\ & !\inst7|i\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(21),
	datab => \inst7|Equal0~6_combout\,
	datac => \inst7|Equal0~5_combout\,
	datad => \inst7|i\(20),
	combout => \inst7|Equal0~7_combout\);

-- Location: LCCOMB_X16_Y4_N14
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

-- Location: FF_X16_Y4_N15
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

-- Location: LCCOMB_X16_Y4_N16
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

-- Location: FF_X16_Y4_N17
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

-- Location: LCCOMB_X16_Y4_N18
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

-- Location: FF_X16_Y4_N19
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

-- Location: LCCOMB_X16_Y4_N20
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

-- Location: FF_X16_Y4_N21
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

-- Location: FF_X16_Y4_N23
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

-- Location: LCCOMB_X17_Y4_N18
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

-- Location: FF_X16_Y5_N27
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

-- Location: LCCOMB_X17_Y5_N24
\inst7|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~3_combout\ = (!\inst7|i\(15) & (!\inst7|i\(14) & (!\inst7|i\(13) & !\inst7|i\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(15),
	datab => \inst7|i\(14),
	datac => \inst7|i\(13),
	datad => \inst7|i\(12),
	combout => \inst7|Equal0~3_combout\);

-- Location: FF_X16_Y5_N7
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

-- Location: LCCOMB_X17_Y5_N20
\inst7|i~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|i~0_combout\ = (\inst7|Add0~2_combout\ & !\inst7|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add0~2_combout\,
	datad => \inst7|Equal0~10_combout\,
	combout => \inst7|i~0_combout\);

-- Location: FF_X17_Y5_N21
\inst7|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|i~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(1));

-- Location: LCCOMB_X17_Y5_N26
\inst7|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~0_combout\ = (\inst7|i\(0) & (!\inst7|i\(2) & (!\inst7|i\(3) & !\inst7|i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(0),
	datab => \inst7|i\(2),
	datac => \inst7|i\(3),
	datad => \inst7|i\(1),
	combout => \inst7|Equal0~0_combout\);

-- Location: FF_X16_Y5_N13
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

-- Location: LCCOMB_X17_Y5_N22
\inst7|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~1_combout\ = (!\inst7|i\(5) & (!\inst7|i\(4) & (!\inst7|i\(6) & !\inst7|i\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(5),
	datab => \inst7|i\(4),
	datac => \inst7|i\(6),
	datad => \inst7|i\(7),
	combout => \inst7|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y5_N16
\inst7|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~4_combout\ = (\inst7|Equal0~2_combout\ & (\inst7|Equal0~3_combout\ & (\inst7|Equal0~0_combout\ & \inst7|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~2_combout\,
	datab => \inst7|Equal0~3_combout\,
	datac => \inst7|Equal0~0_combout\,
	datad => \inst7|Equal0~1_combout\,
	combout => \inst7|Equal0~4_combout\);

-- Location: LCCOMB_X17_Y5_N18
\inst7|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~10_combout\ = (\inst7|Equal0~9_combout\ & (\inst7|Equal0~7_combout\ & (\inst7|Equal0~8_combout\ & \inst7|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~9_combout\,
	datab => \inst7|Equal0~7_combout\,
	datac => \inst7|Equal0~8_combout\,
	datad => \inst7|Equal0~4_combout\,
	combout => \inst7|Equal0~10_combout\);

-- Location: LCCOMB_X17_Y5_N30
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

-- Location: FF_X17_Y5_N31
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

-- Location: CLKCTRL_G16
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

-- Location: LCCOMB_X32_Y23_N8
\inst|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|h_count\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|h_count\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: FF_X32_Y23_N9
\inst|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_count\(0));

-- Location: LCCOMB_X32_Y23_N10
\inst|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|h_count\(1) & (!\inst|Add0~1\)) # (!\inst|h_count\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X32_Y23_N12
\inst|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|h_count\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|h_count\(2) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|h_count\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X32_Y23_N14
\inst|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|h_count\(3) & (!\inst|Add0~5\)) # (!\inst|h_count\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|h_count\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: FF_X32_Y23_N15
\inst|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_count\(3));

-- Location: LCCOMB_X32_Y23_N16
\inst|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|h_count\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|h_count\(4) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|h_count\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|h_count\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: FF_X32_Y23_N17
\inst|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_count\(4));

-- Location: LCCOMB_X32_Y23_N20
\inst|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|h_count\(6) & (\inst|Add0~11\ $ (GND))) # (!\inst|h_count\(6) & (!\inst|Add0~11\ & VCC))
-- \inst|Add0~13\ = CARRY((\inst|h_count\(6) & !\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|h_count\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X32_Y23_N22
\inst|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|h_count\(7) & (!\inst|Add0~13\)) # (!\inst|h_count\(7) & ((\inst|Add0~13\) # (GND)))
-- \inst|Add0~15\ = CARRY((!\inst|Add0~13\) # (!\inst|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(7),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: FF_X32_Y23_N23
\inst|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_count\(7));

-- Location: LCCOMB_X30_Y23_N24
\inst|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (\inst|h_count\(2) & (\inst|h_count\(8) & (!\inst|h_count\(5) & !\inst|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(2),
	datab => \inst|h_count\(8),
	datac => \inst|h_count\(5),
	datad => \inst|h_count\(7),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X32_Y23_N18
\inst|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|h_count\(5) & (!\inst|Add0~9\)) # (!\inst|h_count\(5) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|h_count\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X32_Y23_N4
\inst|h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|h_count~2_combout\ = (\inst|Add0~10_combout\ & ((!\inst|Equal0~2_combout\) # (!\inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Equal0~2_combout\,
	datad => \inst|Add0~10_combout\,
	combout => \inst|h_count~2_combout\);

-- Location: FF_X32_Y23_N5
\inst|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_count\(5));

-- Location: FF_X32_Y23_N21
\inst|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_count\(6));

-- Location: LCCOMB_X32_Y23_N2
\inst|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (\inst|Equal0~0_combout\ & (\inst|h_count\(4) & (\inst|h_count\(3) & !\inst|h_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|h_count\(4),
	datac => \inst|h_count\(3),
	datad => \inst|h_count\(6),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X32_Y23_N24
\inst|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|h_count\(8) & (\inst|Add0~15\ $ (GND))) # (!\inst|h_count\(8) & (!\inst|Add0~15\ & VCC))
-- \inst|Add0~17\ = CARRY((\inst|h_count\(8) & !\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|h_count\(8),
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: LCCOMB_X32_Y23_N0
\inst|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|h_count~0_combout\ = (\inst|Add0~16_combout\ & ((!\inst|Equal0~2_combout\) # (!\inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Equal0~2_combout\,
	datad => \inst|Add0~16_combout\,
	combout => \inst|h_count~0_combout\);

-- Location: FF_X32_Y23_N1
\inst|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_count\(8));

-- Location: LCCOMB_X32_Y23_N26
\inst|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|h_count\(9) & (!\inst|Add0~17\)) # (!\inst|h_count\(9) & ((\inst|Add0~17\) # (GND)))
-- \inst|Add0~19\ = CARRY((!\inst|Add0~17\) # (!\inst|h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(9),
	datad => VCC,
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: LCCOMB_X32_Y23_N28
\inst|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = \inst|Add0~19\ $ (!\inst|h_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|h_count\(10),
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\);

-- Location: FF_X32_Y23_N29
\inst|h_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_count\(10));

-- Location: LCCOMB_X31_Y23_N8
\inst|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~0_combout\ = ((\inst|h_count\(10)) # ((\inst|h_count\(8)) # (!\inst|h_count\(7)))) # (!\inst|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(9),
	datab => \inst|h_count\(10),
	datac => \inst|h_count\(8),
	datad => \inst|h_count\(7),
	combout => \inst|process_0~0_combout\);

-- Location: LCCOMB_X31_Y23_N28
\inst|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~3_combout\ = (\inst|process_0~0_combout\) # ((\inst|process_0~2_combout\ & (\inst|h_count\(6) & \inst|h_count\(5))) # (!\inst|process_0~2_combout\ & (!\inst|h_count\(6) & !\inst|h_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~2_combout\,
	datab => \inst|process_0~0_combout\,
	datac => \inst|h_count\(6),
	datad => \inst|h_count\(5),
	combout => \inst|process_0~3_combout\);

-- Location: FF_X31_Y23_N29
\inst|horiz_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|horiz_sync~q\);

-- Location: LCCOMB_X31_Y23_N18
\inst|horiz_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|horiz_sync_out~feeder_combout\ = \inst|horiz_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|horiz_sync~q\,
	combout => \inst|horiz_sync_out~feeder_combout\);

-- Location: FF_X31_Y23_N19
\inst|horiz_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|horiz_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|horiz_sync_out~q\);

-- Location: LCCOMB_X27_Y23_N2
\inst|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = \inst|v_count\(0) $ (VCC)
-- \inst|Add1~1\ = CARRY(\inst|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|v_count\(0),
	datad => VCC,
	combout => \inst|Add1~0_combout\,
	cout => \inst|Add1~1\);

-- Location: FF_X32_Y23_N11
\inst|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_count\(1));

-- Location: LCCOMB_X31_Y23_N2
\inst|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~6_combout\ = ((!\inst|h_count\(2) & ((!\inst|h_count\(1)) # (!\inst|h_count\(0))))) # (!\inst|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(2),
	datab => \inst|h_count\(0),
	datac => \inst|h_count\(1),
	datad => \inst|h_count\(3),
	combout => \inst|process_0~6_combout\);

-- Location: LCCOMB_X31_Y23_N22
\inst|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~7_combout\ = (!\inst|h_count\(6) & (((\inst|process_0~6_combout\) # (!\inst|h_count\(4))) # (!\inst|h_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(5),
	datab => \inst|process_0~6_combout\,
	datac => \inst|h_count\(6),
	datad => \inst|h_count\(4),
	combout => \inst|process_0~7_combout\);

-- Location: LCCOMB_X31_Y23_N4
\inst|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~8_combout\ = ((!\inst|h_count\(8) & ((\inst|process_0~7_combout\) # (!\inst|h_count\(7))))) # (!\inst|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(9),
	datab => \inst|h_count\(8),
	datac => \inst|process_0~7_combout\,
	datad => \inst|h_count\(7),
	combout => \inst|process_0~8_combout\);

-- Location: LCCOMB_X28_Y23_N28
\inst|v_count~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count~5_combout\ = (\inst|Add1~8_combout\ & \inst|process_0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~8_combout\,
	datac => \inst|process_0~12_combout\,
	combout => \inst|v_count~5_combout\);

-- Location: LCCOMB_X31_Y23_N24
\inst|v_count[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count[0]~1_combout\ = ((!\inst|Equal1~0_combout\ & \inst|Equal0~1_combout\)) # (!\inst|process_0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~0_combout\,
	datac => \inst|process_0~12_combout\,
	datad => \inst|Equal0~1_combout\,
	combout => \inst|v_count[0]~1_combout\);

-- Location: FF_X28_Y23_N29
\inst|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|v_count~5_combout\,
	ena => \inst|v_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(4));

-- Location: LCCOMB_X27_Y23_N4
\inst|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~2_combout\ = (\inst|v_count\(1) & (!\inst|Add1~1\)) # (!\inst|v_count\(1) & ((\inst|Add1~1\) # (GND)))
-- \inst|Add1~3\ = CARRY((!\inst|Add1~1\) # (!\inst|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|v_count\(1),
	datad => VCC,
	cin => \inst|Add1~1\,
	combout => \inst|Add1~2_combout\,
	cout => \inst|Add1~3\);

-- Location: LCCOMB_X27_Y23_N28
\inst|v_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count~2_combout\ = (\inst|Add1~2_combout\ & \inst|process_0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add1~2_combout\,
	datad => \inst|process_0~12_combout\,
	combout => \inst|v_count~2_combout\);

-- Location: FF_X27_Y23_N29
\inst|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|v_count~2_combout\,
	ena => \inst|v_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(1));

-- Location: LCCOMB_X27_Y23_N6
\inst|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~4_combout\ = (\inst|v_count\(2) & (\inst|Add1~3\ $ (GND))) # (!\inst|v_count\(2) & (!\inst|Add1~3\ & VCC))
-- \inst|Add1~5\ = CARRY((\inst|v_count\(2) & !\inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|v_count\(2),
	datad => VCC,
	cin => \inst|Add1~3\,
	combout => \inst|Add1~4_combout\,
	cout => \inst|Add1~5\);

-- Location: LCCOMB_X28_Y23_N14
\inst|v_count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count~3_combout\ = (\inst|process_0~12_combout\ & \inst|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~12_combout\,
	datac => \inst|Add1~4_combout\,
	combout => \inst|v_count~3_combout\);

-- Location: FF_X28_Y23_N15
\inst|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|v_count~3_combout\,
	ena => \inst|v_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(2));

-- Location: LCCOMB_X27_Y23_N8
\inst|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~6_combout\ = (\inst|v_count\(3) & (!\inst|Add1~5\)) # (!\inst|v_count\(3) & ((\inst|Add1~5\) # (GND)))
-- \inst|Add1~7\ = CARRY((!\inst|Add1~5\) # (!\inst|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|v_count\(3),
	datad => VCC,
	cin => \inst|Add1~5\,
	combout => \inst|Add1~6_combout\,
	cout => \inst|Add1~7\);

-- Location: LCCOMB_X27_Y23_N30
\inst|v_count~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count~4_combout\ = (\inst|Add1~6_combout\ & \inst|process_0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add1~6_combout\,
	datad => \inst|process_0~12_combout\,
	combout => \inst|v_count~4_combout\);

-- Location: FF_X27_Y23_N31
\inst|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|v_count~4_combout\,
	ena => \inst|v_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(3));

-- Location: LCCOMB_X28_Y23_N4
\inst|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~9_combout\ = (!\inst|v_count\(5) & (!\inst|v_count\(4) & ((!\inst|v_count\(3)) # (!\inst|v_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|v_count\(5),
	datab => \inst|v_count\(4),
	datac => \inst|v_count\(2),
	datad => \inst|v_count\(3),
	combout => \inst|process_0~9_combout\);

-- Location: LCCOMB_X28_Y23_N26
\inst|v_count~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count~6_combout\ = (\inst|Add1~10_combout\ & \inst|process_0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~10_combout\,
	datac => \inst|process_0~12_combout\,
	combout => \inst|v_count~6_combout\);

-- Location: FF_X28_Y23_N27
\inst|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|v_count~6_combout\,
	ena => \inst|v_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(5));

-- Location: LCCOMB_X27_Y23_N14
\inst|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~12_combout\ = (\inst|v_count\(6) & (\inst|Add1~11\ $ (GND))) # (!\inst|v_count\(6) & (!\inst|Add1~11\ & VCC))
-- \inst|Add1~13\ = CARRY((\inst|v_count\(6) & !\inst|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|v_count\(6),
	datad => VCC,
	cin => \inst|Add1~11\,
	combout => \inst|Add1~12_combout\,
	cout => \inst|Add1~13\);

-- Location: LCCOMB_X27_Y23_N16
\inst|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~14_combout\ = (\inst|v_count\(7) & (!\inst|Add1~13\)) # (!\inst|v_count\(7) & ((\inst|Add1~13\) # (GND)))
-- \inst|Add1~15\ = CARRY((!\inst|Add1~13\) # (!\inst|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|v_count\(7),
	datad => VCC,
	cin => \inst|Add1~13\,
	combout => \inst|Add1~14_combout\,
	cout => \inst|Add1~15\);

-- Location: LCCOMB_X28_Y23_N24
\inst|v_count~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count~8_combout\ = (\inst|process_0~12_combout\ & \inst|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~12_combout\,
	datac => \inst|Add1~14_combout\,
	combout => \inst|v_count~8_combout\);

-- Location: FF_X28_Y23_N25
\inst|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|v_count~8_combout\,
	ena => \inst|v_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(7));

-- Location: LCCOMB_X28_Y23_N30
\inst|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~10_combout\ = (!\inst|v_count\(8) & !\inst|v_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|v_count\(8),
	datad => \inst|v_count\(7),
	combout => \inst|process_0~10_combout\);

-- Location: LCCOMB_X27_Y23_N18
\inst|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~16_combout\ = (\inst|v_count\(8) & (\inst|Add1~15\ $ (GND))) # (!\inst|v_count\(8) & (!\inst|Add1~15\ & VCC))
-- \inst|Add1~17\ = CARRY((\inst|v_count\(8) & !\inst|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|v_count\(8),
	datad => VCC,
	cin => \inst|Add1~15\,
	combout => \inst|Add1~16_combout\,
	cout => \inst|Add1~17\);

-- Location: LCCOMB_X27_Y23_N20
\inst|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~18_combout\ = (\inst|v_count\(9) & (!\inst|Add1~17\)) # (!\inst|v_count\(9) & ((\inst|Add1~17\) # (GND)))
-- \inst|Add1~19\ = CARRY((!\inst|Add1~17\) # (!\inst|v_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|v_count\(9),
	datad => VCC,
	cin => \inst|Add1~17\,
	combout => \inst|Add1~18_combout\,
	cout => \inst|Add1~19\);

-- Location: LCCOMB_X28_Y23_N18
\inst|v_count[9]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count[9]~10_combout\ = (\inst|v_count[0]~1_combout\ & (\inst|process_0~12_combout\ & ((\inst|Add1~18_combout\)))) # (!\inst|v_count[0]~1_combout\ & (((\inst|v_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~12_combout\,
	datab => \inst|v_count[0]~1_combout\,
	datac => \inst|v_count\(9),
	datad => \inst|Add1~18_combout\,
	combout => \inst|v_count[9]~10_combout\);

-- Location: FF_X28_Y23_N19
\inst|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|v_count[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(9));

-- Location: LCCOMB_X28_Y23_N12
\inst|process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~11_combout\ = ((!\inst|v_count\(6) & (\inst|process_0~9_combout\ & \inst|process_0~10_combout\))) # (!\inst|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|v_count\(6),
	datab => \inst|process_0~9_combout\,
	datac => \inst|process_0~10_combout\,
	datad => \inst|v_count\(9),
	combout => \inst|process_0~11_combout\);

-- Location: LCCOMB_X31_Y23_N30
\inst|process_0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~12_combout\ = (\inst|v_count\(10) & (!\inst|h_count\(10) & (\inst|process_0~8_combout\))) # (!\inst|v_count\(10) & ((\inst|process_0~11_combout\) # ((!\inst|h_count\(10) & \inst|process_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|v_count\(10),
	datab => \inst|h_count\(10),
	datac => \inst|process_0~8_combout\,
	datad => \inst|process_0~11_combout\,
	combout => \inst|process_0~12_combout\);

-- Location: LCCOMB_X27_Y23_N0
\inst|v_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count~0_combout\ = (\inst|Add1~0_combout\ & \inst|process_0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add1~0_combout\,
	datad => \inst|process_0~12_combout\,
	combout => \inst|v_count~0_combout\);

-- Location: FF_X27_Y23_N1
\inst|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|v_count~0_combout\,
	ena => \inst|v_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(0));

-- Location: LCCOMB_X27_Y23_N24
\inst|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~4_combout\ = ((\inst|v_count\(1) $ (!\inst|v_count\(0))) # (!\inst|v_count\(3))) # (!\inst|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|v_count\(1),
	datab => \inst|v_count\(0),
	datac => \inst|v_count\(2),
	datad => \inst|v_count\(3),
	combout => \inst|process_0~4_combout\);

-- Location: LCCOMB_X27_Y23_N26
\inst|v_count~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count~7_combout\ = (\inst|Add1~12_combout\ & \inst|process_0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add1~12_combout\,
	datad => \inst|process_0~12_combout\,
	combout => \inst|v_count~7_combout\);

-- Location: FF_X27_Y23_N27
\inst|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|v_count~7_combout\,
	ena => \inst|v_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(6));

-- Location: LCCOMB_X28_Y23_N6
\inst|v_count~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count~9_combout\ = (\inst|Add1~16_combout\ & \inst|process_0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add1~16_combout\,
	datac => \inst|process_0~12_combout\,
	combout => \inst|v_count~9_combout\);

-- Location: FF_X28_Y23_N7
\inst|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|v_count~9_combout\,
	ena => \inst|v_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(8));

-- Location: LCCOMB_X28_Y23_N8
\inst|LessThan7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan7~2_combout\ = (\inst|v_count\(5) & (\inst|v_count\(7) & (\inst|v_count\(6) & \inst|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|v_count\(5),
	datab => \inst|v_count\(7),
	datac => \inst|v_count\(6),
	datad => \inst|v_count\(8),
	combout => \inst|LessThan7~2_combout\);

-- Location: LCCOMB_X28_Y23_N20
\inst|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~5_combout\ = ((\inst|process_0~4_combout\) # ((\inst|v_count\(4)) # (!\inst|LessThan7~2_combout\))) # (!\inst|LessThan7~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan7~3_combout\,
	datab => \inst|process_0~4_combout\,
	datac => \inst|LessThan7~2_combout\,
	datad => \inst|v_count\(4),
	combout => \inst|process_0~5_combout\);

-- Location: FF_X28_Y23_N21
\inst|vert_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vert_sync~q\);

-- Location: LCCOMB_X40_Y15_N16
\inst|vert_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|vert_sync_out~feeder_combout\ = \inst|vert_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|vert_sync~q\,
	combout => \inst|vert_sync_out~feeder_combout\);

-- Location: FF_X40_Y15_N17
\inst|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|vert_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vert_sync_out~q\);

-- Location: LCCOMB_X32_Y23_N30
\inst|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|h_count~1_combout\ = (\inst|Add0~18_combout\ & ((!\inst|Equal0~1_combout\) # (!\inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datac => \inst|Add0~18_combout\,
	datad => \inst|Equal0~1_combout\,
	combout => \inst|h_count~1_combout\);

-- Location: FF_X32_Y23_N31
\inst|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_count\(9));

-- Location: LCCOMB_X30_Y22_N8
\inst|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan6~0_combout\ = (!\inst|h_count\(10) & (((!\inst|h_count\(8) & !\inst|h_count\(7))) # (!\inst|h_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(9),
	datab => \inst|h_count\(8),
	datac => \inst|h_count\(7),
	datad => \inst|h_count\(10),
	combout => \inst|LessThan6~0_combout\);

-- Location: FF_X29_Y20_N11
\inst|pixel_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~q\,
	asdata => \inst|h_count\(9),
	sload => VCC,
	ena => \inst|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_column\(9));

-- Location: LCCOMB_X31_Y16_N2
\inst1|cursor_column~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~7_combout\ = (\inst1|cursor_column~2_combout\ & ((\inst1|new_cursor_column\(9)) # (!\inst1|cursor_column[9]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|new_cursor_column\(9),
	datac => \inst1|cursor_column[9]~0_combout\,
	datad => \inst1|cursor_column~2_combout\,
	combout => \inst1|cursor_column~7_combout\);

-- Location: LCCOMB_X31_Y16_N18
\inst1|cursor_column[9]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column[9]~4_combout\ = (\inst1|READ_CHAR~q\ & (!\inst1|PACKET_COUNT\(1) & (!\inst1|LessThan1~0_combout\ & \inst1|INCNT[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|READ_CHAR~q\,
	datab => \inst1|PACKET_COUNT\(1),
	datac => \inst1|LessThan1~0_combout\,
	datad => \inst1|INCNT[3]~0_combout\,
	combout => \inst1|cursor_column[9]~4_combout\);

-- Location: FF_X31_Y16_N3
\inst1|cursor_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_column~7_combout\,
	ena => \inst1|cursor_column[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_column\(9));

-- Location: LCCOMB_X30_Y16_N22
\inst1|RECV_UART~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|RECV_UART~1_combout\ = (!\inst1|cursor_column\(8) & (!\inst1|cursor_column\(7) & !\inst1|cursor_column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cursor_column\(8),
	datac => \inst1|cursor_column\(7),
	datad => \inst1|cursor_column\(9),
	combout => \inst1|RECV_UART~1_combout\);

-- Location: LCCOMB_X28_Y17_N12
\inst1|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Equal3~0_combout\ = (\inst1|PACKET_COUNT\(0)) # (\inst1|PACKET_COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PACKET_COUNT\(0),
	datad => \inst1|PACKET_COUNT\(1),
	combout => \inst1|Equal3~0_combout\);

-- Location: LCCOMB_X31_Y16_N28
\inst1|cursor_column~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~8_combout\ = (\inst1|new_cursor_column\(5) & (\inst1|cursor_column[9]~0_combout\ & \inst1|cursor_column~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|new_cursor_column\(5),
	datac => \inst1|cursor_column[9]~0_combout\,
	datad => \inst1|cursor_column~2_combout\,
	combout => \inst1|cursor_column~8_combout\);

-- Location: FF_X31_Y16_N29
\inst1|cursor_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_column~8_combout\,
	ena => \inst1|cursor_column[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_column\(5));

-- Location: LCCOMB_X29_Y17_N30
\inst1|PACKET_CHAR2[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR2[3]~feeder_combout\ = \inst1|SHIFTIN\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(3),
	combout => \inst1|PACKET_CHAR2[3]~feeder_combout\);

-- Location: LCCOMB_X28_Y17_N4
\inst1|PACKET_CHAR2[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR2[7]~3_combout\ = (\inst1|PACKET_CHAR2[7]~2_combout\ & (\inst1|READ_CHAR~q\ & (!\inst1|LessThan1~0_combout\ & \inst1|INCNT[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PACKET_CHAR2[7]~2_combout\,
	datab => \inst1|READ_CHAR~q\,
	datac => \inst1|LessThan1~0_combout\,
	datad => \inst1|INCNT[3]~0_combout\,
	combout => \inst1|PACKET_CHAR2[7]~3_combout\);

-- Location: FF_X29_Y17_N31
\inst1|PACKET_CHAR2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR2[3]~feeder_combout\,
	ena => \inst1|PACKET_CHAR2[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR2\(3));

-- Location: LCCOMB_X30_Y17_N10
\inst1|new_cursor_column[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_column[0]~10_combout\ = (\inst1|PACKET_CHAR2\(0) & (\inst1|cursor_column\(0) $ (VCC))) # (!\inst1|PACKET_CHAR2\(0) & (\inst1|cursor_column\(0) & VCC))
-- \inst1|new_cursor_column[0]~11\ = CARRY((\inst1|PACKET_CHAR2\(0) & \inst1|cursor_column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PACKET_CHAR2\(0),
	datab => \inst1|cursor_column\(0),
	datad => VCC,
	combout => \inst1|new_cursor_column[0]~10_combout\,
	cout => \inst1|new_cursor_column[0]~11\);

-- Location: LCCOMB_X33_Y19_N4
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X30_Y17_N2
\inst1|new_cursor_column[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_column[9]~28_combout\ = (!\inst1|LessThan1~0_combout\ & (\inst1|READ_CHAR~q\ & (!\inst1|Add3~0_combout\ & \inst1|INCNT[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~0_combout\,
	datab => \inst1|READ_CHAR~q\,
	datac => \inst1|Add3~0_combout\,
	datad => \inst1|INCNT[3]~0_combout\,
	combout => \inst1|new_cursor_column[9]~28_combout\);

-- Location: FF_X30_Y17_N11
\inst1|new_cursor_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_column[0]~10_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_column[9]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_column\(0));

-- Location: LCCOMB_X31_Y16_N24
\inst1|cursor_column~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~13_combout\ = (\inst1|new_cursor_column\(0) & (\inst1|cursor_column[9]~0_combout\ & \inst1|cursor_column~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|new_cursor_column\(0),
	datac => \inst1|cursor_column[9]~0_combout\,
	datad => \inst1|cursor_column~2_combout\,
	combout => \inst1|cursor_column~13_combout\);

-- Location: FF_X31_Y16_N25
\inst1|cursor_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_column~13_combout\,
	ena => \inst1|cursor_column[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_column\(0));

-- Location: LCCOMB_X30_Y17_N12
\inst1|new_cursor_column[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_column[1]~12_combout\ = (\inst1|PACKET_CHAR2\(1) & ((\inst1|cursor_column\(1) & (\inst1|new_cursor_column[0]~11\ & VCC)) # (!\inst1|cursor_column\(1) & (!\inst1|new_cursor_column[0]~11\)))) # (!\inst1|PACKET_CHAR2\(1) & 
-- ((\inst1|cursor_column\(1) & (!\inst1|new_cursor_column[0]~11\)) # (!\inst1|cursor_column\(1) & ((\inst1|new_cursor_column[0]~11\) # (GND)))))
-- \inst1|new_cursor_column[1]~13\ = CARRY((\inst1|PACKET_CHAR2\(1) & (!\inst1|cursor_column\(1) & !\inst1|new_cursor_column[0]~11\)) # (!\inst1|PACKET_CHAR2\(1) & ((!\inst1|new_cursor_column[0]~11\) # (!\inst1|cursor_column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PACKET_CHAR2\(1),
	datab => \inst1|cursor_column\(1),
	datad => VCC,
	cin => \inst1|new_cursor_column[0]~11\,
	combout => \inst1|new_cursor_column[1]~12_combout\,
	cout => \inst1|new_cursor_column[1]~13\);

-- Location: FF_X30_Y17_N13
\inst1|new_cursor_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_column[1]~12_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_column[9]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_column\(1));

-- Location: LCCOMB_X31_Y16_N22
\inst1|cursor_column~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~12_combout\ = (\inst1|new_cursor_column\(1) & (\inst1|cursor_column[9]~0_combout\ & \inst1|cursor_column~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|new_cursor_column\(1),
	datac => \inst1|cursor_column[9]~0_combout\,
	datad => \inst1|cursor_column~2_combout\,
	combout => \inst1|cursor_column~12_combout\);

-- Location: FF_X31_Y16_N23
\inst1|cursor_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_column~12_combout\,
	ena => \inst1|cursor_column[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_column\(1));

-- Location: LCCOMB_X30_Y17_N14
\inst1|new_cursor_column[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_column[2]~14_combout\ = ((\inst1|PACKET_CHAR2\(2) $ (\inst1|cursor_column\(2) $ (!\inst1|new_cursor_column[1]~13\)))) # (GND)
-- \inst1|new_cursor_column[2]~15\ = CARRY((\inst1|PACKET_CHAR2\(2) & ((\inst1|cursor_column\(2)) # (!\inst1|new_cursor_column[1]~13\))) # (!\inst1|PACKET_CHAR2\(2) & (\inst1|cursor_column\(2) & !\inst1|new_cursor_column[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PACKET_CHAR2\(2),
	datab => \inst1|cursor_column\(2),
	datad => VCC,
	cin => \inst1|new_cursor_column[1]~13\,
	combout => \inst1|new_cursor_column[2]~14_combout\,
	cout => \inst1|new_cursor_column[2]~15\);

-- Location: FF_X30_Y17_N15
\inst1|new_cursor_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_column[2]~14_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_column[9]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_column\(2));

-- Location: LCCOMB_X31_Y16_N4
\inst1|cursor_column~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~11_combout\ = (\inst1|new_cursor_column\(2) & (\inst1|cursor_column[9]~0_combout\ & \inst1|cursor_column~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|new_cursor_column\(2),
	datac => \inst1|cursor_column[9]~0_combout\,
	datad => \inst1|cursor_column~2_combout\,
	combout => \inst1|cursor_column~11_combout\);

-- Location: FF_X31_Y16_N5
\inst1|cursor_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_column~11_combout\,
	ena => \inst1|cursor_column[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_column\(2));

-- Location: LCCOMB_X30_Y17_N16
\inst1|new_cursor_column[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_column[3]~16_combout\ = (\inst1|cursor_column\(3) & ((\inst1|PACKET_CHAR2\(3) & (\inst1|new_cursor_column[2]~15\ & VCC)) # (!\inst1|PACKET_CHAR2\(3) & (!\inst1|new_cursor_column[2]~15\)))) # (!\inst1|cursor_column\(3) & 
-- ((\inst1|PACKET_CHAR2\(3) & (!\inst1|new_cursor_column[2]~15\)) # (!\inst1|PACKET_CHAR2\(3) & ((\inst1|new_cursor_column[2]~15\) # (GND)))))
-- \inst1|new_cursor_column[3]~17\ = CARRY((\inst1|cursor_column\(3) & (!\inst1|PACKET_CHAR2\(3) & !\inst1|new_cursor_column[2]~15\)) # (!\inst1|cursor_column\(3) & ((!\inst1|new_cursor_column[2]~15\) # (!\inst1|PACKET_CHAR2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cursor_column\(3),
	datab => \inst1|PACKET_CHAR2\(3),
	datad => VCC,
	cin => \inst1|new_cursor_column[2]~15\,
	combout => \inst1|new_cursor_column[3]~16_combout\,
	cout => \inst1|new_cursor_column[3]~17\);

-- Location: LCCOMB_X30_Y17_N18
\inst1|new_cursor_column[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_column[4]~18_combout\ = ((\inst1|PACKET_CHAR2\(4) $ (\inst1|cursor_column\(4) $ (!\inst1|new_cursor_column[3]~17\)))) # (GND)
-- \inst1|new_cursor_column[4]~19\ = CARRY((\inst1|PACKET_CHAR2\(4) & ((\inst1|cursor_column\(4)) # (!\inst1|new_cursor_column[3]~17\))) # (!\inst1|PACKET_CHAR2\(4) & (\inst1|cursor_column\(4) & !\inst1|new_cursor_column[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PACKET_CHAR2\(4),
	datab => \inst1|cursor_column\(4),
	datad => VCC,
	cin => \inst1|new_cursor_column[3]~17\,
	combout => \inst1|new_cursor_column[4]~18_combout\,
	cout => \inst1|new_cursor_column[4]~19\);

-- Location: FF_X30_Y17_N19
\inst1|new_cursor_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_column[4]~18_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_column[9]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_column\(4));

-- Location: LCCOMB_X31_Y16_N30
\inst1|cursor_column~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~9_combout\ = (\inst1|new_cursor_column\(4) & (\inst1|cursor_column[9]~0_combout\ & \inst1|cursor_column~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|new_cursor_column\(4),
	datac => \inst1|cursor_column[9]~0_combout\,
	datad => \inst1|cursor_column~2_combout\,
	combout => \inst1|cursor_column~9_combout\);

-- Location: FF_X31_Y16_N31
\inst1|cursor_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_column~9_combout\,
	ena => \inst1|cursor_column[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_column\(4));

-- Location: LCCOMB_X30_Y17_N20
\inst1|new_cursor_column[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_column[5]~20_combout\ = (\inst1|PACKET_CHAR2\(5) & ((\inst1|cursor_column\(5) & (\inst1|new_cursor_column[4]~19\ & VCC)) # (!\inst1|cursor_column\(5) & (!\inst1|new_cursor_column[4]~19\)))) # (!\inst1|PACKET_CHAR2\(5) & 
-- ((\inst1|cursor_column\(5) & (!\inst1|new_cursor_column[4]~19\)) # (!\inst1|cursor_column\(5) & ((\inst1|new_cursor_column[4]~19\) # (GND)))))
-- \inst1|new_cursor_column[5]~21\ = CARRY((\inst1|PACKET_CHAR2\(5) & (!\inst1|cursor_column\(5) & !\inst1|new_cursor_column[4]~19\)) # (!\inst1|PACKET_CHAR2\(5) & ((!\inst1|new_cursor_column[4]~19\) # (!\inst1|cursor_column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PACKET_CHAR2\(5),
	datab => \inst1|cursor_column\(5),
	datad => VCC,
	cin => \inst1|new_cursor_column[4]~19\,
	combout => \inst1|new_cursor_column[5]~20_combout\,
	cout => \inst1|new_cursor_column[5]~21\);

-- Location: FF_X30_Y17_N21
\inst1|new_cursor_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_column[5]~20_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_column[9]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_column\(5));

-- Location: LCCOMB_X29_Y17_N4
\inst1|PACKET_CHAR2[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR2[6]~feeder_combout\ = \inst1|SHIFTIN\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|SHIFTIN\(6),
	combout => \inst1|PACKET_CHAR2[6]~feeder_combout\);

-- Location: FF_X29_Y17_N5
\inst1|PACKET_CHAR2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR2[6]~feeder_combout\,
	ena => \inst1|PACKET_CHAR2[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR2\(6));

-- Location: LCCOMB_X30_Y17_N22
\inst1|new_cursor_column[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_column[6]~22_combout\ = ((\inst1|cursor_column\(6) $ (\inst1|PACKET_CHAR2\(6) $ (!\inst1|new_cursor_column[5]~21\)))) # (GND)
-- \inst1|new_cursor_column[6]~23\ = CARRY((\inst1|cursor_column\(6) & ((\inst1|PACKET_CHAR2\(6)) # (!\inst1|new_cursor_column[5]~21\))) # (!\inst1|cursor_column\(6) & (\inst1|PACKET_CHAR2\(6) & !\inst1|new_cursor_column[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cursor_column\(6),
	datab => \inst1|PACKET_CHAR2\(6),
	datad => VCC,
	cin => \inst1|new_cursor_column[5]~21\,
	combout => \inst1|new_cursor_column[6]~22_combout\,
	cout => \inst1|new_cursor_column[6]~23\);

-- Location: FF_X30_Y17_N23
\inst1|new_cursor_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_column[6]~22_combout\,
	asdata => VCC,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_column[9]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_column\(6));

-- Location: FF_X30_Y17_N17
\inst1|new_cursor_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_column[3]~16_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_column[9]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_column\(3));

-- Location: LCCOMB_X30_Y17_N0
\inst1|RECV_UART~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|RECV_UART~0_combout\ = (!\inst1|new_cursor_column\(1) & (!\inst1|new_cursor_column\(3) & (!\inst1|new_cursor_column\(2) & !\inst1|new_cursor_column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|new_cursor_column\(1),
	datab => \inst1|new_cursor_column\(3),
	datac => \inst1|new_cursor_column\(2),
	datad => \inst1|new_cursor_column\(4),
	combout => \inst1|RECV_UART~0_combout\);

-- Location: LCCOMB_X30_Y17_N4
\inst1|RECV_UART~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|RECV_UART~2_combout\ = (!\inst1|new_cursor_column\(5) & (!\inst1|new_cursor_column\(6) & \inst1|RECV_UART~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|new_cursor_column\(5),
	datac => \inst1|new_cursor_column\(6),
	datad => \inst1|RECV_UART~0_combout\,
	combout => \inst1|RECV_UART~2_combout\);

-- Location: LCCOMB_X31_Y16_N6
\inst1|cursor_column~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~1_combout\ = (\inst1|new_cursor_column\(7) & (\inst1|new_cursor_column\(8))) # (!\inst1|new_cursor_column\(7) & ((\inst1|new_cursor_column\(8) & ((\inst1|new_cursor_column\(0)) # (!\inst1|RECV_UART~2_combout\))) # 
-- (!\inst1|new_cursor_column\(8) & (\inst1|RECV_UART~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|new_cursor_column\(7),
	datab => \inst1|new_cursor_column\(8),
	datac => \inst1|RECV_UART~2_combout\,
	datad => \inst1|new_cursor_column\(0),
	combout => \inst1|cursor_column~1_combout\);

-- Location: LCCOMB_X31_Y16_N20
\inst1|cursor_column~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~2_combout\ = (\inst1|Equal3~0_combout\ & (((!\inst1|new_cursor_column\(9) & !\inst1|cursor_column~1_combout\)) # (!\inst1|RECV_UART~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|new_cursor_column\(9),
	datab => \inst1|RECV_UART~1_combout\,
	datac => \inst1|Equal3~0_combout\,
	datad => \inst1|cursor_column~1_combout\,
	combout => \inst1|cursor_column~2_combout\);

-- Location: LCCOMB_X31_Y16_N16
\inst1|cursor_column~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~3_combout\ = ((\inst1|new_cursor_column\(8) & (\inst1|cursor_column[9]~0_combout\ & \inst1|cursor_column~2_combout\))) # (!\inst1|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~0_combout\,
	datab => \inst1|new_cursor_column\(8),
	datac => \inst1|cursor_column[9]~0_combout\,
	datad => \inst1|cursor_column~2_combout\,
	combout => \inst1|cursor_column~3_combout\);

-- Location: FF_X31_Y16_N17
\inst1|cursor_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_column~3_combout\,
	ena => \inst1|cursor_column[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_column\(8));

-- Location: LCCOMB_X30_Y17_N24
\inst1|new_cursor_column[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_column[7]~24_combout\ = (\inst1|PACKET_CHAR2\(7) & ((\inst1|cursor_column\(7) & (\inst1|new_cursor_column[6]~23\ & VCC)) # (!\inst1|cursor_column\(7) & (!\inst1|new_cursor_column[6]~23\)))) # (!\inst1|PACKET_CHAR2\(7) & 
-- ((\inst1|cursor_column\(7) & (!\inst1|new_cursor_column[6]~23\)) # (!\inst1|cursor_column\(7) & ((\inst1|new_cursor_column[6]~23\) # (GND)))))
-- \inst1|new_cursor_column[7]~25\ = CARRY((\inst1|PACKET_CHAR2\(7) & (!\inst1|cursor_column\(7) & !\inst1|new_cursor_column[6]~23\)) # (!\inst1|PACKET_CHAR2\(7) & ((!\inst1|new_cursor_column[6]~23\) # (!\inst1|cursor_column\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PACKET_CHAR2\(7),
	datab => \inst1|cursor_column\(7),
	datad => VCC,
	cin => \inst1|new_cursor_column[6]~23\,
	combout => \inst1|new_cursor_column[7]~24_combout\,
	cout => \inst1|new_cursor_column[7]~25\);

-- Location: FF_X30_Y17_N27
\inst1|new_cursor_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_column[8]~26_combout\,
	asdata => VCC,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_column[9]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_column\(8));

-- Location: FF_X30_Y17_N25
\inst1|new_cursor_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_column[7]~24_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_column[9]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_column\(7));

-- Location: LCCOMB_X30_Y17_N30
\inst1|LessThan9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan9~0_combout\ = (\inst1|new_cursor_column\(0)) # ((\inst1|new_cursor_column\(5)) # ((\inst1|new_cursor_column\(6)) # (!\inst1|RECV_UART~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|new_cursor_column\(0),
	datab => \inst1|new_cursor_column\(5),
	datac => \inst1|new_cursor_column\(6),
	datad => \inst1|RECV_UART~0_combout\,
	combout => \inst1|LessThan9~0_combout\);

-- Location: LCCOMB_X31_Y16_N8
\inst1|cursor_column[9]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column[9]~0_combout\ = ((!\inst1|new_cursor_column\(8) & ((!\inst1|LessThan9~0_combout\) # (!\inst1|new_cursor_column\(7))))) # (!\inst1|new_cursor_column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|new_cursor_column\(9),
	datab => \inst1|new_cursor_column\(8),
	datac => \inst1|new_cursor_column\(7),
	datad => \inst1|LessThan9~0_combout\,
	combout => \inst1|cursor_column[9]~0_combout\);

-- Location: LCCOMB_X31_Y16_N14
\inst1|cursor_column~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~5_combout\ = (\inst1|cursor_column~2_combout\ & ((\inst1|new_cursor_column\(7)) # (!\inst1|cursor_column[9]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|new_cursor_column\(7),
	datac => \inst1|cursor_column[9]~0_combout\,
	datad => \inst1|cursor_column~2_combout\,
	combout => \inst1|cursor_column~5_combout\);

-- Location: FF_X31_Y16_N15
\inst1|cursor_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_column~5_combout\,
	ena => \inst1|cursor_column[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_column\(7));

-- Location: LCCOMB_X31_Y16_N12
\inst1|cursor_column~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~6_combout\ = ((\inst1|new_cursor_column\(6) & (\inst1|cursor_column[9]~0_combout\ & \inst1|cursor_column~2_combout\))) # (!\inst1|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~0_combout\,
	datab => \inst1|new_cursor_column\(6),
	datac => \inst1|cursor_column[9]~0_combout\,
	datad => \inst1|cursor_column~2_combout\,
	combout => \inst1|cursor_column~6_combout\);

-- Location: FF_X31_Y16_N13
\inst1|cursor_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_column~6_combout\,
	ena => \inst1|cursor_column[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_column\(6));

-- Location: LCCOMB_X30_Y16_N26
\inst11|LessThan14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan14~0_combout\ = (!\inst1|cursor_column\(9) & (((!\inst1|cursor_column\(6)) # (!\inst1|cursor_column\(7))) # (!\inst1|cursor_column\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cursor_column\(8),
	datab => \inst1|cursor_column\(7),
	datac => \inst1|cursor_column\(6),
	datad => \inst1|cursor_column\(9),
	combout => \inst11|LessThan14~0_combout\);

-- Location: LCCOMB_X30_Y16_N0
\inst11|player_x_pos[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|player_x_pos[0]~11_combout\ = \inst11|player_x_pos\(0) $ (VCC)
-- \inst11|player_x_pos[0]~12\ = CARRY(\inst11|player_x_pos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|player_x_pos\(0),
	datad => VCC,
	combout => \inst11|player_x_pos[0]~11_combout\,
	cout => \inst11|player_x_pos[0]~12\);

-- Location: LCCOMB_X30_Y16_N2
\inst11|player_x_pos[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|player_x_pos[1]~13_combout\ = (\inst11|LessThan14~0_combout\ & ((\inst11|player_x_pos\(1) & (!\inst11|player_x_pos[0]~12\)) # (!\inst11|player_x_pos\(1) & ((\inst11|player_x_pos[0]~12\) # (GND))))) # (!\inst11|LessThan14~0_combout\ & 
-- ((\inst11|player_x_pos\(1) & (\inst11|player_x_pos[0]~12\ & VCC)) # (!\inst11|player_x_pos\(1) & (!\inst11|player_x_pos[0]~12\))))
-- \inst11|player_x_pos[1]~14\ = CARRY((\inst11|LessThan14~0_combout\ & ((!\inst11|player_x_pos[0]~12\) # (!\inst11|player_x_pos\(1)))) # (!\inst11|LessThan14~0_combout\ & (!\inst11|player_x_pos\(1) & !\inst11|player_x_pos[0]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan14~0_combout\,
	datab => \inst11|player_x_pos\(1),
	datad => VCC,
	cin => \inst11|player_x_pos[0]~12\,
	combout => \inst11|player_x_pos[1]~13_combout\,
	cout => \inst11|player_x_pos[1]~14\);

-- Location: LCCOMB_X30_Y16_N24
\inst11|player_x_pos[4]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|player_x_pos[4]~35_combout\ = (!\inst11|LessThan14~0_combout\ & (\inst11|player_x_pos\(9) & ((\inst11|player_x_pos[4]~34_combout\) # (\inst11|player_x_pos\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|player_x_pos[4]~34_combout\,
	datab => \inst11|player_x_pos\(7),
	datac => \inst11|LessThan14~0_combout\,
	datad => \inst11|player_x_pos\(9),
	combout => \inst11|player_x_pos[4]~35_combout\);

-- Location: LCCOMB_X31_Y16_N0
\inst11|LessThan16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan16~0_combout\ = (\inst1|cursor_column\(6)) # ((\inst1|cursor_column\(7)) # ((\inst1|cursor_column\(4)) # (\inst1|cursor_column\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cursor_column\(6),
	datab => \inst1|cursor_column\(7),
	datac => \inst1|cursor_column\(4),
	datad => \inst1|cursor_column\(5),
	combout => \inst11|LessThan16~0_combout\);

-- Location: LCCOMB_X31_Y16_N26
\inst11|LessThan16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan16~1_combout\ = (\inst1|cursor_column\(3)) # ((\inst1|cursor_column\(2)) # ((\inst1|cursor_column\(1)) # (\inst1|cursor_column\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cursor_column\(3),
	datab => \inst1|cursor_column\(2),
	datac => \inst1|cursor_column\(1),
	datad => \inst1|cursor_column\(0),
	combout => \inst11|LessThan16~1_combout\);

-- Location: LCCOMB_X30_Y16_N30
\inst11|player_x_pos[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|player_x_pos[4]~40_combout\ = (\inst11|player_x_pos[4]~39_combout\) # ((\inst1|cursor_column\(8) & ((\inst11|LessThan16~0_combout\) # (\inst11|LessThan16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|player_x_pos[4]~39_combout\,
	datab => \inst1|cursor_column\(8),
	datac => \inst11|LessThan16~0_combout\,
	datad => \inst11|LessThan16~1_combout\,
	combout => \inst11|player_x_pos[4]~40_combout\);

-- Location: IOIBUF_X0_Y24_N1
\sw0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw0,
	o => \sw0~input_o\);

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

-- Location: LCCOMB_X29_Y19_N10
\inst15|s_game_mode~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|s_game_mode~0_combout\ = (\sw0~input_o\ & !\bt2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw0~input_o\,
	datad => \bt2~input_o\,
	combout => \inst15|s_game_mode~0_combout\);

-- Location: LCCOMB_X29_Y19_N4
\inst15|s_game_mode[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|s_game_mode[0]~1_combout\ = (!\bt2~input_o\) # (!\bt1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bt1~input_o\,
	datad => \bt2~input_o\,
	combout => \inst15|s_game_mode[0]~1_combout\);

-- Location: FF_X29_Y19_N11
\inst15|s_game_mode[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~q\,
	d => \inst15|s_game_mode~0_combout\,
	ena => \inst15|s_game_mode[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|s_game_mode\(1));

-- Location: LCCOMB_X29_Y19_N24
\inst15|s_game_mode~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|s_game_mode~2_combout\ = (!\sw0~input_o\ & !\bt2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw0~input_o\,
	datad => \bt2~input_o\,
	combout => \inst15|s_game_mode~2_combout\);

-- Location: FF_X29_Y19_N25
\inst15|s_game_mode[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~q\,
	d => \inst15|s_game_mode~2_combout\,
	ena => \inst15|s_game_mode[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|s_game_mode\(0));

-- Location: LCCOMB_X29_Y19_N14
\inst11|player_x_pos[4]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|player_x_pos[4]~36_combout\ = (\inst11|player_x_pos\(10)) # (\inst15|s_game_mode\(1) $ (!\inst15|s_game_mode\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|player_x_pos\(10),
	datac => \inst15|s_game_mode\(1),
	datad => \inst15|s_game_mode\(0),
	combout => \inst11|player_x_pos[4]~36_combout\);

-- Location: LCCOMB_X30_Y16_N28
\inst11|player_x_pos[4]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|player_x_pos[4]~41_combout\ = (!\inst11|player_x_pos[4]~35_combout\ & (!\inst11|player_x_pos[4]~36_combout\ & ((!\inst11|player_x_pos[4]~40_combout\) # (!\inst11|LessThan14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan14~0_combout\,
	datab => \inst11|player_x_pos[4]~35_combout\,
	datac => \inst11|player_x_pos[4]~40_combout\,
	datad => \inst11|player_x_pos[4]~36_combout\,
	combout => \inst11|player_x_pos[4]~41_combout\);

-- Location: FF_X30_Y16_N3
\inst11|player_x_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|player_x_pos[1]~13_combout\,
	ena => \inst11|player_x_pos[4]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|player_x_pos\(1));

-- Location: LCCOMB_X30_Y16_N4
\inst11|player_x_pos[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|player_x_pos[2]~15_combout\ = ((\inst11|LessThan14~0_combout\ $ (\inst11|player_x_pos\(2) $ (!\inst11|player_x_pos[1]~14\)))) # (GND)
-- \inst11|player_x_pos[2]~16\ = CARRY((\inst11|LessThan14~0_combout\ & ((\inst11|player_x_pos\(2)) # (!\inst11|player_x_pos[1]~14\))) # (!\inst11|LessThan14~0_combout\ & (\inst11|player_x_pos\(2) & !\inst11|player_x_pos[1]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan14~0_combout\,
	datab => \inst11|player_x_pos\(2),
	datad => VCC,
	cin => \inst11|player_x_pos[1]~14\,
	combout => \inst11|player_x_pos[2]~15_combout\,
	cout => \inst11|player_x_pos[2]~16\);

-- Location: FF_X30_Y16_N5
\inst11|player_x_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|player_x_pos[2]~15_combout\,
	ena => \inst11|player_x_pos[4]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|player_x_pos\(2));

-- Location: LCCOMB_X30_Y16_N6
\inst11|player_x_pos[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|player_x_pos[3]~17_combout\ = (\inst11|LessThan14~0_combout\ & ((\inst11|player_x_pos\(3) & (\inst11|player_x_pos[2]~16\ & VCC)) # (!\inst11|player_x_pos\(3) & (!\inst11|player_x_pos[2]~16\)))) # (!\inst11|LessThan14~0_combout\ & 
-- ((\inst11|player_x_pos\(3) & (!\inst11|player_x_pos[2]~16\)) # (!\inst11|player_x_pos\(3) & ((\inst11|player_x_pos[2]~16\) # (GND)))))
-- \inst11|player_x_pos[3]~18\ = CARRY((\inst11|LessThan14~0_combout\ & (!\inst11|player_x_pos\(3) & !\inst11|player_x_pos[2]~16\)) # (!\inst11|LessThan14~0_combout\ & ((!\inst11|player_x_pos[2]~16\) # (!\inst11|player_x_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan14~0_combout\,
	datab => \inst11|player_x_pos\(3),
	datad => VCC,
	cin => \inst11|player_x_pos[2]~16\,
	combout => \inst11|player_x_pos[3]~17_combout\,
	cout => \inst11|player_x_pos[3]~18\);

-- Location: FF_X30_Y16_N7
\inst11|player_x_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|player_x_pos[3]~17_combout\,
	ena => \inst11|player_x_pos[4]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|player_x_pos\(3));

-- Location: LCCOMB_X30_Y16_N8
\inst11|player_x_pos[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|player_x_pos[4]~19_combout\ = ((\inst11|LessThan14~0_combout\ $ (\inst11|player_x_pos\(4) $ (!\inst11|player_x_pos[3]~18\)))) # (GND)
-- \inst11|player_x_pos[4]~20\ = CARRY((\inst11|LessThan14~0_combout\ & ((\inst11|player_x_pos\(4)) # (!\inst11|player_x_pos[3]~18\))) # (!\inst11|LessThan14~0_combout\ & (\inst11|player_x_pos\(4) & !\inst11|player_x_pos[3]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan14~0_combout\,
	datab => \inst11|player_x_pos\(4),
	datad => VCC,
	cin => \inst11|player_x_pos[3]~18\,
	combout => \inst11|player_x_pos[4]~19_combout\,
	cout => \inst11|player_x_pos[4]~20\);

-- Location: FF_X30_Y16_N9
\inst11|player_x_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|player_x_pos[4]~19_combout\,
	ena => \inst11|player_x_pos[4]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|player_x_pos\(4));

-- Location: LCCOMB_X30_Y16_N10
\inst11|player_x_pos[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|player_x_pos[5]~21_combout\ = (\inst11|LessThan14~0_combout\ & ((\inst11|player_x_pos\(5) & (\inst11|player_x_pos[4]~20\ & VCC)) # (!\inst11|player_x_pos\(5) & (!\inst11|player_x_pos[4]~20\)))) # (!\inst11|LessThan14~0_combout\ & 
-- ((\inst11|player_x_pos\(5) & (!\inst11|player_x_pos[4]~20\)) # (!\inst11|player_x_pos\(5) & ((\inst11|player_x_pos[4]~20\) # (GND)))))
-- \inst11|player_x_pos[5]~22\ = CARRY((\inst11|LessThan14~0_combout\ & (!\inst11|player_x_pos\(5) & !\inst11|player_x_pos[4]~20\)) # (!\inst11|LessThan14~0_combout\ & ((!\inst11|player_x_pos[4]~20\) # (!\inst11|player_x_pos\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan14~0_combout\,
	datab => \inst11|player_x_pos\(5),
	datad => VCC,
	cin => \inst11|player_x_pos[4]~20\,
	combout => \inst11|player_x_pos[5]~21_combout\,
	cout => \inst11|player_x_pos[5]~22\);

-- Location: FF_X30_Y16_N11
\inst11|player_x_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|player_x_pos[5]~21_combout\,
	ena => \inst11|player_x_pos[4]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|player_x_pos\(5));

-- Location: LCCOMB_X30_Y16_N12
\inst11|player_x_pos[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|player_x_pos[6]~23_combout\ = ((\inst11|player_x_pos\(6) $ (\inst11|LessThan14~0_combout\ $ (!\inst11|player_x_pos[5]~22\)))) # (GND)
-- \inst11|player_x_pos[6]~24\ = CARRY((\inst11|player_x_pos\(6) & ((\inst11|LessThan14~0_combout\) # (!\inst11|player_x_pos[5]~22\))) # (!\inst11|player_x_pos\(6) & (\inst11|LessThan14~0_combout\ & !\inst11|player_x_pos[5]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|player_x_pos\(6),
	datab => \inst11|LessThan14~0_combout\,
	datad => VCC,
	cin => \inst11|player_x_pos[5]~22\,
	combout => \inst11|player_x_pos[6]~23_combout\,
	cout => \inst11|player_x_pos[6]~24\);

-- Location: LCCOMB_X30_Y16_N14
\inst11|player_x_pos[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|player_x_pos[7]~25_combout\ = (\inst11|LessThan14~0_combout\ & ((\inst11|player_x_pos\(7) & (\inst11|player_x_pos[6]~24\ & VCC)) # (!\inst11|player_x_pos\(7) & (!\inst11|player_x_pos[6]~24\)))) # (!\inst11|LessThan14~0_combout\ & 
-- ((\inst11|player_x_pos\(7) & (!\inst11|player_x_pos[6]~24\)) # (!\inst11|player_x_pos\(7) & ((\inst11|player_x_pos[6]~24\) # (GND)))))
-- \inst11|player_x_pos[7]~26\ = CARRY((\inst11|LessThan14~0_combout\ & (!\inst11|player_x_pos\(7) & !\inst11|player_x_pos[6]~24\)) # (!\inst11|LessThan14~0_combout\ & ((!\inst11|player_x_pos[6]~24\) # (!\inst11|player_x_pos\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan14~0_combout\,
	datab => \inst11|player_x_pos\(7),
	datad => VCC,
	cin => \inst11|player_x_pos[6]~24\,
	combout => \inst11|player_x_pos[7]~25_combout\,
	cout => \inst11|player_x_pos[7]~26\);

-- Location: FF_X30_Y16_N15
\inst11|player_x_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|player_x_pos[7]~25_combout\,
	ena => \inst11|player_x_pos[4]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|player_x_pos\(7));

-- Location: LCCOMB_X30_Y16_N16
\inst11|player_x_pos[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|player_x_pos[8]~27_combout\ = ((\inst11|player_x_pos\(8) $ (\inst11|LessThan14~0_combout\ $ (!\inst11|player_x_pos[7]~26\)))) # (GND)
-- \inst11|player_x_pos[8]~28\ = CARRY((\inst11|player_x_pos\(8) & ((\inst11|LessThan14~0_combout\) # (!\inst11|player_x_pos[7]~26\))) # (!\inst11|player_x_pos\(8) & (\inst11|LessThan14~0_combout\ & !\inst11|player_x_pos[7]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|player_x_pos\(8),
	datab => \inst11|LessThan14~0_combout\,
	datad => VCC,
	cin => \inst11|player_x_pos[7]~26\,
	combout => \inst11|player_x_pos[8]~27_combout\,
	cout => \inst11|player_x_pos[8]~28\);

-- Location: LCCOMB_X30_Y16_N18
\inst11|player_x_pos[9]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|player_x_pos[9]~29_combout\ = (\inst11|player_x_pos\(9) & ((\inst11|LessThan14~0_combout\ & (\inst11|player_x_pos[8]~28\ & VCC)) # (!\inst11|LessThan14~0_combout\ & (!\inst11|player_x_pos[8]~28\)))) # (!\inst11|player_x_pos\(9) & 
-- ((\inst11|LessThan14~0_combout\ & (!\inst11|player_x_pos[8]~28\)) # (!\inst11|LessThan14~0_combout\ & ((\inst11|player_x_pos[8]~28\) # (GND)))))
-- \inst11|player_x_pos[9]~30\ = CARRY((\inst11|player_x_pos\(9) & (!\inst11|LessThan14~0_combout\ & !\inst11|player_x_pos[8]~28\)) # (!\inst11|player_x_pos\(9) & ((!\inst11|player_x_pos[8]~28\) # (!\inst11|LessThan14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|player_x_pos\(9),
	datab => \inst11|LessThan14~0_combout\,
	datad => VCC,
	cin => \inst11|player_x_pos[8]~28\,
	combout => \inst11|player_x_pos[9]~29_combout\,
	cout => \inst11|player_x_pos[9]~30\);

-- Location: FF_X30_Y16_N19
\inst11|player_x_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|player_x_pos[9]~29_combout\,
	ena => \inst11|player_x_pos[4]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|player_x_pos\(9));

-- Location: LCCOMB_X31_Y19_N28
\inst11|bullet_x_pos~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|bullet_x_pos~2_combout\ = (\inst11|move_tank~0_combout\ & \inst11|player_x_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|move_tank~0_combout\,
	datad => \inst11|player_x_pos\(9),
	combout => \inst11|bullet_x_pos~2_combout\);

-- Location: LCCOMB_X30_Y16_N20
\inst11|player_x_pos[10]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|player_x_pos[10]~31_combout\ = \inst11|player_x_pos\(10) $ (\inst11|player_x_pos[9]~30\ $ (!\inst11|LessThan14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|player_x_pos\(10),
	datad => \inst11|LessThan14~0_combout\,
	cin => \inst11|player_x_pos[9]~30\,
	combout => \inst11|player_x_pos[10]~31_combout\);

-- Location: FF_X30_Y16_N21
\inst11|player_x_pos[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|player_x_pos[10]~31_combout\,
	ena => \inst11|player_x_pos[4]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|player_x_pos\(10));

-- Location: LCCOMB_X32_Y19_N4
\inst11|bullet_x_pos~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|bullet_x_pos~0_combout\ = (\inst11|player_x_pos\(10) & \inst11|move_tank~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|player_x_pos\(10),
	datad => \inst11|move_tank~0_combout\,
	combout => \inst11|bullet_x_pos~0_combout\);

-- Location: FF_X32_Y19_N5
\inst11|bullet_x_pos[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|bullet_x_pos~0_combout\,
	ena => \inst11|bullet_x_pos[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|bullet_x_pos\(10));

-- Location: LCCOMB_X31_Y19_N0
\inst11|bullet_x_pos~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|bullet_x_pos~4_combout\ = (\inst11|player_x_pos\(7)) # (!\inst11|move_tank~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|player_x_pos\(7),
	datad => \inst11|move_tank~0_combout\,
	combout => \inst11|bullet_x_pos~4_combout\);

-- Location: FF_X31_Y19_N1
\inst11|bullet_x_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|bullet_x_pos~4_combout\,
	ena => \inst11|bullet_x_pos[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|bullet_x_pos\(7));

-- Location: LCCOMB_X31_Y19_N2
\inst11|bullet_x_pos~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|bullet_x_pos~6_combout\ = (\inst11|player_x_pos\(5)) # (!\inst11|move_tank~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|player_x_pos\(5),
	datad => \inst11|move_tank~0_combout\,
	combout => \inst11|bullet_x_pos~6_combout\);

-- Location: FF_X31_Y19_N3
\inst11|bullet_x_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|bullet_x_pos~6_combout\,
	ena => \inst11|bullet_x_pos[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|bullet_x_pos\(5));

-- Location: LCCOMB_X31_Y19_N4
\inst11|bullet_x_pos~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|bullet_x_pos~8_combout\ = (\inst11|player_x_pos\(3) & \inst11|move_tank~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|player_x_pos\(3),
	datad => \inst11|move_tank~0_combout\,
	combout => \inst11|bullet_x_pos~8_combout\);

-- Location: FF_X31_Y19_N5
\inst11|bullet_x_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|bullet_x_pos~8_combout\,
	ena => \inst11|bullet_x_pos[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|bullet_x_pos\(3));

-- Location: LCCOMB_X31_Y19_N8
\inst11|Add7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add7~0_combout\ = \inst11|bullet_x_pos\(2) $ (VCC)
-- \inst11|Add7~1\ = CARRY(\inst11|bullet_x_pos\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_x_pos\(2),
	datad => VCC,
	combout => \inst11|Add7~0_combout\,
	cout => \inst11|Add7~1\);

-- Location: LCCOMB_X31_Y19_N10
\inst11|Add7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add7~2_combout\ = (\inst11|bullet_x_pos\(3) & (!\inst11|Add7~1\)) # (!\inst11|bullet_x_pos\(3) & ((\inst11|Add7~1\) # (GND)))
-- \inst11|Add7~3\ = CARRY((!\inst11|Add7~1\) # (!\inst11|bullet_x_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|bullet_x_pos\(3),
	datad => VCC,
	cin => \inst11|Add7~1\,
	combout => \inst11|Add7~2_combout\,
	cout => \inst11|Add7~3\);

-- Location: LCCOMB_X31_Y19_N12
\inst11|Add7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add7~4_combout\ = (\inst11|bullet_x_pos\(4) & (\inst11|Add7~3\ $ (GND))) # (!\inst11|bullet_x_pos\(4) & (!\inst11|Add7~3\ & VCC))
-- \inst11|Add7~5\ = CARRY((\inst11|bullet_x_pos\(4) & !\inst11|Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_x_pos\(4),
	datad => VCC,
	cin => \inst11|Add7~3\,
	combout => \inst11|Add7~4_combout\,
	cout => \inst11|Add7~5\);

-- Location: LCCOMB_X31_Y19_N14
\inst11|Add7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add7~6_combout\ = (\inst11|bullet_x_pos\(5) & (!\inst11|Add7~5\)) # (!\inst11|bullet_x_pos\(5) & ((\inst11|Add7~5\) # (GND)))
-- \inst11|Add7~7\ = CARRY((!\inst11|Add7~5\) # (!\inst11|bullet_x_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|bullet_x_pos\(5),
	datad => VCC,
	cin => \inst11|Add7~5\,
	combout => \inst11|Add7~6_combout\,
	cout => \inst11|Add7~7\);

-- Location: LCCOMB_X31_Y19_N16
\inst11|Add7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add7~8_combout\ = (\inst11|bullet_x_pos\(6) & (\inst11|Add7~7\ $ (GND))) # (!\inst11|bullet_x_pos\(6) & (!\inst11|Add7~7\ & VCC))
-- \inst11|Add7~9\ = CARRY((\inst11|bullet_x_pos\(6) & !\inst11|Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_x_pos\(6),
	datad => VCC,
	cin => \inst11|Add7~7\,
	combout => \inst11|Add7~8_combout\,
	cout => \inst11|Add7~9\);

-- Location: LCCOMB_X31_Y19_N18
\inst11|Add7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add7~10_combout\ = (\inst11|bullet_x_pos\(7) & (!\inst11|Add7~9\)) # (!\inst11|bullet_x_pos\(7) & ((\inst11|Add7~9\) # (GND)))
-- \inst11|Add7~11\ = CARRY((!\inst11|Add7~9\) # (!\inst11|bullet_x_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|bullet_x_pos\(7),
	datad => VCC,
	cin => \inst11|Add7~9\,
	combout => \inst11|Add7~10_combout\,
	cout => \inst11|Add7~11\);

-- Location: LCCOMB_X31_Y19_N20
\inst11|Add7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add7~12_combout\ = (\inst11|bullet_x_pos\(8) & (\inst11|Add7~11\ $ (GND))) # (!\inst11|bullet_x_pos\(8) & (!\inst11|Add7~11\ & VCC))
-- \inst11|Add7~13\ = CARRY((\inst11|bullet_x_pos\(8) & !\inst11|Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_x_pos\(8),
	datad => VCC,
	cin => \inst11|Add7~11\,
	combout => \inst11|Add7~12_combout\,
	cout => \inst11|Add7~13\);

-- Location: LCCOMB_X31_Y19_N22
\inst11|Add7~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add7~14_combout\ = (\inst11|bullet_x_pos\(9) & (!\inst11|Add7~13\)) # (!\inst11|bullet_x_pos\(9) & ((\inst11|Add7~13\) # (GND)))
-- \inst11|Add7~15\ = CARRY((!\inst11|Add7~13\) # (!\inst11|bullet_x_pos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|bullet_x_pos\(9),
	datad => VCC,
	cin => \inst11|Add7~13\,
	combout => \inst11|Add7~14_combout\,
	cout => \inst11|Add7~15\);

-- Location: LCCOMB_X31_Y19_N24
\inst11|Add7~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add7~16_combout\ = \inst11|Add7~15\ $ (!\inst11|bullet_x_pos\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst11|bullet_x_pos\(10),
	cin => \inst11|Add7~15\,
	combout => \inst11|Add7~16_combout\);

-- Location: LCCOMB_X23_Y19_N0
\inst11|tank_x_pos[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|tank_x_pos[0]~11_combout\ = (\inst11|tank_x_motion\(0) & (\inst11|tank_x_pos\(0) $ (VCC))) # (!\inst11|tank_x_motion\(0) & (\inst11|tank_x_pos\(0) & VCC))
-- \inst11|tank_x_pos[0]~12\ = CARRY((\inst11|tank_x_motion\(0) & \inst11|tank_x_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_motion\(0),
	datab => \inst11|tank_x_pos\(0),
	datad => VCC,
	combout => \inst11|tank_x_pos[0]~11_combout\,
	cout => \inst11|tank_x_pos[0]~12\);

-- Location: LCCOMB_X27_Y19_N0
\inst11|bullet_y_pos~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|bullet_y_pos~10_combout\ = \inst15|s_game_mode\(0) $ (\inst15|s_game_mode\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|s_game_mode\(0),
	datad => \inst15|s_game_mode\(1),
	combout => \inst11|bullet_y_pos~10_combout\);

-- Location: FF_X23_Y19_N1
\inst11|tank_x_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|tank_x_pos[0]~11_combout\,
	ena => \inst11|bullet_y_pos~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|tank_x_pos\(0));

-- Location: LCCOMB_X23_Y19_N2
\inst11|tank_x_pos[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|tank_x_pos[1]~13_combout\ = (\inst11|tank_x_motion\(1) & ((\inst11|tank_x_pos\(1) & (\inst11|tank_x_pos[0]~12\ & VCC)) # (!\inst11|tank_x_pos\(1) & (!\inst11|tank_x_pos[0]~12\)))) # (!\inst11|tank_x_motion\(1) & ((\inst11|tank_x_pos\(1) & 
-- (!\inst11|tank_x_pos[0]~12\)) # (!\inst11|tank_x_pos\(1) & ((\inst11|tank_x_pos[0]~12\) # (GND)))))
-- \inst11|tank_x_pos[1]~14\ = CARRY((\inst11|tank_x_motion\(1) & (!\inst11|tank_x_pos\(1) & !\inst11|tank_x_pos[0]~12\)) # (!\inst11|tank_x_motion\(1) & ((!\inst11|tank_x_pos[0]~12\) # (!\inst11|tank_x_pos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_motion\(1),
	datab => \inst11|tank_x_pos\(1),
	datad => VCC,
	cin => \inst11|tank_x_pos[0]~12\,
	combout => \inst11|tank_x_pos[1]~13_combout\,
	cout => \inst11|tank_x_pos[1]~14\);

-- Location: FF_X23_Y19_N3
\inst11|tank_x_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|tank_x_pos[1]~13_combout\,
	ena => \inst11|bullet_y_pos~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|tank_x_pos\(1));

-- Location: LCCOMB_X23_Y19_N4
\inst11|tank_x_pos[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|tank_x_pos[2]~15_combout\ = ((\inst11|tank_x_motion\(10) $ (\inst11|tank_x_pos\(2) $ (!\inst11|tank_x_pos[1]~14\)))) # (GND)
-- \inst11|tank_x_pos[2]~16\ = CARRY((\inst11|tank_x_motion\(10) & ((\inst11|tank_x_pos\(2)) # (!\inst11|tank_x_pos[1]~14\))) # (!\inst11|tank_x_motion\(10) & (\inst11|tank_x_pos\(2) & !\inst11|tank_x_pos[1]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_motion\(10),
	datab => \inst11|tank_x_pos\(2),
	datad => VCC,
	cin => \inst11|tank_x_pos[1]~14\,
	combout => \inst11|tank_x_pos[2]~15_combout\,
	cout => \inst11|tank_x_pos[2]~16\);

-- Location: FF_X23_Y19_N5
\inst11|tank_x_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|tank_x_pos[2]~15_combout\,
	ena => \inst11|bullet_y_pos~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|tank_x_pos\(2));

-- Location: LCCOMB_X23_Y19_N22
\inst11|LessThan13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan13~0_combout\ = (\inst11|tank_x_pos\(3) & ((\inst11|tank_x_pos\(2)) # ((\inst11|tank_x_pos\(1) & \inst11|tank_x_pos\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_pos\(3),
	datab => \inst11|tank_x_pos\(1),
	datac => \inst11|tank_x_pos\(2),
	datad => \inst11|tank_x_pos\(0),
	combout => \inst11|LessThan13~0_combout\);

-- Location: LCCOMB_X23_Y19_N6
\inst11|tank_x_pos[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|tank_x_pos[3]~17_combout\ = (\inst11|tank_x_pos\(3) & ((\inst11|tank_x_motion\(10) & (\inst11|tank_x_pos[2]~16\ & VCC)) # (!\inst11|tank_x_motion\(10) & (!\inst11|tank_x_pos[2]~16\)))) # (!\inst11|tank_x_pos\(3) & ((\inst11|tank_x_motion\(10) & 
-- (!\inst11|tank_x_pos[2]~16\)) # (!\inst11|tank_x_motion\(10) & ((\inst11|tank_x_pos[2]~16\) # (GND)))))
-- \inst11|tank_x_pos[3]~18\ = CARRY((\inst11|tank_x_pos\(3) & (!\inst11|tank_x_motion\(10) & !\inst11|tank_x_pos[2]~16\)) # (!\inst11|tank_x_pos\(3) & ((!\inst11|tank_x_pos[2]~16\) # (!\inst11|tank_x_motion\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_pos\(3),
	datab => \inst11|tank_x_motion\(10),
	datad => VCC,
	cin => \inst11|tank_x_pos[2]~16\,
	combout => \inst11|tank_x_pos[3]~17_combout\,
	cout => \inst11|tank_x_pos[3]~18\);

-- Location: LCCOMB_X23_Y19_N8
\inst11|tank_x_pos[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|tank_x_pos[4]~19_combout\ = ((\inst11|tank_x_motion\(10) $ (\inst11|tank_x_pos\(4) $ (!\inst11|tank_x_pos[3]~18\)))) # (GND)
-- \inst11|tank_x_pos[4]~20\ = CARRY((\inst11|tank_x_motion\(10) & ((\inst11|tank_x_pos\(4)) # (!\inst11|tank_x_pos[3]~18\))) # (!\inst11|tank_x_motion\(10) & (\inst11|tank_x_pos\(4) & !\inst11|tank_x_pos[3]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_motion\(10),
	datab => \inst11|tank_x_pos\(4),
	datad => VCC,
	cin => \inst11|tank_x_pos[3]~18\,
	combout => \inst11|tank_x_pos[4]~19_combout\,
	cout => \inst11|tank_x_pos[4]~20\);

-- Location: FF_X23_Y19_N9
\inst11|tank_x_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|tank_x_pos[4]~19_combout\,
	ena => \inst11|bullet_y_pos~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|tank_x_pos\(4));

-- Location: LCCOMB_X23_Y19_N10
\inst11|tank_x_pos[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|tank_x_pos[5]~21_combout\ = (\inst11|tank_x_pos\(5) & ((\inst11|tank_x_motion\(10) & (\inst11|tank_x_pos[4]~20\ & VCC)) # (!\inst11|tank_x_motion\(10) & (!\inst11|tank_x_pos[4]~20\)))) # (!\inst11|tank_x_pos\(5) & ((\inst11|tank_x_motion\(10) & 
-- (!\inst11|tank_x_pos[4]~20\)) # (!\inst11|tank_x_motion\(10) & ((\inst11|tank_x_pos[4]~20\) # (GND)))))
-- \inst11|tank_x_pos[5]~22\ = CARRY((\inst11|tank_x_pos\(5) & (!\inst11|tank_x_motion\(10) & !\inst11|tank_x_pos[4]~20\)) # (!\inst11|tank_x_pos\(5) & ((!\inst11|tank_x_pos[4]~20\) # (!\inst11|tank_x_motion\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_pos\(5),
	datab => \inst11|tank_x_motion\(10),
	datad => VCC,
	cin => \inst11|tank_x_pos[4]~20\,
	combout => \inst11|tank_x_pos[5]~21_combout\,
	cout => \inst11|tank_x_pos[5]~22\);

-- Location: LCCOMB_X23_Y19_N12
\inst11|tank_x_pos[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|tank_x_pos[6]~23_combout\ = ((\inst11|tank_x_pos\(6) $ (\inst11|tank_x_motion\(10) $ (!\inst11|tank_x_pos[5]~22\)))) # (GND)
-- \inst11|tank_x_pos[6]~24\ = CARRY((\inst11|tank_x_pos\(6) & ((\inst11|tank_x_motion\(10)) # (!\inst11|tank_x_pos[5]~22\))) # (!\inst11|tank_x_pos\(6) & (\inst11|tank_x_motion\(10) & !\inst11|tank_x_pos[5]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_pos\(6),
	datab => \inst11|tank_x_motion\(10),
	datad => VCC,
	cin => \inst11|tank_x_pos[5]~22\,
	combout => \inst11|tank_x_pos[6]~23_combout\,
	cout => \inst11|tank_x_pos[6]~24\);

-- Location: LCCOMB_X23_Y19_N14
\inst11|tank_x_pos[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|tank_x_pos[7]~25_combout\ = (\inst11|tank_x_pos\(7) & ((\inst11|tank_x_motion\(10) & (\inst11|tank_x_pos[6]~24\ & VCC)) # (!\inst11|tank_x_motion\(10) & (!\inst11|tank_x_pos[6]~24\)))) # (!\inst11|tank_x_pos\(7) & ((\inst11|tank_x_motion\(10) & 
-- (!\inst11|tank_x_pos[6]~24\)) # (!\inst11|tank_x_motion\(10) & ((\inst11|tank_x_pos[6]~24\) # (GND)))))
-- \inst11|tank_x_pos[7]~26\ = CARRY((\inst11|tank_x_pos\(7) & (!\inst11|tank_x_motion\(10) & !\inst11|tank_x_pos[6]~24\)) # (!\inst11|tank_x_pos\(7) & ((!\inst11|tank_x_pos[6]~24\) # (!\inst11|tank_x_motion\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_pos\(7),
	datab => \inst11|tank_x_motion\(10),
	datad => VCC,
	cin => \inst11|tank_x_pos[6]~24\,
	combout => \inst11|tank_x_pos[7]~25_combout\,
	cout => \inst11|tank_x_pos[7]~26\);

-- Location: FF_X23_Y19_N15
\inst11|tank_x_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|tank_x_pos[7]~25_combout\,
	ena => \inst11|bullet_y_pos~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|tank_x_pos\(7));

-- Location: LCCOMB_X23_Y19_N16
\inst11|tank_x_pos[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|tank_x_pos[8]~27_combout\ = ((\inst11|tank_x_pos\(8) $ (\inst11|tank_x_motion\(10) $ (!\inst11|tank_x_pos[7]~26\)))) # (GND)
-- \inst11|tank_x_pos[8]~28\ = CARRY((\inst11|tank_x_pos\(8) & ((\inst11|tank_x_motion\(10)) # (!\inst11|tank_x_pos[7]~26\))) # (!\inst11|tank_x_pos\(8) & (\inst11|tank_x_motion\(10) & !\inst11|tank_x_pos[7]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_pos\(8),
	datab => \inst11|tank_x_motion\(10),
	datad => VCC,
	cin => \inst11|tank_x_pos[7]~26\,
	combout => \inst11|tank_x_pos[8]~27_combout\,
	cout => \inst11|tank_x_pos[8]~28\);

-- Location: FF_X23_Y19_N17
\inst11|tank_x_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|tank_x_pos[8]~27_combout\,
	ena => \inst11|bullet_y_pos~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|tank_x_pos\(8));

-- Location: LCCOMB_X23_Y19_N28
\inst11|LessThan13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan13~1_combout\ = (\inst11|tank_x_pos\(5)) # ((\inst11|tank_x_pos\(4)) # ((\inst11|tank_x_pos\(7)) # (\inst11|tank_x_pos\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_pos\(5),
	datab => \inst11|tank_x_pos\(4),
	datac => \inst11|tank_x_pos\(7),
	datad => \inst11|tank_x_pos\(8),
	combout => \inst11|LessThan13~1_combout\);

-- Location: LCCOMB_X23_Y19_N30
\inst11|LessThan13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan13~2_combout\ = (\inst11|tank_x_pos\(6)) # ((\inst11|LessThan13~0_combout\) # (\inst11|LessThan13~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_pos\(6),
	datac => \inst11|LessThan13~0_combout\,
	datad => \inst11|LessThan13~1_combout\,
	combout => \inst11|LessThan13~2_combout\);

-- Location: LCCOMB_X29_Y19_N26
\inst11|tank_y_pos[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|tank_y_pos[1]~4_combout\ = (!\inst11|tank_x_pos\(10) & ((\inst11|tank_x_pos\(9)) # (\inst11|LessThan13~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_pos\(9),
	datab => \inst11|tank_x_pos\(10),
	datad => \inst11|LessThan13~2_combout\,
	combout => \inst11|tank_y_pos[1]~4_combout\);

-- Location: LCCOMB_X26_Y19_N30
\inst11|tank_x_motion~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|tank_x_motion~3_combout\ = (\inst11|tank_y_pos[1]~3_combout\) # ((\inst11|tank_x_pos\(10)) # ((\inst11|tank_x_motion\(10) & \inst11|tank_y_pos[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_y_pos[1]~3_combout\,
	datab => \inst11|tank_x_pos\(10),
	datac => \inst11|tank_x_motion\(10),
	datad => \inst11|tank_y_pos[1]~4_combout\,
	combout => \inst11|tank_x_motion~3_combout\);

-- Location: FF_X26_Y19_N31
\inst11|tank_x_motion[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|tank_x_motion~3_combout\,
	ena => \inst11|bullet_y_pos~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|tank_x_motion\(10));

-- Location: LCCOMB_X23_Y19_N18
\inst11|tank_x_pos[9]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|tank_x_pos[9]~29_combout\ = (\inst11|tank_x_pos\(9) & ((\inst11|tank_x_motion\(10) & (\inst11|tank_x_pos[8]~28\ & VCC)) # (!\inst11|tank_x_motion\(10) & (!\inst11|tank_x_pos[8]~28\)))) # (!\inst11|tank_x_pos\(9) & ((\inst11|tank_x_motion\(10) & 
-- (!\inst11|tank_x_pos[8]~28\)) # (!\inst11|tank_x_motion\(10) & ((\inst11|tank_x_pos[8]~28\) # (GND)))))
-- \inst11|tank_x_pos[9]~30\ = CARRY((\inst11|tank_x_pos\(9) & (!\inst11|tank_x_motion\(10) & !\inst11|tank_x_pos[8]~28\)) # (!\inst11|tank_x_pos\(9) & ((!\inst11|tank_x_pos[8]~28\) # (!\inst11|tank_x_motion\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_pos\(9),
	datab => \inst11|tank_x_motion\(10),
	datad => VCC,
	cin => \inst11|tank_x_pos[8]~28\,
	combout => \inst11|tank_x_pos[9]~29_combout\,
	cout => \inst11|tank_x_pos[9]~30\);

-- Location: LCCOMB_X23_Y19_N20
\inst11|tank_x_pos[10]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|tank_x_pos[10]~31_combout\ = \inst11|tank_x_motion\(10) $ (\inst11|tank_x_pos[9]~30\ $ (!\inst11|tank_x_pos\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|tank_x_motion\(10),
	datad => \inst11|tank_x_pos\(10),
	cin => \inst11|tank_x_pos[9]~30\,
	combout => \inst11|tank_x_pos[10]~31_combout\);

-- Location: FF_X23_Y19_N21
\inst11|tank_x_pos[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|tank_x_pos[10]~31_combout\,
	ena => \inst11|bullet_y_pos~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|tank_x_pos\(10));

-- Location: FF_X23_Y19_N19
\inst11|tank_x_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|tank_x_pos[9]~29_combout\,
	ena => \inst11|bullet_y_pos~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|tank_x_pos\(9));

-- Location: FF_X23_Y19_N7
\inst11|tank_x_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|tank_x_pos[3]~17_combout\,
	ena => \inst11|bullet_y_pos~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|tank_x_pos\(3));

-- Location: LCCOMB_X24_Y19_N0
\inst11|Add18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add18~1_cout\ = CARRY(\inst11|tank_x_pos\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_pos\(1),
	datad => VCC,
	cout => \inst11|Add18~1_cout\);

-- Location: LCCOMB_X24_Y19_N2
\inst11|Add18~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add18~2_combout\ = (\inst11|tank_x_pos\(2) & (\inst11|Add18~1_cout\ & VCC)) # (!\inst11|tank_x_pos\(2) & (!\inst11|Add18~1_cout\))
-- \inst11|Add18~3\ = CARRY((!\inst11|tank_x_pos\(2) & !\inst11|Add18~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|tank_x_pos\(2),
	datad => VCC,
	cin => \inst11|Add18~1_cout\,
	combout => \inst11|Add18~2_combout\,
	cout => \inst11|Add18~3\);

-- Location: LCCOMB_X24_Y19_N4
\inst11|Add18~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add18~4_combout\ = (\inst11|tank_x_pos\(3) & (\inst11|Add18~3\ $ (GND))) # (!\inst11|tank_x_pos\(3) & (!\inst11|Add18~3\ & VCC))
-- \inst11|Add18~5\ = CARRY((\inst11|tank_x_pos\(3) & !\inst11|Add18~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|tank_x_pos\(3),
	datad => VCC,
	cin => \inst11|Add18~3\,
	combout => \inst11|Add18~4_combout\,
	cout => \inst11|Add18~5\);

-- Location: LCCOMB_X24_Y19_N6
\inst11|Add18~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add18~6_combout\ = (\inst11|tank_x_pos\(4) & (\inst11|Add18~5\ & VCC)) # (!\inst11|tank_x_pos\(4) & (!\inst11|Add18~5\))
-- \inst11|Add18~7\ = CARRY((!\inst11|tank_x_pos\(4) & !\inst11|Add18~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_pos\(4),
	datad => VCC,
	cin => \inst11|Add18~5\,
	combout => \inst11|Add18~6_combout\,
	cout => \inst11|Add18~7\);

-- Location: LCCOMB_X24_Y19_N12
\inst11|Add18~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add18~12_combout\ = (\inst11|tank_x_pos\(7) & ((GND) # (!\inst11|Add18~11\))) # (!\inst11|tank_x_pos\(7) & (\inst11|Add18~11\ $ (GND)))
-- \inst11|Add18~13\ = CARRY((\inst11|tank_x_pos\(7)) # (!\inst11|Add18~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_pos\(7),
	datad => VCC,
	cin => \inst11|Add18~11\,
	combout => \inst11|Add18~12_combout\,
	cout => \inst11|Add18~13\);

-- Location: LCCOMB_X24_Y19_N18
\inst11|Add18~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add18~18_combout\ = \inst11|Add18~17\ $ (!\inst11|tank_x_pos\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst11|tank_x_pos\(10),
	cin => \inst11|Add18~17\,
	combout => \inst11|Add18~18_combout\);

-- Location: FF_X30_Y16_N1
\inst11|player_x_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|player_x_pos[0]~11_combout\,
	ena => \inst11|player_x_pos[4]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|player_x_pos\(0));

-- Location: LCCOMB_X32_Y19_N0
\inst11|bullet_x_pos~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|bullet_x_pos~11_combout\ = (\inst11|player_x_pos\(0) & \inst11|move_tank~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|player_x_pos\(0),
	datad => \inst11|move_tank~0_combout\,
	combout => \inst11|bullet_x_pos~11_combout\);

-- Location: FF_X32_Y19_N1
\inst11|bullet_x_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|bullet_x_pos~11_combout\,
	ena => \inst11|bullet_x_pos[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|bullet_x_pos\(0));

-- Location: LCCOMB_X26_Y19_N0
\inst11|LessThan21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan21~1_cout\ = CARRY((\inst11|tank_x_pos\(0) & !\inst11|bullet_x_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_pos\(0),
	datab => \inst11|bullet_x_pos\(0),
	datad => VCC,
	cout => \inst11|LessThan21~1_cout\);

-- Location: LCCOMB_X26_Y19_N2
\inst11|LessThan21~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan21~3_cout\ = CARRY((\inst11|bullet_x_pos\(1) & ((\inst11|tank_x_pos\(1)) # (!\inst11|LessThan21~1_cout\))) # (!\inst11|bullet_x_pos\(1) & (\inst11|tank_x_pos\(1) & !\inst11|LessThan21~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_x_pos\(1),
	datab => \inst11|tank_x_pos\(1),
	datad => VCC,
	cin => \inst11|LessThan21~1_cout\,
	cout => \inst11|LessThan21~3_cout\);

-- Location: LCCOMB_X26_Y19_N4
\inst11|LessThan21~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan21~5_cout\ = CARRY((\inst11|Add7~0_combout\ & (\inst11|Add18~2_combout\ & !\inst11|LessThan21~3_cout\)) # (!\inst11|Add7~0_combout\ & ((\inst11|Add18~2_combout\) # (!\inst11|LessThan21~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add7~0_combout\,
	datab => \inst11|Add18~2_combout\,
	datad => VCC,
	cin => \inst11|LessThan21~3_cout\,
	cout => \inst11|LessThan21~5_cout\);

-- Location: LCCOMB_X26_Y19_N6
\inst11|LessThan21~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan21~7_cout\ = CARRY((\inst11|Add7~2_combout\ & ((!\inst11|LessThan21~5_cout\) # (!\inst11|Add18~4_combout\))) # (!\inst11|Add7~2_combout\ & (!\inst11|Add18~4_combout\ & !\inst11|LessThan21~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add7~2_combout\,
	datab => \inst11|Add18~4_combout\,
	datad => VCC,
	cin => \inst11|LessThan21~5_cout\,
	cout => \inst11|LessThan21~7_cout\);

-- Location: LCCOMB_X26_Y19_N8
\inst11|LessThan21~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan21~9_cout\ = CARRY((\inst11|Add7~4_combout\ & (\inst11|Add18~6_combout\ & !\inst11|LessThan21~7_cout\)) # (!\inst11|Add7~4_combout\ & ((\inst11|Add18~6_combout\) # (!\inst11|LessThan21~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add7~4_combout\,
	datab => \inst11|Add18~6_combout\,
	datad => VCC,
	cin => \inst11|LessThan21~7_cout\,
	cout => \inst11|LessThan21~9_cout\);

-- Location: LCCOMB_X26_Y19_N10
\inst11|LessThan21~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan21~11_cout\ = CARRY((\inst11|Add18~8_combout\ & (\inst11|Add7~6_combout\ & !\inst11|LessThan21~9_cout\)) # (!\inst11|Add18~8_combout\ & ((\inst11|Add7~6_combout\) # (!\inst11|LessThan21~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add18~8_combout\,
	datab => \inst11|Add7~6_combout\,
	datad => VCC,
	cin => \inst11|LessThan21~9_cout\,
	cout => \inst11|LessThan21~11_cout\);

-- Location: LCCOMB_X26_Y19_N12
\inst11|LessThan21~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan21~13_cout\ = CARRY((\inst11|Add18~10_combout\ & ((!\inst11|LessThan21~11_cout\) # (!\inst11|Add7~8_combout\))) # (!\inst11|Add18~10_combout\ & (!\inst11|Add7~8_combout\ & !\inst11|LessThan21~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add18~10_combout\,
	datab => \inst11|Add7~8_combout\,
	datad => VCC,
	cin => \inst11|LessThan21~11_cout\,
	cout => \inst11|LessThan21~13_cout\);

-- Location: LCCOMB_X26_Y19_N14
\inst11|LessThan21~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan21~15_cout\ = CARRY((\inst11|Add7~10_combout\ & ((!\inst11|LessThan21~13_cout\) # (!\inst11|Add18~12_combout\))) # (!\inst11|Add7~10_combout\ & (!\inst11|Add18~12_combout\ & !\inst11|LessThan21~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add7~10_combout\,
	datab => \inst11|Add18~12_combout\,
	datad => VCC,
	cin => \inst11|LessThan21~13_cout\,
	cout => \inst11|LessThan21~15_cout\);

-- Location: LCCOMB_X26_Y19_N16
\inst11|LessThan21~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan21~17_cout\ = CARRY((\inst11|Add18~14_combout\ & ((!\inst11|LessThan21~15_cout\) # (!\inst11|Add7~12_combout\))) # (!\inst11|Add18~14_combout\ & (!\inst11|Add7~12_combout\ & !\inst11|LessThan21~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add18~14_combout\,
	datab => \inst11|Add7~12_combout\,
	datad => VCC,
	cin => \inst11|LessThan21~15_cout\,
	cout => \inst11|LessThan21~17_cout\);

-- Location: LCCOMB_X26_Y19_N18
\inst11|LessThan21~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan21~19_cout\ = CARRY((\inst11|Add18~16_combout\ & (\inst11|Add7~14_combout\ & !\inst11|LessThan21~17_cout\)) # (!\inst11|Add18~16_combout\ & ((\inst11|Add7~14_combout\) # (!\inst11|LessThan21~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add18~16_combout\,
	datab => \inst11|Add7~14_combout\,
	datad => VCC,
	cin => \inst11|LessThan21~17_cout\,
	cout => \inst11|LessThan21~19_cout\);

-- Location: LCCOMB_X26_Y19_N20
\inst11|LessThan21~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan21~20_combout\ = (\inst11|Add7~16_combout\ & ((!\inst11|Add18~18_combout\) # (!\inst11|LessThan21~19_cout\))) # (!\inst11|Add7~16_combout\ & (!\inst11|LessThan21~19_cout\ & !\inst11|Add18~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Add7~16_combout\,
	datad => \inst11|Add18~18_combout\,
	cin => \inst11|LessThan21~19_cout\,
	combout => \inst11|LessThan21~20_combout\);

-- Location: FF_X23_Y19_N13
\inst11|tank_x_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|tank_x_pos[6]~23_combout\,
	ena => \inst11|bullet_y_pos~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|tank_x_pos\(6));

-- Location: FF_X23_Y19_N11
\inst11|tank_x_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|tank_x_pos[5]~21_combout\,
	ena => \inst11|bullet_y_pos~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|tank_x_pos\(5));

-- Location: LCCOMB_X22_Y19_N4
\inst11|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add1~0_combout\ = \inst11|tank_x_pos\(1) $ (VCC)
-- \inst11|Add1~1\ = CARRY(\inst11|tank_x_pos\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_pos\(1),
	datad => VCC,
	combout => \inst11|Add1~0_combout\,
	cout => \inst11|Add1~1\);

-- Location: LCCOMB_X22_Y19_N8
\inst11|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add1~4_combout\ = (\inst11|tank_x_pos\(3) & ((GND) # (!\inst11|Add1~3\))) # (!\inst11|tank_x_pos\(3) & (\inst11|Add1~3\ $ (GND)))
-- \inst11|Add1~5\ = CARRY((\inst11|tank_x_pos\(3)) # (!\inst11|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_pos\(3),
	datad => VCC,
	cin => \inst11|Add1~3\,
	combout => \inst11|Add1~4_combout\,
	cout => \inst11|Add1~5\);

-- Location: LCCOMB_X22_Y19_N10
\inst11|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add1~6_combout\ = (\inst11|tank_x_pos\(4) & (!\inst11|Add1~5\)) # (!\inst11|tank_x_pos\(4) & ((\inst11|Add1~5\) # (GND)))
-- \inst11|Add1~7\ = CARRY((!\inst11|Add1~5\) # (!\inst11|tank_x_pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|tank_x_pos\(4),
	datad => VCC,
	cin => \inst11|Add1~5\,
	combout => \inst11|Add1~6_combout\,
	cout => \inst11|Add1~7\);

-- Location: LCCOMB_X22_Y19_N12
\inst11|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add1~8_combout\ = (\inst11|tank_x_pos\(5) & (\inst11|Add1~7\ $ (GND))) # (!\inst11|tank_x_pos\(5) & (!\inst11|Add1~7\ & VCC))
-- \inst11|Add1~9\ = CARRY((\inst11|tank_x_pos\(5) & !\inst11|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|tank_x_pos\(5),
	datad => VCC,
	cin => \inst11|Add1~7\,
	combout => \inst11|Add1~8_combout\,
	cout => \inst11|Add1~9\);

-- Location: LCCOMB_X22_Y19_N16
\inst11|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add1~12_combout\ = (\inst11|tank_x_pos\(7) & (\inst11|Add1~11\ $ (GND))) # (!\inst11|tank_x_pos\(7) & (!\inst11|Add1~11\ & VCC))
-- \inst11|Add1~13\ = CARRY((\inst11|tank_x_pos\(7) & !\inst11|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|tank_x_pos\(7),
	datad => VCC,
	cin => \inst11|Add1~11\,
	combout => \inst11|Add1~12_combout\,
	cout => \inst11|Add1~13\);

-- Location: LCCOMB_X22_Y19_N20
\inst11|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add1~16_combout\ = (\inst11|tank_x_pos\(9) & (\inst11|Add1~15\ $ (GND))) # (!\inst11|tank_x_pos\(9) & (!\inst11|Add1~15\ & VCC))
-- \inst11|Add1~17\ = CARRY((\inst11|tank_x_pos\(9) & !\inst11|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|tank_x_pos\(9),
	datad => VCC,
	cin => \inst11|Add1~15\,
	combout => \inst11|Add1~16_combout\,
	cout => \inst11|Add1~17\);

-- Location: LCCOMB_X22_Y19_N22
\inst11|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add1~18_combout\ = \inst11|tank_x_pos\(10) $ (\inst11|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_pos\(10),
	cin => \inst11|Add1~17\,
	combout => \inst11|Add1~18_combout\);

-- Location: LCCOMB_X27_Y19_N2
\inst11|bullet_x_pos~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|bullet_x_pos~10_combout\ = (\inst11|move_tank~0_combout\ & \inst11|player_x_pos\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|move_tank~0_combout\,
	datad => \inst11|player_x_pos\(1),
	combout => \inst11|bullet_x_pos~10_combout\);

-- Location: FF_X27_Y19_N3
\inst11|bullet_x_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|bullet_x_pos~10_combout\,
	ena => \inst11|bullet_x_pos[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|bullet_x_pos\(1));

-- Location: LCCOMB_X27_Y19_N6
\inst11|LessThan20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan20~1_cout\ = CARRY((\inst11|bullet_x_pos\(0) & !\inst11|tank_x_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_x_pos\(0),
	datab => \inst11|tank_x_pos\(0),
	datad => VCC,
	cout => \inst11|LessThan20~1_cout\);

-- Location: LCCOMB_X27_Y19_N8
\inst11|LessThan20~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan20~3_cout\ = CARRY((\inst11|Add1~0_combout\ & ((!\inst11|LessThan20~1_cout\) # (!\inst11|bullet_x_pos\(1)))) # (!\inst11|Add1~0_combout\ & (!\inst11|bullet_x_pos\(1) & !\inst11|LessThan20~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~0_combout\,
	datab => \inst11|bullet_x_pos\(1),
	datad => VCC,
	cin => \inst11|LessThan20~1_cout\,
	cout => \inst11|LessThan20~3_cout\);

-- Location: LCCOMB_X27_Y19_N10
\inst11|LessThan20~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan20~5_cout\ = CARRY((\inst11|Add1~2_combout\ & (\inst11|Add7~0_combout\ & !\inst11|LessThan20~3_cout\)) # (!\inst11|Add1~2_combout\ & ((\inst11|Add7~0_combout\) # (!\inst11|LessThan20~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~2_combout\,
	datab => \inst11|Add7~0_combout\,
	datad => VCC,
	cin => \inst11|LessThan20~3_cout\,
	cout => \inst11|LessThan20~5_cout\);

-- Location: LCCOMB_X27_Y19_N12
\inst11|LessThan20~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan20~7_cout\ = CARRY((\inst11|Add7~2_combout\ & (\inst11|Add1~4_combout\ & !\inst11|LessThan20~5_cout\)) # (!\inst11|Add7~2_combout\ & ((\inst11|Add1~4_combout\) # (!\inst11|LessThan20~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add7~2_combout\,
	datab => \inst11|Add1~4_combout\,
	datad => VCC,
	cin => \inst11|LessThan20~5_cout\,
	cout => \inst11|LessThan20~7_cout\);

-- Location: LCCOMB_X27_Y19_N14
\inst11|LessThan20~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan20~9_cout\ = CARRY((\inst11|Add7~4_combout\ & ((!\inst11|LessThan20~7_cout\) # (!\inst11|Add1~6_combout\))) # (!\inst11|Add7~4_combout\ & (!\inst11|Add1~6_combout\ & !\inst11|LessThan20~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add7~4_combout\,
	datab => \inst11|Add1~6_combout\,
	datad => VCC,
	cin => \inst11|LessThan20~7_cout\,
	cout => \inst11|LessThan20~9_cout\);

-- Location: LCCOMB_X27_Y19_N16
\inst11|LessThan20~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan20~11_cout\ = CARRY((\inst11|Add1~8_combout\ & ((!\inst11|LessThan20~9_cout\) # (!\inst11|Add7~6_combout\))) # (!\inst11|Add1~8_combout\ & (!\inst11|Add7~6_combout\ & !\inst11|LessThan20~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~8_combout\,
	datab => \inst11|Add7~6_combout\,
	datad => VCC,
	cin => \inst11|LessThan20~9_cout\,
	cout => \inst11|LessThan20~11_cout\);

-- Location: LCCOMB_X27_Y19_N18
\inst11|LessThan20~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan20~13_cout\ = CARRY((\inst11|Add1~10_combout\ & (\inst11|Add7~8_combout\ & !\inst11|LessThan20~11_cout\)) # (!\inst11|Add1~10_combout\ & ((\inst11|Add7~8_combout\) # (!\inst11|LessThan20~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~10_combout\,
	datab => \inst11|Add7~8_combout\,
	datad => VCC,
	cin => \inst11|LessThan20~11_cout\,
	cout => \inst11|LessThan20~13_cout\);

-- Location: LCCOMB_X27_Y19_N20
\inst11|LessThan20~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan20~15_cout\ = CARRY((\inst11|Add1~12_combout\ & ((!\inst11|LessThan20~13_cout\) # (!\inst11|Add7~10_combout\))) # (!\inst11|Add1~12_combout\ & (!\inst11|Add7~10_combout\ & !\inst11|LessThan20~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~12_combout\,
	datab => \inst11|Add7~10_combout\,
	datad => VCC,
	cin => \inst11|LessThan20~13_cout\,
	cout => \inst11|LessThan20~15_cout\);

-- Location: LCCOMB_X27_Y19_N22
\inst11|LessThan20~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan20~17_cout\ = CARRY((\inst11|Add1~14_combout\ & (\inst11|Add7~12_combout\ & !\inst11|LessThan20~15_cout\)) # (!\inst11|Add1~14_combout\ & ((\inst11|Add7~12_combout\) # (!\inst11|LessThan20~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~14_combout\,
	datab => \inst11|Add7~12_combout\,
	datad => VCC,
	cin => \inst11|LessThan20~15_cout\,
	cout => \inst11|LessThan20~17_cout\);

-- Location: LCCOMB_X27_Y19_N24
\inst11|LessThan20~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan20~19_cout\ = CARRY((\inst11|Add7~14_combout\ & (\inst11|Add1~16_combout\ & !\inst11|LessThan20~17_cout\)) # (!\inst11|Add7~14_combout\ & ((\inst11|Add1~16_combout\) # (!\inst11|LessThan20~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add7~14_combout\,
	datab => \inst11|Add1~16_combout\,
	datad => VCC,
	cin => \inst11|LessThan20~17_cout\,
	cout => \inst11|LessThan20~19_cout\);

-- Location: LCCOMB_X27_Y19_N26
\inst11|LessThan20~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan20~20_combout\ = (\inst11|Add7~16_combout\ & (!\inst11|LessThan20~19_cout\ & \inst11|Add1~18_combout\)) # (!\inst11|Add7~16_combout\ & ((\inst11|Add1~18_combout\) # (!\inst11|LessThan20~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add7~16_combout\,
	datad => \inst11|Add1~18_combout\,
	cin => \inst11|LessThan20~19_cout\,
	combout => \inst11|LessThan20~20_combout\);

-- Location: LCCOMB_X26_Y22_N6
\inst11|Add10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add10~0_combout\ = \inst11|tank_y_pos\(1) $ (VCC)
-- \inst11|Add10~1\ = CARRY(\inst11|tank_y_pos\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_y_pos\(1),
	datad => VCC,
	combout => \inst11|Add10~0_combout\,
	cout => \inst11|Add10~1\);

-- Location: LCCOMB_X26_Y22_N8
\inst11|Add10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add10~2_combout\ = (\inst11|tank_y_pos\(2) & (!\inst11|Add10~1\)) # (!\inst11|tank_y_pos\(2) & ((\inst11|Add10~1\) # (GND)))
-- \inst11|Add10~3\ = CARRY((!\inst11|Add10~1\) # (!\inst11|tank_y_pos\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|tank_y_pos\(2),
	datad => VCC,
	cin => \inst11|Add10~1\,
	combout => \inst11|Add10~2_combout\,
	cout => \inst11|Add10~3\);

-- Location: LCCOMB_X23_Y19_N24
\inst11|LessThan13~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan13~3_combout\ = (!\inst11|tank_x_pos\(7) & !\inst11|tank_x_pos\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|tank_x_pos\(7),
	datad => \inst11|tank_x_pos\(8),
	combout => \inst11|LessThan13~3_combout\);

-- Location: LCCOMB_X23_Y19_N26
\inst11|LessThan12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan12~0_combout\ = ((!\inst11|tank_x_pos\(3) & ((!\inst11|tank_x_pos\(1)) # (!\inst11|tank_x_pos\(2))))) # (!\inst11|tank_x_pos\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_pos\(3),
	datab => \inst11|tank_x_pos\(2),
	datac => \inst11|tank_x_pos\(4),
	datad => \inst11|tank_x_pos\(1),
	combout => \inst11|LessThan12~0_combout\);

-- Location: LCCOMB_X24_Y19_N20
\inst11|tank_x_motion~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|tank_x_motion~2_combout\ = (\inst11|LessThan13~3_combout\ & (((\inst11|LessThan12~0_combout\) # (!\inst11|tank_x_pos\(5))) # (!\inst11|tank_x_pos\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_pos\(6),
	datab => \inst11|LessThan13~3_combout\,
	datac => \inst11|LessThan12~0_combout\,
	datad => \inst11|tank_x_pos\(5),
	combout => \inst11|tank_x_motion~2_combout\);

-- Location: LCCOMB_X29_Y19_N28
\inst11|tank_y_pos[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|tank_y_pos[1]~2_combout\ = (\inst11|tank_x_pos\(10)) # ((\inst11|tank_x_pos\(9) & (!\inst11|tank_x_motion~2_combout\)) # (!\inst11|tank_x_pos\(9) & ((!\inst11|LessThan13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_pos\(9),
	datab => \inst11|tank_x_pos\(10),
	datac => \inst11|tank_x_motion~2_combout\,
	datad => \inst11|LessThan13~2_combout\,
	combout => \inst11|tank_y_pos[1]~2_combout\);

-- Location: LCCOMB_X29_Y19_N8
\inst11|tank_y_pos[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|tank_y_pos[1]~5_combout\ = (!\inst15|s_game_mode\(1) & (\inst11|tank_y_pos[1]~2_combout\ & \inst15|s_game_mode\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|s_game_mode\(1),
	datab => \inst11|tank_y_pos[1]~2_combout\,
	datad => \inst15|s_game_mode\(0),
	combout => \inst11|tank_y_pos[1]~5_combout\);

-- Location: FF_X26_Y22_N9
\inst11|tank_y_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|Add10~2_combout\,
	ena => \inst11|tank_y_pos[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|tank_y_pos\(2));

-- Location: LCCOMB_X26_Y22_N10
\inst11|Add10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add10~4_combout\ = (\inst11|tank_y_pos\(3) & (\inst11|Add10~3\ $ (GND))) # (!\inst11|tank_y_pos\(3) & ((GND) # (!\inst11|Add10~3\)))
-- \inst11|Add10~5\ = CARRY((!\inst11|Add10~3\) # (!\inst11|tank_y_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|tank_y_pos\(3),
	datad => VCC,
	cin => \inst11|Add10~3\,
	combout => \inst11|Add10~4_combout\,
	cout => \inst11|Add10~5\);

-- Location: LCCOMB_X27_Y22_N26
\inst11|tank_y_pos[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|tank_y_pos[3]~7_combout\ = !\inst11|Add10~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst11|Add10~4_combout\,
	combout => \inst11|tank_y_pos[3]~7_combout\);

-- Location: FF_X27_Y22_N27
\inst11|tank_y_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|tank_y_pos[3]~7_combout\,
	ena => \inst11|tank_y_pos[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|tank_y_pos\(3));

-- Location: LCCOMB_X26_Y22_N12
\inst11|Add10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add10~6_combout\ = (\inst11|tank_y_pos\(4) & (!\inst11|Add10~5\)) # (!\inst11|tank_y_pos\(4) & ((\inst11|Add10~5\) # (GND)))
-- \inst11|Add10~7\ = CARRY((!\inst11|Add10~5\) # (!\inst11|tank_y_pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|tank_y_pos\(4),
	datad => VCC,
	cin => \inst11|Add10~5\,
	combout => \inst11|Add10~6_combout\,
	cout => \inst11|Add10~7\);

-- Location: LCCOMB_X27_Y22_N0
\inst11|tank_y_pos[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|tank_y_pos[4]~feeder_combout\ = \inst11|Add10~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst11|Add10~6_combout\,
	combout => \inst11|tank_y_pos[4]~feeder_combout\);

-- Location: FF_X27_Y22_N1
\inst11|tank_y_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|tank_y_pos[4]~feeder_combout\,
	ena => \inst11|tank_y_pos[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|tank_y_pos\(4));

-- Location: LCCOMB_X26_Y22_N16
\inst11|Add10~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add10~10_combout\ = (\inst11|tank_y_pos\(6) & (!\inst11|Add10~9\)) # (!\inst11|tank_y_pos\(6) & ((\inst11|Add10~9\) # (GND)))
-- \inst11|Add10~11\ = CARRY((!\inst11|Add10~9\) # (!\inst11|tank_y_pos\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|tank_y_pos\(6),
	datad => VCC,
	cin => \inst11|Add10~9\,
	combout => \inst11|Add10~10_combout\,
	cout => \inst11|Add10~11\);

-- Location: FF_X26_Y22_N17
\inst11|tank_y_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|Add10~10_combout\,
	ena => \inst11|tank_y_pos[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|tank_y_pos\(6));

-- Location: LCCOMB_X26_Y22_N18
\inst11|Add10~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add10~12_combout\ = (\inst11|tank_y_pos\(7) & (\inst11|Add10~11\ $ (GND))) # (!\inst11|tank_y_pos\(7) & (!\inst11|Add10~11\ & VCC))
-- \inst11|Add10~13\ = CARRY((\inst11|tank_y_pos\(7) & !\inst11|Add10~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|tank_y_pos\(7),
	datad => VCC,
	cin => \inst11|Add10~11\,
	combout => \inst11|Add10~12_combout\,
	cout => \inst11|Add10~13\);

-- Location: FF_X26_Y22_N19
\inst11|tank_y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|Add10~12_combout\,
	ena => \inst11|tank_y_pos[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|tank_y_pos\(7));

-- Location: LCCOMB_X26_Y22_N20
\inst11|Add10~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add10~14_combout\ = (\inst11|tank_y_pos\(8) & (!\inst11|Add10~13\)) # (!\inst11|tank_y_pos\(8) & ((\inst11|Add10~13\) # (GND)))
-- \inst11|Add10~15\ = CARRY((!\inst11|Add10~13\) # (!\inst11|tank_y_pos\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_y_pos\(8),
	datad => VCC,
	cin => \inst11|Add10~13\,
	combout => \inst11|Add10~14_combout\,
	cout => \inst11|Add10~15\);

-- Location: LCCOMB_X26_Y22_N22
\inst11|Add10~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add10~16_combout\ = (\inst11|tank_y_pos\(9) & (\inst11|Add10~15\ $ (GND))) # (!\inst11|tank_y_pos\(9) & (!\inst11|Add10~15\ & VCC))
-- \inst11|Add10~17\ = CARRY((\inst11|tank_y_pos\(9) & !\inst11|Add10~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_y_pos\(9),
	datad => VCC,
	cin => \inst11|Add10~15\,
	combout => \inst11|Add10~16_combout\,
	cout => \inst11|Add10~17\);

-- Location: LCCOMB_X26_Y22_N24
\inst11|Add10~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add10~18_combout\ = \inst11|Add10~17\ $ (\inst11|tank_y_pos\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst11|tank_y_pos\(10),
	cin => \inst11|Add10~17\,
	combout => \inst11|Add10~18_combout\);

-- Location: FF_X26_Y22_N25
\inst11|tank_y_pos[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|Add10~18_combout\,
	ena => \inst11|tank_y_pos[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|tank_y_pos\(10));

-- Location: FF_X26_Y22_N23
\inst11|tank_y_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|Add10~16_combout\,
	ena => \inst11|tank_y_pos[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|tank_y_pos\(9));

-- Location: LCCOMB_X27_Y22_N28
\inst11|tank_y_pos[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|tank_y_pos[8]~feeder_combout\ = \inst11|Add10~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst11|Add10~14_combout\,
	combout => \inst11|tank_y_pos[8]~feeder_combout\);

-- Location: FF_X27_Y22_N29
\inst11|tank_y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|tank_y_pos[8]~feeder_combout\,
	ena => \inst11|tank_y_pos[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|tank_y_pos\(8));

-- Location: FF_X26_Y22_N7
\inst11|tank_y_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|Add10~0_combout\,
	ena => \inst11|tank_y_pos[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|tank_y_pos\(1));

-- Location: LCCOMB_X27_Y22_N4
\inst11|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add3~0_combout\ = \inst11|tank_y_pos\(1) $ (VCC)
-- \inst11|Add3~1\ = CARRY(\inst11|tank_y_pos\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|tank_y_pos\(1),
	datad => VCC,
	combout => \inst11|Add3~0_combout\,
	cout => \inst11|Add3~1\);

-- Location: LCCOMB_X27_Y22_N6
\inst11|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add3~2_combout\ = (\inst11|tank_y_pos\(2) & (!\inst11|Add3~1\)) # (!\inst11|tank_y_pos\(2) & ((\inst11|Add3~1\) # (GND)))
-- \inst11|Add3~3\ = CARRY((!\inst11|Add3~1\) # (!\inst11|tank_y_pos\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_y_pos\(2),
	datad => VCC,
	cin => \inst11|Add3~1\,
	combout => \inst11|Add3~2_combout\,
	cout => \inst11|Add3~3\);

-- Location: LCCOMB_X27_Y22_N8
\inst11|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add3~4_combout\ = (\inst11|tank_y_pos\(3) & (\inst11|Add3~3\ $ (GND))) # (!\inst11|tank_y_pos\(3) & ((GND) # (!\inst11|Add3~3\)))
-- \inst11|Add3~5\ = CARRY((!\inst11|Add3~3\) # (!\inst11|tank_y_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_y_pos\(3),
	datad => VCC,
	cin => \inst11|Add3~3\,
	combout => \inst11|Add3~4_combout\,
	cout => \inst11|Add3~5\);

-- Location: LCCOMB_X27_Y22_N14
\inst11|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add3~10_combout\ = (\inst11|tank_y_pos\(6) & (!\inst11|Add3~9\)) # (!\inst11|tank_y_pos\(6) & ((\inst11|Add3~9\) # (GND)))
-- \inst11|Add3~11\ = CARRY((!\inst11|Add3~9\) # (!\inst11|tank_y_pos\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_y_pos\(6),
	datad => VCC,
	cin => \inst11|Add3~9\,
	combout => \inst11|Add3~10_combout\,
	cout => \inst11|Add3~11\);

-- Location: LCCOMB_X27_Y22_N18
\inst11|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add3~14_combout\ = (\inst11|tank_y_pos\(8) & (!\inst11|Add3~13\)) # (!\inst11|tank_y_pos\(8) & ((\inst11|Add3~13\) # (GND)))
-- \inst11|Add3~15\ = CARRY((!\inst11|Add3~13\) # (!\inst11|tank_y_pos\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|tank_y_pos\(8),
	datad => VCC,
	cin => \inst11|Add3~13\,
	combout => \inst11|Add3~14_combout\,
	cout => \inst11|Add3~15\);

-- Location: LCCOMB_X27_Y22_N20
\inst11|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add3~16_combout\ = (\inst11|tank_y_pos\(9) & (\inst11|Add3~15\ $ (GND))) # (!\inst11|tank_y_pos\(9) & (!\inst11|Add3~15\ & VCC))
-- \inst11|Add3~17\ = CARRY((\inst11|tank_y_pos\(9) & !\inst11|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|tank_y_pos\(9),
	datad => VCC,
	cin => \inst11|Add3~15\,
	combout => \inst11|Add3~16_combout\,
	cout => \inst11|Add3~17\);

-- Location: LCCOMB_X27_Y22_N22
\inst11|Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add3~18_combout\ = \inst11|Add3~17\ $ (\inst11|tank_y_pos\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst11|tank_y_pos\(10),
	cin => \inst11|Add3~17\,
	combout => \inst11|Add3~18_combout\);

-- Location: LCCOMB_X28_Y19_N6
\inst11|bullet_y_pos[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|bullet_y_pos[1]~11_combout\ = \inst11|bullet_y_pos\(1) $ (VCC)
-- \inst11|bullet_y_pos[1]~12\ = CARRY(\inst11|bullet_y_pos\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_y_pos\(1),
	datad => VCC,
	combout => \inst11|bullet_y_pos[1]~11_combout\,
	cout => \inst11|bullet_y_pos[1]~12\);

-- Location: LCCOMB_X28_Y19_N8
\inst11|bullet_y_pos[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|bullet_y_pos[2]~13_combout\ = (\inst11|bullet_y_pos\(2) & (!\inst11|bullet_y_pos[1]~12\)) # (!\inst11|bullet_y_pos\(2) & ((\inst11|bullet_y_pos[1]~12\) # (GND)))
-- \inst11|bullet_y_pos[2]~14\ = CARRY((!\inst11|bullet_y_pos[1]~12\) # (!\inst11|bullet_y_pos\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|bullet_y_pos\(2),
	datad => VCC,
	cin => \inst11|bullet_y_pos[1]~12\,
	combout => \inst11|bullet_y_pos[2]~13_combout\,
	cout => \inst11|bullet_y_pos[2]~14\);

-- Location: LCCOMB_X28_Y19_N10
\inst11|bullet_y_pos[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|bullet_y_pos[3]~15_combout\ = (\inst11|bullet_y_pos\(3) & ((GND) # (!\inst11|bullet_y_pos[2]~14\))) # (!\inst11|bullet_y_pos\(3) & (\inst11|bullet_y_pos[2]~14\ $ (GND)))
-- \inst11|bullet_y_pos[3]~16\ = CARRY((\inst11|bullet_y_pos\(3)) # (!\inst11|bullet_y_pos[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_y_pos\(3),
	datad => VCC,
	cin => \inst11|bullet_y_pos[2]~14\,
	combout => \inst11|bullet_y_pos[3]~15_combout\,
	cout => \inst11|bullet_y_pos[3]~16\);

-- Location: LCCOMB_X27_Y19_N28
\inst11|bullet_y_pos[8]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|bullet_y_pos[8]~30_combout\ = (\inst11|bullet_y_pos~10_combout\ & ((\inst11|bullet_fired~q\) # ((\inst1|left_button~q\) # (!\inst11|move_tank~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_fired~q\,
	datab => \inst11|move_tank~0_combout\,
	datac => \inst1|left_button~q\,
	datad => \inst11|bullet_y_pos~10_combout\,
	combout => \inst11|bullet_y_pos[8]~30_combout\);

-- Location: FF_X28_Y19_N11
\inst11|bullet_y_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|bullet_y_pos[3]~15_combout\,
	asdata => VCC,
	sload => \inst11|bullet_y_pos[8]~29_combout\,
	ena => \inst11|bullet_y_pos[8]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|bullet_y_pos\(3));

-- Location: LCCOMB_X28_Y19_N4
\inst11|LessThan18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan18~0_combout\ = (((!\inst11|bullet_y_pos\(3)) # (!\inst11|bullet_y_pos\(5))) # (!\inst11|bullet_y_pos\(2))) # (!\inst11|bullet_y_pos\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_y_pos\(4),
	datab => \inst11|bullet_y_pos\(2),
	datac => \inst11|bullet_y_pos\(5),
	datad => \inst11|bullet_y_pos\(3),
	combout => \inst11|LessThan18~0_combout\);

-- Location: LCCOMB_X28_Y19_N18
\inst11|bullet_y_pos[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|bullet_y_pos[7]~23_combout\ = (\inst11|bullet_y_pos\(7) & ((GND) # (!\inst11|bullet_y_pos[6]~22\))) # (!\inst11|bullet_y_pos\(7) & (\inst11|bullet_y_pos[6]~22\ $ (GND)))
-- \inst11|bullet_y_pos[7]~24\ = CARRY((\inst11|bullet_y_pos\(7)) # (!\inst11|bullet_y_pos[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|bullet_y_pos\(7),
	datad => VCC,
	cin => \inst11|bullet_y_pos[6]~22\,
	combout => \inst11|bullet_y_pos[7]~23_combout\,
	cout => \inst11|bullet_y_pos[7]~24\);

-- Location: LCCOMB_X28_Y19_N20
\inst11|bullet_y_pos[8]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|bullet_y_pos[8]~25_combout\ = (\inst11|bullet_y_pos\(8) & (\inst11|bullet_y_pos[7]~24\ & VCC)) # (!\inst11|bullet_y_pos\(8) & (!\inst11|bullet_y_pos[7]~24\))
-- \inst11|bullet_y_pos[8]~26\ = CARRY((!\inst11|bullet_y_pos\(8) & !\inst11|bullet_y_pos[7]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|bullet_y_pos\(8),
	datad => VCC,
	cin => \inst11|bullet_y_pos[7]~24\,
	combout => \inst11|bullet_y_pos[8]~25_combout\,
	cout => \inst11|bullet_y_pos[8]~26\);

-- Location: FF_X28_Y19_N21
\inst11|bullet_y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|bullet_y_pos[8]~25_combout\,
	asdata => \inst11|move_tank~0_combout\,
	sload => \inst11|bullet_y_pos[8]~29_combout\,
	ena => \inst11|bullet_y_pos[8]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|bullet_y_pos\(8));

-- Location: LCCOMB_X28_Y19_N2
\inst11|LessThan18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan18~1_combout\ = (!\inst11|bullet_y_pos\(7) & (!\inst11|bullet_y_pos\(8) & ((\inst11|LessThan18~0_combout\) # (!\inst11|bullet_y_pos\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_y_pos\(7),
	datab => \inst11|bullet_y_pos\(6),
	datac => \inst11|LessThan18~0_combout\,
	datad => \inst11|bullet_y_pos\(8),
	combout => \inst11|LessThan18~1_combout\);

-- Location: LCCOMB_X28_Y19_N22
\inst11|bullet_y_pos[9]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|bullet_y_pos[9]~27_combout\ = (\inst11|bullet_y_pos\(9) & ((GND) # (!\inst11|bullet_y_pos[8]~26\))) # (!\inst11|bullet_y_pos\(9) & (\inst11|bullet_y_pos[8]~26\ $ (GND)))
-- \inst11|bullet_y_pos[9]~28\ = CARRY((\inst11|bullet_y_pos\(9)) # (!\inst11|bullet_y_pos[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_y_pos\(9),
	datad => VCC,
	cin => \inst11|bullet_y_pos[8]~26\,
	combout => \inst11|bullet_y_pos[9]~27_combout\,
	cout => \inst11|bullet_y_pos[9]~28\);

-- Location: LCCOMB_X28_Y19_N30
\inst11|move_tank~0_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|move_tank~0_wirecell_combout\ = !\inst11|move_tank~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst11|move_tank~0_combout\,
	combout => \inst11|move_tank~0_wirecell_combout\);

-- Location: FF_X28_Y19_N23
\inst11|bullet_y_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|bullet_y_pos[9]~27_combout\,
	asdata => \inst11|move_tank~0_wirecell_combout\,
	sload => \inst11|bullet_y_pos[8]~29_combout\,
	ena => \inst11|bullet_y_pos[8]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|bullet_y_pos\(9));

-- Location: LCCOMB_X28_Y19_N24
\inst11|bullet_y_pos[10]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|bullet_y_pos[10]~31_combout\ = \inst11|bullet_y_pos[9]~28\ $ (!\inst11|bullet_y_pos\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst11|bullet_y_pos\(10),
	cin => \inst11|bullet_y_pos[9]~28\,
	combout => \inst11|bullet_y_pos[10]~31_combout\);

-- Location: FF_X28_Y19_N25
\inst11|bullet_y_pos[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|bullet_y_pos[10]~31_combout\,
	asdata => \~GND~combout\,
	sload => \inst11|bullet_y_pos[8]~29_combout\,
	ena => \inst11|bullet_y_pos[8]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|bullet_y_pos\(10));

-- Location: LCCOMB_X28_Y19_N0
\inst11|LessThan18~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan18~2_combout\ = (\inst11|LessThan18~1_combout\) # ((\inst11|bullet_y_pos\(10)) # (!\inst11|bullet_y_pos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LessThan18~1_combout\,
	datac => \inst11|bullet_y_pos\(9),
	datad => \inst11|bullet_y_pos\(10),
	combout => \inst11|LessThan18~2_combout\);

-- Location: LCCOMB_X28_Y19_N28
\inst11|bullet_fired~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|bullet_fired~0_combout\ = (\inst11|LessThan18~2_combout\ & (\inst11|move_tank~0_combout\ & ((\inst1|left_button~q\) # (\inst11|bullet_fired~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|left_button~q\,
	datab => \inst11|LessThan18~2_combout\,
	datac => \inst11|bullet_fired~q\,
	datad => \inst11|move_tank~0_combout\,
	combout => \inst11|bullet_fired~0_combout\);

-- Location: FF_X28_Y19_N29
\inst11|bullet_fired\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|bullet_fired~0_combout\,
	ena => \inst11|bullet_y_pos~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|bullet_fired~q\);

-- Location: LCCOMB_X28_Y19_N26
\inst11|bullet_y_pos[8]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|bullet_y_pos[8]~29_combout\ = (!\inst11|move_tank~0_combout\) # (!\inst11|bullet_fired~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|bullet_fired~q\,
	datad => \inst11|move_tank~0_combout\,
	combout => \inst11|bullet_y_pos[8]~29_combout\);

-- Location: FF_X28_Y19_N9
\inst11|bullet_y_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|bullet_y_pos[2]~13_combout\,
	asdata => VCC,
	sload => \inst11|bullet_y_pos[8]~29_combout\,
	ena => \inst11|bullet_y_pos[8]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|bullet_y_pos\(2));

-- Location: LCCOMB_X28_Y19_N12
\inst11|bullet_y_pos[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|bullet_y_pos[4]~17_combout\ = (\inst11|bullet_y_pos\(4) & (\inst11|bullet_y_pos[3]~16\ & VCC)) # (!\inst11|bullet_y_pos\(4) & (!\inst11|bullet_y_pos[3]~16\))
-- \inst11|bullet_y_pos[4]~18\ = CARRY((!\inst11|bullet_y_pos\(4) & !\inst11|bullet_y_pos[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|bullet_y_pos\(4),
	datad => VCC,
	cin => \inst11|bullet_y_pos[3]~16\,
	combout => \inst11|bullet_y_pos[4]~17_combout\,
	cout => \inst11|bullet_y_pos[4]~18\);

-- Location: FF_X28_Y19_N13
\inst11|bullet_y_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|bullet_y_pos[4]~17_combout\,
	asdata => VCC,
	sload => \inst11|bullet_y_pos[8]~29_combout\,
	ena => \inst11|bullet_y_pos[8]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|bullet_y_pos\(4));

-- Location: LCCOMB_X28_Y19_N14
\inst11|bullet_y_pos[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|bullet_y_pos[5]~19_combout\ = (\inst11|bullet_y_pos\(5) & ((GND) # (!\inst11|bullet_y_pos[4]~18\))) # (!\inst11|bullet_y_pos\(5) & (\inst11|bullet_y_pos[4]~18\ $ (GND)))
-- \inst11|bullet_y_pos[5]~20\ = CARRY((\inst11|bullet_y_pos\(5)) # (!\inst11|bullet_y_pos[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|bullet_y_pos\(5),
	datad => VCC,
	cin => \inst11|bullet_y_pos[4]~18\,
	combout => \inst11|bullet_y_pos[5]~19_combout\,
	cout => \inst11|bullet_y_pos[5]~20\);

-- Location: FF_X28_Y19_N15
\inst11|bullet_y_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|bullet_y_pos[5]~19_combout\,
	asdata => VCC,
	sload => \inst11|bullet_y_pos[8]~29_combout\,
	ena => \inst11|bullet_y_pos[8]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|bullet_y_pos\(5));

-- Location: LCCOMB_X28_Y19_N16
\inst11|bullet_y_pos[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|bullet_y_pos[6]~21_combout\ = (\inst11|bullet_y_pos\(6) & (\inst11|bullet_y_pos[5]~20\ & VCC)) # (!\inst11|bullet_y_pos\(6) & (!\inst11|bullet_y_pos[5]~20\))
-- \inst11|bullet_y_pos[6]~22\ = CARRY((!\inst11|bullet_y_pos\(6) & !\inst11|bullet_y_pos[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|bullet_y_pos\(6),
	datad => VCC,
	cin => \inst11|bullet_y_pos[5]~20\,
	combout => \inst11|bullet_y_pos[6]~21_combout\,
	cout => \inst11|bullet_y_pos[6]~22\);

-- Location: FF_X28_Y19_N17
\inst11|bullet_y_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|bullet_y_pos[6]~21_combout\,
	asdata => \inst11|move_tank~0_combout\,
	sload => \inst11|bullet_y_pos[8]~29_combout\,
	ena => \inst11|bullet_y_pos[8]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|bullet_y_pos\(6));

-- Location: FF_X28_Y19_N19
\inst11|bullet_y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|bullet_y_pos[7]~23_combout\,
	asdata => \inst11|move_tank~0_wirecell_combout\,
	sload => \inst11|bullet_y_pos[8]~29_combout\,
	ena => \inst11|bullet_y_pos[8]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|bullet_y_pos\(7));

-- Location: LCCOMB_X28_Y22_N8
\inst11|LessThan19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan19~1_cout\ = CARRY((\inst11|bullet_y_pos\(1) & !\inst11|Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_y_pos\(1),
	datab => \inst11|Add3~0_combout\,
	datad => VCC,
	cout => \inst11|LessThan19~1_cout\);

-- Location: LCCOMB_X28_Y22_N10
\inst11|LessThan19~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan19~3_cout\ = CARRY((\inst11|bullet_y_pos\(2) & (\inst11|Add3~2_combout\ & !\inst11|LessThan19~1_cout\)) # (!\inst11|bullet_y_pos\(2) & ((\inst11|Add3~2_combout\) # (!\inst11|LessThan19~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_y_pos\(2),
	datab => \inst11|Add3~2_combout\,
	datad => VCC,
	cin => \inst11|LessThan19~1_cout\,
	cout => \inst11|LessThan19~3_cout\);

-- Location: LCCOMB_X28_Y22_N12
\inst11|LessThan19~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan19~5_cout\ = CARRY((\inst11|Add3~4_combout\ & (\inst11|bullet_y_pos\(3) & !\inst11|LessThan19~3_cout\)) # (!\inst11|Add3~4_combout\ & ((\inst11|bullet_y_pos\(3)) # (!\inst11|LessThan19~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add3~4_combout\,
	datab => \inst11|bullet_y_pos\(3),
	datad => VCC,
	cin => \inst11|LessThan19~3_cout\,
	cout => \inst11|LessThan19~5_cout\);

-- Location: LCCOMB_X28_Y22_N14
\inst11|LessThan19~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan19~7_cout\ = CARRY((\inst11|Add3~6_combout\ & ((!\inst11|LessThan19~5_cout\) # (!\inst11|bullet_y_pos\(4)))) # (!\inst11|Add3~6_combout\ & (!\inst11|bullet_y_pos\(4) & !\inst11|LessThan19~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add3~6_combout\,
	datab => \inst11|bullet_y_pos\(4),
	datad => VCC,
	cin => \inst11|LessThan19~5_cout\,
	cout => \inst11|LessThan19~7_cout\);

-- Location: LCCOMB_X28_Y22_N16
\inst11|LessThan19~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan19~9_cout\ = CARRY((\inst11|Add3~8_combout\ & (\inst11|bullet_y_pos\(5) & !\inst11|LessThan19~7_cout\)) # (!\inst11|Add3~8_combout\ & ((\inst11|bullet_y_pos\(5)) # (!\inst11|LessThan19~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add3~8_combout\,
	datab => \inst11|bullet_y_pos\(5),
	datad => VCC,
	cin => \inst11|LessThan19~7_cout\,
	cout => \inst11|LessThan19~9_cout\);

-- Location: LCCOMB_X28_Y22_N18
\inst11|LessThan19~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan19~11_cout\ = CARRY((\inst11|Add3~10_combout\ & ((!\inst11|LessThan19~9_cout\) # (!\inst11|bullet_y_pos\(6)))) # (!\inst11|Add3~10_combout\ & (!\inst11|bullet_y_pos\(6) & !\inst11|LessThan19~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add3~10_combout\,
	datab => \inst11|bullet_y_pos\(6),
	datad => VCC,
	cin => \inst11|LessThan19~9_cout\,
	cout => \inst11|LessThan19~11_cout\);

-- Location: LCCOMB_X28_Y22_N20
\inst11|LessThan19~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan19~13_cout\ = CARRY((\inst11|Add3~12_combout\ & (\inst11|bullet_y_pos\(7) & !\inst11|LessThan19~11_cout\)) # (!\inst11|Add3~12_combout\ & ((\inst11|bullet_y_pos\(7)) # (!\inst11|LessThan19~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add3~12_combout\,
	datab => \inst11|bullet_y_pos\(7),
	datad => VCC,
	cin => \inst11|LessThan19~11_cout\,
	cout => \inst11|LessThan19~13_cout\);

-- Location: LCCOMB_X28_Y22_N22
\inst11|LessThan19~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan19~15_cout\ = CARRY((\inst11|bullet_y_pos\(8) & (\inst11|Add3~14_combout\ & !\inst11|LessThan19~13_cout\)) # (!\inst11|bullet_y_pos\(8) & ((\inst11|Add3~14_combout\) # (!\inst11|LessThan19~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_y_pos\(8),
	datab => \inst11|Add3~14_combout\,
	datad => VCC,
	cin => \inst11|LessThan19~13_cout\,
	cout => \inst11|LessThan19~15_cout\);

-- Location: LCCOMB_X28_Y22_N24
\inst11|LessThan19~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan19~17_cout\ = CARRY((\inst11|bullet_y_pos\(9) & ((!\inst11|LessThan19~15_cout\) # (!\inst11|Add3~16_combout\))) # (!\inst11|bullet_y_pos\(9) & (!\inst11|Add3~16_combout\ & !\inst11|LessThan19~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_y_pos\(9),
	datab => \inst11|Add3~16_combout\,
	datad => VCC,
	cin => \inst11|LessThan19~15_cout\,
	cout => \inst11|LessThan19~17_cout\);

-- Location: LCCOMB_X28_Y22_N26
\inst11|LessThan19~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan19~18_combout\ = (\inst11|bullet_y_pos\(10) & ((\inst11|LessThan19~17_cout\) # (!\inst11|Add3~18_combout\))) # (!\inst11|bullet_y_pos\(10) & (\inst11|LessThan19~17_cout\ & !\inst11|Add3~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_y_pos\(10),
	datad => \inst11|Add3~18_combout\,
	cin => \inst11|LessThan19~17_cout\,
	combout => \inst11|LessThan19~18_combout\);

-- Location: LCCOMB_X27_Y19_N4
\inst11|move_tank~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|move_tank~0_combout\ = (\inst11|Add3~18_combout\) # ((\inst11|LessThan21~20_combout\) # ((\inst11|LessThan20~20_combout\) # (\inst11|LessThan19~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add3~18_combout\,
	datab => \inst11|LessThan21~20_combout\,
	datac => \inst11|LessThan20~20_combout\,
	datad => \inst11|LessThan19~18_combout\,
	combout => \inst11|move_tank~0_combout\);

-- Location: LCCOMB_X27_Y19_N30
\inst11|bullet_x_pos[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|bullet_x_pos[6]~1_combout\ = (\inst11|bullet_y_pos~10_combout\ & (((!\inst11|bullet_fired~q\ & \inst1|left_button~q\)) # (!\inst11|move_tank~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_fired~q\,
	datab => \inst1|left_button~q\,
	datac => \inst11|move_tank~0_combout\,
	datad => \inst11|bullet_y_pos~10_combout\,
	combout => \inst11|bullet_x_pos[6]~1_combout\);

-- Location: FF_X31_Y19_N29
\inst11|bullet_x_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|bullet_x_pos~2_combout\,
	ena => \inst11|bullet_x_pos[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|bullet_x_pos\(9));

-- Location: FF_X29_Y20_N27
\inst|pixel_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~q\,
	asdata => \inst|h_count\(8),
	sload => VCC,
	ena => \inst|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_column\(8));

-- Location: FF_X29_Y20_N5
\inst|pixel_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~q\,
	asdata => \inst|h_count\(1),
	sload => VCC,
	ena => \inst|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_column\(1));

-- Location: LCCOMB_X30_Y19_N0
\inst11|LessThan9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan9~1_cout\ = CARRY((\inst|pixel_column\(0) & !\inst11|bullet_x_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(0),
	datab => \inst11|bullet_x_pos\(0),
	datad => VCC,
	cout => \inst11|LessThan9~1_cout\);

-- Location: LCCOMB_X30_Y19_N2
\inst11|LessThan9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan9~3_cout\ = CARRY((\inst11|bullet_x_pos\(1) & ((!\inst11|LessThan9~1_cout\) # (!\inst|pixel_column\(1)))) # (!\inst11|bullet_x_pos\(1) & (!\inst|pixel_column\(1) & !\inst11|LessThan9~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_x_pos\(1),
	datab => \inst|pixel_column\(1),
	datad => VCC,
	cin => \inst11|LessThan9~1_cout\,
	cout => \inst11|LessThan9~3_cout\);

-- Location: LCCOMB_X30_Y19_N4
\inst11|LessThan9~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan9~5_cout\ = CARRY((\inst|pixel_column\(2) & ((!\inst11|LessThan9~3_cout\) # (!\inst11|Add7~0_combout\))) # (!\inst|pixel_column\(2) & (!\inst11|Add7~0_combout\ & !\inst11|LessThan9~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(2),
	datab => \inst11|Add7~0_combout\,
	datad => VCC,
	cin => \inst11|LessThan9~3_cout\,
	cout => \inst11|LessThan9~5_cout\);

-- Location: LCCOMB_X30_Y19_N6
\inst11|LessThan9~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan9~7_cout\ = CARRY((\inst|pixel_column\(3) & (\inst11|Add7~2_combout\ & !\inst11|LessThan9~5_cout\)) # (!\inst|pixel_column\(3) & ((\inst11|Add7~2_combout\) # (!\inst11|LessThan9~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(3),
	datab => \inst11|Add7~2_combout\,
	datad => VCC,
	cin => \inst11|LessThan9~5_cout\,
	cout => \inst11|LessThan9~7_cout\);

-- Location: LCCOMB_X30_Y19_N8
\inst11|LessThan9~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan9~9_cout\ = CARRY((\inst|pixel_column\(4) & ((!\inst11|LessThan9~7_cout\) # (!\inst11|Add7~4_combout\))) # (!\inst|pixel_column\(4) & (!\inst11|Add7~4_combout\ & !\inst11|LessThan9~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(4),
	datab => \inst11|Add7~4_combout\,
	datad => VCC,
	cin => \inst11|LessThan9~7_cout\,
	cout => \inst11|LessThan9~9_cout\);

-- Location: LCCOMB_X30_Y19_N10
\inst11|LessThan9~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan9~11_cout\ = CARRY((\inst|pixel_column\(5) & (\inst11|Add7~6_combout\ & !\inst11|LessThan9~9_cout\)) # (!\inst|pixel_column\(5) & ((\inst11|Add7~6_combout\) # (!\inst11|LessThan9~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(5),
	datab => \inst11|Add7~6_combout\,
	datad => VCC,
	cin => \inst11|LessThan9~9_cout\,
	cout => \inst11|LessThan9~11_cout\);

-- Location: LCCOMB_X30_Y19_N12
\inst11|LessThan9~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan9~13_cout\ = CARRY((\inst|pixel_column\(6) & ((!\inst11|LessThan9~11_cout\) # (!\inst11|Add7~8_combout\))) # (!\inst|pixel_column\(6) & (!\inst11|Add7~8_combout\ & !\inst11|LessThan9~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(6),
	datab => \inst11|Add7~8_combout\,
	datad => VCC,
	cin => \inst11|LessThan9~11_cout\,
	cout => \inst11|LessThan9~13_cout\);

-- Location: LCCOMB_X30_Y19_N14
\inst11|LessThan9~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan9~15_cout\ = CARRY((\inst|pixel_column\(7) & (\inst11|Add7~10_combout\ & !\inst11|LessThan9~13_cout\)) # (!\inst|pixel_column\(7) & ((\inst11|Add7~10_combout\) # (!\inst11|LessThan9~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(7),
	datab => \inst11|Add7~10_combout\,
	datad => VCC,
	cin => \inst11|LessThan9~13_cout\,
	cout => \inst11|LessThan9~15_cout\);

-- Location: LCCOMB_X30_Y19_N16
\inst11|LessThan9~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan9~17_cout\ = CARRY((\inst11|Add7~12_combout\ & (\inst|pixel_column\(8) & !\inst11|LessThan9~15_cout\)) # (!\inst11|Add7~12_combout\ & ((\inst|pixel_column\(8)) # (!\inst11|LessThan9~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add7~12_combout\,
	datab => \inst|pixel_column\(8),
	datad => VCC,
	cin => \inst11|LessThan9~15_cout\,
	cout => \inst11|LessThan9~17_cout\);

-- Location: LCCOMB_X30_Y19_N18
\inst11|LessThan9~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan9~18_combout\ = (\inst|pixel_column\(9) & ((\inst11|LessThan9~17_cout\) # (!\inst11|Add7~14_combout\))) # (!\inst|pixel_column\(9) & (\inst11|LessThan9~17_cout\ & !\inst11|Add7~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_column\(9),
	datad => \inst11|Add7~14_combout\,
	cin => \inst11|LessThan9~17_cout\,
	combout => \inst11|LessThan9~18_combout\);

-- Location: FF_X30_Y20_N1
\inst|pixel_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~q\,
	asdata => \inst|h_count\(7),
	sload => VCC,
	ena => \inst|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_column\(7));

-- Location: FF_X30_Y20_N25
\inst|pixel_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~q\,
	asdata => \inst|h_count\(6),
	sload => VCC,
	ena => \inst|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_column\(6));

-- Location: FF_X29_Y20_N31
\inst|pixel_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~q\,
	asdata => \inst|h_count\(4),
	sload => VCC,
	ena => \inst|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_column\(4));

-- Location: FF_X29_Y20_N29
\inst|pixel_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~q\,
	asdata => \inst|h_count\(3),
	sload => VCC,
	ena => \inst|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_column\(3));

-- Location: LCCOMB_X33_Y19_N8
\inst11|Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add6~2_combout\ = (\inst|pixel_column\(4) & (!\inst11|Add6~1\)) # (!\inst|pixel_column\(4) & ((\inst11|Add6~1\) # (GND)))
-- \inst11|Add6~3\ = CARRY((!\inst11|Add6~1\) # (!\inst|pixel_column\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_column\(4),
	datad => VCC,
	cin => \inst11|Add6~1\,
	combout => \inst11|Add6~2_combout\,
	cout => \inst11|Add6~3\);

-- Location: LCCOMB_X33_Y19_N10
\inst11|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add6~4_combout\ = (\inst|pixel_column\(5) & (\inst11|Add6~3\ $ (GND))) # (!\inst|pixel_column\(5) & (!\inst11|Add6~3\ & VCC))
-- \inst11|Add6~5\ = CARRY((\inst|pixel_column\(5) & !\inst11|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(5),
	datad => VCC,
	cin => \inst11|Add6~3\,
	combout => \inst11|Add6~4_combout\,
	cout => \inst11|Add6~5\);

-- Location: LCCOMB_X33_Y19_N12
\inst11|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add6~6_combout\ = (\inst|pixel_column\(6) & (!\inst11|Add6~5\)) # (!\inst|pixel_column\(6) & ((\inst11|Add6~5\) # (GND)))
-- \inst11|Add6~7\ = CARRY((!\inst11|Add6~5\) # (!\inst|pixel_column\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_column\(6),
	datad => VCC,
	cin => \inst11|Add6~5\,
	combout => \inst11|Add6~6_combout\,
	cout => \inst11|Add6~7\);

-- Location: LCCOMB_X33_Y19_N14
\inst11|Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add6~8_combout\ = (\inst|pixel_column\(7) & (\inst11|Add6~7\ $ (GND))) # (!\inst|pixel_column\(7) & (!\inst11|Add6~7\ & VCC))
-- \inst11|Add6~9\ = CARRY((\inst|pixel_column\(7) & !\inst11|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_column\(7),
	datad => VCC,
	cin => \inst11|Add6~7\,
	combout => \inst11|Add6~8_combout\,
	cout => \inst11|Add6~9\);

-- Location: LCCOMB_X33_Y19_N16
\inst11|Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add6~10_combout\ = (\inst|pixel_column\(8) & (!\inst11|Add6~9\)) # (!\inst|pixel_column\(8) & ((\inst11|Add6~9\) # (GND)))
-- \inst11|Add6~11\ = CARRY((!\inst11|Add6~9\) # (!\inst|pixel_column\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_column\(8),
	datad => VCC,
	cin => \inst11|Add6~9\,
	combout => \inst11|Add6~10_combout\,
	cout => \inst11|Add6~11\);

-- Location: LCCOMB_X33_Y19_N18
\inst11|Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add6~12_combout\ = (\inst|pixel_column\(9) & (\inst11|Add6~11\ $ (GND))) # (!\inst|pixel_column\(9) & (!\inst11|Add6~11\ & VCC))
-- \inst11|Add6~13\ = CARRY((\inst|pixel_column\(9) & !\inst11|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_column\(9),
	datad => VCC,
	cin => \inst11|Add6~11\,
	combout => \inst11|Add6~12_combout\,
	cout => \inst11|Add6~13\);

-- Location: LCCOMB_X33_Y19_N20
\inst11|Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add6~14_combout\ = \inst11|Add6~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst11|Add6~13\,
	combout => \inst11|Add6~14_combout\);

-- Location: LCCOMB_X31_Y19_N30
\inst11|bullet_x_pos~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|bullet_x_pos~9_combout\ = (\inst11|player_x_pos\(2)) # (!\inst11|move_tank~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|player_x_pos\(2),
	datad => \inst11|move_tank~0_combout\,
	combout => \inst11|bullet_x_pos~9_combout\);

-- Location: FF_X31_Y19_N31
\inst11|bullet_x_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|bullet_x_pos~9_combout\,
	ena => \inst11|bullet_x_pos[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|bullet_x_pos\(2));

-- Location: LCCOMB_X32_Y19_N8
\inst11|LessThan8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan8~1_cout\ = CARRY((!\inst|pixel_column\(0) & \inst11|bullet_x_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(0),
	datab => \inst11|bullet_x_pos\(0),
	datad => VCC,
	cout => \inst11|LessThan8~1_cout\);

-- Location: LCCOMB_X32_Y19_N10
\inst11|LessThan8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan8~3_cout\ = CARRY((\inst11|bullet_x_pos\(1) & (\inst|pixel_column\(1) & !\inst11|LessThan8~1_cout\)) # (!\inst11|bullet_x_pos\(1) & ((\inst|pixel_column\(1)) # (!\inst11|LessThan8~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_x_pos\(1),
	datab => \inst|pixel_column\(1),
	datad => VCC,
	cin => \inst11|LessThan8~1_cout\,
	cout => \inst11|LessThan8~3_cout\);

-- Location: LCCOMB_X32_Y19_N12
\inst11|LessThan8~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan8~5_cout\ = CARRY((\inst|pixel_column\(2) & ((\inst11|bullet_x_pos\(2)) # (!\inst11|LessThan8~3_cout\))) # (!\inst|pixel_column\(2) & (\inst11|bullet_x_pos\(2) & !\inst11|LessThan8~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(2),
	datab => \inst11|bullet_x_pos\(2),
	datad => VCC,
	cin => \inst11|LessThan8~3_cout\,
	cout => \inst11|LessThan8~5_cout\);

-- Location: LCCOMB_X32_Y19_N14
\inst11|LessThan8~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan8~7_cout\ = CARRY((\inst11|Add6~0_combout\ & ((!\inst11|LessThan8~5_cout\) # (!\inst11|bullet_x_pos\(3)))) # (!\inst11|Add6~0_combout\ & (!\inst11|bullet_x_pos\(3) & !\inst11|LessThan8~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add6~0_combout\,
	datab => \inst11|bullet_x_pos\(3),
	datad => VCC,
	cin => \inst11|LessThan8~5_cout\,
	cout => \inst11|LessThan8~7_cout\);

-- Location: LCCOMB_X32_Y19_N16
\inst11|LessThan8~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan8~9_cout\ = CARRY((\inst11|bullet_x_pos\(4) & ((!\inst11|LessThan8~7_cout\) # (!\inst11|Add6~2_combout\))) # (!\inst11|bullet_x_pos\(4) & (!\inst11|Add6~2_combout\ & !\inst11|LessThan8~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_x_pos\(4),
	datab => \inst11|Add6~2_combout\,
	datad => VCC,
	cin => \inst11|LessThan8~7_cout\,
	cout => \inst11|LessThan8~9_cout\);

-- Location: LCCOMB_X32_Y19_N18
\inst11|LessThan8~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan8~11_cout\ = CARRY((\inst11|bullet_x_pos\(5) & (\inst11|Add6~4_combout\ & !\inst11|LessThan8~9_cout\)) # (!\inst11|bullet_x_pos\(5) & ((\inst11|Add6~4_combout\) # (!\inst11|LessThan8~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_x_pos\(5),
	datab => \inst11|Add6~4_combout\,
	datad => VCC,
	cin => \inst11|LessThan8~9_cout\,
	cout => \inst11|LessThan8~11_cout\);

-- Location: LCCOMB_X32_Y19_N20
\inst11|LessThan8~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan8~13_cout\ = CARRY((\inst11|bullet_x_pos\(6) & ((!\inst11|LessThan8~11_cout\) # (!\inst11|Add6~6_combout\))) # (!\inst11|bullet_x_pos\(6) & (!\inst11|Add6~6_combout\ & !\inst11|LessThan8~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_x_pos\(6),
	datab => \inst11|Add6~6_combout\,
	datad => VCC,
	cin => \inst11|LessThan8~11_cout\,
	cout => \inst11|LessThan8~13_cout\);

-- Location: LCCOMB_X32_Y19_N22
\inst11|LessThan8~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan8~15_cout\ = CARRY((\inst11|bullet_x_pos\(7) & (\inst11|Add6~8_combout\ & !\inst11|LessThan8~13_cout\)) # (!\inst11|bullet_x_pos\(7) & ((\inst11|Add6~8_combout\) # (!\inst11|LessThan8~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_x_pos\(7),
	datab => \inst11|Add6~8_combout\,
	datad => VCC,
	cin => \inst11|LessThan8~13_cout\,
	cout => \inst11|LessThan8~15_cout\);

-- Location: LCCOMB_X32_Y19_N24
\inst11|LessThan8~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan8~17_cout\ = CARRY((\inst11|bullet_x_pos\(8) & ((!\inst11|LessThan8~15_cout\) # (!\inst11|Add6~10_combout\))) # (!\inst11|bullet_x_pos\(8) & (!\inst11|Add6~10_combout\ & !\inst11|LessThan8~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_x_pos\(8),
	datab => \inst11|Add6~10_combout\,
	datad => VCC,
	cin => \inst11|LessThan8~15_cout\,
	cout => \inst11|LessThan8~17_cout\);

-- Location: LCCOMB_X32_Y19_N26
\inst11|LessThan8~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan8~19_cout\ = CARRY((\inst11|bullet_x_pos\(9) & (\inst11|Add6~12_combout\ & !\inst11|LessThan8~17_cout\)) # (!\inst11|bullet_x_pos\(9) & ((\inst11|Add6~12_combout\) # (!\inst11|LessThan8~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_x_pos\(9),
	datab => \inst11|Add6~12_combout\,
	datad => VCC,
	cin => \inst11|LessThan8~17_cout\,
	cout => \inst11|LessThan8~19_cout\);

-- Location: LCCOMB_X32_Y19_N28
\inst11|LessThan8~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan8~20_combout\ = (\inst11|bullet_x_pos\(10) & ((!\inst11|Add6~14_combout\) # (!\inst11|LessThan8~19_cout\))) # (!\inst11|bullet_x_pos\(10) & (!\inst11|LessThan8~19_cout\ & !\inst11|Add6~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|bullet_x_pos\(10),
	datad => \inst11|Add6~14_combout\,
	cin => \inst11|LessThan8~19_cout\,
	combout => \inst11|LessThan8~20_combout\);

-- Location: LCCOMB_X28_Y22_N30
\inst14|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|Equal0~0_combout\ = (\inst15|s_game_mode\(1)) # (\inst15|s_game_mode\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|s_game_mode\(1),
	datad => \inst15|s_game_mode\(0),
	combout => \inst14|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y23_N22
\inst|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~20_combout\ = \inst|Add1~19\ $ (!\inst|v_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|v_count\(10),
	cin => \inst|Add1~19\,
	combout => \inst|Add1~20_combout\);

-- Location: LCCOMB_X28_Y23_N16
\inst|v_count[10]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count[10]~11_combout\ = (\inst|v_count[0]~1_combout\ & (\inst|process_0~12_combout\ & ((\inst|Add1~20_combout\)))) # (!\inst|v_count[0]~1_combout\ & (((\inst|v_count\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~12_combout\,
	datab => \inst|v_count[0]~1_combout\,
	datac => \inst|v_count\(10),
	datad => \inst|Add1~20_combout\,
	combout => \inst|v_count[10]~11_combout\);

-- Location: FF_X28_Y23_N17
\inst|v_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|v_count[10]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(10));

-- Location: LCCOMB_X28_Y23_N10
\inst|LessThan7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan7~4_combout\ = (!\inst|v_count\(10) & (!\inst|LessThan7~2_combout\ & !\inst|v_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|v_count\(10),
	datac => \inst|LessThan7~2_combout\,
	datad => \inst|v_count\(9),
	combout => \inst|LessThan7~4_combout\);

-- Location: FF_X29_Y21_N27
\inst|pixel_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~q\,
	asdata => \inst|v_count\(8),
	sload => VCC,
	ena => \inst|LessThan7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_row\(8));

-- Location: FF_X29_Y21_N5
\inst|pixel_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~q\,
	asdata => \inst|v_count\(7),
	sload => VCC,
	ena => \inst|LessThan7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_row\(7));

-- Location: FF_X29_Y21_N17
\inst|pixel_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~q\,
	asdata => \inst|v_count\(6),
	sload => VCC,
	ena => \inst|LessThan7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_row\(6));

-- Location: FF_X29_Y21_N15
\inst|pixel_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~q\,
	asdata => \inst|v_count\(5),
	sload => VCC,
	ena => \inst|LessThan7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_row\(5));

-- Location: FF_X29_Y21_N7
\inst|pixel_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~q\,
	asdata => \inst|v_count\(4),
	sload => VCC,
	ena => \inst|LessThan7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_row\(4));

-- Location: LCCOMB_X27_Y20_N6
\inst11|Add9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add9~0_combout\ = (\inst11|bullet_y_pos\(3) & (\inst11|bullet_y_pos\(2) $ (VCC))) # (!\inst11|bullet_y_pos\(3) & (\inst11|bullet_y_pos\(2) & VCC))
-- \inst11|Add9~1\ = CARRY((\inst11|bullet_y_pos\(3) & \inst11|bullet_y_pos\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_y_pos\(3),
	datab => \inst11|bullet_y_pos\(2),
	datad => VCC,
	combout => \inst11|Add9~0_combout\,
	cout => \inst11|Add9~1\);

-- Location: FF_X29_Y21_N11
\inst|pixel_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~q\,
	asdata => \inst|v_count\(2),
	sload => VCC,
	ena => \inst|LessThan7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_row\(2));

-- Location: FF_X28_Y19_N7
\inst11|bullet_y_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|bullet_y_pos[1]~11_combout\,
	asdata => \~GND~combout\,
	sload => \inst11|bullet_y_pos[8]~29_combout\,
	ena => \inst11|bullet_y_pos[8]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|bullet_y_pos\(1));

-- Location: LCCOMB_X28_Y20_N0
\inst|pixel_row[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|pixel_row[0]~feeder_combout\ = \inst|v_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|v_count\(0),
	combout => \inst|pixel_row[0]~feeder_combout\);

-- Location: FF_X28_Y20_N1
\inst|pixel_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~q\,
	d => \inst|pixel_row[0]~feeder_combout\,
	ena => \inst|LessThan7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_row\(0));

-- Location: LCCOMB_X28_Y20_N10
\inst11|LessThan11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan11~1_cout\ = CARRY(\inst|pixel_row\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_row\(0),
	datad => VCC,
	cout => \inst11|LessThan11~1_cout\);

-- Location: LCCOMB_X28_Y20_N12
\inst11|LessThan11~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan11~3_cout\ = CARRY((\inst|pixel_row\(1) & (\inst11|bullet_y_pos\(1) & !\inst11|LessThan11~1_cout\)) # (!\inst|pixel_row\(1) & ((\inst11|bullet_y_pos\(1)) # (!\inst11|LessThan11~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(1),
	datab => \inst11|bullet_y_pos\(1),
	datad => VCC,
	cin => \inst11|LessThan11~1_cout\,
	cout => \inst11|LessThan11~3_cout\);

-- Location: LCCOMB_X28_Y20_N14
\inst11|LessThan11~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan11~5_cout\ = CARRY((\inst11|bullet_y_pos\(2) & ((\inst|pixel_row\(2)) # (!\inst11|LessThan11~3_cout\))) # (!\inst11|bullet_y_pos\(2) & (\inst|pixel_row\(2) & !\inst11|LessThan11~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_y_pos\(2),
	datab => \inst|pixel_row\(2),
	datad => VCC,
	cin => \inst11|LessThan11~3_cout\,
	cout => \inst11|LessThan11~5_cout\);

-- Location: LCCOMB_X28_Y20_N16
\inst11|LessThan11~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan11~7_cout\ = CARRY((\inst|pixel_row\(3) & (\inst11|Add9~0_combout\ & !\inst11|LessThan11~5_cout\)) # (!\inst|pixel_row\(3) & ((\inst11|Add9~0_combout\) # (!\inst11|LessThan11~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(3),
	datab => \inst11|Add9~0_combout\,
	datad => VCC,
	cin => \inst11|LessThan11~5_cout\,
	cout => \inst11|LessThan11~7_cout\);

-- Location: LCCOMB_X28_Y20_N18
\inst11|LessThan11~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan11~9_cout\ = CARRY((\inst11|Add9~2_combout\ & (\inst|pixel_row\(4) & !\inst11|LessThan11~7_cout\)) # (!\inst11|Add9~2_combout\ & ((\inst|pixel_row\(4)) # (!\inst11|LessThan11~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add9~2_combout\,
	datab => \inst|pixel_row\(4),
	datad => VCC,
	cin => \inst11|LessThan11~7_cout\,
	cout => \inst11|LessThan11~9_cout\);

-- Location: LCCOMB_X28_Y20_N20
\inst11|LessThan11~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan11~11_cout\ = CARRY((\inst11|Add9~4_combout\ & ((!\inst11|LessThan11~9_cout\) # (!\inst|pixel_row\(5)))) # (!\inst11|Add9~4_combout\ & (!\inst|pixel_row\(5) & !\inst11|LessThan11~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add9~4_combout\,
	datab => \inst|pixel_row\(5),
	datad => VCC,
	cin => \inst11|LessThan11~9_cout\,
	cout => \inst11|LessThan11~11_cout\);

-- Location: LCCOMB_X28_Y20_N22
\inst11|LessThan11~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan11~13_cout\ = CARRY((\inst11|Add9~6_combout\ & (\inst|pixel_row\(6) & !\inst11|LessThan11~11_cout\)) # (!\inst11|Add9~6_combout\ & ((\inst|pixel_row\(6)) # (!\inst11|LessThan11~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add9~6_combout\,
	datab => \inst|pixel_row\(6),
	datad => VCC,
	cin => \inst11|LessThan11~11_cout\,
	cout => \inst11|LessThan11~13_cout\);

-- Location: LCCOMB_X28_Y20_N24
\inst11|LessThan11~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan11~15_cout\ = CARRY((\inst11|Add9~8_combout\ & ((!\inst11|LessThan11~13_cout\) # (!\inst|pixel_row\(7)))) # (!\inst11|Add9~8_combout\ & (!\inst|pixel_row\(7) & !\inst11|LessThan11~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add9~8_combout\,
	datab => \inst|pixel_row\(7),
	datad => VCC,
	cin => \inst11|LessThan11~13_cout\,
	cout => \inst11|LessThan11~15_cout\);

-- Location: LCCOMB_X28_Y20_N26
\inst11|LessThan11~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan11~16_combout\ = (\inst11|Add9~10_combout\ & (\inst|pixel_row\(8) & !\inst11|LessThan11~15_cout\)) # (!\inst11|Add9~10_combout\ & ((\inst|pixel_row\(8)) # (!\inst11|LessThan11~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add9~10_combout\,
	datab => \inst|pixel_row\(8),
	cin => \inst11|LessThan11~15_cout\,
	combout => \inst11|LessThan11~16_combout\);

-- Location: LCCOMB_X28_Y20_N2
\inst15|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|process_0~8_combout\ = (!\inst11|bullet_y_pos\(10) & (\inst14|Equal0~0_combout\ & ((\inst11|Add9~12_combout\) # (!\inst11|LessThan11~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bullet_y_pos\(10),
	datab => \inst14|Equal0~0_combout\,
	datac => \inst11|LessThan11~16_combout\,
	datad => \inst11|Add9~12_combout\,
	combout => \inst15|process_0~8_combout\);

-- Location: LCCOMB_X28_Y20_N8
\inst15|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|process_0~10_combout\ = (\inst15|process_0~9_combout\ & (!\inst11|LessThan9~18_combout\ & (!\inst11|LessThan8~20_combout\ & \inst15|process_0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|process_0~9_combout\,
	datab => \inst11|LessThan9~18_combout\,
	datac => \inst11|LessThan8~20_combout\,
	datad => \inst15|process_0~8_combout\,
	combout => \inst15|process_0~10_combout\);

-- Location: FF_X32_Y23_N13
\inst|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_count\(2));

-- Location: FF_X29_Y20_N1
\inst|pixel_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~q\,
	asdata => \inst|h_count\(2),
	sload => VCC,
	ena => \inst|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_column\(2));

-- Location: LCCOMB_X29_Y20_N6
\inst11|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add0~0_combout\ = \inst|pixel_column\(1) $ (VCC)
-- \inst11|Add0~1\ = CARRY(\inst|pixel_column\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_column\(1),
	datad => VCC,
	combout => \inst11|Add0~0_combout\,
	cout => \inst11|Add0~1\);

-- Location: LCCOMB_X29_Y20_N8
\inst11|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add0~2_combout\ = (\inst|pixel_column\(2) & (!\inst11|Add0~1\)) # (!\inst|pixel_column\(2) & ((\inst11|Add0~1\) # (GND)))
-- \inst11|Add0~3\ = CARRY((!\inst11|Add0~1\) # (!\inst|pixel_column\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_column\(2),
	datad => VCC,
	cin => \inst11|Add0~1\,
	combout => \inst11|Add0~2_combout\,
	cout => \inst11|Add0~3\);

-- Location: LCCOMB_X29_Y20_N10
\inst11|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add0~4_combout\ = (\inst|pixel_column\(3) & ((GND) # (!\inst11|Add0~3\))) # (!\inst|pixel_column\(3) & (\inst11|Add0~3\ $ (GND)))
-- \inst11|Add0~5\ = CARRY((\inst|pixel_column\(3)) # (!\inst11|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_column\(3),
	datad => VCC,
	cin => \inst11|Add0~3\,
	combout => \inst11|Add0~4_combout\,
	cout => \inst11|Add0~5\);

-- Location: LCCOMB_X29_Y20_N12
\inst11|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add0~6_combout\ = (\inst|pixel_column\(4) & (!\inst11|Add0~5\)) # (!\inst|pixel_column\(4) & ((\inst11|Add0~5\) # (GND)))
-- \inst11|Add0~7\ = CARRY((!\inst11|Add0~5\) # (!\inst|pixel_column\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(4),
	datad => VCC,
	cin => \inst11|Add0~5\,
	combout => \inst11|Add0~6_combout\,
	cout => \inst11|Add0~7\);

-- Location: LCCOMB_X29_Y20_N14
\inst11|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add0~8_combout\ = (\inst|pixel_column\(5) & (\inst11|Add0~7\ $ (GND))) # (!\inst|pixel_column\(5) & (!\inst11|Add0~7\ & VCC))
-- \inst11|Add0~9\ = CARRY((\inst|pixel_column\(5) & !\inst11|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(5),
	datad => VCC,
	cin => \inst11|Add0~7\,
	combout => \inst11|Add0~8_combout\,
	cout => \inst11|Add0~9\);

-- Location: LCCOMB_X29_Y20_N20
\inst11|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add0~14_combout\ = (\inst|pixel_column\(8) & (!\inst11|Add0~13\)) # (!\inst|pixel_column\(8) & ((\inst11|Add0~13\) # (GND)))
-- \inst11|Add0~15\ = CARRY((!\inst11|Add0~13\) # (!\inst|pixel_column\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(8),
	datad => VCC,
	cin => \inst11|Add0~13\,
	combout => \inst11|Add0~14_combout\,
	cout => \inst11|Add0~15\);

-- Location: LCCOMB_X29_Y20_N24
\inst11|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add0~18_combout\ = \inst11|Add0~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst11|Add0~17\,
	combout => \inst11|Add0~18_combout\);

-- Location: FF_X30_Y16_N17
\inst11|player_x_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|player_x_pos[8]~27_combout\,
	ena => \inst11|player_x_pos[4]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|player_x_pos\(8));

-- Location: FF_X30_Y16_N13
\inst11|player_x_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst11|player_x_pos[6]~23_combout\,
	ena => \inst11|player_x_pos[4]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|player_x_pos\(6));

-- Location: LCCOMB_X29_Y16_N8
\inst11|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add4~0_combout\ = (\inst11|player_x_pos\(2) & (\inst11|player_x_pos\(1) $ (VCC))) # (!\inst11|player_x_pos\(2) & (\inst11|player_x_pos\(1) & VCC))
-- \inst11|Add4~1\ = CARRY((\inst11|player_x_pos\(2) & \inst11|player_x_pos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|player_x_pos\(2),
	datab => \inst11|player_x_pos\(1),
	datad => VCC,
	combout => \inst11|Add4~0_combout\,
	cout => \inst11|Add4~1\);

-- Location: LCCOMB_X29_Y16_N10
\inst11|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add4~2_combout\ = (\inst11|player_x_pos\(3) & (\inst11|Add4~1\ & VCC)) # (!\inst11|player_x_pos\(3) & (!\inst11|Add4~1\))
-- \inst11|Add4~3\ = CARRY((!\inst11|player_x_pos\(3) & !\inst11|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|player_x_pos\(3),
	datad => VCC,
	cin => \inst11|Add4~1\,
	combout => \inst11|Add4~2_combout\,
	cout => \inst11|Add4~3\);

-- Location: LCCOMB_X29_Y16_N16
\inst11|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add4~8_combout\ = (\inst11|player_x_pos\(6) & (\inst11|Add4~7\ $ (GND))) # (!\inst11|player_x_pos\(6) & (!\inst11|Add4~7\ & VCC))
-- \inst11|Add4~9\ = CARRY((\inst11|player_x_pos\(6) & !\inst11|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|player_x_pos\(6),
	datad => VCC,
	cin => \inst11|Add4~7\,
	combout => \inst11|Add4~8_combout\,
	cout => \inst11|Add4~9\);

-- Location: LCCOMB_X29_Y16_N20
\inst11|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add4~12_combout\ = (\inst11|player_x_pos\(8) & (\inst11|Add4~11\ $ (GND))) # (!\inst11|player_x_pos\(8) & (!\inst11|Add4~11\ & VCC))
-- \inst11|Add4~13\ = CARRY((\inst11|player_x_pos\(8) & !\inst11|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|player_x_pos\(8),
	datad => VCC,
	cin => \inst11|Add4~11\,
	combout => \inst11|Add4~12_combout\,
	cout => \inst11|Add4~13\);

-- Location: LCCOMB_X29_Y16_N22
\inst11|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add4~14_combout\ = (\inst11|player_x_pos\(9) & (!\inst11|Add4~13\)) # (!\inst11|player_x_pos\(9) & ((\inst11|Add4~13\) # (GND)))
-- \inst11|Add4~15\ = CARRY((!\inst11|Add4~13\) # (!\inst11|player_x_pos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|player_x_pos\(9),
	datad => VCC,
	cin => \inst11|Add4~13\,
	combout => \inst11|Add4~14_combout\,
	cout => \inst11|Add4~15\);

-- Location: LCCOMB_X29_Y16_N24
\inst11|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add4~16_combout\ = \inst11|player_x_pos\(10) $ (!\inst11|Add4~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|player_x_pos\(10),
	cin => \inst11|Add4~15\,
	combout => \inst11|Add4~16_combout\);

-- Location: LCCOMB_X29_Y16_N4
\inst15|process_0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|process_0~14_combout\ = (!\inst11|Add0~18_combout\ & (!\inst11|Add4~16_combout\ & ((\inst15|s_game_mode\(1)) # (\inst15|s_game_mode\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|s_game_mode\(1),
	datab => \inst15|s_game_mode\(0),
	datac => \inst11|Add0~18_combout\,
	datad => \inst11|Add4~16_combout\,
	combout => \inst15|process_0~14_combout\);

-- Location: FF_X30_Y20_N31
\inst|pixel_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~q\,
	asdata => \inst|h_count\(5),
	sload => VCC,
	ena => \inst|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_column\(5));

-- Location: FF_X29_Y20_N7
\inst|pixel_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~q\,
	asdata => \inst|h_count\(0),
	sload => VCC,
	ena => \inst|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_column\(0));

-- Location: LCCOMB_X28_Y18_N12
\inst11|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan5~1_cout\ = CARRY((!\inst11|player_x_pos\(0) & \inst|pixel_column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|player_x_pos\(0),
	datab => \inst|pixel_column\(0),
	datad => VCC,
	cout => \inst11|LessThan5~1_cout\);

-- Location: LCCOMB_X28_Y18_N14
\inst11|LessThan5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan5~3_cout\ = CARRY((\inst|pixel_column\(1) & (!\inst11|player_x_pos\(1) & !\inst11|LessThan5~1_cout\)) # (!\inst|pixel_column\(1) & ((!\inst11|LessThan5~1_cout\) # (!\inst11|player_x_pos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(1),
	datab => \inst11|player_x_pos\(1),
	datad => VCC,
	cin => \inst11|LessThan5~1_cout\,
	cout => \inst11|LessThan5~3_cout\);

-- Location: LCCOMB_X28_Y18_N16
\inst11|LessThan5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan5~5_cout\ = CARRY((\inst|pixel_column\(2) & ((!\inst11|LessThan5~3_cout\) # (!\inst11|Add4~0_combout\))) # (!\inst|pixel_column\(2) & (!\inst11|Add4~0_combout\ & !\inst11|LessThan5~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(2),
	datab => \inst11|Add4~0_combout\,
	datad => VCC,
	cin => \inst11|LessThan5~3_cout\,
	cout => \inst11|LessThan5~5_cout\);

-- Location: LCCOMB_X28_Y18_N18
\inst11|LessThan5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan5~7_cout\ = CARRY((\inst|pixel_column\(3) & (\inst11|Add4~2_combout\ & !\inst11|LessThan5~5_cout\)) # (!\inst|pixel_column\(3) & ((\inst11|Add4~2_combout\) # (!\inst11|LessThan5~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(3),
	datab => \inst11|Add4~2_combout\,
	datad => VCC,
	cin => \inst11|LessThan5~5_cout\,
	cout => \inst11|LessThan5~7_cout\);

-- Location: LCCOMB_X28_Y18_N20
\inst11|LessThan5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan5~9_cout\ = CARRY((\inst11|Add4~4_combout\ & (\inst|pixel_column\(4) & !\inst11|LessThan5~7_cout\)) # (!\inst11|Add4~4_combout\ & ((\inst|pixel_column\(4)) # (!\inst11|LessThan5~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add4~4_combout\,
	datab => \inst|pixel_column\(4),
	datad => VCC,
	cin => \inst11|LessThan5~7_cout\,
	cout => \inst11|LessThan5~9_cout\);

-- Location: LCCOMB_X28_Y18_N22
\inst11|LessThan5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan5~11_cout\ = CARRY((\inst11|Add4~6_combout\ & ((!\inst11|LessThan5~9_cout\) # (!\inst|pixel_column\(5)))) # (!\inst11|Add4~6_combout\ & (!\inst|pixel_column\(5) & !\inst11|LessThan5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add4~6_combout\,
	datab => \inst|pixel_column\(5),
	datad => VCC,
	cin => \inst11|LessThan5~9_cout\,
	cout => \inst11|LessThan5~11_cout\);

-- Location: LCCOMB_X28_Y18_N24
\inst11|LessThan5~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan5~13_cout\ = CARRY((\inst|pixel_column\(6) & ((!\inst11|LessThan5~11_cout\) # (!\inst11|Add4~8_combout\))) # (!\inst|pixel_column\(6) & (!\inst11|Add4~8_combout\ & !\inst11|LessThan5~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(6),
	datab => \inst11|Add4~8_combout\,
	datad => VCC,
	cin => \inst11|LessThan5~11_cout\,
	cout => \inst11|LessThan5~13_cout\);

-- Location: LCCOMB_X28_Y18_N26
\inst11|LessThan5~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan5~15_cout\ = CARRY((\inst11|Add4~10_combout\ & ((!\inst11|LessThan5~13_cout\) # (!\inst|pixel_column\(7)))) # (!\inst11|Add4~10_combout\ & (!\inst|pixel_column\(7) & !\inst11|LessThan5~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add4~10_combout\,
	datab => \inst|pixel_column\(7),
	datad => VCC,
	cin => \inst11|LessThan5~13_cout\,
	cout => \inst11|LessThan5~15_cout\);

-- Location: LCCOMB_X28_Y18_N28
\inst11|LessThan5~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan5~17_cout\ = CARRY((\inst|pixel_column\(8) & ((!\inst11|LessThan5~15_cout\) # (!\inst11|Add4~12_combout\))) # (!\inst|pixel_column\(8) & (!\inst11|Add4~12_combout\ & !\inst11|LessThan5~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(8),
	datab => \inst11|Add4~12_combout\,
	datad => VCC,
	cin => \inst11|LessThan5~15_cout\,
	cout => \inst11|LessThan5~17_cout\);

-- Location: LCCOMB_X28_Y18_N30
\inst11|LessThan5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan5~18_combout\ = (\inst11|Add4~14_combout\ & (\inst11|LessThan5~17_cout\ & \inst|pixel_column\(9))) # (!\inst11|Add4~14_combout\ & ((\inst11|LessThan5~17_cout\) # (\inst|pixel_column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Add4~14_combout\,
	datad => \inst|pixel_column\(9),
	cin => \inst11|LessThan5~17_cout\,
	combout => \inst11|LessThan5~18_combout\);

-- Location: LCCOMB_X29_Y18_N2
\inst11|LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan4~1_cout\ = CARRY((!\inst|pixel_column\(0) & \inst11|player_x_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(0),
	datab => \inst11|player_x_pos\(0),
	datad => VCC,
	cout => \inst11|LessThan4~1_cout\);

-- Location: LCCOMB_X29_Y18_N4
\inst11|LessThan4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan4~3_cout\ = CARRY((\inst11|Add0~0_combout\ & ((!\inst11|LessThan4~1_cout\) # (!\inst11|player_x_pos\(1)))) # (!\inst11|Add0~0_combout\ & (!\inst11|player_x_pos\(1) & !\inst11|LessThan4~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~0_combout\,
	datab => \inst11|player_x_pos\(1),
	datad => VCC,
	cin => \inst11|LessThan4~1_cout\,
	cout => \inst11|LessThan4~3_cout\);

-- Location: LCCOMB_X29_Y18_N6
\inst11|LessThan4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan4~5_cout\ = CARRY((\inst11|player_x_pos\(2) & ((!\inst11|LessThan4~3_cout\) # (!\inst11|Add0~2_combout\))) # (!\inst11|player_x_pos\(2) & (!\inst11|Add0~2_combout\ & !\inst11|LessThan4~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|player_x_pos\(2),
	datab => \inst11|Add0~2_combout\,
	datad => VCC,
	cin => \inst11|LessThan4~3_cout\,
	cout => \inst11|LessThan4~5_cout\);

-- Location: LCCOMB_X29_Y18_N8
\inst11|LessThan4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan4~7_cout\ = CARRY((\inst11|player_x_pos\(3) & (\inst11|Add0~4_combout\ & !\inst11|LessThan4~5_cout\)) # (!\inst11|player_x_pos\(3) & ((\inst11|Add0~4_combout\) # (!\inst11|LessThan4~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|player_x_pos\(3),
	datab => \inst11|Add0~4_combout\,
	datad => VCC,
	cin => \inst11|LessThan4~5_cout\,
	cout => \inst11|LessThan4~7_cout\);

-- Location: LCCOMB_X29_Y18_N10
\inst11|LessThan4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan4~9_cout\ = CARRY((\inst11|player_x_pos\(4) & ((!\inst11|LessThan4~7_cout\) # (!\inst11|Add0~6_combout\))) # (!\inst11|player_x_pos\(4) & (!\inst11|Add0~6_combout\ & !\inst11|LessThan4~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|player_x_pos\(4),
	datab => \inst11|Add0~6_combout\,
	datad => VCC,
	cin => \inst11|LessThan4~7_cout\,
	cout => \inst11|LessThan4~9_cout\);

-- Location: LCCOMB_X29_Y18_N12
\inst11|LessThan4~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan4~11_cout\ = CARRY((\inst11|player_x_pos\(5) & (\inst11|Add0~8_combout\ & !\inst11|LessThan4~9_cout\)) # (!\inst11|player_x_pos\(5) & ((\inst11|Add0~8_combout\) # (!\inst11|LessThan4~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|player_x_pos\(5),
	datab => \inst11|Add0~8_combout\,
	datad => VCC,
	cin => \inst11|LessThan4~9_cout\,
	cout => \inst11|LessThan4~11_cout\);

-- Location: LCCOMB_X29_Y18_N14
\inst11|LessThan4~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan4~13_cout\ = CARRY((\inst11|Add0~10_combout\ & (\inst11|player_x_pos\(6) & !\inst11|LessThan4~11_cout\)) # (!\inst11|Add0~10_combout\ & ((\inst11|player_x_pos\(6)) # (!\inst11|LessThan4~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~10_combout\,
	datab => \inst11|player_x_pos\(6),
	datad => VCC,
	cin => \inst11|LessThan4~11_cout\,
	cout => \inst11|LessThan4~13_cout\);

-- Location: LCCOMB_X29_Y18_N16
\inst11|LessThan4~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan4~15_cout\ = CARRY((\inst11|Add0~12_combout\ & ((!\inst11|LessThan4~13_cout\) # (!\inst11|player_x_pos\(7)))) # (!\inst11|Add0~12_combout\ & (!\inst11|player_x_pos\(7) & !\inst11|LessThan4~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~12_combout\,
	datab => \inst11|player_x_pos\(7),
	datad => VCC,
	cin => \inst11|LessThan4~13_cout\,
	cout => \inst11|LessThan4~15_cout\);

-- Location: LCCOMB_X29_Y18_N18
\inst11|LessThan4~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan4~17_cout\ = CARRY((\inst11|player_x_pos\(8) & ((!\inst11|LessThan4~15_cout\) # (!\inst11|Add0~14_combout\))) # (!\inst11|player_x_pos\(8) & (!\inst11|Add0~14_combout\ & !\inst11|LessThan4~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|player_x_pos\(8),
	datab => \inst11|Add0~14_combout\,
	datad => VCC,
	cin => \inst11|LessThan4~15_cout\,
	cout => \inst11|LessThan4~17_cout\);

-- Location: LCCOMB_X29_Y18_N20
\inst11|LessThan4~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan4~19_cout\ = CARRY((\inst11|Add0~16_combout\ & ((!\inst11|LessThan4~17_cout\) # (!\inst11|player_x_pos\(9)))) # (!\inst11|Add0~16_combout\ & (!\inst11|player_x_pos\(9) & !\inst11|LessThan4~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~16_combout\,
	datab => \inst11|player_x_pos\(9),
	datad => VCC,
	cin => \inst11|LessThan4~17_cout\,
	cout => \inst11|LessThan4~19_cout\);

-- Location: LCCOMB_X29_Y18_N22
\inst11|LessThan4~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan4~20_combout\ = (\inst11|Add0~18_combout\ & (!\inst11|LessThan4~19_cout\ & \inst11|player_x_pos\(10))) # (!\inst11|Add0~18_combout\ & ((\inst11|player_x_pos\(10)) # (!\inst11|LessThan4~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Add0~18_combout\,
	datad => \inst11|player_x_pos\(10),
	cin => \inst11|LessThan4~19_cout\,
	combout => \inst11|LessThan4~20_combout\);

-- Location: LCCOMB_X28_Y18_N0
\inst15|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|process_0~7_combout\ = (\inst15|process_0~5_combout\ & (\inst15|process_0~14_combout\ & (!\inst11|LessThan5~18_combout\ & !\inst11|LessThan4~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|process_0~5_combout\,
	datab => \inst15|process_0~14_combout\,
	datac => \inst11|LessThan5~18_combout\,
	datad => \inst11|LessThan4~20_combout\,
	combout => \inst15|process_0~7_combout\);

-- Location: LCCOMB_X27_Y20_N4
\inst|blue_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|blue_out~0_combout\ = (!\inst15|process_0~10_combout\ & !\inst15|process_0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|process_0~10_combout\,
	datad => \inst15|process_0~7_combout\,
	combout => \inst|blue_out~0_combout\);

-- Location: LCCOMB_X29_Y21_N14
\inst14|LessThan12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LessThan12~0_combout\ = (\inst|pixel_row\(8) & (\inst|pixel_row\(6) & ((\inst|pixel_row\(5)) # (\inst|pixel_row\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(8),
	datab => \inst|pixel_row\(6),
	datac => \inst|pixel_row\(5),
	datad => \inst|pixel_row\(4),
	combout => \inst14|LessThan12~0_combout\);

-- Location: LCCOMB_X30_Y21_N16
\inst14|process_0~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~43_combout\ = (\inst|pixel_row\(6) & (!\inst|pixel_row\(7) & (\inst|pixel_row\(8) & !\inst14|LessThan12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(6),
	datab => \inst|pixel_row\(7),
	datac => \inst|pixel_row\(8),
	datad => \inst14|LessThan12~0_combout\,
	combout => \inst14|process_0~43_combout\);

-- Location: LCCOMB_X29_Y20_N4
\inst14|LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LessThan4~0_combout\ = (!\inst|pixel_column\(0) & (!\inst|pixel_column\(2) & (!\inst|pixel_column\(1) & !\inst|pixel_column\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(0),
	datab => \inst|pixel_column\(2),
	datac => \inst|pixel_column\(1),
	datad => \inst|pixel_column\(3),
	combout => \inst14|LessThan4~0_combout\);

-- Location: LCCOMB_X31_Y23_N20
\inst14|process_0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~46_combout\ = (!\inst|pixel_column\(6) & (\inst|pixel_column\(5) & ((\inst14|LessThan4~0_combout\) # (!\inst|pixel_column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(6),
	datab => \inst|pixel_column\(4),
	datac => \inst14|LessThan4~0_combout\,
	datad => \inst|pixel_column\(5),
	combout => \inst14|process_0~46_combout\);

-- Location: LCCOMB_X31_Y23_N16
\inst14|process_0~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~47_combout\ = (\inst14|process_0~34_combout\ & (\inst14|process_0~43_combout\ & \inst14|process_0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~34_combout\,
	datac => \inst14|process_0~43_combout\,
	datad => \inst14|process_0~46_combout\,
	combout => \inst14|process_0~47_combout\);

-- Location: LCCOMB_X29_Y21_N8
\inst14|LessThan38~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LessThan38~0_combout\ = (\inst|pixel_row\(5) & \inst|pixel_row\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|pixel_row\(5),
	datad => \inst|pixel_row\(6),
	combout => \inst14|LessThan38~0_combout\);

-- Location: LCCOMB_X29_Y22_N30
\inst14|process_0~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~49_combout\ = (\inst|pixel_row\(8) & (\inst14|LessThan38~0_combout\ & (!\inst|pixel_row\(4) & !\inst|pixel_row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(8),
	datab => \inst14|LessThan38~0_combout\,
	datac => \inst|pixel_row\(4),
	datad => \inst|pixel_row\(7),
	combout => \inst14|process_0~49_combout\);

-- Location: LCCOMB_X30_Y20_N0
\inst14|process_0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~34_combout\ = (\inst|pixel_column\(8) & (!\inst|pixel_column\(7) & !\inst|pixel_column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(8),
	datac => \inst|pixel_column\(7),
	datad => \inst|pixel_column\(9),
	combout => \inst14|process_0~34_combout\);

-- Location: LCCOMB_X30_Y20_N30
\inst14|character_address[1]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[1]~21_combout\ = (!\inst|pixel_column\(5) & !\inst|pixel_column\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|pixel_column\(5),
	datad => \inst|pixel_column\(6),
	combout => \inst14|character_address[1]~21_combout\);

-- Location: LCCOMB_X31_Y21_N8
\inst14|process_0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~50_combout\ = (!\inst14|LessThan24~0_combout\ & (\inst14|process_0~49_combout\ & (\inst14|process_0~34_combout\ & \inst14|character_address[1]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LessThan24~0_combout\,
	datab => \inst14|process_0~49_combout\,
	datac => \inst14|process_0~34_combout\,
	datad => \inst14|character_address[1]~21_combout\,
	combout => \inst14|process_0~50_combout\);

-- Location: LCCOMB_X31_Y20_N0
\inst14|process_0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~42_combout\ = (\inst|pixel_column\(6)) # ((\inst|pixel_column\(5) & ((\inst|pixel_column\(4)) # (!\inst14|LessThan4~0_combout\))) # (!\inst|pixel_column\(5) & ((!\inst|pixel_column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(5),
	datab => \inst|pixel_column\(6),
	datac => \inst14|LessThan4~0_combout\,
	datad => \inst|pixel_column\(4),
	combout => \inst14|process_0~42_combout\);

-- Location: LCCOMB_X31_Y21_N24
\inst14|process_0~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~51_combout\ = (\inst14|process_0~49_combout\ & (\inst14|process_0~34_combout\ & !\inst14|process_0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|process_0~49_combout\,
	datac => \inst14|process_0~34_combout\,
	datad => \inst14|process_0~42_combout\,
	combout => \inst14|process_0~51_combout\);

-- Location: LCCOMB_X31_Y21_N4
\inst14|character_address[5]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[5]~29_combout\ = (\inst14|process_0~48_combout\) # ((\inst14|process_0~47_combout\) # ((\inst14|process_0~50_combout\) # (\inst14|process_0~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~48_combout\,
	datab => \inst14|process_0~47_combout\,
	datac => \inst14|process_0~50_combout\,
	datad => \inst14|process_0~51_combout\,
	combout => \inst14|character_address[5]~29_combout\);

-- Location: LCCOMB_X30_Y21_N30
\inst14|process_0~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~45_combout\ = (!\inst14|process_0~44_combout\ & \inst14|process_0~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~44_combout\,
	datad => \inst14|process_0~43_combout\,
	combout => \inst14|process_0~45_combout\);

-- Location: LCCOMB_X30_Y21_N24
\inst14|process_0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~40_combout\ = (\inst|pixel_column\(6) & ((\inst|pixel_column\(4) & ((!\inst|pixel_column\(5)))) # (!\inst|pixel_column\(4) & (\inst14|LessThan4~0_combout\ & \inst|pixel_column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LessThan4~0_combout\,
	datab => \inst|pixel_column\(4),
	datac => \inst|pixel_column\(6),
	datad => \inst|pixel_column\(5),
	combout => \inst14|process_0~40_combout\);

-- Location: LCCOMB_X30_Y21_N0
\inst14|process_0~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~70_combout\ = (\inst|pixel_column\(9)) # (((\inst|pixel_column\(7)) # (!\inst|pixel_column\(8))) # (!\inst14|process_0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(9),
	datab => \inst14|process_0~40_combout\,
	datac => \inst|pixel_column\(8),
	datad => \inst|pixel_column\(7),
	combout => \inst14|process_0~70_combout\);

-- Location: LCCOMB_X30_Y20_N14
\inst14|process_0~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~41_combout\ = (\inst|pixel_column\(5) & ((\inst|pixel_column\(6)) # ((!\inst|pixel_column\(4))))) # (!\inst|pixel_column\(5) & (((\inst|pixel_column\(4)) # (!\inst14|LessThan4~0_combout\)) # (!\inst|pixel_column\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(5),
	datab => \inst|pixel_column\(6),
	datac => \inst|pixel_column\(4),
	datad => \inst14|LessThan4~0_combout\,
	combout => \inst14|process_0~41_combout\);

-- Location: LCCOMB_X30_Y20_N2
\inst14|process_0~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~72_combout\ = ((\inst14|process_0~41_combout\) # ((\inst|pixel_column\(9)) # (\inst|pixel_column\(7)))) # (!\inst|pixel_column\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(8),
	datab => \inst14|process_0~41_combout\,
	datac => \inst|pixel_column\(9),
	datad => \inst|pixel_column\(7),
	combout => \inst14|process_0~72_combout\);

-- Location: LCCOMB_X30_Y21_N8
\inst14|process_0~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~55_combout\ = (\inst14|LessThan24~0_combout\) # (((\inst|pixel_column\(6)) # (!\inst|pixel_column\(5))) # (!\inst14|process_0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LessThan24~0_combout\,
	datab => \inst14|process_0~34_combout\,
	datac => \inst|pixel_column\(6),
	datad => \inst|pixel_column\(5),
	combout => \inst14|process_0~55_combout\);

-- Location: LCCOMB_X29_Y22_N22
\inst14|character_address[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[4]~40_combout\ = ((\inst14|process_0~72_combout\ & \inst14|process_0~55_combout\)) # (!\inst14|process_0~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|process_0~72_combout\,
	datac => \inst14|process_0~49_combout\,
	datad => \inst14|process_0~55_combout\,
	combout => \inst14|character_address[4]~40_combout\);

-- Location: LCCOMB_X29_Y22_N16
\inst14|character_address[4]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[4]~41_combout\ = (\inst14|character_address[0]~39_combout\ & (\inst14|character_address[4]~40_combout\ & ((\inst14|process_0~70_combout\) # (!\inst14|process_0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[0]~39_combout\,
	datab => \inst14|process_0~70_combout\,
	datac => \inst14|character_address[4]~40_combout\,
	datad => \inst14|process_0~43_combout\,
	combout => \inst14|character_address[4]~41_combout\);

-- Location: LCCOMB_X28_Y21_N2
\inst14|character_address[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[5]~42_combout\ = (\inst14|character_address[5]~37_combout\) # ((\inst14|character_address[5]~29_combout\) # ((\inst14|process_0~45_combout\) # (!\inst14|character_address[4]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[5]~37_combout\,
	datab => \inst14|character_address[5]~29_combout\,
	datac => \inst14|process_0~45_combout\,
	datad => \inst14|character_address[4]~41_combout\,
	combout => \inst14|character_address[5]~42_combout\);

-- Location: LCCOMB_X30_Y20_N24
\inst14|character_address[0]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[0]~23_combout\ = (\inst|pixel_column\(6) & \inst|pixel_column\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|pixel_column\(6),
	datad => \inst|pixel_column\(5),
	combout => \inst14|character_address[0]~23_combout\);

-- Location: LCCOMB_X30_Y20_N18
\inst14|process_0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~38_combout\ = (((!\inst14|LessThan4~0_combout\ & \inst|pixel_column\(4))) # (!\inst14|process_0~34_combout\)) # (!\inst14|character_address[0]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LessThan4~0_combout\,
	datab => \inst14|character_address[0]~23_combout\,
	datac => \inst14|process_0~34_combout\,
	datad => \inst|pixel_column\(4),
	combout => \inst14|process_0~38_combout\);

-- Location: LCCOMB_X29_Y20_N0
\inst14|LessThan24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LessThan24~0_combout\ = (\inst|pixel_column\(4) & !\inst14|LessThan4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(4),
	datab => \inst14|LessThan4~0_combout\,
	combout => \inst14|LessThan24~0_combout\);

-- Location: LCCOMB_X29_Y20_N28
\inst14|process_0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~20_combout\ = (\inst|pixel_column\(8) & !\inst|pixel_column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(8),
	datad => \inst|pixel_column\(9),
	combout => \inst14|process_0~20_combout\);

-- Location: LCCOMB_X30_Y20_N28
\inst14|process_0~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~39_combout\ = (((\inst14|LessThan24~0_combout\) # (!\inst14|process_0~20_combout\)) # (!\inst|pixel_column\(7))) # (!\inst14|character_address[1]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[1]~21_combout\,
	datab => \inst|pixel_column\(7),
	datac => \inst14|LessThan24~0_combout\,
	datad => \inst14|process_0~20_combout\,
	combout => \inst14|process_0~39_combout\);

-- Location: LCCOMB_X28_Y21_N24
\inst14|character_address[5]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[5]~24_combout\ = (\inst14|process_0~69_combout\) # (((!\inst14|process_0~39_combout\) # (!\inst14|process_0~38_combout\)) # (!\inst14|process_0~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~69_combout\,
	datab => \inst14|process_0~70_combout\,
	datac => \inst14|process_0~38_combout\,
	datad => \inst14|process_0~39_combout\,
	combout => \inst14|character_address[5]~24_combout\);

-- Location: LCCOMB_X28_Y21_N22
\inst14|character_address[4]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[4]~22_combout\ = (\inst11|Equal0~0_combout\ & (!\inst14|LessThan38~0_combout\ & (\inst14|LessThan12~0_combout\ & \inst|pixel_row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal0~0_combout\,
	datab => \inst14|LessThan38~0_combout\,
	datac => \inst14|LessThan12~0_combout\,
	datad => \inst|pixel_row\(7),
	combout => \inst14|character_address[4]~22_combout\);

-- Location: LCCOMB_X31_Y20_N6
\inst14|process_0~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~73_combout\ = (\inst|pixel_column\(9)) # ((\inst14|process_0~42_combout\) # ((\inst|pixel_column\(7)) # (!\inst|pixel_column\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(9),
	datab => \inst14|process_0~42_combout\,
	datac => \inst|pixel_column\(7),
	datad => \inst|pixel_column\(8),
	combout => \inst14|process_0~73_combout\);

-- Location: LCCOMB_X28_Y21_N16
\inst14|character_address[4]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[4]~27_combout\ = (\inst14|character_address[2]~26_combout\ & (\inst14|process_0~73_combout\ & \inst14|process_0~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[2]~26_combout\,
	datac => \inst14|process_0~73_combout\,
	datad => \inst14|process_0~72_combout\,
	combout => \inst14|character_address[4]~27_combout\);

-- Location: LCCOMB_X28_Y21_N4
\inst14|character_address[4]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[4]~28_combout\ = (\inst14|character_address[4]~22_combout\ & (((\inst14|character_address[5]~24_combout\) # (!\inst14|character_address[4]~27_combout\)))) # (!\inst14|character_address[4]~22_combout\ & 
-- (\inst14|character_address[4]~25_combout\ & ((!\inst14|character_address[4]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[4]~25_combout\,
	datab => \inst14|character_address[5]~24_combout\,
	datac => \inst14|character_address[4]~22_combout\,
	datad => \inst14|character_address[4]~27_combout\,
	combout => \inst14|character_address[4]~28_combout\);

-- Location: LCCOMB_X29_Y21_N4
\inst14|LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LessThan5~0_combout\ = (!\inst|pixel_row\(7) & !\inst|pixel_row\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|pixel_row\(7),
	datad => \inst|pixel_row\(8),
	combout => \inst14|LessThan5~0_combout\);

-- Location: LCCOMB_X27_Y21_N6
\inst|pixel_row[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|pixel_row[1]~feeder_combout\ = \inst|v_count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|v_count\(1),
	combout => \inst|pixel_row[1]~feeder_combout\);

-- Location: FF_X27_Y21_N7
\inst|pixel_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~q\,
	d => \inst|pixel_row[1]~feeder_combout\,
	ena => \inst|LessThan7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_row\(1));

-- Location: FF_X29_Y21_N21
\inst|pixel_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~q\,
	asdata => \inst|v_count\(3),
	sload => VCC,
	ena => \inst|LessThan7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_row\(3));

-- Location: LCCOMB_X29_Y21_N2
\inst14|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LessThan6~0_combout\ = (\inst|pixel_row\(2) & (\inst|pixel_row\(1) & (\inst|pixel_row\(0) & \inst|pixel_row\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(2),
	datab => \inst|pixel_row\(1),
	datac => \inst|pixel_row\(0),
	datad => \inst|pixel_row\(3),
	combout => \inst14|LessThan6~0_combout\);

-- Location: LCCOMB_X29_Y21_N22
\inst14|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LessThan5~1_combout\ = (\inst14|LessThan5~0_combout\ & (((!\inst14|LessThan6~0_combout\) # (!\inst14|LessThan38~0_combout\)) # (!\inst|pixel_row\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(4),
	datab => \inst14|LessThan38~0_combout\,
	datac => \inst14|LessThan5~0_combout\,
	datad => \inst14|LessThan6~0_combout\,
	combout => \inst14|LessThan5~1_combout\);

-- Location: LCCOMB_X29_Y21_N26
\inst14|process_0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~21_combout\ = (!\inst|pixel_row\(8) & (((!\inst|pixel_row\(6) & !\inst|pixel_row\(5))) # (!\inst|pixel_row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(6),
	datab => \inst|pixel_row\(5),
	datac => \inst|pixel_row\(8),
	datad => \inst|pixel_row\(7),
	combout => \inst14|process_0~21_combout\);

-- Location: LCCOMB_X29_Y21_N0
\inst14|process_0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~22_combout\ = (\inst14|process_0~21_combout\ & (((!\inst14|LessThan6~0_combout\) # (!\inst|pixel_row\(7))) # (!\inst|pixel_row\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(4),
	datab => \inst|pixel_row\(7),
	datac => \inst14|process_0~21_combout\,
	datad => \inst14|LessThan6~0_combout\,
	combout => \inst14|process_0~22_combout\);

-- Location: LCCOMB_X29_Y21_N30
\inst14|process_0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~27_combout\ = (!\inst14|LessThan5~1_combout\ & \inst14|process_0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|LessThan5~1_combout\,
	datad => \inst14|process_0~22_combout\,
	combout => \inst14|process_0~27_combout\);

-- Location: LCCOMB_X30_Y22_N4
\inst14|process_0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~36_combout\ = (!\inst14|LessThan4~1_combout\ & (!\inst|pixel_column\(6) & (\inst14|process_0~27_combout\ & \inst14|process_0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LessThan4~1_combout\,
	datab => \inst|pixel_column\(6),
	datac => \inst14|process_0~27_combout\,
	datad => \inst14|process_0~34_combout\,
	combout => \inst14|process_0~36_combout\);

-- Location: LCCOMB_X31_Y20_N26
\inst14|process_0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~56_combout\ = (\inst|pixel_column\(7) & (!\inst14|LessThan18~0_combout\)) # (!\inst|pixel_column\(7) & (((!\inst14|character_address[0]~23_combout\) # (!\inst|pixel_column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LessThan18~0_combout\,
	datab => \inst|pixel_column\(4),
	datac => \inst|pixel_column\(7),
	datad => \inst14|character_address[0]~23_combout\,
	combout => \inst14|process_0~56_combout\);

-- Location: LCCOMB_X30_Y22_N14
\inst14|character_address[3]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[3]~43_combout\ = ((\inst14|process_0~38_combout\ & ((\inst14|process_0~56_combout\) # (!\inst14|process_0~20_combout\)))) # (!\inst14|process_0~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~20_combout\,
	datab => \inst14|process_0~49_combout\,
	datac => \inst14|process_0~56_combout\,
	datad => \inst14|process_0~38_combout\,
	combout => \inst14|character_address[3]~43_combout\);

-- Location: LCCOMB_X31_Y20_N20
\inst14|LessThan30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LessThan30~0_combout\ = (\inst|pixel_column\(7) & (((\inst|pixel_column\(4)) # (!\inst14|character_address[1]~21_combout\)) # (!\inst14|LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LessThan4~0_combout\,
	datab => \inst|pixel_column\(4),
	datac => \inst|pixel_column\(7),
	datad => \inst14|character_address[1]~21_combout\,
	combout => \inst14|LessThan30~0_combout\);

-- Location: LCCOMB_X31_Y20_N22
\inst14|process_0~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~33_combout\ = (\inst14|process_0~32_combout\ & (!\inst14|LessThan30~0_combout\ & (\inst14|process_0~20_combout\ & \inst14|process_0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~32_combout\,
	datab => \inst14|LessThan30~0_combout\,
	datac => \inst14|process_0~20_combout\,
	datad => \inst14|process_0~27_combout\,
	combout => \inst14|process_0~33_combout\);

-- Location: LCCOMB_X30_Y20_N20
\inst14|LessThan18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LessThan18~1_combout\ = (\inst|pixel_column\(8) & ((\inst|pixel_column\(7)) # (!\inst14|LessThan18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LessThan18~0_combout\,
	datac => \inst|pixel_column\(8),
	datad => \inst|pixel_column\(7),
	combout => \inst14|LessThan18~1_combout\);

-- Location: LCCOMB_X30_Y20_N4
\inst14|process_0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~28_combout\ = (\inst|pixel_column\(8)) # ((\inst|pixel_column\(6) & (\inst|pixel_column\(5) & \inst|pixel_column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(8),
	datab => \inst|pixel_column\(6),
	datac => \inst|pixel_column\(5),
	datad => \inst|pixel_column\(7),
	combout => \inst14|process_0~28_combout\);

-- Location: LCCOMB_X30_Y20_N12
\inst14|process_0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~29_combout\ = (\inst14|process_0~27_combout\ & (!\inst14|LessThan18~1_combout\ & (\inst14|process_0~28_combout\ & !\inst|pixel_column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~27_combout\,
	datab => \inst14|LessThan18~1_combout\,
	datac => \inst14|process_0~28_combout\,
	datad => \inst|pixel_column\(9),
	combout => \inst14|process_0~29_combout\);

-- Location: LCCOMB_X30_Y22_N0
\inst14|process_0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~23_combout\ = (\inst14|process_0~20_combout\ & (\inst|pixel_column\(7) & (\inst14|process_0~22_combout\ & !\inst14|LessThan5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~20_combout\,
	datab => \inst|pixel_column\(7),
	datac => \inst14|process_0~22_combout\,
	datad => \inst14|LessThan5~1_combout\,
	combout => \inst14|process_0~23_combout\);

-- Location: LCCOMB_X30_Y22_N30
\inst14|process_0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~26_combout\ = (!\inst14|LessThan4~1_combout\ & (!\inst|pixel_column\(6) & \inst14|process_0~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LessThan4~1_combout\,
	datab => \inst|pixel_column\(6),
	datad => \inst14|process_0~23_combout\,
	combout => \inst14|process_0~26_combout\);

-- Location: LCCOMB_X30_Y22_N2
\inst14|process_0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~24_combout\ = (((\inst14|LessThan4~1_combout\ & \inst|pixel_column\(7))) # (!\inst14|process_0~23_combout\)) # (!\inst|pixel_column\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LessThan4~1_combout\,
	datab => \inst|pixel_column\(7),
	datac => \inst|pixel_column\(6),
	datad => \inst14|process_0~23_combout\,
	combout => \inst14|process_0~24_combout\);

-- Location: LCCOMB_X32_Y22_N24
\inst14|character_address[2]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[2]~20_combout\ = (!\inst14|process_0~26_combout\ & (\inst14|process_0~24_combout\ & ((!\inst14|process_0~23_combout\) # (!\inst14|process_0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~25_combout\,
	datab => \inst14|process_0~23_combout\,
	datac => \inst14|process_0~26_combout\,
	datad => \inst14|process_0~24_combout\,
	combout => \inst14|character_address[2]~20_combout\);

-- Location: LCCOMB_X32_Y22_N28
\inst14|font_col[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|font_col[1]~0_combout\ = (!\inst14|process_0~31_combout\ & (!\inst14|process_0~33_combout\ & (!\inst14|process_0~29_combout\ & \inst14|character_address[2]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~31_combout\,
	datab => \inst14|process_0~33_combout\,
	datac => \inst14|process_0~29_combout\,
	datad => \inst14|character_address[2]~20_combout\,
	combout => \inst14|font_col[1]~0_combout\);

-- Location: LCCOMB_X31_Y18_N14
\inst14|character_address[5]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[5]~44_combout\ = (!\inst14|process_0~35_combout\ & (!\inst14|process_0~36_combout\ & (\inst14|character_address[3]~43_combout\ & \inst14|font_col[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~35_combout\,
	datab => \inst14|process_0~36_combout\,
	datac => \inst14|character_address[3]~43_combout\,
	datad => \inst14|font_col[1]~0_combout\,
	combout => \inst14|character_address[5]~44_combout\);

-- Location: LCCOMB_X28_Y21_N26
\inst14|character_address[4]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[4]~45_combout\ = (\inst14|Equal0~0_combout\ & (((\inst14|character_address[4]~28_combout\)))) # (!\inst14|Equal0~0_combout\ & ((\inst14|character_address[5]~42_combout\) # ((!\inst14|character_address[5]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Equal0~0_combout\,
	datab => \inst14|character_address[5]~42_combout\,
	datac => \inst14|character_address[4]~28_combout\,
	datad => \inst14|character_address[5]~44_combout\,
	combout => \inst14|character_address[4]~45_combout\);

-- Location: CLKCTRL_G8
\inst14|character_address[4]~45clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst14|character_address[4]~45clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst14|character_address[4]~45clkctrl_outclk\);

-- Location: LCCOMB_X30_Y20_N16
\inst14|process_0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~25_combout\ = (\inst|pixel_column\(6) & (\inst14|LessThan4~0_combout\ & (!\inst|pixel_column\(4) & !\inst|pixel_column\(5)))) # (!\inst|pixel_column\(6) & (((\inst|pixel_column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LessThan4~0_combout\,
	datab => \inst|pixel_column\(6),
	datac => \inst|pixel_column\(4),
	datad => \inst|pixel_column\(5),
	combout => \inst14|process_0~25_combout\);

-- Location: LCCOMB_X31_Y18_N26
\inst14|process_0~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~35_combout\ = (\inst14|process_0~22_combout\ & (!\inst14|LessThan5~1_combout\ & (\inst14|process_0~25_combout\ & \inst14|process_0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~22_combout\,
	datab => \inst14|LessThan5~1_combout\,
	datac => \inst14|process_0~25_combout\,
	datad => \inst14|process_0~34_combout\,
	combout => \inst14|process_0~35_combout\);

-- Location: LCCOMB_X32_Y22_N6
\inst14|font_col[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|font_col[1]~1_combout\ = (\inst14|Equal0~0_combout\) # ((!\inst14|process_0~36_combout\ & (!\inst14|process_0~35_combout\ & \inst14|font_col[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Equal0~0_combout\,
	datab => \inst14|process_0~36_combout\,
	datac => \inst14|process_0~35_combout\,
	datad => \inst14|font_col[1]~0_combout\,
	combout => \inst14|font_col[1]~1_combout\);

-- Location: LCCOMB_X24_Y20_N20
\inst14|font_col[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|font_col[2]~4_combout\ = (\inst14|font_col[1]~1_combout\ & (\inst|pixel_column\(3))) # (!\inst14|font_col[1]~1_combout\ & ((\inst|pixel_column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(3),
	datab => \inst|pixel_column\(4),
	datad => \inst14|font_col[1]~1_combout\,
	combout => \inst14|font_col[2]~4_combout\);

-- Location: LCCOMB_X24_Y20_N22
\inst14|font_col[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|font_col\(2) = (GLOBAL(\inst14|character_address[4]~45clkctrl_outclk\) & ((\inst14|font_col[2]~4_combout\))) # (!GLOBAL(\inst14|character_address[4]~45clkctrl_outclk\) & (\inst14|font_col\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|font_col\(2),
	datac => \inst14|character_address[4]~45clkctrl_outclk\,
	datad => \inst14|font_col[2]~4_combout\,
	combout => \inst14|font_col\(2));

-- Location: LCCOMB_X32_Y22_N8
\inst14|font_row[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|font_row\(0) = (GLOBAL(\inst14|character_address[4]~45clkctrl_outclk\) & (\inst14|font_row[0]~0_combout\)) # (!GLOBAL(\inst14|character_address[4]~45clkctrl_outclk\) & ((\inst14|font_row\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|font_row[0]~0_combout\,
	datac => \inst14|font_row\(0),
	datad => \inst14|character_address[4]~45clkctrl_outclk\,
	combout => \inst14|font_row\(0));

-- Location: LCCOMB_X32_Y22_N12
\inst14|font_row[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|font_row[1]~1_combout\ = (\inst14|font_col[1]~1_combout\ & (\inst|pixel_row\(2))) # (!\inst14|font_col[1]~1_combout\ & ((\inst|pixel_row\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_row\(2),
	datac => \inst|pixel_row\(3),
	datad => \inst14|font_col[1]~1_combout\,
	combout => \inst14|font_row[1]~1_combout\);

-- Location: LCCOMB_X32_Y22_N14
\inst14|font_row[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|font_row\(1) = (GLOBAL(\inst14|character_address[4]~45clkctrl_outclk\) & (\inst14|font_row[1]~1_combout\)) # (!GLOBAL(\inst14|character_address[4]~45clkctrl_outclk\) & ((\inst14|font_row\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|font_row[1]~1_combout\,
	datac => \inst14|font_row\(1),
	datad => \inst14|character_address[4]~45clkctrl_outclk\,
	combout => \inst14|font_row\(1));

-- Location: LCCOMB_X32_Y22_N26
\inst14|font_row[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|font_row[2]~2_combout\ = (\inst14|font_col[1]~1_combout\ & (\inst|pixel_row\(3))) # (!\inst14|font_col[1]~1_combout\ & ((\inst|pixel_row\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_row\(3),
	datac => \inst|pixel_row\(4),
	datad => \inst14|font_col[1]~1_combout\,
	combout => \inst14|font_row[2]~2_combout\);

-- Location: LCCOMB_X32_Y22_N22
\inst14|font_row[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|font_row\(2) = (GLOBAL(\inst14|character_address[4]~45clkctrl_outclk\) & (\inst14|font_row[2]~2_combout\)) # (!GLOBAL(\inst14|character_address[4]~45clkctrl_outclk\) & ((\inst14|font_row\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|font_row[2]~2_combout\,
	datac => \inst14|font_row\(2),
	datad => \inst14|character_address[4]~45clkctrl_outclk\,
	combout => \inst14|font_row\(2));

-- Location: LCCOMB_X30_Y22_N18
\inst14|process_0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~30_combout\ = (!\inst|pixel_column\(8) & !\inst|pixel_column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_column\(8),
	datad => \inst|pixel_column\(9),
	combout => \inst14|process_0~30_combout\);

-- Location: LCCOMB_X30_Y22_N24
\inst14|LessThan4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LessThan4~2_combout\ = (\inst|pixel_column\(6) & \inst|pixel_column\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_column\(6),
	datad => \inst|pixel_column\(7),
	combout => \inst14|LessThan4~2_combout\);

-- Location: LCCOMB_X30_Y22_N16
\inst14|process_0~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~31_combout\ = (!\inst14|LessThan4~1_combout\ & (\inst14|process_0~30_combout\ & (\inst14|process_0~27_combout\ & \inst14|LessThan4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LessThan4~1_combout\,
	datab => \inst14|process_0~30_combout\,
	datac => \inst14|process_0~27_combout\,
	datad => \inst14|LessThan4~2_combout\,
	combout => \inst14|process_0~31_combout\);

-- Location: LCCOMB_X30_Y23_N26
\inst14|process_0~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~57_combout\ = (\inst14|process_0~25_combout\ & \inst14|process_0~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~25_combout\,
	datad => \inst14|process_0~23_combout\,
	combout => \inst14|process_0~57_combout\);

-- Location: LCCOMB_X30_Y23_N28
\inst14|character_address[0]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[0]~46_combout\ = (!\inst14|Equal0~0_combout\ & (!\inst14|process_0~31_combout\ & (!\inst14|process_0~57_combout\ & !\inst14|process_0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Equal0~0_combout\,
	datab => \inst14|process_0~31_combout\,
	datac => \inst14|process_0~57_combout\,
	datad => \inst14|process_0~36_combout\,
	combout => \inst14|character_address[0]~46_combout\);

-- Location: LCCOMB_X31_Y20_N16
\inst14|process_0~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~64_combout\ = (\inst14|process_0~43_combout\ & (\inst14|process_0~34_combout\ & \inst14|process_0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|process_0~43_combout\,
	datac => \inst14|process_0~34_combout\,
	datad => \inst14|process_0~40_combout\,
	combout => \inst14|process_0~64_combout\);

-- Location: LCCOMB_X30_Y23_N8
\inst14|character_address[0]~135\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[0]~135_combout\ = (!\inst15|s_game_mode\(0) & (!\inst14|process_0~31_combout\ & (!\inst15|s_game_mode\(1) & \inst14|process_0~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|s_game_mode\(0),
	datab => \inst14|process_0~31_combout\,
	datac => \inst15|s_game_mode\(1),
	datad => \inst14|process_0~29_combout\,
	combout => \inst14|character_address[0]~135_combout\);

-- Location: LCCOMB_X30_Y23_N20
\inst14|character_address[0]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[0]~63_combout\ = (\inst14|character_address[0]~135_combout\) # ((\inst14|character_address[0]~46_combout\ & ((\inst14|character_address[0]~62_combout\) # (\inst14|process_0~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[0]~62_combout\,
	datab => \inst14|character_address[0]~46_combout\,
	datac => \inst14|process_0~64_combout\,
	datad => \inst14|character_address[0]~135_combout\,
	combout => \inst14|character_address[0]~63_combout\);

-- Location: LCCOMB_X29_Y22_N0
\inst14|character_address[0]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[0]~38_combout\ = (\sw0~input_o\ & ((!\inst14|process_0~43_combout\))) # (!\sw0~input_o\ & (!\inst14|process_0~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw0~input_o\,
	datac => \inst14|process_0~49_combout\,
	datad => \inst14|process_0~43_combout\,
	combout => \inst14|character_address[0]~38_combout\);

-- Location: LCCOMB_X29_Y21_N10
\inst14|LessThan44~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LessThan44~0_combout\ = (\inst|pixel_row\(7) & \inst|pixel_row\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_row\(7),
	datad => \inst|pixel_row\(8),
	combout => \inst14|LessThan44~0_combout\);

-- Location: LCCOMB_X29_Y21_N6
\inst14|LessThan38~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LessThan38~1_combout\ = (\inst|pixel_row\(0)) # ((\inst|pixel_row\(1)) # ((\inst|pixel_row\(4)) # (\inst|pixel_row\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(0),
	datab => \inst|pixel_row\(1),
	datac => \inst|pixel_row\(4),
	datad => \inst|pixel_row\(3),
	combout => \inst14|LessThan38~1_combout\);

-- Location: LCCOMB_X29_Y21_N28
\inst14|LessThan38~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LessThan38~2_combout\ = (\inst14|LessThan38~0_combout\ & (\inst14|LessThan44~0_combout\ & ((\inst|pixel_row\(2)) # (\inst14|LessThan38~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LessThan38~0_combout\,
	datab => \inst|pixel_row\(2),
	datac => \inst14|LessThan44~0_combout\,
	datad => \inst14|LessThan38~1_combout\,
	combout => \inst14|LessThan38~2_combout\);

-- Location: LCCOMB_X29_Y21_N18
\inst14|process_0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~62_combout\ = (\inst14|character_address[5]~30_combout\ & (\inst|pixel_column\(7) & (\inst14|character_address[0]~23_combout\ & !\inst14|LessThan38~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[5]~30_combout\,
	datab => \inst|pixel_column\(7),
	datac => \inst14|character_address[0]~23_combout\,
	datad => \inst14|LessThan38~2_combout\,
	combout => \inst14|process_0~62_combout\);

-- Location: LCCOMB_X28_Y21_N0
\inst14|process_0~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~77_combout\ = (!\inst|pixel_column\(9) & (!\inst14|LessThan24~0_combout\ & (!\inst|pixel_column\(8) & \inst14|process_0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(9),
	datab => \inst14|LessThan24~0_combout\,
	datac => \inst|pixel_column\(8),
	datad => \inst14|process_0~62_combout\,
	combout => \inst14|process_0~77_combout\);

-- Location: LCCOMB_X29_Y20_N2
\inst14|process_0~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~53_combout\ = (((!\inst|pixel_column\(4)) # (!\inst|pixel_column\(7))) # (!\inst|pixel_column\(6))) # (!\inst|pixel_column\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(5),
	datab => \inst|pixel_column\(6),
	datac => \inst|pixel_column\(7),
	datad => \inst|pixel_column\(4),
	combout => \inst14|process_0~53_combout\);

-- Location: LCCOMB_X29_Y20_N26
\inst14|process_0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~54_combout\ = (!\inst|pixel_column\(9) & ((\inst|pixel_column\(8) & (!\inst14|LessThan18~2_combout\)) # (!\inst|pixel_column\(8) & ((!\inst14|process_0~53_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LessThan18~2_combout\,
	datab => \inst14|process_0~53_combout\,
	datac => \inst|pixel_column\(8),
	datad => \inst|pixel_column\(9),
	combout => \inst14|process_0~54_combout\);

-- Location: LCCOMB_X29_Y22_N24
\inst14|character_address[0]~132\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[0]~132_combout\ = (\inst14|process_0~77_combout\ & ((\inst14|character_address[0]~38_combout\) # ((\inst14|process_0~39_combout\ & !\inst14|process_0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~39_combout\,
	datab => \inst14|character_address[0]~38_combout\,
	datac => \inst14|process_0~77_combout\,
	datad => \inst14|process_0~54_combout\,
	combout => \inst14|character_address[0]~132_combout\);

-- Location: LCCOMB_X30_Y21_N6
\inst14|process_0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~44_combout\ = (\inst14|LessThan24~0_combout\) # (((\inst|pixel_column\(5)) # (!\inst|pixel_column\(6))) # (!\inst14|process_0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LessThan24~0_combout\,
	datab => \inst14|process_0~34_combout\,
	datac => \inst|pixel_column\(6),
	datad => \inst|pixel_column\(5),
	combout => \inst14|process_0~44_combout\);

-- Location: LCCOMB_X31_Y22_N14
\inst14|character_address[0]~133\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[0]~133_combout\ = (\inst14|character_address[0]~57_combout\ & (((\inst14|process_0~44_combout\)) # (!\inst14|process_0~49_combout\))) # (!\inst14|character_address[0]~57_combout\ & (\inst14|character_address[0]~132_combout\ & 
-- ((\inst14|process_0~44_combout\) # (!\inst14|process_0~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[0]~57_combout\,
	datab => \inst14|process_0~49_combout\,
	datac => \inst14|character_address[0]~132_combout\,
	datad => \inst14|process_0~44_combout\,
	combout => \inst14|character_address[0]~133_combout\);

-- Location: LCCOMB_X31_Y22_N8
\inst14|character_address[0]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[0]~47_combout\ = (!\inst14|process_0~51_combout\ & (\inst14|character_address[0]~46_combout\ & !\inst14|process_0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~51_combout\,
	datac => \inst14|character_address[0]~46_combout\,
	datad => \inst14|process_0~50_combout\,
	combout => \inst14|character_address[0]~47_combout\);

-- Location: LCCOMB_X30_Y21_N20
\inst14|process_0~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~63_combout\ = (!\inst14|process_0~44_combout\ & \inst14|process_0~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~44_combout\,
	datad => \inst14|process_0~49_combout\,
	combout => \inst14|process_0~63_combout\);

-- Location: LCCOMB_X29_Y21_N20
\inst14|character_address[5]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[5]~30_combout\ = (\inst|pixel_row\(7) & \inst14|LessThan12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_row\(7),
	datad => \inst14|LessThan12~0_combout\,
	combout => \inst14|character_address[5]~30_combout\);

-- Location: LCCOMB_X31_Y20_N2
\inst14|character_address[0]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[0]~49_combout\ = (!\inst|pixel_column\(7) & (\inst14|character_address[0]~23_combout\ & ((\inst14|LessThan4~0_combout\) # (!\inst|pixel_column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(7),
	datab => \inst|pixel_column\(4),
	datac => \inst14|LessThan4~0_combout\,
	datad => \inst14|character_address[0]~23_combout\,
	combout => \inst14|character_address[0]~49_combout\);

-- Location: LCCOMB_X31_Y20_N8
\inst14|character_address[0]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[0]~50_combout\ = (!\inst|pixel_column\(9) & (\inst|pixel_column\(8) & ((\inst14|character_address[0]~49_combout\) # (!\inst14|process_0~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~56_combout\,
	datab => \inst14|character_address[0]~49_combout\,
	datac => \inst|pixel_column\(9),
	datad => \inst|pixel_column\(8),
	combout => \inst14|character_address[0]~50_combout\);

-- Location: LCCOMB_X31_Y22_N0
\inst14|character_address[0]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[0]~51_combout\ = (\inst14|character_address[5]~30_combout\ & (\inst14|process_0~55_combout\ & ((\inst14|character_address[0]~50_combout\) # (!\inst14|process_0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~44_combout\,
	datab => \inst14|character_address[0]~50_combout\,
	datac => \inst14|character_address[5]~30_combout\,
	datad => \inst14|process_0~55_combout\,
	combout => \inst14|character_address[0]~51_combout\);

-- Location: LCCOMB_X29_Y21_N12
\inst14|process_0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~60_combout\ = (\inst14|character_address[5]~30_combout\ & (\inst|pixel_column\(7) & (\inst14|process_0~20_combout\ & !\inst14|LessThan38~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[5]~30_combout\,
	datab => \inst|pixel_column\(7),
	datac => \inst14|process_0~20_combout\,
	datad => \inst14|LessThan38~2_combout\,
	combout => \inst14|process_0~60_combout\);

-- Location: LCCOMB_X32_Y21_N0
\inst14|process_0~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~61_combout\ = (\inst14|process_0~60_combout\ & !\inst14|process_0~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|process_0~60_combout\,
	datad => \inst14|process_0~41_combout\,
	combout => \inst14|process_0~61_combout\);

-- Location: LCCOMB_X29_Y20_N30
\inst14|character_address[4]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[4]~52_combout\ = (\inst14|process_0~20_combout\ & ((\inst14|LessThan4~0_combout\) # ((!\inst|pixel_column\(5)) # (!\inst|pixel_column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~20_combout\,
	datab => \inst14|LessThan4~0_combout\,
	datac => \inst|pixel_column\(4),
	datad => \inst|pixel_column\(5),
	combout => \inst14|character_address[4]~52_combout\);

-- Location: LCCOMB_X32_Y21_N26
\inst14|character_address[4]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[4]~53_combout\ = (\inst14|process_0~62_combout\ & (\inst14|character_address[4]~52_combout\ & ((!\inst14|process_0~60_combout\) # (!\inst14|process_0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~62_combout\,
	datab => \inst14|process_0~40_combout\,
	datac => \inst14|process_0~60_combout\,
	datad => \inst14|character_address[4]~52_combout\,
	combout => \inst14|character_address[4]~53_combout\);

-- Location: LCCOMB_X30_Y20_N8
\inst14|process_0~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~76_combout\ = (!\inst14|LessThan38~2_combout\ & (\inst|pixel_row\(7) & (\inst14|LessThan12~0_combout\ & !\inst14|process_0~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LessThan38~2_combout\,
	datab => \inst|pixel_row\(7),
	datac => \inst14|LessThan12~0_combout\,
	datad => \inst14|process_0~39_combout\,
	combout => \inst14|process_0~76_combout\);

-- Location: LCCOMB_X32_Y21_N16
\inst14|character_address[0]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[0]~54_combout\ = (!\inst14|process_0~76_combout\ & ((\inst14|process_0~59_combout\) # ((!\inst14|process_0~61_combout\ & !\inst14|character_address[4]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~59_combout\,
	datab => \inst14|process_0~61_combout\,
	datac => \inst14|character_address[4]~53_combout\,
	datad => \inst14|process_0~76_combout\,
	combout => \inst14|character_address[0]~54_combout\);

-- Location: LCCOMB_X31_Y22_N30
\inst14|character_address[0]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[0]~55_combout\ = (\inst14|character_address[0]~51_combout\) # ((\inst14|character_address[0]~54_combout\ & ((\inst14|process_0~55_combout\) # (!\inst14|character_address[5]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~55_combout\,
	datab => \inst14|character_address[5]~30_combout\,
	datac => \inst14|character_address[0]~51_combout\,
	datad => \inst14|character_address[0]~54_combout\,
	combout => \inst14|character_address[0]~55_combout\);

-- Location: LCCOMB_X31_Y22_N10
\inst14|character_address[0]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[0]~48_combout\ = (\inst14|process_0~58_combout\) # ((\inst14|LessThan38~2_combout\) # ((\inst14|character_address[5]~30_combout\ & !\inst14|process_0~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~58_combout\,
	datab => \inst14|character_address[5]~30_combout\,
	datac => \inst14|LessThan38~2_combout\,
	datad => \inst14|process_0~73_combout\,
	combout => \inst14|character_address[0]~48_combout\);

-- Location: LCCOMB_X31_Y22_N24
\inst14|character_address[0]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[0]~56_combout\ = (\inst14|character_address[2]~131_combout\ & (!\inst14|process_0~63_combout\ & ((\inst14|character_address[0]~55_combout\) # (\inst14|character_address[0]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[2]~131_combout\,
	datab => \inst14|process_0~63_combout\,
	datac => \inst14|character_address[0]~55_combout\,
	datad => \inst14|character_address[0]~48_combout\,
	combout => \inst14|character_address[0]~56_combout\);

-- Location: LCCOMB_X31_Y22_N26
\inst14|character_address[0]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[0]~58_combout\ = (\inst14|character_address[0]~47_combout\ & (((\inst14|character_address[0]~133_combout\) # (\inst14|character_address[0]~56_combout\)) # (!\inst14|character_address[4]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[4]~40_combout\,
	datab => \inst14|character_address[0]~133_combout\,
	datac => \inst14|character_address[0]~47_combout\,
	datad => \inst14|character_address[0]~56_combout\,
	combout => \inst14|character_address[0]~58_combout\);

-- Location: LCCOMB_X30_Y22_N20
\inst14|character_address[1]~136\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[1]~136_combout\ = (!\inst15|s_game_mode\(0) & (!\inst14|process_0~31_combout\ & !\inst15|s_game_mode\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|s_game_mode\(0),
	datab => \inst14|process_0~31_combout\,
	datad => \inst15|s_game_mode\(1),
	combout => \inst14|character_address[1]~136_combout\);

-- Location: LCCOMB_X30_Y22_N28
\inst14|character_address[0]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[0]~65_combout\ = (\inst14|character_address[0]~64_combout\) # ((\inst14|character_address[1]~136_combout\ & (!\inst14|process_0~36_combout\ & \inst14|process_0~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[0]~64_combout\,
	datab => \inst14|character_address[1]~136_combout\,
	datac => \inst14|process_0~36_combout\,
	datad => \inst14|process_0~35_combout\,
	combout => \inst14|character_address[0]~65_combout\);

-- Location: LCCOMB_X31_Y22_N4
\inst14|character_address[0]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[0]~66_combout\ = (\inst14|character_address[0]~61_combout\) # ((\inst14|character_address[0]~63_combout\) # ((\inst14|character_address[0]~58_combout\) # (\inst14|character_address[0]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[0]~61_combout\,
	datab => \inst14|character_address[0]~63_combout\,
	datac => \inst14|character_address[0]~58_combout\,
	datad => \inst14|character_address[0]~65_combout\,
	combout => \inst14|character_address[0]~66_combout\);

-- Location: LCCOMB_X31_Y22_N20
\inst14|character_address[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address\(0) = (GLOBAL(\inst14|character_address[4]~45clkctrl_outclk\) & ((\inst14|character_address[0]~66_combout\))) # (!GLOBAL(\inst14|character_address[4]~45clkctrl_outclk\) & (\inst14|character_address\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|character_address\(0),
	datac => \inst14|character_address[0]~66_combout\,
	datad => \inst14|character_address[4]~45clkctrl_outclk\,
	combout => \inst14|character_address\(0));

-- Location: LCCOMB_X31_Y23_N14
\inst14|character_address[1]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[1]~83_combout\ = (!\inst14|process_0~33_combout\ & ((\inst14|process_0~26_combout\) # ((!\inst14|process_0~57_combout\ & \inst14|process_0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~26_combout\,
	datab => \inst14|process_0~33_combout\,
	datac => \inst14|process_0~57_combout\,
	datad => \inst14|process_0~24_combout\,
	combout => \inst14|character_address[1]~83_combout\);

-- Location: LCCOMB_X30_Y22_N10
\inst14|character_address[1]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[1]~82_combout\ = (\inst14|process_0~36_combout\) # ((\inst14|process_0~35_combout\) # ((\inst14|process_0~47_combout\ & !\inst14|process_0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~36_combout\,
	datab => \inst14|process_0~35_combout\,
	datac => \inst14|process_0~47_combout\,
	datad => \inst14|process_0~26_combout\,
	combout => \inst14|character_address[1]~82_combout\);

-- Location: LCCOMB_X32_Y21_N20
\inst14|character_address[1]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[1]~84_combout\ = (\inst14|character_address[1]~82_combout\) # (!\inst14|character_address[1]~83_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|character_address[1]~83_combout\,
	datad => \inst14|character_address[1]~82_combout\,
	combout => \inst14|character_address[1]~84_combout\);

-- Location: LCCOMB_X31_Y21_N20
\inst14|character_address[1]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[1]~71_combout\ = (!\inst14|process_0~50_combout\ & (!\inst14|process_0~26_combout\ & ((\inst14|character_address[1]~70_combout\) # (!\inst14|process_0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[1]~70_combout\,
	datab => \inst14|process_0~50_combout\,
	datac => \inst14|process_0~26_combout\,
	datad => \inst14|process_0~43_combout\,
	combout => \inst14|character_address[1]~71_combout\);

-- Location: LCCOMB_X30_Y21_N2
\inst14|character_address[2]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[2]~26_combout\ = (\inst14|LessThan24~0_combout\) # ((\inst|pixel_column\(6) $ (!\inst|pixel_column\(5))) # (!\inst14|process_0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LessThan24~0_combout\,
	datab => \inst14|process_0~34_combout\,
	datac => \inst|pixel_column\(6),
	datad => \inst|pixel_column\(5),
	combout => \inst14|character_address[2]~26_combout\);

-- Location: LCCOMB_X30_Y21_N26
\inst14|character_address[1]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[1]~75_combout\ = (\inst14|character_address[2]~26_combout\ & ((\inst14|process_0~42_combout\) # (!\inst14|process_0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|process_0~34_combout\,
	datac => \inst14|character_address[2]~26_combout\,
	datad => \inst14|process_0~42_combout\,
	combout => \inst14|character_address[1]~75_combout\);

-- Location: LCCOMB_X30_Y22_N26
\inst14|character_address[1]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[1]~73_combout\ = (\inst|pixel_column\(5) & (!\inst|pixel_column\(8) & (\inst|pixel_column\(6) & \inst|pixel_column\(7)))) # (!\inst|pixel_column\(5) & (\inst|pixel_column\(8) & (!\inst|pixel_column\(6) & 
-- !\inst|pixel_column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(5),
	datab => \inst|pixel_column\(8),
	datac => \inst|pixel_column\(6),
	datad => \inst|pixel_column\(7),
	combout => \inst14|character_address[1]~73_combout\);

-- Location: LCCOMB_X30_Y20_N26
\inst14|LessThan18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LessThan18~0_combout\ = (!\inst|pixel_column\(5) & (!\inst|pixel_column\(6) & (!\inst|pixel_column\(4) & \inst14|LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(5),
	datab => \inst|pixel_column\(6),
	datac => \inst|pixel_column\(4),
	datad => \inst14|LessThan4~0_combout\,
	combout => \inst14|LessThan18~0_combout\);

-- Location: LCCOMB_X31_Y20_N10
\inst14|process_0~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~67_combout\ = (\inst|pixel_column\(8) & ((\inst|pixel_column\(7)) # ((!\inst14|LessThan18~0_combout\)))) # (!\inst|pixel_column\(8) & (((\inst14|process_0~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(8),
	datab => \inst|pixel_column\(7),
	datac => \inst14|LessThan18~0_combout\,
	datad => \inst14|process_0~53_combout\,
	combout => \inst14|process_0~67_combout\);

-- Location: LCCOMB_X30_Y21_N4
\inst14|character_address[1]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[1]~74_combout\ = (!\inst|pixel_column\(9) & (((!\inst14|LessThan24~0_combout\ & \inst14|character_address[1]~73_combout\)) # (!\inst14|process_0~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LessThan24~0_combout\,
	datab => \inst14|character_address[1]~73_combout\,
	datac => \inst|pixel_column\(9),
	datad => \inst14|process_0~67_combout\,
	combout => \inst14|character_address[1]~74_combout\);

-- Location: LCCOMB_X30_Y21_N10
\inst14|character_address[1]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[1]~76_combout\ = (\inst14|process_0~74_combout\ & ((\inst14|character_address[1]~74_combout\) # ((\inst14|character_address[1]~75_combout\ & !\inst14|process_0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~74_combout\,
	datab => \inst14|character_address[1]~75_combout\,
	datac => \inst14|process_0~38_combout\,
	datad => \inst14|character_address[1]~74_combout\,
	combout => \inst14|character_address[1]~76_combout\);

-- Location: LCCOMB_X30_Y21_N22
\inst14|character_address[5]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[5]~36_combout\ = ((\inst14|process_0~44_combout\ & \inst14|process_0~70_combout\)) # (!\inst14|process_0~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~44_combout\,
	datab => \inst14|process_0~70_combout\,
	datad => \inst14|process_0~49_combout\,
	combout => \inst14|character_address[5]~36_combout\);

-- Location: LCCOMB_X31_Y20_N28
\inst14|process_0~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~37_combout\ = (!\inst|pixel_column\(7) & (((!\inst|pixel_column\(6)) # (!\inst|pixel_column\(4))) # (!\inst|pixel_column\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(5),
	datab => \inst|pixel_column\(4),
	datac => \inst|pixel_column\(7),
	datad => \inst|pixel_column\(6),
	combout => \inst14|process_0~37_combout\);

-- Location: LCCOMB_X31_Y20_N4
\inst14|process_0~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~69_combout\ = (!\inst14|LessThan30~0_combout\ & (\inst|pixel_column\(8) & (!\inst|pixel_column\(9) & !\inst14|process_0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LessThan30~0_combout\,
	datab => \inst|pixel_column\(8),
	datac => \inst|pixel_column\(9),
	datad => \inst14|process_0~37_combout\,
	combout => \inst14|process_0~69_combout\);

-- Location: LCCOMB_X31_Y21_N0
\inst14|character_address[1]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[1]~72_combout\ = (\inst14|character_address[5]~36_combout\ & (((\inst14|process_0~55_combout\ & !\inst14|process_0~69_combout\)) # (!\inst14|process_0~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~55_combout\,
	datab => \inst14|character_address[5]~36_combout\,
	datac => \inst14|process_0~69_combout\,
	datad => \inst14|process_0~49_combout\,
	combout => \inst14|character_address[1]~72_combout\);

-- Location: LCCOMB_X29_Y22_N20
\inst14|character_address[0]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[0]~39_combout\ = (\inst14|character_address[0]~38_combout\) # ((!\inst14|process_0~54_combout\ & \inst14|process_0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|character_address[0]~38_combout\,
	datac => \inst14|process_0~54_combout\,
	datad => \inst14|process_0~39_combout\,
	combout => \inst14|character_address[0]~39_combout\);

-- Location: LCCOMB_X32_Y21_N8
\inst14|character_address[1]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[1]~78_combout\ = (\inst14|character_address[1]~72_combout\ & ((\inst14|character_address[1]~77_combout\) # ((\inst14|character_address[1]~76_combout\) # (!\inst14|character_address[0]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[1]~77_combout\,
	datab => \inst14|character_address[1]~76_combout\,
	datac => \inst14|character_address[1]~72_combout\,
	datad => \inst14|character_address[0]~39_combout\,
	combout => \inst14|character_address[1]~78_combout\);

-- Location: LCCOMB_X32_Y21_N22
\inst14|character_address[1]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[1]~81_combout\ = (\inst14|character_address[1]~71_combout\ & ((\inst14|character_address[1]~80_combout\) # ((\inst14|character_address[1]~78_combout\) # (\inst14|process_0~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[1]~80_combout\,
	datab => \inst14|character_address[1]~71_combout\,
	datac => \inst14|character_address[1]~78_combout\,
	datad => \inst14|process_0~51_combout\,
	combout => \inst14|character_address[1]~81_combout\);

-- Location: LCCOMB_X29_Y21_N24
\inst14|process_0~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~71_combout\ = (\inst14|LessThan12~0_combout\ & (\inst|pixel_row\(7) & ((!\inst14|LessThan38~0_combout\) # (!\inst|pixel_row\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LessThan12~0_combout\,
	datab => \inst|pixel_row\(8),
	datac => \inst14|LessThan38~0_combout\,
	datad => \inst|pixel_row\(7),
	combout => \inst14|process_0~71_combout\);

-- Location: LCCOMB_X29_Y23_N16
\inst14|process_0~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~66_combout\ = ((\inst14|process_0~42_combout\) # (!\inst14|process_0~34_combout\)) # (!\inst14|process_0~71_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|process_0~71_combout\,
	datac => \inst14|process_0~42_combout\,
	datad => \inst14|process_0~34_combout\,
	combout => \inst14|process_0~66_combout\);

-- Location: LCCOMB_X29_Y23_N18
\inst14|process_0~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~65_combout\ = (\inst14|process_0~34_combout\ & (\inst14|process_0~71_combout\ & \inst14|process_0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|process_0~34_combout\,
	datac => \inst14|process_0~71_combout\,
	datad => \inst14|process_0~40_combout\,
	combout => \inst14|process_0~65_combout\);

-- Location: LCCOMB_X29_Y23_N8
\inst14|character_address[1]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[1]~67_combout\ = ((\inst14|process_0~38_combout\ & (!\inst14|process_0~65_combout\ & \inst14|process_0~69_combout\))) # (!\inst14|process_0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~38_combout\,
	datab => \inst14|process_0~65_combout\,
	datac => \inst14|process_0~69_combout\,
	datad => \inst14|process_0~44_combout\,
	combout => \inst14|character_address[1]~67_combout\);

-- Location: LCCOMB_X29_Y23_N22
\inst14|character_address[1]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[1]~68_combout\ = (\inst14|process_0~71_combout\ & (((\inst14|process_0~72_combout\ & \inst14|character_address[1]~67_combout\)) # (!\inst14|process_0~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~72_combout\,
	datab => \inst14|process_0~71_combout\,
	datac => \inst14|character_address[1]~67_combout\,
	datad => \inst14|process_0~55_combout\,
	combout => \inst14|character_address[1]~68_combout\);

-- Location: LCCOMB_X29_Y23_N10
\inst14|character_address[1]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[1]~69_combout\ = (\inst14|Equal0~0_combout\ & ((\inst11|Equal0~0_combout\ & (\inst14|process_0~66_combout\ & \inst14|character_address[1]~68_combout\)) # (!\inst11|Equal0~0_combout\ & (!\inst14|process_0~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal0~0_combout\,
	datab => \inst14|Equal0~0_combout\,
	datac => \inst14|process_0~66_combout\,
	datad => \inst14|character_address[1]~68_combout\,
	combout => \inst14|character_address[1]~69_combout\);

-- Location: LCCOMB_X32_Y21_N30
\inst14|character_address[1]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[1]~85_combout\ = (\inst14|character_address[1]~69_combout\) # ((\inst14|character_address[1]~137_combout\ & ((\inst14|character_address[1]~84_combout\) # (\inst14|character_address[1]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[1]~137_combout\,
	datab => \inst14|character_address[1]~84_combout\,
	datac => \inst14|character_address[1]~81_combout\,
	datad => \inst14|character_address[1]~69_combout\,
	combout => \inst14|character_address[1]~85_combout\);

-- Location: LCCOMB_X32_Y21_N18
\inst14|character_address[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address\(1) = (GLOBAL(\inst14|character_address[4]~45clkctrl_outclk\) & ((\inst14|character_address[1]~85_combout\))) # (!GLOBAL(\inst14|character_address[4]~45clkctrl_outclk\) & (\inst14|character_address\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|character_address\(1),
	datac => \inst14|character_address[1]~85_combout\,
	datad => \inst14|character_address[4]~45clkctrl_outclk\,
	combout => \inst14|character_address\(1));

-- Location: LCCOMB_X31_Y22_N6
\inst14|character_address[4]~138\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[4]~138_combout\ = (!\inst14|process_0~35_combout\ & (!\inst15|s_game_mode\(1) & (!\inst14|process_0~29_combout\ & !\inst15|s_game_mode\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~35_combout\,
	datab => \inst15|s_game_mode\(1),
	datac => \inst14|process_0~29_combout\,
	datad => \inst15|s_game_mode\(0),
	combout => \inst14|character_address[4]~138_combout\);

-- Location: LCCOMB_X29_Y23_N2
\inst14|character_address[2]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[2]~89_combout\ = (!\inst14|Equal0~0_combout\ & ((\inst14|process_0~31_combout\) # ((!\inst14|process_0~29_combout\ & \inst14|process_0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Equal0~0_combout\,
	datab => \inst14|process_0~29_combout\,
	datac => \inst14|process_0~36_combout\,
	datad => \inst14|process_0~31_combout\,
	combout => \inst14|character_address[2]~89_combout\);

-- Location: LCCOMB_X29_Y23_N14
\inst14|character_address[2]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[2]~87_combout\ = (\inst14|character_address[2]~26_combout\ & (\inst14|process_0~72_combout\ & ((\inst14|process_0~65_combout\) # (!\inst14|character_address[0]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[2]~26_combout\,
	datab => \inst14|process_0~65_combout\,
	datac => \inst14|character_address[0]~50_combout\,
	datad => \inst14|process_0~72_combout\,
	combout => \inst14|character_address[2]~87_combout\);

-- Location: LCCOMB_X29_Y19_N0
\inst11|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Equal0~0_combout\ = (!\inst15|s_game_mode\(1) & \inst15|s_game_mode\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|s_game_mode\(1),
	datad => \inst15|s_game_mode\(0),
	combout => \inst11|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y23_N0
\inst14|character_address[2]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[2]~86_combout\ = ((!\inst11|Equal0~0_combout\ & ((\inst14|process_0~55_combout\) # (!\inst14|process_0~73_combout\)))) # (!\inst14|process_0~71_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~73_combout\,
	datab => \inst14|process_0~55_combout\,
	datac => \inst14|process_0~71_combout\,
	datad => \inst11|Equal0~0_combout\,
	combout => \inst14|character_address[2]~86_combout\);

-- Location: LCCOMB_X29_Y23_N4
\inst14|character_address[2]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[2]~88_combout\ = (\inst14|character_address[2]~86_combout\) # ((\inst14|process_0~66_combout\ & (\inst14|character_address[2]~87_combout\ & \inst11|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~66_combout\,
	datab => \inst14|character_address[2]~87_combout\,
	datac => \inst14|character_address[2]~86_combout\,
	datad => \inst11|Equal0~0_combout\,
	combout => \inst14|character_address[2]~88_combout\);

-- Location: LCCOMB_X29_Y23_N24
\inst14|character_address[2]~139\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[2]~139_combout\ = (\inst14|character_address[2]~89_combout\) # ((\inst14|character_address[2]~88_combout\ & ((\inst15|s_game_mode\(1)) # (\inst15|s_game_mode\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|s_game_mode\(1),
	datab => \inst14|character_address[2]~89_combout\,
	datac => \inst14|character_address[2]~88_combout\,
	datad => \inst15|s_game_mode\(0),
	combout => \inst14|character_address[2]~139_combout\);

-- Location: LCCOMB_X31_Y21_N10
\inst14|process_0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~48_combout\ = (\inst14|process_0~34_combout\ & (\inst14|process_0~43_combout\ & !\inst14|process_0~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~34_combout\,
	datac => \inst14|process_0~43_combout\,
	datad => \inst14|process_0~41_combout\,
	combout => \inst14|process_0~48_combout\);

-- Location: LCCOMB_X29_Y21_N16
\inst14|process_0~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~74_combout\ = (\inst14|LessThan12~0_combout\ & (!\inst14|LessThan38~2_combout\ & \inst|pixel_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LessThan12~0_combout\,
	datab => \inst14|LessThan38~2_combout\,
	datad => \inst|pixel_row\(7),
	combout => \inst14|process_0~74_combout\);

-- Location: LCCOMB_X29_Y22_N14
\inst14|character_address[2]~131\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[2]~131_combout\ = (\inst14|process_0~54_combout\ & (((\inst14|character_address[0]~38_combout\ & !\inst14|process_0~74_combout\)))) # (!\inst14|process_0~54_combout\ & ((\inst14|process_0~39_combout\) # 
-- ((\inst14|character_address[0]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~39_combout\,
	datab => \inst14|process_0~54_combout\,
	datac => \inst14|character_address[0]~38_combout\,
	datad => \inst14|process_0~74_combout\,
	combout => \inst14|character_address[2]~131_combout\);

-- Location: LCCOMB_X29_Y22_N26
\inst14|character_address[2]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[2]~93_combout\ = (\inst14|character_address[2]~26_combout\ & ((\inst14|process_0~76_combout\) # ((!\inst14|process_0~59_combout\ & \inst14|process_0~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~59_combout\,
	datab => \inst14|process_0~76_combout\,
	datac => \inst14|process_0~61_combout\,
	datad => \inst14|character_address[2]~26_combout\,
	combout => \inst14|character_address[2]~93_combout\);

-- Location: LCCOMB_X29_Y22_N28
\inst14|character_address[2]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[2]~94_combout\ = (\inst14|process_0~74_combout\ & (\inst14|character_address[2]~131_combout\ & (\inst14|character_address[2]~93_combout\ & !\inst14|character_address[0]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~74_combout\,
	datab => \inst14|character_address[2]~131_combout\,
	datac => \inst14|character_address[2]~93_combout\,
	datad => \inst14|character_address[0]~50_combout\,
	combout => \inst14|character_address[2]~94_combout\);

-- Location: LCCOMB_X28_Y21_N14
\inst14|character_address[2]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[2]~90_combout\ = (\inst|pixel_column\(6)) # ((\inst|pixel_column\(4) & (!\inst14|LessThan4~0_combout\ & \inst|pixel_column\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(6),
	datab => \inst|pixel_column\(4),
	datac => \inst14|LessThan4~0_combout\,
	datad => \inst|pixel_column\(5),
	combout => \inst14|character_address[2]~90_combout\);

-- Location: LCCOMB_X30_Y21_N12
\inst14|character_address[2]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[2]~91_combout\ = (((\inst14|character_address[2]~90_combout\ & \inst14|process_0~41_combout\)) # (!\inst14|process_0~49_combout\)) # (!\inst14|process_0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~34_combout\,
	datab => \inst14|character_address[2]~90_combout\,
	datac => \inst14|process_0~41_combout\,
	datad => \inst14|process_0~49_combout\,
	combout => \inst14|character_address[2]~91_combout\);

-- Location: LCCOMB_X29_Y22_N12
\inst14|character_address[2]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[2]~92_combout\ = (\inst14|character_address[2]~91_combout\ & (((\inst14|process_0~70_combout\ & \inst14|process_0~38_combout\)) # (!\inst14|process_0~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~70_combout\,
	datab => \inst14|character_address[2]~91_combout\,
	datac => \inst14|process_0~49_combout\,
	datad => \inst14|process_0~38_combout\,
	combout => \inst14|character_address[2]~92_combout\);

-- Location: LCCOMB_X30_Y21_N18
\inst14|character_address[2]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[2]~97_combout\ = (\inst14|process_0~64_combout\) # ((\inst14|process_0~45_combout\) # ((\inst14|process_0~63_combout\ & \inst14|character_address[2]~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~63_combout\,
	datab => \inst14|character_address[2]~91_combout\,
	datac => \inst14|process_0~64_combout\,
	datad => \inst14|process_0~45_combout\,
	combout => \inst14|character_address[2]~97_combout\);

-- Location: LCCOMB_X29_Y22_N18
\inst14|character_address[2]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[2]~98_combout\ = (\inst14|character_address[2]~97_combout\) # ((\inst14|character_address[2]~92_combout\ & ((\inst14|character_address[2]~96_combout\) # (\inst14|character_address[2]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[2]~96_combout\,
	datab => \inst14|character_address[2]~94_combout\,
	datac => \inst14|character_address[2]~92_combout\,
	datad => \inst14|character_address[2]~97_combout\,
	combout => \inst14|character_address[2]~98_combout\);

-- Location: LCCOMB_X29_Y22_N2
\inst14|character_address[2]~141\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[2]~141_combout\ = (\inst14|character_address[2]~20_combout\ & ((\inst14|process_0~47_combout\) # ((!\inst14|process_0~48_combout\ & \inst14|character_address[2]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~47_combout\,
	datab => \inst14|process_0~48_combout\,
	datac => \inst14|character_address[2]~20_combout\,
	datad => \inst14|character_address[2]~98_combout\,
	combout => \inst14|character_address[2]~141_combout\);

-- Location: LCCOMB_X29_Y22_N4
\inst14|character_address[2]~142\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[2]~142_combout\ = (\inst14|character_address[2]~139_combout\) # ((\inst14|character_address[4]~138_combout\ & ((\inst14|process_0~33_combout\) # (\inst14|character_address[2]~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~33_combout\,
	datab => \inst14|character_address[4]~138_combout\,
	datac => \inst14|character_address[2]~139_combout\,
	datad => \inst14|character_address[2]~141_combout\,
	combout => \inst14|character_address[2]~142_combout\);

-- Location: LCCOMB_X29_Y22_N6
\inst14|character_address[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address\(2) = (GLOBAL(\inst14|character_address[4]~45clkctrl_outclk\) & ((\inst14|character_address[2]~142_combout\))) # (!GLOBAL(\inst14|character_address[4]~45clkctrl_outclk\) & (\inst14|character_address\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address\(2),
	datac => \inst14|character_address[2]~142_combout\,
	datad => \inst14|character_address[4]~45clkctrl_outclk\,
	combout => \inst14|character_address\(2));

-- Location: LCCOMB_X32_Y22_N30
\inst14|character_address[3]~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[3]~103_combout\ = (!\inst14|process_0~47_combout\ & (!\inst14|Equal0~0_combout\ & (!\inst14|process_0~48_combout\ & \inst14|font_col[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~47_combout\,
	datab => \inst14|Equal0~0_combout\,
	datac => \inst14|process_0~48_combout\,
	datad => \inst14|font_col[1]~0_combout\,
	combout => \inst14|character_address[3]~103_combout\);

-- Location: LCCOMB_X33_Y20_N30
\inst14|character_address[3]~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[3]~106_combout\ = (\inst14|process_0~60_combout\ & (((\inst14|process_0~40_combout\ & \inst14|process_0~41_combout\)) # (!\inst14|process_0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~42_combout\,
	datab => \inst14|process_0~40_combout\,
	datac => \inst14|process_0~60_combout\,
	datad => \inst14|process_0~41_combout\,
	combout => \inst14|character_address[3]~106_combout\);

-- Location: LCCOMB_X33_Y20_N8
\inst14|character_address[3]~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[3]~108_combout\ = (\inst14|character_address[3]~106_combout\ & (((\inst14|character_address[3]~107_combout\ & \inst14|process_0~56_combout\)) # (!\inst14|process_0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[3]~107_combout\,
	datab => \inst14|process_0~20_combout\,
	datac => \inst14|character_address[3]~106_combout\,
	datad => \inst14|process_0~56_combout\,
	combout => \inst14|character_address[3]~108_combout\);

-- Location: LCCOMB_X30_Y21_N28
\inst14|process_0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~58_combout\ = (!\inst14|LessThan24~0_combout\ & (\inst14|process_0~34_combout\ & (\inst14|character_address[1]~21_combout\ & \inst14|process_0~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LessThan24~0_combout\,
	datab => \inst14|process_0~34_combout\,
	datac => \inst14|character_address[1]~21_combout\,
	datad => \inst14|process_0~74_combout\,
	combout => \inst14|process_0~58_combout\);

-- Location: LCCOMB_X33_Y20_N22
\inst14|character_address[3]~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[3]~109_combout\ = (\inst14|process_0~58_combout\) # ((\inst14|character_address[5]~105_combout\ & ((\inst14|character_address[3]~108_combout\) # (!\inst14|process_0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[5]~105_combout\,
	datab => \inst14|process_0~44_combout\,
	datac => \inst14|character_address[3]~108_combout\,
	datad => \inst14|process_0~58_combout\,
	combout => \inst14|character_address[3]~109_combout\);

-- Location: LCCOMB_X31_Y20_N30
\inst14|process_0~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~68_combout\ = (!\inst14|process_0~67_combout\ & (!\inst|pixel_column\(9) & \inst14|process_0~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~67_combout\,
	datac => \inst|pixel_column\(9),
	datad => \inst14|process_0~74_combout\,
	combout => \inst14|process_0~68_combout\);

-- Location: LCCOMB_X33_Y20_N4
\inst14|character_address[3]~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[3]~110_combout\ = (\inst14|character_address[0]~39_combout\ & ((\inst14|process_0~77_combout\) # ((\inst14|process_0~68_combout\) # (!\inst14|character_address[3]~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[0]~39_combout\,
	datab => \inst14|process_0~77_combout\,
	datac => \inst14|character_address[3]~109_combout\,
	datad => \inst14|process_0~68_combout\,
	combout => \inst14|character_address[3]~110_combout\);

-- Location: LCCOMB_X33_Y20_N14
\inst14|character_address[3]~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[3]~111_combout\ = (\inst14|process_0~49_combout\ & (((\inst14|character_address[3]~43_combout\ & !\inst14|character_address[3]~110_combout\)) # (!\inst14|process_0~70_combout\))) # (!\inst14|process_0~49_combout\ & 
-- (\inst14|character_address[3]~43_combout\ & (!\inst14|character_address[3]~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~49_combout\,
	datab => \inst14|character_address[3]~43_combout\,
	datac => \inst14|character_address[3]~110_combout\,
	datad => \inst14|process_0~70_combout\,
	combout => \inst14|character_address[3]~111_combout\);

-- Location: LCCOMB_X33_Y20_N2
\inst14|character_address[3]~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[3]~100_combout\ = (\inst11|Equal0~0_combout\ & (\inst14|process_0~71_combout\ & (\inst14|process_0~70_combout\ & !\inst14|process_0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal0~0_combout\,
	datab => \inst14|process_0~71_combout\,
	datac => \inst14|process_0~70_combout\,
	datad => \inst14|process_0~38_combout\,
	combout => \inst14|character_address[3]~100_combout\);

-- Location: LCCOMB_X33_Y20_N12
\inst14|character_address[3]~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[3]~99_combout\ = (!\inst11|Equal0~0_combout\ & (\inst14|process_0~71_combout\ & (\inst14|process_0~55_combout\ & !\inst14|process_0~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal0~0_combout\,
	datab => \inst14|process_0~71_combout\,
	datac => \inst14|process_0~55_combout\,
	datad => \inst14|process_0~72_combout\,
	combout => \inst14|character_address[3]~99_combout\);

-- Location: LCCOMB_X33_Y20_N28
\inst14|character_address[3]~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[3]~101_combout\ = (\inst14|character_address[3]~99_combout\) # ((\inst14|process_0~72_combout\ & (\inst14|character_address[3]~100_combout\ & \inst14|character_address[2]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~72_combout\,
	datab => \inst14|character_address[3]~100_combout\,
	datac => \inst14|character_address[3]~99_combout\,
	datad => \inst14|character_address[2]~26_combout\,
	combout => \inst14|character_address[3]~101_combout\);

-- Location: LCCOMB_X33_Y20_N16
\inst14|character_address[3]~140\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[3]~140_combout\ = (\inst14|character_address[3]~101_combout\ & (\inst14|process_0~66_combout\ & ((\inst15|s_game_mode\(0)) # (\inst15|s_game_mode\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|s_game_mode\(0),
	datab => \inst14|character_address[3]~101_combout\,
	datac => \inst14|process_0~66_combout\,
	datad => \inst15|s_game_mode\(1),
	combout => \inst14|character_address[3]~140_combout\);

-- Location: LCCOMB_X30_Y22_N6
\inst14|character_address[3]~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[3]~102_combout\ = (!\inst14|process_0~29_combout\ & (\inst14|character_address[1]~136_combout\ & ((\inst14|process_0~35_combout\) # (\inst14|process_0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~29_combout\,
	datab => \inst14|process_0~35_combout\,
	datac => \inst14|character_address[1]~136_combout\,
	datad => \inst14|process_0~36_combout\,
	combout => \inst14|character_address[3]~102_combout\);

-- Location: LCCOMB_X33_Y20_N18
\inst14|character_address[3]~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[3]~104_combout\ = (\inst14|character_address[3]~140_combout\) # ((\inst14|character_address[3]~102_combout\) # ((\inst14|process_0~45_combout\ & \inst14|character_address[3]~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~45_combout\,
	datab => \inst14|character_address[3]~140_combout\,
	datac => \inst14|character_address[3]~102_combout\,
	datad => \inst14|character_address[3]~103_combout\,
	combout => \inst14|character_address[3]~104_combout\);

-- Location: LCCOMB_X33_Y20_N10
\inst14|character_address[3]~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[3]~113_combout\ = (\inst14|character_address[3]~104_combout\) # ((\inst14|character_address[3]~112_combout\ & (\inst14|character_address[3]~103_combout\ & \inst14|character_address[3]~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[3]~112_combout\,
	datab => \inst14|character_address[3]~103_combout\,
	datac => \inst14|character_address[3]~111_combout\,
	datad => \inst14|character_address[3]~104_combout\,
	combout => \inst14|character_address[3]~113_combout\);

-- Location: LCCOMB_X33_Y20_N26
\inst14|character_address[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address\(3) = (GLOBAL(\inst14|character_address[4]~45clkctrl_outclk\) & ((\inst14|character_address[3]~113_combout\))) # (!GLOBAL(\inst14|character_address[4]~45clkctrl_outclk\) & (\inst14|character_address\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address\(3),
	datac => \inst14|character_address[4]~45clkctrl_outclk\,
	datad => \inst14|character_address[3]~113_combout\,
	combout => \inst14|character_address\(3));

-- Location: LCCOMB_X30_Y23_N10
\inst14|character_address[0]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[0]~59_combout\ = (((!\inst14|process_0~46_combout\ & \inst14|process_0~42_combout\)) # (!\inst14|process_0~71_combout\)) # (!\inst14|process_0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~34_combout\,
	datab => \inst14|process_0~46_combout\,
	datac => \inst14|process_0~71_combout\,
	datad => \inst14|process_0~42_combout\,
	combout => \inst14|character_address[0]~59_combout\);

-- Location: LCCOMB_X30_Y23_N18
\inst14|character_address[0]~134\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[0]~134_combout\ = (\inst15|s_game_mode\(1)) # (((\inst14|character_address[0]~60_combout\ & \inst14|character_address[0]~59_combout\)) # (!\inst15|s_game_mode\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[0]~60_combout\,
	datab => \inst15|s_game_mode\(1),
	datac => \inst15|s_game_mode\(0),
	datad => \inst14|character_address[0]~59_combout\,
	combout => \inst14|character_address[0]~134_combout\);

-- Location: LCCOMB_X31_Y20_N18
\inst14|process_0~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~75_combout\ = (!\inst|pixel_column\(9) & (\inst|pixel_column\(7) & \inst|pixel_column\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_column\(9),
	datac => \inst|pixel_column\(7),
	datad => \inst|pixel_column\(8),
	combout => \inst14|process_0~75_combout\);

-- Location: LCCOMB_X31_Y20_N24
\inst14|process_0~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|process_0~59_combout\ = (\inst14|character_address[5]~30_combout\ & (\inst14|process_0~75_combout\ & (!\inst14|process_0~42_combout\ & !\inst14|LessThan38~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[5]~30_combout\,
	datab => \inst14|process_0~75_combout\,
	datac => \inst14|process_0~42_combout\,
	datad => \inst14|LessThan38~2_combout\,
	combout => \inst14|process_0~59_combout\);

-- Location: LCCOMB_X32_Y21_N24
\inst14|character_address[4]~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[4]~118_combout\ = (\inst14|process_0~76_combout\) # ((\inst14|character_address[4]~53_combout\ & (!\inst14|process_0~61_combout\ & !\inst14|process_0~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[4]~53_combout\,
	datab => \inst14|process_0~61_combout\,
	datac => \inst14|process_0~76_combout\,
	datad => \inst14|process_0~59_combout\,
	combout => \inst14|character_address[4]~118_combout\);

-- Location: LCCOMB_X33_Y21_N12
\inst14|character_address[4]~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[4]~119_combout\ = (!\inst14|process_0~58_combout\ & (((\inst14|process_0~56_combout\) # (!\inst14|process_0~74_combout\)) # (!\inst14|process_0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~20_combout\,
	datab => \inst14|process_0~56_combout\,
	datac => \inst14|process_0~74_combout\,
	datad => \inst14|process_0~58_combout\,
	combout => \inst14|character_address[4]~119_combout\);

-- Location: LCCOMB_X32_Y21_N14
\inst14|character_address[4]~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[4]~120_combout\ = (\inst14|character_address[4]~117_combout\) # ((\inst14|process_0~68_combout\) # ((\inst14|character_address[4]~118_combout\ & \inst14|character_address[4]~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[4]~117_combout\,
	datab => \inst14|character_address[4]~118_combout\,
	datac => \inst14|character_address[4]~119_combout\,
	datad => \inst14|process_0~68_combout\,
	combout => \inst14|character_address[4]~120_combout\);

-- Location: LCCOMB_X31_Y21_N16
\inst14|character_address[0]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[0]~62_combout\ = (\inst14|process_0~43_combout\ & (((\inst14|process_0~34_combout\ & !\inst14|process_0~41_combout\)) # (!\inst14|character_address[2]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[2]~26_combout\,
	datab => \inst14|process_0~34_combout\,
	datac => \inst14|process_0~41_combout\,
	datad => \inst14|process_0~43_combout\,
	combout => \inst14|character_address[0]~62_combout\);

-- Location: LCCOMB_X31_Y21_N30
\inst14|character_address[4]~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[4]~114_combout\ = (!\inst14|character_address[0]~62_combout\ & (!\inst14|process_0~26_combout\ & ((\inst14|process_0~70_combout\) # (!\inst14|process_0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~70_combout\,
	datab => \inst14|character_address[0]~62_combout\,
	datac => \inst14|process_0~26_combout\,
	datad => \inst14|process_0~43_combout\,
	combout => \inst14|character_address[4]~114_combout\);

-- Location: LCCOMB_X31_Y21_N12
\inst14|character_address[4]~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[4]~116_combout\ = (\inst14|character_address[4]~114_combout\ & ((\inst14|character_address[4]~115_combout\) # ((\inst14|process_0~50_combout\) # (\inst14|process_0~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[4]~115_combout\,
	datab => \inst14|process_0~50_combout\,
	datac => \inst14|character_address[4]~114_combout\,
	datad => \inst14|process_0~51_combout\,
	combout => \inst14|character_address[4]~116_combout\);

-- Location: LCCOMB_X32_Y21_N28
\inst14|character_address[4]~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[4]~122_combout\ = (\inst14|character_address[4]~116_combout\) # ((\inst14|character_address[4]~121_combout\ & (\inst14|character_address[4]~41_combout\ & \inst14|character_address[4]~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[4]~121_combout\,
	datab => \inst14|character_address[4]~41_combout\,
	datac => \inst14|character_address[4]~120_combout\,
	datad => \inst14|character_address[4]~116_combout\,
	combout => \inst14|character_address[4]~122_combout\);

-- Location: LCCOMB_X32_Y21_N2
\inst14|character_address[4]~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[4]~123_combout\ = (!\inst14|process_0~36_combout\ & (\inst14|character_address[4]~138_combout\ & ((\inst14|character_address[4]~122_combout\) # (!\inst14|character_address[1]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~36_combout\,
	datab => \inst14|character_address[4]~138_combout\,
	datac => \inst14|character_address[1]~83_combout\,
	datad => \inst14|character_address[4]~122_combout\,
	combout => \inst14|character_address[4]~123_combout\);

-- Location: LCCOMB_X32_Y21_N4
\inst14|character_address[4]~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[4]~124_combout\ = (\inst14|character_address[4]~123_combout\) # ((\inst14|Equal0~0_combout\ & ((!\inst14|character_address[0]~134_combout\))) # (!\inst14|Equal0~0_combout\ & (\inst14|process_0~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~31_combout\,
	datab => \inst14|character_address[0]~134_combout\,
	datac => \inst14|Equal0~0_combout\,
	datad => \inst14|character_address[4]~123_combout\,
	combout => \inst14|character_address[4]~124_combout\);

-- Location: LCCOMB_X32_Y21_N12
\inst14|character_address[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address\(4) = (GLOBAL(\inst14|character_address[4]~45clkctrl_outclk\) & ((\inst14|character_address[4]~124_combout\))) # (!GLOBAL(\inst14|character_address[4]~45clkctrl_outclk\) & (\inst14|character_address\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address\(4),
	datac => \inst14|character_address[4]~124_combout\,
	datad => \inst14|character_address[4]~45clkctrl_outclk\,
	combout => \inst14|character_address\(4));

-- Location: LCCOMB_X33_Y20_N0
\inst14|character_address[5]~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[5]~105_combout\ = (\inst14|process_0~55_combout\ & (\inst14|process_0~73_combout\ & \inst14|process_0~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|process_0~55_combout\,
	datac => \inst14|process_0~73_combout\,
	datad => \inst14|process_0~74_combout\,
	combout => \inst14|character_address[5]~105_combout\);

-- Location: LCCOMB_X31_Y18_N4
\inst14|character_address[5]~126\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[5]~126_combout\ = (!\inst14|character_address[0]~125_combout\ & (!\inst14|process_0~76_combout\ & (!\inst14|process_0~59_combout\ & \inst14|process_0~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[0]~125_combout\,
	datab => \inst14|process_0~76_combout\,
	datac => \inst14|process_0~59_combout\,
	datad => \inst14|process_0~61_combout\,
	combout => \inst14|character_address[5]~126_combout\);

-- Location: LCCOMB_X31_Y18_N28
\inst14|character_address[5]~127\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[5]~127_combout\ = (!\inst14|character_address[1]~74_combout\ & (\inst14|character_address[5]~105_combout\ & ((\inst14|character_address[5]~126_combout\) # (!\inst14|process_0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[1]~74_combout\,
	datab => \inst14|character_address[5]~105_combout\,
	datac => \inst14|character_address[5]~126_combout\,
	datad => \inst14|process_0~44_combout\,
	combout => \inst14|character_address[5]~127_combout\);

-- Location: LCCOMB_X31_Y18_N12
\inst14|character_address[5]~129\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[5]~129_combout\ = (\inst14|character_address[5]~128_combout\) # ((\inst14|Equal0~0_combout\) # ((\inst14|character_address[0]~62_combout\) # (\inst14|process_0~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[5]~128_combout\,
	datab => \inst14|Equal0~0_combout\,
	datac => \inst14|character_address[0]~62_combout\,
	datad => \inst14|process_0~64_combout\,
	combout => \inst14|character_address[5]~129_combout\);

-- Location: LCCOMB_X31_Y18_N30
\inst14|character_address[5]~130\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address[5]~130_combout\ = (\inst14|character_address[5]~44_combout\ & (!\inst14|character_address[5]~129_combout\ & ((\inst14|character_address[5]~127_combout\) # (!\inst14|character_address[0]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|character_address[0]~39_combout\,
	datab => \inst14|character_address[5]~44_combout\,
	datac => \inst14|character_address[5]~127_combout\,
	datad => \inst14|character_address[5]~129_combout\,
	combout => \inst14|character_address[5]~130_combout\);

-- Location: LCCOMB_X31_Y18_N2
\inst14|character_address[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|character_address\(5) = (GLOBAL(\inst14|character_address[4]~45clkctrl_outclk\) & ((\inst14|character_address[5]~130_combout\))) # (!GLOBAL(\inst14|character_address[4]~45clkctrl_outclk\) & (\inst14|character_address\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|character_address\(5),
	datac => \inst14|character_address[5]~130_combout\,
	datad => \inst14|character_address[4]~45clkctrl_outclk\,
	combout => \inst14|character_address\(5));

-- Location: LCCOMB_X24_Y20_N24
\inst14|font_col[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|font_col[1]~3_combout\ = (\inst14|font_col[1]~1_combout\ & ((\inst|pixel_column\(2)))) # (!\inst14|font_col[1]~1_combout\ & (\inst|pixel_column\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(3),
	datab => \inst|pixel_column\(2),
	datad => \inst14|font_col[1]~1_combout\,
	combout => \inst14|font_col[1]~3_combout\);

-- Location: LCCOMB_X24_Y20_N0
\inst14|font_col[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|font_col\(1) = (GLOBAL(\inst14|character_address[4]~45clkctrl_outclk\) & ((\inst14|font_col[1]~3_combout\))) # (!GLOBAL(\inst14|character_address[4]~45clkctrl_outclk\) & (\inst14|font_col\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|font_col\(1),
	datac => \inst14|character_address[4]~45clkctrl_outclk\,
	datad => \inst14|font_col[1]~3_combout\,
	combout => \inst14|font_col\(1));

-- Location: LCCOMB_X24_Y20_N16
\inst14|font_col[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|font_col[0]~2_combout\ = (\inst14|font_col[1]~1_combout\ & ((\inst|pixel_column\(1)))) # (!\inst14|font_col[1]~1_combout\ & (\inst|pixel_column\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(2),
	datab => \inst|pixel_column\(1),
	datad => \inst14|font_col[1]~1_combout\,
	combout => \inst14|font_col[0]~2_combout\);

-- Location: LCCOMB_X24_Y20_N10
\inst14|font_col[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|font_col\(0) = (GLOBAL(\inst14|character_address[4]~45clkctrl_outclk\) & ((\inst14|font_col[0]~2_combout\))) # (!GLOBAL(\inst14|character_address[4]~45clkctrl_outclk\) & (\inst14|font_col\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|font_col\(0),
	datac => \inst14|character_address[4]~45clkctrl_outclk\,
	datad => \inst14|font_col[0]~2_combout\,
	combout => \inst14|font_col\(0));

-- Location: LCCOMB_X24_Y20_N28
\inst12|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Mux0~2_combout\ = (\inst14|font_col\(1) & (((\inst14|font_col\(0))))) # (!\inst14|font_col\(1) & ((\inst14|font_col\(0) & (\inst12|altsyncram_component|auto_generated|q_a\(6))) # (!\inst14|font_col\(0) & 
-- ((\inst12|altsyncram_component|auto_generated|q_a\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|altsyncram_component|auto_generated|q_a\(6),
	datab => \inst14|font_col\(1),
	datac => \inst12|altsyncram_component|auto_generated|q_a\(7),
	datad => \inst14|font_col\(0),
	combout => \inst12|Mux0~2_combout\);

-- Location: LCCOMB_X24_Y20_N2
\inst12|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Mux0~3_combout\ = (\inst14|font_col\(1) & ((\inst12|Mux0~2_combout\ & ((\inst12|altsyncram_component|auto_generated|q_a\(4)))) # (!\inst12|Mux0~2_combout\ & (\inst12|altsyncram_component|auto_generated|q_a\(5))))) # (!\inst14|font_col\(1) & 
-- (((\inst12|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|altsyncram_component|auto_generated|q_a\(5),
	datab => \inst12|altsyncram_component|auto_generated|q_a\(4),
	datac => \inst14|font_col\(1),
	datad => \inst12|Mux0~2_combout\,
	combout => \inst12|Mux0~3_combout\);

-- Location: LCCOMB_X24_Y20_N26
\inst12|Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Mux0~4_combout\ = (\inst14|font_col\(2) & (\inst12|Mux0~1_combout\)) # (!\inst14|font_col\(2) & ((\inst12|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Mux0~1_combout\,
	datab => \inst14|font_col\(2),
	datad => \inst12|Mux0~3_combout\,
	combout => \inst12|Mux0~4_combout\);

-- Location: LCCOMB_X27_Y20_N24
\inst15|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|process_0~6_combout\ = (!\inst11|Add0~18_combout\ & ((\inst15|s_game_mode\(1)) # (\inst15|s_game_mode\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|s_game_mode\(1),
	datab => \inst15|s_game_mode\(0),
	datac => \inst11|Add0~18_combout\,
	combout => \inst15|process_0~6_combout\);

-- Location: LCCOMB_X27_Y21_N10
\inst11|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add2~0_combout\ = \inst|pixel_row\(1) $ (VCC)
-- \inst11|Add2~1\ = CARRY(\inst|pixel_row\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(1),
	datad => VCC,
	combout => \inst11|Add2~0_combout\,
	cout => \inst11|Add2~1\);

-- Location: LCCOMB_X27_Y21_N12
\inst11|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add2~2_combout\ = (\inst|pixel_row\(2) & (!\inst11|Add2~1\)) # (!\inst|pixel_row\(2) & ((\inst11|Add2~1\) # (GND)))
-- \inst11|Add2~3\ = CARRY((!\inst11|Add2~1\) # (!\inst|pixel_row\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_row\(2),
	datad => VCC,
	cin => \inst11|Add2~1\,
	combout => \inst11|Add2~2_combout\,
	cout => \inst11|Add2~3\);

-- Location: LCCOMB_X27_Y21_N14
\inst11|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add2~4_combout\ = (\inst|pixel_row\(3) & ((GND) # (!\inst11|Add2~3\))) # (!\inst|pixel_row\(3) & (\inst11|Add2~3\ $ (GND)))
-- \inst11|Add2~5\ = CARRY((\inst|pixel_row\(3)) # (!\inst11|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(3),
	datad => VCC,
	cin => \inst11|Add2~3\,
	combout => \inst11|Add2~4_combout\,
	cout => \inst11|Add2~5\);

-- Location: LCCOMB_X27_Y21_N16
\inst11|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add2~6_combout\ = (\inst|pixel_row\(4) & (!\inst11|Add2~5\)) # (!\inst|pixel_row\(4) & ((\inst11|Add2~5\) # (GND)))
-- \inst11|Add2~7\ = CARRY((!\inst11|Add2~5\) # (!\inst|pixel_row\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_row\(4),
	datad => VCC,
	cin => \inst11|Add2~5\,
	combout => \inst11|Add2~6_combout\,
	cout => \inst11|Add2~7\);

-- Location: LCCOMB_X27_Y21_N18
\inst11|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add2~8_combout\ = (\inst|pixel_row\(5) & (\inst11|Add2~7\ $ (GND))) # (!\inst|pixel_row\(5) & (!\inst11|Add2~7\ & VCC))
-- \inst11|Add2~9\ = CARRY((\inst|pixel_row\(5) & !\inst11|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_row\(5),
	datad => VCC,
	cin => \inst11|Add2~7\,
	combout => \inst11|Add2~8_combout\,
	cout => \inst11|Add2~9\);

-- Location: LCCOMB_X27_Y21_N22
\inst11|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add2~12_combout\ = (\inst|pixel_row\(7) & (\inst11|Add2~11\ $ (GND))) # (!\inst|pixel_row\(7) & (!\inst11|Add2~11\ & VCC))
-- \inst11|Add2~13\ = CARRY((\inst|pixel_row\(7) & !\inst11|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(7),
	datad => VCC,
	cin => \inst11|Add2~11\,
	combout => \inst11|Add2~12_combout\,
	cout => \inst11|Add2~13\);

-- Location: LCCOMB_X27_Y21_N24
\inst11|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add2~14_combout\ = (\inst|pixel_row\(8) & (!\inst11|Add2~13\)) # (!\inst|pixel_row\(8) & ((\inst11|Add2~13\) # (GND)))
-- \inst11|Add2~15\ = CARRY((!\inst11|Add2~13\) # (!\inst|pixel_row\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(8),
	datad => VCC,
	cin => \inst11|Add2~13\,
	combout => \inst11|Add2~14_combout\,
	cout => \inst11|Add2~15\);

-- Location: LCCOMB_X27_Y21_N26
\inst11|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add2~16_combout\ = !\inst11|Add2~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst11|Add2~15\,
	combout => \inst11|Add2~16_combout\);

-- Location: LCCOMB_X26_Y21_N0
\inst11|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan2~1_cout\ = CARRY((\inst11|tank_y_pos\(1) & !\inst11|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_y_pos\(1),
	datab => \inst11|Add2~0_combout\,
	datad => VCC,
	cout => \inst11|LessThan2~1_cout\);

-- Location: LCCOMB_X26_Y21_N2
\inst11|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan2~3_cout\ = CARRY((\inst11|tank_y_pos\(2) & (\inst11|Add2~2_combout\ & !\inst11|LessThan2~1_cout\)) # (!\inst11|tank_y_pos\(2) & ((\inst11|Add2~2_combout\) # (!\inst11|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_y_pos\(2),
	datab => \inst11|Add2~2_combout\,
	datad => VCC,
	cin => \inst11|LessThan2~1_cout\,
	cout => \inst11|LessThan2~3_cout\);

-- Location: LCCOMB_X26_Y21_N4
\inst11|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan2~5_cout\ = CARRY((\inst11|tank_y_pos\(3) & (!\inst11|Add2~4_combout\ & !\inst11|LessThan2~3_cout\)) # (!\inst11|tank_y_pos\(3) & ((!\inst11|LessThan2~3_cout\) # (!\inst11|Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_y_pos\(3),
	datab => \inst11|Add2~4_combout\,
	datad => VCC,
	cin => \inst11|LessThan2~3_cout\,
	cout => \inst11|LessThan2~5_cout\);

-- Location: LCCOMB_X26_Y21_N6
\inst11|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan2~7_cout\ = CARRY((\inst11|tank_y_pos\(4) & (\inst11|Add2~6_combout\ & !\inst11|LessThan2~5_cout\)) # (!\inst11|tank_y_pos\(4) & ((\inst11|Add2~6_combout\) # (!\inst11|LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_y_pos\(4),
	datab => \inst11|Add2~6_combout\,
	datad => VCC,
	cin => \inst11|LessThan2~5_cout\,
	cout => \inst11|LessThan2~7_cout\);

-- Location: LCCOMB_X26_Y21_N8
\inst11|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan2~9_cout\ = CARRY((\inst11|tank_y_pos\(5) & (!\inst11|Add2~8_combout\ & !\inst11|LessThan2~7_cout\)) # (!\inst11|tank_y_pos\(5) & ((!\inst11|LessThan2~7_cout\) # (!\inst11|Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_y_pos\(5),
	datab => \inst11|Add2~8_combout\,
	datad => VCC,
	cin => \inst11|LessThan2~7_cout\,
	cout => \inst11|LessThan2~9_cout\);

-- Location: LCCOMB_X26_Y21_N10
\inst11|LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan2~11_cout\ = CARRY((\inst11|Add2~10_combout\ & ((!\inst11|LessThan2~9_cout\) # (!\inst11|tank_y_pos\(6)))) # (!\inst11|Add2~10_combout\ & (!\inst11|tank_y_pos\(6) & !\inst11|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add2~10_combout\,
	datab => \inst11|tank_y_pos\(6),
	datad => VCC,
	cin => \inst11|LessThan2~9_cout\,
	cout => \inst11|LessThan2~11_cout\);

-- Location: LCCOMB_X26_Y21_N12
\inst11|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan2~13_cout\ = CARRY((\inst11|tank_y_pos\(7) & ((!\inst11|LessThan2~11_cout\) # (!\inst11|Add2~12_combout\))) # (!\inst11|tank_y_pos\(7) & (!\inst11|Add2~12_combout\ & !\inst11|LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_y_pos\(7),
	datab => \inst11|Add2~12_combout\,
	datad => VCC,
	cin => \inst11|LessThan2~11_cout\,
	cout => \inst11|LessThan2~13_cout\);

-- Location: LCCOMB_X26_Y21_N14
\inst11|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan2~15_cout\ = CARRY((\inst11|tank_y_pos\(8) & (\inst11|Add2~14_combout\ & !\inst11|LessThan2~13_cout\)) # (!\inst11|tank_y_pos\(8) & ((\inst11|Add2~14_combout\) # (!\inst11|LessThan2~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_y_pos\(8),
	datab => \inst11|Add2~14_combout\,
	datad => VCC,
	cin => \inst11|LessThan2~13_cout\,
	cout => \inst11|LessThan2~15_cout\);

-- Location: LCCOMB_X26_Y21_N16
\inst11|LessThan2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan2~16_combout\ = (\inst11|tank_y_pos\(9) & ((!\inst11|Add2~16_combout\) # (!\inst11|LessThan2~15_cout\))) # (!\inst11|tank_y_pos\(9) & (!\inst11|LessThan2~15_cout\ & !\inst11|Add2~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_y_pos\(9),
	datad => \inst11|Add2~16_combout\,
	cin => \inst11|LessThan2~15_cout\,
	combout => \inst11|LessThan2~16_combout\);

-- Location: LCCOMB_X26_Y20_N26
\inst15|process_0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|process_0~12_combout\ = (!\inst11|Add3~18_combout\ & (!\inst11|LessThan2~16_combout\ & !\inst11|Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Add3~18_combout\,
	datac => \inst11|LessThan2~16_combout\,
	datad => \inst11|Add1~18_combout\,
	combout => \inst15|process_0~12_combout\);

-- Location: LCCOMB_X26_Y20_N4
\inst11|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan3~1_cout\ = CARRY(\inst|pixel_row\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(0),
	datad => VCC,
	cout => \inst11|LessThan3~1_cout\);

-- Location: LCCOMB_X26_Y20_N6
\inst11|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan3~3_cout\ = CARRY((\inst11|Add3~0_combout\ & ((!\inst11|LessThan3~1_cout\) # (!\inst|pixel_row\(1)))) # (!\inst11|Add3~0_combout\ & (!\inst|pixel_row\(1) & !\inst11|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add3~0_combout\,
	datab => \inst|pixel_row\(1),
	datad => VCC,
	cin => \inst11|LessThan3~1_cout\,
	cout => \inst11|LessThan3~3_cout\);

-- Location: LCCOMB_X26_Y20_N8
\inst11|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan3~5_cout\ = CARRY((\inst|pixel_row\(2) & ((!\inst11|LessThan3~3_cout\) # (!\inst11|Add3~2_combout\))) # (!\inst|pixel_row\(2) & (!\inst11|Add3~2_combout\ & !\inst11|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(2),
	datab => \inst11|Add3~2_combout\,
	datad => VCC,
	cin => \inst11|LessThan3~3_cout\,
	cout => \inst11|LessThan3~5_cout\);

-- Location: LCCOMB_X26_Y20_N10
\inst11|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan3~7_cout\ = CARRY((\inst|pixel_row\(3) & (\inst11|Add3~4_combout\ & !\inst11|LessThan3~5_cout\)) # (!\inst|pixel_row\(3) & ((\inst11|Add3~4_combout\) # (!\inst11|LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(3),
	datab => \inst11|Add3~4_combout\,
	datad => VCC,
	cin => \inst11|LessThan3~5_cout\,
	cout => \inst11|LessThan3~7_cout\);

-- Location: LCCOMB_X26_Y20_N12
\inst11|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan3~9_cout\ = CARRY((\inst11|Add3~6_combout\ & (\inst|pixel_row\(4) & !\inst11|LessThan3~7_cout\)) # (!\inst11|Add3~6_combout\ & ((\inst|pixel_row\(4)) # (!\inst11|LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add3~6_combout\,
	datab => \inst|pixel_row\(4),
	datad => VCC,
	cin => \inst11|LessThan3~7_cout\,
	cout => \inst11|LessThan3~9_cout\);

-- Location: LCCOMB_X26_Y20_N14
\inst11|LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan3~11_cout\ = CARRY((\inst11|Add3~8_combout\ & ((!\inst11|LessThan3~9_cout\) # (!\inst|pixel_row\(5)))) # (!\inst11|Add3~8_combout\ & (!\inst|pixel_row\(5) & !\inst11|LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add3~8_combout\,
	datab => \inst|pixel_row\(5),
	datad => VCC,
	cin => \inst11|LessThan3~9_cout\,
	cout => \inst11|LessThan3~11_cout\);

-- Location: LCCOMB_X26_Y20_N16
\inst11|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan3~13_cout\ = CARRY((\inst|pixel_row\(6) & ((!\inst11|LessThan3~11_cout\) # (!\inst11|Add3~10_combout\))) # (!\inst|pixel_row\(6) & (!\inst11|Add3~10_combout\ & !\inst11|LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(6),
	datab => \inst11|Add3~10_combout\,
	datad => VCC,
	cin => \inst11|LessThan3~11_cout\,
	cout => \inst11|LessThan3~13_cout\);

-- Location: LCCOMB_X26_Y20_N18
\inst11|LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan3~15_cout\ = CARRY((\inst11|Add3~12_combout\ & ((!\inst11|LessThan3~13_cout\) # (!\inst|pixel_row\(7)))) # (!\inst11|Add3~12_combout\ & (!\inst|pixel_row\(7) & !\inst11|LessThan3~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add3~12_combout\,
	datab => \inst|pixel_row\(7),
	datad => VCC,
	cin => \inst11|LessThan3~13_cout\,
	cout => \inst11|LessThan3~15_cout\);

-- Location: LCCOMB_X26_Y20_N20
\inst11|LessThan3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan3~16_combout\ = (\inst|pixel_row\(8) & ((!\inst11|Add3~14_combout\) # (!\inst11|LessThan3~15_cout\))) # (!\inst|pixel_row\(8) & (!\inst11|LessThan3~15_cout\ & !\inst11|Add3~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_row\(8),
	datad => \inst11|Add3~14_combout\,
	cin => \inst11|LessThan3~15_cout\,
	combout => \inst11|LessThan3~16_combout\);

-- Location: LCCOMB_X22_Y20_N10
\inst11|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~1_cout\ = CARRY((!\inst|pixel_column\(0) & \inst11|tank_x_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(0),
	datab => \inst11|tank_x_pos\(0),
	datad => VCC,
	cout => \inst11|LessThan0~1_cout\);

-- Location: LCCOMB_X22_Y20_N12
\inst11|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~3_cout\ = CARRY((\inst11|tank_x_pos\(1) & (\inst11|Add0~0_combout\ & !\inst11|LessThan0~1_cout\)) # (!\inst11|tank_x_pos\(1) & ((\inst11|Add0~0_combout\) # (!\inst11|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_pos\(1),
	datab => \inst11|Add0~0_combout\,
	datad => VCC,
	cin => \inst11|LessThan0~1_cout\,
	cout => \inst11|LessThan0~3_cout\);

-- Location: LCCOMB_X22_Y20_N14
\inst11|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~5_cout\ = CARRY((\inst11|Add0~2_combout\ & (\inst11|tank_x_pos\(2) & !\inst11|LessThan0~3_cout\)) # (!\inst11|Add0~2_combout\ & ((\inst11|tank_x_pos\(2)) # (!\inst11|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~2_combout\,
	datab => \inst11|tank_x_pos\(2),
	datad => VCC,
	cin => \inst11|LessThan0~3_cout\,
	cout => \inst11|LessThan0~5_cout\);

-- Location: LCCOMB_X22_Y20_N16
\inst11|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~7_cout\ = CARRY((\inst11|tank_x_pos\(3) & (\inst11|Add0~4_combout\ & !\inst11|LessThan0~5_cout\)) # (!\inst11|tank_x_pos\(3) & ((\inst11|Add0~4_combout\) # (!\inst11|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_pos\(3),
	datab => \inst11|Add0~4_combout\,
	datad => VCC,
	cin => \inst11|LessThan0~5_cout\,
	cout => \inst11|LessThan0~7_cout\);

-- Location: LCCOMB_X22_Y20_N18
\inst11|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~9_cout\ = CARRY((\inst11|tank_x_pos\(4) & ((!\inst11|LessThan0~7_cout\) # (!\inst11|Add0~6_combout\))) # (!\inst11|tank_x_pos\(4) & (!\inst11|Add0~6_combout\ & !\inst11|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_pos\(4),
	datab => \inst11|Add0~6_combout\,
	datad => VCC,
	cin => \inst11|LessThan0~7_cout\,
	cout => \inst11|LessThan0~9_cout\);

-- Location: LCCOMB_X22_Y20_N20
\inst11|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~11_cout\ = CARRY((\inst11|tank_x_pos\(5) & (\inst11|Add0~8_combout\ & !\inst11|LessThan0~9_cout\)) # (!\inst11|tank_x_pos\(5) & ((\inst11|Add0~8_combout\) # (!\inst11|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_pos\(5),
	datab => \inst11|Add0~8_combout\,
	datad => VCC,
	cin => \inst11|LessThan0~9_cout\,
	cout => \inst11|LessThan0~11_cout\);

-- Location: LCCOMB_X22_Y20_N22
\inst11|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~13_cout\ = CARRY((\inst11|Add0~10_combout\ & (\inst11|tank_x_pos\(6) & !\inst11|LessThan0~11_cout\)) # (!\inst11|Add0~10_combout\ & ((\inst11|tank_x_pos\(6)) # (!\inst11|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~10_combout\,
	datab => \inst11|tank_x_pos\(6),
	datad => VCC,
	cin => \inst11|LessThan0~11_cout\,
	cout => \inst11|LessThan0~13_cout\);

-- Location: LCCOMB_X22_Y20_N24
\inst11|LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~15_cout\ = CARRY((\inst11|Add0~12_combout\ & ((!\inst11|LessThan0~13_cout\) # (!\inst11|tank_x_pos\(7)))) # (!\inst11|Add0~12_combout\ & (!\inst11|tank_x_pos\(7) & !\inst11|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~12_combout\,
	datab => \inst11|tank_x_pos\(7),
	datad => VCC,
	cin => \inst11|LessThan0~13_cout\,
	cout => \inst11|LessThan0~15_cout\);

-- Location: LCCOMB_X22_Y20_N26
\inst11|LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~17_cout\ = CARRY((\inst11|tank_x_pos\(8) & ((!\inst11|LessThan0~15_cout\) # (!\inst11|Add0~14_combout\))) # (!\inst11|tank_x_pos\(8) & (!\inst11|Add0~14_combout\ & !\inst11|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_pos\(8),
	datab => \inst11|Add0~14_combout\,
	datad => VCC,
	cin => \inst11|LessThan0~15_cout\,
	cout => \inst11|LessThan0~17_cout\);

-- Location: LCCOMB_X22_Y20_N28
\inst11|LessThan0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~19_cout\ = CARRY((\inst11|Add0~16_combout\ & ((!\inst11|LessThan0~17_cout\) # (!\inst11|tank_x_pos\(9)))) # (!\inst11|Add0~16_combout\ & (!\inst11|tank_x_pos\(9) & !\inst11|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~16_combout\,
	datab => \inst11|tank_x_pos\(9),
	datad => VCC,
	cin => \inst11|LessThan0~17_cout\,
	cout => \inst11|LessThan0~19_cout\);

-- Location: LCCOMB_X22_Y20_N30
\inst11|LessThan0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~20_combout\ = (\inst11|tank_x_pos\(10) & ((!\inst11|Add0~18_combout\) # (!\inst11|LessThan0~19_cout\))) # (!\inst11|tank_x_pos\(10) & (!\inst11|LessThan0~19_cout\ & !\inst11|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|tank_x_pos\(10),
	datad => \inst11|Add0~18_combout\,
	cin => \inst11|LessThan0~19_cout\,
	combout => \inst11|LessThan0~20_combout\);

-- Location: LCCOMB_X23_Y20_N0
\inst11|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan1~1_cout\ = CARRY((!\inst11|tank_x_pos\(0) & \inst|pixel_column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_x_pos\(0),
	datab => \inst|pixel_column\(0),
	datad => VCC,
	cout => \inst11|LessThan1~1_cout\);

-- Location: LCCOMB_X23_Y20_N2
\inst11|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan1~3_cout\ = CARRY((\inst|pixel_column\(1) & (\inst11|Add1~0_combout\ & !\inst11|LessThan1~1_cout\)) # (!\inst|pixel_column\(1) & ((\inst11|Add1~0_combout\) # (!\inst11|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(1),
	datab => \inst11|Add1~0_combout\,
	datad => VCC,
	cin => \inst11|LessThan1~1_cout\,
	cout => \inst11|LessThan1~3_cout\);

-- Location: LCCOMB_X23_Y20_N4
\inst11|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan1~5_cout\ = CARRY((\inst11|Add1~2_combout\ & (\inst|pixel_column\(2) & !\inst11|LessThan1~3_cout\)) # (!\inst11|Add1~2_combout\ & ((\inst|pixel_column\(2)) # (!\inst11|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~2_combout\,
	datab => \inst|pixel_column\(2),
	datad => VCC,
	cin => \inst11|LessThan1~3_cout\,
	cout => \inst11|LessThan1~5_cout\);

-- Location: LCCOMB_X23_Y20_N6
\inst11|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan1~7_cout\ = CARRY((\inst|pixel_column\(3) & (\inst11|Add1~4_combout\ & !\inst11|LessThan1~5_cout\)) # (!\inst|pixel_column\(3) & ((\inst11|Add1~4_combout\) # (!\inst11|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(3),
	datab => \inst11|Add1~4_combout\,
	datad => VCC,
	cin => \inst11|LessThan1~5_cout\,
	cout => \inst11|LessThan1~7_cout\);

-- Location: LCCOMB_X23_Y20_N8
\inst11|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan1~9_cout\ = CARRY((\inst11|Add1~6_combout\ & (\inst|pixel_column\(4) & !\inst11|LessThan1~7_cout\)) # (!\inst11|Add1~6_combout\ & ((\inst|pixel_column\(4)) # (!\inst11|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~6_combout\,
	datab => \inst|pixel_column\(4),
	datad => VCC,
	cin => \inst11|LessThan1~7_cout\,
	cout => \inst11|LessThan1~9_cout\);

-- Location: LCCOMB_X23_Y20_N10
\inst11|LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan1~11_cout\ = CARRY((\inst|pixel_column\(5) & (\inst11|Add1~8_combout\ & !\inst11|LessThan1~9_cout\)) # (!\inst|pixel_column\(5) & ((\inst11|Add1~8_combout\) # (!\inst11|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(5),
	datab => \inst11|Add1~8_combout\,
	datad => VCC,
	cin => \inst11|LessThan1~9_cout\,
	cout => \inst11|LessThan1~11_cout\);

-- Location: LCCOMB_X23_Y20_N12
\inst11|LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan1~13_cout\ = CARRY((\inst11|Add1~10_combout\ & (\inst|pixel_column\(6) & !\inst11|LessThan1~11_cout\)) # (!\inst11|Add1~10_combout\ & ((\inst|pixel_column\(6)) # (!\inst11|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~10_combout\,
	datab => \inst|pixel_column\(6),
	datad => VCC,
	cin => \inst11|LessThan1~11_cout\,
	cout => \inst11|LessThan1~13_cout\);

-- Location: LCCOMB_X23_Y20_N14
\inst11|LessThan1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan1~15_cout\ = CARRY((\inst|pixel_column\(7) & (\inst11|Add1~12_combout\ & !\inst11|LessThan1~13_cout\)) # (!\inst|pixel_column\(7) & ((\inst11|Add1~12_combout\) # (!\inst11|LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(7),
	datab => \inst11|Add1~12_combout\,
	datad => VCC,
	cin => \inst11|LessThan1~13_cout\,
	cout => \inst11|LessThan1~15_cout\);

-- Location: LCCOMB_X23_Y20_N16
\inst11|LessThan1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan1~17_cout\ = CARRY((\inst11|Add1~14_combout\ & (\inst|pixel_column\(8) & !\inst11|LessThan1~15_cout\)) # (!\inst11|Add1~14_combout\ & ((\inst|pixel_column\(8)) # (!\inst11|LessThan1~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~14_combout\,
	datab => \inst|pixel_column\(8),
	datad => VCC,
	cin => \inst11|LessThan1~15_cout\,
	cout => \inst11|LessThan1~17_cout\);

-- Location: LCCOMB_X23_Y20_N18
\inst11|LessThan1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan1~18_combout\ = (\inst|pixel_column\(9) & ((\inst11|LessThan1~17_cout\) # (!\inst11|Add1~16_combout\))) # (!\inst|pixel_column\(9) & (\inst11|LessThan1~17_cout\ & !\inst11|Add1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(9),
	datad => \inst11|Add1~16_combout\,
	cin => \inst11|LessThan1~17_cout\,
	combout => \inst11|LessThan1~18_combout\);

-- Location: LCCOMB_X26_Y20_N0
\inst15|process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|process_0~11_combout\ = (!\inst11|LessThan0~20_combout\ & (!\inst11|LessThan1~18_combout\ & ((\inst11|Add3~16_combout\) # (!\inst11|LessThan3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add3~16_combout\,
	datab => \inst11|LessThan3~16_combout\,
	datac => \inst11|LessThan0~20_combout\,
	datad => \inst11|LessThan1~18_combout\,
	combout => \inst15|process_0~11_combout\);

-- Location: LCCOMB_X26_Y20_N2
\inst15|process_0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|process_0~13_combout\ = (!\inst11|tank_y_pos\(10) & (\inst15|process_0~6_combout\ & (\inst15|process_0~12_combout\ & \inst15|process_0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tank_y_pos\(10),
	datab => \inst15|process_0~6_combout\,
	datac => \inst15|process_0~12_combout\,
	datad => \inst15|process_0~11_combout\,
	combout => \inst15|process_0~13_combout\);

-- Location: LCCOMB_X27_Y20_N30
\inst|blue_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|blue_out~1_combout\ = (\inst|video_on~combout\ & ((\inst12|Mux0~4_combout\) # ((\inst|blue_out~0_combout\ & !\inst15|process_0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|video_on~combout\,
	datab => \inst|blue_out~0_combout\,
	datac => \inst12|Mux0~4_combout\,
	datad => \inst15|process_0~13_combout\,
	combout => \inst|blue_out~1_combout\);

-- Location: FF_X27_Y20_N5
\inst|blue_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst|blue_out~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|blue_out\(3));

-- Location: FF_X27_Y20_N31
\inst|blue_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|blue_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|blue_out\(2));

-- Location: LCCOMB_X24_Y20_N12
\inst12|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Mux0~0_combout\ = (\inst14|font_col\(0) & (((\inst14|font_col\(1))))) # (!\inst14|font_col\(0) & ((\inst14|font_col\(1) & (\inst12|altsyncram_component|auto_generated|q_a\(1))) # (!\inst14|font_col\(1) & 
-- ((\inst12|altsyncram_component|auto_generated|q_a\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|font_col\(0),
	datab => \inst12|altsyncram_component|auto_generated|q_a\(1),
	datac => \inst12|altsyncram_component|auto_generated|q_a\(3),
	datad => \inst14|font_col\(1),
	combout => \inst12|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y20_N30
\inst12|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Mux0~1_combout\ = (\inst14|font_col\(0) & ((\inst12|Mux0~0_combout\ & ((\inst12|altsyncram_component|auto_generated|q_a\(0)))) # (!\inst12|Mux0~0_combout\ & (\inst12|altsyncram_component|auto_generated|q_a\(2))))) # (!\inst14|font_col\(0) & 
-- (((\inst12|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|font_col\(0),
	datab => \inst12|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst12|altsyncram_component|auto_generated|q_a\(0),
	datad => \inst12|Mux0~0_combout\,
	combout => \inst12|Mux0~1_combout\);

-- Location: LCCOMB_X24_Y20_N4
\inst|blue_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|blue_out~2_combout\ = (\inst|video_on~combout\ & ((\inst14|font_col\(2) & ((\inst12|Mux0~1_combout\))) # (!\inst14|font_col\(2) & (\inst12|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|video_on~combout\,
	datab => \inst14|font_col\(2),
	datac => \inst12|Mux0~3_combout\,
	datad => \inst12|Mux0~1_combout\,
	combout => \inst|blue_out~2_combout\);

-- Location: FF_X24_Y20_N5
\inst|blue_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|blue_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|blue_out\(1));

-- Location: LCCOMB_X24_Y20_N18
\inst|blue_out[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|blue_out[0]~feeder_combout\ = \inst|blue_out~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|blue_out~2_combout\,
	combout => \inst|blue_out[0]~feeder_combout\);

-- Location: FF_X24_Y20_N19
\inst|blue_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|blue_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|blue_out\(0));

-- Location: FF_X29_Y20_N15
\inst|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst|LessThan6~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|video_on_h~q\);

-- Location: LCCOMB_X27_Y20_N26
\inst|video_on_v~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|video_on_v~feeder_combout\ = \inst|LessThan7~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|LessThan7~4_combout\,
	combout => \inst|video_on_v~feeder_combout\);

-- Location: FF_X27_Y20_N27
\inst|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|video_on_v~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|video_on_v~q\);

-- Location: LCCOMB_X24_Y20_N6
\inst|video_on\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|video_on~combout\ = (\inst|video_on_h~q\ & \inst|video_on_v~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|video_on_h~q\,
	datad => \inst|video_on_v~q\,
	combout => \inst|video_on~combout\);

-- Location: LCCOMB_X28_Y20_N28
\inst|green_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|green_out~0_combout\ = (\inst|video_on~combout\ & ((\inst15|process_0~7_combout\) # ((\inst15|process_0~10_combout\) # (\inst12|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|process_0~7_combout\,
	datab => \inst|video_on~combout\,
	datac => \inst15|process_0~10_combout\,
	datad => \inst12|Mux0~4_combout\,
	combout => \inst|green_out~0_combout\);

-- Location: FF_X28_Y20_N29
\inst|green_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|green_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|green_out\(3));

-- Location: LCCOMB_X28_Y20_N30
\inst|green_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|green_out~1_combout\ = (\inst|video_on~combout\ & ((\inst12|Mux0~4_combout\) # ((\inst15|process_0~7_combout\ & !\inst15|process_0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|process_0~7_combout\,
	datab => \inst|video_on~combout\,
	datac => \inst15|process_0~10_combout\,
	datad => \inst12|Mux0~4_combout\,
	combout => \inst|green_out~1_combout\);

-- Location: FF_X28_Y20_N31
\inst|green_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|green_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|green_out\(2));

-- Location: FF_X24_Y20_N17
\inst|green_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst|blue_out~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|green_out\(1));

-- Location: FF_X24_Y20_N27
\inst|green_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst|blue_out~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|green_out\(0));

-- Location: LCCOMB_X27_Y20_N28
\inst|red_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|red_out~2_combout\ = (\inst|video_on~combout\ & ((\inst12|Mux0~4_combout\) # ((\inst15|process_0~13_combout\ & \inst|blue_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|process_0~13_combout\,
	datab => \inst|video_on~combout\,
	datac => \inst12|Mux0~4_combout\,
	datad => \inst|blue_out~0_combout\,
	combout => \inst|red_out~2_combout\);

-- Location: FF_X27_Y20_N29
\inst|red_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|red_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|red_out\(3));

-- Location: LCCOMB_X24_Y20_N8
\inst|red_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|red_out~3_combout\ = (\inst|video_on_v~q\ & (\inst|video_on_h~q\ & ((\inst15|process_0~10_combout\) # (\inst12|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|video_on_v~q\,
	datab => \inst|video_on_h~q\,
	datac => \inst15|process_0~10_combout\,
	datad => \inst12|Mux0~4_combout\,
	combout => \inst|red_out~3_combout\);

-- Location: FF_X24_Y20_N25
\inst|red_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst|red_out~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|red_out\(2));

-- Location: LCCOMB_X24_Y20_N14
\inst|red_out[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|red_out[1]~feeder_combout\ = \inst|red_out~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|red_out~3_combout\,
	combout => \inst|red_out[1]~feeder_combout\);

-- Location: FF_X24_Y20_N15
\inst|red_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|red_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|red_out\(1));

-- Location: FF_X24_Y20_N9
\inst|red_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|red_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|red_out\(0));

-- Location: FF_X28_Y26_N5
\inst99|segment7[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst11|Equal0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst99|segment7\(0));

-- Location: LCCOMB_X29_Y19_N2
\inst11|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Equal0~1_combout\ = (!\inst15|s_game_mode\(0) & \inst15|s_game_mode\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|s_game_mode\(0),
	datad => \inst15|s_game_mode\(1),
	combout => \inst11|Equal0~1_combout\);

-- Location: LCCOMB_X27_Y26_N0
\inst99|segment7[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst99|segment7[2]~feeder_combout\ = \inst11|Equal0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Equal0~1_combout\,
	combout => \inst99|segment7[2]~feeder_combout\);

-- Location: FF_X27_Y26_N1
\inst99|segment7[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst99|segment7[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst99|segment7\(2));

-- Location: FF_X28_Y26_N3
\inst99|segment7[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst11|Equal0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst99|segment7\(3));

-- Location: LCCOMB_X27_Y26_N2
\inst99|segment7[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst99|segment7[4]~feeder_combout\ = \inst15|s_game_mode\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst15|s_game_mode\(0),
	combout => \inst99|segment7[4]~feeder_combout\);

-- Location: FF_X27_Y26_N3
\inst99|segment7[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst99|segment7[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst99|segment7\(4));

-- Location: LCCOMB_X29_Y23_N12
\inst99|segment7[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst99|segment7[5]~feeder_combout\ = \inst14|Equal0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|Equal0~0_combout\,
	combout => \inst99|segment7[5]~feeder_combout\);

-- Location: FF_X29_Y23_N13
\inst99|segment7[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst99|segment7[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst99|segment7\(5));

-- Location: LCCOMB_X28_Y15_N16
\inst99|segment7[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst99|segment7[6]~0_combout\ = !\inst15|s_game_mode\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|s_game_mode\(1),
	combout => \inst99|segment7[6]~0_combout\);

-- Location: LCCOMB_X27_Y15_N8
\inst99|segment7[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst99|segment7[6]~feeder_combout\ = \inst99|segment7[6]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst99|segment7[6]~0_combout\,
	combout => \inst99|segment7[6]~feeder_combout\);

-- Location: FF_X27_Y15_N9
\inst99|segment7[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst99|segment7[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst99|segment7\(6));

ww_seg0_dec <= \seg0_dec~output_o\;

ww_seg1_dec <= \seg1_dec~output_o\;

ww_horiz_sync_out <= \horiz_sync_out~output_o\;

ww_vert_sync_out <= \vert_sync_out~output_o\;

ww_blue(3) <= \blue[3]~output_o\;

ww_blue(2) <= \blue[2]~output_o\;

ww_blue(1) <= \blue[1]~output_o\;

ww_blue(0) <= \blue[0]~output_o\;

ww_green(3) <= \green[3]~output_o\;

ww_green(2) <= \green[2]~output_o\;

ww_green(1) <= \green[1]~output_o\;

ww_green(0) <= \green[0]~output_o\;

ww_red(3) <= \red[3]~output_o\;

ww_red(2) <= \red[2]~output_o\;

ww_red(1) <= \red[1]~output_o\;

ww_red(0) <= \red[0]~output_o\;

ww_seg0(0) <= \seg0[0]~output_o\;

ww_seg0(1) <= \seg0[1]~output_o\;

ww_seg0(2) <= \seg0[2]~output_o\;

ww_seg0(3) <= \seg0[3]~output_o\;

ww_seg0(4) <= \seg0[4]~output_o\;

ww_seg0(5) <= \seg0[5]~output_o\;

ww_seg0(6) <= \seg0[6]~output_o\;

mouse_data <= \mouse_data~output_o\;

mouse_clk <= \mouse_clk~output_o\;
END structure;


