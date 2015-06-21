module ADD_SUB
symbol ADD16
family xc4000e
symboltemplate addsub1
attributes
   BUS_WIDTH = 16
   OPTYPE = ADD
   REGISTERED = NONE
   ENCODING = UNSIGNED
   STYLE = MAX_SPEED
pins
   C_IN
   A(15:0)
   B(15:0)
   SUM(15:0)
   C_OUT
