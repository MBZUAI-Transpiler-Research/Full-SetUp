	.arch armv8-a
	.file	"problem151.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	str	w2, [sp, 4]
	mov	w0, 1
	str	w0, [sp, 24]
	ldr	w0, [sp, 12]
	cmp	w0, 1
	bgt	.L2
	str	wzr, [sp, 24]
.L2:
	mov	w0, 2
	str	w0, [sp, 28]
	b	.L3
.L5:
	ldr	w0, [sp, 12]
	ldr	w1, [sp, 28]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 28]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L4
	str	wzr, [sp, 24]
.L4:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L3:
	ldr	w0, [sp, 28]
	mul	w0, w0, w0
	ldr	w1, [sp, 12]
	cmp	w1, w0
	bge	.L5
	ldr	w0, [sp, 24]
	cmp	w0, 0
	beq	.L6
	ldr	w0, [sp, 8]
	b	.L7
.L6:
	ldr	w0, [sp, 4]
.L7:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem151.c"
	.align	3
.LC1:
	.string	"func0(7, 34, 12) == 34"
	.align	3
.LC2:
	.string	"func0(15, 8, 5) == 5"
	.align	3
.LC3:
	.string	"func0(3, 33, 5212) == 33"
	.align	3
.LC4:
	.string	"func0(1259, 3, 52) == 3"
	.align	3
.LC5:
	.string	"func0(7919, -1, 12) == -1"
	.align	3
.LC6:
	.string	"func0(3609, 1245, 583) == 583"
	.align	3
.LC7:
	.string	"func0(91, 56, 129) == 129"
	.align	3
.LC8:
	.string	"func0(6, 34, 1234) == 1234"
	.align	3
.LC9:
	.string	"func0(1, 2, 0) == 0"
	.align	3
.LC10:
	.string	"func0(2, 2, 0) == 2"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	mov	w2, 12
	mov	w1, 34
	mov	w0, 7
	bl	func0
	cmp	w0, 34
	beq	.L9
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 18
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L9:
	mov	w2, 5
	mov	w1, 8
	mov	w0, 15
	bl	func0
	cmp	w0, 5
	beq	.L10
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 19
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L10:
	mov	w2, 5212
	mov	w1, 33
	mov	w0, 3
	bl	func0
	cmp	w0, 33
	beq	.L11
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 20
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L11:
	mov	w2, 52
	mov	w1, 3
	mov	w0, 1259
	bl	func0
	cmp	w0, 3
	beq	.L12
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 21
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L12:
	mov	w2, 12
	mov	w1, -1
	mov	w0, 7919
	bl	func0
	cmn	w0, #1
	beq	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 22
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L13:
	mov	w2, 583
	mov	w1, 1245
	mov	w0, 3609
	bl	func0
	cmp	w0, 583
	beq	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 23
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L14:
	mov	w2, 129
	mov	w1, 56
	mov	w0, 91
	bl	func0
	cmp	w0, 129
	beq	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 24
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L15:
	mov	w2, 1234
	mov	w1, 34
	mov	w0, 6
	bl	func0
	cmp	w0, 1234
	beq	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 25
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L16:
	mov	w2, 0
	mov	w1, 2
	mov	w0, 1
	bl	func0
	cmp	w0, 0
	beq	.L17
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 26
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L17:
	mov	w2, 0
	mov	w1, 2
	mov	w0, 2
	bl	func0
	cmp	w0, 2
	beq	.L18
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 27
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L18:
	mov	w0, 0
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
