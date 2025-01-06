.include "colores.s"
.section .text
/*
                                ╔══════════════════════════════════════════════════════════════════════╗
                                ║                                 ÍNDICE                               ║
                                ╚══════════════════════════════════════════════════════════════════════╝
                                1. Bota izquierda
                                    ├── 1.1) Botaizq_contorno ································· l: 43
                                    ├── 1.2) Botaizq_luz ······································ l: 82
                                    ├── 1.3) Botaizq_sombra ··································· l: 121
                                    ├── 1.4) Botaizq_sombraclara ······························ l: 167
                                    ├── 1.5) Botaizq_sombrapuntera ···························· l: 234
                                    └── 1.6) Botaizq_luzpuntera ······························· l: 259
                                    
                                2. Bota derecha
                                    ├── 2.1) Botader_contorno ································· l: 288
                                    ├── 2.2) Botader_luz ······································ l: 334
                                    ├── 2.3) Botader_sombra ··································· l: 373
                                    ├── 2.4) Botader_sombrapuntera ···························· l: 405
                                    ├── 2.5) Botader_luzpuntera ······························· l: 430
                                    └── 2.6) Botader_sombraclara ······························ l: 462

                                3. Guante izquierdo
                                    ├── 3.1) Guanteizq_contorno ······························· l: 505
                                    ├── 3.2) Guanteizq_luz ···································· l: 558
                                    ├── 3.3) Guanteizq_sombra ································· l: 604
                                    └── 3.4) Guanteizq_sombraclara ···························· l: 657

                                4. Guante derecho
                                    ├── 4.1) Guanteder_contorno ······························· l: 714
                                    └── 4.2) Guanteder_sombra ································· l: 753

                                5. Modularizaciones
                                    ├── 5.1) Botas_FULL ······································· l: 790
                                    └── 5.2) Guantes_FULL ····································· l: 812
*/

/*
╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
║                                                      BOTA IZQUIERDA                                                    ║
╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
*/
.globl Botaizq_contorno
Botaizq_contorno:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=CONTORNO_BOTAS_GUANTES
        MOV X1,265
        MOV X2,371
        MOV X3,300
        MOV X4,400
    BL pintar_rectangulo

    LDR X8,=CONTORNO_BOTAS_GUANTES
        MOV X1,271
        MOV X2,353
        MOV X3,306
        MOV X4,382
    BL pintar_rectangulo

    LDR X8,=CONTORNO_BOTAS_GUANTES
        MOV X1,271
        MOV X2,353
        MOV X3,312
        MOV X4,370
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Botaizq_luz
Botaizq_luz:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=LUZ_BOTAS_GUANTES
        MOV X1,283
        MOV X2,353
        MOV X3,306
        MOV X4,364
    BL pintar_rectangulo

    LDR X8,=LUZ_BOTAS_GUANTES
        MOV X1,277 
        MOV X2,359
        MOV X3,300
        MOV X4,382
    BL pintar_rectangulo

    LDR X8,=LUZ_BOTAS_GUANTES
        MOV X1,271
        MOV X2,371
        MOV X3,294
        MOV X4,394
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Botaizq_sombra
Botaizq_sombra:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SOMBRA_BOTAS_GUANTES
        MOV X1,283
        MOV X2,353
        MOV X3,288
        MOV X4,358
    BL pintar_rectangulo

    LDR X8,=SOMBRA_BOTAS_GUANTES
        MOV X1,277
        MOV X2,359
        MOV X3,282
        MOV X4,370
    BL pintar_rectangulo

    LDR X8,=SOMBRA_BOTAS_GUANTES
        MOV X1,271
        MOV X2,371
        MOV X3,275
        MOV X4,394
    BL pintar_rectangulo

    LDR X8,=SOMBRA_BOTAS_GUANTES
        MOV X1,289
        MOV X2,389
        MOV X3,294
        MOV X4,394
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Botaizq_sombraclara
Botaizq_sombraclara:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SOMBRACLARA_BOTAS_GUANTES
        MOV X1,289
        MOV X2,353
        MOV X3,294
        MOV X4,364
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_BOTAS_GUANTES
        MOV X1,283
        MOV X2,359
        MOV X3,288
        MOV X4,376
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_BOTAS_GUANTES
        MOV X1,277
        MOV X2,371
        MOV X3,282
        MOV X4,382
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_BOTAS_GUANTES
        MOV X1,283
        MOV X2,389
        MOV X3,288
        MOV X4,394
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_BOTAS_GUANTES
        MOV X1,290
        MOV X2,383
        MOV X3,294
        MOV X4,388
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_BOTAS_GUANTES
        MOV X1,295
        MOV X2,365
        MOV X3,300
        MOV X4,382
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_BOTAS_GUANTES
        MOV X1,301
        MOV X2,359
        MOV X3,306
        MOV X4,364
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Botaizq_sombrapuntera
Botaizq_sombrapuntera:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SOMBRA_PUNTAS_BOTAS
        MOV X1,271
        MOV X2,383
        MOV X3,276
        MOV X4,394
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Botaizq_luzpuntera
Botaizq_luzpuntera:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=LUZ_PUNTAS_BOTAS
        MOV X1,277
        MOV X2,383
        MOV X3,282
        MOV X4,394
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
║                                                       BOTA DERECHA                                                     ║
╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
*/
.globl Botader_contorno
Botader_contorno:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=CONTORNO_BOTAS_GUANTES
        MOV X1,331
        MOV X2,348
        MOV X3,366
        MOV X4,383
    BL pintar_rectangulo

    LDR X8,=CONTORNO_BOTAS_GUANTES
        MOV X1,331
        MOV X2,378
        MOV X3,372
        MOV X4,383
    BL pintar_rectangulo

    LDR X8,=CONTORNO_BOTAS_GUANTES
        MOV X1,337
        MOV X2,384
        MOV X3,378
        MOV X4,389
    BL pintar_rectangulo

    LDR X8,=CONTORNO_BOTAS_GUANTES
        MOV X1,343
        MOV X2,390
        MOV X3,378
        MOV X4,395
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Botader_luz
Botader_luz:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=LUZ_BOTAS_GUANTES
        MOV X1,337
        MOV X2,348
        MOV X3,360
        MOV X4,383
    BL pintar_rectangulo

    LDR X8,=LUZ_BOTAS_GUANTES
        MOV X1,337
        MOV X2,378
        MOV X3,366
        MOV X4,383
    BL pintar_rectangulo

    LDR X8,=LUZ_BOTAS_GUANTES
        MOV X1,343
        MOV X2,384
        MOV X3,372
        MOV X4,389
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Botader_sombra
Botader_sombra:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SOMBRA_BOTAS_GUANTES
        MOV X1,337
        MOV X2,348
        MOV X3,342
        MOV X4,383
    BL pintar_rectangulo

    LDR X8,=SOMBRA_BOTAS_GUANTES
        MOV X1,343
        MOV X2,384
        MOV X3,348
        MOV X4,389
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Botader_sombrapuntera
Botader_sombrapuntera:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SOMBRA_PUNTAS_BOTAS
        MOV X1,355
        MOV X2,384
        MOV X3,360
        MOV X4,389
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Botader_luzpuntera
Botader_luzpuntera:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=LUZ_PUNTAS_BOTAS
        MOV X1,355
        MOV X2,378
        MOV X3,366
        MOV X4,383
    BL pintar_rectangulo

    LDR X8,=LUZ_PUNTAS_BOTAS
        MOV X1,361
        MOV X2,384
        MOV X3,372
        MOV X4,389
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Botader_sombraclara
Botader_sombraclara:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SOMBRACLARA_BOTAS_GUANTES
        MOV X1,343
        MOV X2,348
        MOV X3,348
        MOV X4,383
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_BOTAS_GUANTES
        MOV X1,349
        MOV X2,384
        MOV X3,354
        MOV X4,389
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_BOTAS_GUANTES
        MOV X1,355
        MOV X2,360
        MOV X3,360
        MOV X4,377
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
║                                                     GUANTE IZQUIERDO                                                   ║
╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
*/
.globl Guanteizq_contorno
Guanteizq_contorno:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=CONTORNO_BOTAS_GUANTES
        MOV X1,253
        MOV X2,269
        MOV X3,282
        MOV X4,310
    BL pintar_rectangulo

    LDR X8,=CONTORNO_BOTAS_GUANTES
        MOV X1,253
        MOV X2,287
        MOV X3,288
        MOV X4,310
    BL pintar_rectangulo

    LDR X8,=CONTORNO_BOTAS_GUANTES
        MOV X1,253
        MOV X2,293
        MOV X3,294
        MOV X4,304
    BL pintar_rectangulo

    LDR X8,=CONTORNO_BOTAS_GUANTES
        MOV X1,259
        MOV X2,311
        MOV X3,288
        MOV X4,316
    BL pintar_rectangulo

    LDR X8,=CONTORNO_BOTAS_GUANTES
        MOV X1,271
        MOV X2,317
        MOV X3,282
        MOV X4,322
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Guanteizq_luz
Guanteizq_luz:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=LUZ_BOTAS_GUANTES
        MOV X1,259
        MOV X2,269
        MOV X3,276
        MOV X4,310
    BL pintar_rectangulo

    LDR X8,=LUZ_BOTAS_GUANTES
        MOV X1,259
        MOV X2,287
        MOV X3,282
        MOV X4,298
    BL pintar_rectangulo

    LDR X8,=LUZ_BOTAS_GUANTES
        MOV X1,283
        MOV X2,293
        MOV X3,288
        MOV X4,304
    BL pintar_rectangulo

    LDR X8,=LUZ_BOTAS_GUANTES
        MOV X1,271
        MOV X2,311
        MOV X3,282
        MOV X4,316
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Guanteizq_sombra
Guanteizq_sombra:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SOMBRA_BOTAS_GUANTES
        MOV X1,259
        MOV X2,269
        MOV X3,264
        MOV X4,310
    BL pintar_rectangulo

    LDR X8,=SOMBRA_BOTAS_GUANTES
        MOV X1,259
        MOV X2,275
        MOV X3,270
        MOV X4,286
    BL pintar_rectangulo

    LDR X8,=SOMBRA_BOTAS_GUANTES
        MOV X1,259
        MOV X2,281
        MOV X3,276
        MOV X4,286
    BL pintar_rectangulo

    LDR X8,=SOMBRA_BOTAS_GUANTES
        MOV X1,259
        MOV X2,305
        MOV X3,270
        MOV X4,310
    BL pintar_rectangulo

    LDR X8,=SOMBRA_BOTAS_GUANTES
        MOV X1,271
        MOV X2,311
        MOV X3,276
        MOV X4,316
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Guanteizq_sombraclara
Guanteizq_sombraclara:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SOMBRACLARA_BOTAS_GUANTES
        MOV X1,265
        MOV X2,269
        MOV X3,276
        MOV X4,274
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_BOTAS_GUANTES
        MOV X1,265
        MOV X2,287
        MOV X3,270
        MOV X4,304
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_BOTAS_GUANTES
        MOV X1,271
        MOV X2,305
        MOV X3,276
        MOV X4,310
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_BOTAS_GUANTES
        MOV X1,277
        MOV X2,287
        MOV X3,282
        MOV X4,298
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_BOTAS_GUANTES
        MOV X1,283
        MOV X2,293
        MOV X3,288
        MOV X4,304
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
║                                                      GUANTE DERECHO                                                    ║
╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
*/
.globl Guanteder_contorno
Guanteder_contorno:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=CONTORNO_BOTAS_GUANTES
        MOV X1,361
        MOV X2,269
        MOV X3,366
        MOV X4,292
    BL pintar_rectangulo

    LDR X8,=CONTORNO_BOTAS_GUANTES
        MOV X1,367
        MOV X2,275
        MOV X3,372
        MOV X4,316
    BL pintar_rectangulo

    LDR X8,=CONTORNO_BOTAS_GUANTES
        MOV X1,373
        MOV X2,287
        MOV X3,378
        MOV X4,310
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Guanteder_sombra
Guanteder_sombra:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SOMBRA_BOTAS_GUANTES
        MOV X1,361
        MOV X2,275
        MOV X3,366
        MOV X4,292
    BL pintar_rectangulo

    LDR X8,=SOMBRA_BOTAS_GUANTES
        MOV X1,367
        MOV X2,287
        MOV X3,372
        MOV X4,310
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
.globl Botas_FULL
Botas_FULL:
    STR X30,[SP,-8]!

    BL Botaizq_contorno
	BL Botaizq_luz
	BL Botaizq_sombra
    BL Botaizq_sombraclara
	BL Botaizq_luzpuntera
	BL Botaizq_sombrapuntera
	
	BL Botader_contorno
	BL Botader_luz
	BL Botader_sombra
    BL Botader_sombraclara
	BL Botader_luzpuntera
	BL Botader_sombrapuntera
	
    LDR X30,[SP],8
RET


.globl Guantes_FULL
Guantes_FULL:
    STR X30,[SP,-8]!

    BL Guanteizq_contorno
	BL Guanteizq_luz
	BL Guanteizq_sombra
	BL Guanteizq_sombraclara

	BL Guanteder_contorno
	BL Guanteder_sombra

    LDR X30,[SP],8
RET
