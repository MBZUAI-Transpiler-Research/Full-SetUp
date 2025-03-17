	.arch armv8-a
	.file	"problem71.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	x2, [sp, 8]
	str	wzr, [sp, 40]
	b	.L2
.L6:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 44]
	b	.L3
.L5:
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L4
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 60]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x1, x1, x0
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w1, [sp, 60]
	str	w1, [x0]
.L4:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L3:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L5
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L2:
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L6
	str	wzr, [sp, 48]
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	str	w0, [sp, 52]
	str	wzr, [sp, 56]
	b	.L7
.L10:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	bne	.L8
	ldr	w0, [sp, 48]
	add	w1, w0, 1
	str	w1, [sp, 48]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x1, x1, x0
	ldr	w0, [sp, 56]
	add	w2, w0, 1
	str	w2, [sp, 56]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	b	.L7
.L8:
	ldr	w0, [sp, 48]
	add	w1, w0, 1
	str	w1, [sp, 48]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x1, x1, x0
	ldr	w0, [sp, 56]
	add	w2, w0, 1
	str	w2, [sp, 56]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	w0, [sp, 52]
	sub	w1, w0, #1
	str	w1, [sp, 52]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x1, x1, x0
	ldr	w0, [sp, 56]
	add	w2, w0, 1
	str	w2, [sp, 56]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
.L7:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	ble	.L10
	nop
	nop
	add	sp, sp, 64
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
	b	.L12
.L15:
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
	beq	.L13
	mov	w0, 0
	b	.L14
.L13:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L12:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	blt	.L15
	mov	w0, 1
.L14:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC10:
	.string	"problem71.c"
	.align	3
.LC11:
	.string	"issame(e1, out1, 4)"
	.align	3
.LC12:
	.string	"issame(e2, out2, 5)"
	.align	3
.LC13:
	.string	"issame(e3, out3, 5)"
	.align	3
.LC14:
	.string	"issame(e4, out4, 6)"
	.align	3
.LC15:
	.string	"issame(e5, out5, 4)"
	.align	3
.LC16:
	.string	"issame(e6, out6, 0)"
	.align	3
.LC17:
	.string	"issame(e7, out7, 8)"
	.align	3
.LC18:
	.string	"issame(e8, out8, 8)"
	.align	3
.LC19:
	.string	"issame(e9, out9, 1)"
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
	sub	sp, sp, #560
	.cfi_def_cfa_offset 576
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 552]
	mov	x1, 0
	mov	w0, 1
	str	w0, [sp, 48]
	mov	w0, 2
	str	w0, [sp, 52]
	mov	w0, 3
	str	w0, [sp, 56]
	mov	w0, 4
	str	w0, [sp, 60]
	mov	w0, 1
	str	w0, [sp, 64]
	mov	w0, 4
	str	w0, [sp, 68]
	mov	w0, 2
	str	w0, [sp, 72]
	mov	w0, 3
	str	w0, [sp, 76]
	add	x1, sp, 80
	add	x0, sp, 48
	mov	x2, x1
	mov	w1, 4
	bl	func0
	add	x1, sp, 80
	add	x0, sp, 64
	mov	w2, 4
	bl	issame
	cmp	w0, 0
	bne	.L17
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 45
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	__assert_fail
.L17:
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	add	x2, sp, 144
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	add	x2, sp, 168
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	add	x1, sp, 192
	add	x0, sp, 144
	mov	x2, x1
	mov	w1, 5
	bl	func0
	add	x1, sp, 192
	add	x0, sp, 168
	mov	w2, 5
	bl	issame
	cmp	w0, 0
	bne	.L18
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 51
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	__assert_fail
.L18:
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	add	x2, sp, 216
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	add	x2, sp, 240
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	add	x1, sp, 264
	add	x0, sp, 216
	mov	x2, x1
	mov	w1, 5
	bl	func0
	add	x1, sp, 264
	add	x0, sp, 240
	mov	w2, 5
	bl	issame
	cmp	w0, 0
	bne	.L19
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 57
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	__assert_fail
.L19:
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	add	x2, sp, 288
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	add	x2, sp, 312
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x1, sp, 336
	add	x0, sp, 288
	mov	x2, x1
	mov	w1, 6
	bl	func0
	add	x1, sp, 336
	add	x0, sp, 312
	mov	w2, 6
	bl	issame
	cmp	w0, 0
	bne	.L20
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 63
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	__assert_fail
.L20:
	mov	w0, 5
	str	w0, [sp, 96]
	mov	w0, 5
	str	w0, [sp, 100]
	mov	w0, 5
	str	w0, [sp, 104]
	mov	w0, 5
	str	w0, [sp, 108]
	mov	w0, 5
	str	w0, [sp, 112]
	mov	w0, 5
	str	w0, [sp, 116]
	mov	w0, 5
	str	w0, [sp, 120]
	mov	w0, 5
	str	w0, [sp, 124]
	add	x1, sp, 128
	add	x0, sp, 96
	mov	x2, x1
	mov	w1, 4
	bl	func0
	add	x1, sp, 128
	add	x0, sp, 112
	mov	w2, 4
	bl	issame
	cmp	w0, 0
	bne	.L21
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 69
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	__assert_fail
.L21:
	add	x1, sp, 16
	mov	x0, sp
	mov	x2, x1
	mov	w1, 0
	bl	func0
	add	x1, sp, 16
	add	x0, sp, 8
	mov	w2, 0
	bl	issame
	cmp	w0, 0
	bne	.L22
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 75
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	__assert_fail
.L22:
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	add	x0, sp, 360
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	add	x0, sp, 392
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	add	x1, sp, 424
	add	x0, sp, 360
	mov	x2, x1
	mov	w1, 8
	bl	func0
	add	x1, sp, 424
	add	x0, sp, 392
	mov	w2, 8
	bl	issame
	cmp	w0, 0
	bne	.L23
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 81
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	adrp	x0, .LC17
	add	x0, x0, :lo12:.LC17
	bl	__assert_fail
.L23:
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	add	x0, sp, 456
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	add	x0, sp, 488
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	add	x1, sp, 520
	add	x0, sp, 456
	mov	x2, x1
	mov	w1, 8
	bl	func0
	add	x1, sp, 520
	add	x0, sp, 488
	mov	w2, 8
	bl	issame
	cmp	w0, 0
	bne	.L24
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 87
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	bl	__assert_fail
.L24:
	mov	w0, 45575
	movk	w0, 0x1, lsl 16
	str	w0, [sp, 24]
	mov	w0, 45575
	movk	w0, 0x1, lsl 16
	str	w0, [sp, 32]
	add	x1, sp, 40
	add	x0, sp, 24
	mov	x2, x1
	mov	w1, 1
	bl	func0
	add	x1, sp, 40
	add	x0, sp, 32
	mov	w2, 1
	bl	issame
	cmp	w0, 0
	bne	.L25
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 93
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	adrp	x0, .LC19
	add	x0, x0, :lo12:.LC19
	bl	__assert_fail
.L25:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 552]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L27
	bl	__stack_chk_fail
.L27:
	mov	w0, w1
	add	sp, sp, 560
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
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.align	3
.LC1:
	.word	5
	.word	9
	.word	6
	.word	8
	.word	7
	.align	3
.LC2:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.align	3
.LC3:
	.word	1
	.word	5
	.word	2
	.word	4
	.word	3
	.align	3
.LC4:
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	1
	.align	3
.LC5:
	.word	1
	.word	9
	.word	5
	.word	8
	.word	6
	.word	7
	.align	3
.LC6:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.align	3
.LC7:
	.word	1
	.word	8
	.word	2
	.word	7
	.word	3
	.word	6
	.word	4
	.word	5
	.align	3
.LC8:
	.word	0
	.word	2
	.word	2
	.word	2
	.word	5
	.word	5
	.word	-5
	.word	-5
	.align	3
.LC9:
	.word	-5
	.word	5
	.word	-5
	.word	5
	.word	0
	.word	2
	.word	2
	.word	2
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
