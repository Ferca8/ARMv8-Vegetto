.include "colores.s"
.section .text

/*
  Optamos por hacer una imagen al estilo pixel art de Vegetto, un personaje de la saga Dragon Ball. 
  Está compuesta casi en su totalidad por rectángulos o cuadrados, siendo el sol la única figura 
  ajena a esta norma.
  Puede verse que la función maestra solo es el printeo de un fondo estatico (fondo_estatico.s) y 
  luego la repetición infinita de un bucle para poder permitir observarla.
*/

.globl main
main:
	BL fondo_estatico

InfLoop:
	B InfLoop
