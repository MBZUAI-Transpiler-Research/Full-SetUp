	.arch armv8-a
	.file	"problem40.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	w0, [sp, 12]
	mov	w0, 1
	str	w0, [sp, 24]
	mov	w0, 2
	str	w0, [sp, 28]
	str	wzr, [sp, 32]
	b	.L2
.L9:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	str	w0, [sp, 44]
	ldr	w0, [sp, 28]
	str	w0, [sp, 24]
	ldr	w0, [sp, 44]
	str	w0, [sp, 28]
	mov	w0, 1
	str	w0, [sp, 36]
	mov	w0, 2
	str	w0, [sp, 40]
	b	.L3
.L6:
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 40]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 40]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L4
	str	wzr, [sp, 36]
	b	.L5
.L4:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L3:
	ldr	w0, [sp, 40]
	mul	w0, w0, w0
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bge	.L6
.L5:
	ldr	w0, [sp, 36]
	cmp	w0, 0
	beq	.L7
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
.L7:
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	bne	.L2
	ldr	w0, [sp, 24]
	b	.L8
.L2:
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	blt	.L9
	mov	w0, 0
.L8:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem40.c"
	.align	3
.LC1:
	.string	"func0(1) == 2"
	.align	3
.LC2:
	.string	"func0(2) == 3"
	.align	3
.LC3:
	.string	"func0(3) == 5"
	.align	3
.LC4:
	.string	"func0(4) == 13"
	.align	3
.LC5:
	.string	"func0(5) == 89"
	.align	3
.LC6:
	.string	"func0(6) == 233"
	.align	3
.LC7:
	.string	"func0(7) == 1597"
	.align	3
.LC8:
	.string	"func0(8) == 28657"
	.align	3
.LC9:
	.string	"func0(9) == 514229"
	.align	3
.LC10:
	.string	"func0(10) == 433494437"
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
	mov	w0, 1
	bl	func0
	cmp	w0, 2
	beq	.L11
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 27
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L11:
	mov	w0, 2
	bl	func0
	cmp	w0, 3
	beq	.L12
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 28
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L12:
	mov	w0, 3
	bl	func0
	cmp	w0, 5
	beq	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 29
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L13:
	mov	w0, 4
	bl	func0
	cmp	w0, 13
	beq	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 30
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L14:
	mov	w0, 5
	bl	func0
	cmp	w0, 89
	beq	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 31
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L15:
	mov	w0, 6
	bl	func0
	cmp	w0, 233
	beq	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 32
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L16:
	mov	w0, 7
	bl	func0
	cmp	w0, 1597
	beq	.L17
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 33
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L17:
	mov	w0, 8
	bl	func0
	mov	w1, w0
	mov	w0, 28657
	cmp	w1, w0
	beq	.L18
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 34
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L18:
	mov	w0, 9
	bl	func0
	mov	w1, w0
	mov	w0, 55477
	movk	w0, 0x7, lsl 16
	cmp	w1, w0
	beq	.L19
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 35
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L19:
	mov	w0, 10
	bl	func0
	mov	w1, w0
	mov	w0, 39333
	movk	w0, 0x19d6, lsl 16
	cmp	w1, w0
	beq	.L20
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 36
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L20:
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
