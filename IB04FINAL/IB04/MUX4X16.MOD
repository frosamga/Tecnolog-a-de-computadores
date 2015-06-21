module MUX
symbol mux4x16
family xc4000e
symboltemplate mux5
attributes
   BUS_WIDTH = 16
   OPTYPE = TYPE_2
   INPUT_BUSSES = 4
   ENCODING = BINARY
   STYLE = MAX_SPEED
pins
   S(1:0)
   O(15:0)
   MA(15:0)
   MB(15:0)
   MC(15:0)
   MD(15:0)
