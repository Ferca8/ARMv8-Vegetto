.include "colores.s"
.section .text

/*
  fondo_estatico contiene todo aspecto visual relevante, y dividido de cierta manera que permita el 
  orden a la hora de llevarlo a cabo. Básicamente se encarga de modularizar todas las partes del fondo.
*/

.globl fondo_estatico
fondo_estatico:
    STR x30,[SP,-8]!
	
	BL Cielo
	BL Sol
	BL Montana_FULL
	BL Piso_FULL
	BL Botas_FULL
	BL Guantes_FULL
	BL BrazoIzq_FULL
	BL BrazoDer_FULL
	BL Cinto
	BL Pantalon_FULL
	BL Cara_FULL
	BL Aro_FULL
	BL Torso_FULL
	BL Ojo_FULL
	BL Pelo_FULL
	BL Ceja
	
    LDR x30,[SP],8
RET
    
