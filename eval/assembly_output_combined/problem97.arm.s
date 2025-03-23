	.arch armv8-a
	.file	"problem97.c"
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
	str	w0, [sp, 28]
	str	x1, [sp, 16]
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	bl	malloc
	str	x0, [sp, 56]
	ldr	x0, [sp, 16]
	str	wzr, [x0]
	mov	w0, 2
	str	w0, [sp, 40]
	b	.L2
.L9:
	mov	w0, 1
	str	w0, [sp, 48]
	str	wzr, [sp, 44]
	b	.L3
.L7:
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 52]
	ldr	w0, [sp, 52]
	mul	w0, w0, w0
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L11
	ldr	w0, [sp, 40]
	ldr	w1, [sp, 52]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 52]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L6
	str	wzr, [sp, 48]
	b	.L5
.L6:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L3:
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L7
	b	.L5
.L11:
	nop
.L5:
	ldr	w0, [sp, 48]
	cmp	w0, 0
	beq	.L8
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w1, [sp, 40]
	str	w1, [x0]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	add	w1, w0, 1
	ldr	x0, [sp, 16]
	str	w1, [x0]
.L8:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L2:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L9
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
	beq	.L13
	mov	w0, 0
	b	.L14
.L13:
	str	wzr, [sp, 44]
	b	.L15
.L17:
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	beq	.L16
	mov	w0, 0
	b	.L14
.L16:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L15:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L17
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
.LC5:
	.string	"problem97.c"
	.align	3
.LC6:
	.string	"issame(result, count, (int[]){2, 3}, 2)"
	.align	3
.LC7:
	.string	"issame(result, count, (int[]){2, 3, 5}, 3)"
	.align	3
.LC8:
	.string	"issame(result, count, (int[]){2, 3, 5, 7}, 4)"
	.align	3
.LC9:
	.string	"count == 0"
	.align	3
.LC10:
	.string	"issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17, 19}, 8)"
	.align	3
.LC11:
	.string	"issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17}, 7)"
	.align	3
.LC12:
	.string	"issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43}, 14)"
	.align	3
.LC13:
	.string	"issame(result, count, expected, 25)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #208
	.cfi_def_cfa_offset 208
	stp	x29, x30, [sp, 192]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 192
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 184]
	mov	x1, 0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 80
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	ldp	q0, q1, [x1, 64]
	stp	q0, q1, [x0, 64]
	ldr	w1, [x1, 96]
	str	w1, [x0, 96]
	add	x0, sp, 12
	mov	x1, x0
	mov	w0, 5
	bl	func0
	str	x0, [sp, 16]
	ldr	w1, [sp, 12]
	mov	w0, 2
	str	w0, [sp, 24]
	mov	w0, 3
	str	w0, [sp, 28]
	add	x0, sp, 24
	mov	w3, 2
	mov	x2, x0
	ldr	x0, [sp, 16]
	bl	issame
	cmp	w0, 0
	bne	.L19
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 46
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L19:
	ldr	x0, [sp, 16]
	bl	free
	add	x0, sp, 12
	mov	x1, x0
	mov	w0, 6
	bl	func0
	str	x0, [sp, 16]
	ldr	w4, [sp, 12]
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 24
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x0, sp, 24
	mov	w3, 3
	mov	x2, x0
	mov	w1, w4
	ldr	x0, [sp, 16]
	bl	issame
	cmp	w0, 0
	bne	.L20
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 50
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L20:
	ldr	x0, [sp, 16]
	bl	free
	add	x0, sp, 12
	mov	x1, x0
	mov	w0, 7
	bl	func0
	str	x0, [sp, 16]
	ldr	w4, [sp, 12]
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 24
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x0, sp, 24
	mov	w3, 3
	mov	x2, x0
	mov	w1, w4
	ldr	x0, [sp, 16]
	bl	issame
	cmp	w0, 0
	bne	.L21
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 54
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L21:
	ldr	x0, [sp, 16]
	bl	free
	add	x0, sp, 12
	mov	x1, x0
	mov	w0, 10
	bl	func0
	str	x0, [sp, 16]
	ldr	w1, [sp, 12]
	mov	w0, 2
	str	w0, [sp, 24]
	mov	w0, 3
	str	w0, [sp, 28]
	mov	w0, 5
	str	w0, [sp, 32]
	mov	w0, 7
	str	w0, [sp, 36]
	add	x0, sp, 24
	mov	w3, 4
	mov	x2, x0
	ldr	x0, [sp, 16]
	bl	issame
	cmp	w0, 0
	bne	.L22
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 58
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L22:
	ldr	x0, [sp, 16]
	bl	free
	add	x0, sp, 12
	mov	x1, x0
	mov	w0, 0
	bl	func0
	str	x0, [sp, 16]
	ldr	w0, [sp, 12]
	cmp	w0, 0
	beq	.L23
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 62
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L23:
	ldr	x0, [sp, 16]
	bl	free
	add	x0, sp, 12
	mov	x1, x0
	mov	w0, 22
	bl	func0
	str	x0, [sp, 16]
	ldr	w4, [sp, 12]
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, sp, 24
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	add	x0, sp, 24
	mov	w3, 8
	mov	x2, x0
	mov	w1, w4
	ldr	x0, [sp, 16]
	bl	issame
	cmp	w0, 0
	bne	.L24
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 66
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L24:
	ldr	x0, [sp, 16]
	bl	free
	add	x0, sp, 12
	mov	x1, x0
	mov	w0, 1
	bl	func0
	str	x0, [sp, 16]
	ldr	w0, [sp, 12]
	cmp	w0, 0
	beq	.L25
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 70
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L25:
	ldr	x0, [sp, 16]
	bl	free
	add	x0, sp, 12
	mov	x1, x0
	mov	w0, 18
	bl	func0
	str	x0, [sp, 16]
	ldr	w4, [sp, 12]
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	add	x0, sp, 24
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 12]
	str	q0, [x0, 12]
	add	x0, sp, 24
	mov	w3, 7
	mov	x2, x0
	mov	w1, w4
	ldr	x0, [sp, 16]
	bl	issame
	cmp	w0, 0
	bne	.L26
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 74
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	__assert_fail
.L26:
	ldr	x0, [sp, 16]
	bl	free
	add	x0, sp, 12
	mov	x1, x0
	mov	w0, 47
	bl	func0
	str	x0, [sp, 16]
	ldr	w4, [sp, 12]
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	add	x0, sp, 24
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 32]
	str	q0, [x0, 32]
	ldr	x1, [x1, 48]
	str	x1, [x0, 48]
	add	x0, sp, 24
	mov	w3, 14
	mov	x2, x0
	mov	w1, w4
	ldr	x0, [sp, 16]
	bl	issame
	cmp	w0, 0
	bne	.L27
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 78
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	__assert_fail
.L27:
	ldr	x0, [sp, 16]
	bl	free
	add	x0, sp, 12
	mov	x1, x0
	mov	w0, 101
	bl	func0
	str	x0, [sp, 16]
	ldr	w0, [sp, 12]
	add	x1, sp, 80
	mov	w3, 25
	mov	x2, x1
	mov	w1, w0
	ldr	x0, [sp, 16]
	bl	issame
	cmp	w0, 0
	bne	.L28
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 82
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	__assert_fail
.L28:
	ldr	x0, [sp, 16]
	bl	free
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 184]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L30
	bl	__stack_chk_fail
.L30:
	mov	w0, w1
	ldp	x29, x30, [sp, 192]
	add	sp, sp, 208
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
	.word	2
	.word	3
	.word	5
	.word	7
	.word	11
	.word	13
	.word	17
	.word	19
	.word	23
	.word	29
	.word	31
	.word	37
	.word	41
	.word	43
	.word	47
	.word	53
	.word	59
	.word	61
	.word	67
	.word	71
	.word	73
	.word	79
	.word	83
	.word	89
	.word	97
	.align	3
.LC1:
	.word	2
	.word	3
	.word	5
	.align	3
.LC2:
	.word	2
	.word	3
	.word	5
	.word	7
	.word	11
	.word	13
	.word	17
	.word	19
	.align	3
.LC3:
	.word	2
	.word	3
	.word	5
	.word	7
	.word	11
	.word	13
	.word	17
	.align	3
.LC4:
	.word	2
	.word	3
	.word	5
	.word	7
	.word	11
	.word	13
	.word	17
	.word	19
	.word	23
	.word	29
	.word	31
	.word	37
	.word	41
	.word	43
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
