module ROM
symbol rompro
family xc4000e
symboltemplate rom0
attributes
   BUS_WIDTH = 6
   DEPTH = 32
   MEMFILE = memproyecion.mem
   TRIM = FALSE
   STYLE = MAX_SPEED
   USE_RPM = FALSE
pins
   A(4:0)
   DO(5:0)
