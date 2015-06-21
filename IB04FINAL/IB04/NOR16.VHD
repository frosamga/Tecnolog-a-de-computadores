------------------------------------------------------
-- LogiBLOX NOR Module "nor16"
-- Created by LogiBLOX version C.16
--    on Thu Feb 18 12:55:28 2010
-- Attributes 
--    MODTYPE = NOR
--    BUS_WIDTH = 16
--    OPTYPE = TYPE_1
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

ENTITY nor16 IS
  PORT(
    O: OUT std_logic;
    A: IN std_logic_vector(15 DOWNTO 0));
END nor16;

ARCHITECTURE sim OF nor16 IS
    SIGNAL START_PULSE: std_logic := '1';
BEGIN
  PROCESS
    VARIABLE VA: std_logic_vector(15 DOWNTO 0);
    BEGIN
      VA := stdvec2mvl(A);
      O <= NOT(VA(0) OR VA(1) OR VA(2) OR VA(3) OR VA(4) OR VA(5) OR VA(6) OR VA(7) OR VA(8) OR VA(9) OR VA(10) OR VA(11) OR VA(12) OR VA(13) OR VA(14) OR VA(15));
      WAIT ON A, START_PULSE;
  END PROCESS;
END sim;
