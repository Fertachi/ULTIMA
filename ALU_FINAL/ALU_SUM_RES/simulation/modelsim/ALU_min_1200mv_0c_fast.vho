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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/03/2024 13:55:59"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	Input_A : IN std_logic_vector(7 DOWNTO 0);
	Input_B : IN std_logic_vector(7 DOWNTO 0);
	Selector_Operacion : IN std_logic_vector(1 DOWNTO 0);
	Output_Result : OUT std_logic_vector(7 DOWNTO 0);
	NZVC : OUT std_logic_vector(3 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- Output_Result[0]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_Result[1]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_Result[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_Result[3]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_Result[4]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_Result[5]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_Result[6]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_Result[7]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[0]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[1]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[2]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[3]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_B[0]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_A[0]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Selector_Operacion[0]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Selector_Operacion[1]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_B[1]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_A[1]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_B[2]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_A[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_B[3]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_A[3]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_B[4]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_A[4]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_B[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_A[5]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_B[6]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_A[6]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_B[7]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_A[7]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Input_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Input_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Selector_Operacion : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Output_Result : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_NZVC : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector_Operacion[1]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Output_Result[0]~output_o\ : std_logic;
SIGNAL \Output_Result[1]~output_o\ : std_logic;
SIGNAL \Output_Result[2]~output_o\ : std_logic;
SIGNAL \Output_Result[3]~output_o\ : std_logic;
SIGNAL \Output_Result[4]~output_o\ : std_logic;
SIGNAL \Output_Result[5]~output_o\ : std_logic;
SIGNAL \Output_Result[6]~output_o\ : std_logic;
SIGNAL \Output_Result[7]~output_o\ : std_logic;
SIGNAL \NZVC[0]~output_o\ : std_logic;
SIGNAL \NZVC[1]~output_o\ : std_logic;
SIGNAL \NZVC[2]~output_o\ : std_logic;
SIGNAL \NZVC[3]~output_o\ : std_logic;
SIGNAL \Selector_Operacion[0]~input_o\ : std_logic;
SIGNAL \Input_B[0]~input_o\ : std_logic;
SIGNAL \Input_A[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Output_Result[0]~0_combout\ : std_logic;
SIGNAL \Selector_Operacion[1]~input_o\ : std_logic;
SIGNAL \Selector_Operacion[1]~inputclkctrl_outclk\ : std_logic;
SIGNAL \Output_Result[0]$latch~combout\ : std_logic;
SIGNAL \Input_B[1]~input_o\ : std_logic;
SIGNAL \Input_A[1]~input_o\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Output_Result[1]~1_combout\ : std_logic;
SIGNAL \Output_Result[1]$latch~combout\ : std_logic;
SIGNAL \Input_B[2]~input_o\ : std_logic;
SIGNAL \Input_A[2]~input_o\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Output_Result[2]~2_combout\ : std_logic;
SIGNAL \Output_Result[2]$latch~combout\ : std_logic;
SIGNAL \Input_A[3]~input_o\ : std_logic;
SIGNAL \Input_B[3]~input_o\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Output_Result[3]~3_combout\ : std_logic;
SIGNAL \Output_Result[3]$latch~combout\ : std_logic;
SIGNAL \Input_B[4]~input_o\ : std_logic;
SIGNAL \Input_A[4]~input_o\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Output_Result[4]~4_combout\ : std_logic;
SIGNAL \Output_Result[4]$latch~combout\ : std_logic;
SIGNAL \Input_A[5]~input_o\ : std_logic;
SIGNAL \Input_B[5]~input_o\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Output_Result[5]~5_combout\ : std_logic;
SIGNAL \Output_Result[5]$latch~combout\ : std_logic;
SIGNAL \Input_B[6]~input_o\ : std_logic;
SIGNAL \Input_A[6]~input_o\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Output_Result[6]~6_combout\ : std_logic;
SIGNAL \Output_Result[6]$latch~combout\ : std_logic;
SIGNAL \Input_A[7]~input_o\ : std_logic;
SIGNAL \Input_B[7]~input_o\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Output_Result[7]~7_combout\ : std_logic;
SIGNAL \Output_Result[7]$latch~combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \NZVC[0]~0_combout\ : std_logic;
SIGNAL \NZVC[0]$latch~combout\ : std_logic;
SIGNAL \NZVC[1]~1_combout\ : std_logic;
SIGNAL \NZVC[1]~2_combout\ : std_logic;
SIGNAL \NZVC[1]$latch~combout\ : std_logic;
SIGNAL \NZVC[2]~3_combout\ : std_logic;
SIGNAL \NZVC[2]~4_combout\ : std_logic;
SIGNAL \NZVC[2]~5_combout\ : std_logic;
SIGNAL \NZVC[2]~6_combout\ : std_logic;
SIGNAL \NZVC[2]~7_combout\ : std_logic;
SIGNAL \NZVC[2]~8_combout\ : std_logic;
SIGNAL \NZVC[2]$latch~combout\ : std_logic;

BEGIN

ww_Input_A <= Input_A;
ww_Input_B <= Input_B;
ww_Selector_Operacion <= Selector_Operacion;
Output_Result <= ww_Output_Result;
NZVC <= ww_NZVC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Selector_Operacion[1]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector_Operacion[1]~input_o\);

-- Location: IOOBUF_X32_Y29_N2
\Output_Result[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Output_Result[0]$latch~combout\,
	devoe => ww_devoe,
	o => \Output_Result[0]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\Output_Result[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Output_Result[1]$latch~combout\,
	devoe => ww_devoe,
	o => \Output_Result[1]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\Output_Result[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Output_Result[2]$latch~combout\,
	devoe => ww_devoe,
	o => \Output_Result[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\Output_Result[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Output_Result[3]$latch~combout\,
	devoe => ww_devoe,
	o => \Output_Result[3]~output_o\);

-- Location: IOOBUF_X21_Y0_N30
\Output_Result[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Output_Result[4]$latch~combout\,
	devoe => ww_devoe,
	o => \Output_Result[4]~output_o\);

-- Location: IOOBUF_X35_Y29_N30
\Output_Result[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Output_Result[5]$latch~combout\,
	devoe => ww_devoe,
	o => \Output_Result[5]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\Output_Result[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Output_Result[6]$latch~combout\,
	devoe => ww_devoe,
	o => \Output_Result[6]~output_o\);

-- Location: IOOBUF_X41_Y5_N16
\Output_Result[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Output_Result[7]$latch~combout\,
	devoe => ww_devoe,
	o => \Output_Result[7]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\NZVC[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \NZVC[0]$latch~combout\,
	devoe => ww_devoe,
	o => \NZVC[0]~output_o\);

-- Location: IOOBUF_X37_Y0_N30
\NZVC[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \NZVC[1]$latch~combout\,
	devoe => ww_devoe,
	o => \NZVC[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\NZVC[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \NZVC[2]$latch~combout\,
	devoe => ww_devoe,
	o => \NZVC[2]~output_o\);

-- Location: IOOBUF_X41_Y7_N16
\NZVC[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Output_Result[7]$latch~combout\,
	devoe => ww_devoe,
	o => \NZVC[3]~output_o\);

-- Location: IOIBUF_X32_Y0_N8
\Selector_Operacion[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Selector_Operacion(0),
	o => \Selector_Operacion[0]~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\Input_B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_B(0),
	o => \Input_B[0]~input_o\);

-- Location: IOIBUF_X37_Y0_N8
\Input_A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_A(0),
	o => \Input_A[0]~input_o\);

-- Location: LCCOMB_X28_Y4_N10
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\Input_B[0]~input_o\ & (\Input_A[0]~input_o\ $ (VCC))) # (!\Input_B[0]~input_o\ & (\Input_A[0]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\Input_B[0]~input_o\ & \Input_A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input_B[0]~input_o\,
	datab => \Input_A[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X24_Y4_N4
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\Input_A[0]~input_o\ & ((GND) # (!\Input_B[0]~input_o\))) # (!\Input_A[0]~input_o\ & (\Input_B[0]~input_o\ $ (GND)))
-- \Add1~1\ = CARRY((\Input_A[0]~input_o\) # (!\Input_B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input_A[0]~input_o\,
	datab => \Input_B[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X24_Y4_N24
\Output_Result[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Output_Result[0]~0_combout\ = (\Selector_Operacion[0]~input_o\ & ((\Add1~0_combout\))) # (!\Selector_Operacion[0]~input_o\ & (\Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector_Operacion[0]~input_o\,
	datab => \Add0~0_combout\,
	datac => \Add1~0_combout\,
	combout => \Output_Result[0]~0_combout\);

-- Location: IOIBUF_X0_Y14_N1
\Selector_Operacion[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Selector_Operacion(1),
	o => \Selector_Operacion[1]~input_o\);

-- Location: CLKCTRL_G4
\Selector_Operacion[1]~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector_Operacion[1]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector_Operacion[1]~inputclkctrl_outclk\);

-- Location: LCCOMB_X31_Y20_N0
\Output_Result[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Output_Result[0]$latch~combout\ = (GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & ((\Output_Result[0]$latch~combout\))) # (!GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & (\Output_Result[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Output_Result[0]~0_combout\,
	datac => \Selector_Operacion[1]~inputclkctrl_outclk\,
	datad => \Output_Result[0]$latch~combout\,
	combout => \Output_Result[0]$latch~combout\);

-- Location: IOIBUF_X35_Y0_N8
\Input_B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_B(1),
	o => \Input_B[1]~input_o\);

-- Location: IOIBUF_X41_Y4_N8
\Input_A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_A(1),
	o => \Input_A[1]~input_o\);

-- Location: LCCOMB_X24_Y4_N6
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Input_B[1]~input_o\ & ((\Input_A[1]~input_o\ & (!\Add1~1\)) # (!\Input_A[1]~input_o\ & ((\Add1~1\) # (GND))))) # (!\Input_B[1]~input_o\ & ((\Input_A[1]~input_o\ & (\Add1~1\ & VCC)) # (!\Input_A[1]~input_o\ & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\Input_B[1]~input_o\ & ((!\Add1~1\) # (!\Input_A[1]~input_o\))) # (!\Input_B[1]~input_o\ & (!\Input_A[1]~input_o\ & !\Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_B[1]~input_o\,
	datab => \Input_A[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X28_Y4_N12
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\Input_B[1]~input_o\ & ((\Input_A[1]~input_o\ & (\Add0~1\ & VCC)) # (!\Input_A[1]~input_o\ & (!\Add0~1\)))) # (!\Input_B[1]~input_o\ & ((\Input_A[1]~input_o\ & (!\Add0~1\)) # (!\Input_A[1]~input_o\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\Input_B[1]~input_o\ & (!\Input_A[1]~input_o\ & !\Add0~1\)) # (!\Input_B[1]~input_o\ & ((!\Add0~1\) # (!\Input_A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_B[1]~input_o\,
	datab => \Input_A[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X24_Y4_N26
\Output_Result[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Output_Result[1]~1_combout\ = (\Selector_Operacion[0]~input_o\ & (\Add1~2_combout\)) # (!\Selector_Operacion[0]~input_o\ & ((\Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Add0~2_combout\,
	datac => \Selector_Operacion[0]~input_o\,
	combout => \Output_Result[1]~1_combout\);

-- Location: LCCOMB_X27_Y16_N0
\Output_Result[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Output_Result[1]$latch~combout\ = (GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & ((\Output_Result[1]$latch~combout\))) # (!GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & (\Output_Result[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Output_Result[1]~1_combout\,
	datac => \Selector_Operacion[1]~inputclkctrl_outclk\,
	datad => \Output_Result[1]$latch~combout\,
	combout => \Output_Result[1]$latch~combout\);

-- Location: IOIBUF_X30_Y0_N15
\Input_B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_B(2),
	o => \Input_B[2]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\Input_A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_A(2),
	o => \Input_A[2]~input_o\);

-- Location: LCCOMB_X28_Y4_N14
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\Input_B[2]~input_o\ $ (\Input_A[2]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\Input_B[2]~input_o\ & ((\Input_A[2]~input_o\) # (!\Add0~3\))) # (!\Input_B[2]~input_o\ & (\Input_A[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_B[2]~input_o\,
	datab => \Input_A[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X24_Y4_N8
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\Input_B[2]~input_o\ $ (\Input_A[2]~input_o\ $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\Input_B[2]~input_o\ & (\Input_A[2]~input_o\ & !\Add1~3\)) # (!\Input_B[2]~input_o\ & ((\Input_A[2]~input_o\) # (!\Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_B[2]~input_o\,
	datab => \Input_A[2]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X24_Y4_N28
\Output_Result[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Output_Result[2]~2_combout\ = (\Selector_Operacion[0]~input_o\ & ((\Add1~4_combout\))) # (!\Selector_Operacion[0]~input_o\ & (\Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add1~4_combout\,
	datac => \Selector_Operacion[0]~input_o\,
	combout => \Output_Result[2]~2_combout\);

-- Location: LCCOMB_X19_Y4_N0
\Output_Result[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Output_Result[2]$latch~combout\ = (GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & ((\Output_Result[2]$latch~combout\))) # (!GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & (\Output_Result[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Output_Result[2]~2_combout\,
	datac => \Selector_Operacion[1]~inputclkctrl_outclk\,
	datad => \Output_Result[2]$latch~combout\,
	combout => \Output_Result[2]$latch~combout\);

-- Location: IOIBUF_X26_Y0_N29
\Input_A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_A(3),
	o => \Input_A[3]~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\Input_B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_B(3),
	o => \Input_B[3]~input_o\);

-- Location: LCCOMB_X28_Y4_N16
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\Input_A[3]~input_o\ & ((\Input_B[3]~input_o\ & (\Add0~5\ & VCC)) # (!\Input_B[3]~input_o\ & (!\Add0~5\)))) # (!\Input_A[3]~input_o\ & ((\Input_B[3]~input_o\ & (!\Add0~5\)) # (!\Input_B[3]~input_o\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\Input_A[3]~input_o\ & (!\Input_B[3]~input_o\ & !\Add0~5\)) # (!\Input_A[3]~input_o\ & ((!\Add0~5\) # (!\Input_B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_A[3]~input_o\,
	datab => \Input_B[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X24_Y4_N10
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Input_B[3]~input_o\ & ((\Input_A[3]~input_o\ & (!\Add1~5\)) # (!\Input_A[3]~input_o\ & ((\Add1~5\) # (GND))))) # (!\Input_B[3]~input_o\ & ((\Input_A[3]~input_o\ & (\Add1~5\ & VCC)) # (!\Input_A[3]~input_o\ & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\Input_B[3]~input_o\ & ((!\Add1~5\) # (!\Input_A[3]~input_o\))) # (!\Input_B[3]~input_o\ & (!\Input_A[3]~input_o\ & !\Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_B[3]~input_o\,
	datab => \Input_A[3]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X28_Y1_N8
\Output_Result[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Output_Result[3]~3_combout\ = (\Selector_Operacion[0]~input_o\ & ((\Add1~6_combout\))) # (!\Selector_Operacion[0]~input_o\ & (\Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datac => \Add1~6_combout\,
	datad => \Selector_Operacion[0]~input_o\,
	combout => \Output_Result[3]~3_combout\);

-- Location: LCCOMB_X28_Y1_N28
\Output_Result[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Output_Result[3]$latch~combout\ = (GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & (\Output_Result[3]$latch~combout\)) # (!GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & ((\Output_Result[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Output_Result[3]$latch~combout\,
	datac => \Output_Result[3]~3_combout\,
	datad => \Selector_Operacion[1]~inputclkctrl_outclk\,
	combout => \Output_Result[3]$latch~combout\);

-- Location: IOIBUF_X41_Y8_N1
\Input_B[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_B(4),
	o => \Input_B[4]~input_o\);

-- Location: IOIBUF_X26_Y0_N22
\Input_A[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_A(4),
	o => \Input_A[4]~input_o\);

-- Location: LCCOMB_X28_Y4_N18
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\Input_B[4]~input_o\ $ (\Input_A[4]~input_o\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\Input_B[4]~input_o\ & ((\Input_A[4]~input_o\) # (!\Add0~7\))) # (!\Input_B[4]~input_o\ & (\Input_A[4]~input_o\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_B[4]~input_o\,
	datab => \Input_A[4]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X24_Y4_N12
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\Input_B[4]~input_o\ $ (\Input_A[4]~input_o\ $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\Input_B[4]~input_o\ & (\Input_A[4]~input_o\ & !\Add1~7\)) # (!\Input_B[4]~input_o\ & ((\Input_A[4]~input_o\) # (!\Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_B[4]~input_o\,
	datab => \Input_A[4]~input_o\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X24_Y4_N30
\Output_Result[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Output_Result[4]~4_combout\ = (\Selector_Operacion[0]~input_o\ & ((\Add1~8_combout\))) # (!\Selector_Operacion[0]~input_o\ & (\Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datac => \Selector_Operacion[0]~input_o\,
	datad => \Add1~8_combout\,
	combout => \Output_Result[4]~4_combout\);

-- Location: LCCOMB_X21_Y3_N24
\Output_Result[4]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Output_Result[4]$latch~combout\ = (GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & (\Output_Result[4]$latch~combout\)) # (!GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & ((\Output_Result[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Output_Result[4]$latch~combout\,
	datac => \Output_Result[4]~4_combout\,
	datad => \Selector_Operacion[1]~inputclkctrl_outclk\,
	combout => \Output_Result[4]$latch~combout\);

-- Location: IOIBUF_X30_Y0_N1
\Input_A[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_A(5),
	o => \Input_A[5]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\Input_B[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_B(5),
	o => \Input_B[5]~input_o\);

-- Location: LCCOMB_X24_Y4_N14
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\Input_A[5]~input_o\ & ((\Input_B[5]~input_o\ & (!\Add1~9\)) # (!\Input_B[5]~input_o\ & (\Add1~9\ & VCC)))) # (!\Input_A[5]~input_o\ & ((\Input_B[5]~input_o\ & ((\Add1~9\) # (GND))) # (!\Input_B[5]~input_o\ & (!\Add1~9\))))
-- \Add1~11\ = CARRY((\Input_A[5]~input_o\ & (\Input_B[5]~input_o\ & !\Add1~9\)) # (!\Input_A[5]~input_o\ & ((\Input_B[5]~input_o\) # (!\Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_A[5]~input_o\,
	datab => \Input_B[5]~input_o\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X28_Y4_N20
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\Input_A[5]~input_o\ & ((\Input_B[5]~input_o\ & (\Add0~9\ & VCC)) # (!\Input_B[5]~input_o\ & (!\Add0~9\)))) # (!\Input_A[5]~input_o\ & ((\Input_B[5]~input_o\ & (!\Add0~9\)) # (!\Input_B[5]~input_o\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\Input_A[5]~input_o\ & (!\Input_B[5]~input_o\ & !\Add0~9\)) # (!\Input_A[5]~input_o\ & ((!\Add0~9\) # (!\Input_B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_A[5]~input_o\,
	datab => \Input_B[5]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X28_Y4_N8
\Output_Result[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Output_Result[5]~5_combout\ = (\Selector_Operacion[0]~input_o\ & (\Add1~10_combout\)) # (!\Selector_Operacion[0]~input_o\ & ((\Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \Add0~10_combout\,
	datad => \Selector_Operacion[0]~input_o\,
	combout => \Output_Result[5]~5_combout\);

-- Location: LCCOMB_X36_Y28_N0
\Output_Result[5]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Output_Result[5]$latch~combout\ = (GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & (\Output_Result[5]$latch~combout\)) # (!GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & ((\Output_Result[5]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Output_Result[5]$latch~combout\,
	datac => \Output_Result[5]~5_combout\,
	datad => \Selector_Operacion[1]~inputclkctrl_outclk\,
	combout => \Output_Result[5]$latch~combout\);

-- Location: IOIBUF_X28_Y0_N8
\Input_B[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_B(6),
	o => \Input_B[6]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\Input_A[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_A(6),
	o => \Input_A[6]~input_o\);

-- Location: LCCOMB_X24_Y4_N16
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\Input_B[6]~input_o\ $ (\Input_A[6]~input_o\ $ (\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\Input_B[6]~input_o\ & (\Input_A[6]~input_o\ & !\Add1~11\)) # (!\Input_B[6]~input_o\ & ((\Input_A[6]~input_o\) # (!\Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_B[6]~input_o\,
	datab => \Input_A[6]~input_o\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X28_Y4_N22
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\Input_A[6]~input_o\ $ (\Input_B[6]~input_o\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\Input_A[6]~input_o\ & ((\Input_B[6]~input_o\) # (!\Add0~11\))) # (!\Input_A[6]~input_o\ & (\Input_B[6]~input_o\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_A[6]~input_o\,
	datab => \Input_B[6]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X24_Y4_N0
\Output_Result[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Output_Result[6]~6_combout\ = (\Selector_Operacion[0]~input_o\ & (\Add1~12_combout\)) # (!\Selector_Operacion[0]~input_o\ & ((\Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector_Operacion[0]~input_o\,
	datab => \Add1~12_combout\,
	datac => \Add0~12_combout\,
	combout => \Output_Result[6]~6_combout\);

-- Location: LCCOMB_X23_Y3_N16
\Output_Result[6]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Output_Result[6]$latch~combout\ = (GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & ((\Output_Result[6]$latch~combout\))) # (!GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & (\Output_Result[6]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Output_Result[6]~6_combout\,
	datac => \Selector_Operacion[1]~inputclkctrl_outclk\,
	datad => \Output_Result[6]$latch~combout\,
	combout => \Output_Result[6]$latch~combout\);

-- Location: IOIBUF_X41_Y5_N8
\Input_A[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_A(7),
	o => \Input_A[7]~input_o\);

-- Location: IOIBUF_X30_Y0_N29
\Input_B[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_B(7),
	o => \Input_B[7]~input_o\);

-- Location: LCCOMB_X28_Y4_N24
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\Input_A[7]~input_o\ & ((\Input_B[7]~input_o\ & (\Add0~13\ & VCC)) # (!\Input_B[7]~input_o\ & (!\Add0~13\)))) # (!\Input_A[7]~input_o\ & ((\Input_B[7]~input_o\ & (!\Add0~13\)) # (!\Input_B[7]~input_o\ & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((\Input_A[7]~input_o\ & (!\Input_B[7]~input_o\ & !\Add0~13\)) # (!\Input_A[7]~input_o\ & ((!\Add0~13\) # (!\Input_B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_A[7]~input_o\,
	datab => \Input_B[7]~input_o\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X24_Y4_N18
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \Input_B[7]~input_o\ $ (\Add1~13\ $ (!\Input_A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Input_B[7]~input_o\,
	datad => \Input_A[7]~input_o\,
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X28_Y4_N2
\Output_Result[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Output_Result[7]~7_combout\ = (\Selector_Operacion[0]~input_o\ & ((\Add1~14_combout\))) # (!\Selector_Operacion[0]~input_o\ & (\Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~14_combout\,
	datac => \Add1~14_combout\,
	datad => \Selector_Operacion[0]~input_o\,
	combout => \Output_Result[7]~7_combout\);

-- Location: LCCOMB_X35_Y5_N24
\Output_Result[7]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Output_Result[7]$latch~combout\ = (GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & ((\Output_Result[7]$latch~combout\))) # (!GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & (\Output_Result[7]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Result[7]~7_combout\,
	datac => \Selector_Operacion[1]~inputclkctrl_outclk\,
	datad => \Output_Result[7]$latch~combout\,
	combout => \Output_Result[7]$latch~combout\);

-- Location: LCCOMB_X28_Y1_N10
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((\Input_B[0]~input_o\ & !\Input_A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_B[0]~input_o\,
	datab => \Input_A[0]~input_o\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X28_Y1_N12
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\Input_A[1]~input_o\ & ((!\LessThan0~1_cout\) # (!\Input_B[1]~input_o\))) # (!\Input_A[1]~input_o\ & (!\Input_B[1]~input_o\ & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_A[1]~input_o\,
	datab => \Input_B[1]~input_o\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X28_Y1_N14
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\Input_B[2]~input_o\ & ((!\LessThan0~3_cout\) # (!\Input_A[2]~input_o\))) # (!\Input_B[2]~input_o\ & (!\Input_A[2]~input_o\ & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_B[2]~input_o\,
	datab => \Input_A[2]~input_o\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X28_Y1_N16
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\Input_B[3]~input_o\ & (\Input_A[3]~input_o\ & !\LessThan0~5_cout\)) # (!\Input_B[3]~input_o\ & ((\Input_A[3]~input_o\) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_B[3]~input_o\,
	datab => \Input_A[3]~input_o\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X28_Y1_N18
\LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\Input_A[4]~input_o\ & (\Input_B[4]~input_o\ & !\LessThan0~7_cout\)) # (!\Input_A[4]~input_o\ & ((\Input_B[4]~input_o\) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_A[4]~input_o\,
	datab => \Input_B[4]~input_o\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X28_Y1_N20
\LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\Input_A[5]~input_o\ & ((!\LessThan0~9_cout\) # (!\Input_B[5]~input_o\))) # (!\Input_A[5]~input_o\ & (!\Input_B[5]~input_o\ & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_A[5]~input_o\,
	datab => \Input_B[5]~input_o\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X28_Y1_N22
\LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\Input_B[6]~input_o\ & ((!\LessThan0~11_cout\) # (!\Input_A[6]~input_o\))) # (!\Input_B[6]~input_o\ & (!\Input_A[6]~input_o\ & !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_B[6]~input_o\,
	datab => \Input_A[6]~input_o\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X28_Y1_N24
\LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = (\Input_B[7]~input_o\ & ((\LessThan0~13_cout\) # (!\Input_A[7]~input_o\))) # (!\Input_B[7]~input_o\ & (\LessThan0~13_cout\ & !\Input_A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_B[7]~input_o\,
	datad => \Input_A[7]~input_o\,
	cin => \LessThan0~13_cout\,
	combout => \LessThan0~14_combout\);

-- Location: LCCOMB_X28_Y4_N26
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = !\Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~15\,
	combout => \Add0~16_combout\);

-- Location: LCCOMB_X28_Y1_N26
\NZVC[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[0]~0_combout\ = (\Selector_Operacion[0]~input_o\ & (\LessThan0~14_combout\)) # (!\Selector_Operacion[0]~input_o\ & ((\Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~14_combout\,
	datac => \Add0~16_combout\,
	datad => \Selector_Operacion[0]~input_o\,
	combout => \NZVC[0]~0_combout\);

-- Location: LCCOMB_X28_Y1_N6
\NZVC[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[0]$latch~combout\ = (GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & (\NZVC[0]$latch~combout\)) # (!GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & ((\NZVC[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NZVC[0]$latch~combout\,
	datac => \NZVC[0]~0_combout\,
	datad => \Selector_Operacion[1]~inputclkctrl_outclk\,
	combout => \NZVC[0]$latch~combout\);

-- Location: LCCOMB_X28_Y4_N28
\NZVC[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[1]~1_combout\ = (\Selector_Operacion[0]~input_o\ & ((\Add1~14_combout\))) # (!\Selector_Operacion[0]~input_o\ & (\Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~14_combout\,
	datac => \Add1~14_combout\,
	datad => \Selector_Operacion[0]~input_o\,
	combout => \NZVC[1]~1_combout\);

-- Location: LCCOMB_X28_Y4_N30
\NZVC[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[1]~2_combout\ = (\NZVC[1]~1_combout\ & (!\Input_A[7]~input_o\ & (\Input_B[7]~input_o\ $ (!\Selector_Operacion[0]~input_o\)))) # (!\NZVC[1]~1_combout\ & (\Input_A[7]~input_o\ & (\Input_B[7]~input_o\ $ (\Selector_Operacion[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input_B[7]~input_o\,
	datab => \NZVC[1]~1_combout\,
	datac => \Input_A[7]~input_o\,
	datad => \Selector_Operacion[0]~input_o\,
	combout => \NZVC[1]~2_combout\);

-- Location: LCCOMB_X37_Y2_N0
\NZVC[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[1]$latch~combout\ = (GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & ((\NZVC[1]$latch~combout\))) # (!GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & (\NZVC[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NZVC[1]~2_combout\,
	datac => \Selector_Operacion[1]~inputclkctrl_outclk\,
	datad => \NZVC[1]$latch~combout\,
	combout => \NZVC[1]$latch~combout\);

-- Location: LCCOMB_X24_Y4_N2
\NZVC[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[2]~3_combout\ = (\Selector_Operacion[0]~input_o\ & (!\Add1~4_combout\ & (!\Add1~0_combout\ & !\Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector_Operacion[0]~input_o\,
	datab => \Add1~4_combout\,
	datac => \Add1~0_combout\,
	datad => \Add1~2_combout\,
	combout => \NZVC[2]~3_combout\);

-- Location: LCCOMB_X24_Y4_N20
\NZVC[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[2]~4_combout\ = (!\Add1~8_combout\ & (!\Add1~12_combout\ & (!\Add1~10_combout\ & !\Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Add1~12_combout\,
	datac => \Add1~10_combout\,
	datad => \Add1~6_combout\,
	combout => \NZVC[2]~4_combout\);

-- Location: LCCOMB_X24_Y4_N22
\NZVC[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[2]~5_combout\ = (\NZVC[2]~3_combout\ & (!\Add1~14_combout\ & \NZVC[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NZVC[2]~3_combout\,
	datac => \Add1~14_combout\,
	datad => \NZVC[2]~4_combout\,
	combout => \NZVC[2]~5_combout\);

-- Location: LCCOMB_X28_Y4_N0
\NZVC[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[2]~6_combout\ = (!\Add0~2_combout\ & (!\Selector_Operacion[0]~input_o\ & (!\Add0~4_combout\ & !\Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Selector_Operacion[0]~input_o\,
	datac => \Add0~4_combout\,
	datad => \Add0~0_combout\,
	combout => \NZVC[2]~6_combout\);

-- Location: LCCOMB_X28_Y4_N4
\NZVC[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[2]~7_combout\ = (!\Add0~6_combout\ & (!\Add0~8_combout\ & (!\Add0~12_combout\ & !\Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add0~8_combout\,
	datac => \Add0~12_combout\,
	datad => \Add0~10_combout\,
	combout => \NZVC[2]~7_combout\);

-- Location: LCCOMB_X28_Y4_N6
\NZVC[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[2]~8_combout\ = (\NZVC[2]~5_combout\) # ((\NZVC[2]~6_combout\ & (\NZVC[2]~7_combout\ & !\Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NZVC[2]~5_combout\,
	datab => \NZVC[2]~6_combout\,
	datac => \NZVC[2]~7_combout\,
	datad => \Add0~14_combout\,
	combout => \NZVC[2]~8_combout\);

-- Location: LCCOMB_X27_Y3_N16
\NZVC[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[2]$latch~combout\ = (GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & ((\NZVC[2]$latch~combout\))) # (!GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & (\NZVC[2]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NZVC[2]~8_combout\,
	datac => \Selector_Operacion[1]~inputclkctrl_outclk\,
	datad => \NZVC[2]$latch~combout\,
	combout => \NZVC[2]$latch~combout\);

ww_Output_Result(0) <= \Output_Result[0]~output_o\;

ww_Output_Result(1) <= \Output_Result[1]~output_o\;

ww_Output_Result(2) <= \Output_Result[2]~output_o\;

ww_Output_Result(3) <= \Output_Result[3]~output_o\;

ww_Output_Result(4) <= \Output_Result[4]~output_o\;

ww_Output_Result(5) <= \Output_Result[5]~output_o\;

ww_Output_Result(6) <= \Output_Result[6]~output_o\;

ww_Output_Result(7) <= \Output_Result[7]~output_o\;

ww_NZVC(0) <= \NZVC[0]~output_o\;

ww_NZVC(1) <= \NZVC[1]~output_o\;

ww_NZVC(2) <= \NZVC[2]~output_o\;

ww_NZVC(3) <= \NZVC[3]~output_o\;
END structure;


