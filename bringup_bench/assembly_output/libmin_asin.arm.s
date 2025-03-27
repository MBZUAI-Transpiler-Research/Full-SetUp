	.arch armv8-a
	.file	"libmin_asin.c"
	.text
	.section	.rodata
	.align	3
	.type	one, %object
	.size	one, 8
one:
	.word	0
	.word	1072693248
	.align	3
	.type	huge, %object
	.size	huge, 8
huge:
	.word	-2013235812
	.word	2117592124
	.align	3
	.type	pio2_hi, %object
	.size	pio2_hi, 8
pio2_hi:
	.word	1413754136
	.word	1073291771
	.align	3
	.type	pio2_lo, %object
	.size	pio2_lo, 8
pio2_lo:
	.word	856972295
	.word	1016178214
	.align	3
	.type	pio4_hi, %object
	.size	pio4_hi, 8
pio4_hi:
	.word	1413754136
	.word	1072243195
	.align	3
	.type	pS0, %object
	.size	pS0, 8
pS0:
	.word	1431655765
	.word	1069897045
	.align	3
	.type	pS1, %object
	.size	pS1, 8
pS1:
	.word	65761149
	.word	-1076570606
	.align	3
	.type	pS2, %object
	.size	pS2, 8
pS2:
	.word	243811413
	.word	1070186837
	.align	3
	.type	pS3, %object
	.size	pS3, 8
pS3:
	.word	-1251438789
	.word	-1079737816
	.align	3
	.type	pS4, %object
	.size	pS4, 8
pS4:
	.word	1963045512
	.word	1061810144
	.align	3
	.type	pS5, %object
	.size	pS5, 8
pS5:
	.word	234747657
	.word	1057111521
	.align	3
	.type	qS1, %object
	.size	qS1, 8
qS1:
	.word	478817611
	.word	-1073530329
	.align	3
	.type	qS2, %object
	.size	qS2, 8
qS2:
	.word	-1671853368
	.word	1073752805
	.align	3
	.type	qS3, %object
	.size	qS3, 8
qS3:
	.word	462225753
	.word	-1075444116
	.align	3
	.type	qS4, %object
	.size	qS4, 8
qS4:
	.word	-1322347902
	.word	1068742853
	.text
	.align	2
	.global	libmin_asin
	.type	libmin_asin, %function
libmin_asin:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	str	d8, [sp, 16]
	.cfi_offset 72, -112
	str	d0, [sp, 40]
	str	xzr, [sp, 72]
	ldr	d0, [sp, 40]
	str	d0, [sp, 64]
	ldr	x0, [sp, 64]
	lsr	x0, x0, 32
	str	w0, [sp, 52]
	ldr	w0, [sp, 52]
	and	w0, w0, 2147483647
	str	w0, [sp, 56]
	ldr	w1, [sp, 56]
	mov	w0, 1072693247
	cmp	w1, w0
	ble	.L2
	ldr	d0, [sp, 40]
	str	d0, [sp, 64]
	ldr	x0, [sp, 64]
	str	w0, [sp, 60]
	ldr	w1, [sp, 56]
	mov	w0, -1072693248
	add	w0, w1, w0
	mov	w1, w0
	ldr	w0, [sp, 60]
	orr	w0, w1, w0
	cmp	w0, 0
	bne	.L3
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	ldr	d0, [sp, 40]
	fmul	d1, d1, d0
	adrp	x0, .LC1
	ldr	d2, [x0, #:lo12:.LC1]
	ldr	d0, [sp, 40]
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	b	.L4
.L3:
	ldr	d0, [sp, 40]
	fsub	d1, d0, d0
	ldr	d0, [sp, 40]
	fsub	d0, d0, d0
	fdiv	d0, d1, d0
	b	.L4
.L2:
	ldr	w1, [sp, 56]
	mov	w0, 1071644671
	cmp	w1, w0
	bgt	.L5
	ldr	w1, [sp, 56]
	mov	w0, 1045430271
	cmp	w1, w0
	bgt	.L6
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	ldr	d0, [sp, 40]
	fadd	d1, d1, d0
	fmov	d0, 1.0e+0
	fcmpe	d1, d0
	bgt	.L11
	b	.L6
.L11:
	ldr	d0, [sp, 40]
	b	.L4
.L6:
	ldr	d0, [sp, 40]
	fmul	d0, d0, d0
	str	d0, [sp, 72]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	ldr	d0, [sp, 72]
	fmul	d0, d1, d0
	adrp	x0, .LC4
	ldr	d1, [x0, #:lo12:.LC4]
	fadd	d1, d0, d1
	ldr	d0, [sp, 72]
	fmul	d0, d1, d0
	adrp	x0, .LC5
	ldr	d1, [x0, #:lo12:.LC5]
	fadd	d1, d0, d1
	ldr	d0, [sp, 72]
	fmul	d0, d1, d0
	adrp	x0, .LC6
	ldr	d1, [x0, #:lo12:.LC6]
	fadd	d1, d0, d1
	ldr	d0, [sp, 72]
	fmul	d0, d1, d0
	adrp	x0, .LC7
	ldr	d1, [x0, #:lo12:.LC7]
	fadd	d1, d0, d1
	ldr	d0, [sp, 72]
	fmul	d0, d1, d0
	mov	x0, 6148914691236517205
	movk	x0, 0x3fc5, lsl 48
	fmov	d1, x0
	fadd	d0, d0, d1
	ldr	d1, [sp, 72]
	fmul	d0, d1, d0
	str	d0, [sp, 88]
	adrp	x0, .LC8
	ldr	d1, [x0, #:lo12:.LC8]
	ldr	d0, [sp, 72]
	fmul	d0, d1, d0
	adrp	x0, .LC9
	ldr	d1, [x0, #:lo12:.LC9]
	fadd	d1, d0, d1
	ldr	d0, [sp, 72]
	fmul	d0, d1, d0
	adrp	x0, .LC10
	ldr	d1, [x0, #:lo12:.LC10]
	fadd	d1, d0, d1
	ldr	d0, [sp, 72]
	fmul	d0, d1, d0
	adrp	x0, .LC11
	ldr	d1, [x0, #:lo12:.LC11]
	fadd	d1, d0, d1
	ldr	d0, [sp, 72]
	fmul	d1, d1, d0
	fmov	d0, 1.0e+0
	fadd	d0, d1, d0
	str	d0, [sp, 96]
	ldr	d0, [sp, 96]
	ldr	d1, [sp, 88]
	fdiv	d0, d1, d0
	str	d0, [sp, 80]
	ldr	d1, [sp, 40]
	ldr	d0, [sp, 80]
	fmul	d1, d1, d0
	ldr	d0, [sp, 40]
	fadd	d0, d1, d0
	b	.L4
.L5:
	fmov	d8, 1.0e+0
	ldr	d0, [sp, 40]
	bl	libmin_fabs
	fsub	d0, d8, d0
	str	d0, [sp, 80]
	ldr	d1, [sp, 80]
	fmov	d0, 5.0e-1
	fmul	d0, d1, d0
	str	d0, [sp, 72]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	ldr	d0, [sp, 72]
	fmul	d0, d1, d0
	adrp	x0, .LC4
	ldr	d1, [x0, #:lo12:.LC4]
	fadd	d1, d0, d1
	ldr	d0, [sp, 72]
	fmul	d0, d1, d0
	adrp	x0, .LC5
	ldr	d1, [x0, #:lo12:.LC5]
	fadd	d1, d0, d1
	ldr	d0, [sp, 72]
	fmul	d0, d1, d0
	adrp	x0, .LC6
	ldr	d1, [x0, #:lo12:.LC6]
	fadd	d1, d0, d1
	ldr	d0, [sp, 72]
	fmul	d0, d1, d0
	adrp	x0, .LC7
	ldr	d1, [x0, #:lo12:.LC7]
	fadd	d1, d0, d1
	ldr	d0, [sp, 72]
	fmul	d0, d1, d0
	mov	x0, 6148914691236517205
	movk	x0, 0x3fc5, lsl 48
	fmov	d1, x0
	fadd	d0, d0, d1
	ldr	d1, [sp, 72]
	fmul	d0, d1, d0
	str	d0, [sp, 88]
	adrp	x0, .LC8
	ldr	d1, [x0, #:lo12:.LC8]
	ldr	d0, [sp, 72]
	fmul	d0, d1, d0
	adrp	x0, .LC9
	ldr	d1, [x0, #:lo12:.LC9]
	fadd	d1, d0, d1
	ldr	d0, [sp, 72]
	fmul	d0, d1, d0
	adrp	x0, .LC10
	ldr	d1, [x0, #:lo12:.LC10]
	fadd	d1, d0, d1
	ldr	d0, [sp, 72]
	fmul	d0, d1, d0
	adrp	x0, .LC11
	ldr	d1, [x0, #:lo12:.LC11]
	fadd	d1, d0, d1
	ldr	d0, [sp, 72]
	fmul	d1, d1, d0
	fmov	d0, 1.0e+0
	fadd	d0, d1, d0
	str	d0, [sp, 96]
	ldr	d0, [sp, 72]
	bl	libmin_sqrt
	str	d0, [sp, 104]
	ldr	w1, [sp, 56]
	mov	w0, 13106
	movk	w0, 0x3fef, lsl 16
	cmp	w1, w0
	ble	.L8
	ldr	d0, [sp, 96]
	ldr	d1, [sp, 88]
	fdiv	d0, d1, d0
	str	d0, [sp, 80]
	adrp	x0, .LC0
	ldr	d2, [x0, #:lo12:.LC0]
	ldr	d1, [sp, 104]
	ldr	d0, [sp, 80]
	fmul	d1, d1, d0
	ldr	d0, [sp, 104]
	fadd	d0, d1, d0
	fadd	d0, d0, d0
	adrp	x0, .LC1
	ldr	d1, [x0, #:lo12:.LC1]
	fsub	d0, d0, d1
	fsub	d0, d2, d0
	str	d0, [sp, 72]
	b	.L9
.L8:
	ldr	d0, [sp, 104]
	str	d0, [sp, 80]
	ldr	d0, [sp, 80]
	str	d0, [sp, 64]
	ldr	x0, [sp, 64]
	and	x0, x0, -4294967296
	str	x0, [sp, 64]
	ldr	x0, [sp, 64]
	str	x0, [sp, 64]
	ldr	d0, [sp, 64]
	str	d0, [sp, 80]
	ldr	d0, [sp, 80]
	fmul	d0, d0, d0
	ldr	d1, [sp, 72]
	fsub	d1, d1, d0
	ldr	d2, [sp, 104]
	ldr	d0, [sp, 80]
	fadd	d0, d2, d0
	fdiv	d0, d1, d0
	str	d0, [sp, 112]
	ldr	d0, [sp, 96]
	ldr	d1, [sp, 88]
	fdiv	d0, d1, d0
	str	d0, [sp, 120]
	ldr	d0, [sp, 104]
	fadd	d1, d0, d0
	ldr	d0, [sp, 120]
	fmul	d1, d1, d0
	adrp	x0, .LC1
	ldr	d2, [x0, #:lo12:.LC1]
	ldr	d0, [sp, 112]
	fadd	d0, d0, d0
	fsub	d0, d2, d0
	fsub	d0, d1, d0
	str	d0, [sp, 88]
	adrp	x0, .LC12
	ldr	d1, [x0, #:lo12:.LC12]
	ldr	d0, [sp, 80]
	fadd	d0, d0, d0
	fsub	d0, d1, d0
	str	d0, [sp, 96]
	adrp	x0, .LC12
	ldr	d2, [x0, #:lo12:.LC12]
	ldr	d1, [sp, 88]
	ldr	d0, [sp, 96]
	fsub	d0, d1, d0
	fsub	d0, d2, d0
	str	d0, [sp, 72]
.L9:
	ldr	w0, [sp, 52]
	cmp	w0, 0
	ble	.L10
	ldr	d0, [sp, 72]
	b	.L4
.L10:
	ldr	d0, [sp, 72]
	fneg	d0, d0
.L4:
	ldr	d8, [sp, 16]
	ldp	x29, x30, [sp], 128
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 72
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_asin, .-libmin_asin
	.section	.rodata
	.align	3
.LC0:
	.word	1413754136
	.word	1073291771
	.align	3
.LC1:
	.word	856972295
	.word	1016178214
	.align	3
.LC2:
	.word	-2013235812
	.word	2117592124
	.align	3
.LC3:
	.word	234747657
	.word	1057111521
	.align	3
.LC4:
	.word	1963045512
	.word	1061810144
	.align	3
.LC5:
	.word	-1251438789
	.word	-1079737816
	.align	3
.LC6:
	.word	243811413
	.word	1070186837
	.align	3
.LC7:
	.word	65761149
	.word	-1076570606
	.align	3
.LC8:
	.word	-1322347902
	.word	1068742853
	.align	3
.LC9:
	.word	462225753
	.word	-1075444116
	.align	3
.LC10:
	.word	-1671853368
	.word	1073752805
	.align	3
.LC11:
	.word	478817611
	.word	-1073530329
	.align	3
.LC12:
	.word	1413754136
	.word	1072243195
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
