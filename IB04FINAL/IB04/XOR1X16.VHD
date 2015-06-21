------------------------------------------------------
-- LogiBLOX XOR Module "xor1x16"
-- Created by LogiBLOX version C.16
--    on Thu Feb 18 11:55:58 2010
-- Attributes 
--    MODTYPE = XOR
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

ENTITY xor1x16 IS
  PORT(
    O: OUT std_logic_vector(15 DOWNTO 0);
    A: IN std_logic;
    B: IN std_logic_vector(15 DOWNTO 0));
END xor1x16;

ARCHITECTURE sim OF xor1x16 IS
    SIGNAL START_PULSE: std_logic := '1';
BEGIN
  PROCESS
    VARIABLE VB: std_logic_vector(15 DOWNTO 0);
    BEGIN
      VB := stdvec2mvl(B);
      O <= (VB XOR (A & A & A & A & A & A & A & A & A & A & A & A & A & A & A & A));
      WAIT ON A, B, START_PULSE;
  END PROCESS;
END sim;
