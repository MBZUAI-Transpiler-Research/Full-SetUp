	.arch armv8-a
	.file	"libmin_exp.c"
	.text
	.align	2
	.type	__DOUBLE_BITS, %function
__DOUBLE_BITS:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	d0, [sp, 8]
	ldr	d0, [sp, 8]
	str	d0, [sp, 24]
	ldr	x0, [sp, 24]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	__DOUBLE_BITS, .-__DOUBLE_BITS
	.section	.rodata
	.align	3
	.type	half, %object
	.size	half, 16
half:
	.word	0
	.word	1071644672
	.word	0
	.word	-1075838976
	.align	3
	.type	ln2hi, %object
	.size	ln2hi, 8
ln2hi:
	.word	-18874368
	.word	1072049730
	.align	3
	.type	ln2lo, %object
	.size	ln2lo, 8
ln2lo:
	.word	897137782
	.word	1038760431
	.align	3
	.type	invln2, %object
	.size	invln2, 8
invln2:
	.word	1697350398
	.word	1073157447
	.align	3
	.type	P1, %object
	.size	P1, 8
P1:
	.word	1431655742
	.word	1069897045
	.align	3
	.type	P2, %object
	.size	P2, 8
P2:
	.word	381599123
	.word	-1083784852
	.align	3
	.type	P3, %object
	.size	P3, 8
P3:
	.word	-1356472788
	.word	1058100842
	.align	3
	.type	P4, %object
	.size	P4, 8
P4:
	.word	-976065551
	.word	-1094992575
	.align	3
	.type	P5, %object
	.size	P5, 8
P5:
	.word	1925096656
	.word	1046886249
	.text
	.align	2
	.global	libmin_exp
	.type	libmin_exp, %function
libmin_exp:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	d0, [sp, 24]
	ldr	d0, [sp, 24]
	str	d0, [sp, 80]
	ldr	x0, [sp, 80]
	lsr	x0, x0, 32
	str	w0, [sp, 40]
	ldr	w0, [sp, 40]
	lsr	w0, w0, 31
	str	w0, [sp, 44]
	ldr	w0, [sp, 40]
	and	w0, w0, 2147483647
	str	w0, [sp, 40]
	ldr	w1, [sp, 40]
	mov	w0, 11841
	movk	w0, 0x4086, lsl 16
	cmp	w1, w0
	bls	.L4
	ldr	d0, [sp, 24]
	bl	__DOUBLE_BITS
	and	x1, x0, 9223372036854775807
	mov	x0, 9218868437227405312
	cmp	x1, x0
	bls	.L5
	ldr	d0, [sp, 24]
	b	.L6
.L5:
	ldr	w1, [sp, 40]
	mov	w0, 2146435072
	cmp	w1, w0
	bne	.L7
	ldr	w0, [sp, 44]
	cmp	w0, 0
	beq	.L7
	movi	d0, #0
	b	.L6
.L7:
	ldr	d0, [sp, 24]
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	fcmpe	d0, d1
	bgt	.L17
	b	.L19
.L17:
	ldr	d0, [sp, 24]
	mov	x0, 9214364837600034816
	fmov	d1, x0
	fmul	d0, d0, d1
	str	d0, [sp, 24]
	ldr	d0, [sp, 24]
	b	.L6
.L19:
	ldr	d0, [sp, 24]
	adrp	x0, .LC1
	ldr	d1, [x0, #:lo12:.LC1]
	fcmpe	d0, d1
	bmi	.L18
	b	.L4
.L18:
	str	xzr, [sp, 24]
	ldr	d0, [sp, 24]
	b	.L6
.L4:
	ldr	w1, [sp, 40]
	mov	w0, 11842
	movk	w0, 0x3fd6, lsl 16
	cmp	w1, w0
	bls	.L11
	ldr	w1, [sp, 40]
	mov	w0, 41649
	movk	w0, 0x3ff0, lsl 16
	cmp	w1, w0
	bls	.L12
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	ldr	d0, [sp, 24]
	fmul	d1, d1, d0
	adrp	x0, half
	add	x0, x0, :lo12:half
	ldrsw	x1, [sp, 44]
	ldr	d0, [x0, x1, lsl 3]
	fadd	d0, d1, d0
	fcvtzs	w0, d0
	str	w0, [sp, 36]
	b	.L13
.L12:
	mov	w1, 1
	ldr	w0, [sp, 44]
	sub	w1, w1, w0
	ldr	w0, [sp, 44]
	sub	w0, w1, w0
	str	w0, [sp, 36]
.L13:
	ldr	w0, [sp, 36]
	scvtf	d0, w0
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d0, d0, d1
	ldr	d1, [sp, 24]
	fsub	d0, d1, d0
	str	d0, [sp, 56]
	ldr	w0, [sp, 36]
	scvtf	d0, w0
	adrp	x0, .LC4
	ldr	d1, [x0, #:lo12:.LC4]
	fmul	d0, d0, d1
	str	d0, [sp, 48]
	ldr	d1, [sp, 56]
	ldr	d0, [sp, 48]
	fsub	d0, d1, d0
	str	d0, [sp, 24]
	b	.L14
.L11:
	ldr	w1, [sp, 40]
	mov	w0, 1043333120
	cmp	w1, w0
	bls	.L15
	str	wzr, [sp, 36]
	ldr	d0, [sp, 24]
	str	d0, [sp, 56]
	str	xzr, [sp, 48]
	b	.L14
.L15:
	ldr	d0, [sp, 24]
	mov	x0, 9214364837600034816
	fmov	d1, x0
	fadd	d0, d0, d1
	str	d0, [sp, 80]
	ldr	d0, [sp, 80]
	ldr	d1, [sp, 24]
	fmov	d0, 1.0e+0
	fadd	d0, d1, d0
	b	.L6
.L14:
	ldr	d0, [sp, 24]
	fmul	d0, d0, d0
	str	d0, [sp, 64]
	adrp	x0, .LC5
	ldr	d1, [x0, #:lo12:.LC5]
	ldr	d0, [sp, 64]
	fmul	d0, d1, d0
	adrp	x0, .LC6
	ldr	d1, [x0, #:lo12:.LC6]
	fadd	d1, d0, d1
	ldr	d0, [sp, 64]
	fmul	d0, d1, d0
	adrp	x0, .LC7
	ldr	d1, [x0, #:lo12:.LC7]
	fadd	d1, d0, d1
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
	ldr	d1, [sp, 24]
	fsub	d0, d1, d0
	str	d0, [sp, 72]
	ldr	d1, [sp, 24]
	ldr	d0, [sp, 72]
	fmul	d1, d1, d0
	fmov	d2, 2.0e+0
	ldr	d0, [sp, 72]
	fsub	d0, d2, d0
	fdiv	d1, d1, d0
	ldr	d0, [sp, 48]
	fsub	d1, d1, d0
	ldr	d0, [sp, 56]
	fadd	d1, d1, d0
	fmov	d0, 1.0e+0
	fadd	d0, d1, d0
	str	d0, [sp, 24]
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bne	.L16
	ldr	d0, [sp, 24]
	b	.L6
.L16:
	ldr	w0, [sp, 36]
	ldr	d0, [sp, 24]
	bl	libmin_scalbn
.L6:
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_exp, .-libmin_exp
	.section	.rodata
	.align	3
.LC0:
	.word	-17155601
	.word	1082535490
	.align	3
.LC1:
	.word	-718458799
	.word	-1064875760
	.align	3
.LC2:
	.word	1697350398
	.word	1073157447
	.align	3
.LC3:
	.word	-18874368
	.word	1072049730
	.align	3
.LC4:
	.word	897137782
	.word	1038760431
	.align	3
.LC5:
	.word	1925096656
	.word	1046886249
	.align	3
.LC6:
	.word	-976065551
	.word	-1094992575
	.align	3
.LC7:
	.word	-1356472788
	.word	1058100842
	.align	3
.LC8:
	.word	381599123
	.word	-1083784852
	.align	3
.LC9:
	.word	1431655742
	.word	1069897045
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
