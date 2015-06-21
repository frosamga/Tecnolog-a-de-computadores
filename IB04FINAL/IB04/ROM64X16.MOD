module ROM
symbol rom64x16
family xc4000e
symboltemplate rom0
attributes
   BUS_WIDTH = 16
   DEPTH = 128
   MEMFILE = rom
   TRIM = FALSE
   STYLE = MAX_SPEED
   USE_RPM = FALSE
pins
   A(6:0)
   DO(15:0)
