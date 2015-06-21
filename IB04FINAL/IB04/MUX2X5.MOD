module MUX
symbol mux2x5
family xc4000e
symboltemplate mux2
attributes
   BUS_WIDTH = 6
   OPTYPE = TYPE_2
   INPUT_BUSSES = 2
   ENCODING = BINARY
   STYLE = MAX_SPEED
pins
   S
   O(5:0)
   MA(5:0)
   MB(5:0)
