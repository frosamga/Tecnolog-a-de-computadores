------------------------------------------------------
-- LogiBLOX ADD_SUB Module "ADD16"
-- Created by LogiBLOX version C.16
--    on Thu Feb 18 11:55:02 2010
-- Attributes 
--    MODTYPE = ADD_SUB
--    BUS_WIDTH = 16
--    OPTYPE = ADD
--    REGISTERED = NONE
--    ENCODING = UNSIGNED
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

ENTITY ADD16 IS
  PORT(
    C_IN: IN std_logic;
    A: IN std_logic_vector(15 DOWNTO 0);
    B: IN std_logic_vector(15 DOWNTO 0);
    SUM: OUT std_logic_vector(15 DOWNTO 0);
    C_OUT: OUT std_logic);
END ADD16;

ARCHITECTURE sim OF ADD16 IS
    SIGNAL START_PULSE: std_logic := '1';
BEGIN
  PROCESS
    VARIABLE VADD_SUB: std_logic;
    VARIABLE VC_IN: std_logic;
    VARIABLE VA: std_logic_vector(15 DOWNTO 0);
    VARIABLE VB: std_logic_vector(15 DOWNTO 0);
    VARIABLE VLOAD: std_logic;
    VARIABLE VCLK_EN: std_logic;
    VARIABLE VCLOCK: std_logic;
    VARIABLE VASYNC_CTRL: std_logic;
    VARIABLE VSYNC_CTRL: std_logic;
    VARIABLE VSUM: std_logic_vector(15 DOWNTO 0);
    VARIABLE VOVFL: std_logic;
    VARIABLE VC_OUT: std_logic;
    BEGIN
      VADD_SUB := '1';
      VC_IN := stdbit2mvl(C_IN);
      VA := stdvec2mvl(A);
      VB := stdvec2mvl(B);
      VLOAD := '0';
      VASYNC_CTRL := '0';
      VSYNC_CTRL := '0';
      VADD_SUB := '1';
      xb_accum(
               START_PULSE,
               VA,
               VB,
               VC_IN,
               VADD_SUB,
               VLOAD,
               VASYNC_CTRL,
               ('0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0'),
               '0',
               '0',
               VSYNC_CTRL,
               ('0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0'),
               '0',
               '0',
               UNSIGNED,
               NONE,
               VSUM,
               VC_OUT,
               VOVFL);
      SUM <= VSUM;
      C_OUT <= VC_OUT;
      IF (START_PULSE='1') THEN
        START_PULSE <= '0' AFTER 1 ns;
      END IF;
      WAIT ON C_IN, A, B, START_PULSE;
  END PROCESS;
END sim;
