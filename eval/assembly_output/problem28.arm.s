	.arch armv8-a
	.file	"problem28.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	strlen
	str	w0, [sp, 44]
	str	wzr, [sp, 40]
	b	.L2
.L5:
	ldrsw	x0, [sp, 40]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 39]
	ldrb	w0, [sp, 39]
	cmp	w0, 96
	bls	.L3
	ldrb	w0, [sp, 39]
	cmp	w0, 122
	bhi	.L3
	ldrb	w0, [sp, 39]
	sub	w0, w0, #32
	strb	w0, [sp, 39]
	b	.L4
.L3:
	ldrb	w0, [sp, 39]
	cmp	w0, 64
	bls	.L4
	ldrb	w0, [sp, 39]
	cmp	w0, 90
	bhi	.L4
	ldrb	w0, [sp, 39]
	add	w0, w0, 32
	strb	w0, [sp, 39]
.L4:
	ldrsw	x0, [sp, 40]
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldrb	w1, [sp, 39]
	strb	w1, [x0]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L2:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	blt	.L5
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	strb	wzr, [x0]
	nop
	ldp	x29, x30, [sp], 48
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
	.string	""
	.align	3
.LC1:
	.string	"problem28.c"
	.align	3
.LC2:
	.string	"strcmp(result, \"\") == 0"
	.align	3
.LC3:
	.string	"Hello!"
	.align	3
.LC4:
	.string	"hELLO!"
	.align	3
.LC5:
	.string	"strcmp(result, \"hELLO!\") == 0"
	.align	3
.LC6:
	.string	"These violent delights have violent ends"
	.align	3
.LC7:
	.string	"tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS"
	.align	3
.LC8:
	.string	"strcmp(result, \"tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, 112]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 112
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 104]
	mov	x1, 0
	mov	x0, sp
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	func0
	ldrb	w0, [sp]
	cmp	w0, 0
	beq	.L7
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 27
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L7:
	mov	x0, sp
	mov	x1, x0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	func0
	mov	x2, sp
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L8
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 30
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L8:
	mov	x0, sp
	mov	x1, x0
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	func0
	mov	x2, sp
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L9
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 33
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L9:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 104]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L11
	bl	__stack_chk_fail
.L11:
	mov	w0, w1
	ldp	x29, x30, [sp, 112]
	add	sp, sp, 128
	.cfi_restore 29
	.cfi_restore 30
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
