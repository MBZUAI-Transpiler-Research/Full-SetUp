	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	cmp	x0, 1
	bgt	.L2
	mov	w0, 0
	b	.L3
.L2:
	mov	x0, 2
	str	x0, [sp, 24]
	b	.L4
.L6:
	ldr	x0, [sp, 8]
	ldr	x1, [sp, 24]
	sdiv	x2, x0, x1
	ldr	x1, [sp, 24]
	mul	x1, x2, x1
	sub	x0, x0, x1
	cmp	x0, 0
	bne	.L5
	mov	w0, 0
	b	.L3
.L5:
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
.L4:
	ldr	x0, [sp, 24]
	mul	x0, x0, x0
	ldr	x1, [sp, 8]
	cmp	x1, x0
	bge	.L6
	mov	w0, 1
.L3:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
