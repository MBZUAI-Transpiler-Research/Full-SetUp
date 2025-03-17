	.arch armv8-a
	.file	"problem104.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"-1"
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
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	ble	.L2
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	b	.L3
.L2:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 32]
	mov	x0, 33
	bl	malloc
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	strb	wzr, [x0]
	mov	w0, 32
	str	w0, [sp, 36]
	ldr	w0, [sp, 36]
	sub	w1, w0, #1
	str	w1, [sp, 36]
	sxtw	x0, w0
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	strb	wzr, [x0]
.L4:
	ldr	w0, [sp, 32]
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	and	w1, w0, 255
	ldr	w0, [sp, 36]
	sub	w2, w0, #1
	str	w2, [sp, 36]
	sxtw	x0, w0
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	add	w1, w1, 48
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	w0, [sp, 32]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 32]
	ldr	w0, [sp, 32]
	cmp	w0, 0
	bgt	.L4
	ldrsw	x0, [sp, 36]
	add	x0, x0, 1
	ldr	x1, [sp, 40]
	add	x0, x1, x0
.L3:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC1:
	.string	"11"
	.align	3
.LC2:
	.string	"problem104.c"
	.align	3
.LC3:
	.string	"strcmp(func0(1, 5), \"11\") == 0"
	.align	3
.LC4:
	.string	"1010"
	.align	3
.LC5:
	.string	"strcmp(func0(7, 13), \"1010\") == 0"
	.align	3
.LC6:
	.string	"1111001010"
	.align	3
.LC7:
	.string	"strcmp(func0(964, 977), \"1111001010\") == 0"
	.align	3
.LC8:
	.string	"1111100100"
	.align	3
.LC9:
	.string	"strcmp(func0(996, 997), \"1111100100\") == 0"
	.align	3
.LC10:
	.string	"1011000001"
	.align	3
.LC11:
	.string	"strcmp(func0(560, 851), \"1011000001\") == 0"
	.align	3
.LC12:
	.string	"101101101"
	.align	3
.LC13:
	.string	"strcmp(func0(185, 546), \"101101101\") == 0"
	.align	3
.LC14:
	.string	"110101101"
	.align	3
.LC15:
	.string	"strcmp(func0(362, 496), \"110101101\") == 0"
	.align	3
.LC16:
	.string	"1001110010"
	.align	3
.LC17:
	.string	"strcmp(func0(350, 902), \"1001110010\") == 0"
	.align	3
.LC18:
	.string	"11010111"
	.align	3
.LC19:
	.string	"strcmp(func0(197, 233), \"11010111\") == 0"
	.align	3
.LC20:
	.string	"strcmp(func0(7, 5), \"-1\") == 0"
	.align	3
.LC21:
	.string	"strcmp(func0(5, 1), \"-1\") == 0"
	.align	3
.LC22:
	.string	"101"
	.align	3
.LC23:
	.string	"strcmp(func0(5, 5), \"101\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	mov	w1, 5
	mov	w0, 1
	bl	func0
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L6
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 27
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L6:
	mov	w1, 13
	mov	w0, 7
	bl	func0
	mov	x2, x0
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L7
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 28
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L7:
	mov	w1, 977
	mov	w0, 964
	bl	func0
	mov	x2, x0
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L8
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 29
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L8:
	mov	w1, 997
	mov	w0, 996
	bl	func0
	mov	x2, x0
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L9
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 30
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L9:
	mov	w1, 851
	mov	w0, 560
	bl	func0
	mov	x2, x0
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L10
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 31
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	__assert_fail
.L10:
	mov	w1, 546
	mov	w0, 185
	bl	func0
	mov	x2, x0
	adrp	x0, .LC12
	add	x1, x0, :lo12:.LC12
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L11
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 32
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	__assert_fail
.L11:
	mov	w1, 496
	mov	w0, 362
	bl	func0
	mov	x2, x0
	adrp	x0, .LC14
	add	x1, x0, :lo12:.LC14
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L12
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 33
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	__assert_fail
.L12:
	mov	w1, 902
	mov	w0, 350
	bl	func0
	mov	x2, x0
	adrp	x0, .LC16
	add	x1, x0, :lo12:.LC16
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 34
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC17
	add	x0, x0, :lo12:.LC17
	bl	__assert_fail
.L13:
	mov	w1, 233
	mov	w0, 197
	bl	func0
	mov	x2, x0
	adrp	x0, .LC18
	add	x1, x0, :lo12:.LC18
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 35
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC19
	add	x0, x0, :lo12:.LC19
	bl	__assert_fail
.L14:
	mov	w1, 5
	mov	w0, 7
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
	mov	w2, 36
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC20
	add	x0, x0, :lo12:.LC20
	bl	__assert_fail
.L15:
	mov	w1, 1
	mov	w0, 5
	bl	func0
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 37
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC21
	add	x0, x0, :lo12:.LC21
	bl	__assert_fail
.L16:
	mov	w1, 5
	mov	w0, 5
	bl	func0
	mov	x2, x0
	adrp	x0, .LC22
	add	x1, x0, :lo12:.LC22
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L17
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 38
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC23
	add	x0, x0, :lo12:.LC23
	bl	__assert_fail
.L17:
	mov	w0, 0
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
