	.arch armv8-a
	.file	"problem66.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, 96]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 96
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 88]
	mov	x1, 0
	ldr	w2, [sp, 12]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, xs.1
	add	x0, x0, :lo12:xs.1
	bl	sprintf
	adrp	x0, xs.1
	add	x0, x0, :lo12:xs.1
	bl	strlen
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	bge	.L2
	str	wzr, [sp, 24]
	b	.L3
.L4:
	adrp	x0, xs.1
	add	x1, x0, :lo12:xs.1
	ldrsw	x0, [sp, 24]
	ldrb	w0, [x1, x0]
	strb	w0, [sp, 23]
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	ldr	w0, [sp, 24]
	sub	w2, w1, w0
	adrp	x0, xs.1
	add	x1, x0, :lo12:xs.1
	sxtw	x0, w2
	ldrb	w2, [x1, x0]
	adrp	x0, xs.1
	add	x1, x0, :lo12:xs.1
	ldrsw	x0, [sp, 24]
	strb	w2, [x1, x0]
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	ldr	w0, [sp, 24]
	sub	w2, w1, w0
	adrp	x0, xs.1
	add	x1, x0, :lo12:xs.1
	sxtw	x0, w2
	ldrb	w2, [sp, 23]
	strb	w2, [x1, x0]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L3:
	ldr	w0, [sp, 28]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 24]
	cmp	w0, w1
	blt	.L4
	b	.L5
.L2:
	ldrsw	x1, [sp, 28]
	ldrsw	x0, [sp, 8]
	sub	x1, x1, x0
	adrp	x0, xs.1
	add	x0, x0, :lo12:xs.1
	add	x1, x1, x0
	add	x0, sp, 32
	bl	strcpy
	ldrsw	x0, [sp, 8]
	add	x1, sp, 32
	strb	wzr, [x1, x0]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 8]
	sub	w0, w1, w0
	sxtw	x0, w0
	add	x3, sp, 32
	mov	x2, x0
	adrp	x0, xs.1
	add	x1, x0, :lo12:xs.1
	mov	x0, x3
	bl	strncat
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, xs.1
	add	x0, x0, :lo12:xs.1
	bl	strcpy
.L5:
	adrp	x0, xs.1
	add	x0, x0, :lo12:xs.1
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 88]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L7
	bl	__stack_chk_fail
.L7:
	mov	x0, x1
	ldp	x29, x30, [sp, 96]
	add	sp, sp, 112
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC1:
	.string	"001"
	.align	3
.LC2:
	.string	"problem66.c"
	.align	3
.LC3:
	.string	"strcmp(func0(100, 2), \"001\") == 0"
	.align	3
.LC4:
	.string	"12"
	.align	3
.LC5:
	.string	"strcmp(func0(12, 2), \"12\") == 0"
	.align	3
.LC6:
	.string	"79"
	.align	3
.LC7:
	.string	"strcmp(func0(97, 8), \"79\") == 0"
	.align	3
.LC8:
	.string	"21"
	.align	3
.LC9:
	.string	"strcmp(func0(12, 1), \"21\") == 0"
	.align	3
.LC10:
	.string	"11"
	.align	3
.LC11:
	.string	"strcmp(func0(11, 101), \"11\") == 0"
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
	mov	w1, 2
	mov	w0, 100
	bl	func0
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L9
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 33
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L9:
	mov	w1, 2
	mov	w0, 12
	bl	func0
	mov	x2, x0
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L10
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 34
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L10:
	mov	w1, 8
	mov	w0, 97
	bl	func0
	mov	x2, x0
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L11
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 35
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L11:
	mov	w1, 1
	mov	w0, 12
	bl	func0
	mov	x2, x0
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L12
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 36
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L12:
	mov	w1, 101
	mov	w0, 11
	bl	func0
	mov	x2, x0
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 37
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	__assert_fail
.L13:
	mov	w0, 0
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.local	xs.1
	.comm	xs.1,50,8
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
