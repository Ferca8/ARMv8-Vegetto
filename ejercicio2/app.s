.include "colores.s"
.include "gpiodata.s"

/*
  Mantuvimos el mismo diseño empleado en el ejercicio 1 con ligeras modificaciones como cambiar el 
  sol por la luna y el color del cielo (por motivos estéticos relacionados con la animación). Se 
  incorpora un aura animada alrededor del personaje, la cual simula el aumento de su poder, y el uso 
  de GPIO siendo útiles las teclas A,S,D. Estas teclas permiten alternar entre las distintas 
  transformaciones del personaje:
      - Estado base, pulsando la tecla A
      - Super Saiyajin, pulsando la tecla S
      - Super Saiyajin Blue, pulsando la tecla D
  Cabe mencionar que ambos elementos están conectados: al momento de interactuar con las teclas tanto 
  el aura como el personaje se verán afectados, cambiando el color de ciertos aspectos como el cabello, 
  ojos, cejas y el mismo halo de luz que lo rodea.
*/

.globl main
main:
   BL fondo_estatico                    // Se corresponde al fondo_estatico del ejercicio 1, con ligeras modificaciones
   BL estado_base                       // Se agrega este llamado a estado_base al comienzo para iniciar con un aura cualquiera

   anim_loop:
       BL teclas_animacion              // Dentro se realiza todo el entramado de la animación junto al GPIO
       B anim_loop                      // Se repite seguidamente sin tocar el fondo, es decir, solo se repite la animación
