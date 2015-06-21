------------------------------------------------------
-- LogiBLOX DATA_REG Module "REG16"
-- Created by LogiBLOX version C.16
--    on Mon Feb 15 19:46:47 2010
-- Attributes 
--    MODTYPE = DATA_REG
--    BUS_WIDTH = 16
--    STYLE = CLB_FD
--    ASYNC_VAL = 0
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

ENTITY REG16 IS
  PORT(
    D_IN: IN std_logic_vector(15 DOWNTO 0);
    ASYNC_CTRL: IN std_logic;
    CLK_EN: IN std_logic;
    CLOCK: IN std_logic;
    Q_OUT: OUT std_logic_vector(15 DOWNTO 0));
END REG16;

ARCHITECTURE sim OF REG16 IS
    SIGNAL START_PULSE: std_logic := '1';
BEGIN
  PROCESS
    VARIABLE VD_IN: std_logic_vector(15 DOWNTO 0);
    VARIABLE VASYNC_CTRL: std_logic;
    VARIABLE VSYNC_CTRL: std_logic;
    VARIABLE VCLK_EN: std_logic;
    VARIABLE VCLOCK: std_logic;
    VARIABLE VQ_OUT: std_logic_vector(15 DOWNTO 0);
    BEGIN
      VD_IN := stdvec2mvl(D_IN);
      VASYNC_CTRL := stdbit2mvl(ASYNC_CTRL);
      VSYNC_CTRL := '0';
      xb_data_reg(
             START_PULSE,
             VD_IN,
             VASYNC_CTRL,
             ('0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0'),
             VSYNC_CTRL,
             ('0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0'),
             VQ_OUT);
      IF(
       (CLOCK'EVENT AND stdbit2mvl(CLOCK)='1' AND stdbit2mvl(CLOCK'LAST_VALUE)='0' AND stdbit2mvl(CLK_EN)='1')
       OR (ASYNC_CTRL'EVENT AND stdbit2mvl(ASYNC_CTRL) /= '0')
       OR ( stdbit2mvl(START_PULSE)='1')
      ) THEN
      Q_OUT <= VQ_OUT;
      ELSIF(
       (stdbit2mvl(CLOCK) = 'X' AND stdbit2mvl(ASYNC_CTRL) /= '1')
       OR (CLOCK'EVENT AND stdbit2mvl(CLOCK)='1' AND stdbit2mvl(CLOCK'LAST_VALUE)='0'
           AND stdbit2mvl(CLK_EN) = 'X' AND stdbit2mvl(ASYNC_CTRL) /= '1' )
      ) THEN
      VQ_OUT := ('X','X','X','X','X','X','X','X','X','X','X','X','X','X','X','X');
      Q_OUT <= VQ_OUT;
      END IF;
      IF (START_PULSE='1') THEN
        START_PULSE <= '0' AFTER 1 ns;
      END IF;
      WAIT ON D_IN, ASYNC_CTRL, CLK_EN, CLOCK, START_PULSE;
  END PROCESS;
END sim;
