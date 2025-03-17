	.arch armv8-a
	.file	"problem63.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	x2, [sp, 8]
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L2
.L3:
	ldr	s0, [sp, 44]
	scvtf	s1, s0
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	s0, [x0]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	s0, s1, s0
	str	s0, [x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L2:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L3
	nop
	nop
	add	sp, sp, 48
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
	str	w1, [sp, 20]
	str	x2, [sp, 8]
	str	w3, [sp, 16]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	beq	.L5
	mov	w0, 0
	b	.L6
.L5:
	str	wzr, [sp, 44]
	b	.L7
.L10:
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
	bgt	.L11
	b	.L12
.L11:
	mov	w0, 0
	b	.L6
.L12:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L7:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L10
	mov	w0, 1
.L6:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC5:
	.string	"problem63.c"
	.align	3
.LC6:
	.string	"issame(result, 4, expected1, 4)"
	.align	3
.LC7:
	.string	"issame(result, 2, expected2, 2)"
	.align	3
.LC8:
	.string	"issame(result, 2, expected3, 2)"
	.align	3
.LC9:
	.string	"issame(result, 4, expected4, 4)"
	.align	3
.LC10:
	.string	"issame(result, 0, NULL, 0)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2:
	.cfi_startproc
	sub	sp, sp, #176
	.cfi_def_cfa_offset 176
	stp	x29, x30, [sp, 160]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 160
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 152]
	mov	x1, 0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	add	x2, sp, 104
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	fmov	s0, 1.0e+0
	str	s0, [sp, 72]
	fmov	s0, 4.0e+0
	str	s0, [sp, 76]
	fmov	s0, 1.2e+1
	str	s0, [sp, 80]
	fmov	s0, 2.0e+1
	str	s0, [sp, 84]
	add	x1, sp, 56
	add	x0, sp, 104
	mov	x2, x1
	mov	w1, 5
	bl	func0
	add	x1, sp, 72
	add	x0, sp, 56
	mov	w3, 4
	mov	x2, x1
	mov	w1, 4
	bl	issame
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 30
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L14:
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 24
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	fmov	s0, 2.0e+0
	str	s0, [sp, 8]
	fmov	s0, 6.0e+0
	str	s0, [sp, 12]
	add	x1, sp, 56
	add	x0, sp, 24
	mov	x2, x1
	mov	w1, 3
	bl	func0
	add	x1, sp, 8
	add	x0, sp, 56
	mov	w3, 2
	mov	x2, x1
	mov	w1, 2
	bl	issame
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 35
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L15:
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, sp, 40
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	fmov	s0, 2.0e+0
	str	s0, [sp, 16]
	fmov	s0, 2.0e+0
	str	s0, [sp, 20]
	add	x1, sp, 56
	add	x0, sp, 40
	mov	x2, x1
	mov	w1, 3
	bl	func0
	add	x1, sp, 16
	add	x0, sp, 56
	mov	w3, 2
	mov	x2, x1
	mov	w1, 2
	bl	issame
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 40
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L16:
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	add	x2, sp, 128
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	fmov	s0, 2.0e+0
	str	s0, [sp, 88]
	fmov	s0, 2.0e+0
	str	s0, [sp, 92]
	str	wzr, [sp, 96]
	fmov	s0, 1.6e+1
	str	s0, [sp, 100]
	add	x1, sp, 56
	add	x0, sp, 128
	mov	x2, x1
	mov	w1, 5
	bl	func0
	add	x1, sp, 88
	add	x0, sp, 56
	mov	w3, 4
	mov	x2, x1
	mov	w1, 4
	bl	issame
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L17
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 45
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L17:
	fmov	s0, 1.0e+0
	str	s0, [sp]
	add	x1, sp, 56
	mov	x0, sp
	mov	x2, x1
	mov	w1, 1
	bl	func0
	add	x0, sp, 56
	mov	w3, 0
	mov	x2, 0
	mov	w1, 0
	bl	issame
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L18
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 49
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L18:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 152]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L20
	bl	__stack_chk_fail
.L20:
	mov	w0, w1
	ldp	x29, x30, [sp, 160]
	add	sp, sp, 176
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
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
	.word	1065353216
	.word	1073741824
	.word	1077936128
	.align	3
.LC2:
	.word	1077936128
	.word	1073741824
	.word	1065353216
	.align	3
.LC3:
	.word	1077936128
	.word	1073741824
	.word	1065353216
	.word	0
	.word	1082130432
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
