	.arch armv8-a
	.file	"libmin_sincos.c"
	.text
	.section	.rodata
	.align	3
	.type	S1, %object
	.size	S1, 8
S1:
	.word	1431655753
	.word	-1077586603
	.align	3
	.type	S2, %object
	.size	S2, 8
S2:
	.word	286324902
	.word	1065423121
	.align	3
	.type	S3, %object
	.size	S3, 8
S3:
	.word	432103893
	.word	-1087766112
	.align	3
	.type	S4, %object
	.size	S4, 8
S4:
	.word	1471282813
	.word	1053236707
	.align	3
	.type	S5, %object
	.size	S5, 8
S5:
	.word	-1976853269
	.word	-1101339162
	.align	3
	.type	S6, %object
	.size	S6, 8
S6:
	.word	1523570044
	.word	1038473530
	.text
	.align	2
	.global	__sin
	.type	__sin, %function
__sin:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	d0, [sp, 24]
	str	d1, [sp, 16]
	str	w0, [sp, 12]
	ldr	d0, [sp, 24]
	fmul	d0, d0, d0
	str	d0, [sp, 32]
	ldr	d0, [sp, 32]
	fmul	d0, d0, d0
	str	d0, [sp, 40]
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	ldr	d0, [sp, 32]
	fmul	d0, d1, d0
	adrp	x0, .LC1
	ldr	d1, [x0, #:lo12:.LC1]
	fadd	d1, d0, d1
	ldr	d0, [sp, 32]
	fmul	d0, d1, d0
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	fadd	d1, d0, d1
	ldr	d2, [sp, 32]
	ldr	d0, [sp, 40]
	fmul	d2, d2, d0
	adrp	x0, .LC3
	ldr	d3, [x0, #:lo12:.LC3]
	ldr	d0, [sp, 32]
	fmul	d0, d3, d0
	adrp	x0, .LC4
	ldr	d3, [x0, #:lo12:.LC4]
	fadd	d0, d0, d3
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	str	d0, [sp, 48]
	ldr	d1, [sp, 32]
	ldr	d0, [sp, 24]
	fmul	d0, d1, d0
	str	d0, [sp, 56]
	ldr	w0, [sp, 12]
	cmp	w0, 0
	bne	.L2
	ldr	d1, [sp, 32]
	ldr	d0, [sp, 48]
	fmul	d0, d1, d0
	adrp	x0, .LC5
	ldr	d1, [x0, #:lo12:.LC5]
	fadd	d1, d0, d1
	ldr	d0, [sp, 56]
	fmul	d1, d1, d0
	ldr	d0, [sp, 24]
	fadd	d0, d1, d0
	b	.L3
.L2:
	ldr	d1, [sp, 16]
	fmov	d0, 5.0e-1
	fmul	d1, d1, d0
	ldr	d2, [sp, 56]
	ldr	d0, [sp, 48]
	fmul	d0, d2, d0
	fsub	d1, d1, d0
	ldr	d0, [sp, 32]
	fmul	d1, d1, d0
	ldr	d0, [sp, 16]
	fsub	d1, d1, d0
	adrp	x0, .LC5
	ldr	d2, [x0, #:lo12:.LC5]
	ldr	d0, [sp, 56]
	fmul	d0, d2, d0
	fsub	d0, d1, d0
	ldr	d1, [sp, 24]
	fsub	d0, d1, d0
.L3:
	add	sp, sp, 64
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	__sin, .-__sin
	.section	.rodata
	.align	3
	.type	C1, %object
	.size	C1, 8
C1:
	.word	1431655756
	.word	1067799893
	.align	3
	.type	C2, %object
	.size	C2, 8
C2:
	.word	381768055
	.word	-1084833428
	.align	3
	.type	C3, %object
	.size	C3, 8
C3:
	.word	432739728
	.word	1056571808
	.align	3
	.type	C4, %object
	.size	C4, 8
C4:
	.word	-2137238867
	.word	-1097695665
	.align	3
	.type	C5, %object
	.size	C5, 8
C5:
	.word	-1112231484
	.word	1042411166
	.align	3
	.type	C6, %object
	.size	C6, 8
C6:
	.word	-1098368812
	.word	-1112999191
	.text
	.align	2
	.global	__cos
	.type	__cos, %function
__cos:
.LFB4:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	d0, [sp, 8]
	str	d1, [sp]
	ldr	d0, [sp, 8]
	fmul	d0, d0, d0
	str	d0, [sp, 16]
	ldr	d0, [sp, 16]
	fmul	d0, d0, d0
	str	d0, [sp, 24]
	adrp	x0, .LC6
	ldr	d1, [x0, #:lo12:.LC6]
	ldr	d0, [sp, 16]
	fmul	d0, d1, d0
	adrp	x0, .LC7
	ldr	d1, [x0, #:lo12:.LC7]
	fadd	d1, d0, d1
	ldr	d0, [sp, 16]
	fmul	d0, d1, d0
	adrp	x0, .LC8
	ldr	d1, [x0, #:lo12:.LC8]
	fadd	d1, d0, d1
	ldr	d0, [sp, 16]
	fmul	d1, d1, d0
	ldr	d0, [sp, 24]
	fmul	d2, d0, d0
	adrp	x0, .LC9
	ldr	d3, [x0, #:lo12:.LC9]
	ldr	d0, [sp, 16]
	fmul	d0, d3, d0
	adrp	x0, .LC10
	ldr	d3, [x0, #:lo12:.LC10]
	fadd	d3, d0, d3
	ldr	d0, [sp, 16]
	fmul	d0, d3, d0
	adrp	x0, .LC11
	ldr	d3, [x0, #:lo12:.LC11]
	fadd	d0, d0, d3
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	str	d0, [sp, 32]
	ldr	d1, [sp, 16]
	fmov	d0, 5.0e-1
	fmul	d0, d1, d0
	str	d0, [sp, 40]
	fmov	d1, 1.0e+0
	ldr	d0, [sp, 40]
	fsub	d0, d1, d0
	str	d0, [sp, 24]
	fmov	d1, 1.0e+0
	ldr	d0, [sp, 24]
	fsub	d1, d1, d0
	ldr	d0, [sp, 40]
	fsub	d1, d1, d0
	ldr	d2, [sp, 16]
	ldr	d0, [sp, 32]
	fmul	d2, d2, d0
	ldr	d3, [sp, 8]
	ldr	d0, [sp]
	fmul	d0, d3, d0
	fsub	d0, d2, d0
	fadd	d1, d1, d0
	ldr	d0, [sp, 24]
	fadd	d0, d1, d0
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	__cos, .-__cos
	.align	2
	.global	libmin_cos
	.type	libmin_cos, %function
libmin_cos:
.LFB5:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80
	str	d0, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	ldr	d0, [sp, 8]
	str	d0, [sp, 32]
	ldr	x0, [sp, 32]
	lsr	x0, x0, 32
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	and	w0, w0, 2147483647
	str	w0, [sp, 24]
	ldr	w1, [sp, 24]
	mov	w0, 8699
	movk	w0, 0x3fe9, lsl 16
	cmp	w1, w0
	bhi	.L7
	ldr	w1, [sp, 24]
	mov	w0, 41117
	movk	w0, 0x3e46, lsl 16
	cmp	w1, w0
	bhi	.L8
	ldr	d0, [sp, 8]
	mov	x0, 5147614374084476928
	fmov	d1, x0
	fadd	d0, d0, d1
	str	d0, [sp, 32]
	ldr	d0, [sp, 32]
	fmov	d0, 1.0e+0
	b	.L15
.L8:
	movi	d1, #0
	ldr	d0, [sp, 8]
	bl	__cos
	b	.L15
.L7:
	ldr	w1, [sp, 24]
	mov	w0, 2146435071
	cmp	w1, w0
	bls	.L10
	ldr	d0, [sp, 8]
	fsub	d0, d0, d0
	b	.L15
.L10:
	add	x0, sp, 56
	ldr	d0, [sp, 8]
	bl	__rem_pio2
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	and	w0, w0, 3
	cmp	w0, 2
	beq	.L11
	cmp	w0, 2
	bhi	.L12
	cmp	w0, 0
	beq	.L13
	cmp	w0, 1
	beq	.L14
	b	.L12
.L13:
	ldr	d0, [sp, 56]
	ldr	d1, [sp, 64]
	bl	__cos
	b	.L15
.L14:
	ldr	d0, [sp, 56]
	ldr	d1, [sp, 64]
	mov	w0, 1
	bl	__sin
	fneg	d0, d0
	b	.L15
.L11:
	ldr	d0, [sp, 56]
	ldr	d1, [sp, 64]
	bl	__cos
	fneg	d0, d0
	b	.L15
.L12:
	ldr	d0, [sp, 56]
	ldr	d1, [sp, 64]
	mov	w0, 1
	bl	__sin
.L15:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 72]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L16
	bl	__stack_chk_fail
.L16:
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 96
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	libmin_cos, .-libmin_cos
	.align	2
	.global	libmin_sin
	.type	libmin_sin, %function
libmin_sin:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64
	str	d0, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	str	xzr, [sp, 32]
	ldr	d0, [sp, 8]
	str	d0, [sp, 24]
	ldr	x0, [sp, 24]
	lsr	x0, x0, 32
	str	w0, [sp, 16]
	ldr	w0, [sp, 16]
	and	w0, w0, 2147483647
	str	w0, [sp, 16]
	ldr	w1, [sp, 16]
	mov	w0, 8699
	movk	w0, 0x3fe9, lsl 16
	cmp	w1, w0
	bgt	.L18
	ldr	w1, [sp, 16]
	mov	w0, 1045430271
	cmp	w1, w0
	bgt	.L19
	ldr	d0, [sp, 8]
	fcvtzs	w0, d0
	cmp	w0, 0
	bne	.L19
	ldr	d0, [sp, 8]
	b	.L26
.L19:
	mov	w0, 0
	ldr	d1, [sp, 32]
	ldr	d0, [sp, 8]
	bl	__sin
	b	.L26
.L18:
	ldr	w1, [sp, 16]
	mov	w0, 2146435071
	cmp	w1, w0
	ble	.L21
	ldr	d0, [sp, 8]
	fsub	d0, d0, d0
	b	.L26
.L21:
	add	x0, sp, 40
	ldr	d0, [sp, 8]
	bl	__rem_pio2
	str	w0, [sp, 20]
	ldr	w0, [sp, 20]
	and	w0, w0, 3
	cmp	w0, 2
	beq	.L22
	cmp	w0, 2
	bgt	.L23
	cmp	w0, 0
	beq	.L24
	cmp	w0, 1
	beq	.L25
	b	.L23
.L24:
	ldr	d0, [sp, 40]
	ldr	d1, [sp, 48]
	mov	w0, 1
	bl	__sin
	b	.L26
.L25:
	ldr	d0, [sp, 40]
	ldr	d1, [sp, 48]
	bl	__cos
	b	.L26
.L22:
	ldr	d0, [sp, 40]
	ldr	d1, [sp, 48]
	mov	w0, 1
	bl	__sin
	fneg	d0, d0
	b	.L26
.L23:
	ldr	d0, [sp, 40]
	ldr	d1, [sp, 48]
	bl	__cos
	fneg	d0, d0
.L26:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 56]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L27
	bl	__stack_chk_fail
.L27:
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	libmin_sin, .-libmin_sin
	.section	.rodata
	.align	3
.LC0:
	.word	1471282813
	.word	1053236707
	.align	3
.LC1:
	.word	432103893
	.word	-1087766112
	.align	3
.LC2:
	.word	286324902
	.word	1065423121
	.align	3
.LC3:
	.word	1523570044
	.word	1038473530
	.align	3
.LC4:
	.word	-1976853269
	.word	-1101339162
	.align	3
.LC5:
	.word	1431655753
	.word	-1077586603
	.align	3
.LC6:
	.word	432739728
	.word	1056571808
	.align	3
.LC7:
	.word	381768055
	.word	-1084833428
	.align	3
.LC8:
	.word	1431655756
	.word	1067799893
	.align	3
.LC9:
	.word	-1098368812
	.word	-1112999191
	.align	3
.LC10:
	.word	-1112231484
	.word	1042411166
	.align	3
.LC11:
	.word	-2137238867
	.word	-1097695665
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
