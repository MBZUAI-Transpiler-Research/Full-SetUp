	.arch armv8-a
	.file	"problem10.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bgt	.L2
	mov	x0, 0
	b	.L3
.L2:
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	bl	malloc
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L4
	mov	x0, 0
	b	.L3
.L4:
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	str	w0, [sp, 32]
	str	wzr, [sp, 36]
	b	.L5
.L7:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 32]
	cmp	w1, w0
	bge	.L6
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 32]
.L6:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w1, [sp, 32]
	str	w1, [x0]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L5:
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L7
	ldr	x0, [sp, 40]
.L3:
	ldp	x29, x30, [sp], 48
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
	b	.L9
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
	beq	.L10
	mov	w0, 0
	b	.L11
.L10:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L9:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	blt	.L12
	mov	w0, 1
.L11:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC2:
	.string	"problem10.c"
	.align	3
.LC3:
	.string	"result == NULL"
	.align	3
.LC4:
	.string	"issame(result, (int[]){1, 2, 3, 4}, 4)"
	.align	3
.LC5:
	.string	"issame(result, (int[]){4, 4, 4, 4}, 4)"
	.align	3
.LC6:
	.string	"issame(result, (int[]){3, 3, 3, 100, 100}, 5)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 120]
	mov	x1, 0
	add	x0, sp, 32
	mov	w1, 0
	bl	func0
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	beq	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 40
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L14:
	ldr	x0, [sp, 24]
	bl	free
	mov	w0, 1
	str	w0, [sp, 40]
	mov	w0, 2
	str	w0, [sp, 44]
	mov	w0, 3
	str	w0, [sp, 48]
	mov	w0, 4
	str	w0, [sp, 52]
	add	x0, sp, 40
	mov	w1, 4
	bl	func0
	str	x0, [sp, 24]
	mov	w0, 1
	str	w0, [sp, 96]
	mov	w0, 2
	str	w0, [sp, 100]
	mov	w0, 3
	str	w0, [sp, 104]
	mov	w0, 4
	str	w0, [sp, 108]
	add	x0, sp, 96
	mov	w2, 4
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	issame
	cmp	w0, 0
	bne	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 46
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L15:
	ldr	x0, [sp, 24]
	bl	free
	mov	w0, 4
	str	w0, [sp, 56]
	mov	w0, 3
	str	w0, [sp, 60]
	mov	w0, 2
	str	w0, [sp, 64]
	mov	w0, 1
	str	w0, [sp, 68]
	add	x0, sp, 56
	mov	w1, 4
	bl	func0
	str	x0, [sp, 24]
	mov	w0, 4
	str	w0, [sp, 96]
	mov	w0, 4
	str	w0, [sp, 100]
	mov	w0, 4
	str	w0, [sp, 104]
	mov	w0, 4
	str	w0, [sp, 108]
	add	x0, sp, 96
	mov	w2, 4
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	issame
	cmp	w0, 0
	bne	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 52
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L16:
	ldr	x0, [sp, 24]
	bl	free
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	add	x2, sp, 72
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	add	x0, sp, 72
	mov	w1, 5
	bl	func0
	str	x0, [sp, 24]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	add	x2, sp, 96
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	add	x0, sp, 96
	mov	w2, 5
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	issame
	cmp	w0, 0
	bne	.L17
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 58
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L17:
	ldr	x0, [sp, 24]
	bl	free
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 120]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L19
	bl	__stack_chk_fail
.L19:
	mov	w0, w1
	ldp	x29, x30, [sp], 128
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
	.word	3
	.word	2
	.word	3
	.word	100
	.word	3
	.align	3
.LC1:
	.word	3
	.word	3
	.word	3
	.word	100
	.word	100
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
