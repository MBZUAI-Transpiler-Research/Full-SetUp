	.arch armv8-a
	.file	"problem128.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"NO"
	.align	3
.LC1:
	.string	"YES"
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
	str	w3, [sp]
	ldr	w0, [sp, 12]
	ldr	w2, [sp, 4]
	ldr	w1, [sp, 4]
	cmp	w2, w0
	csel	w0, w1, w0, ge
	str	w0, [sp, 20]
	ldr	w0, [sp, 8]
	ldr	w2, [sp]
	ldr	w1, [sp]
	cmp	w2, w0
	csel	w0, w1, w0, le
	str	w0, [sp, 24]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 20]
	sub	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bgt	.L2
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	b	.L3
.L2:
	mov	w0, 2
	str	w0, [sp, 16]
	b	.L4
.L6:
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 16]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 16]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L5
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	b	.L3
.L5:
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 16]
.L4:
	ldr	w0, [sp, 16]
	mul	w0, w0, w0
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bge	.L6
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
.L3:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC2:
	.string	"problem128.c"
	.align	3
.LC3:
	.string	"strcmp(func0(1, 2, 2, 3), \"NO\") == 0"
	.align	3
.LC4:
	.string	"strcmp(func0(-1, 1, 0, 4), \"NO\") == 0"
	.align	3
.LC5:
	.string	"strcmp(func0(-3, -1, -5, 5), \"YES\") == 0"
	.align	3
.LC6:
	.string	"strcmp(func0(-2, 2, -4, 0), \"YES\") == 0"
	.align	3
.LC7:
	.string	"strcmp(func0(-11, 2, -1, -1), \"NO\") == 0"
	.align	3
.LC8:
	.string	"strcmp(func0(1, 2, 3, 5), \"NO\") == 0"
	.align	3
.LC9:
	.string	"strcmp(func0(1, 2, 1, 2), \"NO\") == 0"
	.align	3
.LC10:
	.string	"strcmp(func0(-2, -2, -3, -2), \"NO\") == 0"
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
	mov	w3, 3
	mov	w2, 2
	mov	w1, 2
	mov	w0, 1
	bl	func0
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L8
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 24
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L8:
	mov	w3, 4
	mov	w2, 0
	mov	w1, 1
	mov	w0, -1
	bl	func0
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L9
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 25
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L9:
	mov	w3, 5
	mov	w2, -5
	mov	w1, -1
	mov	w0, -3
	bl	func0
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L10
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 26
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L10:
	mov	w3, 0
	mov	w2, -4
	mov	w1, 2
	mov	w0, -2
	bl	func0
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L11
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 27
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L11:
	mov	w3, -1
	mov	w2, -1
	mov	w1, 2
	mov	w0, -11
	bl	func0
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L12
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 28
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L12:
	mov	w3, 5
	mov	w2, 3
	mov	w1, 2
	mov	w0, 1
	bl	func0
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 29
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L13:
	mov	w3, 2
	mov	w2, 1
	mov	w1, 2
	mov	w0, 1
	bl	func0
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 30
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L14:
	mov	w3, -2
	mov	w2, -3
	mov	w1, -2
	mov	w0, -2
	bl	func0
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 31
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L15:
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
