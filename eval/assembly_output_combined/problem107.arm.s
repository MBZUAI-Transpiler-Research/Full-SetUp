	.arch armv8-a
	.file	"problem107.c"
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
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	bl	malloc
	str	x0, [sp, 56]
	str	wzr, [sp, 44]
	mov	w0, 1
	str	w0, [sp, 48]
	mov	w0, 1
	str	w0, [sp, 52]
	b	.L2
.L5:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 52]
	add	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 52]
	mul	w0, w1, w0
	str	w0, [sp, 48]
	ldr	w0, [sp, 52]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L3
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w1, [sp, 48]
	str	w1, [x0]
	b	.L4
.L3:
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w1, [sp, 44]
	str	w1, [x0]
.L4:
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L2:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	ble	.L5
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
	beq	.L8
	mov	w0, 0
	b	.L9
.L8:
	str	wzr, [sp, 44]
	b	.L10
.L12:
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
	beq	.L11
	mov	w0, 0
	b	.L9
.L11:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L10:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L12
	mov	w0, 1
.L9:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC3:
	.string	"problem107.c"
	.align	3
.LC4:
	.string	"issame(result, 5, expected1, 5)"
	.align	3
.LC5:
	.string	"issame(result, 7, expected2, 7)"
	.align	3
.LC6:
	.string	"issame(result, 1, expected3, 1)"
	.align	3
.LC7:
	.string	"issame(result, 3, expected4, 3)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 104]
	mov	x1, 0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	add	x2, sp, 48
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	mov	w0, 5
	bl	func0
	str	x0, [sp, 16]
	add	x0, sp, 48
	mov	w3, 5
	mov	x2, x0
	mov	w1, 5
	ldr	x0, [sp, 16]
	bl	issame
	cmp	w0, 0
	bne	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 34
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L14:
	ldr	x0, [sp, 16]
	bl	free
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 72
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 12]
	str	q0, [x0, 12]
	mov	w0, 7
	bl	func0
	str	x0, [sp, 16]
	add	x0, sp, 72
	mov	w3, 7
	mov	x2, x0
	mov	w1, 7
	ldr	x0, [sp, 16]
	bl	issame
	cmp	w0, 0
	bne	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 39
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L15:
	ldr	x0, [sp, 16]
	bl	free
	mov	w0, 1
	str	w0, [sp, 24]
	mov	w0, 1
	bl	func0
	str	x0, [sp, 16]
	add	x0, sp, 24
	mov	w3, 1
	mov	x2, x0
	mov	w1, 1
	ldr	x0, [sp, 16]
	bl	issame
	cmp	w0, 0
	bne	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 44
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L16:
	ldr	x0, [sp, 16]
	bl	free
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, sp, 32
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	mov	w0, 3
	bl	func0
	str	x0, [sp, 16]
	add	x0, sp, 32
	mov	w3, 3
	mov	x2, x0
	mov	w1, 3
	ldr	x0, [sp, 16]
	bl	issame
	cmp	w0, 0
	bne	.L17
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 49
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L17:
	ldr	x0, [sp, 16]
	bl	free
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 104]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L19
	bl	__stack_chk_fail
.L19:
	mov	w0, w1
	ldp	x29, x30, [sp], 112
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
	.word	6
	.word	24
	.word	15
	.align	3
.LC1:
	.word	1
	.word	2
	.word	6
	.word	24
	.word	15
	.word	720
	.word	28
	.align	3
.LC2:
	.word	1
	.word	2
	.word	6
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
