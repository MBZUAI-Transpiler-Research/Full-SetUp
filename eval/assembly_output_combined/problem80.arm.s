	.arch armv8-a
	.file	"problem80.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"db"
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
	mov	x0, 64
	bl	malloc
	str	x0, [sp, 48]
	ldr	x0, [sp, 48]
	cmp	x0, 0
	bne	.L2
	mov	x0, 0
	b	.L3
.L2:
	mov	w0, 62
	str	w0, [sp, 36]
	ldr	x0, [sp, 48]
	add	x0, x0, 63
	strb	wzr, [x0]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L6
	ldr	w0, [sp, 36]
	sub	w1, w0, #1
	str	w1, [sp, 36]
	sxtw	x0, w0
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	mov	w1, 48
	strb	w1, [x0]
	b	.L5
.L7:
	ldr	w0, [sp, 28]
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	and	w1, w0, 255
	ldr	w0, [sp, 36]
	sub	w2, w0, #1
	str	w2, [sp, 36]
	sxtw	x0, w0
	ldr	x2, [sp, 48]
	add	x0, x2, x0
	add	w1, w1, 48
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	w0, [sp, 28]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 28]
.L6:
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bgt	.L7
.L5:
	ldr	w0, [sp, 36]
	sub	w1, w0, #1
	str	w1, [sp, 36]
	sxtw	x0, w0
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	mov	w1, 98
	strb	w1, [x0]
	ldr	w0, [sp, 36]
	sub	w1, w0, #1
	str	w1, [sp, 36]
	sxtw	x0, w0
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	mov	w1, 100
	strb	w1, [x0]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 40]
	mov	w1, 62
	ldr	w0, [sp, 40]
	sub	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	add	w0, w0, 3
	sxtw	x0, w0
	bl	malloc
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L8
	ldr	x0, [sp, 48]
	bl	free
	mov	x0, 0
	b	.L3
.L8:
	ldrsw	x0, [sp, 40]
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	strcpy
	ldr	x0, [sp, 56]
	bl	strlen
	mov	x1, x0
	ldr	x0, [sp, 56]
	add	x2, x0, x1
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	ldrh	w2, [x1]
	strh	w2, [x0]
	ldrb	w1, [x1, 2]
	strb	w1, [x0, 2]
	ldr	x0, [sp, 48]
	bl	free
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
.LC1:
	.string	"db0db"
	.align	3
.LC2:
	.string	"problem80.c"
	.align	3
.LC3:
	.string	"strcmp(binary, \"db0db\") == 0"
	.align	3
.LC4:
	.string	"db100000db"
	.align	3
.LC5:
	.string	"strcmp(binary, \"db100000db\") == 0"
	.align	3
.LC6:
	.string	"db1100111db"
	.align	3
.LC7:
	.string	"strcmp(binary, \"db1100111db\") == 0"
	.align	3
.LC8:
	.string	"db1111db"
	.align	3
.LC9:
	.string	"strcmp(binary, \"db1111db\") == 0"
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
	beq	.L10
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 52
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L10:
	ldr	x0, [sp, 24]
	bl	free
	mov	w0, 32
	bl	func0
	str	x0, [sp, 24]
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	ldr	x0, [sp, 24]
	bl	strcmp
	cmp	w0, 0
	beq	.L11
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 56
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L11:
	ldr	x0, [sp, 24]
	bl	free
	mov	w0, 103
	bl	func0
	str	x0, [sp, 24]
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	ldr	x0, [sp, 24]
	bl	strcmp
	cmp	w0, 0
	beq	.L12
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 60
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L12:
	ldr	x0, [sp, 24]
	bl	free
	mov	w0, 15
	bl	func0
	str	x0, [sp, 24]
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	ldr	x0, [sp, 24]
	bl	strcmp
	cmp	w0, 0
	beq	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 64
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L13:
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
