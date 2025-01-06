.include "colores.s"
.section .text
/*
                                ╔══════════════════════════════════════════════════════════════════════╗
                                ║                                 ÍNDICE                               ║
                                ╚══════════════════════════════════════════════════════════════════════╝
                                1. Montaña izquierda
                                    ├── 1.1) Montanaizq_luz ···································· l: 32
                                    ├── 1.2) Montanaizq_sombraclara ···························· l: 162
                                    ├── 1.3) Montanaizq_sombramedia ···························· l: 327
                                    ├── 1.4) Montanaizq_sombraoscura ··························· l: 555
                                    ├── 1.5) Montanaizq_cespedclaro ···························· l: 643
                                    └── 1.6) Montanaizq_cespedoscuro ··························· l: 738
                                                 
                                2. Montaña derecha
                                    ├── 2.1) Montanader_luz ···································· l: 796
                                    ├── 2.2) Montanader_sombraclara ···························· l: 905
                                    ├── 2.3) Montanader_sombramedia ···························· l: 1315
                                    ├── 2.4) Montanader_sombraoscura ··························· l: 1508
                                    ├── 2.5) Montanader_cespedclaro ···························· l: 1582
                                    └── 2.6) Montanader_cespedoscuro ··························· l: 1754

                                3. Modularizaciones
                                    └── 3.1) Montana_FULL ····································· l: 1861
*/

/*
╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
║                                                    MONTAÑA IZQUIERDA                                                   ║
╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
*/
.globl Montanaizq_luz
Montanaizq_luz:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=MONTANA_LUZ
        MOV X1,0
        MOV X2,0
        MOV X3,39
        MOV X4,355
    BL pintar_rectangulo

    LDR X8,=MONTANA_LUZ
        MOV X1,40
        MOV X2,0
        MOV X3,49
        MOV X4,178
    BL pintar_rectangulo
    
    LDR X8,=MONTANA_LUZ
        MOV X1,50
        MOV X2,0
        MOV X3,56
        MOV X4,169
    BL pintar_rectangulo

    LDR X8,=MONTANA_LUZ
        MOV X1,57
        MOV X2,0
        MOV X3,62
        MOV X4,137
    BL pintar_rectangulo

    LDR X8,=MONTANA_LUZ
        MOV X1,63
        MOV X2,48
        MOV X3,68
        MOV X4,116
    BL pintar_rectangulo

    LDR X8,=MONTANA_LUZ
        MOV X1,69
        MOV X2,67
        MOV X3,72
        MOV X4,116
    BL pintar_rectangulo

    LDR X8,=MONTANA_LUZ
        MOV X1,63
        MOV X2,117
        MOV X3,63
        MOV X4,137
    BL pintar_rectangulo

    LDR X8,=MONTANA_LUZ
        MOV X1,40
        MOV X2,268
        MOV X3,44
        MOV X4,347
    BL pintar_rectangulo

    LDR X8,=MONTANA_LUZ
        MOV X1,45
        MOV X2,276
        MOV X3,50
        MOV X4,342
    BL pintar_rectangulo

    LDR X8,=MONTANA_LUZ
        MOV X1,51
        MOV X2,284
        MOV X3,60
        MOV X4,342
    BL pintar_rectangulo

    LDR X8,=MONTANA_LUZ
        MOV X1,61
        MOV X2,288
        MOV X3,72
        MOV X4,342
    BL pintar_rectangulo

    LDR X8,=MONTANA_LUZ
        MOV X1,73
        MOV X2,294
        MOV X3,82
        MOV X4,342
    BL pintar_rectangulo

    LDR X8,=MONTANA_LUZ
        MOV X1,83
        MOV X2,300
        MOV X3,91
        MOV X4,336
    BL pintar_rectangulo

    LDR X8,=MONTANA_LUZ
        MOV X1,92
        MOV X2,308
        MOV X3,102
        MOV X4,336
    BL pintar_rectangulo

    LDR X8,=MONTANA_LUZ
        MOV X1,103
        MOV X2,319
        MOV X3,109
        MOV X4,336
    BL pintar_rectangulo

    LDR X8,=MONTANA_LUZ
        MOV X1,110
        MOV X2,326
        MOV X3,118
        MOV X4,336
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Montanaizq_sombraclara
Montanaizq_sombraclara:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,0
        MOV X2,32
        MOV X3,8
        MOV X4,51
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,6
        MOV X2,41
        MOV X3,16
        MOV X4,72
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,10
        MOV X2,61
        MOV X3,23
        MOV X4,97
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,17
        MOV X2,89
        MOV X3,36
        MOV X4,141
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,25
        MOV X2,119
        MOV X3,49
        MOV X4,163
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,25
        MOV X2,164
        MOV X3,33
        MOV X4,178
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,0
        MOV X2,190
        MOV X3,4
        MOV X4,327
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,5
        MOV X2,213
        MOV X3,7
        MOV X4,327
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,8
        MOV X2,241
        MOV X3,13
        MOV X4,254
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,8
        MOV X2,268
        MOV X3,14
        MOV X4,278
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,8
        MOV X2,279
        MOV X3,18
        MOV X4,288
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,8
        MOV X2,289
        MOV X3,21
        MOV X4,306
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,8
        MOV X2,307
        MOV X3,17
        MOV X4,315
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,8
        MOV X2,316
        MOV X3,11
        MOV X4,327
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,26
        MOV X2,15
        MOV X3,33
        MOV X4,23
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,30
        MOV X2,12
        MOV X3,33
        MOV X4,14
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,24
        MOV X2,22
        MOV X3,25
        MOV X4,30
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,45
        MOV X2,44
        MOV X3,48
        MOV X4,47
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,47
        MOV X2,48
        MOV X3,48
        MOV X4,62
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,42
        MOV X2,58
        MOV X3,48
        MOV X4,62
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,0
        MOV X2,52
        MOV X3,5
        MOV X4,72
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Montanaizq_sombramedia
Montanaizq_sombramedia:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,0
        MOV X2,52
        MOV X3,5
        MOV X4,72
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,0
        MOV X2,73
        MOV X3,9
        MOV X4,97
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,0
        MOV X2,98
        MOV X3,16
        MOV X4,141
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,0
        MOV X2,142
        MOV X3,24
        MOV X4,162
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,0
        MOV X2,163
        MOV X3,20
        MOV X4,178
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,7
        MOV X2,179
        MOV X3,33
        MOV X4,240
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,5
        MOV X2,194
        MOV X3,8
        MOV X4,212
    BL pintar_rectangulo
    
    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,7
        MOV X2,181
        MOV X3,8
        MOV X4,193
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,0
        MOV X2,179
        MOV X3,2
        MOV X4,189
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,14
        MOV X2,241
        MOV X3,33
        MOV X4,254
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,8
        MOV X2,255
        MOV X3,33
        MOV X4,267
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,15
        MOV X2,268
        MOV X3,33
        MOV X4,278
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,19
        MOV X2,278
        MOV X3,36
        MOV X4,288
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,22
        MOV X2,289
        MOV X3,36
        MOV X4,347
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,37
        MOV X2,291
        MOV X3,42
        MOV X4,300
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,37
        MOV X2,301
        MOV X3,51
        MOV X4,304
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,37
        MOV X2,305
        MOV X3,59
        MOV X4,310
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,37
        MOV X2,311
        MOV X3,66
        MOV X4,315
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,37
        MOV X2,316
        MOV X3,72
        MOV X4,320
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,37
        MOV X2,321
        MOV X3,86
        MOV X4,328
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,37
        MOV X2,329
        MOV X3,93
        MOV X4,336
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,37
        MOV X2,337
        MOV X3,81
        MOV X4,342
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,37
        MOV X2,343
        MOV X3,44
        MOV X4,347
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,18
        MOV X2,307
        MOV X3,21
        MOV X4,315
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,12
        MOV X2,316
        MOV X3,21
        MOV X4,327
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,0
        MOV X2,328
        MOV X3,21
        MOV X4,331
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,0
        MOV X2,332
        MOV X3,7
        MOV X4,336
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,0
        MOV X2,337
        MOV X3,10
        MOV X4,340
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,20
        MOV X2,332
        MOV X3,21
        MOV X4,347
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,26
        MOV X2,15
        MOV X3,29
        MOV X4,21
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Montanaizq_sombraoscura
Montanaizq_sombraoscura:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=MONTANA_SOMBRAOSCURA
        MOV X1,0
        MOV X2,341
        MOV X3,19
        MOV X4,347
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAOSCURA
        MOV X1,0
        MOV X2,348
        MOV X3,18
        MOV X4,352
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAOSCURA
        MOV X1,11
        MOV X2,337
        MOV X3,19
        MOV X4,340
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAOSCURA
        MOV X1,8
        MOV X2,332
        MOV X3,19
        MOV X4,336
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAOSCURA
        MOV X1,0
        MOV X2,341
        MOV X3,19
        MOV X4,347
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAOSCURA
        MOV X1,21
        MOV X2,163
        MOV X3,24
        MOV X4,178
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAOSCURA
        MOV X1,3
        MOV X2,179
        MOV X3,6
        MOV X4,189
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAOSCURA
        MOV X1,5
        MOV X2,190
        MOV X3,6
        MOV X4,193
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAOSCURA
        MOV X1,7
        MOV X2,179
        MOV X3,8
        MOV X4,180
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAOSCURA
        MOV X1,28
        MOV X2,17
        MOV X3,29
        MOV X4,21
    BL pintar_rectangulo
    
    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Montanaizq_cespedclaro
Montanaizq_cespedclaro:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=CESPED_CLARO_MONTANA
        MOV X1,40
        MOV X2,266
        MOV X3,46
        MOV X4,267
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_MONTANA
        MOV X1,45
        MOV X2,272
        MOV X3,50
        MOV X4,275
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_MONTANA
        MOV X1,45
        MOV X2,268
        MOV X3,46
        MOV X4,271
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_MONTANA
        MOV X1,61
        MOV X2,284
        MOV X3,74
        MOV X4,287
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_MONTANA
        MOV X1,73
        MOV X2,290
        MOV X3,84
        MOV X4,293
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_MONTANA
        MOV X1,83
        MOV X2,298
        MOV X3,91
        MOV X4,299
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_MONTANA
        MOV X1,73
        MOV X2,288
        MOV X3,74
        MOV X4,289
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_MONTANA
        MOV X1,83
        MOV X2,294
        MOV X3,84
        MOV X4,297
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_MONTANA
        MOV X1,63
        MOV X2,41
        MOV X3,68
        MOV X4,47
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_MONTANA
        MOV X1,67
        MOV X2,61
        MOV X3,72
        MOV X4,66
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_MONTANA
        MOV X1,67
        MOV X2,48
        MOV X3,68
        MOV X4,60
    BL pintar_rectangulo
    
    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Montanaizq_cespedoscuro
Montanaizq_cespedoscuro:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=CESPED_OSCURO
        MOV X1,43
        MOV X2,299
        MOV X3,53
        MOV X4,300
    BL pintar_rectangulo

    LDR X8,=CESPED_OSCURO
        MOV X1,52
        MOV X2,301
        MOV X3,53
        MOV X4,304
    BL pintar_rectangulo

    LDR X8,=CESPED_OSCURO
        MOV X1,54
        MOV X2,303
        MOV X3,61
        MOV X4,304
    BL pintar_rectangulo

    LDR X8,=CESPED_OSCURO
        MOV X1,60
        MOV X2,305
        MOV X3,61
        MOV X4,310
    BL pintar_rectangulo

    LDR X8,=CESPED_OSCURO
        MOV X1,62
        MOV X2,309
        MOV X3,66
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
║                                                     MONTAÑA DERECHA                                                    ║
╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
*/
.globl Montanader_luz
Montanader_luz:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=MONTANA_LUZ
        MOV X1,518
        MOV X2,77
        MOV X3,623
        MOV X4,353
    BL pintar_rectangulo
    
    LDR X8,=MONTANA_LUZ
        MOV X1,537
        MOV X2,71
        MOV X3,552
        MOV X4,76
    BL pintar_rectangulo

    LDR X8,=MONTANA_LUZ
        MOV X1,553
        MOV X2,65
        MOV X3,571
        MOV X4,76
    BL pintar_rectangulo

    LDR X8,=MONTANA_LUZ
        MOV X1,572
        MOV X2,62
        MOV X3,586
        MOV X4,76
    BL pintar_rectangulo

    LDR X8,=MONTANA_LUZ
        MOV X1,587
        MOV X2,60
        MOV X3,588
        MOV X4,76
    BL pintar_rectangulo

    LDR X8,=MONTANA_LUZ
        MOV X1,589
        MOV X2,58
        MOV X3,617
        MOV X4,76
    BL pintar_rectangulo

    LDR X8,=MONTANA_LUZ
        MOV X1,618
        MOV X2,56
        MOV X3,626
        MOV X4,234
    BL pintar_rectangulo

    LDR X8,=MONTANA_LUZ
        MOV X1,627
        MOV X2,61
        MOV X3,633
        MOV X4,191
    BL pintar_rectangulo

    LDR X8,=MONTANA_LUZ
        MOV X1,634
        MOV X2,70
        MOV X3,640
        MOV X4,178
    BL pintar_rectangulo

    LDR X8,=MONTANA_LUZ
        MOV X1,627
        MOV X2,192
        MOV X3,629
        MOV X4,204
    BL pintar_rectangulo

    LDR X8,=MONTANA_LUZ
        MOV X1,624
        MOV X2,284
        MOV X3,626
        MOV X4,317
    BL pintar_rectangulo

    LDR X8,=MONTANA_LUZ
        MOV X1,624
        MOV X2,318
        MOV X3,628
        MOV X4,327
    BL pintar_rectangulo

    LDR X8,=MONTANA_LUZ
        MOV X1,624
        MOV X2,328
        MOV X3,640
        MOV X4,339
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Montanader_sombraclara
Montanader_sombraclara:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,531
        MOV X2,220
        MOV X3,594
        MOV X4,312
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,565
        MOV X2,313
        MOV X3,598
        MOV X4,342
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,597
        MOV X2,340
        MOV X3,640
        MOV X4,347
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,623
        MOV X2,348
        MOV X3,640
        MOV X4,352
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,534
        MOV X2,152
        MOV X3,564
        MOV X4,219
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,576
        MOV X2,153
        MOV X3,602
        MOV X4,205
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,599
        MOV X2,315
        MOV X3,603
        MOV X4,322
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,599
        MOV X2,323
        MOV X3,608
        MOV X4,339
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,603
        MOV X2,331
        MOV X3,615
        MOV X4,339
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,616
        MOV X2,335
        MOV X3,623
        MOV X4,339
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,595
        MOV X2,306
        MOV X3,598
        MOV X4,312
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,543
        MOV X2,313
        MOV X3,564
        MOV X4,317
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,551
        MOV X2,318
        MOV X3,564
        MOV X4,321
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,558
        MOV X2,322
        MOV X3,564
        MOV X4,327
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,527
        MOV X2,252
        MOV X3,530
        MOV X4,274
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,524
        MOV X2,275
        MOV X3,530
        MOV X4,295
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,521
        MOV X2,296
        MOV X3,530
        MOV X4,302
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,523
        MOV X2,303
        MOV X3,530
        MOV X4,306
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,531
        MOV X2,216
        MOV X3,533
        MOV X4,219
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,593
        MOV X2,204
        MOV X3,600
        MOV X4,278
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,563
        MOV X2,194
        MOV X3,603
        MOV X4,205
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,591
        MOV X2,206
        MOV X3,603
        MOV X4,213
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,601
        MOV X2,214
        MOV X3,603
        MOV X4,233
    BL pintar_rectangulo
    
    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,603
        MOV X2,175
        MOV X3,606
        MOV X4,195
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,565
        MOV X2,213
        MOV X3,570
        MOV X4,219
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,571
        MOV X2,214
        MOV X3,579
        MOV X4,219
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,580
        MOV X2,216
        MOV X3,581
        MOV X4,219
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,565
        MOV X2,158
        MOV X3,573
        MOV X4,193
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,565
        MOV X2,152
        MOV X3,566
        MOV X4,157
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,530
        MOV X2,181
        MOV X3,533
        MOV X4,184
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,526
        MOV X2,176
        MOV X3,533
        MOV X4,180
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,524
        MOV X2,171
        MOV X3,533
        MOV X4,175
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,528
        MOV X2,167
        MOV X3,533
        MOV X4,170
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,530
        MOV X2,163
        MOV X3,533
        MOV X4,166
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,532
        MOV X2,161
        MOV X3,533
        MOV X4,162
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,530
        MOV X2,124
        MOV X3,558
        MOV X4,151
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,576
        MOV X2,125
        MOV X3,595
        MOV X4,152
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,509
        MOV X2,90
        MOV X3,529
        MOV X4,146
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,501
        MOV X2,99
        MOV X3,508
        MOV X4,129
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,513
        MOV X2,77
        MOV X3,536
        MOV X4,89
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,530
        MOV X2,85
        MOV X3,551
        MOV X4,111
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,557
        MOV X2,101
        MOV X3,586
        MOV X4,145
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,555
        MOV X2,99
        MOV X3,574
        MOV X4,116
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,530
        MOV X2,121
        MOV X3,554
        MOV X4,154
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,528
        MOV X2,116
        MOV X3,550
        MOV X4,149
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,508
        MOV X2,90
        MOV X3,546
        MOV X4,115
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,552
        MOV X2,92
        MOV X3,564
        MOV X4,111
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,571
        MOV X2,113
        MOV X3,590
        MOV X4,151
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,614
        MOV X2,90
        MOV X3,617
        MOV X4,104
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,618
        MOV X2,101
        MOV X3,621
        MOV X4,109
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,622
        MOV X2,104
        MOV X3,625
        MOV X4,109
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,624
        MOV X2,110
        MOV X3,625
        MOV X4,114
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,618
        MOV X2,155
        MOV X3,628
        MOV X4,160
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,629
        MOV X2,157
        MOV X3,635
        MOV X4,160
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,621
        MOV X2,153
        MOV X3,624
        MOV X4,154
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRACLARA
        MOV X1,636
        MOV X2,157
        MOV X3,637
        MOV X4,158
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Montanader_sombramedia
Montanader_sombramedia:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,504
        MOV X2,171
        MOV X3,523
        MOV X4,295
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,488
        MOV X2,234
        MOV X3,520
        MOV X4,326
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,483
        MOV X2,252
        MOV X3,526
        MOV X4,274
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,477
        MOV X2,275
        MOV X3,487
        MOV X4,326
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,468
        MOV X2,291
        MOV X3,476
        MOV X4,326
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,446
        MOV X2,309
        MOV X3,528
        MOV X4,326
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,489
        MOV X2,316
        MOV X3,540
        MOV X4,331
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,522
        MOV X2,320
        MOV X3,548
        MOV X4,336
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,533
        MOV X2,324
        MOV X3,557
        MOV X4,336
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,558
        MOV X2,328
        MOV X3,564
        MOV X4,336
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,560
        MOV X2,337
        MOV X3,564
        MOV X4,342
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,462
        MOV X2,299
        MOV X3,467
        MOV X4,303
    BL pintar_rectangulo
    
    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,463
        MOV X2,303
        MOV X3,522
        MOV X4,308
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,495
        MOV X2,202
        MOV X3,530
        MOV X4,251
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,560
        MOV X2,337
        MOV X3,564
        MOV X4,342
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,499
        MOV X2,185
        MOV X3,533
        MOV X4,215
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,518
        MOV X2,149
        MOV X3,525
        MOV X4,170
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,509
        MOV X2,149
        MOV X3,517
        MOV X4,154
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,526
        MOV X2,152
        MOV X3,527
        MOV X4,170
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,528
        MOV X2,155
        MOV X3,529
        MOV X4,166
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,530
        MOV X2,157
        MOV X3,531
        MOV X4,162
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,532
        MOV X2,157
        MOV X3,533
        MOV X4,160
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,524
        MOV X2,176
        MOV X3,525
        MOV X4,184
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,526
        MOV X2,181
        MOV X3,529
        MOV X4,184
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAMEDIA
        MOV X1,499
        MOV X2,184
        MOV X3,503
        MOV X4,184
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Montanader_sombraoscura
Montanader_sombraoscura:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=MONTANA_SOMBRAOSCURA
        MOV X1,446
        MOV X2,321
        MOV X3,467
        MOV X4,326
    BL pintar_rectangulo
    
    LDR X8,=MONTANA_SOMBRAOSCURA
        MOV X1,466
        MOV X2,318
        MOV X3,467
        MOV X4,320
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAOSCURA
        MOV X1,500
        MOV X2,259
        MOV X3,501
        MOV X4,269
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAOSCURA
        MOV X1,502
        MOV X2,259
        MOV X3,503
        MOV X4,260
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAOSCURA
        MOV X1,614
        MOV X2,103
        MOV X3,619
        MOV X4,104
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAOSCURA
        MOV X1,618
        MOV X2,105
        MOV X3,619
        MOV X4,109
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAOSCURA
        MOV X1,620
        MOV X2,108
        MOV X3,623
        MOV X4,109
    BL pintar_rectangulo

    LDR X8,=MONTANA_SOMBRAOSCURA
        MOV X1,618
        MOV X2,159
        MOV X3,619
        MOV X4,160
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Montanader_cespedclaro
Montanader_cespedclaro:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=CESPED_CLARO_MONTANA
        MOV X1,565
        MOV X2,206
        MOV X3,590
        MOV X4,207
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_MONTANA
        MOV X1,589
        MOV X2,208
        MOV X3,590
        MOV X4,215
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_MONTANA
        MOV X1,589
        MOV X2,214
        MOV X3,592
        MOV X4,215
    BL pintar_rectangulo
    
    LDR X8,=CESPED_CLARO_MONTANA
        MOV X1,559
        MOV X2,146
        MOV X3,570
        MOV X4,147
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_MONTANA
        MOV X1,569
        MOV X2,148
        MOV X3,570
        MOV X4,153
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_MONTANA
        MOV X1,571
        MOV X2,152
        MOV X3,575
        MOV X4,153
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_MONTANA
        MOV X1,547
        MOV X2,112
        MOV X3,554
        MOV X4,113
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_MONTANA
        MOV X1,553
        MOV X2,114
        MOV X3,554
        MOV X4,118
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_MONTANA
        MOV X1,555
        MOV X2,117
        MOV X3,556
        MOV X4,118
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_MONTANA
        MOV X1,513
        MOV X2,74
        MOV X3,536
        MOV X4,76
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_MONTANA
        MOV X1,535
        MOV X2,67
        MOV X3,552
        MOV X4,70
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_MONTANA
        MOV X1,551
        MOV X2,62
        MOV X3,571
        MOV X4,64
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_MONTANA
        MOV X1,570
        MOV X2,58
        MOV X3,586
        MOV X4,61
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_MONTANA
        MOV X1,587
        MOV X2,54
        MOV X3,617
        MOV X4,57
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_MONTANA
        MOV X1,604
        MOV X2,52
        MOV X3,628
        MOV X4,55
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_MONTANA
        MOV X1,627
        MOV X2,59
        MOV X3,635
        MOV X4,60
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_MONTANA
        MOV X1,634
        MOV X2,66
        MOV X3,640
        MOV X4,69
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_MONTANA
        MOV X1,535
        MOV X2,71
        MOV X3,536
        MOV X4,73
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_MONTANA
        MOV X1,551
        MOV X2,65
        MOV X3,552
        MOV X4,66
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_MONTANA
        MOV X1,587
        MOV X2,58
        MOV X3,588
        MOV X4,59
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_MONTANA
        MOV X1,627
        MOV X2,56
        MOV X3,628
        MOV X4,58
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_MONTANA
        MOV X1,634
        MOV X2,61
        MOV X3,635
        MOV X4,65
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Montanader_cespedoscuro
Montanader_cespedoscuro:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=CESPED_OSCURO
        MOV X1,523
        MOV X2,307
        MOV X3,530
        MOV X4,308
    BL pintar_rectangulo

    LDR X8,=CESPED_OSCURO
        MOV X1,529
        MOV X2,309
        MOV X3,530
        MOV X4,315
    BL pintar_rectangulo

    LDR X8,=CESPED_OSCURO
        MOV X1,531
        MOV X2,313
        MOV X3,542
        MOV X4,315
    BL pintar_rectangulo

    LDR X8,=CESPED_OSCURO
        MOV X1,541
        MOV X2,316
        MOV X3,542
        MOV X4,319
    BL pintar_rectangulo

    LDR X8,=CESPED_OSCURO
        MOV X1,543
        MOV X2,318
        MOV X3,550
        MOV X4,319
    BL pintar_rectangulo

    LDR X8,=CESPED_OSCURO
        MOV X1,523
        MOV X2,307
        MOV X3,530
        MOV X4,308
    BL pintar_rectangulo

    LDR X8,=CESPED_OSCURO
        MOV X1,549
        MOV X2,320
        MOV X3,550
        MOV X4,323
    BL pintar_rectangulo

    LDR X8,=CESPED_OSCURO
        MOV X1,551
        MOV X2,322
        MOV X3,557
        MOV X4,323
    BL pintar_rectangulo

    LDR X8,=CESPED_OSCURO
        MOV X1,509
        MOV X2,147
        MOV X3,527
        MOV X4,148
    BL pintar_rectangulo

    LDR X8,=CESPED_OSCURO
        MOV X1,526
        MOV X2,149
        MOV X3,527
        MOV X4,151
    BL pintar_rectangulo

    LDR X8,=CESPED_OSCURO
        MOV X1,528
        MOV X2,150
        MOV X3,529
        MOV X4,154
    BL pintar_rectangulo

    LDR X8,=CESPED_OSCURO
        MOV X1,530
        MOV X2,155
        MOV X3,533
        MOV X4,156
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
.globl Montana_FULL
Montana_FULL:
    STR X30,[SP,-8]!

    BL Montanaizq_luz
	BL Montanaizq_sombraclara
	BL Montanaizq_sombramedia
	BL Montanaizq_sombraoscura
	BL Montanaizq_cespedclaro
	BL Montanaizq_cespedoscuro

	BL Montanader_luz
	BL Montanader_sombraclara
	BL Montanader_sombramedia
	BL Montanader_sombraoscura
	BL Montanader_cespedclaro
	BL Montanader_cespedoscuro
	
    LDR X30,[SP],8
RET
