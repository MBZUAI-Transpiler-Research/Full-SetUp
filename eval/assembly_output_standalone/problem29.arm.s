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
	str	w1, [sp, 20]
	str	wzr, [sp, 44]
	str	wzr, [sp, 48]
	b	.L2
.L3:
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	strlen
	mov	w1, w0
	ldr	w0, [sp, 44]
	add	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L2:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L3
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	sxtw	x0, w0
	bl	malloc
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L4
	mov	x0, 0
	b	.L5
.L4:
	ldr	x0, [sp, 56]
	strb	wzr, [x0]
	str	wzr, [sp, 52]
	b	.L6
.L7:
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	strcat
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L6:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L7
	ldr	x0, [sp, 56]
.L5:
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
