	.arch armv8-a
	.file	"problem129.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	ldr	w0, [sp, 4]
	cmp	w0, 0
	bne	.L2
	mov	w0, -32768
	b	.L3
.L2:
	str	wzr, [sp, 20]
	mov	w0, 1
	str	w0, [sp, 24]
	str	wzr, [sp, 28]
	b	.L4
.L7:
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 0
	csneg	w0, w0, w0, ge
	ldr	w1, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L5
	str	wzr, [sp, 24]
.L5:
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 0
	bge	.L6
	ldr	w0, [sp, 24]
	neg	w0, w0
	str	w0, [sp, 24]
.L6:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L4:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L7
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 24]
	mul	w0, w1, w0
.L3:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC2:
	.string	"problem129.c"
	.align	3
.LC3:
	.string	"func0(arr1, 4) == -9"
	.align	3
.LC4:
	.string	"func0(arr2, 2) == 0"
	.align	3
.LC5:
	.string	"func0(arr3, 7) == -10"
	.align	3
.LC6:
	.string	"func0(NULL, 0) == -32768"
	.align	3
.LC7:
	.string	"func0(arr5, 7) == 20"
	.align	3
.LC8:
	.string	"func0(arr6, 4) == 4"
	.align	3
.LC9:
	.string	"func0(arr7, 4) == -4"
	.align	3
.LC10:
	.string	"func0(arr8, 4) == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -160]!
	.cfi_def_cfa_offset 160
	.cfi_offset 29, -160
	.cfi_offset 30, -152
	mov	x29, sp
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 152]
	mov	x1, 0
	mov	w0, 1
	str	w0, [sp, 24]
	mov	w0, 2
	str	w0, [sp, 28]
	mov	w0, 2
	str	w0, [sp, 32]
	mov	w0, -4
	str	w0, [sp, 36]
	add	x0, sp, 24
	mov	w1, 4
	bl	func0
	cmn	w0, #9
	beq	.L9
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 22
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L9:
	str	wzr, [sp, 16]
	mov	w0, 1
	str	w0, [sp, 20]
	add	x0, sp, 16
	mov	w1, 2
	bl	func0
	cmp	w0, 0
	beq	.L10
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 25
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L10:
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 88
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 12]
	str	q0, [x0, 12]
	add	x0, sp, 88
	mov	w1, 7
	bl	func0
	cmn	w0, #10
	beq	.L11
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 28
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L11:
	mov	w1, 0
	mov	x0, 0
	bl	func0
	cmn	w0, #32768
	beq	.L12
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 30
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L12:
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 120
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 12]
	str	q0, [x0, 12]
	add	x0, sp, 120
	mov	w1, 7
	bl	func0
	cmp	w0, 20
	beq	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 33
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L13:
	mov	w0, -1
	str	w0, [sp, 40]
	mov	w0, 1
	str	w0, [sp, 44]
	mov	w0, -1
	str	w0, [sp, 48]
	mov	w0, 1
	str	w0, [sp, 52]
	add	x0, sp, 40
	mov	w1, 4
	bl	func0
	cmp	w0, 4
	beq	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 36
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L14:
	mov	w0, -1
	str	w0, [sp, 56]
	mov	w0, 1
	str	w0, [sp, 60]
	mov	w0, 1
	str	w0, [sp, 64]
	mov	w0, 1
	str	w0, [sp, 68]
	add	x0, sp, 56
	mov	w1, 4
	bl	func0
	cmn	w0, #4
	beq	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 39
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L15:
	mov	w0, -1
	str	w0, [sp, 72]
	mov	w0, 1
	str	w0, [sp, 76]
	mov	w0, 1
	str	w0, [sp, 80]
	str	wzr, [sp, 84]
	add	x0, sp, 72
	mov	w1, 4
	bl	func0
	cmp	w0, 0
	beq	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 42
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L16:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 152]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L18
	bl	__stack_chk_fail
.L18:
	mov	w0, w1
	ldp	x29, x30, [sp], 160
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
	.word	1
	.word	1
	.word	1
	.word	2
	.word	3
	.word	-1
	.word	1
	.align	3
.LC1:
	.word	2
	.word	4
	.word	1
	.word	2
	.word	-1
	.word	-1
	.word	9
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
