module COUNTER
symbol micropc
family xc4000e
symboltemplate counter0
attributes
   BUS_WIDTH = 6
   STYLE = MAX_SPEED
   OPTYPE = UP
   ENCODING = BINARY
   SYNC_VAL = 1
pins
   D_IN(5:0)
   LOAD
   CLOCK
   SYNC_CTRL
   Q_OUT(5:0)
