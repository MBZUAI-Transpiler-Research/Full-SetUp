	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	w0, [sp, 12]
	mov	w0, 1
	str	w0, [sp, 24]
	mov	w0, 2
	str	w0, [sp, 28]
	str	wzr, [sp, 32]
	b	.L2
.L9:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	str	w0, [sp, 44]
	ldr	w0, [sp, 28]
	str	w0, [sp, 24]
	ldr	w0, [sp, 44]
	str	w0, [sp, 28]
	mov	w0, 1
	str	w0, [sp, 36]
	mov	w0, 2
	str	w0, [sp, 40]
	b	.L3
.L6:
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 40]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 40]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L4
	str	wzr, [sp, 36]
	b	.L5
.L4:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L3:
	ldr	w0, [sp, 40]
	mul	w0, w0, w0
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bge	.L6
.L5:
	ldr	w0, [sp, 36]
	cmp	w0, 0
	beq	.L7
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
.L7:
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	bne	.L2
	ldr	w0, [sp, 24]
	b	.L8
.L2:
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	blt	.L9
	mov	w0, 0
.L8:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
