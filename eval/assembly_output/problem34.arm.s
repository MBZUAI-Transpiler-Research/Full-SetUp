	.arch armv8-a
	.file	"problem34.c"
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
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w0, w1, w0
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	bl	malloc
	str	x0, [sp, 72]
	str	wzr, [sp, 56]
	str	wzr, [sp, 60]
	str	wzr, [sp, 52]
	b	.L2
.L3:
	ldr	w1, [sp, 52]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x2, [sp, 72]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L2:
	ldr	w1, [sp, 52]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	ldr	w1, [sp, 36]
	cmp	w1, w0
	bgt	.L3
	str	wzr, [sp, 52]
	b	.L4
.L9:
	ldr	w0, [sp, 52]
	str	w0, [sp, 64]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 56]
	b	.L5
.L7:
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x2, [sp, 72]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L6
	ldr	w0, [sp, 56]
	str	w0, [sp, 64]
.L6:
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L5:
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	blt	.L7
	ldr	w1, [sp, 64]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	beq	.L8
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 68]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x1, [sp, 72]
	add	x1, x1, x0
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x2, [sp, 72]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	w1, [sp, 68]
	str	w1, [x0]
.L8:
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L4:
	ldr	w0, [sp, 60]
	sub	w0, w0, #1
	ldr	w1, [sp, 52]
	cmp	w1, w0
	blt	.L9
	str	wzr, [sp, 52]
	b	.L10
.L13:
	ldr	w2, [sp, 52]
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sub	w1, w2, w0
	cmp	w1, 0
	bne	.L11
	ldr	w0, [sp, 52]
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 72]
	add	x1, x1, x0
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	b	.L12
.L11:
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
.L12:
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L10:
	ldr	w1, [sp, 52]
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
	b	.L15
.L18:
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
	beq	.L16
	mov	w0, 0
	b	.L17
.L16:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L15:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	blt	.L18
	mov	w0, 1
.L17:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC11:
	.string	"problem34.c"
	.align	3
.LC12:
	.string	"issame(result1, result1, 3)"
	.align	3
.LC13:
	.string	"issame(result2, result2, 11)"
	.align	3
.LC14:
	.string	"issame(result3, result3, 10)"
	.align	3
.LC15:
	.string	"issame(result4, correct4, 7)"
	.align	3
.LC16:
	.string	"issame(result5, correct5, 7)"
	.align	3
.LC17:
	.string	"issame(result6, correct6, 7)"
	.align	3
.LC18:
	.string	"issame(result7, correct7, 8)"
	.align	3
.LC19:
	.string	"All tests passed!"
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
	sub	sp, sp, #608
	.cfi_def_cfa_offset 624
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 600]
	mov	x1, 0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 8
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x1, sp, 24
	add	x0, sp, 8
	mov	x2, x1
	mov	w1, 3
	bl	func0
	add	x1, sp, 24
	add	x0, sp, 24
	mov	w2, 3
	bl	issame
	cmp	w0, 0
	bne	.L20
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 53
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	__assert_fail
.L20:
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 504
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 28]
	str	q0, [x0, 28]
	add	x1, sp, 552
	add	x0, sp, 504
	mov	x2, x1
	mov	w1, 11
	bl	func0
	add	x1, sp, 552
	add	x0, sp, 552
	mov	w2, 11
	bl	issame
	cmp	w0, 0
	bne	.L21
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 58
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	__assert_fail
.L21:
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, sp, 424
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	x1, [x1, 32]
	str	x1, [x0, 32]
	add	x1, sp, 464
	add	x0, sp, 424
	mov	x2, x1
	mov	w1, 10
	bl	func0
	add	x1, sp, 464
	add	x0, sp, 464
	mov	w2, 10
	bl	issame
	cmp	w0, 0
	bne	.L22
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 63
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	__assert_fail
.L22:
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	add	x0, sp, 40
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 12]
	str	q0, [x0, 12]
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	add	x0, sp, 72
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 12]
	str	q0, [x0, 12]
	add	x1, sp, 104
	add	x0, sp, 40
	mov	x2, x1
	mov	w1, 7
	bl	func0
	add	x1, sp, 72
	add	x0, sp, 104
	mov	w2, 7
	bl	issame
	cmp	w0, 0
	bne	.L23
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 69
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	__assert_fail
.L23:
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	add	x0, sp, 136
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 12]
	str	q0, [x0, 12]
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	add	x0, sp, 168
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 12]
	str	q0, [x0, 12]
	add	x1, sp, 200
	add	x0, sp, 136
	mov	x2, x1
	mov	w1, 7
	bl	func0
	add	x1, sp, 168
	add	x0, sp, 200
	mov	w2, 7
	bl	issame
	cmp	w0, 0
	bne	.L24
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 75
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	__assert_fail
.L24:
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	add	x0, sp, 232
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 12]
	str	q0, [x0, 12]
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	add	x0, sp, 264
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 12]
	str	q0, [x0, 12]
	add	x1, sp, 296
	add	x0, sp, 232
	mov	x2, x1
	mov	w1, 7
	bl	func0
	add	x1, sp, 264
	add	x0, sp, 296
	mov	w2, 7
	bl	issame
	cmp	w0, 0
	bne	.L25
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 81
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	adrp	x0, .LC17
	add	x0, x0, :lo12:.LC17
	bl	__assert_fail
.L25:
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	add	x0, sp, 328
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	add	x0, sp, 360
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	add	x1, sp, 392
	add	x0, sp, 328
	mov	x2, x1
	mov	w1, 8
	bl	func0
	add	x1, sp, 360
	add	x0, sp, 392
	mov	w2, 8
	bl	issame
	cmp	w0, 0
	bne	.L26
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 87
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	bl	__assert_fail
.L26:
	adrp	x0, .LC19
	add	x0, x0, :lo12:.LC19
	bl	puts
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 600]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L28
	bl	__stack_chk_fail
.L28:
	mov	w0, w1
	add	sp, sp, 608
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
	.word	1
	.word	2
	.word	3
	.align	3
.LC1:
	.word	5
	.word	3
	.word	-5
	.word	2
	.word	-3
	.word	3
	.word	9
	.word	0
	.word	123
	.word	1
	.word	-10
	.align	3
.LC2:
	.word	5
	.word	8
	.word	-12
	.word	4
	.word	23
	.word	2
	.word	3
	.word	11
	.word	12
	.word	-10
	.align	3
.LC3:
	.word	5
	.word	6
	.word	3
	.word	4
	.word	8
	.word	9
	.word	2
	.align	3
.LC4:
	.word	2
	.word	6
	.word	3
	.word	4
	.word	8
	.word	9
	.word	5
	.align	3
.LC5:
	.word	5
	.word	8
	.word	3
	.word	4
	.word	6
	.word	9
	.word	2
	.align	3
.LC6:
	.word	2
	.word	8
	.word	3
	.word	4
	.word	6
	.word	9
	.word	5
	.align	3
.LC7:
	.word	5
	.word	6
	.word	9
	.word	4
	.word	8
	.word	3
	.word	2
	.align	3
.LC8:
	.word	2
	.word	6
	.word	9
	.word	4
	.word	8
	.word	3
	.word	5
	.align	3
.LC9:
	.word	5
	.word	6
	.word	3
	.word	4
	.word	8
	.word	9
	.word	2
	.word	1
	.align	3
.LC10:
	.word	2
	.word	6
	.word	3
	.word	4
	.word	8
	.word	9
	.word	5
	.word	1
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
