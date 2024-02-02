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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "02/01/2024 19:44:10"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ramMemorija
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ramMemorija_vhd_vec_tst IS
END ramMemorija_vhd_vec_tst;
ARCHITECTURE ramMemorija_arch OF ramMemorija_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL adresa : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL dozvolaUpisa : STD_LOGIC;
SIGNAL podaci : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL takt : STD_LOGIC;
COMPONENT ramMemorija
	PORT (
	adresa : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	dozvolaUpisa : IN STD_LOGIC;
	podaci : INOUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	takt : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ramMemorija
	PORT MAP (
-- list connections between master ports and signals
	adresa => adresa,
	dozvolaUpisa => dozvolaUpisa,
	podaci => podaci,
	takt => takt
	);
-- adresa[2]
t_prcs_adresa_2: PROCESS
BEGIN
	adresa(2) <= '0';
WAIT;
END PROCESS t_prcs_adresa_2;
-- adresa[1]
t_prcs_adresa_1: PROCESS
BEGIN
	adresa(1) <= '0';
WAIT;
END PROCESS t_prcs_adresa_1;
-- adresa[0]
t_prcs_adresa_0: PROCESS
BEGIN
	adresa(0) <= '0';
WAIT;
END PROCESS t_prcs_adresa_0;

-- dozvolaUpisa
t_prcs_dozvolaUpisa: PROCESS
BEGIN
	dozvolaUpisa <= '0';
WAIT;
END PROCESS t_prcs_dozvolaUpisa;
-- podaci[3]
t_prcs_podaci_3: PROCESS
BEGIN
	podaci(3) <= 'Z';
	WAIT FOR 999000 ps;
	podaci(3) <= '0';
WAIT;
END PROCESS t_prcs_podaci_3;
-- podaci[2]
t_prcs_podaci_2: PROCESS
BEGIN
	podaci(2) <= 'Z';
	WAIT FOR 999000 ps;
	podaci(2) <= '0';
WAIT;
END PROCESS t_prcs_podaci_2;
-- podaci[1]
t_prcs_podaci_1: PROCESS
BEGIN
	podaci(1) <= 'Z';
	WAIT FOR 999000 ps;
	podaci(1) <= '0';
WAIT;
END PROCESS t_prcs_podaci_1;
-- podaci[0]
t_prcs_podaci_0: PROCESS
BEGIN
	podaci(0) <= 'Z';
	WAIT FOR 999000 ps;
	podaci(0) <= '0';
WAIT;
END PROCESS t_prcs_podaci_0;

-- takt
t_prcs_takt: PROCESS
BEGIN
	takt <= '1';
	WAIT FOR 999000 ps;
	takt <= '0';
WAIT;
END PROCESS t_prcs_takt;
END ramMemorija_arch;
