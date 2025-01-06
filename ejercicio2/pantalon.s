.include "colores.s"
.section .text
/*
                                ╔══════════════════════════════════════════════════════════════════════╗
                                ║                                 ÍNDICE                               ║
                                ╚══════════════════════════════════════════════════════════════════════╝
                                1. Cinto ······················································· l: 25
                                                 
                                2. Pantalón
                                    ├── 2.1) Pantalon_contorno ································· l: 76
                                    ├── 2.2) Pantalon_sombraclara ······························ l: 150
                                    ├── 2.3) Pantalon_sombraoscura ····························· l: 217
                                    ├── 2.4) Pantalon_sombramedia ······························ l: 298
                                    └── 2.5) Pantalon_luz ······································ l: 477

                                3. Modularizaciones
                                    └── 3.1) Pantalon_FULL ····································· l: 556
*/

/*
╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
║                                                           CINTO                                                        ║
╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
*/
.globl Cinto
Cinto:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=CINTO
        MOV X1,307
        MOV X2,263
        MOV X3,360
        MOV X4,274
    BL pintar_rectangulo

    LDR X8,=CONTORNO_TRAJE
        MOV X1,313
        MOV X2,263
        MOV X3,318
        MOV X4,274
    BL pintar_rectangulo

    LDR X8,=SOMBRAOSCURA_TRAJE
        MOV X1,319
        MOV X2,263
        MOV X3,348
        MOV X4,274
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,349
        MOV X2,265
        MOV X3,354
        MOV X4,274
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
║                                                         PANTALÓN                                                       ║
╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
*/
.globl Pantalon_contorno
Pantalon_contorno:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=CONTORNO_TRAJE
        MOV X1,277
        MOV X2,335
        MOV X3,318
        MOV X4,352
    BL pintar_rectangulo

    LDR X8,=CONTORNO_TRAJE
        MOV X1,283
        MOV X2,317
        MOV X3,324
        MOV X4,340
    BL pintar_rectangulo

    LDR X8,=CONTORNO_TRAJE
        MOV X1,289
        MOV X2,305
        MOV X3,366
        MOV X4,322
    BL pintar_rectangulo

    LDR X8,=CONTORNO_TRAJE
        MOV X1,295
        MOV X2,287
        MOV X3,366
        MOV X4,322
    BL pintar_rectangulo

    LDR X8,=CONTORNO_TRAJE
        MOV X1,301
        MOV X2,275
        MOV X3,360
        MOV X4,292
    BL pintar_rectangulo

    LDR X8,=CONTORNO_TRAJE
        MOV X1,331
        MOV X2,323
        MOV X3,360
        MOV X4,347
    BL pintar_rectangulo

    LDR X8,=CONTORNO_TRAJE
        MOV X1,361
        MOV X2,331
        MOV X3,366
        MOV X4,347
    BL pintar_rectangulo

    LDR X8,=CONTORNO_TRAJE
        MOV X1,361
        MOV X2,293
        MOV X3,366
        MOV X4,324
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Pantalon_sombraclara
Pantalon_sombraclara:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SOMBRACLARA_TRAJE
        MOV X1,289
        MOV X2,335
        MOV X3,306
        MOV X4,352
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_TRAJE
        MOV X1,301
        MOV X2,293
        MOV X3,324
        MOV X4,322
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_TRAJE
        MOV X1,313
        MOV X2,275
        MOV X3,354
        MOV X4,298
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_TRAJE
        MOV X1,325
        MOV X2,299
        MOV X3,330
        MOV X4,304
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_TRAJE
        MOV X1,337
        MOV X2,299
        MOV X3,360
        MOV X4,322
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_TRAJE
        MOV X1,355
        MOV X2,323
        MOV X3,360
        MOV X4,324
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_TRAJE
        MOV X1,343
        MOV X2,331
        MOV X3,360
        MOV X4,347
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Pantalon_sombraoscura
Pantalon_sombraoscura:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SOMBRAOSCURA_TRAJE
        MOV X1,295
        MOV X2,317
        MOV X3,300
        MOV X4,322
    BL pintar_rectangulo

    LDR X8,=SOMBRAOSCURA_TRAJE
        MOV X1,307
        MOV X2,329
        MOV X3,312
        MOV X4,334
    BL pintar_rectangulo

    LDR X8,=SOMBRAOSCURA_TRAJE
        MOV X1,313
        MOV X2,323
        MOV X3,318
        MOV X4,328
    BL pintar_rectangulo

    LDR X8,=SOMBRAOSCURA_TRAJE
        MOV X1,319
        MOV X2,317
        MOV X3,324
        MOV X4,322
    BL pintar_rectangulo

    LDR X8,=SOMBRAOSCURA_TRAJE
        MOV X1,319
        MOV X2,281
        MOV X3,324
        MOV X4,286
    BL pintar_rectangulo

    LDR X8,=SOMBRAOSCURA_TRAJE
        MOV X1,325
        MOV X2,287
        MOV X3,330
        MOV X4,298
    BL pintar_rectangulo

    LDR X8,=SOMBRAOSCURA_TRAJE
        MOV X1,331
        MOV X2,293
        MOV X3,342
        MOV X4,298
    BL pintar_rectangulo

    LDR X8,=SOMBRAOSCURA_TRAJE
        MOV X1,343
        MOV X2,281
        MOV X3,348
        MOV X4,292
    BL pintar_rectangulo

    LDR X8,=SOMBRAOSCURA_TRAJE
        MOV X1,349
        MOV X2,325
        MOV X3,354
        MOV X4,330
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Pantalon_sombramedia
Pantalon_sombramedia:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,283
        MOV X2,335
        MOV X3,288
        MOV X4,352
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,289
        MOV X2,317
        MOV X3,294
        MOV X4,334
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,295
        MOV X2,329
        MOV X3,300
        MOV X4,334
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,301
        MOV X2,335
        MOV X3,318
        MOV X4,340
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,307
        MOV X2,341
        MOV X3,312
        MOV X4,350
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,313
        MOV X2,329
        MOV X3,318
        MOV X4,334
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,301
        MOV X2,317
        MOV X3,306
        MOV X4,328
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,307
        MOV X2,323
        MOV X3,312
        MOV X4,328
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,295
        MOV X2,293
        MOV X3,300
        MOV X4,316
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,301
        MOV X2,287
        MOV X3,306
        MOV X4,292
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,307
        MOV X2,275
        MOV X3,312
        MOV X4,286
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,325
        MOV X2,281
        MOV X3,330
        MOV X4,286
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,331
        MOV X2,287
        MOV X3,336
        MOV X4,292
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,343
        MOV X2,275
        MOV X3,348
        MOV X4,280
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,343
        MOV X2,293
        MOV X3,348
        MOV X4,298
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,355
        MOV X2,293
        MOV X3,360
        MOV X4,298
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,337
        MOV X2,299
        MOV X3,342
        MOV X4,310
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,331
        MOV X2,305
        MOV X3,336
        MOV X4,322
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,337
        MOV X2,319
        MOV X3,342
        MOV X4,324
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,349
        MOV X2,319
        MOV X3,354
        MOV X4,324
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,337
        MOV X2,325
        MOV X3,348
        MOV X4,342
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,355
        MOV X2,331
        MOV X3,360
        MOV X4,336
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,337
        MOV X2,343
        MOV X3,342
        MOV X4,347
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Pantalon_luz
Pantalon_luz:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=LUZ_TRAJE
        MOV X1,295
        MOV X2,335
        MOV X3,300
        MOV X4,352
    BL pintar_rectangulo

    LDR X8,=LUZ_TRAJE
        MOV X1,313
        MOV X2,293
        MOV X3,318
        MOV X4,316
    BL pintar_rectangulo

    LDR X8,=LUZ_TRAJE
        MOV X1,319
        MOV X2,299
        MOV X3,324
        MOV X4,310
    BL pintar_rectangulo

    LDR X8,=LUZ_TRAJE
        MOV X1,337
        MOV X2,281
        MOV X3,342
        MOV X4,286
    BL pintar_rectangulo

    LDR X8,=LUZ_TRAJE
        MOV X1,349
        MOV X2,299
        MOV X3,354
        MOV X4,317
    BL pintar_rectangulo

    LDR X8,=LUZ_TRAJE
        MOV X1,355
        MOV X2,318
        MOV X3,360
        MOV X4,323
    BL pintar_rectangulo

    LDR X8,=LUZ_TRAJE
        MOV X1,349
        MOV X2,337
        MOV X3,354
        MOV X4,347
    BL pintar_rectangulo

    LDR X8,=LUZ_TRAJE
        MOV X1,355
        MOV X2,343
        MOV X3,360
        MOV X4,347
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
║                                                     MODULARIZACIONES                                                   ║
╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
*/
.globl Pantalon_FULL
Pantalon_FULL:
    STR X30,[SP,-8]!

    BL Pantalon_contorno
	BL Pantalon_sombraclara
	BL Pantalon_sombraoscura
	BL Pantalon_sombramedia
	BL Pantalon_luz

    LDR X30,[SP],8
RET
