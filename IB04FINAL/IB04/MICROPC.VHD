------------------------------------------------------
-- LogiBLOX COUNTER Module "micropc"
-- Created by LogiBLOX version C.16
--    on Fri May 27 02:14:56 2011
-- Attributes 
--    MODTYPE = COUNTER
--    BUS_WIDTH = 6
--    STYLE = MAX_SPEED
--    OPTYPE = UP
--    ENCODING = BINARY
--    SYNC_VAL = 1
------------------------------------------------------
-- This is a behaviorial model only and cannot be synthesized.
------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
LIBRARY logiblox;
USE logiblox.mvlutil.ALL;
USE logiblox.mvlarith.ALL;
USE logiblox.logiblox.ALL;

ENTITY micropc IS
  PORT(
    D_IN: IN std_logic_vector(5 DOWNTO 0);
    LOAD: IN std_logic;
    CLOCK: IN std_logic;
    SYNC_CTRL: IN std_logic;
    Q_OUT: OUT std_logic_vector(5 DOWNTO 0));
END micropc;

ARCHITECTURE sim OF micropc IS
    SIGNAL START_PULSE: std_logic := '1';
BEGIN
  PROCESS
    VARIABLE VD_IN: std_logic_vector(5 DOWNTO 0);
    VARIABLE VLOAD: std_logic;
    VARIABLE VUP_DN: std_logic;
    VARIABLE VCLK_EN: std_logic;
    VARIABLE VCLOCK: std_logic;
    VARIABLE VASYNC_CTRL: std_logic;
    VARIABLE VSYNC_CTRL: std_logic;
    VARIABLE VQ_OUT: std_logic_vector(5 DOWNTO 0);
    VARIABLE VTERM_CNT: std_logic;
    VARIABLE lowest_count: std_logic_vector(5 DOWNTO 0) := ('0','0','0','0','0','0');
    BEGIN
      VD_IN := stdvec2mvl(D_IN);
      VLOAD := stdbit2mvl(LOAD);
      VUP_DN := '1';
      VASYNC_CTRL := '0';
      VSYNC_CTRL := stdbit2mvl(SYNC_CTRL);
      VUP_DN := '1';
      IF(
       (CLOCK'EVENT AND stdbit2mvl(CLOCK)='1' AND stdbit2mvl(CLOCK'LAST_VALUE)='0')
       OR ( stdbit2mvl(START_PULSE)='1')
      ) THEN
      xb_counter(
                 START_PULSE,
                 VUP_DN,
                 VASYNC_CTRL,
                 ('0','0','0','0','0','0'),
                 VSYNC_CTRL,
                 ('0','0','0','0','0','1'),
                 VLOAD,
                 VD_IN,
                 ('1','1','1','1','1','1'),
                 VQ_OUT);
      Q_OUT <= VQ_OUT;
      ELSIF(
       (stdbit2mvl(CLOCK) = 'X')
      ) THEN
        VQ_OUT := ('X','X','X','X','X','X');
        Q_OUT <= VQ_OUT;
      END IF;
      IF (START_PULSE='1') THEN
        START_PULSE <= '0' AFTER 1 ns;
      END IF;
      WAIT ON D_IN, LOAD, CLOCK, SYNC_CTRL, START_PULSE;
  END PROCESS;
END sim;
