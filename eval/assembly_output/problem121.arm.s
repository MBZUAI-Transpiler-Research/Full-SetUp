	.arch armv8-a
	.file	"problem121.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	w2, [sp, 16]
	str	x3, [sp, 8]
	str	wzr, [sp, 32]
	b	.L2
.L6:
	str	wzr, [sp, 36]
	b	.L3
.L5:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 36]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L4
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 44]
	ldrsw	x0, [sp, 36]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x1, x1, x0
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 36]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w1, [sp, 44]
	str	w1, [x0]
.L4:
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L3:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 32]
	sub	w0, w1, w0
	sub	w0, w0, #1
	ldr	w1, [sp, 36]
	cmp	w1, w0
	blt	.L5
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
.L2:
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	ldr	w1, [sp, 32]
	cmp	w1, w0
	blt	.L6
	str	wzr, [sp, 40]
	b	.L7
.L8:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	sub	w1, w1, w0
	ldr	w0, [sp, 40]
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x1, x1, x0
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L7:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	blt	.L8
	nop
	nop
	add	sp, sp, 48
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
	b	.L10
.L13:
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x2, [sp, 16]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	beq	.L11
	mov	w0, 0
	b	.L12
.L11:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L10:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	blt	.L13
	mov	w0, 1
.L12:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC11:
	.string	"problem121.c"
	.align	3
.LC12:
	.string	"issame(out1, expected1, 3)"
	.align	3
.LC13:
	.string	"issame(out2, expected2, 2)"
	.align	3
.LC14:
	.string	"issame(out3, expected3, 1)"
	.align	3
.LC15:
	.string	"issame(out4, expected4, 3)"
	.align	3
.LC16:
	.string	"issame(out5, expected5, 4)"
	.align	3
.LC17:
	.string	"issame(out6, expected6, 7)"
	.align	3
.LC18:
	.string	"issame(out7, expected7, 2)"
	.align	3
.LC19:
	.string	"issame(out8, expected8, 1)"
	.align	3
.LC20:
	.string	"issame(out9, expected9, 2)"
	.align	3
.LC21:
	.string	"issame(out10, expected10, 2)"
	.align	3
.LC22:
	.string	"issame(out11, expected11, 0)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	sub	sp, sp, #528
	.cfi_def_cfa_offset 544
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 520]
	mov	x1, 0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 136
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x1, sp, 152
	add	x0, sp, 136
	mov	x3, x1
	mov	w2, 3
	mov	w1, 3
	bl	func0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 168
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x1, sp, 168
	add	x0, sp, 152
	mov	w2, 3
	bl	issame
	cmp	w0, 0
	bne	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 38
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	__assert_fail
.L15:
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, sp, 184
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x1, sp, 56
	add	x0, sp, 184
	mov	x3, x1
	mov	w2, 2
	mov	w1, 3
	bl	func0
	mov	w0, 4
	str	w0, [sp, 64]
	mov	w0, 4
	str	w0, [sp, 68]
	add	x1, sp, 64
	add	x0, sp, 56
	mov	w2, 2
	bl	issame
	cmp	w0, 0
	bne	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 44
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	__assert_fail
.L16:
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	add	x0, sp, 328
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 12]
	str	q0, [x0, 12]
	add	x1, sp, 24
	add	x0, sp, 328
	mov	x3, x1
	mov	w2, 1
	mov	w1, 7
	bl	func0
	mov	w0, 2
	str	w0, [sp, 32]
	add	x1, sp, 32
	add	x0, sp, 24
	mov	w2, 1
	bl	issame
	cmp	w0, 0
	bne	.L17
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 50
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	__assert_fail
.L17:
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	add	x0, sp, 360
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 12]
	str	q0, [x0, 12]
	add	x1, sp, 200
	add	x0, sp, 360
	mov	x3, x1
	mov	w2, 3
	mov	w1, 7
	bl	func0
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	add	x0, sp, 216
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x1, sp, 216
	add	x0, sp, 200
	mov	w2, 3
	bl	issame
	cmp	w0, 0
	bne	.L18
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 56
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	__assert_fail
.L18:
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	add	x2, sp, 280
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x1, sp, 232
	add	x0, sp, 280
	mov	x3, x1
	mov	w2, 4
	mov	w1, 6
	bl	func0
	str	wzr, [sp, 248]
	mov	w0, 1
	str	w0, [sp, 252]
	mov	w0, 2
	str	w0, [sp, 256]
	mov	w0, 20
	str	w0, [sp, 260]
	add	x1, sp, 248
	add	x0, sp, 232
	mov	w2, 4
	bl	issame
	cmp	w0, 0
	bne	.L19
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 62
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	__assert_fail
.L19:
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	add	x0, sp, 392
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 12]
	str	q0, [x0, 12]
	add	x1, sp, 424
	add	x0, sp, 392
	mov	x3, x1
	mov	w2, 7
	mov	w1, 7
	bl	func0
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	add	x0, sp, 456
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 12]
	str	q0, [x0, 12]
	add	x1, sp, 456
	add	x0, sp, 424
	mov	w2, 7
	bl	issame
	cmp	w0, 0
	bne	.L20
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 68
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	adrp	x0, .LC17
	add	x0, x0, :lo12:.LC17
	bl	__assert_fail
.L20:
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	add	x2, sp, 304
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x1, sp, 72
	add	x0, sp, 304
	mov	x3, x1
	mov	w2, 2
	mov	w1, 6
	bl	func0
	mov	w0, 3
	str	w0, [sp, 80]
	mov	w0, 5
	str	w0, [sp, 84]
	add	x1, sp, 80
	add	x0, sp, 72
	mov	w2, 2
	bl	issame
	cmp	w0, 0
	bne	.L21
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 74
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	bl	__assert_fail
.L21:
	mov	w0, 1
	str	w0, [sp, 264]
	str	wzr, [sp, 268]
	mov	w0, 5
	str	w0, [sp, 272]
	mov	w0, -7
	str	w0, [sp, 276]
	add	x1, sp, 40
	add	x0, sp, 264
	mov	x3, x1
	mov	w2, 1
	mov	w1, 4
	bl	func0
	mov	w0, 5
	str	w0, [sp, 48]
	add	x1, sp, 48
	add	x0, sp, 40
	mov	w2, 1
	bl	issame
	cmp	w0, 0
	bne	.L22
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 80
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	adrp	x0, .LC19
	add	x0, x0, :lo12:.LC19
	bl	__assert_fail
.L22:
	mov	w0, 4
	str	w0, [sp, 88]
	mov	w0, -4
	str	w0, [sp, 92]
	add	x1, sp, 96
	add	x0, sp, 88
	mov	x3, x1
	mov	w2, 2
	mov	w1, 2
	bl	func0
	mov	w0, -4
	str	w0, [sp, 104]
	mov	w0, 4
	str	w0, [sp, 108]
	add	x1, sp, 104
	add	x0, sp, 96
	mov	w2, 2
	bl	issame
	cmp	w0, 0
	bne	.L23
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 86
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	adrp	x0, .LC20
	add	x0, x0, :lo12:.LC20
	bl	__assert_fail
.L23:
	mov	w0, -10
	str	w0, [sp, 112]
	mov	w0, 10
	str	w0, [sp, 116]
	add	x1, sp, 120
	add	x0, sp, 112
	mov	x3, x1
	mov	w2, 2
	mov	w1, 2
	bl	func0
	mov	w0, -10
	str	w0, [sp, 128]
	mov	w0, 10
	str	w0, [sp, 132]
	add	x1, sp, 128
	add	x0, sp, 120
	mov	w2, 2
	bl	issame
	cmp	w0, 0
	bne	.L24
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 92
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	adrp	x0, .LC21
	add	x0, x0, :lo12:.LC21
	bl	__assert_fail
.L24:
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	add	x0, sp, 488
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 12]
	str	q0, [x0, 12]
	add	x1, sp, 8
	add	x0, sp, 488
	mov	x3, x1
	mov	w2, 0
	mov	w1, 7
	bl	func0
	add	x1, sp, 16
	add	x0, sp, 8
	mov	w2, 0
	bl	issame
	cmp	w0, 0
	bne	.L25
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 98
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	adrp	x0, .LC22
	add	x0, x0, :lo12:.LC22
	bl	__assert_fail
.L25:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 520]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L27
	bl	__stack_chk_fail
.L27:
	mov	w0, w1
	add	sp, sp, 528
	.cfi_def_cfa_offset 16
	ldp	x29, x30, [sp], 16
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
	.word	-3
	.word	-4
	.word	5
	.align	3
.LC1:
	.word	-4
	.word	-3
	.word	5
	.align	3
.LC2:
	.word	4
	.word	-4
	.word	4
	.align	3
.LC3:
	.word	-3
	.word	2
	.word	1
	.word	2
	.word	-1
	.word	-2
	.word	1
	.align	3
.LC4:
	.word	123
	.word	-123
	.word	20
	.word	0
	.word	1
	.word	2
	.word	-3
	.align	3
.LC5:
	.word	2
	.word	20
	.word	123
	.align	3
.LC6:
	.word	-123
	.word	20
	.word	0
	.word	1
	.word	2
	.word	-3
	.align	3
.LC7:
	.word	5
	.word	15
	.word	0
	.word	3
	.word	-13
	.word	-8
	.word	0
	.align	3
.LC8:
	.word	-13
	.word	-8
	.word	0
	.word	0
	.word	3
	.word	5
	.word	15
	.align	3
.LC9:
	.word	-1
	.word	0
	.word	2
	.word	5
	.word	3
	.word	-10
	.align	3
.LC10:
	.word	1
	.word	2
	.word	3
	.word	-23
	.word	243
	.word	-400
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
