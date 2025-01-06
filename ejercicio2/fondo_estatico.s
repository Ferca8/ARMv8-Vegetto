.include "colores.s"
.section .text

.globl fondo_estatico
fondo_estatico:
    STR x30,[SP,-8]!
	
	BL Cielo
	BL Luna
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
    
