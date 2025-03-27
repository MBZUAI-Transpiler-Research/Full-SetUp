	.arch armv8-a
	.file	"tiny-NN.c"
	.text
	.align	2
	.global	g_deriv
	.type	g_deriv, %function
g_deriv:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	d0, [sp, 24]
	ldr	d0, [sp, 24]
	fneg	d0, d0
	bl	libmin_exp
	fmov	d1, d0
	fmov	d0, 1.0e+0
	fadd	d0, d1, d0
	fmov	d1, 1.0e+0
	fdiv	d0, d1, d0
	str	d0, [sp, 40]
	fmov	d1, 1.0e+0
	ldr	d0, [sp, 40]
	fsub	d1, d1, d0
	ldr	d0, [sp, 40]
	fmul	d0, d1, d0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	g_deriv, .-g_deriv
	.align	2
	.global	g
	.type	g, %function
g:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	d0, [sp, 24]
	ldr	d0, [sp, 24]
	fneg	d0, d0
	bl	libmin_exp
	fmov	d1, d0
	fmov	d0, 1.0e+0
	fadd	d0, d1, d0
	fmov	d1, 1.0e+0
	fdiv	d0, d1, d0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	g, .-g
	.align	2
	.global	sampleSine
	.type	sampleSine, %function
sampleSine:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -80
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	d0, [sp, 56]
	str	d1, [sp, 48]
	str	w2, [sp, 44]
	ldr	d1, [sp, 48]
	ldr	d0, [sp, 56]
	fsub	d1, d1, d0
	ldr	w0, [sp, 44]
	ucvtf	d0, w0
	fdiv	d0, d1, d0
	str	d0, [sp, 88]
	str	wzr, [sp, 84]
	b	.L6
.L7:
	ldr	w0, [sp, 84]
	ucvtf	d1, w0
	ldr	d0, [sp, 88]
	fmul	d1, d1, d0
	ldr	w0, [sp, 84]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	d0, [sp, 56]
	fadd	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 84]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	d0, [x0]
	ldr	w0, [sp, 84]
	lsl	x0, x0, 3
	ldr	x1, [sp, 64]
	add	x19, x1, x0
	bl	libmin_sin
	str	d0, [x19]
	ldr	w0, [sp, 84]
	add	w0, w0, 1
	str	w0, [sp, 84]
.L6:
	ldr	w1, [sp, 84]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	bcc	.L7
	nop
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	sampleSine, .-sampleSine
	.align	2
	.global	fillArrayRand
	.type	fillArrayRand, %function
fillArrayRand:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	wzr, [sp, 44]
	b	.L9
.L10:
	bl	libmin_rand
	ucvtf	d0, w0
	mov	x0, 281474972516352
	movk	x0, 0x41df, lsl 48
	fmov	d1, x0
	fdiv	d1, d0, d1
	ldr	w0, [sp, 44]
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	fmov	d0, 5.0e-1
	fsub	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L9:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	bcc	.L10
	nop
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	fillArrayRand, .-fillArrayRand
	.align	2
	.global	fillArrayNull
	.type	fillArrayNull, %function
fillArrayNull:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	str	wzr, [sp, 28]
	b	.L12
.L13:
	ldr	w0, [sp, 28]
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	str	xzr, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L12:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	bcc	.L13
	nop
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	fillArrayNull, .-fillArrayNull
	.section	.rodata
	.align	3
.LC0:
	.string	"iteration %d Total error %f\n"
	.text
	.align	2
	.global	train
	.type	train, %function
train:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	sub	sp, sp, #1712
	.cfi_def_cfa_offset 1728
	str	xzr, [sp, 1024]
	str	d0, [sp, 24]
	str	d1, [sp, 16]
	str	d2, [sp, 8]
	str	d3, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 1704]
	mov	x1, 0
	ldr	d1, [sp, 16]
	fmov	d0, 1.0e+0
	fadd	d0, d1, d0
	str	d0, [sp, 48]
	str	xzr, [sp, 56]
	add	x0, sp, 1064
	mov	w1, 40
	bl	fillArrayRand
	add	x0, sp, 424
	mov	w1, 20
	bl	fillArrayRand
	add	x0, sp, 1384
	mov	w1, 40
	bl	fillArrayNull
	add	x0, sp, 584
	mov	w1, 20
	bl	fillArrayNull
	add	x1, sp, 264
	add	x0, sp, 104
	mov	w2, 20
	adrp	x3, .LC1
	ldr	d1, [x3, #:lo12:.LC1]
	movi	d0, #0
	bl	sampleSine
	str	wzr, [sp, 36]
	b	.L15
.L24:
	str	xzr, [sp, 48]
	str	wzr, [sp, 40]
	b	.L16
.L21:
	str	wzr, [sp, 44]
	b	.L17
.L18:
	ldr	w0, [sp, 40]
	lsl	x0, x0, 3
	add	x1, sp, 104
	ldr	d1, [x1, x0]
	ldr	w0, [sp, 44]
	lsl	w0, w0, 1
	uxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 1064
	ldr	d0, [x1, x0]
	fmul	d1, d1, d0
	ldr	w0, [sp, 44]
	lsl	w0, w0, 1
	add	w0, w0, 1
	uxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 1064
	ldr	d2, [x1, x0]
	ldr	d0, [sp, 8]
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	str	d0, [sp, 96]
	ldr	d0, [sp, 96]
	bl	g
	ldr	w0, [sp, 44]
	lsl	x0, x0, 3
	add	x1, sp, 744
	str	d0, [x1, x0]
	ldr	d0, [sp, 96]
	bl	g_deriv
	ldr	w0, [sp, 44]
	lsl	x0, x0, 3
	add	x1, sp, 904
	str	d0, [x1, x0]
	ldr	w0, [sp, 44]
	lsl	x0, x0, 3
	add	x1, sp, 424
	ldr	d1, [x1, x0]
	ldr	w0, [sp, 44]
	lsl	x0, x0, 3
	add	x1, sp, 744
	ldr	d0, [x1, x0]
	fmul	d0, d1, d0
	ldr	d1, [sp, 56]
	fadd	d0, d1, d0
	str	d0, [sp, 56]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L17:
	ldr	w0, [sp, 44]
	cmp	w0, 19
	bls	.L18
	ldr	w0, [sp, 40]
	lsl	x0, x0, 3
	add	x1, sp, 264
	ldr	d0, [x1, x0]
	ldr	d1, [sp, 56]
	fsub	d0, d1, d0
	str	d0, [sp, 64]
	ldr	d0, [sp, 64]
	fmul	d0, d0, d0
	ldr	d1, [sp, 48]
	fadd	d0, d1, d0
	str	d0, [sp, 48]
	str	wzr, [sp, 44]
	b	.L19
.L20:
	ldr	w0, [sp, 44]
	lsl	x0, x0, 3
	add	x1, sp, 904
	ldr	d1, [x1, x0]
	ldr	w0, [sp, 44]
	lsl	x0, x0, 3
	add	x1, sp, 424
	ldr	d0, [x1, x0]
	fmul	d0, d1, d0
	ldr	d1, [sp, 64]
	fmul	d0, d1, d0
	str	d0, [sp, 72]
	ldr	w0, [sp, 44]
	lsl	x0, x0, 3
	add	x1, sp, 744
	ldr	d0, [x1, x0]
	ldr	d1, [sp, 64]
	fmul	d0, d1, d0
	str	d0, [sp, 80]
	ldr	w0, [sp, 44]
	lsl	x0, x0, 3
	add	x1, sp, 424
	ldr	d1, [x1, x0]
	ldr	d2, [sp, 80]
	ldr	d0, [sp, 24]
	fmul	d2, d2, d0
	ldr	w0, [sp, 44]
	lsl	x0, x0, 3
	add	x1, sp, 584
	ldr	d3, [x1, x0]
	ldr	d0, [sp]
	fmul	d0, d3, d0
	fadd	d0, d2, d0
	fsub	d0, d1, d0
	ldr	w0, [sp, 44]
	lsl	x0, x0, 3
	add	x1, sp, 424
	str	d0, [x1, x0]
	ldr	d1, [sp, 80]
	ldr	d0, [sp, 24]
	fmul	d1, d1, d0
	ldr	w0, [sp, 44]
	lsl	x0, x0, 3
	add	x1, sp, 584
	ldr	d2, [x1, x0]
	ldr	d0, [sp]
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	ldr	w0, [sp, 44]
	lsl	x0, x0, 3
	add	x1, sp, 584
	str	d0, [x1, x0]
	ldr	w0, [sp, 40]
	lsl	x0, x0, 3
	add	x1, sp, 104
	ldr	d0, [x1, x0]
	ldr	d1, [sp, 72]
	fmul	d0, d1, d0
	str	d0, [sp, 88]
	ldr	w0, [sp, 44]
	lsl	w0, w0, 1
	uxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 1064
	ldr	d1, [x1, x0]
	ldr	d2, [sp, 88]
	ldr	d0, [sp, 24]
	fmul	d2, d2, d0
	ldr	w0, [sp, 44]
	lsl	w0, w0, 1
	uxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 1384
	ldr	d3, [x1, x0]
	ldr	d0, [sp]
	fmul	d0, d3, d0
	fadd	d0, d2, d0
	ldr	w0, [sp, 44]
	lsl	w0, w0, 1
	fsub	d0, d1, d0
	uxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 1064
	str	d0, [x1, x0]
	ldr	d1, [sp, 88]
	ldr	d0, [sp, 24]
	fmul	d1, d1, d0
	ldr	w0, [sp, 44]
	lsl	w0, w0, 1
	uxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 1384
	ldr	d2, [x1, x0]
	ldr	d0, [sp]
	fmul	d0, d2, d0
	ldr	w0, [sp, 44]
	lsl	w0, w0, 1
	fadd	d0, d1, d0
	uxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 1384
	str	d0, [x1, x0]
	ldr	d1, [sp, 72]
	ldr	d0, [sp, 8]
	fmul	d0, d1, d0
	str	d0, [sp, 88]
	ldr	w0, [sp, 44]
	lsl	w0, w0, 1
	add	w0, w0, 1
	uxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 1064
	ldr	d1, [x1, x0]
	ldr	d2, [sp, 88]
	ldr	d0, [sp, 24]
	fmul	d2, d2, d0
	ldr	w0, [sp, 44]
	lsl	w0, w0, 1
	add	w0, w0, 1
	uxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 1384
	ldr	d3, [x1, x0]
	ldr	d0, [sp]
	fmul	d0, d3, d0
	fadd	d0, d2, d0
	ldr	w0, [sp, 44]
	lsl	w0, w0, 1
	add	w0, w0, 1
	fsub	d0, d1, d0
	uxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 1064
	str	d0, [x1, x0]
	ldr	d1, [sp, 88]
	ldr	d0, [sp, 24]
	fmul	d1, d1, d0
	ldr	w0, [sp, 44]
	lsl	w0, w0, 1
	add	w0, w0, 1
	uxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 1384
	ldr	d2, [x1, x0]
	ldr	d0, [sp]
	fmul	d0, d2, d0
	ldr	w0, [sp, 44]
	lsl	w0, w0, 1
	add	w0, w0, 1
	fadd	d0, d1, d0
	uxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 1384
	str	d0, [x1, x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L19:
	ldr	w0, [sp, 44]
	cmp	w0, 19
	bls	.L20
	str	xzr, [sp, 56]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L16:
	ldr	w0, [sp, 40]
	cmp	w0, 19
	bls	.L21
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	add	x0, sp, 1384
	mov	w1, 40
	bl	fillArrayNull
	add	x0, sp, 584
	mov	w1, 20
	bl	fillArrayNull
	ldr	d0, [sp, 48]
	ldr	w1, [sp, 36]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	libmin_printf
.L15:
	ldr	d1, [sp, 48]
	ldr	d0, [sp, 16]
	fcmpe	d1, d0
	bgt	.L27
	b	.L22
.L27:
	ldr	w0, [sp, 36]
	cmp	w0, 9
	bls	.L24
.L22:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 1704]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L26
	bl	__stack_chk_fail
.L26:
	mov	w0, w1
	add	sp, sp, 1712
	.cfi_def_cfa_offset 16
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	train, .-train
	.align	2
	.global	main
	.type	main, %function
main:
.LFB9:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	mov	w0, 42
	bl	libmin_srand
	adrp	x0, .LC2
	ldr	d3, [x0, #:lo12:.LC2]
	fmov	d2, 1.0e+0
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	adrp	x0, .LC4
	ldr	d0, [x0, #:lo12:.LC4]
	bl	train
	bl	libmin_success
	mov	w0, 0
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC1:
	.word	1374389535
	.word	1074339512
	.align	3
.LC2:
	.word	-1717986918
	.word	1071225241
	.align	3
.LC3:
	.word	1202590843
	.word	1065646817
	.align	3
.LC4:
	.word	1202590843
	.word	1064598241
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
