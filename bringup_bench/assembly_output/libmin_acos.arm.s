	.arch armv8-a
	.file	"libmin_acos.c"
	.text
	.section	.rodata
	.align	3
	.type	one, %object
	.size	one, 8
one:
	.word	0
	.word	1072693248
	.align	3
	.type	pi, %object
	.size	pi, 8
pi:
	.word	1413754136
	.word	1074340347
	.align	3
	.type	pio2_hi, %object
	.size	pio2_hi, 8
pio2_hi:
	.word	1413754136
	.word	1073291771
	.data
	.align	3
	.type	pio2_lo, %object
	.size	pio2_lo, 8
pio2_lo:
	.word	856972295
	.word	1016178214
	.section	.rodata
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
	.global	libmin_acos
	.type	libmin_acos, %function
libmin_acos:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	str	d0, [sp, 24]
	ldr	d0, [sp, 24]
	str	d0, [sp, 56]
	ldr	x0, [sp, 56]
	lsr	x0, x0, 32
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	and	w0, w0, 2147483647
	str	w0, [sp, 48]
	ldr	w1, [sp, 48]
	mov	w0, 1072693247
	cmp	w1, w0
	ble	.L2
	ldr	d0, [sp, 24]
	str	d0, [sp, 56]
	ldr	x0, [sp, 56]
	str	w0, [sp, 52]
	ldr	w1, [sp, 48]
	mov	w0, -1072693248
	add	w0, w1, w0
	mov	w1, w0
	ldr	w0, [sp, 52]
	orr	w0, w1, w0
	cmp	w0, 0
	bne	.L3
	ldr	w0, [sp, 44]
	cmp	w0, 0
	ble	.L4
	movi	d0, #0
	b	.L5
.L4:
	adrp	x0, pio2_lo
	add	x0, x0, :lo12:pio2_lo
	ldr	d0, [x0]
	fadd	d0, d0, d0
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	fadd	d0, d0, d1
	b	.L5
.L3:
	ldr	d0, [sp, 24]
	fsub	d1, d0, d0
	ldr	d0, [sp, 24]
	fsub	d0, d0, d0
	fdiv	d0, d1, d0
	b	.L5
.L2:
	ldr	w1, [sp, 48]
	mov	w0, 1071644671
	cmp	w1, w0
	bgt	.L6
	ldr	w1, [sp, 48]
	mov	w0, 1012924416
	cmp	w1, w0
	bgt	.L7
	adrp	x0, .LC1
	ldr	d1, [x0, #:lo12:.LC1]
	adrp	x0, pio2_lo
	add	x0, x0, :lo12:pio2_lo
	ldr	d0, [x0]
	fadd	d0, d1, d0
	b	.L5
.L7:
	ldr	d0, [sp, 24]
	fmul	d0, d0, d0
	str	d0, [sp, 64]
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	ldr	d0, [sp, 64]
	fmul	d0, d1, d0
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fadd	d1, d0, d1
	ldr	d0, [sp, 64]
	fmul	d0, d1, d0
	adrp	x0, .LC4
	ldr	d1, [x0, #:lo12:.LC4]
	fadd	d1, d0, d1
	ldr	d0, [sp, 64]
	fmul	d0, d1, d0
	adrp	x0, .LC5
	ldr	d1, [x0, #:lo12:.LC5]
	fadd	d1, d0, d1
	ldr	d0, [sp, 64]
	fmul	d0, d1, d0
	adrp	x0, .LC6
	ldr	d1, [x0, #:lo12:.LC6]
	fadd	d1, d0, d1
	ldr	d0, [sp, 64]
	fmul	d0, d1, d0
	mov	x0, 6148914691236517205
	movk	x0, 0x3fc5, lsl 48
	fmov	d1, x0
	fadd	d0, d0, d1
	ldr	d1, [sp, 64]
	fmul	d0, d1, d0
	str	d0, [sp, 96]
	adrp	x0, .LC7
	ldr	d1, [x0, #:lo12:.LC7]
	ldr	d0, [sp, 64]
	fmul	d0, d1, d0
	adrp	x0, .LC8
	ldr	d1, [x0, #:lo12:.LC8]
	fadd	d1, d0, d1
	ldr	d0, [sp, 64]
	fmul	d0, d1, d0
	adrp	x0, .LC9
	ldr	d1, [x0, #:lo12:.LC9]
	fadd	d1, d0, d1
	ldr	d0, [sp, 64]
	fmul	d0, d1, d0
	adrp	x0, .LC10
	ldr	d1, [x0, #:lo12:.LC10]
	fadd	d1, d0, d1
	ldr	d0, [sp, 64]
	fmul	d1, d1, d0
	fmov	d0, 1.0e+0
	fadd	d0, d1, d0
	str	d0, [sp, 104]
	ldr	d0, [sp, 104]
	ldr	d1, [sp, 96]
	fdiv	d0, d1, d0
	str	d0, [sp, 112]
	adrp	x0, .LC1
	ldr	d3, [x0, #:lo12:.LC1]
	adrp	x0, pio2_lo
	add	x0, x0, :lo12:pio2_lo
	ldr	d1, [x0]
	ldr	d2, [sp, 24]
	ldr	d0, [sp, 112]
	fmul	d0, d2, d0
	fsub	d0, d1, d0
	ldr	d1, [sp, 24]
	fsub	d0, d1, d0
	fsub	d0, d3, d0
	b	.L5
.L6:
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bge	.L8
	fmov	d1, 1.0e+0
	ldr	d0, [sp, 24]
	fadd	d1, d1, d0
	fmov	d0, 5.0e-1
	fmul	d0, d1, d0
	str	d0, [sp, 64]
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	ldr	d0, [sp, 64]
	fmul	d0, d1, d0
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fadd	d1, d0, d1
	ldr	d0, [sp, 64]
	fmul	d0, d1, d0
	adrp	x0, .LC4
	ldr	d1, [x0, #:lo12:.LC4]
	fadd	d1, d0, d1
	ldr	d0, [sp, 64]
	fmul	d0, d1, d0
	adrp	x0, .LC5
	ldr	d1, [x0, #:lo12:.LC5]
	fadd	d1, d0, d1
	ldr	d0, [sp, 64]
	fmul	d0, d1, d0
	adrp	x0, .LC6
	ldr	d1, [x0, #:lo12:.LC6]
	fadd	d1, d0, d1
	ldr	d0, [sp, 64]
	fmul	d0, d1, d0
	mov	x0, 6148914691236517205
	movk	x0, 0x3fc5, lsl 48
	fmov	d1, x0
	fadd	d0, d0, d1
	ldr	d1, [sp, 64]
	fmul	d0, d1, d0
	str	d0, [sp, 96]
	adrp	x0, .LC7
	ldr	d1, [x0, #:lo12:.LC7]
	ldr	d0, [sp, 64]
	fmul	d0, d1, d0
	adrp	x0, .LC8
	ldr	d1, [x0, #:lo12:.LC8]
	fadd	d1, d0, d1
	ldr	d0, [sp, 64]
	fmul	d0, d1, d0
	adrp	x0, .LC9
	ldr	d1, [x0, #:lo12:.LC9]
	fadd	d1, d0, d1
	ldr	d0, [sp, 64]
	fmul	d0, d1, d0
	adrp	x0, .LC10
	ldr	d1, [x0, #:lo12:.LC10]
	fadd	d1, d0, d1
	ldr	d0, [sp, 64]
	fmul	d1, d1, d0
	fmov	d0, 1.0e+0
	fadd	d0, d1, d0
	str	d0, [sp, 104]
	ldr	d0, [sp, 64]
	bl	libmin_sqrt
	str	d0, [sp, 72]
	ldr	d0, [sp, 104]
	ldr	d1, [sp, 96]
	fdiv	d0, d1, d0
	str	d0, [sp, 112]
	ldr	d1, [sp, 112]
	ldr	d0, [sp, 72]
	fmul	d1, d1, d0
	adrp	x0, pio2_lo
	add	x0, x0, :lo12:pio2_lo
	ldr	d0, [x0]
	fsub	d0, d1, d0
	str	d0, [sp, 120]
	adrp	x0, .LC0
	ldr	d2, [x0, #:lo12:.LC0]
	ldr	d1, [sp, 72]
	ldr	d0, [sp, 120]
	fadd	d0, d1, d0
	fadd	d0, d0, d0
	fsub	d0, d2, d0
	b	.L5
.L8:
	fmov	d1, 1.0e+0
	ldr	d0, [sp, 24]
	fsub	d1, d1, d0
	fmov	d0, 5.0e-1
	fmul	d0, d1, d0
	str	d0, [sp, 64]
	ldr	d0, [sp, 64]
	bl	libmin_sqrt
	str	d0, [sp, 72]
	ldr	d0, [sp, 72]
	str	d0, [sp, 80]
	ldr	d0, [sp, 80]
	str	d0, [sp, 56]
	ldr	x0, [sp, 56]
	and	x0, x0, -4294967296
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	str	x0, [sp, 56]
	ldr	d0, [sp, 56]
	str	d0, [sp, 80]
	ldr	d0, [sp, 80]
	fmul	d0, d0, d0
	ldr	d1, [sp, 64]
	fsub	d1, d1, d0
	ldr	d2, [sp, 72]
	ldr	d0, [sp, 80]
	fadd	d0, d2, d0
	fdiv	d0, d1, d0
	str	d0, [sp, 88]
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	ldr	d0, [sp, 64]
	fmul	d0, d1, d0
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fadd	d1, d0, d1
	ldr	d0, [sp, 64]
	fmul	d0, d1, d0
	adrp	x0, .LC4
	ldr	d1, [x0, #:lo12:.LC4]
	fadd	d1, d0, d1
	ldr	d0, [sp, 64]
	fmul	d0, d1, d0
	adrp	x0, .LC5
	ldr	d1, [x0, #:lo12:.LC5]
	fadd	d1, d0, d1
	ldr	d0, [sp, 64]
	fmul	d0, d1, d0
	adrp	x0, .LC6
	ldr	d1, [x0, #:lo12:.LC6]
	fadd	d1, d0, d1
	ldr	d0, [sp, 64]
	fmul	d0, d1, d0
	mov	x0, 6148914691236517205
	movk	x0, 0x3fc5, lsl 48
	fmov	d1, x0
	fadd	d0, d0, d1
	ldr	d1, [sp, 64]
	fmul	d0, d1, d0
	str	d0, [sp, 96]
	adrp	x0, .LC7
	ldr	d1, [x0, #:lo12:.LC7]
	ldr	d0, [sp, 64]
	fmul	d0, d1, d0
	adrp	x0, .LC8
	ldr	d1, [x0, #:lo12:.LC8]
	fadd	d1, d0, d1
	ldr	d0, [sp, 64]
	fmul	d0, d1, d0
	adrp	x0, .LC9
	ldr	d1, [x0, #:lo12:.LC9]
	fadd	d1, d0, d1
	ldr	d0, [sp, 64]
	fmul	d0, d1, d0
	adrp	x0, .LC10
	ldr	d1, [x0, #:lo12:.LC10]
	fadd	d1, d0, d1
	ldr	d0, [sp, 64]
	fmul	d1, d1, d0
	fmov	d0, 1.0e+0
	fadd	d0, d1, d0
	str	d0, [sp, 104]
	ldr	d0, [sp, 104]
	ldr	d1, [sp, 96]
	fdiv	d0, d1, d0
	str	d0, [sp, 112]
	ldr	d1, [sp, 112]
	ldr	d0, [sp, 72]
	fmul	d0, d1, d0
	ldr	d1, [sp, 88]
	fadd	d0, d1, d0
	str	d0, [sp, 120]
	ldr	d1, [sp, 80]
	ldr	d0, [sp, 120]
	fadd	d0, d1, d0
	fadd	d0, d0, d0
.L5:
	ldp	x29, x30, [sp], 128
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_acos, .-libmin_acos
	.section	.rodata
	.align	3
.LC0:
	.word	1413754136
	.word	1074340347
	.align	3
.LC1:
	.word	1413754136
	.word	1073291771
	.align	3
.LC2:
	.word	234747657
	.word	1057111521
	.align	3
.LC3:
	.word	1963045512
	.word	1061810144
	.align	3
.LC4:
	.word	-1251438789
	.word	-1079737816
	.align	3
.LC5:
	.word	243811413
	.word	1070186837
	.align	3
.LC6:
	.word	65761149
	.word	-1076570606
	.align	3
.LC7:
	.word	-1322347902
	.word	1068742853
	.align	3
.LC8:
	.word	462225753
	.word	-1075444116
	.align	3
.LC9:
	.word	-1671853368
	.word	1073752805
	.align	3
.LC10:
	.word	478817611
	.word	-1073530329
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
