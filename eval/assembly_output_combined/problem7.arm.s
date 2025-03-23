	.arch armv8-a
	.file	"problem7.c"
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
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	xzr, [sp, 56]
	str	wzr, [sp, 40]
	str	wzr, [sp, 44]
	str	wzr, [sp, 48]
	str	wzr, [sp, 52]
	str	wzr, [sp, 48]
	b	.L2
.L5:
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 39]
	ldrb	w0, [sp, 39]
	cmp	w0, 40
	bne	.L3
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	ble	.L4
	ldr	w0, [sp, 40]
	str	w0, [sp, 44]
	b	.L4
.L3:
	ldrb	w0, [sp, 39]
	cmp	w0, 41
	bne	.L4
	ldr	w0, [sp, 40]
	sub	w0, w0, #1
	str	w0, [sp, 40]
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bne	.L4
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	realloc
	str	x0, [sp, 56]
	ldr	w0, [sp, 52]
	add	w1, w0, 1
	str	w1, [sp, 52]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w1, [sp, 44]
	str	w1, [x0]
	str	wzr, [sp, 44]
.L4:
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L2:
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L5
	ldr	x0, [sp, 16]
	ldr	w1, [sp, 52]
	str	w1, [x0]
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
	str	x1, [sp, 16]
	str	w2, [sp, 12]
	str	w3, [sp, 8]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
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
	ldr	x2, [sp, 16]
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
	ldr	w0, [sp, 12]
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
.LC0:
	.string	"(()()) ((())) () ((())()())"
	.align	3
.LC1:
	.string	"problem7.c"
	.align	3
.LC2:
	.string	"issame(result, (const int[]){2, 3, 1, 3}, returnSize, 4)"
	.align	3
.LC3:
	.string	"() (()) ((())) (((())))"
	.align	3
.LC4:
	.string	"issame(result, (const int[]){1, 2, 3, 4}, returnSize, 4)"
	.align	3
.LC5:
	.string	"(()(())((())))"
	.align	3
.LC6:
	.string	"issame(result, (const int[]){4}, returnSize, 1)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	func0
	str	x0, [sp, 32]
	mov	w0, 2
	str	w0, [sp, 40]
	mov	w0, 3
	str	w0, [sp, 44]
	mov	w0, 1
	str	w0, [sp, 48]
	mov	w0, 3
	str	w0, [sp, 52]
	ldr	w1, [sp, 28]
	add	x0, sp, 40
	mov	w3, 4
	mov	w2, w1
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	issame
	cmp	w0, 0
	bne	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 45
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L14:
	ldr	x0, [sp, 32]
	bl	free
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	func0
	str	x0, [sp, 32]
	mov	w0, 1
	str	w0, [sp, 40]
	mov	w0, 2
	str	w0, [sp, 44]
	mov	w0, 3
	str	w0, [sp, 48]
	mov	w0, 4
	str	w0, [sp, 52]
	ldr	w1, [sp, 28]
	add	x0, sp, 40
	mov	w3, 4
	mov	w2, w1
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	issame
	cmp	w0, 0
	bne	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 49
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L15:
	ldr	x0, [sp, 32]
	bl	free
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	func0
	str	x0, [sp, 32]
	mov	w0, 4
	str	w0, [sp, 40]
	ldr	w1, [sp, 28]
	add	x0, sp, 40
	mov	w3, 1
	mov	w2, w1
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	issame
	cmp	w0, 0
	bne	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 53
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L16:
	ldr	x0, [sp, 32]
	bl	free
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L18
	bl	__stack_chk_fail
.L18:
	mov	w0, w1
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
