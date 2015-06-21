module SYNC_RAM
symbol ram256x16
family xc4000e
symboltemplate syncram0
attributes
   BUS_WIDTH = 16
   DEPTH = 256
   STYLE = MAX_SPEED
   USE_RPM = FALSE
pins
   A(7:0)
   DO(15:0)
   DI(15:0)
   WR_EN
   WR_CLK
