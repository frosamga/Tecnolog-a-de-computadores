module MUX
symbol mux2x16
family xc4000e
symboltemplate mux2
attributes
   BUS_WIDTH = 16
   OPTYPE = TYPE_2
   INPUT_BUSSES = 2
   ENCODING = BINARY
   STYLE = MAX_SPEED
pins
   S
   O(15:0)
   MA(15:0)
   MB(15:0)
