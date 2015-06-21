------------------------------------------------------
-- LogiBLOX CONSTANT Module "cero16"
-- Created by LogiBLOX version C.16
--    on Wed May 25 10:02:07 2011
-- Attributes 
--    MODTYPE = CONSTANT
--    BUS_WIDTH = 16
--    C_VALUE = 1
------------------------------------------------------
-- This is a behaviorial model only and cannot be synthesized.
------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
LIBRARY logiblox;
USE logiblox.mvlutil.ALL;
USE logiblox.mvlarith.ALL;
USE logiblox.logiblox.ALL;

ENTITY cero16 IS
  PORT(
    C: OUT std_logic_vector(15 DOWNTO 0));
END cero16;

ARCHITECTURE sim OF cero16 IS
    SIGNAL START_PULSE: std_logic := '1';
BEGIN
    C <= ('0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1');
END sim;
