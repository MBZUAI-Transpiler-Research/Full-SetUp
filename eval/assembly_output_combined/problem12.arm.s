	.arch armv8-a
	.file	"problem12.c"
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
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	strlen
	str	w0, [sp, 44]
	ldr	x0, [sp, 16]
	bl	strlen
	str	w0, [sp, 48]
	ldr	w0, [sp, 44]
	ldr	w2, [sp, 48]
	ldr	w1, [sp, 48]
	cmp	w2, w0
	csel	w0, w1, w0, le
	str	w0, [sp, 52]
	ldr	w0, [sp, 52]
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
.L7:
	ldrsw	x0, [sp, 40]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldrsw	x0, [sp, 40]
	ldr	x2, [sp, 16]
	add	x0, x2, x0
	ldrb	w0, [x0]
	cmp	w1, w0
	bne	.L5
	mov	w0, 48
	b	.L6
.L5:
	mov	w0, 49
.L6:
	ldrsw	x1, [sp, 40]
	ldr	x2, [sp, 56]
	add	x1, x2, x1
	strb	w0, [x1]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L4:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	blt	.L7
	ldrsw	x0, [sp, 52]
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
	.string	"101010"
	.align	3
.LC1:
	.string	"111000"
	.align	3
.LC2:
	.string	"010010"
	.align	3
.LC3:
	.string	"problem12.c"
	.align	3
.LC4:
	.string	"strcmp(result, \"010010\") == 0"
	.align	3
.LC5:
	.string	"1"
	.align	3
.LC6:
	.string	"0"
	.align	3
.LC7:
	.string	"strcmp(result, \"0\") == 0"
	.align	3
.LC8:
	.string	"0000"
	.align	3
.LC9:
	.string	"0101"
	.align	3
.LC10:
	.string	"strcmp(result, \"0101\") == 0"
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
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	func0
	str	x0, [sp, 24]
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	ldr	x0, [sp, 24]
	bl	strcmp
	cmp	w0, 0
	beq	.L9
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 30
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L9:
	ldr	x0, [sp, 24]
	bl	free
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	func0
	str	x0, [sp, 24]
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	ldr	x0, [sp, 24]
	bl	strcmp
	cmp	w0, 0
	beq	.L10
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 34
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L10:
	ldr	x0, [sp, 24]
	bl	free
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	func0
	str	x0, [sp, 24]
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	ldr	x0, [sp, 24]
	bl	strcmp
	cmp	w0, 0
	beq	.L11
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 38
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L11:
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
