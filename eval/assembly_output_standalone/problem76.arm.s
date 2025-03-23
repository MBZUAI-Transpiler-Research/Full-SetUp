	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	cmp	w0, 1
	bgt	.L2
	mov	w0, 0
	b	.L3
.L2:
	str	wzr, [sp, 24]
	mov	w0, 2
	str	w0, [sp, 28]
	b	.L4
.L6:
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 28]
	sdiv	w0, w1, w0
	str	w0, [sp, 12]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L5:
	ldr	w0, [sp, 12]
	ldr	w1, [sp, 28]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 28]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	beq	.L6
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L4:
	ldr	w0, [sp, 28]
	mul	w0, w0, w0
	ldr	w1, [sp, 12]
	cmp	w1, w0
	bge	.L5
	ldr	w0, [sp, 12]
	cmp	w0, 1
	ble	.L8
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L8:
	ldr	w0, [sp, 24]
	cmp	w0, 3
	cset	w0, eq
	and	w0, w0, 255
.L3:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
