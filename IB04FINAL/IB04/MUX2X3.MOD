module MUX
symbol mux2x3
family xc4000e
symboltemplate mux2
attributes
   BUS_WIDTH = 3
   OPTYPE = TYPE_2
   INPUT_BUSSES = 2
   ENCODING = BINARY
   STYLE = MAX_SPEED
pins
   S
   O(2:0)
   MA(2:0)
   MB(2:0)
