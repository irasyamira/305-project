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

-- DATE "05/13/2017 16:14:04"

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
	bt0 : IN std_logic;
	bt1 : IN std_logic;
	vert_sync_out : OUT std_logic;
	red_out : OUT std_logic;
	green_out : OUT std_logic;
	blue_out : OUT std_logic
	);
END mini_project_group09;

-- Design Ports Information
-- seg0_dec	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1_dec	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horiz_sync_out	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw0	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt0	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt1	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vert_sync_out	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red_out	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_out	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue_out	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_data	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_clk	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_bt0 : std_logic;
SIGNAL ww_bt1 : std_logic;
SIGNAL ww_vert_sync_out : std_logic;
SIGNAL ww_red_out : std_logic;
SIGNAL ww_green_out : std_logic;
SIGNAL ww_blue_out : std_logic;
SIGNAL \inst1|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|clock_25Mhz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|Add0~22_combout\ : std_logic;
SIGNAL \inst7|Add0~30_combout\ : std_logic;
SIGNAL \inst7|Add0~54_combout\ : std_logic;
SIGNAL \inst7|Add0~58_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[2]~12_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[4]~16_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[5]~18_combout\ : std_logic;
SIGNAL \inst1|MOUSE_CLK_FILTER~0_combout\ : std_logic;
SIGNAL \inst1|MOUSE_CLK_FILTER~1_combout\ : std_logic;
SIGNAL \inst1|MOUSE_CLK_FILTER~2_combout\ : std_logic;
SIGNAL \inst1|MOUSE_CLK_FILTER~3_combout\ : std_logic;
SIGNAL \inst1|INCNT~2_combout\ : std_logic;
SIGNAL \inst|process_0~0_combout\ : std_logic;
SIGNAL \inst7|Equal0~2_combout\ : std_logic;
SIGNAL \inst7|Equal0~8_combout\ : std_logic;
SIGNAL \inst1|mouse_state.WAIT_CMD_ACK~q\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[0]~30_combout\ : std_logic;
SIGNAL \inst1|Selector4~0_combout\ : std_logic;
SIGNAL \sw0~input_o\ : std_logic;
SIGNAL \bt0~input_o\ : std_logic;
SIGNAL \bt1~input_o\ : std_logic;
SIGNAL \mouse_clk~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|filter[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|filter[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|filter[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|filter[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|filter[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|filter[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|filter[0]~feeder_combout\ : std_logic;
SIGNAL \mouse_data~output_o\ : std_logic;
SIGNAL \mouse_clk~output_o\ : std_logic;
SIGNAL \seg0_dec~output_o\ : std_logic;
SIGNAL \seg1_dec~output_o\ : std_logic;
SIGNAL \horiz_sync_out~output_o\ : std_logic;
SIGNAL \vert_sync_out~output_o\ : std_logic;
SIGNAL \red_out~output_o\ : std_logic;
SIGNAL \green_out~output_o\ : std_logic;
SIGNAL \blue_out~output_o\ : std_logic;
SIGNAL \inst1|MOUSE_CLK_FILTER~feeder_combout\ : std_logic;
SIGNAL \inst1|MOUSE_CLK_FILTER~q\ : std_logic;
SIGNAL \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|SHIFTOUT[9]~feeder_combout\ : std_logic;
SIGNAL \mouse_data~input_o\ : std_logic;
SIGNAL \inst1|INCNT~0_combout\ : std_logic;
SIGNAL \inst1|READ_CHAR~0_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[1]~10_combout\ : std_logic;
SIGNAL \inst1|Selector0~0_combout\ : std_logic;
SIGNAL \inst1|mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[1]~11\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[2]~13\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[3]~14_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[3]~15\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[4]~17\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[5]~19\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[6]~20_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[6]~21\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[7]~22_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[7]~23\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[8]~24_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[8]~25\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[9]~26_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[9]~27\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[10]~28_combout\ : std_logic;
SIGNAL \inst1|Selector1~0_combout\ : std_logic;
SIGNAL \inst1|mouse_state.LOAD_COMMAND~q\ : std_logic;
SIGNAL \inst1|mouse_state.LOAD_COMMAND2~feeder_combout\ : std_logic;
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
SIGNAL \inst1|READ_CHAR~q\ : std_logic;
SIGNAL \inst1|INCNT[3]~1_combout\ : std_logic;
SIGNAL \inst1|INCNT~3_combout\ : std_logic;
SIGNAL \inst1|INCNT~4_combout\ : std_logic;
SIGNAL \inst1|LessThan1~0_combout\ : std_logic;
SIGNAL \inst1|iready_set~0_combout\ : std_logic;
SIGNAL \inst1|iready_set~q\ : std_logic;
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
SIGNAL \inst1|MOUSE_DATA_BUF~q\ : std_logic;
SIGNAL \inst1|WideOr4~combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[8]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[0]~0_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR1[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_COUNT[1]~0_combout\ : std_logic;
SIGNAL \inst1|PACKET_COUNT[1]~1_combout\ : std_logic;
SIGNAL \inst1|PACKET_COUNT[0]~2_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR1[0]~0_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR1[0]~1_combout\ : std_logic;
SIGNAL \inst1|left_button~0_combout\ : std_logic;
SIGNAL \inst1|left_button~q\ : std_logic;
SIGNAL \inst1|PACKET_CHAR1[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|right_button~feeder_combout\ : std_logic;
SIGNAL \inst1|right_button~q\ : std_logic;
SIGNAL \inst7|Add0~0_combout\ : std_logic;
SIGNAL \inst7|Add0~1\ : std_logic;
SIGNAL \inst7|Add0~2_combout\ : std_logic;
SIGNAL \inst7|i~0_combout\ : std_logic;
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
SIGNAL \inst7|Add0~45\ : std_logic;
SIGNAL \inst7|Add0~46_combout\ : std_logic;
SIGNAL \inst7|Add0~47\ : std_logic;
SIGNAL \inst7|Add0~48_combout\ : std_logic;
SIGNAL \inst7|Add0~49\ : std_logic;
SIGNAL \inst7|Add0~50_combout\ : std_logic;
SIGNAL \inst7|Add0~51\ : std_logic;
SIGNAL \inst7|Add0~52_combout\ : std_logic;
SIGNAL \inst7|Add0~53\ : std_logic;
SIGNAL \inst7|Add0~55\ : std_logic;
SIGNAL \inst7|Add0~56_combout\ : std_logic;
SIGNAL \inst7|Add0~57\ : std_logic;
SIGNAL \inst7|Add0~59\ : std_logic;
SIGNAL \inst7|Add0~60_combout\ : std_logic;
SIGNAL \inst7|Add0~61\ : std_logic;
SIGNAL \inst7|Add0~62_combout\ : std_logic;
SIGNAL \inst7|Equal0~9_combout\ : std_logic;
SIGNAL \inst7|Add0~10_combout\ : std_logic;
SIGNAL \inst7|Add0~12_combout\ : std_logic;
SIGNAL \inst7|Equal0~1_combout\ : std_logic;
SIGNAL \inst7|Add0~26_combout\ : std_logic;
SIGNAL \inst7|Equal0~3_combout\ : std_logic;
SIGNAL \inst7|Add0~6_combout\ : std_logic;
SIGNAL \inst7|Equal0~0_combout\ : std_logic;
SIGNAL \inst7|Equal0~4_combout\ : std_logic;
SIGNAL \inst7|Add0~42_combout\ : std_logic;
SIGNAL \inst7|Add0~44_combout\ : std_logic;
SIGNAL \inst7|Equal0~6_combout\ : std_logic;
SIGNAL \inst7|Add0~38_combout\ : std_logic;
SIGNAL \inst7|Equal0~5_combout\ : std_logic;
SIGNAL \inst7|Equal0~7_combout\ : std_logic;
SIGNAL \inst7|Equal0~10_combout\ : std_logic;
SIGNAL \inst7|clock_25Mhz~feeder_combout\ : std_logic;
SIGNAL \inst7|clock_25Mhz~q\ : std_logic;
SIGNAL \inst7|clock_25Mhz~clkctrl_outclk\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|process_0~1_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|process_0~2_combout\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|h_count~1_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|h_count~0_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|h_count~2_combout\ : std_logic;
SIGNAL \inst|process_0~3_combout\ : std_logic;
SIGNAL \inst|horiz_sync~q\ : std_logic;
SIGNAL \inst|horiz_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst|horiz_sync_out~q\ : std_logic;
SIGNAL \inst|Add1~1\ : std_logic;
SIGNAL \inst|Add1~3\ : std_logic;
SIGNAL \inst|Add1~4_combout\ : std_logic;
SIGNAL \inst|process_0~8_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|h_count[10]~feeder_combout\ : std_logic;
SIGNAL \inst|process_0~7_combout\ : std_logic;
SIGNAL \inst|process_0~9_combout\ : std_logic;
SIGNAL \inst|process_0~10_combout\ : std_logic;
SIGNAL \inst|Add1~7\ : std_logic;
SIGNAL \inst|Add1~9\ : std_logic;
SIGNAL \inst|Add1~10_combout\ : std_logic;
SIGNAL \inst|v_count~11_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|Equal1~1_combout\ : std_logic;
SIGNAL \inst|v_count[10]~15_combout\ : std_logic;
SIGNAL \inst|Add1~11\ : std_logic;
SIGNAL \inst|Add1~12_combout\ : std_logic;
SIGNAL \inst|v_count~12_combout\ : std_logic;
SIGNAL \inst|Add1~13\ : std_logic;
SIGNAL \inst|Add1~15\ : std_logic;
SIGNAL \inst|Add1~17\ : std_logic;
SIGNAL \inst|Add1~18_combout\ : std_logic;
SIGNAL \inst|process_0~14_combout\ : std_logic;
SIGNAL \inst|v_count[9]~4_combout\ : std_logic;
SIGNAL \inst|Add1~14_combout\ : std_logic;
SIGNAL \inst|v_count~13_combout\ : std_logic;
SIGNAL \inst|Add1~16_combout\ : std_logic;
SIGNAL \inst|v_count~14_combout\ : std_logic;
SIGNAL \inst|process_0~12_combout\ : std_logic;
SIGNAL \inst|Add1~8_combout\ : std_logic;
SIGNAL \inst|v_count~8_combout\ : std_logic;
SIGNAL \inst|process_0~11_combout\ : std_logic;
SIGNAL \inst|process_0~13_combout\ : std_logic;
SIGNAL \inst|v_count~9_combout\ : std_logic;
SIGNAL \inst|Add1~5\ : std_logic;
SIGNAL \inst|Add1~6_combout\ : std_logic;
SIGNAL \inst|v_count~10_combout\ : std_logic;
SIGNAL \inst|process_0~5_combout\ : std_logic;
SIGNAL \inst|LessThan7~0_combout\ : std_logic;
SIGNAL \inst|Add1~0_combout\ : std_logic;
SIGNAL \inst|v_count~6_combout\ : std_logic;
SIGNAL \inst|Add1~2_combout\ : std_logic;
SIGNAL \inst|v_count~7_combout\ : std_logic;
SIGNAL \inst|process_0~4_combout\ : std_logic;
SIGNAL \inst|process_0~6_combout\ : std_logic;
SIGNAL \inst|vert_sync~q\ : std_logic;
SIGNAL \inst|vert_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst|vert_sync_out~q\ : std_logic;
SIGNAL \inst|Add1~19\ : std_logic;
SIGNAL \inst|Add1~20_combout\ : std_logic;
SIGNAL \inst|v_count[10]~5_combout\ : std_logic;
SIGNAL \inst|LessThan7~1_combout\ : std_logic;
SIGNAL \inst|video_on_v~q\ : std_logic;
SIGNAL \inst|LessThan6~0_combout\ : std_logic;
SIGNAL \inst|video_on_h~q\ : std_logic;
SIGNAL \inst|video_on~combout\ : std_logic;
SIGNAL \inst|red_out~q\ : std_logic;
SIGNAL \inst|green_out~q\ : std_logic;
SIGNAL \inst|blue_out~feeder_combout\ : std_logic;
SIGNAL \inst|blue_out~q\ : std_logic;
SIGNAL \inst|v_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|h_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst1|OUTCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|INCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|SHIFTIN\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst7|i\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|SHIFTOUT\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst1|PACKET_CHAR1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inhibit_wait_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst1|PACKET_COUNT\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|filter\ : std_logic_vector(7 DOWNTO 0);
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
ww_bt0 <= bt0;
ww_bt1 <= bt1;
vert_sync_out <= ww_vert_sync_out;
red_out <= ww_red_out;
green_out <= ww_green_out;
blue_out <= ww_blue_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|MOUSE_CLK_FILTER~q\);

\inst7|clock_25Mhz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst7|clock_25Mhz~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ <= NOT \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\;
\inst1|ALT_INV_send_data~q\ <= NOT \inst1|send_data~q\;
\inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\ <= NOT \inst1|mouse_state.INHIBIT_TRANS~q\;
\inst1|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\ <= NOT \inst1|mouse_state.WAIT_OUTPUT_READY~q\;

-- Location: LCCOMB_X2_Y27_N22
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

-- Location: LCCOMB_X2_Y27_N30
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

-- Location: LCCOMB_X2_Y26_N22
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

-- Location: LCCOMB_X2_Y26_N26
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

-- Location: FF_X38_Y15_N13
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

-- Location: FF_X38_Y15_N11
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

-- Location: FF_X38_Y15_N7
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

-- Location: LCCOMB_X38_Y15_N6
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

-- Location: LCCOMB_X38_Y15_N10
\inst1|inhibit_wait_count[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[4]~16_combout\ = (\inst1|inhibit_wait_count\(4) & (!\inst1|inhibit_wait_count[3]~15\)) # (!\inst1|inhibit_wait_count\(4) & ((\inst1|inhibit_wait_count[3]~15\) # (GND)))
-- \inst1|inhibit_wait_count[4]~17\ = CARRY((!\inst1|inhibit_wait_count[3]~15\) # (!\inst1|inhibit_wait_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inhibit_wait_count\(4),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[3]~15\,
	combout => \inst1|inhibit_wait_count[4]~16_combout\,
	cout => \inst1|inhibit_wait_count[4]~17\);

-- Location: LCCOMB_X38_Y15_N12
\inst1|inhibit_wait_count[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[5]~18_combout\ = (\inst1|inhibit_wait_count\(5) & (\inst1|inhibit_wait_count[4]~17\ $ (GND))) # (!\inst1|inhibit_wait_count\(5) & (!\inst1|inhibit_wait_count[4]~17\ & VCC))
-- \inst1|inhibit_wait_count[5]~19\ = CARRY((\inst1|inhibit_wait_count\(5) & !\inst1|inhibit_wait_count[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inhibit_wait_count\(5),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[4]~17\,
	combout => \inst1|inhibit_wait_count[5]~18_combout\,
	cout => \inst1|inhibit_wait_count[5]~19\);

-- Location: FF_X36_Y16_N7
\inst1|INCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|INCNT~2_combout\,
	ena => \inst1|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|INCNT\(1));

-- Location: FF_X40_Y15_N25
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

-- Location: FF_X40_Y15_N31
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

-- Location: FF_X40_Y15_N13
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

-- Location: LCCOMB_X40_Y15_N12
\inst1|MOUSE_CLK_FILTER~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|MOUSE_CLK_FILTER~0_combout\ = (\inst1|filter\(4) & ((\inst1|filter\(7)) # (!\inst1|filter\(2)))) # (!\inst1|filter\(4) & (!\inst1|filter\(2) & \inst1|filter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|filter\(4),
	datab => \inst1|filter\(2),
	datac => \inst1|filter\(7),
	combout => \inst1|MOUSE_CLK_FILTER~0_combout\);

-- Location: FF_X40_Y15_N15
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

-- Location: FF_X40_Y15_N23
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

-- Location: LCCOMB_X40_Y15_N18
\inst1|MOUSE_CLK_FILTER~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|MOUSE_CLK_FILTER~1_combout\ = (\inst1|filter\(5) & ((\inst1|MOUSE_CLK_FILTER~q\) # ((\inst1|filter\(3) & \inst1|filter\(2))))) # (!\inst1|filter\(5) & (\inst1|MOUSE_CLK_FILTER~q\ & ((\inst1|filter\(3)) # (\inst1|filter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|filter\(5),
	datab => \inst1|MOUSE_CLK_FILTER~q\,
	datac => \inst1|filter\(3),
	datad => \inst1|filter\(2),
	combout => \inst1|MOUSE_CLK_FILTER~1_combout\);

-- Location: FF_X40_Y15_N27
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

-- Location: FF_X40_Y15_N29
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

-- Location: FF_X40_Y15_N21
\inst1|filter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|filter[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|filter\(6));

-- Location: LCCOMB_X40_Y15_N6
\inst1|MOUSE_CLK_FILTER~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|MOUSE_CLK_FILTER~2_combout\ = (\inst1|MOUSE_CLK_FILTER~q\ & ((\inst1|filter\(1)) # ((\inst1|filter\(0)) # (\inst1|filter\(6))))) # (!\inst1|MOUSE_CLK_FILTER~q\ & (\inst1|filter\(1) & (\inst1|filter\(0) & \inst1|filter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|MOUSE_CLK_FILTER~q\,
	datab => \inst1|filter\(1),
	datac => \inst1|filter\(0),
	datad => \inst1|filter\(6),
	combout => \inst1|MOUSE_CLK_FILTER~2_combout\);

-- Location: LCCOMB_X40_Y15_N16
\inst1|MOUSE_CLK_FILTER~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|MOUSE_CLK_FILTER~3_combout\ = (\inst1|MOUSE_CLK_FILTER~1_combout\ & ((\inst1|MOUSE_CLK_FILTER~q\) # ((\inst1|MOUSE_CLK_FILTER~2_combout\ & \inst1|MOUSE_CLK_FILTER~0_combout\)))) # (!\inst1|MOUSE_CLK_FILTER~1_combout\ & (\inst1|MOUSE_CLK_FILTER~q\ & 
-- ((\inst1|MOUSE_CLK_FILTER~2_combout\) # (\inst1|MOUSE_CLK_FILTER~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|MOUSE_CLK_FILTER~1_combout\,
	datab => \inst1|MOUSE_CLK_FILTER~2_combout\,
	datac => \inst1|MOUSE_CLK_FILTER~q\,
	datad => \inst1|MOUSE_CLK_FILTER~0_combout\,
	combout => \inst1|MOUSE_CLK_FILTER~3_combout\);

-- Location: LCCOMB_X36_Y16_N6
\inst1|INCNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|INCNT~2_combout\ = (!\inst1|INCNT\(3) & (\inst1|INCNT\(1) $ (\inst1|INCNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|INCNT\(3),
	datac => \inst1|INCNT\(1),
	datad => \inst1|INCNT\(0),
	combout => \inst1|INCNT~2_combout\);

-- Location: LCCOMB_X23_Y21_N10
\inst|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~0_combout\ = (((\inst|h_count\(10)) # (\inst|h_count\(8))) # (!\inst|h_count\(9))) # (!\inst|h_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(7),
	datab => \inst|h_count\(9),
	datac => \inst|h_count\(10),
	datad => \inst|h_count\(8),
	combout => \inst|process_0~0_combout\);

-- Location: FF_X2_Y27_N23
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

-- Location: LCCOMB_X1_Y27_N26
\inst7|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~2_combout\ = (!\inst7|i\(8) & (!\inst7|i\(9) & (!\inst7|i\(10) & !\inst7|i\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(8),
	datab => \inst7|i\(9),
	datac => \inst7|i\(10),
	datad => \inst7|i\(11),
	combout => \inst7|Equal0~2_combout\);

-- Location: FF_X2_Y27_N31
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

-- Location: FF_X2_Y26_N23
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

-- Location: LCCOMB_X1_Y26_N30
\inst7|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~8_combout\ = (!\inst7|i\(26) & (!\inst7|i\(25) & (!\inst7|i\(27) & !\inst7|i\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(26),
	datab => \inst7|i\(25),
	datac => \inst7|i\(27),
	datad => \inst7|i\(24),
	combout => \inst7|Equal0~8_combout\);

-- Location: FF_X2_Y26_N27
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

-- Location: FF_X38_Y15_N29
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

-- Location: FF_X38_Y16_N27
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

-- Location: LCCOMB_X38_Y15_N28
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

-- Location: LCCOMB_X38_Y16_N26
\inst1|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Selector4~0_combout\ = (\inst1|mouse_state.WAIT_OUTPUT_READY~q\ & ((\inst1|output_ready~q\) # ((!\inst1|iready_set~q\ & \inst1|mouse_state.WAIT_CMD_ACK~q\)))) # (!\inst1|mouse_state.WAIT_OUTPUT_READY~q\ & (!\inst1|iready_set~q\ & 
-- (\inst1|mouse_state.WAIT_CMD_ACK~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \inst1|iready_set~q\,
	datac => \inst1|mouse_state.WAIT_CMD_ACK~q\,
	datad => \inst1|output_ready~q\,
	combout => \inst1|Selector4~0_combout\);

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

-- Location: LCCOMB_X40_Y15_N14
\inst1|filter[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|filter[3]~feeder_combout\ = \inst1|filter\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|filter\(2),
	combout => \inst1|filter[3]~feeder_combout\);

-- Location: LCCOMB_X40_Y15_N22
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

-- Location: LCCOMB_X40_Y15_N30
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

-- Location: LCCOMB_X40_Y15_N20
\inst1|filter[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|filter[6]~feeder_combout\ = \inst1|filter\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|filter\(5),
	combout => \inst1|filter[6]~feeder_combout\);

-- Location: LCCOMB_X40_Y15_N28
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

-- Location: LCCOMB_X40_Y15_N24
\inst1|filter[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|filter[2]~feeder_combout\ = \inst1|filter\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|filter\(1),
	combout => \inst1|filter[2]~feeder_combout\);

-- Location: LCCOMB_X40_Y15_N26
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

-- Location: IOOBUF_X41_Y25_N2
\red_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|red_out~q\,
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
	i => \inst|green_out~q\,
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
	i => \inst|blue_out~q\,
	devoe => ww_devoe,
	o => \blue_out~output_o\);

-- Location: LCCOMB_X40_Y15_N10
\inst1|MOUSE_CLK_FILTER~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|MOUSE_CLK_FILTER~feeder_combout\ = \inst1|MOUSE_CLK_FILTER~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|MOUSE_CLK_FILTER~3_combout\,
	combout => \inst1|MOUSE_CLK_FILTER~feeder_combout\);

-- Location: FF_X40_Y15_N11
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

-- Location: CLKCTRL_G7
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

-- Location: LCCOMB_X39_Y16_N20
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

-- Location: LCCOMB_X36_Y16_N4
\inst1|INCNT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|INCNT~0_combout\ = (!\inst1|INCNT\(3) & (\inst1|INCNT\(2) $ (((\inst1|INCNT\(1) & \inst1|INCNT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|INCNT\(1),
	datab => \inst1|INCNT\(3),
	datac => \inst1|INCNT\(2),
	datad => \inst1|INCNT\(0),
	combout => \inst1|INCNT~0_combout\);

-- Location: LCCOMB_X37_Y17_N28
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

-- Location: LCCOMB_X38_Y15_N4
\inst1|inhibit_wait_count[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[1]~10_combout\ = (\inst1|inhibit_wait_count\(0) & (\inst1|inhibit_wait_count\(1) $ (VCC))) # (!\inst1|inhibit_wait_count\(0) & (\inst1|inhibit_wait_count\(1) & VCC))
-- \inst1|inhibit_wait_count[1]~11\ = CARRY((\inst1|inhibit_wait_count\(0) & \inst1|inhibit_wait_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inhibit_wait_count\(0),
	datab => \inst1|inhibit_wait_count\(1),
	datad => VCC,
	combout => \inst1|inhibit_wait_count[1]~10_combout\,
	cout => \inst1|inhibit_wait_count[1]~11\);

-- Location: LCCOMB_X38_Y15_N0
\inst1|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Selector0~0_combout\ = (\inst1|mouse_state.INHIBIT_TRANS~q\) # ((\inst1|inhibit_wait_count\(10) & \inst1|inhibit_wait_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inhibit_wait_count\(10),
	datac => \inst1|mouse_state.INHIBIT_TRANS~q\,
	datad => \inst1|inhibit_wait_count\(9),
	combout => \inst1|Selector0~0_combout\);

-- Location: FF_X38_Y15_N1
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

-- Location: FF_X38_Y15_N5
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

-- Location: LCCOMB_X38_Y15_N8
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

-- Location: FF_X38_Y15_N9
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

-- Location: LCCOMB_X38_Y15_N14
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

-- Location: FF_X38_Y15_N15
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

-- Location: LCCOMB_X38_Y15_N16
\inst1|inhibit_wait_count[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[7]~22_combout\ = (\inst1|inhibit_wait_count\(7) & (\inst1|inhibit_wait_count[6]~21\ $ (GND))) # (!\inst1|inhibit_wait_count\(7) & (!\inst1|inhibit_wait_count[6]~21\ & VCC))
-- \inst1|inhibit_wait_count[7]~23\ = CARRY((\inst1|inhibit_wait_count\(7) & !\inst1|inhibit_wait_count[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inhibit_wait_count\(7),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[6]~21\,
	combout => \inst1|inhibit_wait_count[7]~22_combout\,
	cout => \inst1|inhibit_wait_count[7]~23\);

-- Location: FF_X38_Y15_N17
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

-- Location: LCCOMB_X38_Y15_N18
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

-- Location: FF_X38_Y15_N19
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

-- Location: LCCOMB_X38_Y15_N20
\inst1|inhibit_wait_count[9]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[9]~26_combout\ = (\inst1|inhibit_wait_count\(9) & (\inst1|inhibit_wait_count[8]~25\ $ (GND))) # (!\inst1|inhibit_wait_count\(9) & (!\inst1|inhibit_wait_count[8]~25\ & VCC))
-- \inst1|inhibit_wait_count[9]~27\ = CARRY((\inst1|inhibit_wait_count\(9) & !\inst1|inhibit_wait_count[8]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inhibit_wait_count\(9),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[8]~25\,
	combout => \inst1|inhibit_wait_count[9]~26_combout\,
	cout => \inst1|inhibit_wait_count[9]~27\);

-- Location: FF_X38_Y15_N21
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

-- Location: LCCOMB_X38_Y15_N22
\inst1|inhibit_wait_count[10]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[10]~28_combout\ = \inst1|inhibit_wait_count\(10) $ (\inst1|inhibit_wait_count[9]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inhibit_wait_count\(10),
	cin => \inst1|inhibit_wait_count[9]~27\,
	combout => \inst1|inhibit_wait_count[10]~28_combout\);

-- Location: FF_X38_Y15_N23
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

-- Location: LCCOMB_X38_Y15_N26
\inst1|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Selector1~0_combout\ = (\inst1|inhibit_wait_count\(9) & (\inst1|inhibit_wait_count\(10) & !\inst1|mouse_state.INHIBIT_TRANS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inhibit_wait_count\(9),
	datac => \inst1|inhibit_wait_count\(10),
	datad => \inst1|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst1|Selector1~0_combout\);

-- Location: FF_X38_Y15_N27
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

-- Location: LCCOMB_X38_Y16_N22
\inst1|mouse_state.LOAD_COMMAND2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|mouse_state.LOAD_COMMAND2~feeder_combout\ = \inst1|mouse_state.LOAD_COMMAND~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|mouse_state.LOAD_COMMAND~q\,
	combout => \inst1|mouse_state.LOAD_COMMAND2~feeder_combout\);

-- Location: FF_X38_Y16_N23
\inst1|mouse_state.LOAD_COMMAND2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|mouse_state.LOAD_COMMAND2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mouse_state.LOAD_COMMAND2~q\);

-- Location: LCCOMB_X39_Y16_N0
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

-- Location: LCCOMB_X40_Y16_N12
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

-- Location: FF_X40_Y16_N13
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

-- Location: LCCOMB_X39_Y16_N2
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

-- Location: FF_X39_Y16_N1
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

-- Location: LCCOMB_X39_Y16_N12
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

-- Location: FF_X39_Y16_N13
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

-- Location: LCCOMB_X39_Y16_N16
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

-- Location: FF_X39_Y16_N17
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

-- Location: LCCOMB_X39_Y16_N8
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

-- Location: FF_X39_Y16_N9
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

-- Location: LCCOMB_X39_Y16_N22
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

-- Location: LCCOMB_X39_Y16_N6
\inst1|output_ready~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|output_ready~feeder_combout\ = \inst1|LessThan0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|LessThan0~0_combout\,
	combout => \inst1|output_ready~feeder_combout\);

-- Location: FF_X39_Y16_N7
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

-- Location: LCCOMB_X38_Y16_N8
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

-- Location: FF_X38_Y16_N9
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

-- Location: FF_X37_Y17_N29
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

-- Location: LCCOMB_X36_Y16_N22
\inst1|INCNT[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|INCNT[3]~1_combout\ = (\inst1|READ_CHAR~q\ & !\inst1|mouse_state.WAIT_OUTPUT_READY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|READ_CHAR~q\,
	datad => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst1|INCNT[3]~1_combout\);

-- Location: FF_X36_Y16_N5
\inst1|INCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|INCNT~0_combout\,
	ena => \inst1|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|INCNT\(2));

-- Location: LCCOMB_X36_Y16_N28
\inst1|INCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|INCNT~3_combout\ = (!\inst1|INCNT\(0) & (((!\inst1|INCNT\(1) & !\inst1|INCNT\(2))) # (!\inst1|INCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|INCNT\(1),
	datab => \inst1|INCNT\(3),
	datac => \inst1|INCNT\(0),
	datad => \inst1|INCNT\(2),
	combout => \inst1|INCNT~3_combout\);

-- Location: FF_X36_Y16_N29
\inst1|INCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|INCNT~3_combout\,
	ena => \inst1|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|INCNT\(0));

-- Location: LCCOMB_X36_Y16_N2
\inst1|INCNT~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|INCNT~4_combout\ = (\inst1|INCNT\(1) & (\inst1|INCNT\(0) & (!\inst1|INCNT\(3) & \inst1|INCNT\(2)))) # (!\inst1|INCNT\(1) & (!\inst1|INCNT\(0) & (\inst1|INCNT\(3) & !\inst1|INCNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|INCNT\(1),
	datab => \inst1|INCNT\(0),
	datac => \inst1|INCNT\(3),
	datad => \inst1|INCNT\(2),
	combout => \inst1|INCNT~4_combout\);

-- Location: FF_X36_Y16_N3
\inst1|INCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|INCNT~4_combout\,
	ena => \inst1|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|INCNT\(3));

-- Location: LCCOMB_X36_Y16_N0
\inst1|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~0_combout\ = ((!\inst1|INCNT\(1) & (!\inst1|INCNT\(2) & !\inst1|INCNT\(0)))) # (!\inst1|INCNT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|INCNT\(1),
	datab => \inst1|INCNT\(3),
	datac => \inst1|INCNT\(2),
	datad => \inst1|INCNT\(0),
	combout => \inst1|LessThan1~0_combout\);

-- Location: LCCOMB_X38_Y16_N24
\inst1|iready_set~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|iready_set~0_combout\ = (\inst1|READ_CHAR~q\ & (((!\inst1|LessThan1~0_combout\)))) # (!\inst1|READ_CHAR~q\ & (\mouse_data~input_o\ & (\inst1|iready_set~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|READ_CHAR~q\,
	datab => \mouse_data~input_o\,
	datac => \inst1|iready_set~q\,
	datad => \inst1|LessThan1~0_combout\,
	combout => \inst1|iready_set~0_combout\);

-- Location: FF_X38_Y16_N25
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

-- Location: LCCOMB_X38_Y16_N28
\inst1|mouse_state.INPUT_PACKETS~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|mouse_state.INPUT_PACKETS~0_combout\ = (\inst1|mouse_state.INPUT_PACKETS~q\) # ((\inst1|mouse_state.WAIT_CMD_ACK~q\ & \inst1|iready_set~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mouse_state.WAIT_CMD_ACK~q\,
	datab => \inst1|iready_set~q\,
	datac => \inst1|mouse_state.INPUT_PACKETS~q\,
	combout => \inst1|mouse_state.INPUT_PACKETS~0_combout\);

-- Location: FF_X38_Y16_N29
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

-- Location: LCCOMB_X38_Y16_N30
\inst1|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Selector6~0_combout\ = (\inst1|send_data~q\ & ((\inst1|mouse_state.INPUT_PACKETS~q\) # (!\inst1|mouse_state.INHIBIT_TRANS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|send_data~q\,
	datab => \inst1|mouse_state.INPUT_PACKETS~q\,
	datac => \inst1|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst1|Selector6~0_combout\);

-- Location: LCCOMB_X38_Y16_N10
\inst1|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Selector6~1_combout\ = (\inst1|mouse_state.LOAD_COMMAND~q\) # ((\inst1|Selector6~0_combout\) # (\inst1|mouse_state.LOAD_COMMAND2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mouse_state.LOAD_COMMAND~q\,
	datac => \inst1|Selector6~0_combout\,
	datad => \inst1|mouse_state.LOAD_COMMAND2~q\,
	combout => \inst1|Selector6~1_combout\);

-- Location: FF_X38_Y16_N11
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

-- Location: LCCOMB_X39_Y16_N30
\inst1|MOUSE_DATA_BUF~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|MOUSE_DATA_BUF~0_combout\ = (!\inst1|LessThan0~0_combout\ & (!\inst1|send_char~q\ & \inst1|mouse_state.WAIT_OUTPUT_READY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~0_combout\,
	datab => \inst1|send_char~q\,
	datad => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst1|MOUSE_DATA_BUF~0_combout\);

-- Location: FF_X39_Y16_N21
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

-- Location: LCCOMB_X39_Y16_N10
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

-- Location: FF_X39_Y16_N11
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

-- Location: LCCOMB_X39_Y16_N4
\inst1|SHIFTOUT[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTOUT[7]~feeder_combout\ = \inst1|SHIFTOUT\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTOUT\(8),
	combout => \inst1|SHIFTOUT[7]~feeder_combout\);

-- Location: FF_X39_Y16_N5
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

-- Location: LCCOMB_X39_Y16_N28
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

-- Location: FF_X39_Y16_N29
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

-- Location: LCCOMB_X39_Y16_N14
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

-- Location: FF_X39_Y16_N15
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

-- Location: LCCOMB_X39_Y16_N18
\inst1|SHIFTOUT[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTOUT[4]~2_combout\ = !\inst1|SHIFTOUT\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|SHIFTOUT\(5),
	combout => \inst1|SHIFTOUT[4]~2_combout\);

-- Location: FF_X39_Y16_N19
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

-- Location: LCCOMB_X39_Y16_N24
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

-- Location: FF_X39_Y16_N25
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

-- Location: LCCOMB_X39_Y16_N26
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

-- Location: FF_X39_Y16_N27
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

-- Location: FF_X39_Y16_N23
\inst1|SHIFTOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst1|SHIFTOUT\(2),
	clrn => \inst1|ALT_INV_send_data~q\,
	sload => VCC,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(1));

-- Location: FF_X39_Y16_N31
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

-- Location: LCCOMB_X38_Y16_N20
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

-- Location: LCCOMB_X37_Y17_N10
\inst1|SHIFTIN[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[8]~feeder_combout\ = \mouse_data~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse_data~input_o\,
	combout => \inst1|SHIFTIN[8]~feeder_combout\);

-- Location: LCCOMB_X37_Y17_N30
\inst1|SHIFTIN[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[0]~0_combout\ = (\inst1|LessThan1~0_combout\ & (\inst1|READ_CHAR~q\ & !\inst1|mouse_state.WAIT_OUTPUT_READY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~0_combout\,
	datab => \inst1|READ_CHAR~q\,
	datad => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst1|SHIFTIN[0]~0_combout\);

-- Location: FF_X37_Y17_N11
\inst1|SHIFTIN[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[8]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(8));

-- Location: LCCOMB_X37_Y17_N24
\inst1|SHIFTIN[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[7]~feeder_combout\ = \inst1|SHIFTIN\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(8),
	combout => \inst1|SHIFTIN[7]~feeder_combout\);

-- Location: FF_X37_Y17_N25
\inst1|SHIFTIN[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[7]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(7));

-- Location: LCCOMB_X37_Y17_N22
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

-- Location: FF_X37_Y17_N23
\inst1|SHIFTIN[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[6]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(6));

-- Location: LCCOMB_X37_Y17_N12
\inst1|SHIFTIN[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[5]~feeder_combout\ = \inst1|SHIFTIN\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|SHIFTIN\(6),
	combout => \inst1|SHIFTIN[5]~feeder_combout\);

-- Location: FF_X37_Y17_N13
\inst1|SHIFTIN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[5]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(5));

-- Location: LCCOMB_X37_Y17_N26
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

-- Location: FF_X37_Y17_N27
\inst1|SHIFTIN[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[4]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(4));

-- Location: LCCOMB_X37_Y17_N20
\inst1|SHIFTIN[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[3]~feeder_combout\ = \inst1|SHIFTIN\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|SHIFTIN\(4),
	combout => \inst1|SHIFTIN[3]~feeder_combout\);

-- Location: FF_X37_Y17_N21
\inst1|SHIFTIN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[3]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(3));

-- Location: LCCOMB_X37_Y17_N18
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

-- Location: FF_X37_Y17_N19
\inst1|SHIFTIN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[2]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(2));

-- Location: LCCOMB_X37_Y17_N16
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

-- Location: FF_X37_Y17_N17
\inst1|SHIFTIN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[1]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(1));

-- Location: FF_X37_Y17_N31
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
	ena => \inst1|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(0));

-- Location: LCCOMB_X37_Y16_N4
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

-- Location: LCCOMB_X37_Y16_N6
\inst1|PACKET_COUNT[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_COUNT[1]~0_combout\ = (\inst1|READ_CHAR~q\ & (!\inst1|LessThan1~0_combout\ & !\inst1|mouse_state.WAIT_OUTPUT_READY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|READ_CHAR~q\,
	datac => \inst1|LessThan1~0_combout\,
	datad => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst1|PACKET_COUNT[1]~0_combout\);

-- Location: LCCOMB_X36_Y16_N16
\inst1|PACKET_COUNT[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_COUNT[1]~1_combout\ = \inst1|PACKET_COUNT\(1) $ (((\inst1|PACKET_COUNT\(0) & \inst1|PACKET_COUNT[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PACKET_COUNT\(0),
	datac => \inst1|PACKET_COUNT\(1),
	datad => \inst1|PACKET_COUNT[1]~0_combout\,
	combout => \inst1|PACKET_COUNT[1]~1_combout\);

-- Location: FF_X36_Y16_N17
\inst1|PACKET_COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_COUNT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_COUNT\(1));

-- Location: LCCOMB_X36_Y16_N30
\inst1|PACKET_COUNT[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_COUNT[0]~2_combout\ = (\inst1|PACKET_COUNT\(0) & ((\inst1|PACKET_COUNT\(1)) # (!\inst1|PACKET_COUNT[1]~0_combout\))) # (!\inst1|PACKET_COUNT\(0) & ((\inst1|PACKET_COUNT[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|PACKET_COUNT\(1),
	datac => \inst1|PACKET_COUNT\(0),
	datad => \inst1|PACKET_COUNT[1]~0_combout\,
	combout => \inst1|PACKET_COUNT[0]~2_combout\);

-- Location: FF_X36_Y16_N31
\inst1|PACKET_COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_COUNT[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_COUNT\(0));

-- Location: LCCOMB_X37_Y16_N10
\inst1|PACKET_CHAR1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR1[0]~0_combout\ = (!\inst1|PACKET_COUNT\(1) & \inst1|READ_CHAR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|PACKET_COUNT\(1),
	datad => \inst1|READ_CHAR~q\,
	combout => \inst1|PACKET_CHAR1[0]~0_combout\);

-- Location: LCCOMB_X37_Y16_N16
\inst1|PACKET_CHAR1[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR1[0]~1_combout\ = (!\inst1|LessThan1~0_combout\ & (\inst1|PACKET_COUNT\(0) & (!\inst1|mouse_state.WAIT_OUTPUT_READY~q\ & \inst1|PACKET_CHAR1[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~0_combout\,
	datab => \inst1|PACKET_COUNT\(0),
	datac => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst1|PACKET_CHAR1[0]~0_combout\,
	combout => \inst1|PACKET_CHAR1[0]~1_combout\);

-- Location: FF_X37_Y16_N5
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

-- Location: LCCOMB_X37_Y16_N12
\inst1|left_button~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|left_button~0_combout\ = (\inst1|PACKET_COUNT\(1) & (\inst1|PACKET_COUNT\(0) & \inst1|PACKET_COUNT[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PACKET_COUNT\(1),
	datab => \inst1|PACKET_COUNT\(0),
	datad => \inst1|PACKET_COUNT[1]~0_combout\,
	combout => \inst1|left_button~0_combout\);

-- Location: FF_X37_Y16_N13
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

-- Location: LCCOMB_X37_Y16_N24
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

-- Location: FF_X37_Y16_N25
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

-- Location: LCCOMB_X37_Y16_N2
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

-- Location: FF_X37_Y16_N3
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

-- Location: LCCOMB_X2_Y27_N0
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

-- Location: FF_X2_Y27_N1
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

-- Location: LCCOMB_X2_Y27_N2
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

-- Location: LCCOMB_X1_Y27_N6
\inst7|i~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|i~0_combout\ = (!\inst7|Equal0~10_combout\ & \inst7|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Equal0~10_combout\,
	datad => \inst7|Add0~2_combout\,
	combout => \inst7|i~0_combout\);

-- Location: FF_X1_Y27_N7
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

-- Location: LCCOMB_X2_Y27_N4
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

-- Location: FF_X2_Y27_N5
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

-- Location: LCCOMB_X2_Y27_N6
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

-- Location: LCCOMB_X2_Y27_N8
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

-- Location: FF_X2_Y27_N9
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

-- Location: LCCOMB_X2_Y27_N10
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

-- Location: LCCOMB_X2_Y27_N12
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

-- Location: LCCOMB_X2_Y27_N14
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

-- Location: FF_X2_Y27_N15
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

-- Location: LCCOMB_X2_Y27_N16
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

-- Location: FF_X2_Y27_N17
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

-- Location: LCCOMB_X2_Y27_N18
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

-- Location: FF_X2_Y27_N19
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

-- Location: LCCOMB_X2_Y27_N20
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

-- Location: FF_X2_Y27_N21
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

-- Location: LCCOMB_X2_Y27_N24
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

-- Location: FF_X2_Y27_N25
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

-- Location: LCCOMB_X2_Y27_N26
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

-- Location: LCCOMB_X2_Y27_N28
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

-- Location: FF_X2_Y27_N29
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

-- Location: LCCOMB_X2_Y26_N0
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

-- Location: FF_X2_Y26_N1
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

-- Location: LCCOMB_X2_Y26_N2
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

-- Location: FF_X2_Y26_N3
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

-- Location: LCCOMB_X2_Y26_N4
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

-- Location: FF_X2_Y26_N5
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

-- Location: LCCOMB_X2_Y26_N6
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

-- Location: LCCOMB_X2_Y26_N8
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

-- Location: FF_X2_Y26_N9
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

-- Location: LCCOMB_X2_Y26_N10
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

-- Location: LCCOMB_X2_Y26_N12
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

-- Location: LCCOMB_X2_Y26_N14
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

-- Location: FF_X2_Y26_N15
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

-- Location: LCCOMB_X2_Y26_N16
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

-- Location: FF_X2_Y26_N17
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

-- Location: LCCOMB_X2_Y26_N18
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

-- Location: FF_X2_Y26_N19
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

-- Location: LCCOMB_X2_Y26_N20
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

-- Location: FF_X2_Y26_N21
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

-- Location: LCCOMB_X2_Y26_N24
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

-- Location: FF_X2_Y26_N25
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

-- Location: LCCOMB_X2_Y26_N28
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

-- Location: FF_X2_Y26_N29
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

-- Location: LCCOMB_X2_Y26_N30
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

-- Location: FF_X2_Y26_N31
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

-- Location: LCCOMB_X1_Y26_N0
\inst7|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~9_combout\ = (!\inst7|i\(29) & (!\inst7|i\(30) & (!\inst7|i\(31) & !\inst7|i\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(29),
	datab => \inst7|i\(30),
	datac => \inst7|i\(31),
	datad => \inst7|i\(28),
	combout => \inst7|Equal0~9_combout\);

-- Location: FF_X2_Y27_N11
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

-- Location: FF_X2_Y27_N13
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

-- Location: LCCOMB_X1_Y27_N20
\inst7|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~1_combout\ = (!\inst7|i\(4) & (!\inst7|i\(5) & (!\inst7|i\(7) & !\inst7|i\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(4),
	datab => \inst7|i\(5),
	datac => \inst7|i\(7),
	datad => \inst7|i\(6),
	combout => \inst7|Equal0~1_combout\);

-- Location: FF_X2_Y27_N27
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

-- Location: LCCOMB_X1_Y27_N22
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

-- Location: FF_X2_Y27_N7
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

-- Location: LCCOMB_X1_Y27_N28
\inst7|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~0_combout\ = (!\inst7|i\(2) & (!\inst7|i\(1) & (\inst7|i\(0) & !\inst7|i\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(2),
	datab => \inst7|i\(1),
	datac => \inst7|i\(0),
	datad => \inst7|i\(3),
	combout => \inst7|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y27_N8
\inst7|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~4_combout\ = (\inst7|Equal0~2_combout\ & (\inst7|Equal0~1_combout\ & (\inst7|Equal0~3_combout\ & \inst7|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~2_combout\,
	datab => \inst7|Equal0~1_combout\,
	datac => \inst7|Equal0~3_combout\,
	datad => \inst7|Equal0~0_combout\,
	combout => \inst7|Equal0~4_combout\);

-- Location: FF_X2_Y26_N11
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

-- Location: FF_X2_Y26_N13
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

-- Location: LCCOMB_X1_Y26_N22
\inst7|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~6_combout\ = (!\inst7|i\(23) & (!\inst7|i\(21) & (!\inst7|i\(20) & !\inst7|i\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(23),
	datab => \inst7|i\(21),
	datac => \inst7|i\(20),
	datad => \inst7|i\(22),
	combout => \inst7|Equal0~6_combout\);

-- Location: FF_X2_Y26_N7
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

-- Location: LCCOMB_X1_Y26_N12
\inst7|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~5_combout\ = (!\inst7|i\(18) & (!\inst7|i\(19) & (!\inst7|i\(16) & !\inst7|i\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(18),
	datab => \inst7|i\(19),
	datac => \inst7|i\(16),
	datad => \inst7|i\(17),
	combout => \inst7|Equal0~5_combout\);

-- Location: LCCOMB_X1_Y26_N8
\inst7|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~7_combout\ = (\inst7|Equal0~6_combout\ & \inst7|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Equal0~6_combout\,
	datad => \inst7|Equal0~5_combout\,
	combout => \inst7|Equal0~7_combout\);

-- Location: LCCOMB_X1_Y27_N30
\inst7|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~10_combout\ = (\inst7|Equal0~8_combout\ & (\inst7|Equal0~9_combout\ & (\inst7|Equal0~4_combout\ & \inst7|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~8_combout\,
	datab => \inst7|Equal0~9_combout\,
	datac => \inst7|Equal0~4_combout\,
	datad => \inst7|Equal0~7_combout\,
	combout => \inst7|Equal0~10_combout\);

-- Location: LCCOMB_X1_Y27_N24
\inst7|clock_25Mhz~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|clock_25Mhz~feeder_combout\ = \inst7|Equal0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Equal0~10_combout\,
	combout => \inst7|clock_25Mhz~feeder_combout\);

-- Location: FF_X1_Y27_N25
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

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X24_Y21_N6
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

-- Location: FF_X24_Y21_N7
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

-- Location: LCCOMB_X24_Y21_N8
\inst|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|h_count\(1) & (!\inst|Add0~1\)) # (!\inst|h_count\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|h_count\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: FF_X24_Y21_N9
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

-- Location: LCCOMB_X24_Y21_N10
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

-- Location: LCCOMB_X24_Y21_N12
\inst|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|h_count\(3) & (!\inst|Add0~5\)) # (!\inst|h_count\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: FF_X24_Y21_N13
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

-- Location: LCCOMB_X24_Y21_N2
\inst|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~1_combout\ = (\inst|h_count\(3)) # ((!\inst|h_count\(5) & (\inst|h_count\(0) & \inst|h_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(5),
	datab => \inst|h_count\(0),
	datac => \inst|h_count\(3),
	datad => \inst|h_count\(1),
	combout => \inst|process_0~1_combout\);

-- Location: LCCOMB_X24_Y21_N14
\inst|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|h_count\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|h_count\(4) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|h_count\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: FF_X24_Y21_N15
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

-- Location: LCCOMB_X24_Y21_N4
\inst|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~2_combout\ = (\inst|h_count\(4) & ((\inst|h_count\(2)) # (\inst|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(2),
	datab => \inst|process_0~1_combout\,
	datad => \inst|h_count\(4),
	combout => \inst|process_0~2_combout\);

-- Location: FF_X24_Y21_N11
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

-- Location: LCCOMB_X24_Y21_N16
\inst|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|h_count\(5) & (!\inst|Add0~9\)) # (!\inst|h_count\(5) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X24_Y21_N18
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

-- Location: FF_X24_Y21_N19
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

-- Location: LCCOMB_X24_Y21_N20
\inst|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|h_count\(7) & (!\inst|Add0~13\)) # (!\inst|h_count\(7) & ((\inst|Add0~13\) # (GND)))
-- \inst|Add0~15\ = CARRY((!\inst|Add0~13\) # (!\inst|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|h_count\(7),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: FF_X24_Y21_N21
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

-- Location: LCCOMB_X24_Y21_N22
\inst|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|h_count\(8) & (\inst|Add0~15\ $ (GND))) # (!\inst|h_count\(8) & (!\inst|Add0~15\ & VCC))
-- \inst|Add0~17\ = CARRY((\inst|h_count\(8) & !\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(8),
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: LCCOMB_X24_Y21_N24
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

-- Location: LCCOMB_X23_Y21_N8
\inst|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|h_count~1_combout\ = (\inst|Add0~18_combout\ & ((!\inst|Equal0~1_combout\) # (!\inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~2_combout\,
	datac => \inst|Equal0~1_combout\,
	datad => \inst|Add0~18_combout\,
	combout => \inst|h_count~1_combout\);

-- Location: FF_X23_Y21_N9
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

-- Location: LCCOMB_X24_Y21_N28
\inst|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|h_count\(3) & (\inst|h_count\(4) & (\inst|h_count\(1) & \inst|h_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(3),
	datab => \inst|h_count\(4),
	datac => \inst|h_count\(1),
	datad => \inst|h_count\(0),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y21_N6
\inst|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|h_count\(10) & (!\inst|h_count\(6) & (\inst|h_count\(9) & \inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(10),
	datab => \inst|h_count\(6),
	datac => \inst|h_count\(9),
	datad => \inst|Equal0~0_combout\,
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y21_N12
\inst|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|h_count~0_combout\ = (\inst|Add0~16_combout\ & ((!\inst|Equal0~1_combout\) # (!\inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~2_combout\,
	datac => \inst|Equal0~1_combout\,
	datad => \inst|Add0~16_combout\,
	combout => \inst|h_count~0_combout\);

-- Location: FF_X23_Y21_N13
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

-- Location: LCCOMB_X23_Y21_N16
\inst|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (!\inst|h_count\(7) & (!\inst|h_count\(5) & (\inst|h_count\(2) & \inst|h_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(7),
	datab => \inst|h_count\(5),
	datac => \inst|h_count\(2),
	datad => \inst|h_count\(8),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X23_Y21_N0
\inst|h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|h_count~2_combout\ = (\inst|Add0~10_combout\ & ((!\inst|Equal0~1_combout\) # (!\inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~2_combout\,
	datac => \inst|Equal0~1_combout\,
	datad => \inst|Add0~10_combout\,
	combout => \inst|h_count~2_combout\);

-- Location: FF_X23_Y21_N1
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

-- Location: LCCOMB_X24_Y21_N0
\inst|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~3_combout\ = (\inst|process_0~0_combout\) # ((\inst|process_0~2_combout\ & (\inst|h_count\(5) & \inst|h_count\(6))) # (!\inst|process_0~2_combout\ & (!\inst|h_count\(5) & !\inst|h_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~0_combout\,
	datab => \inst|process_0~2_combout\,
	datac => \inst|h_count\(5),
	datad => \inst|h_count\(6),
	combout => \inst|process_0~3_combout\);

-- Location: FF_X24_Y21_N1
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

-- Location: LCCOMB_X29_Y21_N28
\inst|horiz_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|horiz_sync_out~feeder_combout\ = \inst|horiz_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|horiz_sync~q\,
	combout => \inst|horiz_sync_out~feeder_combout\);

-- Location: FF_X29_Y21_N29
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

-- Location: LCCOMB_X21_Y21_N0
\inst|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = \inst|v_count\(0) $ (VCC)
-- \inst|Add1~1\ = CARRY(\inst|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|v_count\(0),
	datad => VCC,
	combout => \inst|Add1~0_combout\,
	cout => \inst|Add1~1\);

-- Location: LCCOMB_X21_Y21_N2
\inst|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~2_combout\ = (\inst|v_count\(1) & (!\inst|Add1~1\)) # (!\inst|v_count\(1) & ((\inst|Add1~1\) # (GND)))
-- \inst|Add1~3\ = CARRY((!\inst|Add1~1\) # (!\inst|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|v_count\(1),
	datad => VCC,
	cin => \inst|Add1~1\,
	combout => \inst|Add1~2_combout\,
	cout => \inst|Add1~3\);

-- Location: LCCOMB_X21_Y21_N4
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

-- Location: LCCOMB_X24_Y21_N30
\inst|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~8_combout\ = ((!\inst|h_count\(2) & ((!\inst|h_count\(0)) # (!\inst|h_count\(1))))) # (!\inst|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(3),
	datab => \inst|h_count\(1),
	datac => \inst|h_count\(0),
	datad => \inst|h_count\(2),
	combout => \inst|process_0~8_combout\);

-- Location: LCCOMB_X24_Y21_N26
\inst|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = \inst|h_count\(10) $ (!\inst|Add0~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(10),
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\);

-- Location: LCCOMB_X23_Y21_N26
\inst|h_count[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|h_count[10]~feeder_combout\ = \inst|Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Add0~20_combout\,
	combout => \inst|h_count[10]~feeder_combout\);

-- Location: FF_X23_Y21_N27
\inst|h_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|h_count[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_count\(10));

-- Location: LCCOMB_X23_Y21_N18
\inst|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~7_combout\ = (!\inst|h_count\(8) & (!\inst|h_count\(10) & !\inst|h_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(8),
	datac => \inst|h_count\(10),
	datad => \inst|h_count\(6),
	combout => \inst|process_0~7_combout\);

-- Location: LCCOMB_X23_Y21_N20
\inst|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~9_combout\ = (\inst|process_0~7_combout\ & (((\inst|process_0~8_combout\) # (!\inst|h_count\(4))) # (!\inst|h_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(5),
	datab => \inst|h_count\(4),
	datac => \inst|process_0~8_combout\,
	datad => \inst|process_0~7_combout\,
	combout => \inst|process_0~9_combout\);

-- Location: LCCOMB_X23_Y21_N30
\inst|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~10_combout\ = (!\inst|h_count\(10) & (((!\inst|h_count\(8) & !\inst|h_count\(7))) # (!\inst|h_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(8),
	datab => \inst|h_count\(7),
	datac => \inst|h_count\(10),
	datad => \inst|h_count\(9),
	combout => \inst|process_0~10_combout\);

-- Location: LCCOMB_X21_Y21_N6
\inst|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~6_combout\ = (\inst|v_count\(3) & (!\inst|Add1~5\)) # (!\inst|v_count\(3) & ((\inst|Add1~5\) # (GND)))
-- \inst|Add1~7\ = CARRY((!\inst|Add1~5\) # (!\inst|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|v_count\(3),
	datad => VCC,
	cin => \inst|Add1~5\,
	combout => \inst|Add1~6_combout\,
	cout => \inst|Add1~7\);

-- Location: LCCOMB_X21_Y21_N8
\inst|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~8_combout\ = (\inst|v_count\(4) & (\inst|Add1~7\ $ (GND))) # (!\inst|v_count\(4) & (!\inst|Add1~7\ & VCC))
-- \inst|Add1~9\ = CARRY((\inst|v_count\(4) & !\inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|v_count\(4),
	datad => VCC,
	cin => \inst|Add1~7\,
	combout => \inst|Add1~8_combout\,
	cout => \inst|Add1~9\);

-- Location: LCCOMB_X21_Y21_N10
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

-- Location: LCCOMB_X22_Y21_N28
\inst|v_count~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count~11_combout\ = (\inst|Add1~10_combout\ & ((\inst|process_0~9_combout\) # ((\inst|process_0~13_combout\) # (\inst|process_0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~9_combout\,
	datab => \inst|process_0~13_combout\,
	datac => \inst|process_0~10_combout\,
	datad => \inst|Add1~10_combout\,
	combout => \inst|v_count~11_combout\);

-- Location: LCCOMB_X23_Y21_N4
\inst|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (\inst|h_count\(8)) # ((\inst|h_count\(2)) # ((!\inst|h_count\(5)) # (!\inst|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(8),
	datab => \inst|h_count\(2),
	datac => \inst|h_count\(7),
	datad => \inst|h_count\(5),
	combout => \inst|Equal1~0_combout\);

-- Location: LCCOMB_X23_Y21_N22
\inst|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal1~1_combout\ = (\inst|Equal1~0_combout\) # (!\inst|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal1~0_combout\,
	datad => \inst|Equal0~1_combout\,
	combout => \inst|Equal1~1_combout\);

-- Location: LCCOMB_X22_Y21_N14
\inst|v_count[10]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count[10]~15_combout\ = ((!\inst|process_0~10_combout\ & (!\inst|process_0~13_combout\ & !\inst|process_0~9_combout\))) # (!\inst|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~10_combout\,
	datab => \inst|process_0~13_combout\,
	datac => \inst|process_0~9_combout\,
	datad => \inst|Equal1~1_combout\,
	combout => \inst|v_count[10]~15_combout\);

-- Location: FF_X22_Y21_N29
\inst|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|v_count~11_combout\,
	ena => \inst|v_count[10]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(5));

-- Location: LCCOMB_X21_Y21_N12
\inst|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~12_combout\ = (\inst|v_count\(6) & (\inst|Add1~11\ $ (GND))) # (!\inst|v_count\(6) & (!\inst|Add1~11\ & VCC))
-- \inst|Add1~13\ = CARRY((\inst|v_count\(6) & !\inst|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|v_count\(6),
	datad => VCC,
	cin => \inst|Add1~11\,
	combout => \inst|Add1~12_combout\,
	cout => \inst|Add1~13\);

-- Location: LCCOMB_X22_Y21_N18
\inst|v_count~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count~12_combout\ = (\inst|Add1~12_combout\ & ((\inst|process_0~9_combout\) # ((\inst|process_0~13_combout\) # (\inst|process_0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~9_combout\,
	datab => \inst|process_0~13_combout\,
	datac => \inst|process_0~10_combout\,
	datad => \inst|Add1~12_combout\,
	combout => \inst|v_count~12_combout\);

-- Location: FF_X22_Y21_N19
\inst|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|v_count~12_combout\,
	ena => \inst|v_count[10]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(6));

-- Location: LCCOMB_X21_Y21_N14
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

-- Location: LCCOMB_X21_Y21_N16
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

-- Location: LCCOMB_X21_Y21_N18
\inst|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~18_combout\ = (\inst|v_count\(9) & (!\inst|Add1~17\)) # (!\inst|v_count\(9) & ((\inst|Add1~17\) # (GND)))
-- \inst|Add1~19\ = CARRY((!\inst|Add1~17\) # (!\inst|v_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|v_count\(9),
	datad => VCC,
	cin => \inst|Add1~17\,
	combout => \inst|Add1~18_combout\,
	cout => \inst|Add1~19\);

-- Location: LCCOMB_X23_Y21_N24
\inst|process_0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~14_combout\ = (\inst|process_0~10_combout\) # ((\inst|process_0~9_combout\) # (\inst|process_0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~10_combout\,
	datab => \inst|process_0~9_combout\,
	datad => \inst|process_0~13_combout\,
	combout => \inst|process_0~14_combout\);

-- Location: LCCOMB_X22_Y21_N0
\inst|v_count[9]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count[9]~4_combout\ = (\inst|process_0~14_combout\ & ((\inst|Equal1~1_combout\ & ((\inst|v_count\(9)))) # (!\inst|Equal1~1_combout\ & (\inst|Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~1_combout\,
	datab => \inst|Add1~18_combout\,
	datac => \inst|v_count\(9),
	datad => \inst|process_0~14_combout\,
	combout => \inst|v_count[9]~4_combout\);

-- Location: FF_X22_Y21_N1
\inst|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|v_count[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(9));

-- Location: LCCOMB_X22_Y21_N4
\inst|v_count~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count~13_combout\ = (\inst|Add1~14_combout\ & ((\inst|process_0~9_combout\) # ((\inst|process_0~13_combout\) # (\inst|process_0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~9_combout\,
	datab => \inst|process_0~13_combout\,
	datac => \inst|process_0~10_combout\,
	datad => \inst|Add1~14_combout\,
	combout => \inst|v_count~13_combout\);

-- Location: FF_X22_Y21_N5
\inst|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|v_count~13_combout\,
	ena => \inst|v_count[10]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(7));

-- Location: LCCOMB_X22_Y21_N2
\inst|v_count~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count~14_combout\ = (\inst|Add1~16_combout\ & ((\inst|process_0~9_combout\) # ((\inst|process_0~10_combout\) # (\inst|process_0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~9_combout\,
	datab => \inst|process_0~10_combout\,
	datac => \inst|Add1~16_combout\,
	datad => \inst|process_0~13_combout\,
	combout => \inst|v_count~14_combout\);

-- Location: FF_X22_Y21_N3
\inst|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|v_count~14_combout\,
	ena => \inst|v_count[10]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(8));

-- Location: LCCOMB_X22_Y21_N26
\inst|process_0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~12_combout\ = (!\inst|v_count\(10) & (!\inst|v_count\(6) & (!\inst|v_count\(7) & !\inst|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|v_count\(10),
	datab => \inst|v_count\(6),
	datac => \inst|v_count\(7),
	datad => \inst|v_count\(8),
	combout => \inst|process_0~12_combout\);

-- Location: LCCOMB_X22_Y21_N6
\inst|v_count~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count~8_combout\ = (\inst|Add1~8_combout\ & ((\inst|process_0~9_combout\) # ((\inst|process_0~13_combout\) # (\inst|process_0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~9_combout\,
	datab => \inst|process_0~13_combout\,
	datac => \inst|process_0~10_combout\,
	datad => \inst|Add1~8_combout\,
	combout => \inst|v_count~8_combout\);

-- Location: FF_X22_Y21_N7
\inst|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|v_count~8_combout\,
	ena => \inst|v_count[10]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(4));

-- Location: LCCOMB_X22_Y21_N12
\inst|process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~11_combout\ = (!\inst|v_count\(5) & (!\inst|v_count\(4) & ((!\inst|v_count\(2)) # (!\inst|v_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|v_count\(3),
	datab => \inst|v_count\(5),
	datac => \inst|v_count\(2),
	datad => \inst|v_count\(4),
	combout => \inst|process_0~11_combout\);

-- Location: LCCOMB_X22_Y21_N24
\inst|process_0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~13_combout\ = (\inst|v_count\(10) & (((\inst|process_0~12_combout\ & \inst|process_0~11_combout\)))) # (!\inst|v_count\(10) & (((\inst|process_0~12_combout\ & \inst|process_0~11_combout\)) # (!\inst|v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|v_count\(10),
	datab => \inst|v_count\(9),
	datac => \inst|process_0~12_combout\,
	datad => \inst|process_0~11_combout\,
	combout => \inst|process_0~13_combout\);

-- Location: LCCOMB_X22_Y21_N8
\inst|v_count~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count~9_combout\ = (\inst|Add1~4_combout\ & ((\inst|process_0~10_combout\) # ((\inst|process_0~9_combout\) # (\inst|process_0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~10_combout\,
	datab => \inst|Add1~4_combout\,
	datac => \inst|process_0~9_combout\,
	datad => \inst|process_0~13_combout\,
	combout => \inst|v_count~9_combout\);

-- Location: FF_X22_Y21_N9
\inst|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|v_count~9_combout\,
	ena => \inst|v_count[10]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(2));

-- Location: LCCOMB_X22_Y21_N22
\inst|v_count~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count~10_combout\ = (\inst|Add1~6_combout\ & ((\inst|process_0~10_combout\) # ((\inst|process_0~9_combout\) # (\inst|process_0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~10_combout\,
	datab => \inst|Add1~6_combout\,
	datac => \inst|process_0~9_combout\,
	datad => \inst|process_0~13_combout\,
	combout => \inst|v_count~10_combout\);

-- Location: FF_X22_Y21_N23
\inst|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|v_count~10_combout\,
	ena => \inst|v_count[10]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(3));

-- Location: LCCOMB_X21_Y21_N24
\inst|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~5_combout\ = ((\inst|v_count\(4)) # (!\inst|v_count\(2))) # (!\inst|v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|v_count\(3),
	datac => \inst|v_count\(2),
	datad => \inst|v_count\(4),
	combout => \inst|process_0~5_combout\);

-- Location: LCCOMB_X21_Y21_N30
\inst|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan7~0_combout\ = (\inst|v_count\(7) & (\inst|v_count\(6) & (\inst|v_count\(5) & \inst|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|v_count\(7),
	datab => \inst|v_count\(6),
	datac => \inst|v_count\(5),
	datad => \inst|v_count\(8),
	combout => \inst|LessThan7~0_combout\);

-- Location: LCCOMB_X22_Y21_N20
\inst|v_count~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count~6_combout\ = (\inst|Add1~0_combout\ & ((\inst|process_0~9_combout\) # ((\inst|process_0~10_combout\) # (\inst|process_0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~9_combout\,
	datab => \inst|Add1~0_combout\,
	datac => \inst|process_0~10_combout\,
	datad => \inst|process_0~13_combout\,
	combout => \inst|v_count~6_combout\);

-- Location: FF_X22_Y21_N21
\inst|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|v_count~6_combout\,
	ena => \inst|v_count[10]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(0));

-- Location: LCCOMB_X22_Y21_N30
\inst|v_count~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count~7_combout\ = (\inst|Add1~2_combout\ & ((\inst|process_0~9_combout\) # ((\inst|process_0~13_combout\) # (\inst|process_0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~9_combout\,
	datab => \inst|process_0~13_combout\,
	datac => \inst|process_0~10_combout\,
	datad => \inst|Add1~2_combout\,
	combout => \inst|v_count~7_combout\);

-- Location: FF_X22_Y21_N31
\inst|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|v_count~7_combout\,
	ena => \inst|v_count[10]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(1));

-- Location: LCCOMB_X22_Y21_N16
\inst|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~4_combout\ = (\inst|v_count\(10)) # ((\inst|v_count\(9)) # (\inst|v_count\(0) $ (!\inst|v_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|v_count\(10),
	datab => \inst|v_count\(0),
	datac => \inst|v_count\(1),
	datad => \inst|v_count\(9),
	combout => \inst|process_0~4_combout\);

-- Location: LCCOMB_X21_Y21_N28
\inst|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~6_combout\ = (\inst|process_0~5_combout\) # ((\inst|process_0~4_combout\) # (!\inst|LessThan7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|process_0~5_combout\,
	datac => \inst|LessThan7~0_combout\,
	datad => \inst|process_0~4_combout\,
	combout => \inst|process_0~6_combout\);

-- Location: FF_X21_Y21_N29
\inst|vert_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vert_sync~q\);

-- Location: LCCOMB_X21_Y21_N26
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

-- Location: FF_X21_Y21_N27
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

-- Location: LCCOMB_X21_Y21_N20
\inst|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~20_combout\ = \inst|v_count\(10) $ (!\inst|Add1~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|v_count\(10),
	cin => \inst|Add1~19\,
	combout => \inst|Add1~20_combout\);

-- Location: LCCOMB_X22_Y21_N10
\inst|v_count[10]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count[10]~5_combout\ = (\inst|process_0~14_combout\ & ((\inst|Equal1~1_combout\ & (\inst|v_count\(10))) # (!\inst|Equal1~1_combout\ & ((\inst|Add1~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~1_combout\,
	datab => \inst|process_0~14_combout\,
	datac => \inst|v_count\(10),
	datad => \inst|Add1~20_combout\,
	combout => \inst|v_count[10]~5_combout\);

-- Location: FF_X22_Y21_N11
\inst|v_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|v_count[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(10));

-- Location: LCCOMB_X21_Y21_N22
\inst|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan7~1_combout\ = (!\inst|LessThan7~0_combout\ & (!\inst|v_count\(10) & !\inst|v_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan7~0_combout\,
	datab => \inst|v_count\(10),
	datac => \inst|v_count\(9),
	combout => \inst|LessThan7~1_combout\);

-- Location: FF_X21_Y21_N23
\inst|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|video_on_v~q\);

-- Location: LCCOMB_X23_Y21_N2
\inst|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan6~0_combout\ = (!\inst|h_count\(10) & (((!\inst|h_count\(7) & !\inst|h_count\(8))) # (!\inst|h_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(7),
	datab => \inst|h_count\(9),
	datac => \inst|h_count\(10),
	datad => \inst|h_count\(8),
	combout => \inst|LessThan6~0_combout\);

-- Location: FF_X23_Y21_N3
\inst|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|video_on_h~q\);

-- Location: LCCOMB_X23_Y21_N14
\inst|video_on\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|video_on~combout\ = (\inst|video_on_v~q\ & \inst|video_on_h~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|video_on_v~q\,
	datad => \inst|video_on_h~q\,
	combout => \inst|video_on~combout\);

-- Location: FF_X23_Y21_N25
\inst|red_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst|video_on~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|red_out~q\);

-- Location: FF_X23_Y21_N15
\inst|green_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|video_on~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|green_out~q\);

-- Location: LCCOMB_X23_Y21_N28
\inst|blue_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|blue_out~feeder_combout\ = \inst|video_on~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|video_on~combout\,
	combout => \inst|blue_out~feeder_combout\);

-- Location: FF_X23_Y21_N29
\inst|blue_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|blue_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|blue_out~q\);

-- Location: IOIBUF_X0_Y10_N22
\sw0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw0,
	o => \sw0~input_o\);

-- Location: IOIBUF_X5_Y29_N22
\bt0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt0,
	o => \bt0~input_o\);

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

ww_seg0_dec <= \seg0_dec~output_o\;

ww_seg1_dec <= \seg1_dec~output_o\;

ww_horiz_sync_out <= \horiz_sync_out~output_o\;

ww_vert_sync_out <= \vert_sync_out~output_o\;

ww_red_out <= \red_out~output_o\;

ww_green_out <= \green_out~output_o\;

ww_blue_out <= \blue_out~output_o\;

mouse_data <= \mouse_data~output_o\;

mouse_clk <= \mouse_clk~output_o\;
END structure;


