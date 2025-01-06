.include "colores.s"
.section .text
/*
                                ╔══════════════════════════════════════════════════════════════════════╗
                                ║                                 ÍNDICE                               ║
                                ╚══════════════════════════════════════════════════════════════════════╝                                         
                                1. Torso
                                    ├── 1.1) Torso_sombraoscura ································ l: 25
                                    ├── 1.2) Torso_contorno ···································· l: 141
                                    ├── 1.3) Torso_sombramedia ································· l: 208
                                    ├── 1.4) Torso_sombraclara ································· l: 359
                                    ├── 1.5) Torso_luz ········································· l: 489
                                    ├── 1.6) Torso_remeraoscura ································ l: 535
                                    └── 1.7) Torso_remeraclara ································· l: 567

                                2. Modularizaciones
                                    └── 2.1) Torso_FULL ········································ l: 604
*/

/*
╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
║                                                           TORSO                                                        ║
╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
*/
.globl Torso_sombraoscura
Torso_sombraoscura:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SOMBRAOSCURA_TRAJE
        MOV X1,307
        MOV X2,239
        MOV X3,360
        MOV X4,262
    BL pintar_rectangulo

    LDR X8,=SOMBRAOSCURA_TRAJE
        MOV X1,301
        MOV X2,215
        MOV X3,319
        MOV X4,256
    BL pintar_rectangulo

    LDR X8,=SOMBRAOSCURA_TRAJE
        MOV X1,295
        MOV X2,209
        MOV X3,313
        MOV X4,250
    BL pintar_rectangulo

    LDR X8,=SOMBRAOSCURA_TRAJE
        MOV X1,293
        MOV X2,203
        MOV X3,301
        MOV X4,244
    BL pintar_rectangulo

    LDR X8,=SOMBRAOSCURA_TRAJE
        MOV X1,290
        MOV X2,203
        MOV X3,301
        MOV X4,236
    BL pintar_rectangulo

    LDR X8,=SOMBRAOSCURA_TRAJE
        MOV X1,283
        MOV X2,209
        MOV X3,293
        MOV X4,226
    BL pintar_rectangulo

    LDR X8,=SOMBRAOSCURA_TRAJE
        MOV X1,277
        MOV X2,209
        MOV X3,288
        MOV X4,220
    BL pintar_rectangulo

    LDR X8,=SOMBRAOSCURA_TRAJE
        MOV X1,320
        MOV X2,221
        MOV X3,326
        MOV X4,256
    BL pintar_rectangulo

    LDR X8,=SOMBRAOSCURA_TRAJE
        MOV X1,327
        MOV X2,227
        MOV X3,332
        MOV X4,256
    BL pintar_rectangulo

    LDR X8,=SOMBRAOSCURA_TRAJE
        MOV X1,333
        MOV X2,233
        MOV X3,337
        MOV X4,259
    BL pintar_rectangulo

    LDR X8,=SOMBRAOSCURA_TRAJE
        MOV X1,344
        MOV X2,233
        MOV X3,360
        MOV X4,262
    BL pintar_rectangulo

    LDR X8,=SOMBRAOSCURA_TRAJE
        MOV X1,350
        MOV X2,215
        MOV X3,360
        MOV X4,262
    BL pintar_rectangulo

    LDR X8,=SOMBRAOSCURA_TRAJE
        MOV X1,344
        MOV X2,215
        MOV X3,360
        MOV X4,220
    BL pintar_rectangulo

    LDR X8,=SOMBRAOSCURA_TRAJE
        MOV X1,289
        MOV X2,216
        MOV X3,289
        MOV X4,236
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Torso_contorno
Torso_contorno:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=CONTORNO_TRAJE
        MOV X1,277
        MOV X2,209
        MOV X3,289
        MOV X4,214
    BL pintar_rectangulo

    LDR X8,=CONTORNO_TRAJE
        MOV X1,290
        MOV X2,203
        MOV X3,301
        MOV X4,208
    BL pintar_rectangulo

    LDR X8,=CONTORNO_TRAJE
        MOV X1,301
        MOV X2,251
        MOV X3,306
        MOV X4,256
    BL pintar_rectangulo

    LDR X8,=CONTORNO_TRAJE
        MOV X1,307
        MOV X2,257
        MOV X3,312
        MOV X4,262
    BL pintar_rectangulo

    LDR X8,=CONTORNO_TRAJE
        MOV X1,355
        MOV X2,227
        MOV X3,360
        MOV X4,262
    BL pintar_rectangulo

    LDR X8,=CONTORNO_TRAJE
        MOV X1,350
        MOV X2,215
        MOV X3,355
        MOV X4,226
    BL pintar_rectangulo

    LDR X8,=CONTORNO_TRAJE
        MOV X1,344
        MOV X2,215
        MOV X3,360
        MOV X4,220
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Torso_sombramedia
Torso_sombramedia:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,319
        MOV X2,257
        MOV X3,336
        MOV X4,262
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,313
        MOV X2,253
        MOV X3,330
        MOV X4,256
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,313
        MOV X2,249
        MOV X3,324
        MOV X4,256
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,307
        MOV X2,245
        MOV X3,318
        MOV X4,250
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,299
        MOV X2,241
        MOV X3,312
        MOV X4,244
    BL pintar_rectangulo
    
    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,299
        MOV X2,235
        MOV X3,307
        MOV X4,244
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,296
        MOV X2,215
        MOV X3,302
        MOV X4,238
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,290
        MOV X2,221
        MOV X3,302
        MOV X4,230
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,303
        MOV X2,215
        MOV X3,313
        MOV X4,224
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,314
        MOV X2,221
        MOV X3,319
        MOV X4,226
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,317
        MOV X2,237
        MOV X3,327
        MOV X4,241
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,326
        MOV X2,242
        MOV X3,331
        MOV X4,247
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,343
        MOV X2,257
        MOV X3,348
        MOV X4,262
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,334
        MOV X2,249
        MOV X3,354
        MOV X4,250
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,337
        MOV X2,249
        MOV X3,354
        MOV X4,256
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,349
        MOV X2,244
        MOV X3,354
        MOV X4,256
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,344
        MOV X2,233
        MOV X3,349
        MOV X4,238
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,350
        MOV X2,227
        MOV X3,354
        MOV X4,232
    BL pintar_rectangulo

    LDR X8,=SOMBRAMEDIA_TRAJE
        MOV X1,355
        MOV X2,221
        MOV X3,360
        MOV X4,226
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Torso_sombraclara
Torso_sombraclara:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SOMBRACLARA_TRAJE
        MOV X1,303
        MOV X2,225
        MOV X3,313
        MOV X4,234
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_TRAJE
        MOV X1,308
        MOV X2,227
        MOV X3,316
        MOV X4,240
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_TRAJE
        MOV X1,314
        MOV X2,227
        MOV X3,325
        MOV X4,236
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_TRAJE
        MOV X1,313
        MOV X2,237
        MOV X3,316
        MOV X4,244
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_TRAJE
        MOV X1,313
        MOV X2,242
        MOV X3,325
        MOV X4,244
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_TRAJE
        MOV X1,319
        MOV X2,242
        MOV X3,325
        MOV X4,248
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_TRAJE
        MOV X1,325
        MOV X2,248
        MOV X3,330
        MOV X4,252
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_TRAJE
        MOV X1,331
        MOV X2,248
        MOV X3,333
        MOV X4,250
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_TRAJE
        MOV X1,332
        MOV X2,239
        MOV X3,333
        MOV X4,250
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_TRAJE
        MOV X1,322
        MOV X2,233
        MOV X3,331
        MOV X4,236
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_TRAJE
        MOV X1,328
        MOV X2,233
        MOV X3,331
        MOV X4,241
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_TRAJE
        MOV X1,332
        MOV X2,239
        MOV X3,337
        MOV X4,248
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_TRAJE
        MOV X1,335
        MOV X2,245
        MOV X3,348
        MOV X4,248
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_TRAJE
        MOV X1,344
        MOV X2,239
        MOV X3,348
        MOV X4,248
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_TRAJE
        MOV X1,344
        MOV X2,239
        MOV X3,354
        MOV X4,243
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_TRAJE
        MOV X1,350
        MOV X2,233
        MOV X3,354
        MOV X4,243
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Torso_luz
Torso_luz:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=LUZ_TRAJE
        MOV X1,320
        MOV X2,221
        MOV X3,326
        MOV X4,226
    BL pintar_rectangulo

    LDR X8,=LUZ_TRAJE
        MOV X1,326
        MOV X2,227
        MOV X3,332
        MOV X4,232
    BL pintar_rectangulo

    LDR X8,=LUZ_TRAJE
        MOV X1,332
        MOV X2,233
        MOV X3,338
        MOV X4,238
    BL pintar_rectangulo

    LDR X8,=LUZ_TRAJE
        MOV X1,338
        MOV X2,239
        MOV X3,343
        MOV X4,244
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Torso_remeraoscura
Torso_remeraoscura:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SOMBRAOSCURA_REMERA
        MOV X1,326
        MOV X2,221
        MOV X3,343
        MOV X4,226
    BL pintar_rectangulo

    LDR X8,=SOMBRAOSCURA_REMERA
        MOV X1,338
        MOV X2,221
        MOV X3,343
        MOV X4,238
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Torso_remeraclara
Torso_remeraclara:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SOMBRACLARA_REMERA
        MOV X1,332
        MOV X2,227
        MOV X3,337
        MOV X4,232
    BL pintar_rectangulo

    LDR X8,=SOMBRACLARA_REMERA
        MOV X1,344
        MOV X2,221
        MOV X3,349
        MOV X4,232
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
.globl Torso_FULL
Torso_FULL:
    STR X30,[SP,-8]!

    BL Torso_sombraoscura
	BL Torso_contorno
	BL Torso_sombramedia
	BL Torso_sombraclara
	BL Torso_luz
	BL Torso_remeraoscura
	BL Torso_remeraclara

    LDR X30,[SP],8
RET
    