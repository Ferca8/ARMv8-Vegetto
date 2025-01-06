.section .text
.equ SCREEN_WIDTH,   640
.equ SCREEN_HEIGH,   480
/*
                                    ╔═══════════════════════════════════════════════════════════╗
                                    ║                           ÍNDICE                          ║
                                    ╚═══════════════════════════════════════════════════════════╝
                                    1. Funciones básicas
                                        ├── 1.1) pintar_pixel ··························· l: 20
                                        ├── 1.2) pintar_rectangulo ······················ l: 48
                                        ├── 1.3) pintar_circulo ························· l: 130
                                        └── 1.4) delay ·································· l: 204
/* 
╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
║                                                       PINTAR PIXEL                                                     ║
╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
  Se puede entender a los registros X1 y X2 como las coordenadas x e y de un punto en un eje cartesiano, donde luego X8 
  se encarga de darle color a ese punto particular. Utilizamos la fórmula dada en el pdf de presentación del laboratorio.
*/
.globl pintar_pixel                                 // ¡Pseudocódigo para entender cómo van trabajando las instrucciones!
pintar_pixel:                                   
    MOV X16, SCREEN_WIDTH							// x16 = SCREEN_WIDTH = 640
    MUL X16, X2, X16        						// x16 = y * 640 = X2 * SCREEN_WIDTH
    ADD X16, X1, X16								// x16 = x + y * 640
    LSL X16, X16, #2		   						// x16 = [4 * (x + (y * 640)]
    ADD X16, X0, X16  			                    // X16 = Dirección inicial + 4 * [x + (y * 640)]
    STR W8, [X16]									// Colorea X16=(x,y) del color X8=color
RET	 	 											


/* 
╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
║                                                    PINTAR RECTANGULO                                                   ║
╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
  Planteamos la utilización de cuatro registros para crear el borde del rectángulo más uno adicional que sirve como auxiliar.
  Se puede entender a los registros X1 y X2 como las coordenadas x_1 e y_1 de un punto en un eje cartesiano, mientras que 
  X3 y X4 pueden ver como las coordenadas x_2 e y_2 de otro punto en el mismo eje. De cierta manera, puede visualizarse 
  un rectángulo con solo dos puntos:
                            (x_1,y_1)-------------------------     
                                |                            |            donde X1=x_1, X2=y_1, X3=x_2, X4=y_2
                                ------------------------(x_2,y_2)
  Teniendo como base a los registros X1,X2,X3 y X4 se puede ir recorriendo de fila en fila (desplazando x_1 hasta x_2) 
  pintando cada pixel y luego, cuando se llega al final de la fila, subir a la siguiente. Así se formaría el rectángulo 
  en cuestión.
  Incorporamos al registro X9 como un registro auxiliar para almacenar la coordenada x_1 de la esquina superior izquierda 
  del rectángulo. Este registro tomará importancia a la hora de reiniciar X1 al comienzo de cada nueva fila durante el 
  proceso de dibujo,asegurando que cada fila se empiece a dibujar desde el mismo punto en la coordenada x.
*/
.globl pintar_rectangulo                            // ¡Pseudocódigo para entender cómo van trabajando las instrucciones!
pintar_rectangulo:
	SUB SP, SP, #48                                 // Push del stack
	STR X1, [SP]
	STR X2, [SP, #8]
	STR X3, [SP, #16]
	STR X4, [SP, #24]
	STR X9, [SP, #32]
	STR X30, [SP, #40]

    /*  
      Hacemos una instancia en la que se respete que X1,X2 son el punto de la esquina superior izquierda y X3,X4 son el
      de la esquina inferior derecha. 
    */

    CMP X1, X3                                      // Compara X1 (x_1) y X3 (x_2)
    B.LE no_swap_xs                                 // Si x_1 <= x_2, entonces no swapeo las x (pasa a línea 47)
        MOV X16, X1                                 // Pero si x_1 > x_2, entonces sí swapeo las coordenadas x
        MOV X1, X3                 
        MOV X3, X16                
    no_swap_xs:

    CMP X2, X4                                      // Compara X2 (y_1) y X4 (y_2)
    B.LE no_swap_ys                                 // Si y_1 <= y_2, entonces no swapeo las y (pasa a línea 55)
        MOV X16, X2                                 // Pero si y_1 > y_2, entonces sí swapeo las coordenadas y
        MOV X2, X4                 
        MOV X4, X16                
    no_swap_ys:

    MOV X9, X1                                      // Cargo el valor de X1 (x_1) en el registro X9. 

    pintar_rectangulo_por_pixeles:
    CMP X2, X4                                      // Compara X2 (y_1) y X4 (y_2)
    B.GT dejar_de_pintar                            // Si y_1 > y_2 deja de pintar el rectángulo ya que superó el límite inferior
        CMP X1, X3                                  // Pero si y_1 todavía no se "salió" del rectángulo, compara X1 (x_1) y X3 (x_2)
        B.GT subir_fila                             // Si x_1 > x_2 sube una fila "hacia abajo" (mirándolo a simple vista)
            BL pintar_pixel                         // En caso de que todavía no llegue al final de la fila para bajar, pinta el pixel en pantalla
            ADD X1, X1, #1                          // Suma 1 a x_1, corriendo el foco un pixel a la derecha
        B pintar_rectangulo_por_pixeles             // Repite el proceso hasta que y_1 > y_2

    subir_fila:
        MOV X1, X9                                  // Cuando se llega al final de una fila se resetea el valor de x_1 para volver al lado izquierdo del rectángulo
        ADD X2, X2, #1                              // Se incrementa en 1 a y_2, subiendo a la fila siguiente
        B pintar_rectangulo_por_pixeles             

    dejar_de_pintar:                                

	LDR X30, [SP, #40]                              // Pop del stack
	LDR X9, [SP, #32]
	LDR X4, [SP, #24]
	LDR X3, [SP, #16]
	LDR X2, [SP, #8]
	LDR X1, [SP]
	ADD SP, SP, #48
RET


/*
╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
║                                                     PINTAR CÍRCULO                                                     ║
╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
  Para esta figura se requiere la inicialización de tres registros, los cuales son X1 y X2 como las coordenadas x e y del 
  punto central del círculo y a X3 como el radio del mismo.
  Planteamos al círculo como una figura "incrustada" perfectamente dentro de un cuadrado cuyos lados se corresponden con
  la distancia del radio hacia ellos. Gráficamente puede verse de esta forma:
                                                        y-r
                                                    -----------
                                                    |   ***   |
                                                    | *  |r * |
                                                    |*   |   *|     
                                                x-r |* (x,y) *| x+r   
                                                    |*       *|
                                                    | *     * |
                                                    |   ***   |
                                                    -----------    donde X1=x, X2=y, X3=r     
                                                        y+r

  De esta manera nos encargamos de que se pinte sobre una determinada zona del buffer y no en su totalidad. Para que la 
  función no pinte todo el cuadrado itera sobre cada pixel dentro de este calculando si está o no dentro del círculo usando 
  la siguiente ecuación:
                                        (x - x_0)² + (y - y_0)² <= r²
  Para representar a esta ecuación se utilizan un conjunto de registros auxiliares y así facilitar los cálculos.
*/
.globl pintar_circulo                               // ¡Pseudocódigo para entender cómo van trabajando las instrucciones!
pintar_circulo:
    SUB SP,SP,#64                                   // Push del stack
    STR X4,[SP]
    STR X9,[SP,#8]
    STR X10,[SP,#16]
    STR X11,[SP,#24]
    STR X12,[SP,#32]
    STR X13,[SP,#40]
    STR X14,[SP,#48]
    STR X30,[SP,#56]

    MOV X9,X1                                       // Guarda la coordenada x del centro en X9
    MOV x10,X2                                      // Guarda la coordenada y del centro en X10

    // "Cuadrado imaginario" que contiene al círculo
    ADD X11,X1,X3                                   // Calcula x+r (lado derecho del cuadrado) y, por consiguiente, el fin de las líneas verticales (X11 = x+r)
    ADD X12,X2,X3                                   // Calcula y+r (lado inferior del cuadrado) y a su vez el fin de las líneas horizontales (X12 = y+r)
    SUB X1,X1,X3                                    // x = x-r
    SUB X2,X2,X3                                    // y = y-r

    /* 
      Básicamente las últimas dos instrucciones me dejan con el punto (x-r,y-r), es decir, setean las coordenadas en la
      esquina superior izquierda del cuadrado limitador del círculo
    */

    // Calcula el radio al cuadrado en el registro X4 para luego utilizarlo
    MUL X4,X3,X3                                    // X4 contiene el r²

    loop_dibujar_circulo:
        // Seteo de registros auxiliares para guardar la ecuación de la circunferencia (x - x_0)² + (y - y_0)²
        SUB X13,X1,X9                               // X13 = X - x_0
        MUL X13,X13,X13                             // X13 = (X - x_0)²
        SUB X14,X2,X10                              // X14 = Y - y_0
        MUL X14,X14,X14                             // X14 = (Y - y_0)²
        ADD X14,X13,X14                             // X14 = (X - x_0)² + (Y - y_0)²

        CMP X4,X14                                  // Compara r² con (X - x_0)² + (Y - y_0)²
        B.LE detener_dibujar_circulo                // Si r² <= (X - x_0)² + (Y - y_0)² salta a detener_dibujar_circulo
        BL pintar_pixel                             // Si r² > (X - x_0)² + (Y - y_0)², pinta el pixel

        detener_dibujar_circulo:
            ADD X1,X1,1                             // Incrementa x, o sea, se mueve al pixel de la derecha
            CMP X11,X1                              // Comparo el lado derecho con la posición de x
            B.NE loop_dibujar_circulo               // Si x no alcanzó el límite derecho, entonces vuelve a loop_dibujar_circulo

            SUB X1,X1,X3                            // Si x llegó al final de la fila (límite derecho), entonces reseteo su posición al comienzo de la fila
            SUB X1,X1,X3

            ADD X2,X2,1                             // Incrementa y, es decir, se mueve a la siguiente fila
            CMP X12,X2                              // Compara la posición de la fila final (límite inferior) con la posición de y
            B.NE loop_dibujar_circulo               // Si y no alcanzó el límite inferior, entonces vuelve a loop_dibujar_circulo

    LDR X30,[SP,#56]                                // Pop del stack
LDR X14,[SP,#48]
LDR X13,[SP,#40]
LDR X12,[SP,#32]
LDR X11,[SP,#24]
    LDR X10,[SP,#16]
    LDR X9,[SP,#8]
    LDR X4,[SP]
ADD SP, SP, #64
RET


/*
╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
║                                                          DELAY                                                         ║
╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
  Básicamente la función de delay se encarga de, como su nombre lo indica, crear un retardo al realizar un bucle de 
  incrementos que dura hasta que uno de los registros empleados, X16, alcance el valor predefinido del otro (X17). El 
  valor de unos de los registros intervinientes, X17, está configurado para representar aproximadamente 1/12 de segundo.
  Claramente su importancia radica en su utilización para las animaciones del ejercicio 2.
*/
.globl delay                                        // ¡Pseudocódigo para entender cómo van trabajando las instrucciones!
delay:
    // Inicialización del contador y registro tope
    MOV X16,#0                                      // Inicializa X16 en 0. Este registro servirá de contador

    MOVZ X17,#0xF,LSL #16                           // Carga 0xF en los valores más significativos de X17 (16 bits a la izquierda), resultando en 0x000F0000
    MOVK X17,#0x4240,LSL #0                         // Carga 0x4240 en los valores menos significativos de X17, resultando en 0x000F4240 (lo cual en decimal equivale a 1,000,000)
    LSL X17,X17,5                                   // Desplaza el valor de X17 5 bits a la izquierda (multiplica por 32), resultando entonces en 0x1E84800 (32,000,000 en decimal)

    // Bucle de delay
    mantener_delay:
        CMP X16,X17                                // Comparar X16 (contador) con X17 (tope)
        B.EQ finalizar_delay                       // Si X16 = X17, el delay finaliza
        ADD X16, X16, #1                           // Si X16 != X17, incrementa X16 en 1
        B mantener_delay                           // Salta de nuevo a mantener_delay para continuar el bucle

    finalizar_delay:
RET
