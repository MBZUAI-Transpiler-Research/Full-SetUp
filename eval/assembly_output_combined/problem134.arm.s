	.arch armv8-a
	.file	"problem134.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	wzr, [sp, 56]
	str	wzr, [sp, 60]
	b	.L2
.L3:
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcvt	d0, s0
	bl	ceil
	fcvtzs	w19, d0
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcvt	d0, s0
	bl	ceil
	fcvtzs	w0, d0
	mul	w0, w19, w0
	ldr	w1, [sp, 56]
	add	w0, w1, w0
	str	w0, [sp, 56]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L2:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L3
	ldr	w0, [sp, 56]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC5:
	.string	"problem134.c"
	.align	3
.LC6:
	.string	"func0(lst1, 3) == 14"
	.align	3
.LC7:
	.string	"func0(lst2, 3) == 14"
	.align	3
.LC8:
	.string	"func0(lst3, 4) == 84"
	.align	3
.LC9:
	.string	"func0(lst4, 3) == 29"
	.align	3
.LC10:
	.string	"func0(lst5, 3) == 6"
	.align	3
.LC11:
	.string	"func0(lst6, 4) == 10230"
	.align	3
.LC12:
	.string	"func0(lst7, 2) == 200000000"
	.align	3
.LC13:
	.string	"func0(lst8, 3) == 75"
	.align	3
.LC14:
	.string	"func0(lst9, 4) == 1086"
	.align	3
.LC15:
	.string	"func0(lst10, 1) == 0"
	.align	3
.LC16:
	.string	"func0(lst11, 1) == 1"
	.align	3
.LC17:
	.string	"func0(lst12, 3) == 2"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
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
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 24
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x0, sp, 24
	mov	w1, 3
	bl	func0
	cmp	w0, 14
	beq	.L6
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 18
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L6:
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 40
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x0, sp, 40
	mov	w1, 3
	bl	func0
	cmp	w0, 14
	beq	.L7
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 21
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L7:
	fmov	s0, 1.0e+0
	str	s0, [sp, 120]
	fmov	s0, 3.0e+0
	str	s0, [sp, 124]
	fmov	s0, 5.0e+0
	str	s0, [sp, 128]
	fmov	s0, 7.0e+0
	str	s0, [sp, 132]
	add	x0, sp, 120
	mov	w1, 4
	bl	func0
	cmp	w0, 84
	beq	.L8
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 24
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L8:
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 56
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x0, sp, 56
	mov	w1, 3
	bl	func0
	cmp	w0, 29
	beq	.L9
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 27
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L9:
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, sp, 72
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x0, sp, 72
	mov	w1, 3
	bl	func0
	cmp	w0, 6
	beq	.L10
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 30
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L10:
	mov	w0, 1120403456
	fmov	s0, w0
	str	s0, [sp, 136]
	fmov	s0, 1.0e+0
	str	s0, [sp, 140]
	fmov	s0, 1.5e+1
	str	s0, [sp, 144]
	fmov	s0, 2.0e+0
	str	s0, [sp, 148]
	add	x0, sp, 136
	mov	w1, 4
	bl	func0
	mov	w1, w0
	mov	w0, 10230
	cmp	w1, w0
	beq	.L11
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 33
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	__assert_fail
.L11:
	mov	w0, 16384
	movk	w0, 0x461c, lsl 16
	fmov	s0, w0
	str	s0, [sp, 16]
	mov	w0, 16384
	movk	w0, 0x461c, lsl 16
	fmov	s0, w0
	str	s0, [sp, 20]
	add	x0, sp, 16
	mov	w1, 2
	bl	func0
	mov	w1, w0
	mov	w0, 49664
	movk	w0, 0xbeb, lsl 16
	cmp	w1, w0
	beq	.L12
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 36
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	__assert_fail
.L12:
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	add	x0, sp, 88
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x0, sp, 88
	mov	w1, 3
	bl	func0
	cmp	w0, 75
	beq	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 39
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	__assert_fail
.L13:
	mov	w0, 13107
	movk	w0, 0xbfb3, lsl 16
	fmov	s0, w0
	str	s0, [sp, 152]
	mov	w0, 13107
	movk	w0, 0x418f, lsl 16
	fmov	s0, w0
	str	s0, [sp, 156]
	mov	w0, 13107
	movk	w0, 0x4197, lsl 16
	fmov	s0, w0
	str	s0, [sp, 160]
	mov	w0, 13107
	movk	w0, 0x419f, lsl 16
	fmov	s0, w0
	str	s0, [sp, 164]
	add	x0, sp, 152
	mov	w1, 4
	bl	func0
	cmp	w0, 1086
	beq	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 42
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	__assert_fail
.L14:
	str	wzr, [sp]
	mov	x0, sp
	mov	w1, 1
	bl	func0
	cmp	w0, 0
	beq	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 45
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	__assert_fail
.L15:
	fmov	s0, -1.0e+0
	str	s0, [sp, 8]
	add	x0, sp, 8
	mov	w1, 1
	bl	func0
	cmp	w0, 1
	beq	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 48
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	__assert_fail
.L16:
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	add	x0, sp, 104
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x0, sp, 104
	mov	w1, 3
	bl	func0
	cmp	w0, 2
	beq	.L17
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 51
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC17
	add	x0, x0, :lo12:.LC17
	bl	__assert_fail
.L17:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 168]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L19
	bl	__stack_chk_fail
.L19:
	mov	w0, w1
	ldp	x29, x30, [sp, 176]
	add	sp, sp, 192
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
	.word	1068708659
	.word	1082549862
	.word	0
	.align	3
.LC2:
	.word	-1072064102
	.word	1065353216
	.word	1065353216
	.align	3
.LC3:
	.word	-1078774989
	.word	1083388723
	.word	1086953882
	.align	3
.LC4:
	.word	-1082130432
	.word	1065353216
	.word	0
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
