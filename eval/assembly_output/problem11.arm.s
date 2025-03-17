	.arch armv8-a
	.file	"problem11.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	strlen
	str	w0, [sp, 52]
	ldr	w0, [sp, 52]
	lsl	w0, w0, 1
	add	w0, w0, 1
	sxtw	x0, w0
	bl	malloc
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L2
	mov	x0, 0
	b	.L3
.L2:
	str	wzr, [sp, 40]
	b	.L4
.L12:
	mov	w0, 1
	str	w0, [sp, 48]
	str	wzr, [sp, 44]
	b	.L5
.L8:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	add	w0, w1, w0
	sxtw	x0, w0
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldr	w0, [sp, 52]
	sub	w2, w0, #1
	ldr	w0, [sp, 44]
	sub	w0, w2, w0
	sxtw	x0, w0
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldrb	w0, [x0]
	cmp	w1, w0
	beq	.L6
	str	wzr, [sp, 48]
	b	.L7
.L6:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L5:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 40]
	sub	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 44]
	cmp	w0, w1
	blt	.L8
.L7:
	ldr	w0, [sp, 48]
	cmp	w0, 0
	beq	.L9
	ldrsw	x0, [sp, 52]
	mov	x2, x0
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 56]
	bl	strncpy
	str	wzr, [sp, 44]
	b	.L10
.L11:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	sub	w0, w1, w0
	sxtw	x0, w0
	sub	x0, x0, #1
	ldr	x1, [sp, 24]
	add	x1, x1, x0
	ldr	w2, [sp, 52]
	ldr	w0, [sp, 44]
	add	w0, w2, w0
	sxtw	x0, w0
	ldr	x2, [sp, 56]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L10:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	blt	.L11
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 40]
	add	w0, w1, w0
	sxtw	x0, w0
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	strb	wzr, [x0]
	ldr	x0, [sp, 56]
	b	.L3
.L9:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L4:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	blt	.L12
	ldrsw	x0, [sp, 52]
	mov	x2, x0
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 56]
	bl	strncpy
	str	wzr, [sp, 44]
	b	.L13
.L14:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 44]
	sub	w0, w1, w0
	sxtw	x0, w0
	sub	x0, x0, #1
	ldr	x1, [sp, 24]
	add	x1, x1, x0
	ldr	w2, [sp, 52]
	ldr	w0, [sp, 44]
	add	w0, w2, w0
	sxtw	x0, w0
	ldr	x2, [sp, 56]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L13:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	blt	.L14
	ldr	w0, [sp, 52]
	lsl	w0, w0, 1
	sxtw	x0, w0
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	strb	wzr, [x0]
	ldr	x0, [sp, 56]
.L3:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	""
	.align	3
.LC1:
	.string	"problem11.c"
	.align	3
.LC2:
	.string	"strcmp(palindrome, \"\") == 0"
	.align	3
.LC3:
	.string	"x"
	.align	3
.LC4:
	.string	"strcmp(palindrome, \"x\") == 0"
	.align	3
.LC5:
	.string	"xyz"
	.align	3
.LC6:
	.string	"xyzyx"
	.align	3
.LC7:
	.string	"strcmp(palindrome, \"xyzyx\") == 0"
	.align	3
.LC8:
	.string	"xyx"
	.align	3
.LC9:
	.string	"strcmp(palindrome, \"xyx\") == 0"
	.align	3
.LC10:
	.string	"jerry"
	.align	3
.LC11:
	.string	"jerryrrej"
	.align	3
.LC12:
	.string	"strcmp(palindrome, \"jerryrrej\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	func0
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 49
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L16:
	ldr	x0, [sp, 24]
	bl	free
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	func0
	str	x0, [sp, 24]
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	ldr	x0, [sp, 24]
	bl	strcmp
	cmp	w0, 0
	beq	.L17
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 54
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L17:
	ldr	x0, [sp, 24]
	bl	free
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	func0
	str	x0, [sp, 24]
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	ldr	x0, [sp, 24]
	bl	strcmp
	cmp	w0, 0
	beq	.L18
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 59
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L18:
	ldr	x0, [sp, 24]
	bl	free
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	func0
	str	x0, [sp, 24]
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	ldr	x0, [sp, 24]
	bl	strcmp
	cmp	w0, 0
	beq	.L19
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 64
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L19:
	ldr	x0, [sp, 24]
	bl	free
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	func0
	str	x0, [sp, 24]
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	ldr	x0, [sp, 24]
	bl	strcmp
	cmp	w0, 0
	beq	.L20
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 69
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	__assert_fail
.L20:
	ldr	x0, [sp, 24]
	bl	free
	mov	w0, 0
	ldp	x29, x30, [sp], 32
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
