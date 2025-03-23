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
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	ldr	x0, [sp, 24]
	bl	strlen
	str	w0, [sp, 60]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	bl	malloc
	mov	x1, x0
	ldr	x0, [sp, 16]
	str	x1, [x0]
	str	wzr, [sp, 52]
	str	wzr, [sp, 56]
	b	.L2
.L4:
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldrsw	x1, [sp, 60]
	mov	x2, x1
	ldr	x1, [sp, 24]
	bl	strncmp
	cmp	w0, 0
	bne	.L3
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldr	x0, [sp, 16]
	ldr	x2, [x0]
	ldr	w0, [sp, 52]
	add	w3, w0, 1
	str	w3, [sp, 52]
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x0, x2, x0
	ldr	x1, [x1]
	str	x1, [x0]
.L3:
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L2:
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L4
	ldr	w0, [sp, 52]
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
