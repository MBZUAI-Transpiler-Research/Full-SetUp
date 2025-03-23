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
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	strlen
	str	w0, [sp, 48]
	ldr	x0, [sp, 16]
	bl	strlen
	str	w0, [sp, 52]
	ldr	w0, [sp, 52]
	lsl	w0, w0, 1
	add	w0, w0, 1
	sxtw	x0, w0
	bl	malloc
	str	x0, [sp, 56]
	str	wzr, [sp, 44]
	b	.L2
.L5:
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 16]
	add	x3, x1, x0
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 44]
	sub	w0, w1, w0
	sxtw	x0, w0
	mov	x2, x0
	mov	x1, x3
	ldr	x0, [sp, 56]
	bl	strncpy
	ldrsw	x1, [sp, 52]
	ldrsw	x0, [sp, 44]
	sub	x0, x1, x0
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldrsw	x1, [sp, 44]
	mov	x2, x1
	ldr	x1, [sp, 16]
	bl	strncpy
	ldrsw	x0, [sp, 52]
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	strb	wzr, [x0]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 24]
	bl	strstr
	cmp	x0, 0
	beq	.L3
	ldr	x0, [sp, 56]
	bl	free
	mov	w0, 1
	b	.L4
.L3:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L2:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	blt	.L5
	ldr	x0, [sp, 56]
	bl	free
	mov	w0, 0
.L4:
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
