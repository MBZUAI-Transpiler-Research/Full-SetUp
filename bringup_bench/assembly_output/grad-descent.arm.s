	.arch armv8-a
	.file	"grad-descent.c"
	.text
	.global	L
	.data
	.align	3
	.type	L, %object
	.size	L, 8
L:
	.word	-755914244
	.word	1062232653
	.global	Y
	.align	3
	.type	Y, %object
	.size	Y, 400
Y:
	.word	0
	.word	1078722560
	.word	0
	.word	1077149696
	.word	0
	.word	1083357184
	.word	0
	.word	1075970048
	.word	0
	.word	1077805056
	.word	0
	.word	1077018624
	.word	0
	.word	1076232192
	.word	0
	.word	1078591488
	.word	0
	.word	1083621376
	.word	0
	.word	1075838976
	.word	0
	.word	1076363264
	.word	0
	.word	1079083008
	.word	0
	.word	1079050240
	.word	0
	.word	1077018624
	.word	0
	.word	1088483008
	.word	0
	.word	0
	.word	0
	.word	1078558720
	.word	0
	.word	1080516608
	.word	0
	.word	1080401920
	.word	0
	.word	1081479168
	.word	0
	.word	1086881152
	.word	0
	.word	1081016320
	.word	0
	.word	1080631296
	.word	0
	.word	1076953088
	.word	0
	.word	1077608448
	.word	0
	.word	1075052544
	.word	0
	.word	1077149696
	.word	0
	.word	1076756480
	.word	0
	.word	1083787264
	.word	0
	.word	1083963392
	.word	0
	.word	1081888768
	.word	0
	.word	1084431360
	.word	0
	.word	1078231040
	.word	0
	.word	1074266112
	.word	0
	.word	1077411840
	.word	0
	.word	1078034432
	.word	0
	.word	1077411840
	.word	0
	.word	1080279040
	.word	0
	.word	1077739520
	.word	0
	.word	1085509888
	.word	0
	.word	1079328768
	.word	0
	.word	1085559040
	.word	0
	.word	1075576832
	.word	0
	.word	0
	.word	0
	.word	1084762624
	.word	0
	.word	1077215232
	.word	0
	.word	1075314688
	.word	0
	.word	1081741312
	.word	0
	.word	1083236352
	.word	0
	.word	1076232192
	.global	X
	.align	3
	.type	X, %object
	.size	X, 400
X:
	.word	858993459
	.word	1075917619
	.word	1717986918
	.word	1075734118
	.word	1717986918
	.word	1076127334
	.word	0
	.word	1076428800
	.word	0
	.word	1076756480
	.word	1717986918
	.word	1077831270
	.word	0
	.word	1074528256
	.word	858993459
	.word	1075131187
	.word	0
	.word	1071644672
	.word	858993459
	.word	1075786547
	.word	858993459
	.word	1075655475
	.word	858993459
	.word	1076966195
	.word	0
	.word	1076101120
	.word	-858993459
	.word	1076972748
	.word	0
	.word	1075838976
	.word	1717986918
	.word	1073112678
	.word	-858993459
	.word	1075367116
	.word	858993459
	.word	1074869043
	.word	-858993459
	.word	1077857484
	.word	1717986918
	.word	1076192870
	.word	-1717986918
	.word	1075288473
	.word	1717986918
	.word	1073112678
	.word	-858993459
	.word	1076088012
	.word	858993459
	.word	1077261107
	.word	858993459
	.word	1075000115
	.word	858993459
	.word	1078080307
	.word	-858993459
	.word	1076907212
	.word	0
	.word	1076363264
	.word	1717986918
	.word	1075078758
	.word	-858993459
	.word	1073007820
	.word	0
	.word	1074528256
	.word	858993459
	.word	1075262259
	.word	-858993459
	.word	1075367116
	.word	1717986918
	.word	1075996262
	.word	1717986918
	.word	1078371942
	.word	858993459
	.word	1075655475
	.word	-858993459
	.word	1077824716
	.word	0
	.word	1077313536
	.word	858993459
	.word	1076507443
	.word	858993459
	.word	1076704051
	.word	-858993459
	.word	1075367116
	.word	0
	.word	1075183616
	.word	-858993459
	.word	1077824716
	.word	-858993459
	.word	1074842828
	.word	858993459
	.word	1075917619
	.word	858993459
	.word	1075655475
	.word	-858993459
	.word	1076350156
	.word	858993459
	.word	1075852083
	.word	858993459
	.word	1071854387
	.word	0
	.word	1076297728
	.text
	.align	2
	.global	derivateWRTWeight
	.type	derivateWRTWeight, %function
derivateWRTWeight:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	d0, [sp, 8]
	str	d1, [sp]
	str	xzr, [sp, 24]
	str	wzr, [sp, 20]
	b	.L2
.L3:
	adrp	x0, X
	add	x0, x0, :lo12:X
	ldrsw	x1, [sp, 20]
	ldr	d1, [x0, x1, lsl 3]
	adrp	x0, Y
	add	x0, x0, :lo12:Y
	ldrsw	x1, [sp, 20]
	ldr	d2, [x0, x1, lsl 3]
	adrp	x0, X
	add	x0, x0, :lo12:X
	ldrsw	x1, [sp, 20]
	ldr	d3, [x0, x1, lsl 3]
	ldr	d0, [sp, 8]
	fmul	d3, d3, d0
	ldr	d0, [sp]
	fadd	d0, d3, d0
	fsub	d0, d2, d0
	fmul	d0, d1, d0
	ldr	d1, [sp, 24]
	fadd	d0, d1, d0
	str	d0, [sp, 24]
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L2:
	ldr	w0, [sp, 20]
	cmp	w0, 49
	ble	.L3
	ldr	d1, [sp, 24]
	fmov	d0, -2.0e+0
	fmul	d0, d1, d0
	mov	x0, 4632233691727265792
	fmov	d1, x0
	fdiv	d0, d0, d1
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	derivateWRTWeight, .-derivateWRTWeight
	.align	2
	.global	derivateWRTBias
	.type	derivateWRTBias, %function
derivateWRTBias:
.LFB4:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	d0, [sp, 8]
	str	d1, [sp]
	str	xzr, [sp, 24]
	str	wzr, [sp, 20]
	b	.L6
.L7:
	adrp	x0, Y
	add	x0, x0, :lo12:Y
	ldrsw	x1, [sp, 20]
	ldr	d1, [x0, x1, lsl 3]
	adrp	x0, X
	add	x0, x0, :lo12:X
	ldrsw	x1, [sp, 20]
	ldr	d2, [x0, x1, lsl 3]
	ldr	d0, [sp, 8]
	fmul	d2, d2, d0
	ldr	d0, [sp]
	fadd	d0, d2, d0
	fsub	d0, d1, d0
	ldr	d1, [sp, 24]
	fadd	d0, d1, d0
	str	d0, [sp, 24]
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L6:
	ldr	w0, [sp, 20]
	cmp	w0, 49
	ble	.L7
	ldr	d1, [sp, 24]
	fmov	d0, -2.0e+0
	fmul	d0, d1, d0
	mov	x0, 4632233691727265792
	fmov	d1, x0
	fdiv	d0, d0, d1
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	derivateWRTBias, .-derivateWRTBias
	.align	2
	.global	gradientDescent
	.type	gradientDescent, %function
gradientDescent:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	d8, [sp, 16]
	.cfi_offset 72, -48
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	wzr, [sp, 60]
	b	.L10
.L11:
	ldr	x0, [sp, 40]
	ldr	d8, [x0]
	ldr	x0, [sp, 40]
	ldr	d0, [x0]
	ldr	x0, [sp, 32]
	ldr	d1, [x0]
	bl	derivateWRTWeight
	fmov	d1, d0
	adrp	x0, L
	add	x0, x0, :lo12:L
	ldr	d0, [x0]
	fmul	d0, d1, d0
	fsub	d0, d8, d0
	ldr	x0, [sp, 40]
	str	d0, [x0]
	ldr	x0, [sp, 32]
	ldr	d8, [x0]
	ldr	x0, [sp, 40]
	ldr	d0, [x0]
	ldr	x0, [sp, 32]
	ldr	d1, [x0]
	bl	derivateWRTBias
	fmov	d1, d0
	adrp	x0, L
	add	x0, x0, :lo12:L
	ldr	d0, [x0]
	fmul	d0, d1, d0
	fsub	d0, d8, d0
	ldr	x0, [sp, 32]
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L10:
	ldr	w0, [sp, 60]
	cmp	w0, 199
	bls	.L11
	nop
	nop
	ldr	d8, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 72
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	gradientDescent, .-gradientDescent
	.section	.rodata
	.align	3
.LC0:
	.string	"The function is: %.4lfx + %.4lf\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, 32]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 32
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 24]
	mov	x1, 0
	str	xzr, [sp, 8]
	str	xzr, [sp, 16]
	add	x1, sp, 16
	add	x0, sp, 8
	bl	gradientDescent
	ldr	d0, [sp, 8]
	ldr	d1, [sp, 16]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	libmin_printf
	bl	libmin_success
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 24]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L14
	bl	__stack_chk_fail
.L14:
	mov	w0, w1
	ldp	x29, x30, [sp, 32]
	add	sp, sp, 48
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
