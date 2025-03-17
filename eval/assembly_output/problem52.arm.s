	.arch armv8-a
	.file	"problem52.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"AEIOUaeiou"
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
	str	x0, [sp, 24]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	str	x0, [sp, 40]
	ldr	x0, [sp, 24]
	str	x0, [sp, 32]
	b	.L2
.L4:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	x0, [sp, 40]
	bl	strchr
	cmp	x0, 0
	bne	.L3
	ldr	x0, [sp, 32]
	add	x1, x0, 1
	str	x1, [sp, 32]
	ldr	x1, [sp, 24]
	ldrb	w1, [x1]
	strb	w1, [x0]
.L3:
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
.L2:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L4
	ldr	x0, [sp, 32]
	strb	wzr, [x0]
	nop
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
	.string	"problem52.c"
	.align	3
.LC2:
	.string	"strcmp(test1, \"\") == 0"
	.align	3
.LC4:
	.string	"bcdf\nghjklm"
	.align	3
.LC5:
	.string	"strcmp(test2, \"bcdf\\nghjklm\") == 0"
	.align	3
.LC7:
	.string	"fdcb"
	.align	3
.LC8:
	.string	"strcmp(test3, \"fdcb\") == 0"
	.align	3
.LC10:
	.string	"strcmp(test4, \"\") == 0"
	.align	3
.LC12:
	.string	"cB"
	.align	3
.LC13:
	.string	"strcmp(test5, \"cB\") == 0"
	.align	3
.LC15:
	.string	"strcmp(test6, \"cB\") == 0"
	.align	3
.LC16:
	.string	"ybcd"
	.align	3
.LC17:
	.string	"strcmp(test7, \"ybcd\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	strb	wzr, [sp, 8]
	add	x0, sp, 8
	bl	func0
	ldrb	w0, [sp, 8]
	cmp	w0, 0
	beq	.L6
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 26
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L6:
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	add	x0, sp, 56
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	x1, [x1, 7]
	str	x1, [x0, 7]
	add	x0, sp, 56
	bl	func0
	add	x2, sp, 56
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L7
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 30
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L7:
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	add	x0, sp, 48
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 3]
	str	w1, [x0, 3]
	add	x0, sp, 48
	bl	func0
	add	x2, sp, 48
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L8
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 34
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L8:
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	add	x0, sp, 24
	ldr	w2, [x1]
	str	w2, [x0]
	ldrh	w1, [x1, 4]
	strh	w1, [x0, 4]
	add	x0, sp, 24
	bl	func0
	ldrb	w0, [sp, 24]
	cmp	w0, 0
	beq	.L9
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 38
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L9:
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	add	x0, sp, 32
	ldr	w2, [x1]
	str	w2, [x0]
	ldrh	w1, [x1, 4]
	strh	w1, [x0, 4]
	add	x0, sp, 32
	bl	func0
	add	x2, sp, 32
	adrp	x0, .LC12
	add	x1, x0, :lo12:.LC12
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L10
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 42
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	__assert_fail
.L10:
	adrp	x0, .LC14
	add	x1, x0, :lo12:.LC14
	add	x0, sp, 40
	ldr	w2, [x1]
	str	w2, [x0]
	ldrh	w1, [x1, 4]
	strh	w1, [x0, 4]
	add	x0, sp, 40
	bl	func0
	add	x2, sp, 40
	adrp	x0, .LC12
	add	x1, x0, :lo12:.LC12
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L11
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 46
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	__assert_fail
.L11:
	adrp	x0, .LC16
	add	x1, x0, :lo12:.LC16
	add	x0, sp, 16
	ldr	w2, [x1]
	str	w2, [x0]
	ldrb	w1, [x1, 4]
	strb	w1, [x0, 4]
	add	x0, sp, 16
	bl	func0
	add	x2, sp, 16
	adrp	x0, .LC16
	add	x1, x0, :lo12:.LC16
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L12
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 50
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC17
	add	x0, x0, :lo12:.LC17
	bl	__assert_fail
.L12:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 72]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L14
	bl	__stack_chk_fail
.L14:
	mov	w0, w1
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 96
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC3:
	.string	"abcdef\nghijklm"
	.align	3
.LC6:
	.string	"fedcba"
	.align	3
.LC9:
	.string	"eeeee"
	.align	3
.LC11:
	.string	"acBAA"
	.align	3
.LC14:
	.string	"EcBOO"
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
