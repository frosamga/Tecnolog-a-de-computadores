module MUX
symbol mux8x16
family xc4000e
symboltemplate mux9
attributes
   BUS_WIDTH = 16
   OPTYPE = TYPE_2
   INPUT_BUSSES = 8
   ENCODING = BINARY
   STYLE = MAX_SPEED
pins
   S(2:0)
   O(15:0)
   MA(15:0)
   MB(15:0)
   MC(15:0)
   MD(15:0)
   ME(15:0)
   MF(15:0)
   MG(15:0)
   MH(15:0)
