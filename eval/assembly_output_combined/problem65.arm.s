	.arch armv8-a
	.file	"problem65.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"aeiouAEIOU"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 24]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	str	x0, [sp, 56]
	str	wzr, [sp, 44]
	ldr	x0, [sp, 24]
	bl	strlen
	str	w0, [sp, 52]
	str	wzr, [sp, 48]
	b	.L2
.L4:
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	x0, [sp, 56]
	bl	strchr
	cmp	x0, 0
	beq	.L3
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L3:
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L2:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	blt	.L4
	ldr	w0, [sp, 52]
	cmp	w0, 0
	ble	.L5
	ldrsw	x0, [sp, 52]
	sub	x0, x0, #1
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 121
	beq	.L6
	ldrsw	x0, [sp, 52]
	sub	x0, x0, #1
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 89
	bne	.L5
.L6:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L5:
	ldr	w0, [sp, 44]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC1:
	.string	"abcde"
	.align	3
.LC2:
	.string	"problem65.c"
	.align	3
.LC3:
	.string	"func0(\"abcde\") == 2"
	.align	3
.LC4:
	.string	"Alone"
	.align	3
.LC5:
	.string	"func0(\"Alone\") == 3"
	.align	3
.LC6:
	.string	"key"
	.align	3
.LC7:
	.string	"func0(\"key\") == 2"
	.align	3
.LC8:
	.string	"bye"
	.align	3
.LC9:
	.string	"func0(\"bye\") == 1"
	.align	3
.LC10:
	.string	"keY"
	.align	3
.LC11:
	.string	"func0(\"keY\") == 2"
	.align	3
.LC12:
	.string	"bYe"
	.align	3
.LC13:
	.string	"func0(\"bYe\") == 1"
	.align	3
.LC14:
	.string	"ACEDY"
	.align	3
.LC15:
	.string	"func0(\"ACEDY\") == 3"
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
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	func0
	cmp	w0, 2
	beq	.L9
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 28
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L9:
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	func0
	cmp	w0, 3
	beq	.L10
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 29
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L10:
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	func0
	cmp	w0, 2
	beq	.L11
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 30
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L11:
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	func0
	cmp	w0, 1
	beq	.L12
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 31
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L12:
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	func0
	cmp	w0, 2
	beq	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 32
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	__assert_fail
.L13:
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	func0
	cmp	w0, 1
	beq	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 33
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	__assert_fail
.L14:
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	func0
	cmp	w0, 3
	beq	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 34
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
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
