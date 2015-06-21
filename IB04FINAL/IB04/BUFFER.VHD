------------------------------------------------------
-- LogiBLOX TRISTATE Module "buffer"
-- Created by LogiBLOX version C.16
--    on Sun May 22 20:25:13 2011
-- Attributes 
--    MODTYPE = TRISTATE
--    BUS_WIDTH = 25
------------------------------------------------------
-- This is a behaviorial model only and cannot be synthesized.
------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
LIBRARY logiblox;
USE logiblox.mvlutil.ALL;
USE logiblox.mvlarith.ALL;
USE logiblox.logiblox.ALL;

ENTITY buffer IS
  PORT(
    I: IN std_logic_vector(24 DOWNTO 0);
    OE: IN std_logic;
    O: OUT std_logic_vector(24 DOWNTO 0));
END buffer;

ARCHITECTURE sim OF buffer IS
    SIGNAL START_PULSE: std_logic := '1';
BEGIN
  PROCESS
    VARIABLE VI: std_logic_vector(24 DOWNTO 0);
    VARIABLE VOE: std_logic;
    VARIABLE VO: std_logic_vector(24 DOWNTO 0);
    BEGIN
      VI := stdvec2mvl(I);
      VOE := stdbit2mvl(OE);
      xb_tristate(
             VI,
             VOE,
             VO,
             FLOAT);
      O <= VO;
      IF (START_PULSE='1') THEN
        START_PULSE <= '0' AFTER 1 ns;
      END IF;
      WAIT ON I, OE, START_PULSE;
  END PROCESS;
END sim;
