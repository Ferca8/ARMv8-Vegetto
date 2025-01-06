.include "colores.s"
.section .text
/*
                                ╔══════════════════════════════════════════════════════════════════════╗
                                ║                                 ÍNDICE                               ║
                                ╚══════════════════════════════════════════════════════════════════════╝
                                1. Aura 1
                                    ├── 1.1) aura1_cielo ······································· l: 45
                                    ├── 1.2) aura1_sueloluz ···································· l: 385
                                    ├── 1.3) aura1_suelosombraclara ···························· l: 564
                                    ├── 1.4) aura1_montanadersombramedia ······················· l: 631
                                    ├── 1.5) aura1_montanadersombraoscura ······················ l: 677
                                    ├── 1.6) aura1_luz ········································· l: 709
                                    └── 1.7) aura1_destello ···································· l: 1635
                                    
                                2. Aura 2
                                    ├── 2.1) aura2_luz ········································· l: 1984
                                    ├── 2.2) aura2_destello ···································· l: 3213
                                    ├── 2.3) aura2_cielo ······································· l: 3520
                                    ├── 2.4) aura2_sueloluz ···································· l: 4147
                                    ├── 2.5) aura2_suelosombraclara ···························· l: 4186
                                    ├── 2.6) aura2_montanadersombramedia ······················· l: 4253
                                    └── 2.7) aura2_montanadersombraoscura ······················ l: 4306

                                3. Aura 3
                                    ├── 3.1) aura3_cielo ······································· l: 4343
                                    ├── 3.2) aura3_sueloluz ···································· l: 4921
                                    ├── 3.3) aura3_suelosombraclara ···························· l: 5254
                                    ├── 3.4) aura3_montanadersombramedia ······················· l: 5321
                                    ├── 3.5) aura3_montanadersombraoscura ······················ l: 5374
                                    ├── 3.6) aura3_luz ········································· l: 5399
                                    └── 3.7) aura3_destello ···································· l: 6537

                                4. Modularizaciones
                                    ├── 4.1) Aura1 ············································· l: 6807
                                    ├── 4.2) Aura2 ············································· l: 6825
                                    └── 4.3) Aura3 ············································· l: 6843
*/

/*
╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
║                                                          AURA 1                                                        ║
╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
*/
.globl aura1_cielo
aura1_cielo:
    STR X8,[SP,-8]!
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=CIELO
        MOV x1,158
        MOV x2,6
        MOV x3,285
        MOV x4,60
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,158
        MOV x2,61
        MOV x3,253
        MOV x4,94
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,265
        MOV x2,61
        MOV x3,274
        MOV x4,93
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,254
        MOV x2,61
        MOV x3,264
        MOV x4,61
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,158
        MOV x2,95
        MOV x3,243
        MOV x4,99
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,158
        MOV x2,100
        MOV x3,219
        MOV x4,105
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,158
        MOV x2,106
        MOV x3,212
        MOV x4,147
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,192
        MOV x2,148
        MOV x3,212
        MOV x4,178
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,202
        MOV x2,169
        MOV x3,219
        MOV x4,190
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,158
        MOV x2,148
        MOV x3,181
        MOV x4,187
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,158
        MOV x2,188
        MOV x3,191
        MOV x4,255
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,171
        MOV x2,243
        MOV x3,201
        MOV x4,265
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,191
        MOV x2,266
        MOV x3,211
        MOV x4,275
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,202
        MOV x2,276
        MOV x3,211
        MOV x4,276
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,158
        MOV x2,256
        MOV x3,160
        MOV x4,265
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,158
        MOV x2,266
        MOV x3,170
        MOV x4,275
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,158
        MOV x2,276
        MOV x3,180
        MOV x4,296
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,158
        MOV x2,297
        MOV x3,190
        MOV x4,308
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,158
        MOV x2,309
        MOV x3,192
        MOV x4,326
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,193
        MOV x2,319
        MOV x3,202
        MOV x4,320
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,193
        MOV x2,321
        MOV x3,194
        MOV x4,320
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,286
        MOV x2,6
        MOV x3,305
        MOV x4,15
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,296
        MOV x2,6
        MOV x3,337
        MOV x4,19
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,306
        MOV x2,20
        MOV x3,337
        MOV x4,40
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,306
        MOV x2,41
        MOV x3,327
        MOV x4,49
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,307
        MOV x2,50
        MOV x3,327
        MOV x4,60
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,338
        MOV x2,6
        MOV x3,474
        MOV x4,14
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,349
        MOV x2,15
        MOV x3,474
        MOV x4,18
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,360
        MOV x2,19
        MOV x3,474
        MOV x4,51
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,360
        MOV x2,52
        MOV x3,380
        MOV x4,83
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,370
        MOV x2,84
        MOV x3,380
        MOV x4,93
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,391
        MOV x2,52
        MOV x3,474
        MOV x4,99
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,422
        MOV x2,100
        MOV x3,474
        MOV x4,168
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,422
        MOV x2,169
        MOV x3,432
        MOV x4,200
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,433
        MOV x2,169
        MOV x3,442
        MOV x4,180
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,453
        MOV x2,169
        MOV x3,474
        MOV x4,255
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,443
        MOV x2,233
        MOV x3,464
        MOV x4,265
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,433
        MOV x2,254
        MOV x3,452
        MOV x4,276
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,464
        MOV x2,276
        MOV x3,474
        MOV x4,290
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,453
        MOV x2,287
        MOV x3,467
        MOV x4,297
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,453
        MOV x2,298
        MOV x3,461
        MOV x4,303
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,453
        MOV x2,304
        MOV x3,462
        MOV x4,308
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,443
        MOV x2,308
        MOV x3,452
        MOV x4,308
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,443
        MOV x2,309
        MOV x3,445
        MOV x4,318
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,433
        MOV x2,319
        MOV x3,445
        MOV x4,320
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV x1,193
        MOV x2,319
        MOV x3,194
        MOV x4,326
    BL pintar_rectangulo
    
    LDR X30,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
    LDR X8,[SP],8
RET


.globl aura1_sueloluz
aura1_sueloluz:
    STR X8,[SP,-8]!
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X30,[SP,-8]!

    LDR x8,=SUELO_LUZ
        MOV x1,158
        MOV x2,327
        MOV x3,194
        MOV x4,329
    BL pintar_rectangulo

    LDR x8,=SUELO_LUZ
        MOV x1,195
        MOV x2,321
        MOV x3,202
        MOV x4,339
    BL pintar_rectangulo

    LDR x8,=SUELO_LUZ
        MOV x1,181
        MOV x2,329
        MOV x3,212
        MOV x4,339
    BL pintar_rectangulo

    LDR x8,=SUELO_LUZ
        MOV x1,158
        MOV x2,330
        MOV x3,170
        MOV x4,405
    BL pintar_rectangulo

    LDR x8,=SUELO_LUZ
        MOV x1,171
        MOV x2,340
        MOV x3,180
        MOV x4,405
    BL pintar_rectangulo

    LDR x8,=SUELO_LUZ
        MOV x1,181
        MOV x2,351
        MOV x3,191
        MOV x4,405
    BL pintar_rectangulo

    LDR x8,=SUELO_LUZ
        MOV x1,192
        MOV x2,362
        MOV x3,212
        MOV x4,393
    BL pintar_rectangulo

    LDR x8,=SUELO_LUZ
        MOV x1,213
        MOV x2,373
        MOV x3,221
        MOV x4,393
    BL pintar_rectangulo

    LDR x8,=SUELO_LUZ
        MOV x1,222
        MOV x2,373
        MOV x3,233
        MOV x4,382
    BL pintar_rectangulo

    LDR x8,=SUELO_LUZ
        MOV x1,192
        MOV x2,394
        MOV x3,201
        MOV x4,405
    BL pintar_rectangulo

    LDR x8,=SUELO_LUZ
        MOV x1,158
        MOV x2,405
        MOV x3,254
        MOV x4,446
    BL pintar_rectangulo

    LDR x8,=SUELO_LUZ
        MOV x1,255
        MOV x2,405
        MOV x3,264
        MOV x4,426
    BL pintar_rectangulo

    LDR x8,=SUELO_LUZ
        MOV x1,255
        MOV x2,437
        MOV x3,369
        MOV x4,446
    BL pintar_rectangulo

    LDR x8,=SUELO_LUZ
        MOV x1,286
        MOV x2,426
        MOV x3,358
        MOV x4,436
    BL pintar_rectangulo

    LDR x8,=SUELO_LUZ
        MOV x1,380
        MOV x2,416
        MOV x3,474
        MOV x4,446
    BL pintar_rectangulo

    LDR x8,=SUELO_LUZ
        MOV x1,370
        MOV x2,404
        MOV x3,474
        MOV x4,415
    BL pintar_rectangulo

    LDR x8,=SUELO_LUZ
        MOV x1,422
        MOV x2,372
        MOV x3,442
        MOV x4,393
    BL pintar_rectangulo

    LDR x8,=SUELO_LUZ
        MOV x1,433
        MOV x2,361
        MOV x3,442
        MOV x4,371
    BL pintar_rectangulo

    LDR x8,=SUELO_LUZ
        MOV x1,443
        MOV x2,351
        MOV x3,474
        MOV x4,403
    BL pintar_rectangulo

    LDR x8,=SUELO_LUZ
        MOV x1,453
        MOV x2,327
        MOV x3,474
        MOV x4,350
    BL pintar_rectangulo

    LDR x8,=SUELO_LUZ
        MOV x1,423
        MOV x2,331
        MOV x3,452
        MOV x4,340
    BL pintar_rectangulo

    LDR x8,=SUELO_LUZ
        MOV x1,447
        MOV x2,327
        MOV x3,452
        MOV x4,330
    BL pintar_rectangulo

    LDR x8,=SUELO_LUZ
        MOV x1,433
        MOV x2,321
        MOV x3,446
        MOV x4,330
    BL pintar_rectangulo
    
    LDR X30,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
    LDR X8,[SP],8
RET


.globl aura1_suelosombraclara
aura1_suelosombraclara:
    STR X8,[SP,-8]!
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SUELO_SOMBRACLARA
        MOV X1,317
        MOV X2,446
        MOV X3,362
        MOV X4,446
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV X1,328
        MOV X2,445
        MOV X3,362
        MOV X4,445
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV X1,343
        MOV X2,443
        MOV X3,353
        MOV X4,444
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV X1,328
        MOV X2,441
        MOV X3,342
        MOV X4,444
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV X1,462
        MOV X2,405
        MOV X3,474
        MOV X4,410
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV X1,468
        MOV X2,410
        MOV X3,474
        MOV X4,412
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV X1,472
        MOV X2,402
        MOV X3,474
        MOV X4,404
    BL pintar_rectangulo
    
    LDR X30,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
    LDR X8,[SP],8
RET


.globl aura1_montanadersombramedia
aura1_montanadersombramedia:
    STR X8,[SP,-8]!
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,446
        MOV X2,309
        MOV X3,467
        MOV X4,320
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,468
        MOV X2,291
        MOV X3,474
        MOV X4,326
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,462
        MOV X2,298
        MOV X3,467
        MOV X4,303
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,463
        MOV X2,304
        MOV X3,467
        MOV X4,308
    BL pintar_rectangulo
    
    LDR X30,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
    LDR X8,[SP],8
RET


.globl aura1_montanadersombraoscura
aura1_montanadersombraoscura:
    STR X8,[SP,-8]!
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=MONTANA_SOMBRAOSCURA
        MOV X1,447
        MOV X2,321
        MOV X3,467
        MOV X4,326
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAOSCURA
        MOV X1,466
        MOV X2,318
        MOV X3,467
        MOV X4,326
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
    LDR X8,[SP],8
RET


.globl aura1_luz
aura1_luz:
    STR X8,[SP,-8]!
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X30,[SP,-8]!

    // LDR,X8,=AURA_LUZ
        MOV X1,202
        MOV X2,394
        MOV X3,229
        MOV X4,404
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,222
        MOV X2,383
        MOV X3,248
        MOV X4,404
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,234
        MOV X2,367
        MOV X3,264
        MOV X4,404
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,192
        MOV X2,352
        MOV X3,229
        MOV X4,361
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,181
        MOV X2,340
        MOV X3,225
        MOV X4,351
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,246
        MOV X2,317
        MOV X3,270
        MOV X4,370
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,271
        MOV X2,323
        MOV X3,276
        MOV X4,352
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,277
        MOV X2,323
        MOV X3,282
        MOV X4,334
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,213
        MOV X2,311
        MOV X3,258
        MOV X4,372
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,202
        MOV X2,287
        MOV X3,212
        MOV X4,318
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,191
        MOV X2,297
        MOV X3,201
        MOV X4,308
    BL pintar_rectangulo
    
    // LDR,X8,=AURA_LUZ
        MOV X1,181
        MOV X2,276
        MOV X3,201
        MOV X4,296
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,171
        MOV X2,266
        MOV X3,180
        MOV X4,275
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,161
        MOV X2,256
        MOV X3,170
        MOV X4,265
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,213
        MOV X2,201
        MOV X3,252
        MOV X4,328
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,212
        MOV X2,266
        MOV X3,222
        MOV X4,286
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,202
        MOV X2,226
        MOV X3,228
        MOV X4,265
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,192
        MOV X2,179
        MOV X3,201
        MOV X4,190
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,278
        MOV X2,195
        MOV X3,283
        MOV X4,201
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,275
        MOV X2,193
        MOV X3,279
        MOV X4,201
    BL pintar_rectangulo
    
    // 1
    // LDR,X8,=AURA_LUZ
        MOV X1,273
        MOV X2,197
        MOV X3,289
        MOV X4,208
    BL pintar_rectangulo

    // 2
    // LDR,X8,=AURA_LUZ
        MOV X1,260
        MOV X2,197
        MOV X3,295
        MOV X4,202
    BL pintar_rectangulo
    
    // 3
    // LDR,X8,=AURA_LUZ
        MOV X1,267
        MOV X2,193
        MOV X3,276
        MOV X4,214
    BL pintar_rectangulo

    // 4
    // LDR,X8,=AURA_LUZ
        MOV X1,276
        MOV X2,186
        MOV X3,280
        MOV X4,187
    BL pintar_rectangulo

    // 5
    // LDR,X8,=AURA_LUZ
        MOV X1,267
        MOV X2,184
        MOV X3,276
        MOV X4,214
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,257
        MOV X2,182
        MOV X3,270
        MOV X4,220
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,192
        MOV X2,191
        MOV X3,264
        MOV X4,232
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,220
        MOV X2,162
        MOV X3,263
        MOV X4,190
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,257
        MOV X2,176
        MOV X3,267
        MOV X4,181
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,261
        MOV X2,170
        MOV X3,265
        MOV X4,180
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,270
        MOV X2,158
        MOV X3,273
        MOV X4,163
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,266
        MOV X2,152
        MOV X3,269
        MOV X4,161
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,262
        MOV X2,141
        MOV X3,265
        MOV X4,161
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,250
        MOV X2,131
        MOV X3,261
        MOV X4,166
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,213
        MOV X2,106
        MOV X3,259
        MOV X4,168
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,220
        MOV X2,100
        MOV X3,259
        MOV X4,114
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,254
        MOV X2,82
        MOV X3,265
        MOV X4,105
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,266
        MOV X2,104
        MOV X3,278
        MOV X4,107
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,271
        MOV X2,108
        MOV X3,278
        MOV X4,111
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,275
        MOV X2,83
        MOV X3,278
        MOV X4,114
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,279
        MOV X2,83
        MOV X3,280
        MOV X4,92
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,281
        MOV X2,83
        MOV X3,282
        MOV X4,84
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,253
        MOV X2,233
        MOV X3,258
        MOV X4,250
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,265
        MOV X2,401
        MOV X3,285
        MOV X4,436
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,286
        MOV X2,401
        MOV X3,369
        MOV X4,425
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,359
        MOV X2,426
        MOV X3,379
        MOV X4,436
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,343
        MOV X2,396
        MOV X3,369
        MOV X4,400
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,337
        MOV X2,390
        MOV X3,342
        MOV X4,399
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,331
        MOV X2,384
        MOV X3,336
        MOV X4,389
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,301
        MOV X2,383
        MOV X3,330
        MOV X4,400
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,307
        MOV X2,371
        MOV X3,330
        MOV X4,382
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,313
        MOV X2,353
        MOV X3,330
        MOV X4,370
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,319
        MOV X2,341
        MOV X3,330
        MOV X4,352
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,325
        MOV X2,323
        MOV X3,330
        MOV X4,340
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,283
        MOV X2,269
        MOV X3,288
        MOV X4,286
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,289
        MOV X2,257
        MOV X3,294
        MOV X4,292
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,295
        MOV X2,251
        MOV X3,300
        MOV X4,286
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,301
        MOV X2,257
        MOV X3,306
        MOV X4,274
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,286
        MOV X2,16
        MOV X3,286
        MOV X4,80
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,287
        MOV X2,16
        MOV X3,295
        MOV X4,76
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,296
        MOV X2,41
        MOV X3,305
        MOV X4,76
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,306
        MOV X2,50
        MOV X3,306
        MOV X4,71
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,309
        MOV X2,89
        MOV X3,314
        MOV X4,90
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,303
        MOV X2,85
        MOV X3,314
        MOV X4,88
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,297
        MOV X2,81
        MOV X3,314
        MOV X4,84
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,293
        MOV X2,77
        MOV X3,314
        MOV X4,80
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,306
        MOV X2,72
        MOV X3,326
        MOV X4,76
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,315
        MOV X2,77
        MOV X3,326
        MOV X4,77
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,320
        MOV X2,78
        MOV X3,326
        MOV X4,81
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,325
        MOV X2,82
        MOV X3,326
        MOV X4,82
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,325
        MOV X2,83
        MOV X3,328
        MOV X4,85
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,311
        MOV X2,397
        MOV X3,368
        MOV X4,407
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,370
        MOV X2,396
        MOV X3,378
        MOV X4,403
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,422
        MOV X2,394
        MOV X3,442
        MOV X4,403
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,422
        MOV X2,361
        MOV X3,432
        MOV X4,371
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,422
        MOV X2,351
        MOV X3,442
        MOV X4,360
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,422
        MOV X2,341
        MOV X3,452
        MOV X4,350
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,373
        MOV X2,311
        MOV X3,378
        MOV X4,383
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,367
        MOV X2,317
        MOV X3,372
        MOV X4,377
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,361
        MOV X2,325
        MOV X3,366
        MOV X4,330
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,422
        MOV X2,331
        MOV X3,422
        MOV X4,340
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,433
        MOV X2,298
        MOV X3,442
        MOV X4,318
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,433
        MOV X2,277
        MOV X3,452
        MOV X4,292
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,453
        MOV X2,276
        MOV X3,463
        MOV X4,286
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,453
        MOV X2,266
        MOV X3,474
        MOV X4,275
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,422
        MOV X2,233
        MOV X3,432
        MOV X4,330
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,379
        MOV X2,233
        MOV X3,421
        MOV X4,403
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,433
        MOV X2,233
        MOV X3,442
        MOV X4,253
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,367
        MOV X2,269
        MOV X3,372
        MOV X4,274
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,373
        MOV X2,233
        MOV X3,378
        MOV X4,286
    BL pintar_rectangulo
    
    // LDR,X8,=AURA_LUZ
        MOV X1,350
        MOV X2,209
        MOV X3,355
        MOV X4,214
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,356
        MOV X2,203
        MOV X3,361
        MOV X4,214
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,361
        MOV X2,215
        MOV X3,366
        MOV X4,220
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,367
        MOV X2,221
        MOV X3,372
        MOV X4,238
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,362
        MOV X2,207
        MOV X3,367
        MOV X4,214
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,267
        MOV X2,215
        MOV X3,267
        MOV X4,220
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,368
        MOV X2,204
        MOV X3,370
        MOV X4,220
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,371
        MOV X2,202
        MOV X3,452
        MOV X4,232
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,443
        MOV X2,169
        MOV X3,452
        MOV X4,201
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,433
        MOV X2,191
        MOV X3,442
        MOV X4,201
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,371
        MOV X2,198
        MOV X3,372
        MOV X4,201
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,373
        MOV X2,194
        MOV X3,375
        MOV X4,201
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,376
        MOV X2,185
        MOV X3,377
        MOV X4,201
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,378
        MOV X2,143
        MOV X3,379
        MOV X4,201
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,376
        MOV X2,143
        MOV X3,377
        MOV X4,144
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,380
        MOV X2,139
        MOV X3,383
        MOV X4,201
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,384
        MOV X2,131
        MOV X3,385
        MOV X4,201
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,361
        MOV X2,215
        MOV X3,384
        MOV X4,220
    BL pintar_rectangulo
    
    // LDR,X8,=AURA_LUZ
        MOV X1,386
        MOV X2,100
        MOV X3,421
        MOV X4,201
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,374
        MOV X2,111
        MOV X3,377
        MOV X4,122
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,378
        MOV X2,111
        MOV X3,390
        MOV X4,120
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,372
        MOV X2,101
        MOV X3,390
        MOV X4,110
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,381
        MOV X2,62
        MOV X3,390
        MOV X4,93
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,366
        MOV X2,94
        MOV X3,390
        MOV X4,100
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,362
        MOV X2,94
        MOV X3,365
        MOV X4,102
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,359
        MOV X2,94
        MOV X3,361
        MOV X4,106
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,355
        MOV X2,93
        MOV X3,359
        MOV X4,98
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,351
        MOV X2,89
        MOV X3,359
        MOV X4,92
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,347
        MOV X2,85
        MOV X3,359
        MOV X4,88
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,343
        MOV X2,81
        MOV X3,359
        MOV X4,84
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,339
        MOV X2,77
        MOV X3,359
        MOV X4,80
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,333
        MOV X2,75
        MOV X3,359
        MOV X4,76
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,327
        MOV X2,61
        MOV X3,359
        MOV X4,74
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,338
        MOV X2,30
        MOV X3,359
        MOV X4,60
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,338
        MOV X2,19
        MOV X3,348
        MOV X4,29
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,323
        MOV X2,384
        MOV X3,336
        MOV X4,398
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,379
        MOV X2,380
        MOV X3,382
        MOV X4,399
    BL pintar_rectangulo

    LDR X8,=SOMBRA_BOTAS_GUANTES
        MOV X1,361
        MOV X2,287
        MOV X3,366
        MOV X4,292
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,230
        MOV X2,373
        MOV X3,233
        MOV X4,382
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
    LDR X8,[SP],8
RET


.globl aura1_destello
aura1_destello:
    STR X8,[SP,-8]!
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X30,[SP,-8]!

    MOV X8,X9

    // LDR X8,=AURA_REFLEJOS
        MOV X1,370
        MOV X2,437
        MOV X3,379
        MOV X4,446
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,370
        MOV X2,416
        MOV X3,379
        MOV X4,425
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,433
        MOV X2,394
        MOV X3,442
        MOV X4,403
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,412
        MOV X2,384
        MOV X3,421
        MOV X4,393
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,422
        MOV X2,362
        MOV X3,432
        MOV X4,371
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,433
        MOV X2,351
        MOV X3,442
        MOV X4,360
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,443
        MOV X2,298
        MOV X3,452
        MOV X4,307
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,423
        MOV X2,277
        MOV X3,432
        MOV X4,286
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,465
        MOV X2,256
        MOV X3,474
        MOV X4,265
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,433
        MOV X2,244
        MOV X3,442
        MOV X4,253
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,443
        MOV X2,211
        MOV X3,452
        MOV X4,232
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,412
        MOV X2,202
        MOV X3,421
        MOV X4,211
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,433
        MOV X2,181
        MOV X3,442
        MOV X4,190
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,381
        MOV X2,52
        MOV X3,390
        MOV X4,61
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,360
        MOV X2,84
        MOV X3,369
        MOV X4,93
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,349
        MOV X2,19
        MOV X3,359
        MOV X4,29
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,338
        MOV X2,15
        MOV X3,348
        MOV X4,18
    BL pintar_rectangulo
    
    // LDR X8,=AURA_REFLEJOS
        MOV X1,328
        MOV X2,41
        MOV X3,337
        MOV X4,60
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,307
        MOV X2,61
        MOV X3,326
        MOV X4,71
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,296
        MOV X2,20
        MOV X3,305
        MOV X4,40
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,275
        MOV X2,61
        MOV X3,285
        MOV X4,80
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,275
        MOV X2,81
        MOV X3,282
        MOV X4,82
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,254
        MOV X2,62
        MOV X3,264
        MOV X4,81
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,265
        MOV X2,94
        MOV X3,274
        MOV X4,103
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,244
        MOV X2,95
        MOV X3,253
        MOV X4,114
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,213
        MOV X2,106
        MOV X3,222
        MOV X4,115
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,234
        MOV X2,148
        MOV X3,243
        MOV X4,156
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,213
        MOV X2,159
        MOV X3,222
        MOV X4,168
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,182
        MOV X2,148
        MOV X3,191
        MOV X4,187
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,212
        MOV X2,191
        MOV X3,221
        MOV X4,200
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,192
        MOV X2,233
        MOV X3,201
        MOV X4,242
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,181
        MOV X2,266
        MOV X3,190
        MOV X4,275
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,220
        MOV X2,277
        MOV X3,211
        MOV X4,286
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,181
        MOV X2,287
        MOV X3,190
        MOV X4,296
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,193
        MOV X2,309
        MOV X3,202
        MOV X4,318
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,203
        MOV X2,319
        MOV X3,212
        MOV X4,328
    BL pintar_rectangulo
    
    // LDR X8,=AURA_REFLEJOS
        MOV X1,213
        MOV X2,329
        MOV X3,222
        MOV X4,339
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,171
        MOV X2,330
        MOV X3,180
        MOV X4,339
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,192
        MOV X2,351
        MOV X3,201
        MOV X4,361
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,213
        MOV X2,362
        MOV X3,222
        MOV X4,372
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,234
        MOV X2,373
        MOV X3,243
        MOV X4,382
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,265
        MOV X2,405
        MOV X3,274
        MOV X4,414
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,255
        MOV X2,427
        MOV X3,264
        MOV X4,436
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,297
        MOV X2,416
        MOV X3,306
        MOV X4,425
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,317
        MOV X2,416
        MOV X3,326
        MOV X4,425
    BL pintar_rectangulo

    // LDR X8,=AURA_REFLEJOS
        MOV X1,339
        MOV X2,416
        MOV X3,348
        MOV X4,425
    BL pintar_rectangulo

    

    LDR X30,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
    LDR X8,[SP],8
RET


/*
╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
║                                                          AURA 2                                                        ║
╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
*/
.globl aura2_luz
aura2_luz:
    STR X8,[SP,-8]!
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X30,[SP,-8]!
    
    //LDR X8,=AURA_LUZ
        MOV X1,290
        MOV X2,197
        MOV X3,295
        MOV X4,202
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,277
        MOV X2,197
        MOV X3,289
        MOV X4,208
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,277
        MOV X2,195
        MOV X3,283
        MOV X4,196
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,277
        MOV X2,193
        MOV X3,279
        MOV X4,194
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,271
        MOV X2,193
        MOV X3,276
        MOV X4,214
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,271
        MOV X2,184
        MOV X3,275
        MOV X4,192
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,265
        MOV X2,182
        MOV X3,270
        MOV X4,220
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,265
        MOV X2,176
        MOV X3,267
        MOV X4,181
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,265
        MOV X2,170
        MOV X3,265
        MOV X4,175
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,259
        MOV X2,170
        MOV X3,264
        MOV X4,232
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,270
        MOV X2,158
        MOV X3,273
        MOV X4,163
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,264
        MOV X2,152
        MOV X3,269
        MOV X4,161
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,259
        MOV X2,152
        MOV X3,263
        MOV X4,169
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,259
        MOV X2,141
        MOV X3,265
        MOV X4,151
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,259
        MOV X2,131
        MOV X3,261
        MOV X4,140
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,259
        MOV X2,106
        MOV X3,259
        MOV X4,130
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,254
        MOV X2,100
        MOV X3,258
        MOV X4,250
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,244
        MOV X2,100
        MOV X3,253
        MOV X4,125
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,242
        MOV X2,126
        MOV X3,253
        MOV X4,132
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,231
        MOV X2,133
        MOV X3,253
        MOV X4,137
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,212
        MOV X2,113
        MOV X3,221
        MOV X4,137
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,209
        MOV X2,125
        MOV X3,211
        MOV X4,137
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,209
        MOV X2,138
        MOV X3,253
        MOV X4,186
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,212
        MOV X2,187
        MOV X3,253
        MOV X4,210
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,276
        MOV X2,186
        MOV X3,280
        MOV X4,187
    BL pintar_rectangulo
    
    //LDR X8,=AURA_LUZ
        MOV X1,275
        MOV X2,112
        MOV X3,278
        MOV X4,114
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,271
        MOV X2,108
        MOV X3,278
        MOV X4,111
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,266
        MOV X2,106
        MOV X3,278
        MOV X4,107
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,259
        MOV X2,100
        MOV X3,278
        MOV X4,105
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,255
        MOV X2,92
        MOV X3,278
        MOV X4,99
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,257
        MOV X2,91
        MOV X3,267
        MOV X4,91
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,257
        MOV X2,89
        MOV X3,266
        MOV X4,90
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,277
        MOV X2,69
        MOV X3,278
        MOV X4,72
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,279
        MOV X2,67
        MOV X3,280
        MOV X4,92
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,281
        MOV X2,67
        MOV X3,282
        MOV X4,84
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,283
        MOV X2,67
        MOV X3,286
        MOV X4,80
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,309
        MOV X2,89
        MOV X3,314
        MOV X4,90
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,303
        MOV X2,85
        MOV X3,314
        MOV X4,88
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,297
        MOV X2,81
        MOV X3,314
        MOV X4,84
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,293
        MOV X2,77
        MOV X3,314
        MOV X4,80
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,325
        MOV X2,83
        MOV X3,328
        MOV X4,85
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,325
        MOV X2,82
        MOV X3,326
        MOV X4,82
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,320
        MOV X2,78
        MOV X3,326
        MOV X4,81
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,315
        MOV X2,77
        MOV X3,326
        MOV X4,77
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,287
        MOV X2,67
        MOV X3,326
        MOV X4,76
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,290
        MOV X2,12
        MOV X3,299
        MOV X4,66
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,300
        MOV X2,26
        MOV X3,300
        MOV X4,66
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,301
        MOV X2,44
        MOV X3,310
        MOV X4,66
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,311
        MOV X2,48
        MOV X3,333
        MOV X4,66
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,323
        MOV X2,23
        MOV X3,332
        MOV X4,47
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,311
        MOV X2,47
        MOV X3,322
        MOV X4,47
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,212
        MOV X2,187
        MOV X3,253
        MOV X4,210
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,327
        MOV X2,67
        MOV X3,343
        MOV X4,74
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,334
        MOV X2,55
        MOV X3,343
        MOV X4,66
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,344
        MOV X2,70
        MOV X3,345
        MOV X4,73
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,344
        MOV X2,74
        MOV X3,347
        MOV X4,74
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,333
        MOV X2,75
        MOV X3,347
        MOV X4,76
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,339
        MOV X2,77
        MOV X3,347
        MOV X4,80
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,343
        MOV X2,81
        MOV X3,347
        MOV X4,84
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,347
        MOV X2,85
        MOV X3,347
        MOV X4,88
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,348
        MOV X2,88
        MOV X3,350
        MOV X4,88
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,356
        MOV X2,68
        MOV X3,365
        MOV X4,69
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,354
        MOV X2,70
        MOV X3,365
        MOV X4,80
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,354
        MOV X2,81
        MOV X3,367
        MOV X4,87
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,351
        MOV X2,88
        MOV X3,367
        MOV X4,92
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,355
        MOV X2,93
        MOV X3,367
        MOV X4,98
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,368
        MOV X2,89
        MOV X3,377
        MOV X4,98
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,359
        MOV X2,99
        MOV X3,361
        MOV X4,106
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,362
        MOV X2,99
        MOV X3,365
        MOV X4,102
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,366
        MOV X2,99
        MOV X3,377
        MOV X4,100
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,372
        MOV X2,101
        MOV X3,377
        MOV X4,110
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,374
        MOV X2,111
        MOV X3,377
        MOV X4,122
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,378
        MOV X2,113
        MOV X3,380
        MOV X4,120
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,384
        MOV X2,131
        MOV X3,385
        MOV X4,134
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,386
        MOV X2,121
        MOV X3,389
        MOV X4,134
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,400
        MOV X2,100
        MOV X3,411
        MOV X4,137
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,384
        MOV X2,135
        MOV X3,399
        MOV X4,137
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,380
        MOV X2,139
        MOV X3,383
        MOV X4,142
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,376
        MOV X2,143
        MOV X3,377
        MOV X4,144
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,413
        MOV X2,121
        MOV X3,420
        MOV X4,202
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,412
        MOV X2,112
        MOV X3,412
        MOV X4,137
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,350
        MOV X2,209
        MOV X3,355
        MOV X4,214
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,356
        MOV X2,203
        MOV X3,361
        MOV X4,206
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,361
        MOV X2,215
        MOV X3,366
        MOV X4,220
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,356
        MOV X2,207
        MOV X3,372
        MOV X4,214
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,368
        MOV X2,204
        MOV X3,370
        MOV X4,206
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,371
        MOV X2,198
        MOV X3,372
        MOV X4,206
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,376
        MOV X2,185
        MOV X3,377
        MOV X4,193
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,378
        MOV X2,143
        MOV X3,378
        MOV X4,193
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,367
        MOV X2,215
        MOV X3,372
        MOV X4,230
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,445
        MOV X2,187
        MOV X3,454
        MOV X4,199
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,435
        MOV X2,200
        MOV X3,454
        MOV X4,210
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,420
        MOV X2,211
        MOV X3,454
        MOV X4,219
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,434
        MOV X2,220
        MOV X3,454
        MOV X4,224
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,384
        MOV X2,138
        MOV X3,412
        MOV X4,310
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,379
        MOV X2,143
        MOV X3,383
        MOV X4,310
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,373
        MOV X2,194
        MOV X3,378
        MOV X4,286
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,367
        MOV X2,269
        MOV X3,372
        MOV X4,274
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,367
        MOV X2,215
        MOV X3,372
        MOV X4,238
    BL pintar_rectangulo
    
    //LDR X8,=AURA_LUZ
        MOV X1,434
        MOV X2,225
        MOV X3,446
        MOV X4,242
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,434
        MOV X2,243
        MOV X3,444
        MOV X4,257
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,434
        MOV X2,258
        MOV X3,435
        MOV X4,263
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,422
        MOV X2,220
        MOV X3,433
        MOV X4,290
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,413
        MOV X2,220
        MOV X3,421
        MOV X4,235
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,422
        MOV X2,291
        MOV X3,435
        MOV X4,296
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,453
        MOV X2,277
        MOV X3,465
        MOV X4,299
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,446
        MOV X2,286
        MOV X3,452
        MOV X4,286
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,443
        MOV X2,287
        MOV X3,452
        MOV X4,299
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,442
        MOV X2,290
        MOV X3,442
        MOV X4,299
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,422
        MOV X2,297
        MOV X3,441
        MOV X4,299
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,447
        MOV X2,300
        MOV X3,455
        MOV X4,312
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,422
        MOV X2,300
        MOV X3,446
        MOV X4,318
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,422
        MOV X2,319
        MOV X3,443
        MOV X4,331
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,422
        MOV X2,332
        MOV X3,432
        MOV X4,341
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,373
        MOV X2,311
        MOV X3,412
        MOV X4,316
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,361
        MOV X2,325
        MOV X3,366
        MOV X4,330
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,367
        MOV X2,317
        MOV X3,412
        MOV X4,377
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,373
        MOV X2,378
        MOV X3,412
        MOV X4,383
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,413
        MOV X2,362
        MOV X3,418
        MOV X4,388
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,419
        MOV X2,362
        MOV X3,435
        MOV X4,386
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,436
        MOV X2,362
        MOV X3,441
        MOV X4,377
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,442
        MOV X2,362
        MOV X3,455
        MOV X4,375
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,379
        MOV X2,384
        MOV X3,412
        MOV X4,395
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,358
        MOV X2,396
        MOV X3,412
        MOV X4,400
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,358
        MOV X2,401
        MOV X3,413
        MOV X4,410
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,356
        MOV X2,396
        MOV X3,357
        MOV X4,416
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,345
        MOV X2,430
        MOV X3,355
        MOV X4,440
    BL pintar_rectangulo 

    //LDR X8,=AURA_LUZ
        MOV X1,332
        MOV X2,396
        MOV X3,355
        MOV X4,429
    BL pintar_rectangulo 

    //LDR X8,=AURA_LUZ
        MOV X1,331
        MOV X2,390
        MOV X3,342
        MOV X4,395
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,331
        MOV X2,384
        MOV X3,336
        MOV X4,389
    BL pintar_rectangulo 

    //LDR X8,=AURA_LUZ
        MOV X1,325
        MOV X2,323
        MOV X3,330
        MOV X4,340
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,319
        MOV X2,341
        MOV X3,330
        MOV X4,352
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,313
        MOV X2,353
        MOV X3,330
        MOV X4,370
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,307
        MOV X2,371
        MOV X3,330
        MOV X4,395
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,309
        MOV X2,396
        MOV X3,331
        MOV X4,420
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,301
        MOV X2,383
        MOV X3,306
        MOV X4,400
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,307
        MOV X2,396
        MOV X3,308
        MOV X4,400
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,401
        MOV X2,220
        MOV X3,421
        MOV X4,355
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,303
        MOV X2,401
        MOV X3,308
        MOV X4,410
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,289
        MOV X2,401
        MOV X3,302
        MOV X4,419
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,277
        MOV X2,401
        MOV X3,288
        MOV X4,432
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,276
        MOV X2,401
        MOV X3,276
        MOV X4,421
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,265
        MOV X2,401
        MOV X3,275
        MOV X4,410
    BL pintar_rectangulo
    
    //LDR X8,=AURA_LUZ
        MOV X1,259
        MOV X2,371
        MOV X3,264
        MOV X4,410
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,259
        MOV X2,317
        MOV X3,270
        MOV X4,370
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,271
        MOV X2,323
        MOV X3,276
        MOV X4,352
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,277
        MOV X2,323
        MOV X3,282
        MOV X4,334
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,254
        MOV X2,311
        MOV X3,258
        MOV X4,410
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,189
        MOV X2,376
        MOV X3,212
        MOV X4,386
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,176
        MOV X2,363
        MOV X3,212
        MOV X4,375
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,201
        MOV X2,220
        MOV X3,213
        MOV X4,356
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,190
        MOV X2,299
        MOV X3,200
        MOV X4,341
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,179
        MOV X2,299
        MOV X3,189
        MOV X4,331
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,177
        MOV X2,299
        MOV X3,178
        MOV X4,320
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,167
        MOV X2,299
        MOV X3,176
        MOV X4,311
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,164
        MOV X2,289
        MOV X3,177
        MOV X4,298
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,167
        MOV X2,288
        MOV X3,177
        MOV X4,289
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,199
        MOV X2,290
        MOV X3,200
        MOV X4,298
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,176
        MOV X2,200
        MOV X3,189
        MOV X4,213
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,176
        MOV X2,214
        MOV X3,191
        MOV X4,219
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,176
        MOV X2,220
        MOV X3,177
        MOV X4,229
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,178
        MOV X2,220
        MOV X3,186
        MOV X4,268
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,187
        MOV X2,220
        MOV X3,188
        MOV X4,240
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,189
        MOV X2,220
        MOV X3,200
        MOV X4,289
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,209
        MOV X2,211
        MOV X3,209
        MOV X4,219
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,210
        MOV X2,211
        MOV X3,253
        MOV X4,410
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,283
        MOV X2,269
        MOV X3,288
        MOV X4,286
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,289
        MOV X2,257
        MOV X3,294
        MOV X4,292
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,295
        MOV X2,251
        MOV X3,300
        MOV X4,286
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,301
        MOV X2,257
        MOV X3,306
        MOV X4,274
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,187
        MOV X2,221
        MOV X3,188
        MOV X4,274
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,405
        MOV X2,197
        MOV X3,413
        MOV X4,223
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,379
        MOV X2,380
        MOV X3,382
        MOV X4,399
    BL pintar_rectangulo
    
    LDR X30,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
    LDR X8,[SP],8
RET


.globl aura2_destello
aura2_destello:
    STR X8,[SP,-8]!
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X30,[SP,-8]!
    
    MOV X8,X9

    //LDR X8,=AURA_REFLEJOS
        MOV X1,192
        MOV X2,411
        MOV X3,275
        MOV X4,416
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,270
        MOV X2,433
        MOV X3,286
        MOV X4,438
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,303
        MOV X2,411
        MOV X3,308
        MOV X4,416
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,326
        MOV X2,421
        MOV X3,331
        MOV X4,427
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,358
        MOV X2,411
        MOV X3,430
        MOV X4,416
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,413
        MOV X2,389
        MOV X3,418
        MOV X4,394
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,436
        MOV X2,378
        MOV X3,441
        MOV X4,383
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,413
        MOV X2,356
        MOV X3,463
        MOV X4,361
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,447
        MOV X2,313
        MOV X3,452
        MOV X4,318
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,436
        MOV X2,291
        MOV X3,441
        MOV X4,296
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,447
        MOV X2,280
        MOV X3,452
        MOV X4,285
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,436
        MOV X2,258
        MOV X3,441
        MOV X4,263
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,447
        MOV X2,225
        MOV X3,452
        MOV X4,240
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,414
        MOV X2,203
        MOV X3,419
        MOV X4,219
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,447
        MOV X2,181
        MOV X3,452
        MOV X4,186
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,414
        MOV X2,105
        MOV X3,419
        MOV X4,120
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,403
        MOV X2,82
        MOV X3,408
        MOV X4,99
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,381
        MOV X2,115
        MOV X3,386
        MOV X4,120
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,370
        MOV X2,83
        MOV X3,375
        MOV X4,88
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,358
        MOV X2,62
        MOV X3,363
        MOV X4,67
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,348
        MOV X2,73
        MOV X3,353
        MOV X4,87
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,336
        MOV X2,49
        MOV X3,341
        MOV X4,54
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,325
        MOV X2,17
        MOV X3,330
        MOV X4,22
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,303
        MOV X2,28
        MOV X3,308
        MOV X4,43
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,292
        MOV X2,6
        MOV X3,297
        MOV X4,11
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,281
        MOV X2,61
        MOV X3,286
        MOV X4,66
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,259
        MOV X2,72
        MOV X3,264
        MOV X4,88
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,247
        MOV X2,94
        MOV X3,252
        MOV X4,99
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,236
        MOV X2,127
        MOV X3,241
        MOV X4,132
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,225
        MOV X2,138
        MOV X3,230
        MOV X4,143
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,203
        MOV X2,126
        MOV X3,208
        MOV X4,186
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,170
        MOV X2,170
        MOV X3,175
        MOV X4,229
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,192
        MOV X2,214
        MOV X3,208
        MOV X4,219
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,181
        MOV X2,269
        MOV X3,186
        MOV X4,274
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,158
        MOV X2,288
        MOV X3,163
        MOV X4,296
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,193
        MOV X2,290
        MOV X3,198
        MOV X4,307
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,171
        MOV X2,312
        MOV X3,176
        MOV X4,317
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,179
        MOV X2,357
        MOV X3,209
        MOV X4,362
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,161
        MOV X2,357
        MOV X3,166
        MOV X4,362
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,170
        MOV X2,366
        MOV X3,175
        MOV X4,372
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,204
        MOV X2,387
        MOV X3,209
        MOV X4,393
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
    LDR X8,[SP],8
RET


.globl aura2_cielo
aura2_cielo:
    STR X8,[SP,-8]!
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=CIELO
        MOV X1,158
        MOV X2,321
        MOV X3,178
        MOV X4,326
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,167
        MOV X2,318
        MOV X3,176
        MOV X4,320
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,167
        MOV X2,312
        MOV X3,170
        MOV X4,317
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,158
        MOV X2,299
        MOV X3,166
        MOV X4,320
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,158
        MOV X2,297
        MOV X3,163
        MOV X4,298
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,178
        MOV X2,290
        MOV X3,192
        MOV X4,298
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,164
        MOV X2,288
        MOV X3,166
        MOV X4,288
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,178
        MOV X2,275
        MOV X3,188
        MOV X4,289
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,178
        MOV X2,269
        MOV X3,180
        MOV X4,274
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,170
        MOV X2,230
        MOV X3,177
        MOV X4,287
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,158
        MOV X2,170
        MOV X3,169
        MOV X4,287
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,190
        MOV X2,211
        MOV X3,208
        MOV X4,213
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,190
        MOV X2,186
        MOV X3,211
        MOV X4,210
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,176
        MOV X2,170
        MOV X3,202
        MOV X4,199
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,158
        MOV X2,125
        MOV X3,202
        MOV X4,169
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,203
        MOV X2,125
        MOV X3,208
        MOV X4,125
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,158
        MOV X2,113
        MOV X3,211
        MOV X4,124
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,222
        MOV X2,113
        MOV X3,230
        MOV X4,137
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,231
        MOV X2,126
        MOV X3,235
        MOV X4,132
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,236
        MOV X2,126
        MOV X3,241
        MOV X4,126
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,231
        MOV X2,113
        MOV X3,243
        MOV X4,125
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,158
        MOV X2,92
        MOV X3,243
        MOV X4,112
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,244
        MOV X2,94
        MOV X3,246
        MOV X4,99
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,253
        MOV X2,92
        MOV X3,254
        MOV X4,99
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,244
        MOV X2,92
        MOV X3,252
        MOV X4,93
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,158
        MOV X2,6
        MOV X3,256
        MOV X4,91
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,268
        MOV X2,73
        MOV X3,278
        MOV X4,91
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,265
        MOV X2,72
        MOV X3,276
        MOV X4,88
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,257
        MOV X2,61
        MOV X3,258
        MOV X4,88
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,259
        MOV X2,69
        MOV X3,276
        MOV X4,71
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,259
        MOV X2,67
        MOV X3,278
        MOV X4,68
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,259
        MOV X2,61
        MOV X3,280
        MOV X4,66
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,287
        MOV X2,61
        MOV X3,289
        MOV X4,66
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,257
        MOV X2,6
        MOV X3,289
        MOV X4,60
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,290
        MOV X2,6
        MOV X3,291
        MOV X4,11
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,298
        MOV X2,6
        MOV X3,299
        MOV X4,11
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,300
        MOV X2,6
        MOV X3,324
        MOV X4,22
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,300
        MOV X2,23
        MOV X3,302
        MOV X4,25
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,301
        MOV X2,26
        MOV X3,302
        MOV X4,43
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,303
        MOV X2,23
        MOV X3,308
        MOV X4,27
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,309
        MOV X2,23
        MOV X3,322
        MOV X4,43
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,311
        MOV X2,44
        MOV X3,322
        MOV X4,46
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,325
        MOV X2,6
        MOV X3,332
        MOV X4,16
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,331
        MOV X2,17
        MOV X3,332
        MOV X4,22
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,333
        MOV X2,6
        MOV X3,343
        MOV X4,47
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,334
        MOV X2,48
        MOV X3,335
        MOV X4,54
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,336
        MOV X2,48
        MOV X3,341
        MOV X4,48
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,342
        MOV X2,48
        MOV X3,343
        MOV X4,54
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,344
        MOV X2,6
        MOV X3,365
        MOV X4,61
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,344
        MOV X2,62
        MOV X3,355
        MOV X4,69
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,356
        MOV X2,62
        MOV X3,357
        MOV X4,67
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,364
        MOV X2,62
        MOV X3,365
        MOV X4,67
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,346
        MOV X2,70
        MOV X3,347
        MOV X4,73
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,348
        MOV X2,70
        MOV X3,353
        MOV X4,72
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,366
        MOV X2,6
        MOV X3,474
        MOV X4,80
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,368
        MOV X2,81
        MOV X3,369
        MOV X4,88
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,370
        MOV X2,81
        MOV X3,375
        MOV X4,82
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,376
        MOV X2,81
        MOV X3,377
        MOV X4,88
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,378
        MOV X2,81
        MOV X3,399
        MOV X4,112
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,381
        MOV X2,113
        MOV X3,399
        MOV X4,114
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,387
        MOV X2,115
        MOV X3,399
        MOV X4,120
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,390
        MOV X2,121
        MOV X3,399
        MOV X4,134
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,400
        MOV X2,81
        MOV X3,402
        MOV X4,99
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,403
        MOV X2,81
        MOV X3,408
        MOV X4,81
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,409
        MOV X2,81
        MOV X3,411
        MOV X4,99
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,412
        MOV X2,81
        MOV X3,474
        MOV X4,104
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,412
        MOV X2,105
        MOV X3,413
        MOV X4,120
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,420
        MOV X2,105
        MOV X3,420
        MOV X4,120
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,421
        MOV X2,105
        MOV X3,474
        MOV X4,180
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,421
        MOV X2,181
        MOV X3,434
        MOV X4,202
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,420
        MOV X2,203
        MOV X3,434
        MOV X4,210
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,435
        MOV X2,181
        MOV X3,444
        MOV X4,199
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,445
        MOV X2,181
        MOV X3,446
        MOV X4,186
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,453
        MOV X2,181
        MOV X3,474
        MOV X4,186
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,455
        MOV X2,187
        MOV X3,474
        MOV X4,276
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,453
        MOV X2,225
        MOV X3,454
        MOV X4,276
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,447
        MOV X2,241
        MOV X3,452
        MOV X4,242
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,445
        MOV X2,243
        MOV X3,452
        MOV X4,279
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,442
        MOV X2,258
        MOV X3,444
        MOV X4,263
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,434
        MOV X2,264
        MOV X3,446
        MOV X4,285
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,434
        MOV X2,286
        MOV X3,441
        MOV X4,290
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,442
        MOV X2,287
        MOV X3,442
        MOV X4,289
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,442
        MOV X2,286
        MOV X3,445
        MOV X4,286
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,466
        MOV X2,277
        MOV X3,467
        MOV X4,297
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,468
        MOV X2,277
        MOV X3,474
        MOV X4,290
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,456
        MOV X2,300
        MOV X3,461
        MOV X4,303
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,456
        MOV X2,304
        MOV X3,462
        MOV X4,308
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
    LDR X8,[SP],8
RET


.globl aura2_sueloluz
aura2_sueloluz:
    STR X8,[SP,-8]!
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SUELO_LUZ
        MOV X1,158
        MOV X2,327
        MOV X3,264
        MOV X4,446
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,265
        MOV X2,407
        MOV X3,474
        MOV X4,446
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,409
        MOV X2,321
        MOV X3,474
        MOV X4,406
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
    LDR X8,[SP],8
RET


.globl aura2_suelosombraclara
aura2_suelosombraclara:
    STR X8,[SP,-8]!
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SUELO_SOMBRACLARA
        MOV X1,317
        MOV X2,446
        MOV X3,362
        MOV X4,446
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV X1,328
        MOV X2,445
        MOV X3,362
        MOV X4,445
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV X1,328
        MOV X2,443
        MOV X3,353
        MOV X4,444
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV X1,328
        MOV X2,441
        MOV X3,342
        MOV X4,442
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV X1,468
        MOV X2,411
        MOV X3,474
        MOV X4,412
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV X1,462
        MOV X2,405
        MOV X3,474
        MOV X4,410
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV X1,472
        MOV X2,402
        MOV X3,474
        MOV X4,404
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
    LDR X8,[SP],8
RET


.globl aura2_montanadersombramedia
aura2_montanadersombramedia:
    STR X8,[SP,-8]!
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,468
        MOV X2,291
        MOV X3,474
        MOV X4,326
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,462
        MOV X2,298
        MOV X3,467
        MOV X4,303
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,463
        MOV X2,304
        MOV X3,467
        MOV X4,320
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,453
        MOV X2,309
        MOV X3,462
        MOV X4,320
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,446
        MOV X2,319
        MOV X3,452
        MOV X4,320
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
    LDR X8,[SP],8
RET


.globl aura2_montanadersombraoscura
aura2_montanadersombraoscura:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=MONTANA_SOMBRAOSCURA
        MOV X1,466
        MOV X2,318
        MOV X3,467
        MOV X4,326
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAOSCURA
        MOV X1,447
        MOV X2,321
        MOV X3,465
        MOV X4,326
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
║                                                          AURA 3                                                        ║
╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
*/
.globl aura3_cielo
aura3_cielo:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=CIELO
        MOV X1,158
        MOV X2,319
        MOV X3,162
        MOV X4,326
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,185
        MOV X2,321
        MOV X3,194
        MOV X4,326
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,197
        MOV X2,320
        MOV X3,208
        MOV X4,320
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,175
        MOV X2,299
        MOV X3,196
        MOV X4,320
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,164
        MOV X2,313
        MOV X3,166
        MOV X4,318
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,173
        MOV X2,313
        MOV X3,174
        MOV X4,318
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,175
        MOV X2,289
        MOV X3,185
        MOV X4,298
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,175
        MOV X2,286
        MOV X3,182
        MOV X4,288
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,175
        MOV X2,280
        MOV X3,176
        MOV X4,285
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,175
        MOV X2,266
        MOV X3,175
        MOV X4,279
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,164
        MOV X2,266
        MOV X3,174
        MOV X4,312
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,158
        MOV X2,247
        MOV X3,163
        MOV X4,318
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,196
        MOV X2,256
        MOV X3,208
        MOV X4,277
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,185
        MOV X2,256
        MOV X3,195
        MOV X4,266
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,206
        MOV X2,255
        MOV X3,208
        MOV X4,255
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,200
        MOV X2,253
        MOV X3,205
        MOV X4,255
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,174
        MOV X2,247
        MOV X3,199
        MOV X4,255
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,164
        MOV X2,247
        MOV X3,165
        MOV X4,252
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,172
        MOV X2,247
        MOV X3,173
        MOV X4,252
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,158
        MOV X2,146
        MOV X3,196
        MOV X4,246
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,219
        MOV X2,169
        MOV X3,229
        MOV X4,189
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,217
        MOV X2,171
        MOV X3,218
        MOV X4,176
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,211
        MOV X2,169
        MOV X3,218
        MOV X4,170
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,208
        MOV X2,146
        MOV X3,229
        MOV X4,168
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,158
        MOV X2,100
        MOV X3,229
        MOV X4,145
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,158
        MOV X2,83
        MOV X3,232
        MOV X4,99
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,158
        MOV X2,6
        MOV X3,238
        MOV X4,82
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,253
        MOV X2,93
        MOV X3,265
        MOV X4,99
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,266
        MOV X2,93
        MOV X3,272
        MOV X4,93
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,253
        MOV X2,62
        MOV X3,273
        MOV X4,92
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,239
        MOV X2,62
        MOV X3,243
        MOV X4,77
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,250
        MOV X2,62
        MOV X3,252
        MOV X4,77
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,239
        MOV X2,6
        MOV X3,273
        MOV X4,61
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,274
        MOV X2,6
        MOV X3,287
        MOV X4,58
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,288
        MOV X2,6
        MOV X3,305
        MOV X4,40
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,306
        MOV X2,6
        MOV X3,321
        MOV X4,12
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,306
        MOV X2,13
        MOV X3,316
        MOV X4,17
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,306
        MOV X2,18
        MOV X3,310
        MOV X4,23
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,306
        MOV X2,24
        MOV X3,307
        MOV X4,36
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,322
        MOV X2,6
        MOV X3,327
        MOV X4,6
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,328
        MOV X2,6
        MOV X3,330
        MOV X4,12
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,331
        MOV X2,6
        MOV X3,331
        MOV X4,36
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,332
        MOV X2,6
        MOV X3,474
        MOV X4,40
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,350
        MOV X2,41
        MOV X3,474
        MOV X4,49
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,361
        MOV X2,50
        MOV X3,362
        MOV X4,55
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,363
        MOV X2,50
        MOV X3,384
        MOV X4,91
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,364
        MOV X2,92
        MOV X3,371
        MOV X4,93
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,372
        MOV X2,92
        MOV X3,376
        MOV X4,99
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,377
        MOV X2,92
        MOV X3,384
        MOV X4,104
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,385
        MOV X2,50
        MOV X3,387
        MOV X4,77
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,388
        MOV X2,50
        MOV X3,404
        MOV X4,62
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,394
        MOV X2,63
        MOV X3,404
        MOV X4,71
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,405
        MOV X2,50
        MOV X3,474
        MOV X4,100
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,407
        MOV X2,101
        MOV X3,474
        MOV X4,115
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,407
        MOV X2,116
        MOV X3,429
        MOV X4,166
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,430
        MOV X2,116
        MOV X3,443
        MOV X4,147
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,407
        MOV X2,167
        MOV X3,418
        MOV X4,188
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,419
        MOV X2,167
        MOV X3,421
        MOV X4,176
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,422
        MOV X2,167
        MOV X3,427
        MOV X4,170
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,430
        MOV X2,148
        MOV X3,431
        MOV X4,153
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,444
        MOV X2,175
        MOV X3,449
        MOV X4,179
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,450
        MOV X2,116
        MOV X3,474
        MOV X4,234
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,441
        MOV X2,180
        MOV X3,449
        MOV X4,265
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,439
        MOV X2,247
        MOV X3,440
        MOV X4,254
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,433
        MOV X2,253
        MOV X3,438
        MOV X4,254
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,430
        MOV X2,255
        MOV X3,440
        MOV X4,277
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,450
        MOV X2,235
        MOV X3,465
        MOV X4,252
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,450
        MOV X2,253
        MOV X3,451
        MOV X4,265
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,452
        MOV X2,253
        MOV X3,461
        MOV X4,254
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,472
        MOV X2,235
        MOV X3,474
        MOV X4,252
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,474
        MOV X2,253
        MOV X3,474
        MOV X4,265
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,463
        MOV X2,266
        MOV X3,474
        MOV X4,290
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,461
        MOV X2,280
        MOV X3,462
        MOV X4,290
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,455
        MOV X2,286
        MOV X3,460
        MOV X4,290
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,452
        MOV X2,289
        MOV X3,454
        MOV X4,290
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,452
        MOV X2,291
        MOV X3,467
        MOV X4,297
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,452
        MOV X2,298
        MOV X3,461
        MOV X4,298
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,441
        MOV X2,299
        MOV X3,461
        MOV X4,308
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,462
        MOV X2,304
        MOV X3,462
        MOV X4,308
    BL pintar_rectangulo

    LDR X8,=CIELO
        MOV X1,441
        MOV X2,309
        MOV X3,445
        MOV X4,320
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl aura3_sueloluz
aura3_sueloluz:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SUELO_LUZ
        MOV X1,158
        MOV X2,327
        MOV X3,162
        MOV X4,331
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,185
        MOV X2,327
        MOV X3,194
        MOV X4,331
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,195
        MOV X2,321
        MOV X3,208
        MOV X4,331
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,158
        MOV X2,332
        MOV X3,174
        MOV X4,341
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,158
        MOV X2,342
        MOV X3,185
        MOV X4,446
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,186
        MOV X2,342
        MOV X3,186
        MOV X4,352
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,186
        MOV X2,353
        MOV X3,197
        MOV X4,375
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,198
        MOV X2,364
        MOV X3,208
        MOV X4,375
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,186
        MOV X2,386
        MOV X3,196
        MOV X4,446
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,197
        MOV X2,397
        MOV X3,218
        MOV X4,446
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,219
        MOV X2,408
        MOV X3,249
        MOV X4,420
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,250
        MOV X2,411
        MOV X3,254
        MOV X4,416
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,219
        MOV X2,421
        MOV X3,243
        MOV X4,431
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,219
        MOV X2,432
        MOV X3,231
        MOV X4,446
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,232
        MOV X2,438
        MOV X3,260
        MOV X4,446
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,261
        MOV X2,432
        MOV X3,297
        MOV X4,446
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,265
        MOV X2,430
        MOV X3,297
        MOV X4,431
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,297
        MOV X2,420
        MOV X3,340
        MOV X4,423
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,298
        MOV X2,424
        MOV X3,340
        MOV X4,440
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,298
        MOV X2,441
        MOV X3,327
        MOV X4,445
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,298
        MOV X2,446
        MOV X3,316
        MOV X4,446
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,341
        MOV X2,430
        MOV X3,373
        MOV X4,440
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,343
        MOV X2,441
        MOV X3,373
        MOV X4,442
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,354
        MOV X2,443
        MOV X3,373
        MOV X4,444
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,363
        MOV X2,445
        MOV X3,373
        MOV X4,446
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,374
        MOV X2,432
        MOV X3,376
        MOV X4,446
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,377
        MOV X2,438
        MOV X3,474
        MOV X4,446
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,405
        MOV X2,413
        MOV X3,474
        MOV X4,437
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,383
        MOV X2,410
        MOV X3,384
        MOV X4,415
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,385
        MOV X2,409
        MOV X3,387
        MOV X4,418
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,388
        MOV X2,409
        MOV X3,393
        MOV X4,420
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,394
        MOV X2,409
        MOV X3,404
        MOV X4,431
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,405
        MOV X2,409
        MOV X3,417
        MOV X4,412
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,418
        MOV X2,396
        MOV X3,461
        MOV X4,412
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,462
        MOV X2,411
        MOV X3,467
        MOV X4,412
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,462
        MOV X2,396
        MOV X3,471
        MOV X4,404
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,472
        MOV X2,396
        MOV X3,474
        MOV X4,401
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,440
        MOV X2,386
        MOV X3,474
        MOV X4,395
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,452
        MOV X2,342
        MOV X3,474
        MOV X4,385
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,429
        MOV X2,364
        MOV X3,440
        MOV X4,375
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,441
        MOV X2,353
        MOV X3,451
        MOV X4,375
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,463
        MOV X2,331
        MOV X3,474
        MOV X4,341
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,474
        MOV X2,327
        MOV X3,474
        MOV X4,330
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,447
        MOV X2,327
        MOV X3,452
        MOV X4,331
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV X1,430
        MOV X2,321
        MOV X3,446
        MOV X4,331
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl aura3_suelosombraclara
aura3_suelosombraclara:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SUELO_SOMBRACLARA
        MOV X1,317
        MOV X2,446
        MOV X3,327
        MOV X4,446
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV X1,328
        MOV X2,441
        MOV X3,342
        MOV X4,446
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV X1,343
        MOV X2,443
        MOV X3,353
        MOV X4,446
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV X1,354
        MOV X2,445
        MOV X3,362
        MOV X4,446
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV X1,462
        MOV X2,405
        MOV X3,474
        MOV X4,410
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV X1,468
        MOV X2,411
        MOV X3,474
        MOV X4,412
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV X1,472
        MOV X2,402
        MOV X3,474
        MOV X4,404
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl aura3_montanadersombramedia
aura3_montanadersombramedia:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,468
        MOV X2,291
        MOV X3,474
        MOV X4,297
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,462
        MOV X2,298
        MOV X3,474
        MOV X4,303
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,463
        MOV X2,304
        MOV X3,474
        MOV X4,308
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,446
        MOV X2,309
        MOV X3,474
        MOV X4,320
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,464
        MOV X2,321
        MOV X3,474
        MOV X4,326
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl aura3_montanadersombraoscura
aura3_montanadersombraoscura:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=MONTANA_SOMBRAOSCURA
        MOV X1,447
        MOV X2,321
        MOV X3,463
        MOV X4,326
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl aura3_luz
aura3_luz:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    //LDR X8,=AURA_LUZ
        MOV X1,374
        MOV X2,419
        MOV X3,387
        MOV X4,431
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,377
        MOV X2,416
        MOV X3,384
        MOV X4,418
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,341
        MOV X2,420
        MOV X3,373
        MOV X4,429
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,297
        MOV X2,401
        MOV X3,376
        MOV X4,419
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,301
        MOV X2,396
        MOV X3,378
        MOV X4,400
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,301
        MOV X2,390
        MOV X3,342
        MOV X4,395
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,301
        MOV X2,384
        MOV X3,336
        MOV X4,389
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,301
        MOV X2,383
        MOV X3,306
        MOV X4,383
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,307
        MOV X2,371
        MOV X3,330
        MOV X4,383
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,313
        MOV X2,353
        MOV X3,330
        MOV X4,370
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,319
        MOV X2,341
        MOV X3,330
        MOV X4,352
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,325
        MOV X2,323
        MOV X3,330
        MOV X4,340
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,265
        MOV X2,401
        MOV X3,296
        MOV X4,429
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,297
        MOV X2,424
        MOV X3,297
        MOV X4,429
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,250
        MOV X2,417
        MOV X3,264
        MOV X4,431
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,261
        MOV X2,411
        MOV X3,264
        MOV X4,416
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,250
        MOV X2,408
        MOV X3,264
        MOV X4,410
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,219
        MOV X2,371
        MOV X3,264
        MOV X4,407
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,197
        MOV X2,376
        MOV X3,218
        MOV X4,296
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,186
        MOV X2,376
        MOV X3,196
        MOV X4,385
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,277
        MOV X2,323
        MOV X3,282
        MOV X4,334
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,271
        MOV X2,323
        MOV X3,276
        MOV X4,352
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,219
        MOV X2,317
        MOV X3,270
        MOV X4,370
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,209
        MOV X2,320
        MOV X3,218
        MOV X4,375
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,198
        MOV X2,332
        MOV X3,208
        MOV X4,363
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,187
        MOV X2,332
        MOV X3,197
        MOV X4,352
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,175
        MOV X2,332
        MOV X3,186
        MOV X4,341
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,163
        MOV X2,321
        MOV X3,184
        MOV X4,331
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,163
        MOV X2,319
        MOV X3,174
        MOV X4,320
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,219
        MOV X2,311
        MOV X3,258
        MOV X4,316
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,219
        MOV X2,278
        MOV X3,252
        MOV X4,310
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,197
        MOV X2,278
        MOV X3,218
        MOV X4,319
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,186
        MOV X2,267
        MOV X3,196
        MOV X4,298
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,183
        MOV X2,267
        MOV X3,185
        MOV X4,288
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,183
        MOV X2,256
        MOV X3,184
        MOV X4,266
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,176
        MOV X2,256
        MOV X3,182
        MOV X4,279
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,174
        MOV X2,256
        MOV X3,175
        MOV X4,265
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,164
        MOV X2,253
        MOV X3,173
        MOV X4,265
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,197
        MOV X2,146
        MOV X3,208
        MOV X4,246
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,206
        MOV X2,247
        MOV X3,208
        MOV X4,254
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,209
        MOV X2,169
        MOV X3,210
        MOV X4,176
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,209
        MOV X2,177
        MOV X3,218
        MOV X4,189
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,209
        MOV X2,190
        MOV X3,252
        MOV X4,277
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,253
        MOV X2,233
        MOV X3,258
        MOV X4,250
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,253
        MOV X2,221
        MOV X3,264
        MOV X4,232
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,253
        MOV X2,215
        MOV X3,270
        MOV X4,220
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,253
        MOV X2,209
        MOV X3,276
        MOV X4,214
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,253
        MOV X2,203
        MOV X3,289
        MOV X4,208
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,253
        MOV X2,197
        MOV X3,295
        MOV X4,202
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,253
        MOV X2,195
        MOV X3,283
        MOV X4,196
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,253
        MOV X2,193
        MOV X3,279
        MOV X4,194
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,253
        MOV X2,188
        MOV X3,275
        MOV X4,192
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,253
        MOV X2,186
        MOV X3,280
        MOV X4,187
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,253
        MOV X2,184
        MOV X3,275
        MOV X4,185
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,253
        MOV X2,182
        MOV X3,270
        MOV X4,183
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,253
        MOV X2,176
        MOV X3,267
        MOV X4,181
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,253
        MOV X2,170
        MOV X3,265
        MOV X4,175
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,253
        MOV X2,162
        MOV X3,263
        MOV X4,169
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,270
        MOV X2,162
        MOV X3,273
        MOV X4,163
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,253
        MOV X2,158
        MOV X3,273
        MOV X4,161
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,253
        MOV X2,152
        MOV X3,269
        MOV X4,157
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,253
        MOV X2,141
        MOV X3,265
        MOV X4,151
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,253
        MOV X2,131
        MOV X3,261
        MOV X4,140
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,253
        MOV X2,100
        MOV X3,259
        MOV X4,130
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,230
        MOV X2,100
        MOV X3,252
        MOV X4,189
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,239
        MOV X2,78
        MOV X3,252
        MOV X4,99
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,275
        MOV X2,112
        MOV X3,278
        MOV X4,114
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,271
        MOV X2,108
        MOV X3,278
        MOV X4,111
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,266
        MOV X2,106
        MOV X3,278
        MOV X4,107
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,260
        MOV X2,100
        MOV X3,278
        MOV X4,105
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,273
        MOV X2,93
        MOV X3,273
        MOV X4,99
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,274
        MOV X2,59
        MOV X3,278
        MOV X4,99
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,279
        MOV X2,59
        MOV X3,280
        MOV X4,92
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,281
        MOV X2,59
        MOV X3,282
        MOV X4,84
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,283
        MOV X2,59
        MOV X3,286
        MOV X4,80
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,287
        MOV X2,59
        MOV X3,292
        MOV X4,76
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,293
        MOV X2,41
        MOV X3,296
        MOV X4,80
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,297
        MOV X2,41
        MOV X3,302
        MOV X4,84
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,303
        MOV X2,41
        MOV X3,308
        MOV X4,88
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,309
        MOV X2,41
        MOV X3,314
        MOV X4,90
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,315
        MOV X2,41
        MOV X3,319
        MOV X4,77
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,320
        MOV X2,41
        MOV X3,326
        MOV X4,81
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,325
        MOV X2,82
        MOV X3,326
        MOV X4,82
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,325
        MOV X2,83
        MOV X3,328
        MOV X4,85
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,327
        MOV X2,41
        MOV X3,332
        MOV X4,74
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,306
        MOV X2,37
        MOV X3,331
        MOV X4,40
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,308
        MOV X2,24
        MOV X3,330
        MOV X4,36
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,317
        MOV X2,13
        MOV X3,330
        MOV X4,23
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,244
        MOV X2,244
        MOV X3,253
        MOV X4,314
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,295
        MOV X2,251
        MOV X3,300
        MOV X4,256
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,289
        MOV X2,257
        MOV X3,306
        MOV X4,274
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,283
        MOV X2,269
        MOV X3,300
        MOV X4,286
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,289
        MOV X2,287
        MOV X3,294
        MOV X4,292
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,333
        MOV X2,45
        MOV X3,338
        MOV X4,76
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,339
        MOV X2,45
        MOV X3,342
        MOV X4,80
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,343
        MOV X2,45
        MOV X3,346
        MOV X4,84
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,347
        MOV X2,51
        MOV X3,350
        MOV X4,88
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,351
        MOV X2,51
        MOV X3,354
        MOV X4,92
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,355
        MOV X2,51
        MOV X3,358
        MOV X4,98
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,359
        MOV X2,56
        MOV X3,361
        MOV X4,106
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,362
        MOV X2,56
        MOV X3,362
        MOV X4,91
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,362
        MOV X2,92
        MOV X3,363
        MOV X4,93
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,362
        MOV X2,94
        MOV X3,365
        MOV X4,102
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,366
        MOV X2,94
        MOV X3,371
        MOV X4,100
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,372
        MOV X2,100
        MOV X3,376
        MOV X4,110
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,385
        MOV X2,78
        MOV X3,398
        MOV X4,104
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,399
        MOV X2,101
        MOV X3,406
        MOV X4,120
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,374
        MOV X2,111
        MOV X3,377
        MOV X4,122
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,378
        MOV X2,105
        MOV X3,385
        MOV X4,120
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,386
        MOV X2,105
        MOV X3,398
        MOV X4,120
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,386
        MOV X2,121
        MOV X3,406
        MOV X4,130
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,384
        MOV X2,131
        MOV X3,406
        MOV X4,138
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,380
        MOV X2,139
        MOV X3,406
        MOV X4,142
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,376
        MOV X2,143
        MOV X3,406
        MOV X4,144
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,378
        MOV X2,145
        MOV X3,406
        MOV X4,184
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,376
        MOV X2,185
        MOV X3,406
        MOV X4,193
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,373
        MOV X2,194
        MOV X3,406
        MOV X4,197
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,371
        MOV X2,198
        MOV X3,406
        MOV X4,203
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,368
        MOV X2,204
        MOV X3,406
        MOV X4,206
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,362
        MOV X2,207
        MOV X3,406
        MOV X4,214
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,356
        MOV X2,203
        MOV X3,361
        MOV X4,208
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,350
        MOV X2,209
        MOV X3,361
        MOV X4,214
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,361
        MOV X2,215
        MOV X3,406
        MOV X4,220
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,367
        MOV X2,221
        MOV X3,406
        MOV X4,238
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,373
        MOV X2,239
        MOV X3,406
        MOV X4,268
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,407
        MOV X2,255
        MOV X3,429
        MOV X4,268
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,407
        MOV X2,247
        MOV X3,432
        MOV X4,254
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,407
        MOV X2,189
        MOV X3,440
        MOV X4,246
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,419
        MOV X2,177
        MOV X3,440
        MOV X4,188
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,428
        MOV X2,167
        MOV X3,443
        MOV X4,179
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,430
        MOV X2,154
        MOV X3,443
        MOV X4,166
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,367
        MOV X2,269
        MOV X3,406
        MOV X4,274
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,373
        MOV X2,275
        MOV X3,406
        MOV X4,286
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,379
        MOV X2,287
        MOV X3,406
        MOV X4,310
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,373
        MOV X2,311
        MOV X3,406
        MOV X4,316
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,407
        MOV X2,269
        MOV X3,429
        MOV X4,316
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,430
        MOV X2,278
        MOV X3,440
        MOV X4,320
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,441
        MOV X2,266
        MOV X3,451
        MOV X4,298
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,452
        MOV X2,255
        MOV X3,462
        MOV X4,279
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,462
        MOV X2,253
        MOV X3,473
        MOV X4,265
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,452
        MOV X2,274
        MOV X3,454
        MOV X4,288
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,367
        MOV X2,317
        MOV X3,429
        MOV X4,324
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,361
        MOV X2,325
        MOV X3,406
        MOV X4,330
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,367
        MOV X2,331
        MOV X3,406
        MOV X4,377
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,373
        MOV X2,378
        MOV X3,406
        MOV X4,383
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,379
        MOV X2,384
        MOV X3,406
        MOV X4,395
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,373
        MOV X2,396
        MOV X3,384
        MOV X4,409
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,385
        MOV X2,396
        MOV X3,417
        MOV X4,408
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,407
        MOV X2,386
        MOV X3,439
        MOV X4,395
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,407
        MOV X2,376
        MOV X3,451
        MOV X4,385
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,407
        MOV X2,339
        MOV X3,428
        MOV X4,375
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,407
        MOV X2,325
        MOV X3,429
        MOV X4,338
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,429
        MOV X2,332
        MOV X3,440
        MOV X4,363
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,441
        MOV X2,332
        MOV X3,451
        MOV X4,352
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,452
        MOV X2,332
        MOV X3,462
        MOV X4,341
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,453
        MOV X2,322
        MOV X3,462
        MOV X4,331
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,459
        MOV X2,322
        MOV X3,468
        MOV X4,330
    BL pintar_rectangulo

    //LDR X8,=AURA_LUZ
        MOV X1,464
        MOV X2,319
        MOV X3,473
        MOV X4,330
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,379
        MOV X2,380
        MOV X3,382
        MOV X4,399
    BL pintar_rectangulo

    // LDR,X8,=AURA_LUZ
        MOV X1,378
        MOV X2,376
        MOV X3,439
        MOV X4,395
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl aura3_destello
aura3_destello:
    STR X8,[SP,-8]!
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X30,[SP,-8]!
    
    MOV X8,X9
    
    //LDR X8,=AURA_REFLEJOS
        MOV X1,232
        MOV X2,432
        MOV X3,260
        MOV X4,437
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,244
        MOV X2,421
        MOV X3,249
        MOV X4,431
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,255
        MOV X2,411
        MOV X3,260
        MOV X4,416
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,167
        MOV X2,313
        MOV X3,172
        MOV X4,318
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,211
        MOV X2,280
        MOV X3,216
        MOV X4,285
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,177
        MOV X2,280
        MOV X3,182
        MOV X4,285
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,166
        MOV X2,247
        MOV X3,171
        MOV X4,252
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,200
        MOV X2,247
        MOV X3,205
        MOV X4,252
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,211
        MOV X2,171
        MOV X3,216
        MOV X4,176
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,233
        MOV X2,83
        MOV X3,238
        MOV X4,99
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,244
        MOV X2,62
        MOV X3,249
        MOV X4,77
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,266
        MOV X2,94
        MOV X3,272
        MOV X4,99
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,288
        MOV X2,41
        MOV X3,293
        MOV X4,66
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,294
        MOV X2,41
        MOV X3,305
        MOV X4,46
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,311
        MOV X2,18
        MOV X3,316
        MOV X4,23
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,322
        MOV X2,7
        MOV X3,327
        MOV X4,12
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,332
        MOV X2,41
        MOV X3,349
        MOV X4,46
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,344
        MOV X2,45
        MOV X3,349
        MOV X4,68
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,348
        MOV X2,50
        MOV X3,360
        MOV X4,55
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,366
        MOV X2,94
        MOV X3,371
        MOV X4,99
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,377
        MOV X2,105
        MOV X3,382
        MOV X4,110
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,388
        MOV X2,62
        MOV X3,393
        MOV X4,77
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,392
        MOV X2,72
        MOV X3,404
        MOV X4,77
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,399
        MOV X2,76
        MOV X3,404
        MOV X4,100
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,422
        MOV X2,171
        MOV X3,427
        MOV X4,176
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,444
        MOV X2,116
        MOV X3,449
        MOV X4,174
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,432
        MOV X2,148
        MOV X3,445
        MOV X4,153
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,433
        MOV X2,247
        MOV X3,438
        MOV X4,252
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,422
        MOV X2,280
        MOV X3,427
        MOV X4,285
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,466
        MOV X2,235
        MOV X3,471
        MOV X4,252
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,455
        MOV X2,280
        MOV X3,460
        MOV X4,285
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,466
        MOV X2,313
        MOV X3,471
        MOV X4,318
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,377
        MOV X2,410
        MOV X3,382
        MOV X4,415
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,377
        MOV X2,432
        MOV X3,404
        MOV X4,437
    BL pintar_rectangulo

    //LDR X8,=AURA_REFLEJOS
        MOV X1,388
        MOV X2,421
        MOV X3,393
        MOV X4,433
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
.globl Aura1
Aura1:
    STR X30,[SP,-8]!

    BL aura1_cielo
	BL aura1_sueloluz
	BL aura1_suelosombraclara
	BL aura1_montanadersombramedia
	BL aura1_montanadersombraoscura
    BL aura1_luz
    BL aura1_destello
	BL Ojo_FULL
	BL Pelo_FULL
	BL Ceja

    LDR X30,[SP],8
RET

.globl Aura2
Aura2:
    STR X30,[SP,-8]!

    BL aura2_cielo
    BL aura2_sueloluz
    BL aura2_suelosombraclara
    BL aura2_montanadersombramedia
    BL aura2_montanadersombraoscura
    BL aura2_luz
    BL aura2_destello
    BL Ojo_FULL
	BL Pelo_FULL
	BL Ceja

    LDR X30,[SP],8
RET

.globl Aura3
Aura3:
    STR X30,[SP,-8]!

    BL aura3_cielo
    BL aura3_sueloluz
    BL aura3_suelosombraclara
    BL aura3_montanadersombramedia
    BL aura3_montanadersombraoscura
    BL aura3_luz
    BL aura3_destello
    BL Ojo_FULL
	BL Pelo_FULL
	BL Ceja

    LDR X30,[SP],8
RET
