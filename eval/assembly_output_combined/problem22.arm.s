	.arch armv8-a
	.file	"problem22.c"
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
	ldr	x0, [sp, 8]
	ldr	s0, [x0]
	str	s0, [sp, 16]
	ldr	x0, [sp, 8]
	ldr	s0, [x0]
	str	s0, [sp, 20]
	mov	w0, 1
	str	w0, [sp, 24]
	b	.L2
.L7:
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	s0, [x0]
	ldr	s1, [sp, 16]
	fcmpe	s1, s0
	bgt	.L10
	b	.L3
.L10:
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	s0, [x0]
	str	s0, [sp, 16]
.L3:
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	s0, [x0]
	ldr	s1, [sp, 20]
	fcmpe	s1, s0
	bmi	.L11
	b	.L5
.L11:
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	s0, [x0]
	str	s0, [sp, 20]
.L5:
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L2:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L7
	str	wzr, [sp, 28]
	b	.L8
.L9:
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	s1, [x0]
	ldr	s0, [sp, 16]
	fsub	s1, s1, s0
	ldr	s2, [sp, 20]
	ldr	s0, [sp, 16]
	fsub	s0, s2, s0
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fdiv	s0, s1, s0
	str	s0, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L8:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L9
	nop
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.align	2
	.global	issame
	.type	issame, %function
issame:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	w2, [sp, 12]
	mov	w0, 46871
	movk	w0, 0x38d1, lsl 16
	fmov	s0, w0
	str	s0, [sp, 44]
	str	wzr, [sp, 40]
	b	.L13
.L17:
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	s1, [x0]
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	s0, [x0]
	fsub	s0, s1, s0
	fabs	s0, s0
	ldr	s1, [sp, 44]
	fcmpe	s1, s0
	bmi	.L18
	b	.L19
.L18:
	mov	w0, 0
	b	.L16
.L19:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L13:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	blt	.L17
	mov	w0, 1
.L16:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC5:
	.string	"problem22.c"
	.align	3
.LC6:
	.string	"issame(test1, expected1, 2)"
	.align	3
.LC7:
	.string	"issame(test2, expected2, 2)"
	.align	3
.LC8:
	.string	"issame(test3, expected3, 5)"
	.align	3
.LC9:
	.string	"issame(test4, expected4, 5)"
	.align	3
.LC10:
	.string	"issame(test5, expected5, 5)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -208]!
	.cfi_def_cfa_offset 208
	.cfi_offset 29, -208
	.cfi_offset 30, -200
	mov	x29, sp
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 200]
	mov	x1, 0
	fmov	s0, 2.0e+0
	str	s0, [sp, 24]
	mov	w0, 39322
	movk	w0, 0x4247, lsl 16
	fmov	s0, w0
	str	s0, [sp, 28]
	str	wzr, [sp, 32]
	fmov	s0, 1.0e+0
	str	s0, [sp, 36]
	add	x0, sp, 24
	mov	w1, 2
	bl	func0
	add	x1, sp, 32
	add	x0, sp, 24
	mov	w2, 2
	bl	issame
	cmp	w0, 0
	bne	.L21
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 32
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L21:
	mov	w0, 1120403456
	fmov	s0, w0
	str	s0, [sp, 40]
	mov	w0, 39322
	movk	w0, 0x4247, lsl 16
	fmov	s0, w0
	str	s0, [sp, 44]
	fmov	s0, 1.0e+0
	str	s0, [sp, 48]
	str	wzr, [sp, 52]
	add	x0, sp, 40
	mov	w1, 2
	bl	func0
	add	x1, sp, 48
	add	x0, sp, 40
	mov	w2, 2
	bl	issame
	cmp	w0, 0
	bne	.L22
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 37
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L22:
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	add	x2, sp, 56
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	add	x2, sp, 80
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	add	x0, sp, 56
	mov	w1, 5
	bl	func0
	add	x1, sp, 80
	add	x0, sp, 56
	mov	w2, 5
	bl	issame
	cmp	w0, 0
	bne	.L23
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 42
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L23:
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	add	x2, sp, 104
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	add	x2, sp, 128
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	add	x0, sp, 104
	mov	w1, 5
	bl	func0
	add	x1, sp, 128
	add	x0, sp, 104
	mov	w2, 5
	bl	issame
	cmp	w0, 0
	bne	.L24
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 47
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L24:
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	add	x2, sp, 152
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	add	x2, sp, 176
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	add	x0, sp, 152
	mov	w1, 5
	bl	func0
	add	x1, sp, 176
	add	x0, sp, 152
	mov	w2, 5
	bl	issame
	cmp	w0, 0
	bne	.L25
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 52
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L25:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 200]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L27
	bl	__stack_chk_fail
.L27:
	mov	w0, w1
	ldp	x29, x30, [sp], 208
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	1065353216
	.word	1073741824
	.word	1077936128
	.word	1082130432
	.word	1084227584
	.align	3
.LC1:
	.word	0
	.word	1048576000
	.word	1056964608
	.word	1061158912
	.word	1065353216
	.align	3
.LC2:
	.word	1073741824
	.word	1065353216
	.word	1084227584
	.word	1077936128
	.word	1082130432
	.align	3
.LC3:
	.word	1048576000
	.word	0
	.word	1065353216
	.word	1056964608
	.word	1061158912
	.align	3
.LC4:
	.word	1094713344
	.word	1093664768
	.word	1097859072
	.word	1095761920
	.word	1096810496
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
