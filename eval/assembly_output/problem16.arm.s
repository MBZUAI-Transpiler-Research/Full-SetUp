	.arch armv8-a
	.file	"problem16.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	" %d"
	.align	3
.LC1:
	.string	"0"
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
	str	w0, [sp, 28]
	mov	w0, 2
	str	w0, [sp, 36]
	mov	w0, 1
	str	w0, [sp, 40]
	b	.L2
.L3:
	ldr	w3, [sp, 40]
	adrp	x0, .LC0
	add	x2, x0, :lo12:.LC0
	mov	x1, 0
	mov	x0, 0
	bl	snprintf
	mov	w1, w0
	ldr	w0, [sp, 36]
	add	w0, w0, w1
	str	w0, [sp, 36]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L2:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	ble	.L3
	ldrsw	x0, [sp, 36]
	bl	malloc
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L4
	mov	x0, 0
	b	.L5
.L4:
	ldr	x0, [sp, 56]
	str	x0, [sp, 48]
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	ldr	x0, [sp, 48]
	bl	sprintf
	sxtw	x0, w0
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	str	x0, [sp, 48]
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L6
.L7:
	ldr	w2, [sp, 44]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	ldr	x0, [sp, 48]
	bl	sprintf
	sxtw	x0, w0
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	str	x0, [sp, 48]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L6:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	ble	.L7
	ldr	x0, [sp, 56]
.L5:
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
.LC2:
	.string	"problem16.c"
	.align	3
.LC3:
	.string	"strcmp(result, \"0\") == 0"
	.align	3
.LC4:
	.string	"0 1 2 3"
	.align	3
.LC5:
	.string	"strcmp(result, \"0 1 2 3\") == 0"
	.align	3
.LC6:
	.string	"0 1 2 3 4 5 6 7 8 9 10"
	.align	3
.LC7:
	.string	"strcmp(result, \"0 1 2 3 4 5 6 7 8 9 10\") == 0"
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
	mov	w0, 0
	bl	func0
	str	x0, [sp, 24]
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	ldr	x0, [sp, 24]
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
	ldr	x0, [sp, 24]
	bl	free
	mov	w0, 3
	bl	func0
	str	x0, [sp, 24]
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	ldr	x0, [sp, 24]
	bl	strcmp
	cmp	w0, 0
	beq	.L10
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 37
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L10:
	ldr	x0, [sp, 24]
	bl	free
	mov	w0, 10
	bl	func0
	str	x0, [sp, 24]
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	ldr	x0, [sp, 24]
	bl	strcmp
	cmp	w0, 0
	beq	.L11
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 41
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
