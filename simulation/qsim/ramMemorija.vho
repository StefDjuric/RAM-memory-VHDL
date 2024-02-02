-- Copyright (C) 2023  Intel Corporation. All rights reserved.
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
-- VERSION "Version 23.1std.0 Build 991 11/28/2023 SC Lite Edition"

-- DATE "02/01/2024 19:44:12"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
LIBRARY STD;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	ramMemorija IS
    PORT (
	takt : IN std_logic;
	dozvolaUpisa : IN std_logic;
	adresa : IN STD.STANDARD.integer range 0 TO 7;
	podaci : INOUT std_logic_vector(3 DOWNTO 0)
	);
END ramMemorija;

-- Design Ports Information
-- podaci[0]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- podaci[1]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- podaci[2]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- podaci[3]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adresa[0]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adresa[1]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adresa[2]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dozvolaUpisa	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- takt	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ramMemorija IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_takt : std_logic;
SIGNAL ww_dozvolaUpisa : std_logic;
SIGNAL ww_adresa : std_logic_vector(2 DOWNTO 0);
SIGNAL \takt~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \podaci[0]~output_o\ : std_logic;
SIGNAL \podaci[1]~output_o\ : std_logic;
SIGNAL \podaci[2]~output_o\ : std_logic;
SIGNAL \podaci[3]~output_o\ : std_logic;
SIGNAL \adresa[2]~input_o\ : std_logic;
SIGNAL \adresa[0]~input_o\ : std_logic;
SIGNAL \takt~input_o\ : std_logic;
SIGNAL \takt~inputclkctrl_outclk\ : std_logic;
SIGNAL \podaci[0]~input_o\ : std_logic;
SIGNAL \memorija~28feeder_combout\ : std_logic;
SIGNAL \adresa[1]~input_o\ : std_logic;
SIGNAL \dozvolaUpisa~input_o\ : std_logic;
SIGNAL \memorija~60_combout\ : std_logic;
SIGNAL \memorija~28_q\ : std_logic;
SIGNAL \memorija~63_combout\ : std_logic;
SIGNAL \memorija~36_q\ : std_logic;
SIGNAL \memorija~62_combout\ : std_logic;
SIGNAL \memorija~24_q\ : std_logic;
SIGNAL \memorija~61_combout\ : std_logic;
SIGNAL \memorija~32_q\ : std_logic;
SIGNAL \memorija~40_combout\ : std_logic;
SIGNAL \memorija~41_combout\ : std_logic;
SIGNAL \memorija~12feeder_combout\ : std_logic;
SIGNAL \memorija~65_combout\ : std_logic;
SIGNAL \memorija~12_q\ : std_logic;
SIGNAL \memorija~66_combout\ : std_logic;
SIGNAL \memorija~8_q\ : std_logic;
SIGNAL \memorija~42_combout\ : std_logic;
SIGNAL \memorija~64_combout\ : std_logic;
SIGNAL \memorija~16_q\ : std_logic;
SIGNAL \memorija~67_combout\ : std_logic;
SIGNAL \memorija~20_q\ : std_logic;
SIGNAL \memorija~43_combout\ : std_logic;
SIGNAL \memorija~44_combout\ : std_logic;
SIGNAL \podaci[1]~input_o\ : std_logic;
SIGNAL \memorija~13feeder_combout\ : std_logic;
SIGNAL \memorija~13_q\ : std_logic;
SIGNAL \memorija~9_q\ : std_logic;
SIGNAL \memorija~47_combout\ : std_logic;
SIGNAL \memorija~21_q\ : std_logic;
SIGNAL \memorija~17_q\ : std_logic;
SIGNAL \memorija~48_combout\ : std_logic;
SIGNAL \memorija~29_q\ : std_logic;
SIGNAL \memorija~37_q\ : std_logic;
SIGNAL \memorija~25_q\ : std_logic;
SIGNAL \memorija~33_q\ : std_logic;
SIGNAL \memorija~45_combout\ : std_logic;
SIGNAL \memorija~46_combout\ : std_logic;
SIGNAL \memorija~49_combout\ : std_logic;
SIGNAL \podaci[2]~input_o\ : std_logic;
SIGNAL \memorija~14feeder_combout\ : std_logic;
SIGNAL \memorija~14_q\ : std_logic;
SIGNAL \memorija~10_q\ : std_logic;
SIGNAL \memorija~52_combout\ : std_logic;
SIGNAL \memorija~22_q\ : std_logic;
SIGNAL \memorija~18_q\ : std_logic;
SIGNAL \memorija~53_combout\ : std_logic;
SIGNAL \memorija~30feeder_combout\ : std_logic;
SIGNAL \memorija~30_q\ : std_logic;
SIGNAL \memorija~38_q\ : std_logic;
SIGNAL \memorija~26_q\ : std_logic;
SIGNAL \memorija~34_q\ : std_logic;
SIGNAL \memorija~50_combout\ : std_logic;
SIGNAL \memorija~51_combout\ : std_logic;
SIGNAL \memorija~54_combout\ : std_logic;
SIGNAL \podaci[3]~input_o\ : std_logic;
SIGNAL \memorija~31feeder_combout\ : std_logic;
SIGNAL \memorija~31_q\ : std_logic;
SIGNAL \memorija~39_q\ : std_logic;
SIGNAL \memorija~35_q\ : std_logic;
SIGNAL \memorija~27_q\ : std_logic;
SIGNAL \memorija~55_combout\ : std_logic;
SIGNAL \memorija~56_combout\ : std_logic;
SIGNAL \memorija~19_q\ : std_logic;
SIGNAL \memorija~23_q\ : std_logic;
SIGNAL \memorija~15feeder_combout\ : std_logic;
SIGNAL \memorija~15_q\ : std_logic;
SIGNAL \memorija~11_q\ : std_logic;
SIGNAL \memorija~57_combout\ : std_logic;
SIGNAL \memorija~58_combout\ : std_logic;
SIGNAL \memorija~59_combout\ : std_logic;
SIGNAL \ALT_INV_dozvolaUpisa~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_takt <= takt;
ww_dozvolaUpisa <= dozvolaUpisa;
ww_adresa <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(adresa, 3);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\takt~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \takt~input_o\);
\ALT_INV_dozvolaUpisa~input_o\ <= NOT \dozvolaUpisa~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X18_Y0_N16
\podaci[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memorija~44_combout\,
	oe => \ALT_INV_dozvolaUpisa~input_o\,
	devoe => ww_devoe,
	o => \podaci[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\podaci[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memorija~49_combout\,
	oe => \ALT_INV_dozvolaUpisa~input_o\,
	devoe => ww_devoe,
	o => \podaci[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\podaci[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memorija~54_combout\,
	oe => \ALT_INV_dozvolaUpisa~input_o\,
	devoe => ww_devoe,
	o => \podaci[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\podaci[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memorija~59_combout\,
	oe => \ALT_INV_dozvolaUpisa~input_o\,
	devoe => ww_devoe,
	o => \podaci[3]~output_o\);

-- Location: IOIBUF_X0_Y7_N1
\adresa[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adresa(2),
	o => \adresa[2]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\adresa[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adresa(0),
	o => \adresa[0]~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\takt~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_takt,
	o => \takt~input_o\);

-- Location: CLKCTRL_G2
\takt~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \takt~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \takt~inputclkctrl_outclk\);

-- Location: IOIBUF_X18_Y0_N15
\podaci[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => podaci(0),
	o => \podaci[0]~input_o\);

-- Location: LCCOMB_X7_Y17_N16
\memorija~28feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memorija~28feeder_combout\ = \podaci[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \podaci[0]~input_o\,
	combout => \memorija~28feeder_combout\);

-- Location: IOIBUF_X0_Y11_N22
\adresa[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adresa(1),
	o => \adresa[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\dozvolaUpisa~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dozvolaUpisa,
	o => \dozvolaUpisa~input_o\);

-- Location: LCCOMB_X13_Y14_N24
\memorija~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \memorija~60_combout\ = (\adresa[2]~input_o\ & (\adresa[0]~input_o\ & (!\adresa[1]~input_o\ & \dozvolaUpisa~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adresa[2]~input_o\,
	datab => \adresa[0]~input_o\,
	datac => \adresa[1]~input_o\,
	datad => \dozvolaUpisa~input_o\,
	combout => \memorija~60_combout\);

-- Location: FF_X7_Y17_N17
\memorija~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \takt~inputclkctrl_outclk\,
	d => \memorija~28feeder_combout\,
	ena => \memorija~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memorija~28_q\);

-- Location: LCCOMB_X13_Y14_N30
\memorija~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \memorija~63_combout\ = (\adresa[2]~input_o\ & (\adresa[0]~input_o\ & (\adresa[1]~input_o\ & \dozvolaUpisa~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adresa[2]~input_o\,
	datab => \adresa[0]~input_o\,
	datac => \adresa[1]~input_o\,
	datad => \dozvolaUpisa~input_o\,
	combout => \memorija~63_combout\);

-- Location: FF_X12_Y14_N9
\memorija~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \takt~inputclkctrl_outclk\,
	asdata => \podaci[0]~input_o\,
	sload => VCC,
	ena => \memorija~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memorija~36_q\);

-- Location: LCCOMB_X13_Y14_N28
\memorija~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \memorija~62_combout\ = (\adresa[2]~input_o\ & (!\adresa[0]~input_o\ & (!\adresa[1]~input_o\ & \dozvolaUpisa~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adresa[2]~input_o\,
	datab => \adresa[0]~input_o\,
	datac => \adresa[1]~input_o\,
	datad => \dozvolaUpisa~input_o\,
	combout => \memorija~62_combout\);

-- Location: FF_X13_Y14_N19
\memorija~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \takt~inputclkctrl_outclk\,
	asdata => \podaci[0]~input_o\,
	sload => VCC,
	ena => \memorija~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memorija~24_q\);

-- Location: LCCOMB_X13_Y14_N26
\memorija~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \memorija~61_combout\ = (\adresa[2]~input_o\ & (!\adresa[0]~input_o\ & (\adresa[1]~input_o\ & \dozvolaUpisa~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adresa[2]~input_o\,
	datab => \adresa[0]~input_o\,
	datac => \adresa[1]~input_o\,
	datad => \dozvolaUpisa~input_o\,
	combout => \memorija~61_combout\);

-- Location: FF_X13_Y14_N1
\memorija~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \takt~inputclkctrl_outclk\,
	asdata => \podaci[0]~input_o\,
	sload => VCC,
	ena => \memorija~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memorija~32_q\);

-- Location: LCCOMB_X13_Y14_N18
\memorija~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \memorija~40_combout\ = (\adresa[0]~input_o\ & (\adresa[1]~input_o\)) # (!\adresa[0]~input_o\ & ((\adresa[1]~input_o\ & ((\memorija~32_q\))) # (!\adresa[1]~input_o\ & (\memorija~24_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adresa[0]~input_o\,
	datab => \adresa[1]~input_o\,
	datac => \memorija~24_q\,
	datad => \memorija~32_q\,
	combout => \memorija~40_combout\);

-- Location: LCCOMB_X12_Y14_N8
\memorija~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \memorija~41_combout\ = (\adresa[0]~input_o\ & ((\memorija~40_combout\ & ((\memorija~36_q\))) # (!\memorija~40_combout\ & (\memorija~28_q\)))) # (!\adresa[0]~input_o\ & (((\memorija~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adresa[0]~input_o\,
	datab => \memorija~28_q\,
	datac => \memorija~36_q\,
	datad => \memorija~40_combout\,
	combout => \memorija~41_combout\);

-- Location: LCCOMB_X14_Y14_N24
\memorija~12feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memorija~12feeder_combout\ = \podaci[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \podaci[0]~input_o\,
	combout => \memorija~12feeder_combout\);

-- Location: LCCOMB_X13_Y14_N10
\memorija~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \memorija~65_combout\ = (!\adresa[2]~input_o\ & (\adresa[0]~input_o\ & (!\adresa[1]~input_o\ & \dozvolaUpisa~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adresa[2]~input_o\,
	datab => \adresa[0]~input_o\,
	datac => \adresa[1]~input_o\,
	datad => \dozvolaUpisa~input_o\,
	combout => \memorija~65_combout\);

-- Location: FF_X14_Y14_N25
\memorija~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \takt~inputclkctrl_outclk\,
	d => \memorija~12feeder_combout\,
	ena => \memorija~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memorija~12_q\);

-- Location: LCCOMB_X13_Y14_N4
\memorija~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \memorija~66_combout\ = (!\adresa[2]~input_o\ & (!\adresa[0]~input_o\ & (!\adresa[1]~input_o\ & \dozvolaUpisa~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adresa[2]~input_o\,
	datab => \adresa[0]~input_o\,
	datac => \adresa[1]~input_o\,
	datad => \dozvolaUpisa~input_o\,
	combout => \memorija~66_combout\);

-- Location: FF_X14_Y14_N27
\memorija~8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \takt~inputclkctrl_outclk\,
	asdata => \podaci[0]~input_o\,
	sload => VCC,
	ena => \memorija~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memorija~8_q\);

-- Location: LCCOMB_X14_Y14_N26
\memorija~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \memorija~42_combout\ = (\adresa[0]~input_o\ & ((\memorija~12_q\) # ((\adresa[1]~input_o\)))) # (!\adresa[0]~input_o\ & (((\memorija~8_q\ & !\adresa[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adresa[0]~input_o\,
	datab => \memorija~12_q\,
	datac => \memorija~8_q\,
	datad => \adresa[1]~input_o\,
	combout => \memorija~42_combout\);

-- Location: LCCOMB_X13_Y14_N8
\memorija~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \memorija~64_combout\ = (!\adresa[2]~input_o\ & (!\adresa[0]~input_o\ & (\adresa[1]~input_o\ & \dozvolaUpisa~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adresa[2]~input_o\,
	datab => \adresa[0]~input_o\,
	datac => \adresa[1]~input_o\,
	datad => \dozvolaUpisa~input_o\,
	combout => \memorija~64_combout\);

-- Location: FF_X19_Y7_N17
\memorija~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \takt~inputclkctrl_outclk\,
	asdata => \podaci[0]~input_o\,
	sload => VCC,
	ena => \memorija~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memorija~16_q\);

-- Location: LCCOMB_X13_Y14_N14
\memorija~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \memorija~67_combout\ = (!\adresa[2]~input_o\ & (\adresa[0]~input_o\ & (\adresa[1]~input_o\ & \dozvolaUpisa~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adresa[2]~input_o\,
	datab => \adresa[0]~input_o\,
	datac => \adresa[1]~input_o\,
	datad => \dozvolaUpisa~input_o\,
	combout => \memorija~67_combout\);

-- Location: FF_X19_Y7_N11
\memorija~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \takt~inputclkctrl_outclk\,
	asdata => \podaci[0]~input_o\,
	sload => VCC,
	ena => \memorija~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memorija~20_q\);

-- Location: LCCOMB_X19_Y7_N10
\memorija~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \memorija~43_combout\ = (\memorija~42_combout\ & (((\memorija~20_q\) # (!\adresa[1]~input_o\)))) # (!\memorija~42_combout\ & (\memorija~16_q\ & ((\adresa[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memorija~42_combout\,
	datab => \memorija~16_q\,
	datac => \memorija~20_q\,
	datad => \adresa[1]~input_o\,
	combout => \memorija~43_combout\);

-- Location: LCCOMB_X19_Y7_N28
\memorija~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \memorija~44_combout\ = (\adresa[2]~input_o\ & (\memorija~41_combout\)) # (!\adresa[2]~input_o\ & ((\memorija~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adresa[2]~input_o\,
	datab => \memorija~41_combout\,
	datad => \memorija~43_combout\,
	combout => \memorija~44_combout\);

-- Location: IOIBUF_X16_Y0_N1
\podaci[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => podaci(1),
	o => \podaci[1]~input_o\);

-- Location: LCCOMB_X14_Y14_N4
\memorija~13feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memorija~13feeder_combout\ = \podaci[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \podaci[1]~input_o\,
	combout => \memorija~13feeder_combout\);

-- Location: FF_X14_Y14_N5
\memorija~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \takt~inputclkctrl_outclk\,
	d => \memorija~13feeder_combout\,
	ena => \memorija~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memorija~13_q\);

-- Location: FF_X14_Y14_N23
\memorija~9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \takt~inputclkctrl_outclk\,
	asdata => \podaci[1]~input_o\,
	sload => VCC,
	ena => \memorija~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memorija~9_q\);

-- Location: LCCOMB_X14_Y14_N22
\memorija~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \memorija~47_combout\ = (\adresa[0]~input_o\ & ((\memorija~13_q\) # ((\adresa[1]~input_o\)))) # (!\adresa[0]~input_o\ & (((\memorija~9_q\ & !\adresa[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adresa[0]~input_o\,
	datab => \memorija~13_q\,
	datac => \memorija~9_q\,
	datad => \adresa[1]~input_o\,
	combout => \memorija~47_combout\);

-- Location: FF_X19_Y7_N9
\memorija~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \takt~inputclkctrl_outclk\,
	asdata => \podaci[1]~input_o\,
	sload => VCC,
	ena => \memorija~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memorija~21_q\);

-- Location: FF_X19_Y7_N7
\memorija~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \takt~inputclkctrl_outclk\,
	asdata => \podaci[1]~input_o\,
	sload => VCC,
	ena => \memorija~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memorija~17_q\);

-- Location: LCCOMB_X19_Y7_N8
\memorija~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \memorija~48_combout\ = (\adresa[1]~input_o\ & ((\memorija~47_combout\ & (\memorija~21_q\)) # (!\memorija~47_combout\ & ((\memorija~17_q\))))) # (!\adresa[1]~input_o\ & (\memorija~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adresa[1]~input_o\,
	datab => \memorija~47_combout\,
	datac => \memorija~21_q\,
	datad => \memorija~17_q\,
	combout => \memorija~48_combout\);

-- Location: FF_X7_Y17_N11
\memorija~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \takt~inputclkctrl_outclk\,
	asdata => \podaci[1]~input_o\,
	sload => VCC,
	ena => \memorija~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memorija~29_q\);

-- Location: FF_X7_Y17_N5
\memorija~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \takt~inputclkctrl_outclk\,
	asdata => \podaci[1]~input_o\,
	sload => VCC,
	ena => \memorija~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memorija~37_q\);

-- Location: FF_X13_Y14_N7
\memorija~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \takt~inputclkctrl_outclk\,
	asdata => \podaci[1]~input_o\,
	sload => VCC,
	ena => \memorija~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memorija~25_q\);

-- Location: FF_X13_Y14_N21
\memorija~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \takt~inputclkctrl_outclk\,
	asdata => \podaci[1]~input_o\,
	sload => VCC,
	ena => \memorija~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memorija~33_q\);

-- Location: LCCOMB_X13_Y14_N6
\memorija~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \memorija~45_combout\ = (\adresa[0]~input_o\ & (\adresa[1]~input_o\)) # (!\adresa[0]~input_o\ & ((\adresa[1]~input_o\ & ((\memorija~33_q\))) # (!\adresa[1]~input_o\ & (\memorija~25_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adresa[0]~input_o\,
	datab => \adresa[1]~input_o\,
	datac => \memorija~25_q\,
	datad => \memorija~33_q\,
	combout => \memorija~45_combout\);

-- Location: LCCOMB_X7_Y17_N4
\memorija~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \memorija~46_combout\ = (\adresa[0]~input_o\ & ((\memorija~45_combout\ & ((\memorija~37_q\))) # (!\memorija~45_combout\ & (\memorija~29_q\)))) # (!\adresa[0]~input_o\ & (((\memorija~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memorija~29_q\,
	datab => \adresa[0]~input_o\,
	datac => \memorija~37_q\,
	datad => \memorija~45_combout\,
	combout => \memorija~46_combout\);

-- Location: LCCOMB_X19_Y7_N26
\memorija~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \memorija~49_combout\ = (\adresa[2]~input_o\ & ((\memorija~46_combout\))) # (!\adresa[2]~input_o\ & (\memorija~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adresa[2]~input_o\,
	datab => \memorija~48_combout\,
	datac => \memorija~46_combout\,
	combout => \memorija~49_combout\);

-- Location: IOIBUF_X16_Y0_N22
\podaci[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => podaci(2),
	o => \podaci[2]~input_o\);

-- Location: LCCOMB_X14_Y14_N0
\memorija~14feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memorija~14feeder_combout\ = \podaci[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \podaci[2]~input_o\,
	combout => \memorija~14feeder_combout\);

-- Location: FF_X14_Y14_N1
\memorija~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \takt~inputclkctrl_outclk\,
	d => \memorija~14feeder_combout\,
	ena => \memorija~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memorija~14_q\);

-- Location: FF_X14_Y14_N11
\memorija~10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \takt~inputclkctrl_outclk\,
	asdata => \podaci[2]~input_o\,
	sload => VCC,
	ena => \memorija~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memorija~10_q\);

-- Location: LCCOMB_X14_Y14_N10
\memorija~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \memorija~52_combout\ = (\adresa[0]~input_o\ & ((\memorija~14_q\) # ((\adresa[1]~input_o\)))) # (!\adresa[0]~input_o\ & (((\memorija~10_q\ & !\adresa[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adresa[0]~input_o\,
	datab => \memorija~14_q\,
	datac => \memorija~10_q\,
	datad => \adresa[1]~input_o\,
	combout => \memorija~52_combout\);

-- Location: FF_X19_Y7_N23
\memorija~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \takt~inputclkctrl_outclk\,
	asdata => \podaci[2]~input_o\,
	sload => VCC,
	ena => \memorija~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memorija~22_q\);

-- Location: FF_X19_Y7_N13
\memorija~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \takt~inputclkctrl_outclk\,
	asdata => \podaci[2]~input_o\,
	sload => VCC,
	ena => \memorija~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memorija~18_q\);

-- Location: LCCOMB_X19_Y7_N22
\memorija~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \memorija~53_combout\ = (\adresa[1]~input_o\ & ((\memorija~52_combout\ & (\memorija~22_q\)) # (!\memorija~52_combout\ & ((\memorija~18_q\))))) # (!\adresa[1]~input_o\ & (\memorija~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adresa[1]~input_o\,
	datab => \memorija~52_combout\,
	datac => \memorija~22_q\,
	datad => \memorija~18_q\,
	combout => \memorija~53_combout\);

-- Location: LCCOMB_X7_Y17_N22
\memorija~30feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memorija~30feeder_combout\ = \podaci[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \podaci[2]~input_o\,
	combout => \memorija~30feeder_combout\);

-- Location: FF_X7_Y17_N23
\memorija~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \takt~inputclkctrl_outclk\,
	d => \memorija~30feeder_combout\,
	ena => \memorija~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memorija~30_q\);

-- Location: FF_X12_Y14_N11
\memorija~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \takt~inputclkctrl_outclk\,
	asdata => \podaci[2]~input_o\,
	sload => VCC,
	ena => \memorija~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memorija~38_q\);

-- Location: FF_X13_Y14_N3
\memorija~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \takt~inputclkctrl_outclk\,
	asdata => \podaci[2]~input_o\,
	sload => VCC,
	ena => \memorija~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memorija~26_q\);

-- Location: FF_X13_Y14_N17
\memorija~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \takt~inputclkctrl_outclk\,
	asdata => \podaci[2]~input_o\,
	sload => VCC,
	ena => \memorija~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memorija~34_q\);

-- Location: LCCOMB_X13_Y14_N2
\memorija~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \memorija~50_combout\ = (\adresa[0]~input_o\ & (\adresa[1]~input_o\)) # (!\adresa[0]~input_o\ & ((\adresa[1]~input_o\ & ((\memorija~34_q\))) # (!\adresa[1]~input_o\ & (\memorija~26_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adresa[0]~input_o\,
	datab => \adresa[1]~input_o\,
	datac => \memorija~26_q\,
	datad => \memorija~34_q\,
	combout => \memorija~50_combout\);

-- Location: LCCOMB_X12_Y14_N10
\memorija~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \memorija~51_combout\ = (\adresa[0]~input_o\ & ((\memorija~50_combout\ & ((\memorija~38_q\))) # (!\memorija~50_combout\ & (\memorija~30_q\)))) # (!\adresa[0]~input_o\ & (((\memorija~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adresa[0]~input_o\,
	datab => \memorija~30_q\,
	datac => \memorija~38_q\,
	datad => \memorija~50_combout\,
	combout => \memorija~51_combout\);

-- Location: LCCOMB_X19_Y7_N24
\memorija~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \memorija~54_combout\ = (\adresa[2]~input_o\ & ((\memorija~51_combout\))) # (!\adresa[2]~input_o\ & (\memorija~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adresa[2]~input_o\,
	datac => \memorija~53_combout\,
	datad => \memorija~51_combout\,
	combout => \memorija~54_combout\);

-- Location: IOIBUF_X18_Y0_N22
\podaci[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => podaci(3),
	o => \podaci[3]~input_o\);

-- Location: LCCOMB_X7_Y17_N24
\memorija~31feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memorija~31feeder_combout\ = \podaci[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \podaci[3]~input_o\,
	combout => \memorija~31feeder_combout\);

-- Location: FF_X7_Y17_N25
\memorija~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \takt~inputclkctrl_outclk\,
	d => \memorija~31feeder_combout\,
	ena => \memorija~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memorija~31_q\);

-- Location: FF_X12_Y14_N13
\memorija~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \takt~inputclkctrl_outclk\,
	asdata => \podaci[3]~input_o\,
	sload => VCC,
	ena => \memorija~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memorija~39_q\);

-- Location: FF_X13_Y14_N13
\memorija~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \takt~inputclkctrl_outclk\,
	asdata => \podaci[3]~input_o\,
	sload => VCC,
	ena => \memorija~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memorija~35_q\);

-- Location: FF_X13_Y14_N23
\memorija~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \takt~inputclkctrl_outclk\,
	asdata => \podaci[3]~input_o\,
	sload => VCC,
	ena => \memorija~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memorija~27_q\);

-- Location: LCCOMB_X13_Y14_N22
\memorija~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \memorija~55_combout\ = (\adresa[1]~input_o\ & ((\memorija~35_q\) # ((\adresa[0]~input_o\)))) # (!\adresa[1]~input_o\ & (((\memorija~27_q\ & !\adresa[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memorija~35_q\,
	datab => \adresa[1]~input_o\,
	datac => \memorija~27_q\,
	datad => \adresa[0]~input_o\,
	combout => \memorija~55_combout\);

-- Location: LCCOMB_X12_Y14_N12
\memorija~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \memorija~56_combout\ = (\adresa[0]~input_o\ & ((\memorija~55_combout\ & ((\memorija~39_q\))) # (!\memorija~55_combout\ & (\memorija~31_q\)))) # (!\adresa[0]~input_o\ & (((\memorija~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adresa[0]~input_o\,
	datab => \memorija~31_q\,
	datac => \memorija~39_q\,
	datad => \memorija~55_combout\,
	combout => \memorija~56_combout\);

-- Location: FF_X19_Y7_N29
\memorija~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \takt~inputclkctrl_outclk\,
	asdata => \podaci[3]~input_o\,
	sload => VCC,
	ena => \memorija~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memorija~19_q\);

-- Location: FF_X19_Y7_N19
\memorija~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \takt~inputclkctrl_outclk\,
	asdata => \podaci[3]~input_o\,
	sload => VCC,
	ena => \memorija~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memorija~23_q\);

-- Location: LCCOMB_X14_Y14_N20
\memorija~15feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memorija~15feeder_combout\ = \podaci[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \podaci[3]~input_o\,
	combout => \memorija~15feeder_combout\);

-- Location: FF_X14_Y14_N21
\memorija~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \takt~inputclkctrl_outclk\,
	d => \memorija~15feeder_combout\,
	ena => \memorija~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memorija~15_q\);

-- Location: FF_X14_Y14_N15
\memorija~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \takt~inputclkctrl_outclk\,
	asdata => \podaci[3]~input_o\,
	sload => VCC,
	ena => \memorija~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memorija~11_q\);

-- Location: LCCOMB_X14_Y14_N14
\memorija~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \memorija~57_combout\ = (\adresa[0]~input_o\ & ((\memorija~15_q\) # ((\adresa[1]~input_o\)))) # (!\adresa[0]~input_o\ & (((\memorija~11_q\ & !\adresa[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adresa[0]~input_o\,
	datab => \memorija~15_q\,
	datac => \memorija~11_q\,
	datad => \adresa[1]~input_o\,
	combout => \memorija~57_combout\);

-- Location: LCCOMB_X19_Y7_N18
\memorija~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \memorija~58_combout\ = (\adresa[1]~input_o\ & ((\memorija~57_combout\ & ((\memorija~23_q\))) # (!\memorija~57_combout\ & (\memorija~19_q\)))) # (!\adresa[1]~input_o\ & (((\memorija~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adresa[1]~input_o\,
	datab => \memorija~19_q\,
	datac => \memorija~23_q\,
	datad => \memorija~57_combout\,
	combout => \memorija~58_combout\);

-- Location: LCCOMB_X19_Y7_N4
\memorija~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \memorija~59_combout\ = (\adresa[2]~input_o\ & (\memorija~56_combout\)) # (!\adresa[2]~input_o\ & ((\memorija~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adresa[2]~input_o\,
	datac => \memorija~56_combout\,
	datad => \memorija~58_combout\,
	combout => \memorija~59_combout\);

podaci(0) <= \podaci[0]~output_o\;

podaci(1) <= \podaci[1]~output_o\;

podaci(2) <= \podaci[2]~output_o\;

podaci(3) <= \podaci[3]~output_o\;
END structure;


