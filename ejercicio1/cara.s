.include "colores.s"
.section .text
/*
                                ╔══════════════════════════════════════════════════════════════════════╗
                                ║                                 ÍNDICE                               ║
                                ╚══════════════════════════════════════════════════════════════════════╝
                                1. Cara
                                    ├── 1.1) Cara_contorno ····································· l: 30
                                    ├── 1.2) Cara_sombramedia ·································· l: 111
                                    ├── 1.3) Cara_sombraclara ·································· l: 213
                                    ├── 1.4) Cara_luz ·········································· l: 308
                                    └── 1.5) Cara_sombraoscura ································· l: 431
                                                 
                                2. Aro
                                    ├── 2.1) Aro_tirante ······································· l: 475
                                    ├── 2.2) Aro_sombraoscura ·································· l: 514
                                    ├── 2.3) Aro_sombraclara ··································· l: 539
                                    └── 2.4) Aro_luz ··········································· l: 564

                                3. Modularizaciones
                                    ├── 3.1) Cara_FULL ········································· l: 594
                                    └── 3.2) Aro_FULL ·········································· l: 608
*/

/*
╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
║                                                           CARA                                                         ║
╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
*/
.globl Cara_contorno
Cara_contorno:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=CONTORNO_PIEL
        MOV X1,326
        MOV X2,209
        MOV X3,349
        MOV X4,214
    BL pintar_rectangulo

    LDR X8,=CONTORNO_PIEL
        MOV X1,314
        MOV X2,203
        MOV X3,355
        MOV X4,208
    BL pintar_rectangulo

    LDR X8,=CONTORNO_PIEL
        MOV X1,296
        MOV X2,197
        MOV X3,361
        MOV X4,202
    BL pintar_rectangulo

    LDR X8,=CONTORNO_PIEL
        MOV X1,296
        MOV X2,191
        MOV X3,362
        MOV X4,196
    BL pintar_rectangulo

    LDR X8,=CONTORNO_PIEL
        MOV X1,290
        MOV X2,185
        MOV X3,362
        MOV X4,190
    BL pintar_rectangulo

    LDR X8,=CONTORNO_PIEL
        MOV X1,290
        MOV X2,179
        MOV X3,362
        MOV X4,190
    BL pintar_rectangulo

    LDR X8,=CONTORNO_PIEL
        MOV X1,290
        MOV X2,174
        MOV X3,307
        MOV X4,178
    BL pintar_rectangulo

    LDR X8,=CONTORNO_PIEL
        MOV X1,291
        MOV X2,173
        MOV X3,307
        MOV X4,173
    BL pintar_rectangulo

    LDR X8,=CONTORNO_PIEL
        MOV X1,296
        MOV X2,167
        MOV X3,301
        MOV X4,172
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Cara_sombramedia
Cara_sombramedia:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SOMBRAMEDIA_PIEL
        MOV X1,326
        MOV X2,215
        MOV X3,337
        MOV X4,220
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_PIEL
        MOV X1,320
        MOV X2,209
        MOV X3,325
        MOV X4,214
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_PIEL
        MOV X1,308
        MOV X2,203
        MOV X3,313
        MOV X4,208
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_PIEL
        MOV X1,326
        MOV X2,203
        MOV X3,337
        MOV X4,208
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_PIEL
        MOV X1,302
        MOV X2,197
        MOV X3,307
        MOV X4,202
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_PIEL
        MOV X1,314
        MOV X2,197
        MOV X3,325
        MOV X4,202
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_PIEL
        MOV X1,308
        MOV X2,191
        MOV X3,319
        MOV X4,196
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_PIEL
        MOV X1,296
        MOV X2,185
        MOV X3,313
        MOV X4,190
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_PIEL
        MOV X1,302
        MOV X2,179
        MOV X3,319
        MOV X4,184
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_PIEL
        MOV X1,308
        MOV X2,173
        MOV X3,319
        MOV X4,178
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_PIEL
        MOV X1,310
        MOV X2,167
        MOV X3,313
        MOV X4,172
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_PIEL
        MOV X1,307
        MOV X2,160
        MOV X3,317
        MOV X4,166
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Cara_sombraclara
Cara_sombraclara:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SOMBRACLARA_PIEL
        MOV X1,338
        MOV X2,215
        MOV X3,343
        MOV X4,220
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_PIEL
        MOV X1,302
        MOV X2,203
        MOV X3,307
        MOV X4,208
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_PIEL
        MOV X1,338
        MOV X2,203
        MOV X3,349
        MOV X4,208
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_PIEL
        MOV X1,326
        MOV X2,197
        MOV X3,355
        MOV X4,202
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_PIEL
        MOV X1,320
        MOV X2,191
        MOV X3,361
        MOV X4,196
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_PIEL
        MOV X1,314
        MOV X2,185
        MOV X3,319
        MOV X4,190
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_PIEL
        MOV X1,296
        MOV X2,173
        MOV X3,301
        MOV X4,184
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_PIEL
        MOV X1,350
        MOV X2,179
        MOV X3,355
        MOV X4,184
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_PIEL
        MOV X1,332
        MOV X2,167
        MOV X3,343
        MOV X4,178
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_PIEL
        MOV X1,362
        MOV X2,175
        MOV X3,362
        MOV X4,178
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_PIEL
        MOV X1,307
        MOV X2,149
        MOV X3,317
        MOV X4,159
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Cara_luz
Cara_luz:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=LUZ_PIEL
        MOV X1,338
        MOV X2,197
        MOV X3,349
        MOV X4,202
    BL pintar_rectangulo

    LDR X8,=LUZ_PIEL
        MOV X1,332
        MOV X2,191
        MOV X3,355
        MOV X4,196
    BL pintar_rectangulo

    LDR X8,=LUZ_PIEL
        MOV X1,356
        MOV X2,185
        MOV X3,361
        MOV X4,190
    BL pintar_rectangulo

    LDR X8,=LUZ_PIEL
        MOV X1,344
        MOV X2,179
        MOV X3,349
        MOV X4,184
    BL pintar_rectangulo

    LDR X8,=LUZ_PIEL
        MOV X1,356
        MOV X2,179
        MOV X3,361
        MOV X4,184
    BL pintar_rectangulo

    LDR X8,=LUZ_PIEL
        MOV X1,344
        MOV X2,171
        MOV X3,361
        MOV X4,178
    BL pintar_rectangulo

    LDR X8,=LUZ_PIEL
        MOV X1,344
        MOV X2,168
        MOV X3,359
        MOV X4,170
    BL pintar_rectangulo

    LDR X8,=LUZ_PIEL
        MOV X1,338
        MOV X2,167
        MOV X3,355
        MOV X4,171
    BL pintar_rectangulo

    LDR X8,=LUZ_PIEL
        MOV X1,332
        MOV X2,161
        MOV X3,357
        MOV X4,166
    BL pintar_rectangulo

    LDR X8,=LUZ_PIEL
        MOV X1,336
        MOV X2,155
        MOV X3,352
        MOV X4,160
    BL pintar_rectangulo

    LDR X8,=LUZ_PIEL
        MOV X1,353
        MOV X2,156
        MOV X3,355
        MOV X4,160
    BL pintar_rectangulo

    LDR X8,=LUZ_PIEL
        MOV X1,340
        MOV X2,153
        MOV X3,352
        MOV X4,155
    BL pintar_rectangulo

    LDR X8,=LUZ_PIEL
        MOV X1,340
        MOV X2,150
        MOV X3,349
        MOV X4,152
    BL pintar_rectangulo

    LDR X8,=LUZ_PIEL
        MOV X1,355
        MOV X2,161
        MOV X3,359
        MOV X4,167
    BL pintar_rectangulo

    LDR X8,=LUZ_PIEL
        MOV X1,357
        MOV X2,168
        MOV X3,361
        MOV X4,173
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Cara_sombraoscura
Cara_sombraoscura:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SOMBRAOSCURA_PIEL
        MOV X1,314
        MOV X2,209
        MOV X3,319
        MOV X4,214
    BL pintar_rectangulo

    LDR X8,=SOMBRAOSCURA_PIEL
        MOV X1,320
        MOV X2,215
        MOV X3,325
        MOV X4,220
    BL pintar_rectangulo

    LDR X8,=SOMBRAOSCURA_PIEL
        MOV X1,350
        MOV X2,185
        MOV X3,355
        MOV X4,190
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
║                                                            ARO                                                         ║
╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
*/
.globl Aro_tirante
Aro_tirante:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=TIRANTE
        MOV X1,302
        MOV X2,185
        MOV X3,303
        MOV X4,190
    BL pintar_rectangulo

    LDR X8,=TIRANTE
        MOV X1,298
        MOV X2,189
        MOV X3,301
        MOV X4,190
    BL pintar_rectangulo

    LDR X8,=TIRANTE
        MOV X1,300
        MOV X2,191
        MOV X3,301
        MOV X4,194
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Aro_sombraoscura
Aro_sombraoscura:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SOMBRAOSCURA_ARO
        MOV X1,298
        MOV X2,195
        MOV X3,303
        MOV X4,200
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Aro_sombraclara
Aro_sombraclara:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SOMBRACLARA_ARO
        MOV X1,300
        MOV X2,195
        MOV X3,303
        MOV X4,198
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Aro_luz
Aro_luz:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=LUZ_ARO
        MOV X1,302
        MOV X2,195
        MOV X3,303
        MOV X4,196
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
.globl Cara_FULL
Cara_FULL:
    STR X30,[SP,-8]!

    BL Cara_contorno
    BL Cara_sombramedia
    BL Cara_sombraclara
    BL Cara_luz
    BL Cara_sombraoscura

    LDR X30,[SP],8
RET


.globl Aro_FULL
Aro_FULL:
    STR X30,[SP,-8]!

    BL Aro_tirante
    BL Aro_sombraoscura
    BL Aro_sombraclara
    BL Aro_luz

    LDR X30,[SP],8
RET
