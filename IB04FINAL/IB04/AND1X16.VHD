------------------------------------------------------
-- LogiBLOX AND Module "and1x16"
-- Created by LogiBLOX version C.16
--    on Thu Feb 18 12:32:36 2010
-- Attributes 
--    MODTYPE = AND
--    BUS_WIDTH = 16
--    OPTYPE = TYPE_2
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

ENTITY and1x16 IS
  PORT(
    O: OUT std_logic_vector(15 DOWNTO 0);
    A: IN std_logic;
    B: IN std_logic_vector(15 DOWNTO 0));
END and1x16;

ARCHITECTURE sim OF and1x16 IS
    SIGNAL START_PULSE: std_logic := '1';
BEGIN
  PROCESS
    VARIABLE VB: std_logic_vector(15 DOWNTO 0);
    BEGIN
      VB := stdvec2mvl(B);
      O <= (VB AND (A & A & A & A & A & A & A & A & A & A & A & A & A & A & A & A));
      WAIT ON A, B, START_PULSE;
  END PROCESS;
END sim;
