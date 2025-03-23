	.arch armv8-a
	.file	"problem124.c"
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
	str	w0, [sp, 44]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	mov	w0, 10
	str	w0, [sp, 48]
	ldr	x0, [sp, 24]
	mov	w1, 1
	str	w1, [x0]
	ldr	x0, [sp, 32]
	mov	w1, 1
	str	w1, [x0]
	b	.L2
.L6:
	ldr	w0, [sp, 44]
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	cmp	w0, 1
	bne	.L3
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	ldr	w1, [sp, 48]
	cmp	w1, w0
	bgt	.L4
	ldr	w0, [sp, 48]
	lsl	w0, w0, 1
	str	w0, [sp, 48]
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 2
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	realloc
	str	x0, [sp, 32]
.L4:
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	add	w2, w0, 1
	ldr	x1, [sp, 24]
	str	w2, [x1]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w1, [sp, 44]
	str	w1, [x0]
	ldr	w1, [sp, 44]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	str	w0, [sp, 44]
	b	.L2
.L3:
	ldr	w0, [sp, 44]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 44]
.L2:
	ldr	w0, [sp, 44]
	cmp	w0, 1
	bne	.L6
	mov	w0, 1
	str	w0, [sp, 52]
	b	.L7
.L11:
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 60]
	ldr	w0, [sp, 52]
	sub	w0, w0, #1
	str	w0, [sp, 56]
	b	.L8
.L10:
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x1, x1, x0
	ldrsw	x0, [sp, 56]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x2, [sp, 32]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	str	w0, [sp, 56]
.L8:
	ldr	w0, [sp, 56]
	cmp	w0, 0
	blt	.L9
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L10
.L9:
	ldrsw	x0, [sp, 56]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w1, [sp, 60]
	str	w1, [x0]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L7:
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	ldr	w1, [sp, 52]
	cmp	w1, w0
	blt	.L11
	nop
	nop
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
.LC2:
	.string	"problem124.c"
	.align	3
.LC3:
	.string	"issame(result, size, expected1, 6)"
	.align	3
.LC4:
	.string	"issame(result, size, expected2, 2)"
	.align	3
.LC5:
	.string	"issame(result, size, expected3, 3)"
	.align	3
.LC6:
	.string	"issame(result, size, expected4, 1)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	add	x2, sp, 48
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	mov	x0, 400
	bl	malloc
	str	x0, [sp, 8]
	add	x0, sp, 4
	mov	x2, x0
	ldr	x1, [sp, 8]
	mov	w0, 14
	bl	func0
	ldr	w0, [sp, 4]
	add	x1, sp, 48
	mov	w3, 6
	mov	x2, x1
	mov	w1, w0
	ldr	x0, [sp, 8]
	bl	issame
	cmp	w0, 0
	bne	.L19
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 55
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L19:
	ldr	x0, [sp, 8]
	bl	free
	mov	w0, 1
	str	w0, [sp, 24]
	mov	w0, 5
	str	w0, [sp, 28]
	mov	x0, 400
	bl	malloc
	str	x0, [sp, 8]
	add	x0, sp, 4
	mov	x2, x0
	ldr	x1, [sp, 8]
	mov	w0, 5
	bl	func0
	ldr	w0, [sp, 4]
	add	x1, sp, 24
	mov	w3, 2
	mov	x2, x1
	mov	w1, w0
	ldr	x0, [sp, 8]
	bl	issame
	cmp	w0, 0
	bne	.L20
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 62
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L20:
	ldr	x0, [sp, 8]
	bl	free
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 32
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	mov	x0, 400
	bl	malloc
	str	x0, [sp, 8]
	add	x0, sp, 4
	mov	x2, x0
	ldr	x1, [sp, 8]
	mov	w0, 12
	bl	func0
	ldr	w0, [sp, 4]
	add	x1, sp, 32
	mov	w3, 3
	mov	x2, x1
	mov	w1, w0
	ldr	x0, [sp, 8]
	bl	issame
	cmp	w0, 0
	bne	.L21
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 69
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L21:
	ldr	x0, [sp, 8]
	bl	free
	mov	w0, 1
	str	w0, [sp, 16]
	mov	x0, 400
	bl	malloc
	str	x0, [sp, 8]
	add	x0, sp, 4
	mov	x2, x0
	ldr	x1, [sp, 8]
	mov	w0, 1
	bl	func0
	ldr	w0, [sp, 4]
	add	x1, sp, 16
	mov	w3, 1
	mov	x2, x1
	mov	w1, w0
	ldr	x0, [sp, 8]
	bl	issame
	cmp	w0, 0
	bne	.L22
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 76
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L22:
	ldr	x0, [sp, 8]
	bl	free
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 72]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L24
	bl	__stack_chk_fail
.L24:
	mov	w0, w1
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 96
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
	.word	1
	.word	5
	.word	7
	.word	11
	.word	13
	.word	17
	.align	3
.LC1:
	.word	1
	.word	3
	.word	5
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
