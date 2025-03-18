	.arch armv8-a
	.file	"problem21.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	x2, [sp, 8]
	mov	w0, 2139095039
	fmov	s0, w0
	str	s0, [sp, 44]
	ldr	x0, [sp, 24]
	ldr	s0, [x0]
	ldr	x0, [sp, 8]
	str	s0, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	ldr	x1, [sp, 24]
	ldr	s0, [x1, 4]
	str	s0, [x0]
	str	wzr, [sp, 48]
	b	.L2
.L7:
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 52]
	b	.L3
.L6:
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	s1, [x0]
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	s0, [x0]
	fsub	s0, s1, s0
	fabs	s0, s0
	str	s0, [sp, 60]
	ldr	s1, [sp, 60]
	ldr	s0, [sp, 44]
	fcmpe	s1, s0
	bmi	.L10
	b	.L4
.L10:
	ldr	s0, [sp, 60]
	str	s0, [sp, 44]
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	s0, [x0]
	ldr	x0, [sp, 8]
	str	s0, [x0]
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x1, x1, x0
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	ldr	s0, [x1]
	str	s0, [x0]
.L4:
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L3:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L6
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L2:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L7
	ldr	x0, [sp, 8]
	ldr	s1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	ldr	s0, [x0]
	fcmpe	s1, s0
	bgt	.L11
	b	.L12
.L11:
	ldr	x0, [sp, 8]
	ldr	s0, [x0]
	str	s0, [sp, 56]
	ldr	x0, [sp, 8]
	ldr	s0, [x0, 4]
	ldr	x0, [sp, 8]
	str	s0, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	ldr	s0, [sp, 56]
	str	s0, [x0]
.L12:
	nop
	add	sp, sp, 64
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
	b	.L14
.L18:
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
	bmi	.L19
	b	.L20
.L19:
	mov	w0, 0
	b	.L17
.L20:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L14:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	blt	.L18
	mov	w0, 1
.L17:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC5:
	.string	"problem21.c"
	.align	3
.LC6:
	.string	"issame(result, expected1, 2)"
	.align	3
.LC7:
	.string	"issame(result, expected2, 2)"
	.align	3
.LC8:
	.string	"issame(result, expected3, 2)"
	.align	3
.LC9:
	.string	"issame(result, expected4, 2)"
	.align	3
.LC10:
	.string	"issame(result, expected5, 2)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2:
	.cfi_startproc
	sub	sp, sp, #192
	.cfi_def_cfa_offset 192
	stp	x29, x30, [sp, 176]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 176
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 168]
	mov	x1, 0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	add	x2, sp, 96
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	mov	w0, 39322
	movk	w0, 0x4079, lsl 16
	fmov	s0, w0
	str	s0, [sp, 8]
	fmov	s0, 4.0e+0
	str	s0, [sp, 12]
	mov	x1, sp
	add	x0, sp, 96
	mov	x2, x1
	mov	w1, 6
	bl	func0
	add	x1, sp, 8
	mov	x0, sp
	mov	w2, 2
	bl	issame
	cmp	w0, 0
	bne	.L22
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 49
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L22:
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	add	x2, sp, 48
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	fmov	s0, 5.0e+0
	str	s0, [sp, 16]
	mov	w0, 52429
	movk	w0, 0x40bc, lsl 16
	fmov	s0, w0
	str	s0, [sp, 20]
	mov	x1, sp
	add	x0, sp, 48
	mov	x2, x1
	mov	w1, 5
	bl	func0
	add	x1, sp, 16
	mov	x0, sp
	mov	w2, 2
	bl	issame
	cmp	w0, 0
	bne	.L23
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 54
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L23:
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	add	x2, sp, 120
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	fmov	s0, 2.0e+0
	str	s0, [sp, 24]
	mov	w0, 52429
	movk	w0, 0x400c, lsl 16
	fmov	s0, w0
	str	s0, [sp, 28]
	mov	x1, sp
	add	x0, sp, 120
	mov	x2, x1
	mov	w1, 6
	bl	func0
	add	x1, sp, 24
	mov	x0, sp
	mov	w2, 2
	bl	issame
	cmp	w0, 0
	bne	.L24
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 59
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L24:
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	add	x2, sp, 144
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	fmov	s0, 2.0e+0
	str	s0, [sp, 32]
	fmov	s0, 2.0e+0
	str	s0, [sp, 36]
	mov	x1, sp
	add	x0, sp, 144
	mov	x2, x1
	mov	w1, 6
	bl	func0
	add	x1, sp, 32
	mov	x0, sp
	mov	w2, 2
	bl	issame
	cmp	w0, 0
	bne	.L25
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 64
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L25:
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	add	x2, sp, 72
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	mov	w0, 52429
	movk	w0, 0x400c, lsl 16
	fmov	s0, w0
	str	s0, [sp, 40]
	mov	w0, 26214
	movk	w0, 0x4046, lsl 16
	fmov	s0, w0
	str	s0, [sp, 44]
	mov	x1, sp
	add	x0, sp, 72
	mov	x2, x1
	mov	w1, 5
	bl	func0
	add	x1, sp, 40
	mov	x0, sp
	mov	w2, 2
	bl	issame
	cmp	w0, 0
	bne	.L26
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 69
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L26:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 168]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L28
	bl	__stack_chk_fail
.L28:
	mov	w0, w1
	ldp	x29, x30, [sp, 176]
	add	sp, sp, 192
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
	.word	1065353216
	.word	1073741824
	.word	1081711002
	.word	1082130432
	.word	1084227584
	.word	1074580685
	.align	3
.LC1:
	.word	1065353216
	.word	1073741824
	.word	1086115021
	.word	1082130432
	.word	1084227584
	.align	3
.LC2:
	.word	1065353216
	.word	1073741824
	.word	1077936128
	.word	1082130432
	.word	1084227584
	.word	1074580685
	.align	3
.LC3:
	.word	1065353216
	.word	1073741824
	.word	1077936128
	.word	1082130432
	.word	1084227584
	.word	1073741824
	.align	3
.LC4:
	.word	1066192077
	.word	1074580685
	.word	1078355558
	.word	1082340147
	.word	1084437299
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
