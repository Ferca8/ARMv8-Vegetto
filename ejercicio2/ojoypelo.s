.include "colores.s"
.section .text
/*
                                ╔══════════════════════════════════════════════════════════════════════╗
                                ║                                 ÍNDICE                               ║
                                ╚══════════════════════════════════════════════════════════════════════╝
                                1. Ojo
                                    ├── 1.1) Ojo_contorno ······································ l: 30
                                    ├── 1.2) Ojo_sombra ········································ l: 63
                                    ├── 1.3) Ojo_luz ··········································· l: 101
                                    └── 1.4) Iris ·············································· l: 126
                                                 
                                2. Pelo
                                    ├── 2.1) Pelo_contorno ····································· l: 157
                                    ├── 2.2) Pelo_sombra ······································· l: 541
                                    └── 2.3) Pelo_luz ·········································· l: 981

                                3. Ceja ························································ l: 1369

                                4. Modularizaciones
                                    ├── 4.1) Ojo_FULL ·········································· l: 1422
                                    └── 4.2) Pelo_FULL ········································· l: 1435
*/

/*
╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
║                                                           OJO                                                          ║
╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
*/
.globl Ojo_contorno
Ojo_contorno:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=CONTORNO_OJO
        MOV X1,320
        MOV X2,182
        MOV X3,323
        MOV X4,190
    BL pintar_rectangulo

    LDR X8,=CONTORNO_OJO
        MOV X1,324
        MOV X2,187
        MOV X3,325
        MOV X4,190
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Ojo_sombra
Ojo_sombra:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!
     
    LDR X8,=SOMBRA_OJO
        MOV X1,326
        MOV X2,189
        MOV X3,327
        MOV X4,190
    BL pintar_rectangulo

    LDR X8,=SOMBRA_OJO
        MOV X1,332
        MOV X2,179
        MOV X3,337
        MOV X4,183
    BL pintar_rectangulo

    LDR X8,=SOMBRA_OJO
        MOV X1,334
        MOV X2,179
        MOV X3,337
        MOV X4,184
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Ojo_luz
Ojo_luz:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=LUZ_OJO
        MOV X1,334
        MOV X2,185
        MOV X3,337
        MOV X4,190
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Iris
Iris:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    MOV X8,X13
    //LDR X8,=IRIS
        MOV X1,338
        MOV X2,185
        MOV X3,343
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
║                                                           PELO                                                         ║
╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
*/
.globl Pelo_contorno
Pelo_contorno:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    MOV X8,X10

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,284
        MOV X2,191
        MOV X3,295
        MOV X4,196
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,280
        MOV X2,188
        MOV X3,289
        MOV X4,194
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,276
        MOV X2,188
        MOV X3,279
        MOV X4,192
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,281
        MOV X2,174
        MOV X3,289
        MOV X4,187
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,276
        MOV X2,115
        MOV X3,289
        MOV X4,185
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,271
        MOV X2,164
        MOV X3,289
        MOV X4,183
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,268
        MOV X2,164
        MOV X3,289
        MOV X4,181
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,266
        MOV X2,170
        MOV X3,289
        MOV X4,175
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,264
        MOV X2,162
        MOV X3,269
        MOV X4,169
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,290
        MOV X2,81
        MOV X3,295
        MOV X4,172
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,270
        MOV X2,112
        MOV X3,275
        MOV X4,157
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,266
        MOV X2,108
        MOV X3,270
        MOV X4,151
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,262
        MOV X2,106
        MOV X3,265
        MOV X4,140
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,260
        MOV X2,106
        MOV X3,261
        MOV X4,130
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,279
        MOV X2,93
        MOV X3,306
        MOV X4,166
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,281
        MOV X2,85
        MOV X3,302
        MOV X4,92
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,283
        MOV X2,81
        MOV X3,296
        MOV X4,84
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,287
        MOV X2,77
        MOV X3,292
        MOV X4,80
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,303
        MOV X2,89
        MOV X3,308
        MOV X4,152
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,309
        MOV X2,91
        MOV X3,314
        MOV X4,148
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,315
        MOV X2,78
        MOV X3,319
        MOV X4,156
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,314
        MOV X2,149
        MOV X3,314
        MOV X4,156
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,320
        MOV X2,82
        MOV X3,324
        MOV X4,181
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,325
        MOV X2,86
        MOV X3,346
        MOV X4,149
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,324
        MOV X2,150
        MOV X3,331
        MOV X4,186
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,328
        MOV X2,184
        MOV X3,333
        MOV X4,190
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,326
        MOV X2,187
        MOV X3,327
        MOV X4,188
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,318
        MOV X2,157
        MOV X3,319
        MOV X4,166
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,332
        MOV X2,150
        MOV X3,339
        MOV X4,154
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,332
        MOV X2,155
        MOV X3,335
        MOV X4,160
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,329
        MOV X2,77
        MOV X3,338
        MOV X4,85
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,327
        MOV X2,75
        MOV X3,332
        MOV X4,82
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,339
        MOV X2,81
        MOV X3,342
        MOV X4,85
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,347
        MOV X2,89
        MOV X3,350
        MOV X4,149
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,350
        MOV X2,94
        MOV X3,354
        MOV X4,152
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,353
        MOV X2,99
        MOV X3,358
        MOV X4,155
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,356
        MOV X2,107
        MOV X3,361
        MOV X4,160
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,359
        MOV X2,107
        MOV X3,371
        MOV X4,167
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,362
        MOV X2,103
        MOV X3,371
        MOV X4,175
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,366
        MOV X2,101
        MOV X3,371
        MOV X4,197
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,372
        MOV X2,123
        MOV X3,383
        MOV X4,138
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,372
        MOV X2,111
        MOV X3,373
        MOV X4,122
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,378
        MOV X2,121
        MOV X3,385
        MOV X4,130
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,372
        MOV X2,139
        MOV X3,375
        MOV X4,193
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,363
        MOV X2,145
        MOV X3,377
        MOV X4,184
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,363
        MOV X2,185
        MOV X3,370
        MOV X4,203
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,362
        MOV X2,197
        MOV X3,367
        MOV X4,206
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,376
        MOV X2,139
        MOV X3,379
        MOV X4,142
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,274
        MOV X2,158
        MOV X3,279
        MOV X4,163
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,364
        MOV X2,194
        MOV X3,372
        MOV X4,197
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,349
        MOV X2,93
        MOV X3,354
        MOV X4,98
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,341
        MOV X2,85
        MOV X3,346
        MOV X4,90
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Pelo_sombra
Pelo_sombra:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    MOV X8,X11
    //LDR X8,=SOMBRA_CABELLO
        MOV X1,280
        MOV X2,147
        MOV X3,306
        MOV X4,166
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,302
        MOV X2,166
        MOV X3,306
        MOV X4,172
    BL pintar_rectangulo
    
    //LDR X8,=SOMBRA_CABELLO
        MOV X1,307
        MOV X2,167
        MOV X3,309
        MOV X4,172
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,272
        MOV X2,166
        MOV X3,289
        MOV X4,175
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,285
        MOV X2,176
        MOV X3,289
        MOV X4,190
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,282
        MOV X2,176
        MOV X3,284
        MOV X4,181
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,277
        MOV X2,176
        MOV X3,281
        MOV X4,178
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,290
        MOV X2,166
        MOV X3,295
        MOV X4,172
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,276
        MOV X2,142
        MOV X3,292
        MOV X4,157
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,272
        MOV X2,130
        MOV X3,290
        MOV X4,151
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,268
        MOV X2,123
        MOV X3,278
        MOV X4,140
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,266
        MOV X2,114
        MOV X3,268
        MOV X4,130
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,270
        MOV X2,166
        MOV X3,271
        MOV X4,169
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,274
        MOV X2,176
        MOV X3,276
        MOV X4,176
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,290
        MOV X2,173
        MOV X3,290
        MOV X4,173
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,269
        MOV X2,118
        MOV X3,269
        MOV X4,122
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,303
        MOV X2,127
        MOV X3,313
        MOV X4,148
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,297
        MOV X2,119
        MOV X3,302
        MOV X4,134
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,293
        MOV X2,109
        MOV X3,297
        MOV X4,128
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,314
        MOV X2,101
        MOV X3,318
        MOV X4,136
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,308
        MOV X2,97
        MOV X3,313
        MOV X4,116
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,304
        MOV X2,99
        MOV X3,307
        MOV X4,112
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,300
        MOV X2,99
        MOV X3,303
        MOV X4,102
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,285
        MOV X2,93
        MOV X3,288
        MOV X4,102
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,286
        MOV X2,87
        MOV X3,288
        MOV X4,88
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,285
        MOV X2,103
        MOV X3,286
        MOV X4,114
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,302
        MOV X2,103
        MOV X3,303
        MOV X4,108
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,312
        MOV X2,117
        MOV X3,313
        MOV X4,120
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,307
        MOV X2,149
        MOV X3,308
        MOV X4,152
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,315
        MOV X2,137
        MOV X3,317
        MOV X4,140
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,286
        MOV X2,89
        MOV X3,290
        MOV X4,96
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,314
        MOV X2,136
        MOV X3,315
        MOV X4,142
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,319
        MOV X2,127
        MOV X3,325
        MOV X4,133
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,319
        MOV X2,134
        MOV X3,320
        MOV X4,136
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,326
        MOV X2,107
        MOV X3,338
        MOV X4,130
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,326
        MOV X2,96
        MOV X3,336
        MOV X4,106
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,324
        MOV X2,92
        MOV X3,331
        MOV X4,98
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,320
        MOV X2,88
        MOV X3,323
        MOV X4,94
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,339
        MOV X2,125
        MOV X3,354
        MOV X4,131
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,355
        MOV X2,125
        MOV X3,358
        MOV X4,127
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,349
        MOV X2,131
        MOV X3,350
        MOV X4,135
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,351
        MOV X2,131
        MOV X3,354
        MOV X4,131
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,328
        MOV X2,137
        MOV X3,346
        MOV X4,140
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,328
        MOV X2,140
        MOV X3,336
        MOV X4,146
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,324
        MOV X2,141
        MOV X3,331
        MOV X4,153
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,322
        MOV X2,143
        MOV X3,327
        MOV X4,159
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,320
        MOV X2,149
        MOV X3,321
        MOV X4,156
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,322
        MOV X2,160
        MOV X3,323
        MOV X4,166
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,357
        MOV X2,134
        MOV X3,362
        MOV X4,144
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,361
        MOV X2,145
        MOV X3,366
        MOV X4,149
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,361
        MOV X2,150
        MOV X3,363
        MOV X4,154
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,363
        MOV X2,140
        MOV X3,364
        MOV X4,144
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,359
        MOV X2,145
        MOV X3,360
        MOV X4,146
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,353
        MOV X2,138
        MOV X3,356
        MOV X4,139
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,355
        MOV X2,140
        MOV X3,356
        MOV X4,141
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,337
        MOV X2,92
        MOV X3,340
        MOV X4,95
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,333
        MOV X2,83
        MOV X3,336
        MOV X4,86
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,333
        MOV X2,87
        MOV X3,335
        MOV X4,88
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,361
        MOV X2,130
        MOV X3,362
        MOV X4,146
    BL pintar_rectangulo

    //LDR X8,=SOMBRA_CABELLO
        MOV X1,302
        MOV X2,140
        MOV X3,301
        MOV X4,135
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Pelo_luz
Pelo_luz:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    MOV X8,X12

    //LDR X8,=LUZ_CABELLO
        MOV X1,315
        MOV X2,101
        MOV X3,318
        MOV X4,115
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,310
        MOV X2,97
        MOV X3,314
        MOV X4,109
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,297
        MOV X2,95
        MOV X3,308
        MOV X4,98
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,306
        MOV X2,97
        MOV X3,309
        MOV X4,103
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,297
        MOV X2,91
        MOV X3,302
        MOV X4,94
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,291
        MOV X2,87
        MOV X3,296
        MOV X4,92
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,289
        MOV X2,83
        MOV X3,290
        MOV X4,88
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,289
        MOV X2,83
        MOV X3,290
        MOV X4,88
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,345
        MOV X2,99
        MOV X3,352
        MOV X4,118
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,353
        MOV X2,111
        MOV X3,357
        MOV X4,118
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,358
        MOV X2,111
        MOV X3,361
        MOV X4,112
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,343
        MOV X2,95
        MOV X3,348
        MOV X4,106
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,341
        MOV X2,91
        MOV X3,344
        MOV X4,95
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,337
        MOV X2,87
        MOV X3,340
        MOV X4,91
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,336
        MOV X2,87
        MOV X3,336
        MOV X4,88
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,353
        MOV X2,111
        MOV X3,357
        MOV X4,118
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,359
        MOV X2,119
        MOV X3,367
        MOV X4,124
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,364
        MOV X2,111
        MOV X3,367
        MOV X4,118
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,364
        MOV X2,107
        MOV X3,365
        MOV X4,110
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,372  
        MOV X2,133
        MOV X3,377
        MOV X4,138
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,375  
        MOV X2,128
        MOV X3,377
        MOV X4,132
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,378  
        MOV X2,128
        MOV X3,379
        MOV X4,130
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,363  
        MOV X2,130
        MOV X3,365
        MOV X4,139
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,365  
        MOV X2,139
        MOV X3,368
        MOV X4,144
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,367
        MOV X2,145
        MOV X3,370
        MOV X4,149
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,364 
        MOV X2,150
        MOV X3,370
        MOV X4,161
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,366
        MOV X2,162
        MOV X3,370
        MOV X4,169
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,368
        MOV X2,170
        MOV X3,370
        MOV X4,184
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,336
        MOV X2,107
        MOV X3,338
        MOV X4,124
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,334
        MOV X2,96
        MOV X3,336
        MOV X4,115
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,332
        MOV X2,96
        MOV X3,334
        MOV X4,103
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,328
        MOV X2,94
        MOV X3,331
        MOV X4,98
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,326
        MOV X2,92
        MOV X3,328
        MOV X4,96
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,322
        MOV X2,90
        MOV X3,323
        MOV X4,92
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,324
        MOV X2,92
        MOV X3,325
        MOV X4,92
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,309
        MOV X2,127
        MOV X3,313
        MOV X4,132
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,296
        MOV X2,115
        MOV X3,301
        MOV X4,119
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,300
        MOV X2,119
        MOV X3,305
        MOV X4,123
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,301
        MOV X2,123
        MOV X3,307
        MOV X4,126
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,293
        MOV X2,109
        MOV X3,297
        MOV X4,113
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,293
        MOV X2,103
        MOV X3,295
        MOV X4,108
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,294
        MOV X2,100
        MOV X3,295
        MOV X4,102
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,306
        MOV X2,127
        MOV X3,308
        MOV X4,128
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,296
        MOV X2,114
        MOV X3,297
        MOV X4,114
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,293
        MOV X2,141
        MOV X3,296
        MOV X4,146
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,289
        MOV X2,135
        MOV X3,294
        MOV X4,141
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,285
        MOV X2,129
        MOV X3,290
        MOV X4,134
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,281
        MOV X2,127
        MOV X3,286
        MOV X4,132
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,279
        MOV X2,123
        MOV X3,282
        MOV X4,130
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,275
        MOV X2,123
        MOV X3,278
        MOV X4,127
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,273
        MOV X2,121
        MOV X3,277
        MOV X4,125
    BL pintar_rectangulo

    //LDR X8,=LUZ_CABELLO
        MOV X1,270
        MOV X2,118
        MOV X3,272
        MOV X4,122
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
║                                                           CEJA                                                         ║
╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
*/
.globl Ceja
Ceja:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    MOV X8,X10
    
    //LDR X8,=CONTORNO_CABELLO
        MOV X1,314
        MOV X2,167
        MOV X3,319
        MOV X4,172
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,332
        MOV X2,173
        MOV X3,337
        MOV X4,178
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,338
        MOV X2,179
        MOV X3,343
        MOV X4,184
    BL pintar_rectangulo

    //LDR X8,=CONTORNO_CABELLO
        MOV X1,344
        MOV X2,185
        MOV X3,349
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
║                                                     MODULARIZACIONES                                                   ║
╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
*/
.globl Ojo_FULL
Ojo_FULL:
    STR X30,[SP,-8]!

    BL Ojo_contorno
	BL Ojo_sombra
	BL Ojo_luz
	BL Iris

    LDR X30,[SP],8
RET


.globl Pelo_FULL
Pelo_FULL:
    STR X30,[SP,-8]!

    BL Pelo_contorno
	BL Pelo_sombra
	BL Pelo_luz

    LDR X30,[SP],8
RET
    