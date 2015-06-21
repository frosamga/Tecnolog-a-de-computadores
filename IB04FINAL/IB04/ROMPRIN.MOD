module ROM
symbol romprin
family xc4000e
symboltemplate rom0
attributes
   BUS_WIDTH = 35
   DEPTH = 64
   MEMFILE = mementera
   TRIM = FALSE
   STYLE = MAX_SPEED
   USE_RPM = FALSE
pins
   A(5:0)
   DO(34:0)
