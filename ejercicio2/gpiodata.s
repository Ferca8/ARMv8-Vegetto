.section .text
/* 
  Este apartado contiene definiciones que facilitan la configuración y lectura de teclas usando GPIO
*/

// Definiciones de las direcciones base y offset de los registros GPIO
.equ GPIO_BASE,    0x3f200000                       // Dirección base de los registros GPIO
.equ GPIO_GPFSEL0, 0x00                             // Offset del registro GPFSEL0 para la configuración de los pines GPIO
.equ GPIO_GPLEV0,  0x34                             // Offset del registro GPLEV0 para leer el nivel de los pines GPIO

// Definiciones de las máscaras de bit para cada tecla específica
.equ tecla_W, 0x2                                   // Máscara de bit para la tecla W
.equ tecla_A, 0x4                                   // Máscara de bit para la tecla A
.equ tecla_S, 0x8                                   // Máscara de bit para la tecla S
.equ tecla_D, 0x10                                  // Máscara de bit para la tecla D
.equ tecla_SPACE, 0x20                              // Máscara de bit para la tecla Space, Espacio o Barra espaciadora
