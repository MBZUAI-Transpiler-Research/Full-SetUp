	.arch armv8-a
	.file	"problem35.c"
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
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	bl	malloc
	str	x0, [sp, 72]
	str	wzr, [sp, 56]
	str	wzr, [sp, 60]
	b	.L2
.L8:
	str	wzr, [sp, 52]
	str	wzr, [sp, 64]
	b	.L3
.L6:
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x2, [sp, 72]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	bne	.L4
	mov	w0, 1
	str	w0, [sp, 52]
	b	.L5
.L4:
	ldr	w0, [sp, 64]
	add	w0, w0, 1
	str	w0, [sp, 64]
.L3:
	ldr	w1, [sp, 64]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	blt	.L6
.L5:
	ldr	w0, [sp, 52]
	cmp	w0, 0
	bne	.L7
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldr	w0, [sp, 56]
	add	w2, w0, 1
	str	w2, [sp, 56]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x2, [sp, 72]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
.L7:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L2:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L8
	str	wzr, [sp, 60]
	b	.L9
.L13:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 64]
	b	.L10
.L12:
	ldrsw	x0, [sp, 60]
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
	ble	.L11
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 68]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x1, [sp, 72]
	add	x1, x1, x0
	ldrsw	x0, [sp, 60]
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
.L11:
	ldr	w0, [sp, 64]
	add	w0, w0, 1
	str	w0, [sp, 64]
.L10:
	ldr	w1, [sp, 64]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	blt	.L12
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L9:
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L13
	ldr	x0, [sp, 24]
	ldr	w1, [sp, 56]
	str	w1, [x0]
	ldr	x0, [sp, 72]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC2:
	.string	"problem35.c"
	.align	3
.LC3:
	.string	"unique_size == sizeof(expected_array) / sizeof(expected_array[0])"
	.align	3
.LC4:
	.string	"unique_array[i] == expected_array[i]"
	.align	3
.LC5:
	.string	"All tests passed!"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
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
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 64
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	w1, [x1, 32]
	str	w1, [x0, 32]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	add	x2, sp, 40
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x1, sp, 24
	add	x0, sp, 64
	mov	x2, x1
	mov	w1, 9
	bl	func0
	str	x0, [sp, 32]
	ldr	w0, [sp, 24]
	cmp	w0, 6
	beq	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 46
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L16:
	str	wzr, [sp, 28]
	b	.L17
.L19:
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	add	x2, sp, 40
	ldr	w0, [x2, x0]
	cmp	w1, w0
	beq	.L18
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 48
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L18:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L17:
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L19
	ldr	x0, [sp, 32]
	bl	free
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	puts
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 104]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L21
	bl	__stack_chk_fail
.L21:
	mov	w0, w1
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	5
	.word	3
	.word	5
	.word	2
	.word	3
	.word	3
	.word	9
	.word	0
	.word	123
	.align	3
.LC1:
	.word	0
	.word	2
	.word	3
	.word	5
	.word	9
	.word	123
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
