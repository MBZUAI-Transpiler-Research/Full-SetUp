	.arch armv8-a
	.file	"problem144.c"
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
	str	x1, [sp, 16]
	str	wzr, [sp, 60]
	str	wzr, [sp, 44]
	str	wzr, [sp, 48]
	str	wzr, [sp, 52]
	b	.L2
.L13:
	ldrsw	x0, [sp, 52]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 32
	beq	.L3
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	b	.L4
.L3:
	ldr	w0, [sp, 44]
	cmp	w0, 1
	ble	.L5
	mov	w0, 1
	strb	w0, [sp, 43]
	mov	w0, 2
	str	w0, [sp, 56]
	b	.L6
.L9:
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 56]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 56]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L7
	strb	wzr, [sp, 43]
	b	.L10
.L7:
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L6:
	ldr	w0, [sp, 56]
	mul	w0, w0, w0
	ldr	w1, [sp, 44]
	cmp	w1, w0
	bge	.L9
	b	.L10
.L5:
	strb	wzr, [sp, 43]
.L10:
	ldrb	w0, [sp, 43]
	cmp	w0, 0
	beq	.L11
	ldr	w0, [sp, 48]
	cmp	w0, 0
	ble	.L12
	ldr	w0, [sp, 48]
	add	w1, w0, 1
	str	w1, [sp, 48]
	sxtw	x0, w0
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	mov	w1, 32
	strb	w1, [x0]
.L12:
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 16]
	add	x3, x1, x0
	ldrsw	x1, [sp, 52]
	ldrsw	x0, [sp, 44]
	sub	x0, x1, x0
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrsw	x1, [sp, 44]
	mov	x2, x1
	mov	x1, x0
	mov	x0, x3
	bl	memcpy
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 44]
	add	w0, w1, w0
	str	w0, [sp, 48]
.L11:
	str	wzr, [sp, 44]
.L4:
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L2:
	ldrsw	x0, [sp, 52]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L13
	ldr	w0, [sp, 44]
	cmp	w0, 1
	ble	.L14
	mov	w0, 1
	strb	w0, [sp, 43]
	mov	w0, 2
	str	w0, [sp, 56]
	b	.L15
.L18:
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 56]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 56]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L16
	strb	wzr, [sp, 43]
	b	.L19
.L16:
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L15:
	ldr	w0, [sp, 56]
	mul	w0, w0, w0
	ldr	w1, [sp, 44]
	cmp	w1, w0
	bge	.L18
	b	.L19
.L14:
	strb	wzr, [sp, 43]
.L19:
	ldrb	w0, [sp, 43]
	cmp	w0, 0
	beq	.L20
	ldr	w0, [sp, 48]
	cmp	w0, 0
	ble	.L21
	ldr	w0, [sp, 48]
	add	w1, w0, 1
	str	w1, [sp, 48]
	sxtw	x0, w0
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	mov	w1, 32
	strb	w1, [x0]
.L21:
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 16]
	add	x3, x1, x0
	ldrsw	x1, [sp, 52]
	ldrsw	x0, [sp, 44]
	sub	x0, x1, x0
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrsw	x1, [sp, 44]
	mov	x2, x1
	mov	x1, x0
	mov	x0, x3
	bl	memcpy
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 44]
	add	w0, w1, w0
	str	w0, [sp, 48]
.L20:
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	strb	wzr, [x0]
	nop
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
.LC0:
	.string	"This is a test"
	.align	3
.LC1:
	.string	"is"
	.align	3
.LC2:
	.string	"problem144.c"
	.align	3
.LC3:
	.string	"strcmp(output, \"is\") == 0"
	.align	3
.LC4:
	.string	"lets go for swimming"
	.align	3
.LC5:
	.string	"go for"
	.align	3
.LC6:
	.string	"strcmp(output, \"go for\") == 0"
	.align	3
.LC7:
	.string	"there is no place available here"
	.align	3
.LC8:
	.string	"there is no place"
	.align	3
.LC9:
	.string	"strcmp(output, \"there is no place\") == 0"
	.align	3
.LC10:
	.string	"Hi I am Hussein"
	.align	3
.LC11:
	.string	"Hi am Hussein"
	.align	3
.LC12:
	.string	"strcmp(output, \"Hi am Hussein\") == 0"
	.align	3
.LC13:
	.string	"go for it"
	.align	3
.LC14:
	.string	"strcmp(output, \"go for it\") == 0"
	.align	3
.LC15:
	.string	"here"
	.align	3
.LC16:
	.string	"strcmp(output, \"\") == 0"
	.align	3
.LC17:
	.string	"here is"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 120]
	mov	x1, 0
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	func0
	add	x2, sp, 16
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L23
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 70
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L23:
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	func0
	add	x2, sp, 16
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L24
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 73
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L24:
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	func0
	add	x2, sp, 16
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L25
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 76
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L25:
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	func0
	add	x2, sp, 16
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L26
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 79
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	__assert_fail
.L26:
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	func0
	add	x2, sp, 16
	adrp	x0, .LC13
	add	x1, x0, :lo12:.LC13
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L27
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 82
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	__assert_fail
.L27:
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	func0
	ldrb	w0, [sp, 16]
	cmp	w0, 0
	beq	.L28
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 85
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	__assert_fail
.L28:
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC17
	add	x0, x0, :lo12:.LC17
	bl	func0
	add	x2, sp, 16
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L29
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 88
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L29:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 120]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L31
	bl	__stack_chk_fail
.L31:
	mov	w0, w1
	ldp	x29, x30, [sp], 128
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
