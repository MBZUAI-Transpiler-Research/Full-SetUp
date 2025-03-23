	.arch armv8-a
	.file	"problem5.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	str	wzr, [sp, 16]
	str	wzr, [sp, 24]
	str	wzr, [sp, 24]
	b	.L2
.L3:
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	s0, [x0]
	ldr	s1, [sp, 16]
	fadd	s0, s1, s0
	str	s0, [sp, 16]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L2:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L3
	ldr	s0, [sp, 4]
	scvtf	s0, s0
	ldr	s1, [sp, 16]
	fdiv	s0, s1, s0
	str	s0, [sp, 28]
	str	wzr, [sp, 20]
	str	wzr, [sp, 24]
	b	.L4
.L5:
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	s1, [x0]
	ldr	s0, [sp, 28]
	fsub	s0, s1, s0
	fabs	s0, s0
	ldr	s1, [sp, 20]
	fadd	s0, s1, s0
	str	s0, [sp, 20]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L4:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L5
	ldr	s0, [sp, 4]
	scvtf	s0, s0
	ldr	s1, [sp, 20]
	fdiv	s0, s1, s0
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC2:
	.string	"problem5.c"
	.align	3
.LC3:
	.string	"fabs(func0(case1, 3) - 2.0/3.0) < 1e-4"
	.align	3
.LC4:
	.string	"fabs(func0(case2, 4) - 1.0) < 1e-4"
	.align	3
.LC5:
	.string	"fabs(func0(case3, 5) - 6.0/5.0) < 1e-4"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, sp
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	mov	x0, sp
	mov	w1, 3
	bl	func0
	fcvt	d0, s0
	mov	x0, 6148914691236517205
	movk	x0, 0x3fe5, lsl 48
	fmov	d1, x0
	fsub	d0, d0, d1
	fabs	d0, d0
	adrp	x0, .LC6
	ldr	d1, [x0, #:lo12:.LC6]
	fcmpe	d0, d1
	bmi	.L8
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 28
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L8:
	fmov	s0, 1.0e+0
	str	s0, [sp, 16]
	fmov	s0, 2.0e+0
	str	s0, [sp, 20]
	fmov	s0, 3.0e+0
	str	s0, [sp, 24]
	fmov	s0, 4.0e+0
	str	s0, [sp, 28]
	add	x0, sp, 16
	mov	w1, 4
	bl	func0
	fcvt	d1, s0
	fmov	d0, 1.0e+0
	fsub	d0, d1, d0
	fabs	d0, d0
	adrp	x0, .LC6
	ldr	d1, [x0, #:lo12:.LC6]
	fcmpe	d0, d1
	bmi	.L9
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 31
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L9:
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	add	x2, sp, 32
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	add	x0, sp, 32
	mov	w1, 5
	bl	func0
	fcvt	d0, s0
	mov	x0, 3689348814741910323
	movk	x0, 0x3ff3, lsl 48
	fmov	d1, x0
	fsub	d0, d0, d1
	fabs	d0, d0
	adrp	x0, .LC6
	ldr	d1, [x0, #:lo12:.LC6]
	fcmpe	d0, d1
	bmi	.L10
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 34
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L10:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L12
	bl	__stack_chk_fail
.L12:
	mov	w0, w1
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	1065353216
	.word	1073741824
	.word	1077936128
	.align	3
.LC1:
	.word	1065353216
	.word	1073741824
	.word	1077936128
	.word	1082130432
	.word	1084227584
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align	3
.LC6:
	.word	-350469331
	.word	1058682594
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
