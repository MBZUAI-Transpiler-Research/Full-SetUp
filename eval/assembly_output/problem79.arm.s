	.arch armv8-a
	.file	"problem79.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"2357BD"
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
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	str	x0, [sp, 56]
	str	wzr, [sp, 48]
	str	wzr, [sp, 52]
	b	.L2
.L4:
	ldrsw	x0, [sp, 52]
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	x0, [sp, 56]
	bl	strchr
	cmp	x0, 0
	beq	.L3
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L3:
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L2:
	ldrsw	x19, [sp, 52]
	ldr	x0, [sp, 40]
	bl	strlen
	cmp	x19, x0
	bcc	.L4
	ldr	w0, [sp, 48]
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
.LC1:
	.string	"AB"
	.align	3
.LC2:
	.string	"problem79.c"
	.align	3
.LC3:
	.string	"func0(\"AB\") == 1"
	.align	3
.LC4:
	.string	"1077E"
	.align	3
.LC5:
	.string	"func0(\"1077E\") == 2"
	.align	3
.LC6:
	.string	"ABED1A33"
	.align	3
.LC7:
	.string	"func0(\"ABED1A33\") == 4"
	.align	3
.LC8:
	.string	"2020"
	.align	3
.LC9:
	.string	"func0(\"2020\") == 2"
	.align	3
.LC10:
	.string	"123456789ABCDEF0"
	.align	3
.LC11:
	.string	"func0(\"123456789ABCDEF0\") == 6"
	.align	3
.LC12:
	.string	"112233445566778899AABBCCDDEEFF00"
	.align	3
.LC13:
	.string	"func0(\"112233445566778899AABBCCDDEEFF00\") == 12"
	.align	3
.LC14:
	.string	""
	.align	3
.LC15:
	.string	"func0(\"\") == 0"
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
	cmp	w0, 1
	beq	.L7
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 18
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L7:
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	func0
	cmp	w0, 2
	beq	.L8
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 19
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L8:
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	func0
	cmp	w0, 4
	beq	.L9
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 20
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L9:
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	func0
	cmp	w0, 2
	beq	.L10
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 21
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L10:
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	func0
	cmp	w0, 6
	beq	.L11
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 22
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	__assert_fail
.L11:
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	func0
	cmp	w0, 12
	beq	.L12
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 23
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	__assert_fail
.L12:
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	func0
	cmp	w0, 0
	beq	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 24
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	__assert_fail
.L13:
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
