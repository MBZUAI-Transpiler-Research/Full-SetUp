	.arch armv8-a
	.file	"problem77.c"
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
	mov	w0, 1
	str	w0, [sp, 24]
	str	wzr, [sp, 28]
	b	.L2
.L6:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	bne	.L3
	mov	w0, 1
	b	.L4
.L3:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 8]
	mul	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	bgt	.L5
	ldr	w0, [sp, 28]
	cmp	w0, 99
	ble	.L6
.L5:
	mov	w0, 0
.L4:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem77.c"
	.align	3
.LC1:
	.string	"func0(1, 4) == 1"
	.align	3
.LC2:
	.string	"func0(2, 2) == 1"
	.align	3
.LC3:
	.string	"func0(8, 2) == 1"
	.align	3
.LC4:
	.string	"func0(3, 2) == 0"
	.align	3
.LC5:
	.string	"func0(3, 1) == 0"
	.align	3
.LC6:
	.string	"func0(5, 3) == 0"
	.align	3
.LC7:
	.string	"func0(16, 2) == 1"
	.align	3
.LC8:
	.string	"func0(143214, 16) == 0"
	.align	3
.LC9:
	.string	"func0(4, 2) == 1"
	.align	3
.LC10:
	.string	"func0(9, 3) == 1"
	.align	3
.LC11:
	.string	"func0(16, 4) == 1"
	.align	3
.LC12:
	.string	"func0(24, 2) == 0"
	.align	3
.LC13:
	.string	"func0(128, 4) == 0"
	.align	3
.LC14:
	.string	"func0(12, 6) == 0"
	.align	3
.LC15:
	.string	"func0(1, 1) == 1"
	.align	3
.LC16:
	.string	"func0(1, 12) == 1"
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
	mov	w1, 4
	mov	w0, 1
	bl	func0
	cmp	w0, 1
	beq	.L8
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 17
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L8:
	mov	w1, 2
	mov	w0, 2
	bl	func0
	cmp	w0, 1
	beq	.L9
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 18
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L9:
	mov	w1, 2
	mov	w0, 8
	bl	func0
	cmp	w0, 1
	beq	.L10
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 19
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L10:
	mov	w1, 2
	mov	w0, 3
	bl	func0
	cmp	w0, 0
	beq	.L11
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 20
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L11:
	mov	w1, 1
	mov	w0, 3
	bl	func0
	cmp	w0, 0
	beq	.L12
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 21
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L12:
	mov	w1, 3
	mov	w0, 5
	bl	func0
	cmp	w0, 0
	beq	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 22
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L13:
	mov	w1, 2
	mov	w0, 16
	bl	func0
	cmp	w0, 1
	beq	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 23
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L14:
	mov	w1, 16
	mov	w0, 12142
	movk	w0, 0x2, lsl 16
	bl	func0
	cmp	w0, 0
	beq	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 24
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L15:
	mov	w1, 2
	mov	w0, 4
	bl	func0
	cmp	w0, 1
	beq	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 25
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L16:
	mov	w1, 3
	mov	w0, 9
	bl	func0
	cmp	w0, 1
	beq	.L17
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 26
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L17:
	mov	w1, 4
	mov	w0, 16
	bl	func0
	cmp	w0, 1
	beq	.L18
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 27
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	__assert_fail
.L18:
	mov	w1, 2
	mov	w0, 24
	bl	func0
	cmp	w0, 0
	beq	.L19
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 28
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	__assert_fail
.L19:
	mov	w1, 4
	mov	w0, 128
	bl	func0
	cmp	w0, 0
	beq	.L20
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 29
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	__assert_fail
.L20:
	mov	w1, 6
	mov	w0, 12
	bl	func0
	cmp	w0, 0
	beq	.L21
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 30
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	__assert_fail
.L21:
	mov	w1, 1
	mov	w0, 1
	bl	func0
	cmp	w0, 1
	beq	.L22
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 31
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	__assert_fail
.L22:
	mov	w1, 12
	mov	w0, 1
	bl	func0
	cmp	w0, 1
	beq	.L23
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 32
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	__assert_fail
.L23:
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
