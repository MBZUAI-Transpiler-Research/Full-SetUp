	.arch armv8-a
	.file	"code.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"NO"
	.align	3
.LC1:
	.string	"YES"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	str	w2, [sp, 4]
	str	w3, [sp]
	ldr	w0, [sp, 12]
	ldr	w2, [sp, 4]
	ldr	w1, [sp, 4]
	cmp	w2, w0
	csel	w0, w1, w0, ge
	str	w0, [sp, 20]
	ldr	w0, [sp, 8]
	ldr	w2, [sp]
	ldr	w1, [sp]
	cmp	w2, w0
	csel	w0, w1, w0, le
	str	w0, [sp, 24]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 20]
	sub	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bgt	.L2
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	b	.L3
.L2:
	mov	w0, 2
	str	w0, [sp, 16]
	b	.L4
.L6:
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 16]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 16]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L5
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	b	.L3
.L5:
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 16]
.L4:
	ldr	w0, [sp, 16]
	mul	w0, w0, w0
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bge	.L6
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
.L3:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
