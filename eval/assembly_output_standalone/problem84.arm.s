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
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	cmp	w0, 0
	bgt	.L2
	mov	w0, 0
	b	.L3
.L2:
	ldr	w0, [sp, 12]
	cmp	w0, 1
	bne	.L4
	mov	w0, 1
	b	.L3
.L4:
	mov	w0, 18
	str	w0, [sp, 24]
	mov	w0, 2
	str	w0, [sp, 28]
	b	.L5
.L6:
	ldr	w1, [sp, 24]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L5:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	blt	.L6
	ldr	w0, [sp, 24]
.L3:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
