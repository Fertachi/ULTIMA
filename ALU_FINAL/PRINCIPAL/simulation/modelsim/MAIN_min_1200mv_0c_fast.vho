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

-- DATE "06/03/2024 15:00:04"

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

ENTITY 	Main IS
    PORT (
	Input_A : IN std_logic_vector(7 DOWNTO 0);
	Input_B : IN std_logic_vector(7 DOWNTO 0);
	Selector_Operacion : IN std_logic_vector(1 DOWNTO 0);
	NZVC_vector : BUFFER std_logic_vector(3 DOWNTO 0);
	unidades : BUFFER std_logic_vector(6 DOWNTO 0);
	decenas : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END Main;

-- Design Ports Information
-- NZVC_vector[0]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC_vector[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC_vector[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC_vector[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidades[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidades[1]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidades[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidades[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidades[4]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidades[5]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidades[6]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decenas[0]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decenas[1]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decenas[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decenas[3]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decenas[4]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decenas[5]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decenas[6]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_A[7]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_B[7]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_A[6]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_B[6]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_A[5]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_B[5]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_A[4]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_B[4]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_A[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_B[3]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_A[2]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_B[2]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_A[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_B[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_A[0]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_B[0]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Selector_Operacion[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Selector_Operacion[1]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Main IS
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
SIGNAL ww_NZVC_vector : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_unidades : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_decenas : std_logic_vector(6 DOWNTO 0);
SIGNAL \Selector_Operacion[1]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \NZVC_vector[0]~output_o\ : std_logic;
SIGNAL \NZVC_vector[1]~output_o\ : std_logic;
SIGNAL \NZVC_vector[2]~output_o\ : std_logic;
SIGNAL \NZVC_vector[3]~output_o\ : std_logic;
SIGNAL \unidades[0]~output_o\ : std_logic;
SIGNAL \unidades[1]~output_o\ : std_logic;
SIGNAL \unidades[2]~output_o\ : std_logic;
SIGNAL \unidades[3]~output_o\ : std_logic;
SIGNAL \unidades[4]~output_o\ : std_logic;
SIGNAL \unidades[5]~output_o\ : std_logic;
SIGNAL \unidades[6]~output_o\ : std_logic;
SIGNAL \decenas[0]~output_o\ : std_logic;
SIGNAL \decenas[1]~output_o\ : std_logic;
SIGNAL \decenas[2]~output_o\ : std_logic;
SIGNAL \decenas[3]~output_o\ : std_logic;
SIGNAL \decenas[4]~output_o\ : std_logic;
SIGNAL \decenas[5]~output_o\ : std_logic;
SIGNAL \decenas[6]~output_o\ : std_logic;
SIGNAL \Input_A[7]~input_o\ : std_logic;
SIGNAL \Input_B[7]~input_o\ : std_logic;
SIGNAL \Input_A[6]~input_o\ : std_logic;
SIGNAL \Input_B[6]~input_o\ : std_logic;
SIGNAL \Input_A[5]~input_o\ : std_logic;
SIGNAL \Input_B[5]~input_o\ : std_logic;
SIGNAL \Input_A[4]~input_o\ : std_logic;
SIGNAL \Input_B[4]~input_o\ : std_logic;
SIGNAL \Input_A[3]~input_o\ : std_logic;
SIGNAL \Input_B[3]~input_o\ : std_logic;
SIGNAL \Input_A[2]~input_o\ : std_logic;
SIGNAL \Input_B[2]~input_o\ : std_logic;
SIGNAL \Input_A[1]~input_o\ : std_logic;
SIGNAL \Input_B[1]~input_o\ : std_logic;
SIGNAL \Input_B[0]~input_o\ : std_logic;
SIGNAL \Input_A[0]~input_o\ : std_logic;
SIGNAL \Port_ALU|LessThan0~1_cout\ : std_logic;
SIGNAL \Port_ALU|LessThan0~3_cout\ : std_logic;
SIGNAL \Port_ALU|LessThan0~5_cout\ : std_logic;
SIGNAL \Port_ALU|LessThan0~7_cout\ : std_logic;
SIGNAL \Port_ALU|LessThan0~9_cout\ : std_logic;
SIGNAL \Port_ALU|LessThan0~11_cout\ : std_logic;
SIGNAL \Port_ALU|LessThan0~13_cout\ : std_logic;
SIGNAL \Port_ALU|LessThan0~14_combout\ : std_logic;
SIGNAL \Port_ALU|Add0~1\ : std_logic;
SIGNAL \Port_ALU|Add0~3\ : std_logic;
SIGNAL \Port_ALU|Add0~5\ : std_logic;
SIGNAL \Port_ALU|Add0~7\ : std_logic;
SIGNAL \Port_ALU|Add0~9\ : std_logic;
SIGNAL \Port_ALU|Add0~11\ : std_logic;
SIGNAL \Port_ALU|Add0~13\ : std_logic;
SIGNAL \Port_ALU|Add0~15\ : std_logic;
SIGNAL \Port_ALU|Add0~16_combout\ : std_logic;
SIGNAL \Selector_Operacion[0]~input_o\ : std_logic;
SIGNAL \Port_ALU|NZVC[0]~0_combout\ : std_logic;
SIGNAL \Selector_Operacion[1]~input_o\ : std_logic;
SIGNAL \Selector_Operacion[1]~inputclkctrl_outclk\ : std_logic;
SIGNAL \Port_ALU|Add1~1\ : std_logic;
SIGNAL \Port_ALU|Add1~3\ : std_logic;
SIGNAL \Port_ALU|Add1~5\ : std_logic;
SIGNAL \Port_ALU|Add1~7\ : std_logic;
SIGNAL \Port_ALU|Add1~9\ : std_logic;
SIGNAL \Port_ALU|Add1~11\ : std_logic;
SIGNAL \Port_ALU|Add1~13\ : std_logic;
SIGNAL \Port_ALU|Add1~14_combout\ : std_logic;
SIGNAL \Port_ALU|Add0~14_combout\ : std_logic;
SIGNAL \Port_ALU|NZVC[1]~1_combout\ : std_logic;
SIGNAL \Port_ALU|NZVC[1]~2_combout\ : std_logic;
SIGNAL \Port_ALU|Add1~0_combout\ : std_logic;
SIGNAL \Port_ALU|Add1~2_combout\ : std_logic;
SIGNAL \Port_ALU|NZVC[2]~3_combout\ : std_logic;
SIGNAL \Port_ALU|Add1~12_combout\ : std_logic;
SIGNAL \Port_ALU|Add1~8_combout\ : std_logic;
SIGNAL \Port_ALU|Add1~6_combout\ : std_logic;
SIGNAL \Port_ALU|Add1~10_combout\ : std_logic;
SIGNAL \Port_ALU|Add1~4_combout\ : std_logic;
SIGNAL \Port_ALU|NZVC[2]~4_combout\ : std_logic;
SIGNAL \Port_ALU|NZVC[2]~5_combout\ : std_logic;
SIGNAL \Port_ALU|Add0~0_combout\ : std_logic;
SIGNAL \Port_ALU|Add0~2_combout\ : std_logic;
SIGNAL \Port_ALU|NZVC[2]~6_combout\ : std_logic;
SIGNAL \Port_ALU|Add0~12_combout\ : std_logic;
SIGNAL \Port_ALU|Add0~8_combout\ : std_logic;
SIGNAL \Port_ALU|Add0~10_combout\ : std_logic;
SIGNAL \Port_ALU|Add0~4_combout\ : std_logic;
SIGNAL \Port_ALU|Add0~6_combout\ : std_logic;
SIGNAL \Port_ALU|NZVC[2]~7_combout\ : std_logic;
SIGNAL \Port_ALU|NZVC[2]~8_combout\ : std_logic;
SIGNAL \Port_ALU|Output_Result[7]~0_combout\ : std_logic;
SIGNAL \Port_ALU|Output_Result[0]~1_combout\ : std_logic;
SIGNAL \Port_ALU|Output_Result[2]~3_combout\ : std_logic;
SIGNAL \Port_ALU|Output_Result[3]~4_combout\ : std_logic;
SIGNAL \Port_ALU|Output_Result[1]~2_combout\ : std_logic;
SIGNAL \BCD_2|Mux6~0_combout\ : std_logic;
SIGNAL \BCD_2|Mux5~0_combout\ : std_logic;
SIGNAL \BCD_2|Mux4~0_combout\ : std_logic;
SIGNAL \BCD_2|Mux3~0_combout\ : std_logic;
SIGNAL \BCD_2|Mux2~0_combout\ : std_logic;
SIGNAL \BCD_2|Mux1~0_combout\ : std_logic;
SIGNAL \BCD_2|Mux0~0_combout\ : std_logic;
SIGNAL \Port_ALU|Output_Result[5]~6_combout\ : std_logic;
SIGNAL \Port_ALU|Output_Result[4]~5_combout\ : std_logic;
SIGNAL \Port_ALU|Output_Result[6]~7_combout\ : std_logic;
SIGNAL \BCD_1|Mux6~0_combout\ : std_logic;
SIGNAL \BCD_1|Mux5~0_combout\ : std_logic;
SIGNAL \BCD_1|Mux4~0_combout\ : std_logic;
SIGNAL \BCD_1|Mux3~0_combout\ : std_logic;
SIGNAL \BCD_1|Mux2~0_combout\ : std_logic;
SIGNAL \BCD_1|Mux1~0_combout\ : std_logic;
SIGNAL \BCD_1|Mux0~0_combout\ : std_logic;
SIGNAL \Port_ALU|Output_Result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Port_ALU|NZVC\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BCD_1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \BCD_2|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_Input_A <= Input_A;
ww_Input_B <= Input_B;
ww_Selector_Operacion <= Selector_Operacion;
NZVC_vector <= ww_NZVC_vector;
unidades <= ww_unidades;
decenas <= ww_decenas;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Selector_Operacion[1]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector_Operacion[1]~input_o\);
\BCD_1|ALT_INV_Mux6~0_combout\ <= NOT \BCD_1|Mux6~0_combout\;
\BCD_2|ALT_INV_Mux6~0_combout\ <= NOT \BCD_2|Mux6~0_combout\;

-- Location: IOOBUF_X26_Y29_N2
\NZVC_vector[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Port_ALU|NZVC\(0),
	devoe => ww_devoe,
	o => \NZVC_vector[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\NZVC_vector[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Port_ALU|NZVC\(1),
	devoe => ww_devoe,
	o => \NZVC_vector[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\NZVC_vector[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Port_ALU|NZVC\(2),
	devoe => ww_devoe,
	o => \NZVC_vector[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\NZVC_vector[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Port_ALU|NZVC\(3),
	devoe => ww_devoe,
	o => \NZVC_vector[3]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\unidades[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \unidades[0]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\unidades[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \unidades[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\unidades[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \unidades[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\unidades[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \unidades[3]~output_o\);

-- Location: IOOBUF_X21_Y29_N16
\unidades[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \unidades[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\unidades[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \unidades[5]~output_o\);

-- Location: IOOBUF_X23_Y29_N16
\unidades[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \unidades[6]~output_o\);

-- Location: IOOBUF_X41_Y18_N23
\decenas[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_1|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \decenas[0]~output_o\);

-- Location: IOOBUF_X41_Y18_N2
\decenas[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \decenas[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\decenas[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \decenas[2]~output_o\);

-- Location: IOOBUF_X41_Y18_N9
\decenas[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \decenas[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\decenas[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \decenas[4]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\decenas[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \decenas[5]~output_o\);

-- Location: IOOBUF_X30_Y29_N9
\decenas[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \decenas[6]~output_o\);

-- Location: IOIBUF_X21_Y0_N8
\Input_A[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_A(7),
	o => \Input_A[7]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\Input_B[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_B(7),
	o => \Input_B[7]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\Input_A[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_A(6),
	o => \Input_A[6]~input_o\);

-- Location: IOIBUF_X23_Y0_N29
\Input_B[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_B(6),
	o => \Input_B[6]~input_o\);

-- Location: IOIBUF_X41_Y14_N22
\Input_A[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_A(5),
	o => \Input_A[5]~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\Input_B[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_B(5),
	o => \Input_B[5]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\Input_A[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_A(4),
	o => \Input_A[4]~input_o\);

-- Location: IOIBUF_X26_Y29_N15
\Input_B[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_B(4),
	o => \Input_B[4]~input_o\);

-- Location: IOIBUF_X23_Y29_N22
\Input_A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_A(3),
	o => \Input_A[3]~input_o\);

-- Location: IOIBUF_X41_Y14_N15
\Input_B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_B(3),
	o => \Input_B[3]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\Input_A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_A(2),
	o => \Input_A[2]~input_o\);

-- Location: IOIBUF_X28_Y29_N22
\Input_B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_B(2),
	o => \Input_B[2]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\Input_A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_A(1),
	o => \Input_A[1]~input_o\);

-- Location: IOIBUF_X21_Y29_N29
\Input_B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_B(1),
	o => \Input_B[1]~input_o\);

-- Location: IOIBUF_X21_Y0_N29
\Input_B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_B(0),
	o => \Input_B[0]~input_o\);

-- Location: IOIBUF_X23_Y0_N1
\Input_A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_A(0),
	o => \Input_A[0]~input_o\);

-- Location: LCCOMB_X24_Y16_N0
\Port_ALU|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|LessThan0~1_cout\ = CARRY((\Input_B[0]~input_o\ & !\Input_A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_B[0]~input_o\,
	datab => \Input_A[0]~input_o\,
	datad => VCC,
	cout => \Port_ALU|LessThan0~1_cout\);

-- Location: LCCOMB_X24_Y16_N2
\Port_ALU|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|LessThan0~3_cout\ = CARRY((\Input_A[1]~input_o\ & ((!\Port_ALU|LessThan0~1_cout\) # (!\Input_B[1]~input_o\))) # (!\Input_A[1]~input_o\ & (!\Input_B[1]~input_o\ & !\Port_ALU|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_A[1]~input_o\,
	datab => \Input_B[1]~input_o\,
	datad => VCC,
	cin => \Port_ALU|LessThan0~1_cout\,
	cout => \Port_ALU|LessThan0~3_cout\);

-- Location: LCCOMB_X24_Y16_N4
\Port_ALU|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|LessThan0~5_cout\ = CARRY((\Input_A[2]~input_o\ & (\Input_B[2]~input_o\ & !\Port_ALU|LessThan0~3_cout\)) # (!\Input_A[2]~input_o\ & ((\Input_B[2]~input_o\) # (!\Port_ALU|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_A[2]~input_o\,
	datab => \Input_B[2]~input_o\,
	datad => VCC,
	cin => \Port_ALU|LessThan0~3_cout\,
	cout => \Port_ALU|LessThan0~5_cout\);

-- Location: LCCOMB_X24_Y16_N6
\Port_ALU|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|LessThan0~7_cout\ = CARRY((\Input_A[3]~input_o\ & ((!\Port_ALU|LessThan0~5_cout\) # (!\Input_B[3]~input_o\))) # (!\Input_A[3]~input_o\ & (!\Input_B[3]~input_o\ & !\Port_ALU|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_A[3]~input_o\,
	datab => \Input_B[3]~input_o\,
	datad => VCC,
	cin => \Port_ALU|LessThan0~5_cout\,
	cout => \Port_ALU|LessThan0~7_cout\);

-- Location: LCCOMB_X24_Y16_N8
\Port_ALU|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|LessThan0~9_cout\ = CARRY((\Input_A[4]~input_o\ & (\Input_B[4]~input_o\ & !\Port_ALU|LessThan0~7_cout\)) # (!\Input_A[4]~input_o\ & ((\Input_B[4]~input_o\) # (!\Port_ALU|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_A[4]~input_o\,
	datab => \Input_B[4]~input_o\,
	datad => VCC,
	cin => \Port_ALU|LessThan0~7_cout\,
	cout => \Port_ALU|LessThan0~9_cout\);

-- Location: LCCOMB_X24_Y16_N10
\Port_ALU|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|LessThan0~11_cout\ = CARRY((\Input_A[5]~input_o\ & ((!\Port_ALU|LessThan0~9_cout\) # (!\Input_B[5]~input_o\))) # (!\Input_A[5]~input_o\ & (!\Input_B[5]~input_o\ & !\Port_ALU|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_A[5]~input_o\,
	datab => \Input_B[5]~input_o\,
	datad => VCC,
	cin => \Port_ALU|LessThan0~9_cout\,
	cout => \Port_ALU|LessThan0~11_cout\);

-- Location: LCCOMB_X24_Y16_N12
\Port_ALU|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|LessThan0~13_cout\ = CARRY((\Input_A[6]~input_o\ & (\Input_B[6]~input_o\ & !\Port_ALU|LessThan0~11_cout\)) # (!\Input_A[6]~input_o\ & ((\Input_B[6]~input_o\) # (!\Port_ALU|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_A[6]~input_o\,
	datab => \Input_B[6]~input_o\,
	datad => VCC,
	cin => \Port_ALU|LessThan0~11_cout\,
	cout => \Port_ALU|LessThan0~13_cout\);

-- Location: LCCOMB_X24_Y16_N14
\Port_ALU|LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|LessThan0~14_combout\ = (\Input_A[7]~input_o\ & (\Port_ALU|LessThan0~13_cout\ & \Input_B[7]~input_o\)) # (!\Input_A[7]~input_o\ & ((\Port_ALU|LessThan0~13_cout\) # (\Input_B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_A[7]~input_o\,
	datad => \Input_B[7]~input_o\,
	cin => \Port_ALU|LessThan0~13_cout\,
	combout => \Port_ALU|LessThan0~14_combout\);

-- Location: LCCOMB_X24_Y15_N10
\Port_ALU|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add0~0_combout\ = (\Input_A[0]~input_o\ & (\Input_B[0]~input_o\ $ (VCC))) # (!\Input_A[0]~input_o\ & (\Input_B[0]~input_o\ & VCC))
-- \Port_ALU|Add0~1\ = CARRY((\Input_A[0]~input_o\ & \Input_B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input_A[0]~input_o\,
	datab => \Input_B[0]~input_o\,
	datad => VCC,
	combout => \Port_ALU|Add0~0_combout\,
	cout => \Port_ALU|Add0~1\);

-- Location: LCCOMB_X24_Y15_N12
\Port_ALU|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add0~2_combout\ = (\Input_A[1]~input_o\ & ((\Input_B[1]~input_o\ & (\Port_ALU|Add0~1\ & VCC)) # (!\Input_B[1]~input_o\ & (!\Port_ALU|Add0~1\)))) # (!\Input_A[1]~input_o\ & ((\Input_B[1]~input_o\ & (!\Port_ALU|Add0~1\)) # (!\Input_B[1]~input_o\ & 
-- ((\Port_ALU|Add0~1\) # (GND)))))
-- \Port_ALU|Add0~3\ = CARRY((\Input_A[1]~input_o\ & (!\Input_B[1]~input_o\ & !\Port_ALU|Add0~1\)) # (!\Input_A[1]~input_o\ & ((!\Port_ALU|Add0~1\) # (!\Input_B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_A[1]~input_o\,
	datab => \Input_B[1]~input_o\,
	datad => VCC,
	cin => \Port_ALU|Add0~1\,
	combout => \Port_ALU|Add0~2_combout\,
	cout => \Port_ALU|Add0~3\);

-- Location: LCCOMB_X24_Y15_N14
\Port_ALU|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add0~4_combout\ = ((\Input_A[2]~input_o\ $ (\Input_B[2]~input_o\ $ (!\Port_ALU|Add0~3\)))) # (GND)
-- \Port_ALU|Add0~5\ = CARRY((\Input_A[2]~input_o\ & ((\Input_B[2]~input_o\) # (!\Port_ALU|Add0~3\))) # (!\Input_A[2]~input_o\ & (\Input_B[2]~input_o\ & !\Port_ALU|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_A[2]~input_o\,
	datab => \Input_B[2]~input_o\,
	datad => VCC,
	cin => \Port_ALU|Add0~3\,
	combout => \Port_ALU|Add0~4_combout\,
	cout => \Port_ALU|Add0~5\);

-- Location: LCCOMB_X24_Y15_N16
\Port_ALU|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add0~6_combout\ = (\Input_B[3]~input_o\ & ((\Input_A[3]~input_o\ & (\Port_ALU|Add0~5\ & VCC)) # (!\Input_A[3]~input_o\ & (!\Port_ALU|Add0~5\)))) # (!\Input_B[3]~input_o\ & ((\Input_A[3]~input_o\ & (!\Port_ALU|Add0~5\)) # (!\Input_A[3]~input_o\ & 
-- ((\Port_ALU|Add0~5\) # (GND)))))
-- \Port_ALU|Add0~7\ = CARRY((\Input_B[3]~input_o\ & (!\Input_A[3]~input_o\ & !\Port_ALU|Add0~5\)) # (!\Input_B[3]~input_o\ & ((!\Port_ALU|Add0~5\) # (!\Input_A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_B[3]~input_o\,
	datab => \Input_A[3]~input_o\,
	datad => VCC,
	cin => \Port_ALU|Add0~5\,
	combout => \Port_ALU|Add0~6_combout\,
	cout => \Port_ALU|Add0~7\);

-- Location: LCCOMB_X24_Y15_N18
\Port_ALU|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add0~8_combout\ = ((\Input_A[4]~input_o\ $ (\Input_B[4]~input_o\ $ (!\Port_ALU|Add0~7\)))) # (GND)
-- \Port_ALU|Add0~9\ = CARRY((\Input_A[4]~input_o\ & ((\Input_B[4]~input_o\) # (!\Port_ALU|Add0~7\))) # (!\Input_A[4]~input_o\ & (\Input_B[4]~input_o\ & !\Port_ALU|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_A[4]~input_o\,
	datab => \Input_B[4]~input_o\,
	datad => VCC,
	cin => \Port_ALU|Add0~7\,
	combout => \Port_ALU|Add0~8_combout\,
	cout => \Port_ALU|Add0~9\);

-- Location: LCCOMB_X24_Y15_N20
\Port_ALU|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add0~10_combout\ = (\Input_B[5]~input_o\ & ((\Input_A[5]~input_o\ & (\Port_ALU|Add0~9\ & VCC)) # (!\Input_A[5]~input_o\ & (!\Port_ALU|Add0~9\)))) # (!\Input_B[5]~input_o\ & ((\Input_A[5]~input_o\ & (!\Port_ALU|Add0~9\)) # (!\Input_A[5]~input_o\ 
-- & ((\Port_ALU|Add0~9\) # (GND)))))
-- \Port_ALU|Add0~11\ = CARRY((\Input_B[5]~input_o\ & (!\Input_A[5]~input_o\ & !\Port_ALU|Add0~9\)) # (!\Input_B[5]~input_o\ & ((!\Port_ALU|Add0~9\) # (!\Input_A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_B[5]~input_o\,
	datab => \Input_A[5]~input_o\,
	datad => VCC,
	cin => \Port_ALU|Add0~9\,
	combout => \Port_ALU|Add0~10_combout\,
	cout => \Port_ALU|Add0~11\);

-- Location: LCCOMB_X24_Y15_N22
\Port_ALU|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add0~12_combout\ = ((\Input_A[6]~input_o\ $ (\Input_B[6]~input_o\ $ (!\Port_ALU|Add0~11\)))) # (GND)
-- \Port_ALU|Add0~13\ = CARRY((\Input_A[6]~input_o\ & ((\Input_B[6]~input_o\) # (!\Port_ALU|Add0~11\))) # (!\Input_A[6]~input_o\ & (\Input_B[6]~input_o\ & !\Port_ALU|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_A[6]~input_o\,
	datab => \Input_B[6]~input_o\,
	datad => VCC,
	cin => \Port_ALU|Add0~11\,
	combout => \Port_ALU|Add0~12_combout\,
	cout => \Port_ALU|Add0~13\);

-- Location: LCCOMB_X24_Y15_N24
\Port_ALU|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add0~14_combout\ = (\Input_B[7]~input_o\ & ((\Input_A[7]~input_o\ & (\Port_ALU|Add0~13\ & VCC)) # (!\Input_A[7]~input_o\ & (!\Port_ALU|Add0~13\)))) # (!\Input_B[7]~input_o\ & ((\Input_A[7]~input_o\ & (!\Port_ALU|Add0~13\)) # 
-- (!\Input_A[7]~input_o\ & ((\Port_ALU|Add0~13\) # (GND)))))
-- \Port_ALU|Add0~15\ = CARRY((\Input_B[7]~input_o\ & (!\Input_A[7]~input_o\ & !\Port_ALU|Add0~13\)) # (!\Input_B[7]~input_o\ & ((!\Port_ALU|Add0~13\) # (!\Input_A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_B[7]~input_o\,
	datab => \Input_A[7]~input_o\,
	datad => VCC,
	cin => \Port_ALU|Add0~13\,
	combout => \Port_ALU|Add0~14_combout\,
	cout => \Port_ALU|Add0~15\);

-- Location: LCCOMB_X24_Y15_N26
\Port_ALU|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add0~16_combout\ = !\Port_ALU|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Port_ALU|Add0~15\,
	combout => \Port_ALU|Add0~16_combout\);

-- Location: IOIBUF_X28_Y29_N8
\Selector_Operacion[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Selector_Operacion(0),
	o => \Selector_Operacion[0]~input_o\);

-- Location: LCCOMB_X27_Y18_N6
\Port_ALU|NZVC[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|NZVC[0]~0_combout\ = (\Selector_Operacion[0]~input_o\ & (\Port_ALU|LessThan0~14_combout\)) # (!\Selector_Operacion[0]~input_o\ & ((\Port_ALU|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|LessThan0~14_combout\,
	datab => \Port_ALU|Add0~16_combout\,
	datad => \Selector_Operacion[0]~input_o\,
	combout => \Port_ALU|NZVC[0]~0_combout\);

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

-- Location: LCCOMB_X27_Y18_N28
\Port_ALU|NZVC[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|NZVC\(0) = (GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & ((\Port_ALU|NZVC\(0)))) # (!GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & (\Port_ALU|NZVC[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|NZVC[0]~0_combout\,
	datab => \Port_ALU|NZVC\(0),
	datad => \Selector_Operacion[1]~inputclkctrl_outclk\,
	combout => \Port_ALU|NZVC\(0));

-- Location: LCCOMB_X24_Y16_N16
\Port_ALU|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add1~0_combout\ = (\Input_B[0]~input_o\ & (\Input_A[0]~input_o\ $ (VCC))) # (!\Input_B[0]~input_o\ & ((\Input_A[0]~input_o\) # (GND)))
-- \Port_ALU|Add1~1\ = CARRY((\Input_A[0]~input_o\) # (!\Input_B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input_B[0]~input_o\,
	datab => \Input_A[0]~input_o\,
	datad => VCC,
	combout => \Port_ALU|Add1~0_combout\,
	cout => \Port_ALU|Add1~1\);

-- Location: LCCOMB_X24_Y16_N18
\Port_ALU|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add1~2_combout\ = (\Input_A[1]~input_o\ & ((\Input_B[1]~input_o\ & (!\Port_ALU|Add1~1\)) # (!\Input_B[1]~input_o\ & (\Port_ALU|Add1~1\ & VCC)))) # (!\Input_A[1]~input_o\ & ((\Input_B[1]~input_o\ & ((\Port_ALU|Add1~1\) # (GND))) # 
-- (!\Input_B[1]~input_o\ & (!\Port_ALU|Add1~1\))))
-- \Port_ALU|Add1~3\ = CARRY((\Input_A[1]~input_o\ & (\Input_B[1]~input_o\ & !\Port_ALU|Add1~1\)) # (!\Input_A[1]~input_o\ & ((\Input_B[1]~input_o\) # (!\Port_ALU|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_A[1]~input_o\,
	datab => \Input_B[1]~input_o\,
	datad => VCC,
	cin => \Port_ALU|Add1~1\,
	combout => \Port_ALU|Add1~2_combout\,
	cout => \Port_ALU|Add1~3\);

-- Location: LCCOMB_X24_Y16_N20
\Port_ALU|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add1~4_combout\ = ((\Input_A[2]~input_o\ $ (\Input_B[2]~input_o\ $ (\Port_ALU|Add1~3\)))) # (GND)
-- \Port_ALU|Add1~5\ = CARRY((\Input_A[2]~input_o\ & ((!\Port_ALU|Add1~3\) # (!\Input_B[2]~input_o\))) # (!\Input_A[2]~input_o\ & (!\Input_B[2]~input_o\ & !\Port_ALU|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_A[2]~input_o\,
	datab => \Input_B[2]~input_o\,
	datad => VCC,
	cin => \Port_ALU|Add1~3\,
	combout => \Port_ALU|Add1~4_combout\,
	cout => \Port_ALU|Add1~5\);

-- Location: LCCOMB_X24_Y16_N22
\Port_ALU|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add1~6_combout\ = (\Input_A[3]~input_o\ & ((\Input_B[3]~input_o\ & (!\Port_ALU|Add1~5\)) # (!\Input_B[3]~input_o\ & (\Port_ALU|Add1~5\ & VCC)))) # (!\Input_A[3]~input_o\ & ((\Input_B[3]~input_o\ & ((\Port_ALU|Add1~5\) # (GND))) # 
-- (!\Input_B[3]~input_o\ & (!\Port_ALU|Add1~5\))))
-- \Port_ALU|Add1~7\ = CARRY((\Input_A[3]~input_o\ & (\Input_B[3]~input_o\ & !\Port_ALU|Add1~5\)) # (!\Input_A[3]~input_o\ & ((\Input_B[3]~input_o\) # (!\Port_ALU|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_A[3]~input_o\,
	datab => \Input_B[3]~input_o\,
	datad => VCC,
	cin => \Port_ALU|Add1~5\,
	combout => \Port_ALU|Add1~6_combout\,
	cout => \Port_ALU|Add1~7\);

-- Location: LCCOMB_X24_Y16_N24
\Port_ALU|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add1~8_combout\ = ((\Input_A[4]~input_o\ $ (\Input_B[4]~input_o\ $ (\Port_ALU|Add1~7\)))) # (GND)
-- \Port_ALU|Add1~9\ = CARRY((\Input_A[4]~input_o\ & ((!\Port_ALU|Add1~7\) # (!\Input_B[4]~input_o\))) # (!\Input_A[4]~input_o\ & (!\Input_B[4]~input_o\ & !\Port_ALU|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_A[4]~input_o\,
	datab => \Input_B[4]~input_o\,
	datad => VCC,
	cin => \Port_ALU|Add1~7\,
	combout => \Port_ALU|Add1~8_combout\,
	cout => \Port_ALU|Add1~9\);

-- Location: LCCOMB_X24_Y16_N26
\Port_ALU|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add1~10_combout\ = (\Input_A[5]~input_o\ & ((\Input_B[5]~input_o\ & (!\Port_ALU|Add1~9\)) # (!\Input_B[5]~input_o\ & (\Port_ALU|Add1~9\ & VCC)))) # (!\Input_A[5]~input_o\ & ((\Input_B[5]~input_o\ & ((\Port_ALU|Add1~9\) # (GND))) # 
-- (!\Input_B[5]~input_o\ & (!\Port_ALU|Add1~9\))))
-- \Port_ALU|Add1~11\ = CARRY((\Input_A[5]~input_o\ & (\Input_B[5]~input_o\ & !\Port_ALU|Add1~9\)) # (!\Input_A[5]~input_o\ & ((\Input_B[5]~input_o\) # (!\Port_ALU|Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_A[5]~input_o\,
	datab => \Input_B[5]~input_o\,
	datad => VCC,
	cin => \Port_ALU|Add1~9\,
	combout => \Port_ALU|Add1~10_combout\,
	cout => \Port_ALU|Add1~11\);

-- Location: LCCOMB_X24_Y16_N28
\Port_ALU|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add1~12_combout\ = ((\Input_A[6]~input_o\ $ (\Input_B[6]~input_o\ $ (\Port_ALU|Add1~11\)))) # (GND)
-- \Port_ALU|Add1~13\ = CARRY((\Input_A[6]~input_o\ & ((!\Port_ALU|Add1~11\) # (!\Input_B[6]~input_o\))) # (!\Input_A[6]~input_o\ & (!\Input_B[6]~input_o\ & !\Port_ALU|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_A[6]~input_o\,
	datab => \Input_B[6]~input_o\,
	datad => VCC,
	cin => \Port_ALU|Add1~11\,
	combout => \Port_ALU|Add1~12_combout\,
	cout => \Port_ALU|Add1~13\);

-- Location: LCCOMB_X24_Y16_N30
\Port_ALU|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add1~14_combout\ = \Input_A[7]~input_o\ $ (\Port_ALU|Add1~13\ $ (!\Input_B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Input_A[7]~input_o\,
	datad => \Input_B[7]~input_o\,
	cin => \Port_ALU|Add1~13\,
	combout => \Port_ALU|Add1~14_combout\);

-- Location: LCCOMB_X24_Y15_N8
\Port_ALU|NZVC[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|NZVC[1]~1_combout\ = (\Selector_Operacion[0]~input_o\ & (\Port_ALU|Add1~14_combout\)) # (!\Selector_Operacion[0]~input_o\ & ((\Port_ALU|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Add1~14_combout\,
	datac => \Selector_Operacion[0]~input_o\,
	datad => \Port_ALU|Add0~14_combout\,
	combout => \Port_ALU|NZVC[1]~1_combout\);

-- Location: LCCOMB_X24_Y15_N2
\Port_ALU|NZVC[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|NZVC[1]~2_combout\ = (\Port_ALU|NZVC[1]~1_combout\ & (!\Input_A[7]~input_o\ & (\Selector_Operacion[0]~input_o\ $ (!\Input_B[7]~input_o\)))) # (!\Port_ALU|NZVC[1]~1_combout\ & (\Input_A[7]~input_o\ & (\Selector_Operacion[0]~input_o\ $ 
-- (\Input_B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector_Operacion[0]~input_o\,
	datab => \Input_B[7]~input_o\,
	datac => \Port_ALU|NZVC[1]~1_combout\,
	datad => \Input_A[7]~input_o\,
	combout => \Port_ALU|NZVC[1]~2_combout\);

-- Location: LCCOMB_X23_Y18_N0
\Port_ALU|NZVC[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|NZVC\(1) = (GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & ((\Port_ALU|NZVC\(1)))) # (!GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & (\Port_ALU|NZVC[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|NZVC[1]~2_combout\,
	datac => \Selector_Operacion[1]~inputclkctrl_outclk\,
	datad => \Port_ALU|NZVC\(1),
	combout => \Port_ALU|NZVC\(1));

-- Location: LCCOMB_X23_Y15_N0
\Port_ALU|NZVC[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|NZVC[2]~3_combout\ = (!\Port_ALU|Add1~0_combout\ & (!\Port_ALU|Add1~2_combout\ & (!\Port_ALU|Add1~14_combout\ & \Selector_Operacion[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Add1~0_combout\,
	datab => \Port_ALU|Add1~2_combout\,
	datac => \Port_ALU|Add1~14_combout\,
	datad => \Selector_Operacion[0]~input_o\,
	combout => \Port_ALU|NZVC[2]~3_combout\);

-- Location: LCCOMB_X24_Y18_N6
\Port_ALU|NZVC[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|NZVC[2]~4_combout\ = (!\Port_ALU|Add1~8_combout\ & (!\Port_ALU|Add1~6_combout\ & (!\Port_ALU|Add1~10_combout\ & !\Port_ALU|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Add1~8_combout\,
	datab => \Port_ALU|Add1~6_combout\,
	datac => \Port_ALU|Add1~10_combout\,
	datad => \Port_ALU|Add1~4_combout\,
	combout => \Port_ALU|NZVC[2]~4_combout\);

-- Location: LCCOMB_X23_Y15_N2
\Port_ALU|NZVC[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|NZVC[2]~5_combout\ = (\Port_ALU|NZVC[2]~3_combout\ & (!\Port_ALU|Add1~12_combout\ & \Port_ALU|NZVC[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Port_ALU|NZVC[2]~3_combout\,
	datac => \Port_ALU|Add1~12_combout\,
	datad => \Port_ALU|NZVC[2]~4_combout\,
	combout => \Port_ALU|NZVC[2]~5_combout\);

-- Location: LCCOMB_X24_Y15_N28
\Port_ALU|NZVC[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|NZVC[2]~6_combout\ = (!\Port_ALU|Add0~0_combout\ & (!\Port_ALU|Add0~14_combout\ & (!\Selector_Operacion[0]~input_o\ & !\Port_ALU|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Add0~0_combout\,
	datab => \Port_ALU|Add0~14_combout\,
	datac => \Selector_Operacion[0]~input_o\,
	datad => \Port_ALU|Add0~2_combout\,
	combout => \Port_ALU|NZVC[2]~6_combout\);

-- Location: LCCOMB_X24_Y15_N6
\Port_ALU|NZVC[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|NZVC[2]~7_combout\ = (!\Port_ALU|Add0~8_combout\ & (!\Port_ALU|Add0~10_combout\ & (!\Port_ALU|Add0~4_combout\ & !\Port_ALU|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Add0~8_combout\,
	datab => \Port_ALU|Add0~10_combout\,
	datac => \Port_ALU|Add0~4_combout\,
	datad => \Port_ALU|Add0~6_combout\,
	combout => \Port_ALU|NZVC[2]~7_combout\);

-- Location: LCCOMB_X24_Y15_N0
\Port_ALU|NZVC[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|NZVC[2]~8_combout\ = (\Port_ALU|NZVC[2]~5_combout\) # ((\Port_ALU|NZVC[2]~6_combout\ & (!\Port_ALU|Add0~12_combout\ & \Port_ALU|NZVC[2]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|NZVC[2]~5_combout\,
	datab => \Port_ALU|NZVC[2]~6_combout\,
	datac => \Port_ALU|Add0~12_combout\,
	datad => \Port_ALU|NZVC[2]~7_combout\,
	combout => \Port_ALU|NZVC[2]~8_combout\);

-- Location: LCCOMB_X26_Y18_N0
\Port_ALU|NZVC[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|NZVC\(2) = (GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & ((\Port_ALU|NZVC\(2)))) # (!GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & (\Port_ALU|NZVC[2]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|NZVC[2]~8_combout\,
	datac => \Selector_Operacion[1]~inputclkctrl_outclk\,
	datad => \Port_ALU|NZVC\(2),
	combout => \Port_ALU|NZVC\(2));

-- Location: LCCOMB_X24_Y15_N4
\Port_ALU|Output_Result[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Output_Result[7]~0_combout\ = (\Selector_Operacion[0]~input_o\ & (\Port_ALU|Add1~14_combout\)) # (!\Selector_Operacion[0]~input_o\ & ((\Port_ALU|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Add1~14_combout\,
	datac => \Selector_Operacion[0]~input_o\,
	datad => \Port_ALU|Add0~14_combout\,
	combout => \Port_ALU|Output_Result[7]~0_combout\);

-- Location: LCCOMB_X27_Y18_N22
\Port_ALU|NZVC[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|NZVC\(3) = (GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & ((\Port_ALU|NZVC\(3)))) # (!GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & (\Port_ALU|Output_Result[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Port_ALU|Output_Result[7]~0_combout\,
	datac => \Port_ALU|NZVC\(3),
	datad => \Selector_Operacion[1]~inputclkctrl_outclk\,
	combout => \Port_ALU|NZVC\(3));

-- Location: LCCOMB_X23_Y15_N20
\Port_ALU|Output_Result[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Output_Result[0]~1_combout\ = (\Selector_Operacion[0]~input_o\ & (\Port_ALU|Add1~0_combout\)) # (!\Selector_Operacion[0]~input_o\ & ((\Port_ALU|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Add1~0_combout\,
	datac => \Port_ALU|Add0~0_combout\,
	datad => \Selector_Operacion[0]~input_o\,
	combout => \Port_ALU|Output_Result[0]~1_combout\);

-- Location: LCCOMB_X24_Y18_N30
\Port_ALU|Output_Result[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Output_Result\(0) = (GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & ((\Port_ALU|Output_Result\(0)))) # (!GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & (\Port_ALU|Output_Result[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Port_ALU|Output_Result[0]~1_combout\,
	datac => \Port_ALU|Output_Result\(0),
	datad => \Selector_Operacion[1]~inputclkctrl_outclk\,
	combout => \Port_ALU|Output_Result\(0));

-- Location: LCCOMB_X24_Y18_N26
\Port_ALU|Output_Result[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Output_Result[2]~3_combout\ = (\Selector_Operacion[0]~input_o\ & ((\Port_ALU|Add1~4_combout\))) # (!\Selector_Operacion[0]~input_o\ & (\Port_ALU|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Port_ALU|Add0~4_combout\,
	datac => \Selector_Operacion[0]~input_o\,
	datad => \Port_ALU|Add1~4_combout\,
	combout => \Port_ALU|Output_Result[2]~3_combout\);

-- Location: LCCOMB_X24_Y18_N18
\Port_ALU|Output_Result[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Output_Result\(2) = (GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & (\Port_ALU|Output_Result\(2))) # (!GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & ((\Port_ALU|Output_Result[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Port_ALU|Output_Result\(2),
	datac => \Port_ALU|Output_Result[2]~3_combout\,
	datad => \Selector_Operacion[1]~inputclkctrl_outclk\,
	combout => \Port_ALU|Output_Result\(2));

-- Location: LCCOMB_X24_Y18_N12
\Port_ALU|Output_Result[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Output_Result[3]~4_combout\ = (\Selector_Operacion[0]~input_o\ & ((\Port_ALU|Add1~6_combout\))) # (!\Selector_Operacion[0]~input_o\ & (\Port_ALU|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Add0~6_combout\,
	datab => \Port_ALU|Add1~6_combout\,
	datac => \Selector_Operacion[0]~input_o\,
	combout => \Port_ALU|Output_Result[3]~4_combout\);

-- Location: LCCOMB_X24_Y18_N20
\Port_ALU|Output_Result[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Output_Result\(3) = (GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & ((\Port_ALU|Output_Result\(3)))) # (!GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & (\Port_ALU|Output_Result[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Output_Result[3]~4_combout\,
	datac => \Port_ALU|Output_Result\(3),
	datad => \Selector_Operacion[1]~inputclkctrl_outclk\,
	combout => \Port_ALU|Output_Result\(3));

-- Location: LCCOMB_X24_Y18_N0
\Port_ALU|Output_Result[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Output_Result[1]~2_combout\ = (\Selector_Operacion[0]~input_o\ & ((\Port_ALU|Add1~2_combout\))) # (!\Selector_Operacion[0]~input_o\ & (\Port_ALU|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Add0~2_combout\,
	datac => \Selector_Operacion[0]~input_o\,
	datad => \Port_ALU|Add1~2_combout\,
	combout => \Port_ALU|Output_Result[1]~2_combout\);

-- Location: LCCOMB_X24_Y18_N24
\Port_ALU|Output_Result[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Output_Result\(1) = (GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & ((\Port_ALU|Output_Result\(1)))) # (!GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & (\Port_ALU|Output_Result[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Port_ALU|Output_Result[1]~2_combout\,
	datac => \Port_ALU|Output_Result\(1),
	datad => \Selector_Operacion[1]~inputclkctrl_outclk\,
	combout => \Port_ALU|Output_Result\(1));

-- Location: LCCOMB_X24_Y18_N8
\BCD_2|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_2|Mux6~0_combout\ = (\Port_ALU|Output_Result\(0) & ((\Port_ALU|Output_Result\(3)) # (\Port_ALU|Output_Result\(2) $ (\Port_ALU|Output_Result\(1))))) # (!\Port_ALU|Output_Result\(0) & ((\Port_ALU|Output_Result\(1)) # (\Port_ALU|Output_Result\(2) $ 
-- (\Port_ALU|Output_Result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Output_Result\(0),
	datab => \Port_ALU|Output_Result\(2),
	datac => \Port_ALU|Output_Result\(3),
	datad => \Port_ALU|Output_Result\(1),
	combout => \BCD_2|Mux6~0_combout\);

-- Location: LCCOMB_X24_Y18_N10
\BCD_2|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_2|Mux5~0_combout\ = (\Port_ALU|Output_Result\(0) & (\Port_ALU|Output_Result\(3) $ (((\Port_ALU|Output_Result\(1)) # (!\Port_ALU|Output_Result\(2)))))) # (!\Port_ALU|Output_Result\(0) & (!\Port_ALU|Output_Result\(2) & (!\Port_ALU|Output_Result\(3) & 
-- \Port_ALU|Output_Result\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Output_Result\(0),
	datab => \Port_ALU|Output_Result\(2),
	datac => \Port_ALU|Output_Result\(3),
	datad => \Port_ALU|Output_Result\(1),
	combout => \BCD_2|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y18_N28
\BCD_2|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_2|Mux4~0_combout\ = (\Port_ALU|Output_Result\(1) & (\Port_ALU|Output_Result\(0) & ((!\Port_ALU|Output_Result\(3))))) # (!\Port_ALU|Output_Result\(1) & ((\Port_ALU|Output_Result\(2) & ((!\Port_ALU|Output_Result\(3)))) # (!\Port_ALU|Output_Result\(2) & 
-- (\Port_ALU|Output_Result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Output_Result\(0),
	datab => \Port_ALU|Output_Result\(2),
	datac => \Port_ALU|Output_Result\(3),
	datad => \Port_ALU|Output_Result\(1),
	combout => \BCD_2|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y18_N22
\BCD_2|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_2|Mux3~0_combout\ = (\Port_ALU|Output_Result\(0) & (\Port_ALU|Output_Result\(2) $ (((!\Port_ALU|Output_Result\(1)))))) # (!\Port_ALU|Output_Result\(0) & ((\Port_ALU|Output_Result\(2) & (!\Port_ALU|Output_Result\(3) & !\Port_ALU|Output_Result\(1))) # 
-- (!\Port_ALU|Output_Result\(2) & (\Port_ALU|Output_Result\(3) & \Port_ALU|Output_Result\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Output_Result\(0),
	datab => \Port_ALU|Output_Result\(2),
	datac => \Port_ALU|Output_Result\(3),
	datad => \Port_ALU|Output_Result\(1),
	combout => \BCD_2|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y18_N16
\BCD_2|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_2|Mux2~0_combout\ = (\Port_ALU|Output_Result\(2) & (\Port_ALU|Output_Result\(3) & ((\Port_ALU|Output_Result\(1)) # (!\Port_ALU|Output_Result\(0))))) # (!\Port_ALU|Output_Result\(2) & (!\Port_ALU|Output_Result\(0) & (!\Port_ALU|Output_Result\(3) & 
-- \Port_ALU|Output_Result\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Output_Result\(0),
	datab => \Port_ALU|Output_Result\(2),
	datac => \Port_ALU|Output_Result\(3),
	datad => \Port_ALU|Output_Result\(1),
	combout => \BCD_2|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y18_N2
\BCD_2|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_2|Mux1~0_combout\ = (\Port_ALU|Output_Result\(3) & ((\Port_ALU|Output_Result\(0) & ((\Port_ALU|Output_Result\(1)))) # (!\Port_ALU|Output_Result\(0) & (\Port_ALU|Output_Result\(2))))) # (!\Port_ALU|Output_Result\(3) & (\Port_ALU|Output_Result\(2) & 
-- (\Port_ALU|Output_Result\(0) $ (\Port_ALU|Output_Result\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Output_Result\(0),
	datab => \Port_ALU|Output_Result\(2),
	datac => \Port_ALU|Output_Result\(3),
	datad => \Port_ALU|Output_Result\(1),
	combout => \BCD_2|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y18_N4
\BCD_2|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_2|Mux0~0_combout\ = (\Port_ALU|Output_Result\(2) & (!\Port_ALU|Output_Result\(1) & (\Port_ALU|Output_Result\(0) $ (!\Port_ALU|Output_Result\(3))))) # (!\Port_ALU|Output_Result\(2) & (\Port_ALU|Output_Result\(0) & (\Port_ALU|Output_Result\(3) $ 
-- (!\Port_ALU|Output_Result\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Output_Result\(0),
	datab => \Port_ALU|Output_Result\(2),
	datac => \Port_ALU|Output_Result\(3),
	datad => \Port_ALU|Output_Result\(1),
	combout => \BCD_2|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y18_N2
\Port_ALU|Output_Result[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Output_Result[5]~6_combout\ = (\Selector_Operacion[0]~input_o\ & (\Port_ALU|Add1~10_combout\)) # (!\Selector_Operacion[0]~input_o\ & ((\Port_ALU|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Port_ALU|Add1~10_combout\,
	datac => \Port_ALU|Add0~10_combout\,
	datad => \Selector_Operacion[0]~input_o\,
	combout => \Port_ALU|Output_Result[5]~6_combout\);

-- Location: LCCOMB_X27_Y18_N26
\Port_ALU|Output_Result[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Output_Result\(5) = (GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & ((\Port_ALU|Output_Result\(5)))) # (!GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & (\Port_ALU|Output_Result[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Port_ALU|Output_Result[5]~6_combout\,
	datac => \Port_ALU|Output_Result\(5),
	datad => \Selector_Operacion[1]~inputclkctrl_outclk\,
	combout => \Port_ALU|Output_Result\(5));

-- Location: LCCOMB_X27_Y18_N0
\Port_ALU|Output_Result[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Output_Result[4]~5_combout\ = (\Selector_Operacion[0]~input_o\ & (\Port_ALU|Add1~8_combout\)) # (!\Selector_Operacion[0]~input_o\ & ((\Port_ALU|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Port_ALU|Add1~8_combout\,
	datac => \Port_ALU|Add0~8_combout\,
	datad => \Selector_Operacion[0]~input_o\,
	combout => \Port_ALU|Output_Result[4]~5_combout\);

-- Location: LCCOMB_X27_Y18_N16
\Port_ALU|Output_Result[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Output_Result\(4) = (GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & ((\Port_ALU|Output_Result\(4)))) # (!GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & (\Port_ALU|Output_Result[4]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Port_ALU|Output_Result[4]~5_combout\,
	datac => \Selector_Operacion[1]~inputclkctrl_outclk\,
	datad => \Port_ALU|Output_Result\(4),
	combout => \Port_ALU|Output_Result\(4));

-- Location: LCCOMB_X23_Y15_N14
\Port_ALU|Output_Result[6]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Output_Result[6]~7_combout\ = (\Selector_Operacion[0]~input_o\ & ((\Port_ALU|Add1~12_combout\))) # (!\Selector_Operacion[0]~input_o\ & (\Port_ALU|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Port_ALU|Add0~12_combout\,
	datac => \Port_ALU|Add1~12_combout\,
	datad => \Selector_Operacion[0]~input_o\,
	combout => \Port_ALU|Output_Result[6]~7_combout\);

-- Location: LCCOMB_X27_Y18_N12
\Port_ALU|Output_Result[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Output_Result\(6) = (GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & (\Port_ALU|Output_Result\(6))) # (!GLOBAL(\Selector_Operacion[1]~inputclkctrl_outclk\) & ((\Port_ALU|Output_Result[6]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Output_Result\(6),
	datac => \Port_ALU|Output_Result[6]~7_combout\,
	datad => \Selector_Operacion[1]~inputclkctrl_outclk\,
	combout => \Port_ALU|Output_Result\(6));

-- Location: LCCOMB_X27_Y18_N24
\BCD_1|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_1|Mux6~0_combout\ = (\Port_ALU|Output_Result\(4) & ((\Port_ALU|NZVC\(3)) # (\Port_ALU|Output_Result\(5) $ (\Port_ALU|Output_Result\(6))))) # (!\Port_ALU|Output_Result\(4) & ((\Port_ALU|Output_Result\(5)) # (\Port_ALU|NZVC\(3) $ 
-- (\Port_ALU|Output_Result\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Output_Result\(5),
	datab => \Port_ALU|Output_Result\(4),
	datac => \Port_ALU|NZVC\(3),
	datad => \Port_ALU|Output_Result\(6),
	combout => \BCD_1|Mux6~0_combout\);

-- Location: LCCOMB_X27_Y18_N18
\BCD_1|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_1|Mux5~0_combout\ = (\Port_ALU|Output_Result\(5) & (!\Port_ALU|NZVC\(3) & ((\Port_ALU|Output_Result\(4)) # (!\Port_ALU|Output_Result\(6))))) # (!\Port_ALU|Output_Result\(5) & (\Port_ALU|Output_Result\(4) & (\Port_ALU|NZVC\(3) $ 
-- (!\Port_ALU|Output_Result\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Output_Result\(5),
	datab => \Port_ALU|Output_Result\(4),
	datac => \Port_ALU|NZVC\(3),
	datad => \Port_ALU|Output_Result\(6),
	combout => \BCD_1|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y18_N4
\BCD_1|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_1|Mux4~0_combout\ = (\Port_ALU|Output_Result\(5) & (\Port_ALU|Output_Result\(4) & (!\Port_ALU|NZVC\(3)))) # (!\Port_ALU|Output_Result\(5) & ((\Port_ALU|Output_Result\(6) & ((!\Port_ALU|NZVC\(3)))) # (!\Port_ALU|Output_Result\(6) & 
-- (\Port_ALU|Output_Result\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Output_Result\(5),
	datab => \Port_ALU|Output_Result\(4),
	datac => \Port_ALU|NZVC\(3),
	datad => \Port_ALU|Output_Result\(6),
	combout => \BCD_1|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y18_N14
\BCD_1|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_1|Mux3~0_combout\ = (\Port_ALU|Output_Result\(4) & (\Port_ALU|Output_Result\(5) $ (((!\Port_ALU|Output_Result\(6)))))) # (!\Port_ALU|Output_Result\(4) & ((\Port_ALU|Output_Result\(5) & (\Port_ALU|NZVC\(3) & !\Port_ALU|Output_Result\(6))) # 
-- (!\Port_ALU|Output_Result\(5) & (!\Port_ALU|NZVC\(3) & \Port_ALU|Output_Result\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Output_Result\(5),
	datab => \Port_ALU|Output_Result\(4),
	datac => \Port_ALU|NZVC\(3),
	datad => \Port_ALU|Output_Result\(6),
	combout => \BCD_1|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y18_N8
\BCD_1|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_1|Mux2~0_combout\ = (\Port_ALU|NZVC\(3) & (\Port_ALU|Output_Result\(6) & ((\Port_ALU|Output_Result\(5)) # (!\Port_ALU|Output_Result\(4))))) # (!\Port_ALU|NZVC\(3) & (\Port_ALU|Output_Result\(5) & (!\Port_ALU|Output_Result\(4) & 
-- !\Port_ALU|Output_Result\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Output_Result\(5),
	datab => \Port_ALU|Output_Result\(4),
	datac => \Port_ALU|NZVC\(3),
	datad => \Port_ALU|Output_Result\(6),
	combout => \BCD_1|Mux2~0_combout\);

-- Location: LCCOMB_X27_Y18_N10
\BCD_1|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_1|Mux1~0_combout\ = (\Port_ALU|Output_Result\(5) & ((\Port_ALU|Output_Result\(4) & (\Port_ALU|NZVC\(3))) # (!\Port_ALU|Output_Result\(4) & ((\Port_ALU|Output_Result\(6)))))) # (!\Port_ALU|Output_Result\(5) & (\Port_ALU|Output_Result\(6) & 
-- (\Port_ALU|Output_Result\(4) $ (\Port_ALU|NZVC\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Output_Result\(5),
	datab => \Port_ALU|Output_Result\(4),
	datac => \Port_ALU|NZVC\(3),
	datad => \Port_ALU|Output_Result\(6),
	combout => \BCD_1|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y18_N20
\BCD_1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_1|Mux0~0_combout\ = (\Port_ALU|NZVC\(3) & (\Port_ALU|Output_Result\(4) & (\Port_ALU|Output_Result\(5) $ (\Port_ALU|Output_Result\(6))))) # (!\Port_ALU|NZVC\(3) & (!\Port_ALU|Output_Result\(5) & (\Port_ALU|Output_Result\(4) $ 
-- (\Port_ALU|Output_Result\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Output_Result\(5),
	datab => \Port_ALU|Output_Result\(4),
	datac => \Port_ALU|NZVC\(3),
	datad => \Port_ALU|Output_Result\(6),
	combout => \BCD_1|Mux0~0_combout\);

ww_NZVC_vector(0) <= \NZVC_vector[0]~output_o\;

ww_NZVC_vector(1) <= \NZVC_vector[1]~output_o\;

ww_NZVC_vector(2) <= \NZVC_vector[2]~output_o\;

ww_NZVC_vector(3) <= \NZVC_vector[3]~output_o\;

ww_unidades(0) <= \unidades[0]~output_o\;

ww_unidades(1) <= \unidades[1]~output_o\;

ww_unidades(2) <= \unidades[2]~output_o\;

ww_unidades(3) <= \unidades[3]~output_o\;

ww_unidades(4) <= \unidades[4]~output_o\;

ww_unidades(5) <= \unidades[5]~output_o\;

ww_unidades(6) <= \unidades[6]~output_o\;

ww_decenas(0) <= \decenas[0]~output_o\;

ww_decenas(1) <= \decenas[1]~output_o\;

ww_decenas(2) <= \decenas[2]~output_o\;

ww_decenas(3) <= \decenas[3]~output_o\;

ww_decenas(4) <= \decenas[4]~output_o\;

ww_decenas(5) <= \decenas[5]~output_o\;

ww_decenas(6) <= \decenas[6]~output_o\;
END structure;


