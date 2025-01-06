.include "colores.s"
.section .text
/*
                                ╔══════════════════════════════════════════════════════════════════════╗
                                ║                                 ÍNDICE                               ║
                                ╚══════════════════════════════════════════════════════════════════════╝
                                1. Piso
                                    ├── 1.1) Piso_luz ·········································· l: 28
                                    ├── 1.2) Cesped_der ········································ l: 221
                                    ├── 1.3) Cesped_izq ········································ l: 274
                                    ├── 1.4) Piso_sombraclarader ······························· l: 404
                                    ├── 1.5) Piso_sombraclaraizq ······························· l: 646
                                    └── 1.6) Piso_sombraoscura ································· l: 720
                                                 
                                2. Cielo ······················································· l: 805

                                3. Sol ························································· l: 836

                                4. Modularizaciones
                                    └── 4.1) Piso_FULL ········································· l: 862
*/

/*
╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
║                                                           PISO                                                         ║
╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
*/
.globl Piso_luz
Piso_luz:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SUELO_LUZ
        MOV x1,0
        MOV x2,380
        MOV x3,640
        MOV x4,480
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV x1,119
        MOV x2,332
        MOV x3,488
        MOV x4,381
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV x1,195
        MOV x2,321
        MOV x3,446
        MOV x4,331
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV x1,489
        MOV x2,353
        MOV x3,640
        MOV x4,380
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV x1,489
        MOV x2,332
        MOV x3,509
        MOV x4,352
    BL pintar_rectangulo
    
    LDR X8,=SUELO_LUZ
        MOV x1,510
        MOV x2,342
        MOV x3,522
        MOV x4,352
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV x1,578
        MOV x2,348
        MOV x3,622
        MOV x4,352
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV x1,523
        MOV x2,349
        MOV x3,541
        MOV x4,352
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV x1,570
        MOV x2,351
        MOV x3,577
        MOV x4,352
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV x1,447
        MOV x2,327
        MOV x3,488
        MOV x4,332
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV x1,112
        MOV x2,341
        MOV x3,118
        MOV x4,379
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV x1,106
        MOV x2,343
        MOV x3,111
        MOV x4,379
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV x1,100
        MOV x2,345
        MOV x3,105
        MOV x4,379
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV x1,94
        MOV x2,347
        MOV x3,99
        MOV x4,379
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV x1,88
        MOV x2,349
        MOV x3,93
        MOV x4,379
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV x1,71
        MOV x2,351
        MOV x3,87
        MOV x4,379
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV x1,61
        MOV x2,354
        MOV x3,70
        MOV x4,379
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV x1,54
        MOV x2,356
        MOV x3,60
        MOV x4,379
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV x1,41
        MOV x2,360
        MOV x3,53
        MOV x4,379
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV x1,36
        MOV x2,362
        MOV x3,40
        MOV x4,379
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV x1,30
        MOV x2,364
        MOV x3,35
        MOV x4,379
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV x1,26
        MOV x2,370
        MOV x3,29
        MOV x4,379
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV x1,20
        MOV x2,372
        MOV x3,25
        MOV x4,379
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV x1,6
        MOV x2,376
        MOV x3,19
        MOV x4,379
    BL pintar_rectangulo

    LDR X8,=SUELO_LUZ
        MOV x1,153
        MOV x2,327
        MOV x3,194
        MOV x4,332
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Cesped_der
Cesped_der:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=CESPED_CLARO_SUELO
        MOV x1,510
        MOV x2,332
        MOV x3,522
        MOV x4,341
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_SUELO
        MOV x1,523
        MOV x2,337
        MOV x3,559
        MOV x4,348
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_SUELO
        MOV x1,542
        MOV x2,343
        MOV x3,569
        MOV x4,352
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_SUELO
        MOV x1,570
        MOV x2,343
        MOV x3,577
        MOV x4,350
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_SUELO
        MOV x1,578
        MOV x2,343
        MOV x3,596
        MOV x4,347
    BL pintar_rectangulo
    
    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Cesped_izq
Cesped_izq:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=CESPED_CLARO_SUELO
        MOV x1,0
        MOV x2,353
        MOV x3,5
        MOV x4,379
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_SUELO
        MOV x1,6
        MOV x2,353
        MOV x3,19
        MOV x4,375
    BL pintar_rectangulo

    lDR X8,=CESPED_CLARO_SUELO
        MOV x1,19
        MOV x2,348
        MOV x3,25
        MOV x4,371
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_SUELO
        MOV x1,19
        MOV x2,348
        MOV x3,25
        MOV x4,371
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_SUELO
        MOV x1,26
        MOV x2,348
        MOV x3,29
        MOV x4,369
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_SUELO
        MOV x1,30
        MOV x2,348
        MOV x3,35
        MOV x4,363
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_SUELO
        MOV x1,36
        MOV x2,348
        MOV x3,40
        MOV x4,361
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_SUELO
        MOV x1,41
        MOV x2,348
        MOV x3,53
        MOV x4,359
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_SUELO
        MOV x1,45
        MOV x2,343
        MOV x3,60
        MOV x4,355
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_SUELO
        MOV x1,61
        MOV x2,343
        MOV x3,70
        MOV x4,353
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_SUELO
        MOV x1,71
        MOV x2,343
        MOV x3,87
        MOV x4,350
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_SUELO
        MOV x1,82
        MOV x2,337
        MOV x3,93
        MOV x4,348
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_SUELO
        MOV x1,94
        MOV x2,337
        MOV x3,99
        MOV x4,346
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_SUELO
        MOV x1,100
        MOV x2,337
        MOV x3,105
        MOV x4,344
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_SUELO
        MOV x1,106
        MOV x2,337
        MOV x3,111
        MOV x4,342
    BL pintar_rectangulo

    LDR X8,=CESPED_CLARO_SUELO
        MOV x1,112
        MOV x2,337
        MOV x3,118
        MOV x4,340
    BL pintar_rectangulo
    
    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Piso_sombraclarader
Piso_sombraclarader:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,507
        MOV x2,442
        MOV x3,640
        MOV x4,480
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,516
        MOV x2,399
        MOV x3,572
        MOV x4,441
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,462
        MOV x2,405
        MOV x3,467
        MOV x4,410
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,468
        MOV x2,405
        MOV x3,476
        MOV x4,412
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,472
        MOV x2,402
        MOV x3,479
        MOV x4,412
    BL pintar_rectangulo
    
    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,480
        MOV x2,400
        MOV x3,489
        MOV x4,417
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,490
        MOV x2,397
        MOV x3,533
        MOV x4,425
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,477
        MOV x2,413
        MOV x3,479
        MOV x4,417
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,484
        MOV x2,418
        MOV x3,489
        MOV x4,422
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,497
        MOV x2,426
        MOV x3,515
        MOV x4,429
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,509
        MOV x2,430
        MOV x3,515
        MOV x4,432
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,505
        MOV x2,435
        MOV x3,515
        MOV x4,441
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,491
        MOV x2,439
        MOV x3,507
        MOV x4,453
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,495
        MOV x2,454
        MOV x3,506
        MOV x4,457
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,502
        MOV x2,458
        MOV x3,506
        MOV x4,462
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,484
        MOV x2,445
        MOV x3,490
        MOV x4,448
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,489
        MOV x2,449
        MOV x3,490
        MOV x4,453
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,503
        MOV x2,467
        MOV x3,506
        MOV x4,480
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,499
        MOV x2,472
        MOV x3,502
        MOV x4,480
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,496
        MOV x2,474
        MOV x3,498
        MOV x4,480
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,492
        MOV x2,477
        MOV x3,495
        MOV x4,480
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,573
        MOV x2,402
        MOV x3,576
        MOV x4,415
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,577
        MOV x2,402
        MOV x3,580
        MOV x4,412
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,581
        MOV x2,402
        MOV x3,583
        MOV x4,410
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,584
        MOV x2,404
        MOV x3,591
        MOV x4,407
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,573
        MOV x2,420
        MOV x3,578
        MOV x4,441
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,579
        MOV x2,425
        MOV x3,583
        MOV x4,441
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,584
        MOV x2,426
        MOV x3,588
        MOV x4,441
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,589
        MOV x2,429
        MOV x3,593
        MOV x4,441
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,594
        MOV x2,434
        MOV x3,596
        MOV x4,441
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,597
        MOV x2,432
        MOV x3,606
        MOV x4,441
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,607
        MOV x2,439
        MOV x3,622
        MOV x4,441
    BL pintar_rectangulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


.globl Piso_sombraclaraizq
Piso_sombraclaraizq:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,277
        MOV x2,449
        MOV x3,358
        MOV x4,461
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,293
        MOV x2,447
        MOV x3,366
        MOV x4,459
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,328
        MOV x2,441
        MOV x3,342
        MOV x4,446
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,343
        MOV x2,443
        MOV x3,353
        MOV x4,446
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,354
        MOV x2,445
        MOV x3,362
        MOV x4,446
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,367
        MOV x2,447
        MOV x3,370
        MOV x4,456
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,371
        MOV x2,451
        MOV x3,373
        MOV x4,456
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRACLARA
        MOV x1,317
        MOV x2,446
        MOV x3,327
        MOV x4,446
    BL pintar_rectangulo
    
    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X4,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET

.globl Piso_sombraoscura
Piso_sombraoscura:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SUELO_SOMBRAOSCURA
        MOV x1,0
        MOV x2,431
        MOV x3,50
        MOV x4,480
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRAOSCURA
        MOV x1,51
        MOV x2,439
        MOV x3,99
        MOV x4,480
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRAOSCURA
        MOV x1,100
        MOV x2,448
        MOV x3,159
        MOV x4,480
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRAOSCURA
        MOV x1,160
        MOV x2,450
        MOV x3,224
        MOV x4,480
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRAOSCURA
        MOV x1,225
        MOV x2,452
        MOV x3,295
        MOV x4,480
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRAOSCURA
        MOV x1,296
        MOV x2,452
        MOV x3,312
        MOV x4,477
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRAOSCURA
        MOV x1,313
        MOV x2,455
        MOV x3,333
        MOV x4,471
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRAOSCURA
        MOV x1,334
        MOV x2,457
        MOV x3,340
        MOV x4,465
    BL pintar_rectangulo

    LDR X8,=SUELO_SOMBRAOSCURA
        MOV x1,341
        MOV x2,457
        MOV x3,347
        MOV x4,460
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
║                                                          CIELO                                                         ║
╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
*/
.globl Cielo
Cielo:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X4,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=CIELO
        MOV x1,0
        MOV x2,0
        MOV x3,640
        MOV x4,500
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
║                                                           SOL                                                          ║
╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
*/
.globl Sol
Sol:
    STR X1,[SP,-8]!
    STR X2,[SP,-8]!
    STR X3,[SP,-8]!
    STR X8,[SP,-8]!
    STR X30,[SP,-8]!

    LDR X8,=SOL
        MOV X1,80
        MOV X2,30
        MOV X3,60
    BL pintar_circulo

    LDR X30,[SP],8
    LDR X8,[SP],8
    LDR X3,[SP],8
    LDR X2,[SP],8
    LDR X1,[SP],8
RET


/*
╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
║                                                     MODULARIZACIONES                                                   ║
╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
*/
.globl Piso_FULL
Piso_FULL:
    STR x30,[SP,-8]!

    BL Piso_luz
	BL Cesped_der
	BL Cesped_izq
	BL Piso_sombraclarader
    BL Piso_sombraclaraizq
	BL Piso_sombraoscura

    LDR x30,[SP],8
RET
