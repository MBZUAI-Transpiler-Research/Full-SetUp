	.arch armv8-a
	.file	"code.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"**"
	.align	3
.LC1:
	.string	"*"
	.align	3
.LC2:
	.string	"//"
	.align	3
.LC3:
	.string	"+"
	.align	3
.LC4:
	.string	"-"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	w2, [sp, 28]
	str	w3, [sp, 24]
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 2
	bl	malloc
	str	x0, [sp, 80]
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 2
	bl	malloc
	str	x0, [sp, 88]
	str	wzr, [sp, 60]
	b	.L2
.L3:
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x1, x1, x0
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x2, [sp, 80]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	w1, [sp, 60]
	str	w1, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L2:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	blt	.L3
	str	wzr, [sp, 64]
	b	.L4
.L10:
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x2, [x0]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L5
	b	.L6
.L7:
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x1, x1, x0
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x2, [sp, 88]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
.L6:
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x2, [sp, 88]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	bne	.L7
	b	.L8
.L9:
	ldrsw	x0, [sp, 64]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x1, x1, x0
	ldrsw	x0, [sp, 64]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x2, [sp, 88]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
.L8:
	ldrsw	x0, [sp, 64]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 64]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x2, [sp, 88]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	bne	.L9
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 80]
	add	x0, x1, x0
	ldr	w0, [x0]
	scvtf	d0, w0
	ldrsw	x0, [sp, 64]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 80]
	add	x0, x1, x0
	ldr	w0, [x0]
	scvtf	d1, w0
	bl	pow
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 80]
	add	x0, x1, x0
	fcvtzs	w1, d0
	str	w1, [x0]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x1, x1, x0
	ldrsw	x0, [sp, 64]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x2, [sp, 88]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
.L5:
	ldr	w0, [sp, 64]
	add	w0, w0, 1
	str	w0, [sp, 64]
.L4:
	ldr	w1, [sp, 64]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L10
	str	wzr, [sp, 68]
	b	.L11
.L20:
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x2, [x0]
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L14
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x2, [x0]
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L13
	b	.L14
.L15:
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x1, x1, x0
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 2
	ldr	x2, [sp, 88]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
.L14:
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 2
	ldr	x2, [sp, 88]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	bne	.L15
	b	.L16
.L17:
	ldrsw	x0, [sp, 68]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x1, x1, x0
	ldrsw	x0, [sp, 68]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x2, [sp, 88]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
.L16:
	ldrsw	x0, [sp, 68]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 68]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x2, [sp, 88]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	bne	.L17
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x2, [x0]
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L18
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 80]
	add	x0, x1, x0
	ldr	w2, [x0]
	ldrsw	x0, [sp, 68]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 80]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 2
	ldr	x3, [sp, 88]
	add	x0, x3, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x3, [sp, 80]
	add	x0, x3, x0
	mul	w1, w2, w1
	str	w1, [x0]
	b	.L19
.L18:
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 80]
	add	x0, x1, x0
	ldr	w2, [x0]
	ldrsw	x0, [sp, 68]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 80]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 2
	ldr	x3, [sp, 88]
	add	x0, x3, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x3, [sp, 80]
	add	x0, x3, x0
	sdiv	w1, w2, w1
	str	w1, [x0]
.L19:
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x1, x1, x0
	ldrsw	x0, [sp, 68]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x2, [sp, 88]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
.L13:
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
.L11:
	ldr	w1, [sp, 68]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L20
	str	wzr, [sp, 72]
	b	.L21
.L30:
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x2, [x0]
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L24
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x2, [x0]
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L23
	b	.L24
.L25:
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x1, x1, x0
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	ldr	x2, [sp, 88]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
.L24:
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	ldr	x2, [sp, 88]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	bne	.L25
	b	.L26
.L27:
	ldrsw	x0, [sp, 72]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x1, x1, x0
	ldrsw	x0, [sp, 72]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x2, [sp, 88]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
.L26:
	ldrsw	x0, [sp, 72]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 72]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x2, [sp, 88]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	bne	.L27
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x2, [x0]
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L28
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 80]
	add	x0, x1, x0
	ldr	w2, [x0]
	ldrsw	x0, [sp, 72]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 80]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	ldr	x3, [sp, 88]
	add	x0, x3, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x3, [sp, 80]
	add	x0, x3, x0
	add	w1, w2, w1
	str	w1, [x0]
	b	.L29
.L28:
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 80]
	add	x0, x1, x0
	ldr	w2, [x0]
	ldrsw	x0, [sp, 72]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 80]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	ldr	x3, [sp, 88]
	add	x0, x3, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x3, [sp, 80]
	add	x0, x3, x0
	sub	w1, w2, w1
	str	w1, [x0]
.L29:
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x1, x1, x0
	ldrsw	x0, [sp, 72]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x2, [sp, 88]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
.L23:
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
.L21:
	ldr	w1, [sp, 72]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L30
	ldr	x0, [sp, 80]
	ldr	w0, [x0]
	str	w0, [sp, 76]
	ldr	x0, [sp, 80]
	bl	free
	ldr	x0, [sp, 88]
	bl	free
	ldr	w0, [sp, 76]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
