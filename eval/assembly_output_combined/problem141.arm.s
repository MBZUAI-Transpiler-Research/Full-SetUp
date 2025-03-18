	.arch armv8-a
	.file	"problem141.c"
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
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	wzr, [sp, 52]
	str	wzr, [sp, 56]
	str	wzr, [sp, 60]
	b	.L2
.L8:
	ldrsw	x0, [sp, 60]
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 32
	bne	.L3
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
	b	.L4
.L3:
	ldr	w0, [sp, 52]
	cmp	w0, 1
	bne	.L5
	ldr	w0, [sp, 56]
	add	w1, w0, 1
	str	w1, [sp, 56]
	sxtw	x0, w0
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	mov	w1, 95
	strb	w1, [x0]
.L5:
	ldr	w0, [sp, 52]
	cmp	w0, 2
	bne	.L6
	ldr	w0, [sp, 56]
	add	w1, w0, 1
	str	w1, [sp, 56]
	sxtw	x0, w0
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	mov	w1, 95
	strb	w1, [x0]
	ldr	w0, [sp, 56]
	add	w1, w0, 1
	str	w1, [sp, 56]
	sxtw	x0, w0
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	mov	w1, 95
	strb	w1, [x0]
.L6:
	ldr	w0, [sp, 52]
	cmp	w0, 2
	ble	.L7
	ldr	w0, [sp, 56]
	add	w1, w0, 1
	str	w1, [sp, 56]
	sxtw	x0, w0
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	mov	w1, 45
	strb	w1, [x0]
.L7:
	str	wzr, [sp, 52]
	ldrsw	x0, [sp, 60]
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldr	w0, [sp, 56]
	add	w2, w0, 1
	str	w2, [sp, 56]
	sxtw	x0, w0
	ldr	x2, [sp, 32]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
.L4:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L2:
	ldrsw	x19, [sp, 60]
	ldr	x0, [sp, 40]
	bl	strlen
	cmp	x19, x0
	bcc	.L8
	ldr	w0, [sp, 52]
	cmp	w0, 1
	bne	.L9
	ldr	w0, [sp, 56]
	add	w1, w0, 1
	str	w1, [sp, 56]
	sxtw	x0, w0
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	mov	w1, 95
	strb	w1, [x0]
.L9:
	ldr	w0, [sp, 52]
	cmp	w0, 2
	bne	.L10
	ldr	w0, [sp, 56]
	add	w1, w0, 1
	str	w1, [sp, 56]
	sxtw	x0, w0
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	mov	w1, 95
	strb	w1, [x0]
	ldr	w0, [sp, 56]
	add	w1, w0, 1
	str	w1, [sp, 56]
	sxtw	x0, w0
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	mov	w1, 95
	strb	w1, [x0]
.L10:
	ldr	w0, [sp, 52]
	cmp	w0, 2
	ble	.L11
	ldr	w0, [sp, 56]
	add	w1, w0, 1
	str	w1, [sp, 56]
	sxtw	x0, w0
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	mov	w1, 45
	strb	w1, [x0]
.L11:
	ldrsw	x0, [sp, 56]
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	strb	wzr, [x0]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"Example"
	.align	3
.LC1:
	.string	"problem141.c"
	.align	3
.LC2:
	.string	"strcmp(output, \"Example\") == 0"
	.align	3
.LC3:
	.string	"Mudasir Hanif "
	.align	3
.LC4:
	.string	"Mudasir_Hanif_"
	.align	3
.LC5:
	.string	"strcmp(output, \"Mudasir_Hanif_\") == 0"
	.align	3
.LC6:
	.string	"Yellow Yellow  Dirty  Fellow"
	.align	3
.LC7:
	.string	"Yellow_Yellow__Dirty__Fellow"
	.align	3
.LC8:
	.string	"strcmp(output, \"Yellow_Yellow__Dirty__Fellow\") == 0"
	.align	3
.LC9:
	.string	"Exa   mple"
	.align	3
.LC10:
	.string	"Exa-mple"
	.align	3
.LC11:
	.string	"strcmp(output, \"Exa-mple\") == 0"
	.align	3
.LC12:
	.string	"   Exa 1 2 2 mple"
	.align	3
.LC13:
	.string	"-Exa_1_2_2_mple"
	.align	3
.LC14:
	.string	"strcmp(output, \"-Exa_1_2_2_mple\") == 0"
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
	mov	x2, sp
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 33
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L13:
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
	beq	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 36
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L14:
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
	beq	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 39
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L15:
	mov	x0, sp
	mov	x1, x0
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	func0
	mov	x2, sp
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 42
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	__assert_fail
.L16:
	mov	x0, sp
	mov	x1, x0
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	func0
	mov	x2, sp
	adrp	x0, .LC13
	add	x1, x0, :lo12:.LC13
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L17
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 45
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	__assert_fail
.L17:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 104]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L19
	bl	__stack_chk_fail
.L19:
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
