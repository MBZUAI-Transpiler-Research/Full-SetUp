	.arch armv8-a
	.file	"code.c"
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
	str	x1, [sp, 16]
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	bl	malloc
	str	x0, [sp, 56]
	ldr	x0, [sp, 16]
	str	wzr, [x0]
	mov	w0, 2
	str	w0, [sp, 40]
	b	.L2
.L9:
	mov	w0, 1
	str	w0, [sp, 48]
	str	wzr, [sp, 44]
	b	.L3
.L7:
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 52]
	ldr	w0, [sp, 52]
	mul	w0, w0, w0
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L11
	ldr	w0, [sp, 40]
	ldr	w1, [sp, 52]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 52]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L6
	str	wzr, [sp, 48]
	b	.L5
.L6:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L3:
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L7
	b	.L5
.L11:
	nop
.L5:
	ldr	w0, [sp, 48]
	cmp	w0, 0
	beq	.L8
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w1, [sp, 40]
	str	w1, [x0]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	add	w1, w0, 1
	ldr	x0, [sp, 16]
	str	w1, [x0]
.L8:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L2:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L9
	ldr	x0, [sp, 56]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
