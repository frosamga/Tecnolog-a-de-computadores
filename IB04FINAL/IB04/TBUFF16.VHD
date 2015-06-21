------------------------------------------------------
-- LogiBLOX TRISTATE Module "tbuff16"
-- Created by LogiBLOX version C.16
--    on Thu Feb 18 13:17:00 2010
-- Attributes 
--    MODTYPE = TRISTATE
--    BUS_WIDTH = 16
------------------------------------------------------
-- This is a behaviorial model only and cannot be synthesized.
------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
LIBRARY logiblox;
USE logiblox.mvlutil.ALL;
USE logiblox.mvlarith.ALL;
USE logiblox.logiblox.ALL;

ENTITY tbuff16 IS
  PORT(
    I: IN std_logic_vector(15 DOWNTO 0);
    OE: IN std_logic;
    O: OUT std_logic_vector(15 DOWNTO 0));
END tbuff16;

ARCHITECTURE sim OF tbuff16 IS
    SIGNAL START_PULSE: std_logic := '1';
BEGIN
  PROCESS
    VARIABLE VI: std_logic_vector(15 DOWNTO 0);
    VARIABLE VOE: std_logic;
    VARIABLE VO: std_logic_vector(15 DOWNTO 0);
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
