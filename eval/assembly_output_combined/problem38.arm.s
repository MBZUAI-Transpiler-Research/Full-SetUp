	.arch armv8-a
	.file	"problem38.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	x2, [sp, 24]
	ldr	w0, [sp, 36]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	bl	malloc
	str	x0, [sp, 72]
	str	wzr, [sp, 64]
	str	wzr, [sp, 56]
	b	.L2
.L3:
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldr	w0, [sp, 64]
	add	w2, w0, 1
	str	w2, [sp, 64]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x2, [sp, 72]
	add	x0, x2, x0
	ldr	s0, [x1]
	str	s0, [x0]
	ldr	w0, [sp, 56]
	add	w0, w0, 2
	str	w0, [sp, 56]
.L2:
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L3
	str	wzr, [sp, 56]
	b	.L4
.L9:
	str	wzr, [sp, 60]
	b	.L5
.L8:
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	s1, [x0]
	ldrsw	x0, [sp, 60]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcmpe	s1, s0
	bgt	.L14
	b	.L6
.L14:
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	s0, [x0]
	str	s0, [sp, 68]
	ldrsw	x0, [sp, 60]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 72]
	add	x1, x1, x0
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x2, [sp, 72]
	add	x0, x2, x0
	ldr	s0, [x1]
	str	s0, [x0]
	ldrsw	x0, [sp, 60]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	s0, [sp, 68]
	str	s0, [x0]
.L6:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L5:
	ldr	w1, [sp, 64]
	ldr	w0, [sp, 56]
	sub	w0, w1, w0
	sub	w0, w0, #1
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L8
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L4:
	ldr	w0, [sp, 64]
	sub	w0, w0, #1
	ldr	w1, [sp, 56]
	cmp	w1, w0
	blt	.L9
	str	wzr, [sp, 56]
	b	.L10
.L13:
	ldr	w0, [sp, 56]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L11
	ldr	w0, [sp, 56]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 72]
	add	x1, x1, x0
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	s0, [x1]
	str	s0, [x0]
	b	.L12
.L11:
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	s0, [x1]
	str	s0, [x0]
.L12:
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L10:
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L13
	ldr	x0, [sp, 72]
	bl	free
	nop
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.align	2
	.global	issame
	.type	issame, %function
issame:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	w2, [sp, 12]
	str	wzr, [sp, 44]
	b	.L16
.L20:
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	s1, [x0]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	s0, [x0]
	fsub	s0, s1, s0
	fabs	s0, s0
	fcvt	d0, s0
	adrp	x0, .LC5
	ldr	d1, [x0, #:lo12:.LC5]
	fcmpe	d0, d1
	bgt	.L21
	b	.L22
.L21:
	mov	w0, 0
	b	.L19
.L22:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L16:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	blt	.L20
	mov	w0, 1
.L19:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC6:
	.string	"problem38.c"
	.align	3
.LC7:
	.string	"issame(result1, expected1, 3)"
	.align	3
.LC8:
	.string	"issame(result2, expected2, 11)"
	.align	3
.LC9:
	.string	"issame(result3, expected3, 10)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -336]!
	.cfi_def_cfa_offset 336
	.cfi_offset 29, -336
	.cfi_offset 30, -328
	mov	x29, sp
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 328]
	mov	x1, 0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 16
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x1, sp, 32
	add	x0, sp, 16
	mov	x2, x1
	mov	w1, 3
	bl	func0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 48
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x1, sp, 48
	add	x0, sp, 32
	mov	w2, 3
	bl	issame
	cmp	w0, 0
	bne	.L24
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 55
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L24:
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 184
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 28]
	str	q0, [x0, 28]
	add	x1, sp, 232
	add	x0, sp, 184
	mov	x2, x1
	mov	w1, 11
	bl	func0
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, sp, 280
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 28]
	str	q0, [x0, 28]
	add	x1, sp, 280
	add	x0, sp, 232
	mov	w2, 11
	bl	issame
	cmp	w0, 0
	bne	.L25
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 61
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L25:
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	add	x0, sp, 64
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	x1, [x1, 32]
	str	x1, [x0, 32]
	add	x1, sp, 104
	add	x0, sp, 64
	mov	x2, x1
	mov	w1, 10
	bl	func0
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	add	x0, sp, 144
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	x1, [x1, 32]
	str	x1, [x0, 32]
	add	x1, sp, 144
	add	x0, sp, 104
	mov	w2, 10
	bl	issame
	cmp	w0, 0
	bne	.L26
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 67
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L26:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 328]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L28
	bl	__stack_chk_fail
.L28:
	mov	w0, w1
	ldp	x29, x30, [sp], 336
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	1065353216
	.word	1073741824
	.word	1077936128
	.align	3
.LC1:
	.word	1084227584
	.word	1077936128
	.word	-1063256064
	.word	1073741824
	.word	-1069547520
	.word	1077936128
	.word	1091567616
	.word	0
	.word	1123418112
	.word	1065353216
	.word	-1054867456
	.align	3
.LC2:
	.word	-1054867456
	.word	1077936128
	.word	-1063256064
	.word	1073741824
	.word	-1069547520
	.word	1077936128
	.word	1084227584
	.word	0
	.word	1091567616
	.word	1065353216
	.word	1123418112
	.align	3
.LC3:
	.word	1084227584
	.word	1090519040
	.word	-1052770304
	.word	1082130432
	.word	1102577664
	.word	1073741824
	.word	1077936128
	.word	1093664768
	.word	1094713344
	.word	-1054867456
	.align	3
.LC4:
	.word	-1052770304
	.word	1090519040
	.word	1077936128
	.word	1082130432
	.word	1084227584
	.word	1073741824
	.word	1094713344
	.word	1093664768
	.word	1102577664
	.word	-1054867456
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align	3
.LC5:
	.word	-350469331
	.word	1058682594
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
