	.arch armv8-a
	.file	"kadane.c"
	.text
	.align	2
	.global	kadane
	.type	kadane, %function
kadane:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	x2, [sp, 8]
	str	wzr, [sp, 36]
	ldr	x0, [sp, 8]
	mov	w1, -1
	str	w1, [x0]
	str	wzr, [sp, 40]
	str	wzr, [sp, 44]
	b	.L2
.L4:
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	add	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 40]
	mov	w2, 0
	cmp	w1, 0
	csel	w0, w0, w2, ge
	str	w0, [sp, 40]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	bge	.L3
	ldr	x0, [sp, 8]
	ldr	w1, [sp, 44]
	str	w1, [x0]
.L3:
	ldr	w0, [sp, 36]
	ldr	w2, [sp, 40]
	ldr	w1, [sp, 40]
	cmp	w2, w0
	csel	w0, w1, w0, ge
	str	w0, [sp, 36]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L2:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L4
	ldr	w0, [sp, 36]
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	kadane, .-kadane
	.section	.rodata
	.align	3
.LC1:
	.string	"Array size= %d\n"
	.align	3
.LC2:
	.string	"The maximum sum of a contiguous subarray is %d (ending at index %d)\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	sub	sp, sp, #1472
	.cfi_def_cfa_offset 1488
	str	xzr, [sp, 1024]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 1464]
	mov	x1, 0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 24
	mov	x3, x1
	mov	x1, 1440
	mov	x2, x1
	mov	x1, x3
	bl	memcpy
	mov	w0, 360
	str	w0, [sp, 16]
	ldr	w1, [sp, 16]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	libmin_printf
	add	x1, sp, 12
	add	x0, sp, 24
	mov	x2, x1
	ldr	w1, [sp, 16]
	bl	kadane
	str	w0, [sp, 20]
	ldr	w0, [sp, 12]
	mov	w2, w0
	ldr	w1, [sp, 20]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	libmin_printf
	bl	libmin_success
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 1464]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L8
	bl	__stack_chk_fail
.L8:
	mov	w0, w1
	add	sp, sp, 1472
	.cfi_def_cfa_offset 16
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	8155
	.word	17168
	.word	11554
	.word	-14406
	.word	13854
	.word	20973
	.word	-26471
	.word	-11245
	.word	25508
	.word	-24548
	.word	-2094
	.word	-16932
	.word	-23080
	.word	29777
	.word	-27647
	.word	-5927
	.word	20197
	.word	-16505
	.word	-28944
	.word	2518
	.word	22405
	.word	15304
	.word	-19199
	.word	5439
	.word	4971
	.word	24179
	.word	1119
	.word	16764
	.word	-24526
	.word	-973
	.word	-9585
	.word	15066
	.word	12069
	.word	-21990
	.word	-19708
	.word	-16603
	.word	24065
	.word	15869
	.word	-6208
	.word	22922
	.word	2901
	.word	24070
	.word	-16253
	.word	15350
	.word	-27951
	.word	-817
	.word	-10363
	.word	-4185
	.word	-17835
	.word	-21493
	.word	-25281
	.word	-4842
	.word	-1425
	.word	6710
	.word	-7297
	.word	-17119
	.word	-10408
	.word	18129
	.word	-28213
	.word	-12161
	.word	13068
	.word	-4347
	.word	27196
	.word	-9652
	.word	-19423
	.word	6057
	.word	-22147
	.word	-10601
	.word	-17130
	.word	-13839
	.word	4925
	.word	27786
	.word	-9734
	.word	-25871
	.word	-2776
	.word	16462
	.word	13778
	.word	11363
	.word	-6662
	.word	-24896
	.word	19904
	.word	29515
	.word	9625
	.word	18193
	.word	-17274
	.word	-3246
	.word	27168
	.word	508
	.word	-81
	.word	15064
	.word	19885
	.word	18619
	.word	-5470
	.word	23422
	.word	-10780
	.word	-21517
	.word	26606
	.word	-20833
	.word	-27943
	.word	-11223
	.word	-10137
	.word	-29356
	.word	2701
	.word	-10774
	.word	13286
	.word	-15863
	.word	24259
	.word	-3434
	.word	-16362
	.word	-4444
	.word	-20182
	.word	7785
	.word	23559
	.word	-16482
	.word	-23146
	.word	7477
	.word	25038
	.word	-19306
	.word	-26506
	.word	29314
	.word	2174
	.word	7862
	.word	-29266
	.word	-1236
	.word	-28187
	.word	27877
	.word	-7969
	.word	10314
	.word	-5142
	.word	5466
	.word	28920
	.word	29191
	.word	-27061
	.word	27601
	.word	7428
	.word	12574
	.word	-5776
	.word	27915
	.word	-13399
	.word	-11340
	.word	3307
	.word	7043
	.word	-6927
	.word	16463
	.word	-6535
	.word	26316
	.word	-10710
	.word	16103
	.word	-5578
	.word	26102
	.word	-22493
	.word	23027
	.word	12203
	.word	3251
	.word	5281
	.word	-17123
	.word	-9919
	.word	18986
	.word	-9330
	.word	-192
	.word	16263
	.word	-19289
	.word	-22665
	.word	-2993
	.word	27926
	.word	-3020
	.word	-10050
	.word	-4092
	.word	17416
	.word	26503
	.word	-16237
	.word	-25905
	.word	-19723
	.word	-5055
	.word	2901
	.word	24070
	.word	-16253
	.word	15350
	.word	-27951
	.word	-817
	.word	-10363
	.word	-4185
	.word	-17835
	.word	-21493
	.word	-25281
	.word	-4842
	.word	-1425
	.word	27601
	.word	7428
	.word	12574
	.word	-5776
	.word	27915
	.word	-13399
	.word	-11340
	.word	3307
	.word	7043
	.word	-6927
	.word	16463
	.word	-6535
	.word	26316
	.word	-10710
	.word	29777
	.word	-27647
	.word	-5927
	.word	20197
	.word	-16505
	.word	-28944
	.word	2518
	.word	22405
	.word	15304
	.word	-19199
	.word	5439
	.word	4971
	.word	24179
	.word	1119
	.word	8155
	.word	17168
	.word	11554
	.word	-14406
	.word	13854
	.word	20973
	.word	-26471
	.word	-11245
	.word	25508
	.word	-24548
	.word	-2094
	.word	-16932
	.word	-23080
	.word	-25496
	.word	-27164
	.word	-9845
	.word	25985
	.word	21965
	.word	26979
	.word	-28295
	.word	-4574
	.word	-27464
	.word	-26163
	.word	11498
	.word	-6302
	.word	29123
	.word	-4712
	.word	-24339
	.word	-27645
	.word	23484
	.word	12151
	.word	14797
	.word	-5334
	.word	-15853
	.word	9431
	.word	7116
	.word	27195
	.word	-1075
	.word	17134
	.word	21955
	.word	-3745
	.word	-4717
	.word	11285
	.word	-9264
	.word	-20400
	.word	15249
	.word	-18604
	.word	390
	.word	25377
	.word	-7495
	.word	-24694
	.word	25767
	.word	17461
	.word	-21795
	.word	1815
	.word	-5557
	.word	22489
	.word	11085
	.word	-6132
	.word	-2513
	.word	131
	.word	18955
	.word	-28518
	.word	-14482
	.word	15781
	.word	21178
	.word	5485
	.word	-12187
	.word	-24004
	.word	12344
	.word	20129
	.word	-26045
	.word	-28136
	.word	-26435
	.word	23729
	.word	-12384
	.word	3157
	.word	3121
	.word	-18724
	.word	-17193
	.word	22853
	.word	-29225
	.word	29921
	.word	-19534
	.word	-28048
	.word	-9185
	.word	-29704
	.word	-29260
	.word	-2534
	.word	21587
	.word	4770
	.word	4880
	.word	-9269
	.word	9197
	.word	25075
	.word	-3083
	.word	-4795
	.word	-28614
	.word	-8794
	.word	20376
	.word	-12507
	.word	-14627
	.word	8109
	.word	28004
	.word	-29128
	.word	-10195
	.word	16767
	.word	-6852
	.word	-21305
	.word	28599
	.word	-23297
	.word	-16460
	.word	18601
	.word	5359
	.word	-7017
	.word	-24250
	.word	-23556
	.word	16491
	.word	-23856
	.word	-16880
	.word	19593
	.word	6171
	.word	12602
	.word	-29905
	.word	-27567
	.word	18969
	.word	-12582
	.word	18015
	.word	7774
	.word	23534
	.word	-26819
	.word	-8535
	.word	13345
	.word	9279
	.word	-20758
	.word	-1612
	.word	13739
	.word	-29764
	.word	6005
	.word	2037
	.word	14339
	.word	-23422
	.word	-11
	.word	-16605
	.word	-11701
	.text
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
