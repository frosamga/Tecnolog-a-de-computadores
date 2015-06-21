module MUX
symbol mux4x8
family xc4000e
symboltemplate mux5
attributes
   BUS_WIDTH = 8
   OPTYPE = TYPE_2
   INPUT_BUSSES = 4
   ENCODING = BINARY
   STYLE = MAX_SPEED
pins
   S(1:0)
   O(7:0)
   MA(7:0)
   MB(7:0)
   MC(7:0)
   MD(7:0)
