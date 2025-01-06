.include "colores.s"
.include "gpiodata.s"
.section .text

.globl teclas_animacion                             // ¡Pseudocódigo para entender cómo van trabajando las instrucciones!
teclas_animacion:
    SUB SP,SP,#32                                   // Push del stack
    STR X9,[SP]
    STR X10,[SP,#8]
    STR X11,[SP,#16]
    STR X12,[SP,#24]

    MOV X9,GPIO_BASE                                // Setea el GPIO para poder realizar la lectura de los inputs
    STR XZR,[X9,GPIO_GPFSEL0]                       // Setea GPIOs 0-9 como lectura
    LDR X15,[X9,GPIO_GPLEV0]                        // Lee el estado de los GPIO 0-31

    AND W11,W15,tecla_A                             // Realiza un AND entre el estado GPIO y la tecla A y lo almacena en X11
    CMP W11,tecla_A                                 // Compara X11 (AND entre X15 y la tecla A) con la tecla A
    B.EQ estado_base                                // Salta a estado_base si la tecla A está presionada

    AND W11,W15,tecla_S                             // Realiza un AND entre el estado GPIO y la tecla S y lo almacena en X11
    CMP W11,tecla_S                                 // Compara X11 (AND entre X15 y la tecla S) con la tecla S
    B.EQ ssj                                        // Salta a ssj si la tecla S está presionada

    AND W11,W15,tecla_D                             // Realiza un AND entre el estado GPIO y la tecla D y lo almacena en X11
    CMP W11,tecla_D                                 // Compara X11 (AND entre X15 y la tecla D) con la tecla D
    B.EQ ssj_blue                                   // Salta a ssj_blue si la tecla D está presionada

    LDR X12,[SP]                                    // Pop del stack
    LDR X11,[SP,#8]
    LDR X10,[SP,#16]
    LDR X9,[SP,#24]
    ADD SP,SP,#32
RET


.globl estado_base
estado_base:
    STR X30,[SP,-8]!                                // Push del stack
                                                         
    LDR X8,=AURA_LUZ_EB
    LDR X9,=AURA_REFLEJOS_EB
    LDR X10,=CONTORNO_CABELLO_EB                    // Básicamente carga el respectivo color de la transformación en registros
    LDR X11,=SOMBRA_CABELLO_EB                      // que luego llama en las funciones particulares
    LDR X12,=LUZ_CABELLO_EB
    LDR X13,=IRIS_EB

    BL Aura1            
    BL delay        
    BL Aura2                                        // Animación del aura con delay. Se pueden apreciar los tres sprites de la misma
    BL delay
    BL Aura3
    BL delay

    LDR X30,[SP],8                                  // Pop del stack
RET


.globl ssj
ssj:
    STR X30,[SP,-8]!                                // Push del stack

    LDR X8,=AURA_LUZ_SSJ
    LDR X9,=AURA_REFLEJOS_SSJ
    LDR X10,=CONTORNO_CABELLO_SSJ                   // Básicamente carga el respectivo color de la transformación en registros
    LDR X11,=SOMBRA_CABELLO_SSJ                     // que luego llama en las funciones particulares
    LDR X12,=LUZ_CABELLO_SSJ
    LDR X13,=IRIS_SSJ

    BL Aura1
    BL delay
    BL Aura2                                        // Animación del aura con delay. Se pueden apreciar los tres sprites de la misma
    BL delay
    BL Aura3
    BL delay

    LDR X30,[SP],8                                  // Pop del stack
RET


.globl ssj_blue
ssj_blue:
    STR X30,[SP,-8]!                                // Push del stack

    LDR X8,=AURA_LUZ_SSJ_BLUE
    LDR X9,=AURA_REFLEJOS_SSJ_BLUE
    LDR X10,=CONTORNO_CABELLO_SSJ_BLUE              // Básicamente carga el respectivo color de la transformación en registros
    LDR X11,=SOMBRA_CABELLO_SSJ_BLUE                // que luego llama en las funciones particulares
    LDR X12,=LUZ_CABELLO_SSJ_BLUE
    LDR X13,=IRIS_SSJ_BLUE

    BL Aura1
    BL delay
    BL Aura2                                        // Animación del aura con delay. Se pueden apreciar los tres sprites de la misma
    BL delay
    BL Aura3
    BL delay

    LDR X30,[SP],8                                  // Pop del stack
RET
