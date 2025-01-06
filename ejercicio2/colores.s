.section .text
/*
  Aquí se almacenan todos los colores utilizados en el proyecto, indicando su nombre como composición hexadecimal.
*/

/* 
  Colores para el contorno, sombra, luz, etc., que se usan para dibujar botas y guantes en el 
  proyecto (usado en botasguantes.s) 
*/ 
.equ CONTORNO_BOTAS_GUANTES, 0x5c5c5c
.equ SOMBRA_BOTAS_GUANTES, 0xb5b4b5
.equ SOMBRACLARA_BOTAS_GUANTES, 0xe2e2e3   
.equ LUZ_BOTAS_GUANTES, 0xf9f9f9
.equ SOMBRA_PUNTAS_BOTAS, 0xbaa133
.equ LUZ_PUNTAS_BOTAS, 0xe1c552


/* 
  Colores para el contorno, sombras y luces que se usan para representar la piel del personaje en 
  diferentes partes del cuerpo (usado en cara.s y brazos.s)
*/ 
.equ CONTORNO_PIEL, 0x864016
.equ SOMBRAOSCURA_PIEL, 0xa36b3c        // Exclusivo para el brazo (definir el bíceps)
.equ SOMBRAMEDIA_PIEL, 0xba8963
.equ SOMBRACLARA_PIEL, 0xd3aa8a
.equ LUZ_PIEL, 0xf6d7bf


/*
  Colores para la remera naranja que lleva el personaje en la parte inferior (usado en brazos.s y 
  torso.s)
*/ 
.equ CONTORNO_REMERA, 0x633704
.equ SOMBRAOSCURA_REMERA, 0x854807
.equ SOMBRACLARA_REMERA, 0xb96406
.equ LUZ_REMERA, 0xde831d


/* 
  Colores para el aro que lleva el personaje en su oreja (usado en cara.s).
*/
.equ LUZ_ARO, 0xffef9b
.equ SOMBRAOSCURA_ARO, 0xab9429
.equ SOMBRACLARA_ARO, 0xdfc749
.equ TIRANTE, 0xcdcdcc


/* 
  Colores utilizados para dibujar el fondo, incluyendo césped, suelo, cielo, luna, cráter, etc. 
  (usado en fondo.s)
*/
.equ CESPED_CLARO_SUELO, 0xbac98d
.equ SUELO_LUZ, 0xebbf8a
.equ SUELO_SOMBRACLARA, 0xd89152
.equ SUELO_SOMBRAOSCURA, 0xbb6e35
.equ CIELO, 0x3c5f8a
.equ LUNA, 0xeaece9
.equ CRATER, 0x919191


/*
  Colores utilizados para dibujar las montañas en el fondo (usado en montanas.s)
*/ 
.equ CESPED_CLARO_MONTANA, 0x588254
.equ CESPED_OSCURO, 0x275b54
.equ MONTANA_LUZ, 0xd3aa87
.equ MONTANA_SOMBRACLARA, 0xc87f5a
.equ MONTANA_SOMBRAMEDIA, 0xbc684d
.equ MONTANA_SOMBRAOSCURA, 0xa24934


/* 
  Colores utilizados para dibujar el conjunto azul del personaje e incluso la faja o cinto (usado en 
  torso.s y pantalon.s)
*/ 
.equ CONTORNO_TRAJE, 0x0b2949
.equ CINTO, 0x04162b                    // Azul más oscuro EXCLUSIVO para el cinto
.equ SOMBRAOSCURA_TRAJE, 0x11355e
.equ SOMBRAMEDIA_TRAJE, 0x1c4c83
.equ SOMBRACLARA_TRAJE, 0x2c64a5
.equ LUZ_TRAJE, 0x4b89ce


/*
  Colores utilizados para dibujar el cabello y la ceja del personaje en diferentes formas y estados 
  (usado en auras.s y ojoypelo.s)
*/ 
.equ CONTORNO_CABELLO_EB, 0x090103
.equ SOMBRA_CABELLO_EB, 0x150508
.equ LUZ_CABELLO_EB, 0x4b2029

.equ CONTORNO_CABELLO_SSJ, 0xc57730
.equ SOMBRA_CABELLO_SSJ, 0xe9b845
.equ LUZ_CABELLO_SSJ, 0xfefdd6

.equ CONTORNO_CABELLO_SSJ_BLUE, 0x017185
.equ SOMBRA_CABELLO_SSJ_BLUE, 0x01b3c9
.equ LUZ_CABELLO_SSJ_BLUE, 0x43f2f1


/* 
  Colores utilizados para dibujar los ojos del personaje, incluyendo el iris, el contorno, la sombra 
  y la luz (usado en auras.s y ojoypelo.s)
*/ 
.equ IRIS_EB, 0x232322
.equ IRIS_SSJ, 0x44bca0
.equ IRIS_SSJ_BLUE, 0x06addd

.equ CONTORNO_OJO, 0x6e6e6f
.equ SOMBRA_OJO, 0xb9b9b9
.equ LUZ_OJO, 0xfffefe


/* 
  Colores utilizados para dibujar el aura de poder que rodea al personaje en diferentes estados de 
  transformación (usado en auras.s)
*/ 
.equ AURA_REFLEJOS_EB, 0xa5a6c4
.equ AURA_LUZ_EB, 0xe7ebf7

.equ AURA_REFLEJOS_SSJ, 0xe7b636
.equ AURA_LUZ_SSJ, 0xe5e680 

.equ AURA_REFLEJOS_SSJ_BLUE, 0x4799fe
.equ AURA_LUZ_SSJ_BLUE, 0x2ebefe
