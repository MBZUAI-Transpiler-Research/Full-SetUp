	.arch armv8-a
	.file	"problem27.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	x2, [sp, 24]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	bl	malloc
	str	x0, [sp, 104]
	ldrsw	x0, [sp, 36]
	mov	x1, 4
	bl	calloc
	str	x0, [sp, 112]
	ldrsw	x0, [sp, 36]
	mov	x1, 4
	bl	calloc
	str	x0, [sp, 120]
	str	wzr, [sp, 52]
	str	wzr, [sp, 56]
	str	wzr, [sp, 60]
	str	wzr, [sp, 64]
	b	.L2
.L14:
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 100]
	str	wzr, [sp, 68]
	str	wzr, [sp, 72]
	b	.L3
.L6:
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	ldr	x1, [sp, 120]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 100]
	cmp	w1, w0
	bne	.L4
	mov	w0, 1
	str	w0, [sp, 68]
	b	.L5
.L4:
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
.L3:
	ldr	w1, [sp, 72]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	blt	.L6
.L5:
	ldr	w0, [sp, 68]
	cmp	w0, 0
	bne	.L23
	str	wzr, [sp, 76]
	str	wzr, [sp, 80]
	b	.L9
.L12:
	ldrsw	x0, [sp, 80]
	lsl	x0, x0, 2
	ldr	x1, [sp, 112]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 100]
	cmp	w1, w0
	bne	.L10
	mov	w0, 1
	str	w0, [sp, 76]
	b	.L11
.L10:
	ldr	w0, [sp, 80]
	add	w0, w0, 1
	str	w0, [sp, 80]
.L9:
	ldr	w1, [sp, 80]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	blt	.L12
.L11:
	ldr	w0, [sp, 76]
	cmp	w0, 0
	beq	.L13
	ldr	w0, [sp, 56]
	add	w1, w0, 1
	str	w1, [sp, 56]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 120]
	add	x0, x1, x0
	ldr	w1, [sp, 100]
	str	w1, [x0]
	b	.L8
.L13:
	ldr	w0, [sp, 52]
	add	w1, w0, 1
	str	w1, [sp, 52]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 112]
	add	x0, x1, x0
	ldr	w1, [sp, 100]
	str	w1, [x0]
	b	.L8
.L23:
	nop
.L8:
	ldr	w0, [sp, 64]
	add	w0, w0, 1
	str	w0, [sp, 64]
.L2:
	ldr	w1, [sp, 64]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L14
	str	wzr, [sp, 84]
	b	.L15
.L21:
	ldrsw	x0, [sp, 84]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 96]
	str	wzr, [sp, 88]
	str	wzr, [sp, 92]
	b	.L16
.L19:
	ldrsw	x0, [sp, 92]
	lsl	x0, x0, 2
	ldr	x1, [sp, 120]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 96]
	cmp	w1, w0
	bne	.L17
	mov	w0, 1
	str	w0, [sp, 88]
	b	.L18
.L17:
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
.L16:
	ldr	w1, [sp, 92]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	blt	.L19
.L18:
	ldr	w0, [sp, 88]
	cmp	w0, 0
	bne	.L20
	ldr	w0, [sp, 60]
	add	w1, w0, 1
	str	w1, [sp, 60]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 104]
	add	x0, x1, x0
	ldr	w1, [sp, 96]
	str	w1, [x0]
.L20:
	ldr	w0, [sp, 84]
	add	w0, w0, 1
	str	w0, [sp, 84]
.L15:
	ldr	w1, [sp, 84]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L21
	ldr	x0, [sp, 24]
	ldr	w1, [sp, 60]
	str	w1, [x0]
	ldr	x0, [sp, 112]
	bl	free
	ldr	x0, [sp, 120]
	bl	free
	ldr	x0, [sp, 104]
	ldp	x29, x30, [sp], 128
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
	beq	.L25
	mov	w0, 0
	b	.L26
.L25:
	str	wzr, [sp, 44]
	b	.L27
.L29:
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
	beq	.L28
	mov	w0, 0
	b	.L26
.L28:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L27:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L29
	mov	w0, 1
.L26:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC2:
	.string	"problem27.c"
	.align	3
.LC3:
	.string	"issame(result, new_size, (int[]){}, 0)"
	.align	3
.LC4:
	.string	"issame(result, new_size, (int[]){1, 2, 3, 4}, 4)"
	.align	3
.LC5:
	.string	"issame(result, new_size, (int[]){1, 4, 5}, 3)"
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
	add	x1, sp, 20
	add	x0, sp, 32
	mov	x2, x1
	mov	w1, 0
	bl	func0
	str	x0, [sp, 24]
	ldr	w0, [sp, 20]
	add	x1, sp, 72
	mov	w3, 0
	mov	x2, x1
	mov	w1, w0
	ldr	x0, [sp, 24]
	bl	issame
	cmp	w0, 0
	bne	.L31
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 77
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L31:
	ldr	x0, [sp, 24]
	bl	free
	mov	w0, 1
	str	w0, [sp, 56]
	mov	w0, 2
	str	w0, [sp, 60]
	mov	w0, 3
	str	w0, [sp, 64]
	mov	w0, 4
	str	w0, [sp, 68]
	add	x1, sp, 20
	add	x0, sp, 56
	mov	x2, x1
	mov	w1, 4
	bl	func0
	str	x0, [sp, 24]
	ldr	w1, [sp, 20]
	mov	w0, 1
	str	w0, [sp, 72]
	mov	w0, 2
	str	w0, [sp, 76]
	mov	w0, 3
	str	w0, [sp, 80]
	mov	w0, 4
	str	w0, [sp, 84]
	add	x0, sp, 72
	mov	w3, 4
	mov	x2, x0
	ldr	x0, [sp, 24]
	bl	issame
	cmp	w0, 0
	bne	.L32
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 81
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L32:
	ldr	x0, [sp, 24]
	bl	free
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 72
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 12]
	str	q0, [x0, 12]
	add	x1, sp, 20
	add	x0, sp, 72
	mov	x2, x1
	mov	w1, 7
	bl	func0
	str	x0, [sp, 24]
	ldr	w4, [sp, 20]
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 40
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x0, sp, 40
	mov	w3, 3
	mov	x2, x0
	mov	w1, w4
	ldr	x0, [sp, 24]
	bl	issame
	cmp	w0, 0
	bne	.L33
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 85
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L33:
	ldr	x0, [sp, 24]
	bl	free
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 104]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L35
	bl	__stack_chk_fail
.L35:
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
	.word	3
	.word	2
	.word	4
	.word	3
	.word	5
	.align	3
.LC1:
	.word	1
	.word	4
	.word	5
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
