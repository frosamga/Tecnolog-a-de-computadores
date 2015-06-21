------------------------------------------------------
-- LogiBLOX AND Module "and2x16"
-- Created by LogiBLOX version C.16
--    on Thu Feb 18 11:56:46 2010
-- Attributes 
--    MODTYPE = AND
--    BUS_WIDTH = 16
--    OPTYPE = TYPE_3
--    INPUT_BUSSES = 2
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

ENTITY and2x16 IS
  PORT(
    O: OUT std_logic_vector(15 DOWNTO 0);
    A: IN std_logic_vector(15 DOWNTO 0);
    B: IN std_logic_vector(15 DOWNTO 0));
END and2x16;

ARCHITECTURE sim OF and2x16 IS
    SIGNAL START_PULSE: std_logic := '1';
BEGIN
  PROCESS
    VARIABLE VO: std_logic_vector(15 DOWNTO 0);
    VARIABLE VA: std_logic_vector(15 DOWNTO 0);
    VARIABLE VB: std_logic_vector(15 DOWNTO 0);
    VARIABLE VC: std_logic_vector(15 DOWNTO 0);
    VARIABLE VD: std_logic_vector(15 DOWNTO 0);
    VARIABLE VE: std_logic_vector(15 DOWNTO 0);
    VARIABLE VF: std_logic_vector(15 DOWNTO 0);
    VARIABLE VG: std_logic_vector(15 DOWNTO 0);
    VARIABLE VH: std_logic_vector(15 DOWNTO 0);
    BEGIN
      VA := stdvec2mvl(A);
      VB := stdvec2mvl(B);
      O <= ( VA AND VB );
      WAIT ON A, B, START_PULSE;
  END PROCESS;
END sim;
