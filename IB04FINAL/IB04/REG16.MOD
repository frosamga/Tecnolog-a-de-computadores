module DATA_REG
symbol REG16
family xc4000e
symboltemplate datareg0
attributes
   BUS_WIDTH = 16
   STYLE = CLB_FD
   ASYNC_VAL = 0
   USE_RPM = FALSE
pins
   D_IN(15:0)
   ASYNC_CTRL
   CLK_EN
   CLOCK
   Q_OUT(15:0)
