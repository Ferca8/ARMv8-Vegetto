.include "colores.s"
.section .text
/*
                                ╔══════════════════════════════════════════════════════════════════════╗
                                ║                                 ÍNDICE                               ║
                                ╚══════════════════════════════════════════════════════════════════════╝
                                1. Brazo izquierdo
                                    ├── 1.1) Brazoizq_contorno ································· l: 39
                                    ├── 1.2) Brazoizq_sombramedia ······························ l: 71
                                    ├── 1.3) Brazoizq_sombraoscura ····························· l: 103
                                    ├── 1.4) Brazoizq_sombraclara ······························ l: 142
                                    └── 1.5) Brazoizq_luz ······································ l: 181
                                                 
                                2. Brazo derecho
                                    ├── 2.1) Brazoder_contorno ································· l: 211
                                    ├── 2.2) Brazoder_sombramedia ······························ l: 235
                                    └── 2.3) Brazoder_sombraclara ······························ l: 259

                                3. Manga izquierda
                                    ├── 3.1) Mangaizq_contorno ································· l: 289
                                    ├── 3.2) Mangaizq_sombraoscura ····························· l: 342
                                    ├── 3.3) Mangaizq_sombraclara ······························ l: 374
                                    └── 3.4) Mangaizq_luz ······································ l: 420

                                4. Manga derecha
                                    ├── 4.1) Mangader_contorno ································· l: 456
                                    └── 4.2) Mangader_sombraclara ······························ l: 488

                                5. Modularizaciones
                                    ├── 5.1) BrazoIzq_FULL ····································· l: 518
                                    └── 5.2) BrazoDer_FULL ····································· l: 536
*/

/*
╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
║                                                     BRAZO IZQUIERD0                                                    ║
╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
*/
.globl Brazoizq_contorno
Brazoizq_contorno:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=CONTORNO_PIEL
        MOV X1,259
        MOV X2,245
        MOV X3,294
        MOV X4,256
    BL pintar_rectangulo

    LDR X8,=CONTORNO_PIEL
        MOV X1,253
        MOV X2,251
        MOV X3,288
        MOV X4,268
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Brazoizq_sombramedia
Brazoizq_sombramedia:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SOMBRAMEDIA_PIEL
        MOV X1,265
        MOV X2,245
        MOV X3,288
        MOV X4,256
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_PIEL
        MOV X1,259
        MOV X2,251
        MOV X3,282
        MOV X4,268
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Brazoizq_sombraoscura
Brazoizq_sombraoscura:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SOMBRAOSCURA_PIEL
        MOV X1,271
        MOV X2,245
        MOV X3,276
        MOV X4,256
    BL pintar_rectangulo

    LDR X8,=SOMBRAOSCURA_PIEL
        MOV X1,265
        MOV X2,257
        MOV X3,270
        MOV X4,262
    BL pintar_rectangulo

    LDR X8,=SOMBRAOSCURA_PIEL
        MOV X1,271
        MOV X2,263
        MOV X3,276
        MOV X4,268
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Brazoizq_sombraclara
Brazoizq_sombraclara:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SOMBRACLARA_PIEL
        MOV X1,283
        MOV X2,245
        MOV X3,288
        MOV X4,256
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_PIEL
        MOV X1,277
        MOV X2,263
        MOV X3,282
        MOV X4,268
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_PIEL
        MOV X1,265
        MOV X2,263
        MOV X3,270
        MOV X4,268
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Brazoizq_luz
Brazoizq_luz:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=LUZ_PIEL
        MOV X1,277
        MOV X2,257
        MOV X3,282
        MOV X4,262
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


/*
╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
║                                                      BRAZO DERECHO                                                     ║
╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
*/
.globl Brazoder_contorno
Brazoder_contorno:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=CONTORNO_PIEL
        MOV X1,361
        MOV X2,245
        MOV X3,372
        MOV X4,268
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET

.globl Brazoder_sombramedia
Brazoder_sombramedia:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SOMBRAMEDIA_PIEL
        MOV X1,361
        MOV X2,245
        MOV X3,366
        MOV X4,268
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET

.globl Brazoder_sombraclara
Brazoder_sombraclara:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SOMBRACLARA_PIEL
        MOV X1,361
        MOV X2,248
        MOV X3,366
        MOV X4,256
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


/*
╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
║                                                     MANGA IZQUIERDA                                                    ║
╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
*/
.globl Mangaizq_contorno
Mangaizq_contorno:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=CONTORNO_REMERA
        MOV X1,259
        MOV X2,233
        MOV X3,288
        MOV X4,244
    BL pintar_rectangulo

    LDR X8,=CONTORNO_REMERA
        MOV X1,265
        MOV X2,221
        MOV X3,282
        MOV X4,244
    BL pintar_rectangulo

    LDR X8,=CONTORNO_REMERA
        MOV X1,271
        MOV X2,215
        MOV X3,276
        MOV X4,220
    BL pintar_rectangulo

    LDR X8,=CONTORNO_REMERA
        MOV X1,283
        MOV X2,227
        MOV X3,288
        MOV X4,244
    BL pintar_rectangulo

    LDR X8,=CONTORNO_REMERA
        MOV X1,289
        MOV X2,237
        MOV X3,292
        MOV X4,244
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Mangaizq_sombraoscura
Mangaizq_sombraoscura:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SOMBRAOSCURA_REMERA
        MOV X1,271
        MOV X2,227
        MOV X3,288
        MOV X4,244
    BL pintar_rectangulo

    LDR X8,=SOMBRAOSCURA_REMERA
        MOV X1,289
        MOV X2,237
        MOV X3,292
        MOV X4,238
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Mangaizq_sombraclara
Mangaizq_sombraclara:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SOMBRACLARA_REMERA
        MOV X1,271
        MOV X2,221
        MOV X3,282
        MOV X4,226
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_REMERA
        MOV X1,277
        MOV X2,227
        MOV X3,288
        MOV X4,232
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_REMERA
        MOV X1,265
        MOV X2,233
        MOV X3,276
        MOV X4,238
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_REMERA
        MOV X1,277
        MOV X2,239
        MOV X3,282
        MOV X4,244
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Mangaizq_luz
Mangaizq_luz:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=LUZ_REMERA
        MOV X1,265
        MOV X2,239
        MOV X3,270
        MOV X4,244
    BL pintar_rectangulo

    LDR X8,=LUZ_REMERA
        MOV X1,283
        MOV X2,239
        MOV X3,288
        MOV X4,244
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET

/*
╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
║                                                      MANGA DERECHA                                                     ║
╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
*/
.globl Mangader_contorno
Mangader_contorno:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=CONTORNO_REMERA
        MOV X1,361
        MOV X2,221
        MOV X3,366
        MOV X4,244
    BL pintar_rectangulo

    LDR X8,=CONTORNO_REMERA
        MOV X1,367
        MOV X2,239
        MOV X3,372
        MOV X4,244
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Mangader_sombraclara
Mangader_sombraclara:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SOMBRACLARA_REMERA
        MOV X1,361
        MOV X2,239
        MOV X3,366
        MOV X4,244
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET
    

/*
╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
║                                                    MODULARIZACIONES                                                    ║
╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
*/
.globl BrazoIzq_FULL
BrazoIzq_FULL:
    STR X30,[SP,-8]!

    BL Brazoizq_contorno
	BL Brazoizq_sombramedia
	BL Brazoizq_sombraoscura
	BL Brazoizq_sombraclara
	BL Brazoizq_luz
	BL Mangaizq_contorno
	BL Mangaizq_sombraoscura
	BL Mangaizq_sombraclara
	BL Mangaizq_luz

    LDR X30,[SP],8
RET


.globl BrazoDer_FULL
BrazoDer_FULL:
    STR X30,[SP,-8]!

    BL Brazoder_contorno
	BL Brazoder_sombramedia
	BL Brazoder_sombraclara
	BL Mangader_contorno
	BL Mangader_sombraclara

    LDR X30,[SP],8
RET
