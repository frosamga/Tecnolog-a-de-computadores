------------------------------------------------------
-- LogiBLOX MUX Module "mux4x16"
-- Created by LogiBLOX version C.16
--    on Wed May 11 08:57:11 2011
-- Attributes 
--    MODTYPE = MUX
--    BUS_WIDTH = 16
--    OPTYPE = TYPE_2
--    INPUT_BUSSES = 4
--    ENCODING = BINARY
--    STYLE = MAX_SPEED
------------------------------------------------------
-- This is a behaviorial model only and cannot be synthesized.
------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
LIBRARY logiblox;
USE logiblox.mvlutil.ALL;
USE logiblox.mvlarith.ALL;
USE logiblox.logiblox.ALL;

ENTITY mux4x16 IS
  PORT(
    S: IN std_logic_vector(1 DOWNTO 0);
    O: OUT std_logic_vector(15 DOWNTO 0);
    MA: IN std_logic_vector(15 DOWNTO 0);
    MB: IN std_logic_vector(15 DOWNTO 0);
    MC: IN std_logic_vector(15 DOWNTO 0);
    MD: IN std_logic_vector(15 DOWNTO 0));
END mux4x16;

ARCHITECTURE sim OF mux4x16 IS
    SIGNAL START_PULSE: std_logic := '1';
BEGIN
  PROCESS
    VARIABLE VS: std_logic_vector(1 DOWNTO 0);
    VARIABLE VO: std_logic_vector(15 DOWNTO 0);
    VARIABLE VMA: std_logic_vector(15 DOWNTO 0);
    VARIABLE VMB: std_logic_vector(15 DOWNTO 0);
    VARIABLE VMC: std_logic_vector(15 DOWNTO 0);
    VARIABLE VMD: std_logic_vector(15 DOWNTO 0);
    VARIABLE VME: std_logic_vector(15 DOWNTO 0);
    VARIABLE VMF: std_logic_vector(15 DOWNTO 0);
    VARIABLE VMG: std_logic_vector(15 DOWNTO 0);
    VARIABLE VMH: std_logic_vector(15 DOWNTO 0);
    BEGIN
      VS := stdvec2mvl(S);
      VMA := stdvec2mvl(MA);
      VMB := stdvec2mvl(MB);
      VMC := stdvec2mvl(MC);
      VMD := stdvec2mvl(MD);
      xb_mux_type_2(
             VMA,
             VMB,
             VMC,
             VMD,
             VME,
             VMF,
             VMG,
             VMH,
             VS,
             BINARY,
             VO);
      O <= VO;
      IF (START_PULSE='1') THEN
        START_PULSE <= '0' AFTER 1 ns;
      END IF;
      WAIT ON S, MA, MB, MC, MD, START_PULSE;
  END PROCESS;
END sim;
