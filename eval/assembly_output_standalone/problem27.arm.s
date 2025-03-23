	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	x2, [sp, 24]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	bl	malloc
	str	x0, [sp, 104]
	ldrsw	x0, [sp, 36]
	mov	x1, 4
	bl	calloc
	str	x0, [sp, 112]
	ldrsw	x0, [sp, 36]
	mov	x1, 4
	bl	calloc
	str	x0, [sp, 120]
	str	wzr, [sp, 52]
	str	wzr, [sp, 56]
	str	wzr, [sp, 60]
	str	wzr, [sp, 64]
	b	.L2
.L14:
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 100]
	str	wzr, [sp, 68]
	str	wzr, [sp, 72]
	b	.L3
.L6:
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	ldr	x1, [sp, 120]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 100]
	cmp	w1, w0
	bne	.L4
	mov	w0, 1
	str	w0, [sp, 68]
	b	.L5
.L4:
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
.L3:
	ldr	w1, [sp, 72]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	blt	.L6
.L5:
	ldr	w0, [sp, 68]
	cmp	w0, 0
	bne	.L23
	str	wzr, [sp, 76]
	str	wzr, [sp, 80]
	b	.L9
.L12:
	ldrsw	x0, [sp, 80]
	lsl	x0, x0, 2
	ldr	x1, [sp, 112]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 100]
	cmp	w1, w0
	bne	.L10
	mov	w0, 1
	str	w0, [sp, 76]
	b	.L11
.L10:
	ldr	w0, [sp, 80]
	add	w0, w0, 1
	str	w0, [sp, 80]
.L9:
	ldr	w1, [sp, 80]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	blt	.L12
.L11:
	ldr	w0, [sp, 76]
	cmp	w0, 0
	beq	.L13
	ldr	w0, [sp, 56]
	add	w1, w0, 1
	str	w1, [sp, 56]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 120]
	add	x0, x1, x0
	ldr	w1, [sp, 100]
	str	w1, [x0]
	b	.L8
.L13:
	ldr	w0, [sp, 52]
	add	w1, w0, 1
	str	w1, [sp, 52]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 112]
	add	x0, x1, x0
	ldr	w1, [sp, 100]
	str	w1, [x0]
	b	.L8
.L23:
	nop
.L8:
	ldr	w0, [sp, 64]
	add	w0, w0, 1
	str	w0, [sp, 64]
.L2:
	ldr	w1, [sp, 64]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L14
	str	wzr, [sp, 84]
	b	.L15
.L21:
	ldrsw	x0, [sp, 84]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 96]
	str	wzr, [sp, 88]
	str	wzr, [sp, 92]
	b	.L16
.L19:
	ldrsw	x0, [sp, 92]
	lsl	x0, x0, 2
	ldr	x1, [sp, 120]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 96]
	cmp	w1, w0
	bne	.L17
	mov	w0, 1
	str	w0, [sp, 88]
	b	.L18
.L17:
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
.L16:
	ldr	w1, [sp, 92]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	blt	.L19
.L18:
	ldr	w0, [sp, 88]
	cmp	w0, 0
	bne	.L20
	ldr	w0, [sp, 60]
	add	w1, w0, 1
	str	w1, [sp, 60]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 104]
	add	x0, x1, x0
	ldr	w1, [sp, 96]
	str	w1, [x0]
.L20:
	ldr	w0, [sp, 84]
	add	w0, w0, 1
	str	w0, [sp, 84]
.L15:
	ldr	w1, [sp, 84]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L21
	ldr	x0, [sp, 24]
	ldr	w1, [sp, 60]
	str	w1, [x0]
	ldr	x0, [sp, 112]
	bl	free
	ldr	x0, [sp, 120]
	bl	free
	ldr	x0, [sp, 104]
	ldp	x29, x30, [sp], 128
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
