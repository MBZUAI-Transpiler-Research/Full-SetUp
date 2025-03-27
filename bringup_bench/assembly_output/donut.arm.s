	.arch armv8-a
	.file	"donut.c"
	.text
	.global	k
	.bss
	.align	2
	.type	k, %object
	.size	k, 4
k:
	.zero	4
	.section	.rodata
	.align	3
.LC0:
	.string	"\033[2J"
	.align	3
.LC2:
	.string	"\033[H"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	mov	x13, 8896
	sub	sp, sp, x13
	.cfi_def_cfa_offset 8912
	str	xzr, [sp, 1024]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 8888]
	mov	x1, 0
	str	wzr, [sp, 8]
	str	wzr, [sp, 12]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	libmin_printf
	str	wzr, [sp, 24]
	b	.L2
.L13:
	add	x0, sp, 4096
	add	x0, x0, 3032
	mov	x2, 1760
	mov	w1, 32
	bl	libmin_memset
	add	x0, sp, 88
	mov	x2, 7040
	mov	w1, 0
	bl	libmin_memset
	str	wzr, [sp, 20]
	b	.L3
.L8:
	str	wzr, [sp, 16]
	b	.L4
.L7:
	ldr	s0, [sp, 16]
	fcvt	d0, s0
	bl	libmin_sin
	fcvt	s0, d0
	str	s0, [sp, 28]
	ldr	s0, [sp, 20]
	fcvt	d0, s0
	bl	libmin_cos
	fcvt	s0, d0
	str	s0, [sp, 32]
	ldr	s0, [sp, 8]
	fcvt	d0, s0
	bl	libmin_sin
	fcvt	s0, d0
	str	s0, [sp, 36]
	ldr	s0, [sp, 20]
	fcvt	d0, s0
	bl	libmin_sin
	fcvt	s0, d0
	str	s0, [sp, 40]
	ldr	s0, [sp, 8]
	fcvt	d0, s0
	bl	libmin_cos
	fcvt	s0, d0
	str	s0, [sp, 44]
	ldr	s1, [sp, 32]
	fmov	s0, 2.0e+0
	fadd	s0, s1, s0
	str	s0, [sp, 48]
	ldr	s1, [sp, 28]
	ldr	s0, [sp, 48]
	fmul	s1, s1, s0
	ldr	s0, [sp, 36]
	fmul	s1, s1, s0
	ldr	s2, [sp, 40]
	ldr	s0, [sp, 44]
	fmul	s0, s2, s0
	fadd	s1, s1, s0
	fmov	s0, 5.0e+0
	fadd	s0, s1, s0
	fmov	s1, 1.0e+0
	fdiv	s0, s1, s0
	str	s0, [sp, 52]
	ldr	s0, [sp, 16]
	fcvt	d0, s0
	bl	libmin_cos
	fcvt	s0, d0
	str	s0, [sp, 56]
	ldr	s0, [sp, 12]
	fcvt	d0, s0
	bl	libmin_cos
	fcvt	s0, d0
	str	s0, [sp, 60]
	ldr	s0, [sp, 12]
	fcvt	d0, s0
	bl	libmin_sin
	fcvt	s0, d0
	str	s0, [sp, 64]
	ldr	s1, [sp, 28]
	ldr	s0, [sp, 48]
	fmul	s1, s1, s0
	ldr	s0, [sp, 44]
	fmul	s1, s1, s0
	ldr	s2, [sp, 40]
	ldr	s0, [sp, 36]
	fmul	s0, s2, s0
	fsub	s0, s1, s0
	str	s0, [sp, 68]
	ldr	s1, [sp, 52]
	fmov	s0, 3.0e+1
	fmul	s1, s1, s0
	ldr	s2, [sp, 56]
	ldr	s0, [sp, 48]
	fmul	s2, s2, s0
	ldr	s0, [sp, 60]
	fmul	s2, s2, s0
	ldr	s3, [sp, 68]
	ldr	s0, [sp, 64]
	fmul	s0, s3, s0
	fsub	s0, s2, s0
	fmul	s0, s1, s0
	mov	w0, 1109393408
	fmov	s1, w0
	fadd	s0, s0, s1
	fcvtzs	s0, s0
	str	s0, [sp, 72]
	ldr	s1, [sp, 52]
	fmov	s0, 1.5e+1
	fmul	s1, s1, s0
	ldr	s2, [sp, 56]
	ldr	s0, [sp, 48]
	fmul	s2, s2, s0
	ldr	s0, [sp, 64]
	fmul	s2, s2, s0
	ldr	s3, [sp, 68]
	ldr	s0, [sp, 60]
	fmul	s0, s3, s0
	fadd	s0, s2, s0
	fmul	s1, s1, s0
	fmov	s0, 1.2e+1
	fadd	s0, s1, s0
	fcvtzs	s0, s0
	str	s0, [sp, 76]
	ldr	w1, [sp, 76]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 4
	mov	w1, w0
	ldr	w0, [sp, 72]
	add	w0, w0, w1
	str	w0, [sp, 80]
	ldr	s1, [sp, 40]
	ldr	s0, [sp, 36]
	fmul	s1, s1, s0
	ldr	s2, [sp, 28]
	ldr	s0, [sp, 32]
	fmul	s2, s2, s0
	ldr	s0, [sp, 44]
	fmul	s0, s2, s0
	fsub	s1, s1, s0
	ldr	s0, [sp, 60]
	fmul	s1, s1, s0
	ldr	s2, [sp, 28]
	ldr	s0, [sp, 32]
	fmul	s2, s2, s0
	ldr	s0, [sp, 36]
	fmul	s0, s2, s0
	fsub	s1, s1, s0
	ldr	s2, [sp, 40]
	ldr	s0, [sp, 44]
	fmul	s0, s2, s0
	fsub	s1, s1, s0
	ldr	s2, [sp, 56]
	ldr	s0, [sp, 32]
	fmul	s2, s2, s0
	ldr	s0, [sp, 64]
	fmul	s0, s2, s0
	fsub	s1, s1, s0
	fmov	s0, 8.0e+0
	fmul	s0, s1, s0
	fcvtzs	s0, s0
	str	s0, [sp, 84]
	ldr	w0, [sp, 76]
	cmp	w0, 21
	bgt	.L5
	ldr	w0, [sp, 76]
	cmp	w0, 0
	ble	.L5
	ldr	w0, [sp, 72]
	cmp	w0, 0
	ble	.L5
	ldr	w0, [sp, 72]
	cmp	w0, 79
	bgt	.L5
	ldrsw	x0, [sp, 80]
	lsl	x0, x0, 2
	add	x1, sp, 88
	ldr	s0, [x1, x0]
	ldr	s1, [sp, 52]
	fcmpe	s1, s0
	bgt	.L16
	b	.L5
.L16:
	ldrsw	x0, [sp, 80]
	lsl	x0, x0, 2
	add	x1, sp, 88
	ldr	s0, [sp, 52]
	str	s0, [x1, x0]
	ldr	w1, [sp, 84]
	ldr	w0, [sp, 84]
	mov	w2, 0
	cmp	w1, 0
	csel	w2, w0, w2, ge
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	sxtw	x0, w2
	ldrb	w2, [x1, x0]
	ldrsw	x0, [sp, 80]
	add	x1, sp, 4096
	add	x1, x1, 3032
	strb	w2, [x1, x0]
.L5:
	ldr	s0, [sp, 16]
	fcvt	d0, s0
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fadd	d0, d0, d1
	fcvt	s0, d0
	str	s0, [sp, 16]
.L4:
	ldr	s0, [sp, 16]
	fcvt	d0, s0
	adrp	x0, .LC4
	ldr	d1, [x0, #:lo12:.LC4]
	fcmpe	d0, d1
	bmi	.L7
	ldr	s0, [sp, 20]
	fcvt	d0, s0
	adrp	x0, .LC5
	ldr	d1, [x0, #:lo12:.LC5]
	fadd	d0, d0, d1
	fcvt	s0, d0
	str	s0, [sp, 20]
.L3:
	ldr	s0, [sp, 20]
	fcvt	d0, s0
	adrp	x0, .LC4
	ldr	d1, [x0, #:lo12:.LC4]
	fcmpe	d0, d1
	bmi	.L8
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	libmin_printf
	adrp	x0, k
	add	x0, x0, :lo12:k
	str	wzr, [x0]
	b	.L9
.L12:
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w2, [x0]
	mov	w0, 26215
	movk	w0, 0x6666, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	asr	w1, w0, 5
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 4
	sub	w1, w2, w0
	cmp	w1, 0
	beq	.L10
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	sxtw	x0, w0
	add	x1, sp, 4096
	add	x1, x1, 3032
	ldrb	w0, [x1, x0]
	b	.L11
.L10:
	mov	w0, 10
.L11:
	bl	libmin_putc
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, k
	add	x0, x0, :lo12:k
	str	w1, [x0]
.L9:
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	cmp	w0, 1760
	ble	.L12
	ldr	s0, [sp, 8]
	fcvt	d0, s0
	adrp	x0, .LC6
	ldr	d1, [x0, #:lo12:.LC6]
	fadd	d0, d0, d1
	fcvt	s0, d0
	str	s0, [sp, 8]
	ldr	s0, [sp, 12]
	fcvt	d0, s0
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fadd	d0, d0, d1
	fcvt	s0, d0
	str	s0, [sp, 12]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L2:
	ldr	w0, [sp, 24]
	cmp	w0, 63
	bls	.L13
	bl	libmin_success
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 8888]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L15
	bl	__stack_chk_fail
.L15:
	mov	w0, w1
	mov	x13, 8896
	add	sp, sp, x13
	.cfi_def_cfa_offset 16
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC1:
	.string	".,-~:;=!*#$@"
	.text
	.section	.rodata
	.align	3
.LC3:
	.word	1202590843
	.word	1066695393
	.align	3
.LC4:
	.word	1374389535
	.word	1075388088
	.align	3
.LC5:
	.word	515396076
	.word	1068624773
	.align	3
.LC6:
	.word	1202590843
	.word	1067743969
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
