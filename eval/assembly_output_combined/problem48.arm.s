	.arch armv8-a
	.file	"problem48.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	str	wzr, [sp, 20]
	b	.L2
.L7:
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 24]
	b	.L3
.L6:
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	s1, [x0]
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcmpe	s1, s0
	bgt	.L10
	b	.L4
.L10:
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	s0, [x0]
	str	s0, [sp, 28]
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	s0, [x1]
	str	s0, [x0]
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	s0, [sp, 28]
	str	s0, [x0]
.L4:
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L3:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L6
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L2:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L7
	ldr	w0, [sp, 4]
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	cmp	w0, 1
	bne	.L8
	ldr	w0, [sp, 4]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	s0, [x0]
	b	.L9
.L8:
	ldr	w0, [sp, 4]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	s1, [x0]
	ldr	w0, [sp, 4]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	s0, [x0]
	fadd	s1, s1, s0
	fmov	s0, 5.0e-1
	fmul	s0, s1, s0
.L9:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC3:
	.string	"problem48.c"
	.align	3
.LC4:
	.string	"fabs(func0(list1, 5) - 3) < 1e-4"
	.align	3
.LC5:
	.string	"fabs(func0(list2, 6) - 8.0) < 1e-4"
	.align	3
.LC6:
	.string	"fabs(func0(list3, 1) - 5) < 1e-4"
	.align	3
.LC7:
	.string	"fabs(func0(list4, 2) - 5.5) < 1e-4"
	.align	3
.LC8:
	.string	"fabs(func0(list5, 7) - 7) < 1e-4"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 120]
	mov	x1, 0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	add	x2, sp, 40
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	add	x0, sp, 40
	mov	w1, 5
	bl	func0
	fmov	s1, s0
	fmov	s0, 3.0e+0
	fsub	s0, s1, s0
	fabs	s0, s0
	fcvt	d0, s0
	adrp	x0, .LC9
	ldr	d1, [x0, #:lo12:.LC9]
	fcmpe	d0, d1
	bmi	.L12
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 27
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L12:
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	add	x2, sp, 64
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x0, sp, 64
	mov	w1, 6
	bl	func0
	fcvt	d1, s0
	fmov	d0, 8.0e+0
	fsub	d0, d1, d0
	fabs	d0, d0
	adrp	x0, .LC9
	ldr	d1, [x0, #:lo12:.LC9]
	fcmpe	d0, d1
	bmi	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 30
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L13:
	fmov	s0, 5.0e+0
	str	s0, [sp, 24]
	add	x0, sp, 24
	mov	w1, 1
	bl	func0
	fmov	s1, s0
	fmov	s0, 5.0e+0
	fsub	s0, s1, s0
	fabs	s0, s0
	fcvt	d0, s0
	adrp	x0, .LC9
	ldr	d1, [x0, #:lo12:.LC9]
	fcmpe	d0, d1
	bmi	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 33
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L14:
	fmov	s0, 6.0e+0
	str	s0, [sp, 32]
	fmov	s0, 5.0e+0
	str	s0, [sp, 36]
	add	x0, sp, 32
	mov	w1, 2
	bl	func0
	fcvt	d1, s0
	fmov	d0, 5.5e+0
	fsub	d0, d1, d0
	fabs	d0, d0
	adrp	x0, .LC9
	ldr	d1, [x0, #:lo12:.LC9]
	fcmpe	d0, d1
	bmi	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 36
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L15:
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, sp, 88
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 12]
	str	q0, [x0, 12]
	add	x0, sp, 88
	mov	w1, 7
	bl	func0
	fmov	s1, s0
	fmov	s0, 7.0e+0
	fsub	s0, s1, s0
	fabs	s0, s0
	fcvt	d0, s0
	adrp	x0, .LC9
	ldr	d1, [x0, #:lo12:.LC9]
	fcmpe	d0, d1
	bmi	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 39
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L16:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 120]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L18
	bl	__stack_chk_fail
.L18:
	mov	w0, w1
	ldp	x29, x30, [sp], 128
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	1077936128
	.word	1065353216
	.word	1073741824
	.word	1082130432
	.word	1084227584
	.align	3
.LC1:
	.word	-1054867456
	.word	1082130432
	.word	1086324736
	.word	1148846080
	.word	1092616192
	.word	1101004800
	.align	3
.LC2:
	.word	1090519040
	.word	1065353216
	.word	1077936128
	.word	1091567616
	.word	1091567616
	.word	1073741824
	.word	1088421888
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align	3
.LC9:
	.word	-350469331
	.word	1058682594
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
