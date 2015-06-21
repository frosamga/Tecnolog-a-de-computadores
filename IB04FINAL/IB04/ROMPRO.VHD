------------------------------------------------------
-- LogiBLOX ROM Module "rompro"
-- Created by LogiBLOX version C.16
--    on Sat May 21 19:28:48 2011
-- Attributes 
--    MODTYPE = ROM
--    BUS_WIDTH = 6
--    DEPTH = 32
--    MEMFILE = memproyecion.mem
--    TRIM = FALSE
--    STYLE = MAX_SPEED
--    USE_RPM = FALSE
------------------------------------------------------
-- This is a behaviorial model only and cannot be synthesized.
------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
LIBRARY logiblox;
USE logiblox.mvlutil.ALL;
USE logiblox.mvlarith.ALL;
USE logiblox.logiblox.ALL;

ENTITY rompro IS
  PORT(
    A: IN std_logic_vector(4 DOWNTO 0);
    DO: OUT std_logic_vector(5 DOWNTO 0));
END rompro;

ARCHITECTURE sim OF rompro IS
  SIGNAL START_PULSE: std_logic := '1';
  TYPE mem_data IS ARRAY (31 DOWNTO 0) OF std_logic_vector(5 DOWNTO 0);
BEGIN
  PROCESS
  VARIABLE VD: mem_data;
  VARIABLE first_time: BOOLEAN := TRUE;
  BEGIN
    IF (first_time) THEN
      VD(0) := ('0','0','1','1','0','0');
      VD(1) := ('0','1','0','0','0','0');
      VD(2) := ('0','0','0','0','0','0');
      VD(3) := ('0','0','0','0','0','0');
      VD(4) := ('1','0','0','1','0','0');
      VD(5) := ('1','0','0','0','1','0');
      VD(6) := ('0','0','0','0','0','0');
      VD(7) := ('0','0','0','0','0','0');
      VD(8) := ('0','1','0','1','0','0');
      VD(9) := ('0','1','0','1','1','1');
      VD(10) := ('0','0','0','0','0','0');
      VD(11) := ('0','0','0','0','0','0');
      VD(12) := ('0','0','0','0','0','0');
      VD(13) := ('0','0','0','0','0','0');
      VD(14) := ('0','0','0','0','0','0');
      VD(15) := ('0','0','0','0','0','0');
      VD(16) := ('0','1','1','0','1','0');
      VD(17) := ('0','1','1','1','1','0');
      VD(18) := ('0','0','0','0','0','0');
      VD(19) := ('0','0','0','0','0','0');
      VD(20) := ('0','0','0','0','0','0');
      VD(21) := ('0','0','0','0','0','0');
      VD(22) := ('0','0','0','0','0','0');
      VD(23) := ('0','0','0','0','0','0');
      VD(24) := ('1','0','0','1','1','0');
      VD(25) := ('1','0','1','0','0','0');
      VD(26) := ('1','0','1','0','1','0');
      VD(27) := ('1','0','1','0','1','1');
      VD(28) := ('0','0','0','0','1','0');
      VD(29) := ('0','0','0','0','1','1');
      VD(30) := ('0','0','0','0','0','0');
      VD(31) := ('0','0','0','0','0','0');
      first_time := FALSE;
    END IF;
    IF (mvlvec_not01(A)) THEN
      DO <= ('X','X','X','X','X','X');
    ELSE
      DO <= VD(mvlvec2int(A));
    END IF;
      WAIT ON A, START_PULSE;
  END PROCESS;
END sim;
