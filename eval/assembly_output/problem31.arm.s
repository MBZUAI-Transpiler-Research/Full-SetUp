	.arch armv8-a
	.file	"problem31.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	x2, [sp, 24]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	bl	malloc
	str	x0, [sp, 56]
	ldr	x0, [sp, 24]
	str	wzr, [x0]
	str	wzr, [sp, 52]
	b	.L2
.L5:
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcmpe	s0, #0.0
	bgt	.L7
	b	.L3
.L7:
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	add	w3, w0, 1
	ldr	x2, [sp, 24]
	str	w3, [x2]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x2, [sp, 56]
	add	x0, x2, x0
	ldr	s0, [x1]
	str	s0, [x0]
.L3:
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L2:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L5
	ldr	x0, [sp, 56]
	ldp	x29, x30, [sp], 64
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
	str	w1, [sp, 20]
	str	x2, [sp, 8]
	str	w3, [sp, 16]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	beq	.L9
	mov	w0, 0
	b	.L10
.L9:
	str	wzr, [sp, 44]
	b	.L11
.L14:
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	s1, [x0]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	s0, [x0]
	fsub	s0, s1, s0
	fabs	s0, s0
	fcvt	d0, s0
	adrp	x0, .LC4
	ldr	d1, [x0, #:lo12:.LC4]
	fcmpe	d0, d1
	bgt	.L15
	b	.L16
.L15:
	mov	w0, 0
	b	.L10
.L16:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L11:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L14
	mov	w0, 1
.L10:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC5:
	.string	"problem31.c"
	.align	3
.LC6:
	.string	"issame(result, count, (float[]){4, 5, 6}, 3)"
	.align	3
.LC7:
	.string	"issame(result, count, (float[]){5, 3, 2, 3, 3, 9, 123, 1}, 8)"
	.align	3
.LC8:
	.string	"issame(result, count, (float[]){}, 0)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #160
	.cfi_def_cfa_offset 160
	stp	x29, x30, [sp, 144]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 144
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 136]
	mov	x1, 0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	add	x2, sp, 32
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	add	x1, sp, 4
	add	x0, sp, 32
	mov	x2, x1
	mov	w1, 5
	bl	func0
	str	x0, [sp, 8]
	ldr	w4, [sp, 4]
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 88
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x0, sp, 88
	mov	w3, 3
	mov	x2, x0
	mov	w1, w4
	ldr	x0, [sp, 8]
	bl	issame
	cmp	w0, 0
	bne	.L18
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 37
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L18:
	ldr	x0, [sp, 8]
	bl	free
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, sp, 88
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 28]
	str	q0, [x0, 28]
	add	x1, sp, 4
	add	x0, sp, 88
	mov	x2, x1
	mov	w1, 11
	bl	func0
	str	x0, [sp, 8]
	ldr	w4, [sp, 4]
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	add	x0, sp, 56
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	add	x0, sp, 56
	mov	w3, 8
	mov	x2, x0
	mov	w1, w4
	ldr	x0, [sp, 8]
	bl	issame
	cmp	w0, 0
	bne	.L19
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 41
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L19:
	ldr	x0, [sp, 8]
	bl	free
	fmov	s0, -1.0e+0
	str	s0, [sp, 56]
	fmov	s0, -2.0e+0
	str	s0, [sp, 60]
	add	x1, sp, 4
	add	x0, sp, 56
	mov	x2, x1
	mov	w1, 2
	bl	func0
	str	x0, [sp, 8]
	ldr	w0, [sp, 4]
	add	x1, sp, 24
	mov	w3, 0
	mov	x2, x1
	mov	w1, w0
	ldr	x0, [sp, 8]
	bl	issame
	cmp	w0, 0
	bne	.L20
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 45
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L20:
	ldr	x0, [sp, 8]
	bl	free
	add	x1, sp, 4
	add	x0, sp, 16
	mov	x2, x1
	mov	w1, 0
	bl	func0
	str	x0, [sp, 8]
	ldr	w0, [sp, 4]
	add	x1, sp, 24
	mov	w3, 0
	mov	x2, x1
	mov	w1, w0
	ldr	x0, [sp, 8]
	bl	issame
	cmp	w0, 0
	bne	.L21
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 49
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L21:
	ldr	x0, [sp, 8]
	bl	free
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 136]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L23
	bl	__stack_chk_fail
.L23:
	mov	w0, w1
	ldp	x29, x30, [sp, 144]
	add	sp, sp, 160
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	-1082130432
	.word	-1073741824
	.word	1082130432
	.word	1084227584
	.word	1086324736
	.align	3
.LC1:
	.word	1082130432
	.word	1084227584
	.word	1086324736
	.align	3
.LC2:
	.word	1084227584
	.word	1077936128
	.word	-1063256064
	.word	1073741824
	.word	1077936128
	.word	1077936128
	.word	1091567616
	.word	0
	.word	1123418112
	.word	1065353216
	.word	-1054867456
	.align	3
.LC3:
	.word	1084227584
	.word	1077936128
	.word	1073741824
	.word	1077936128
	.word	1077936128
	.word	1091567616
	.word	1123418112
	.word	1065353216
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align	3
.LC4:
	.word	-350469331
	.word	1058682594
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
