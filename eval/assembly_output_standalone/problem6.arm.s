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
	str	w2, [sp, 32]
	str	x3, [sp, 24]
	ldr	w0, [sp, 36]
	cmp	w0, 0
	ble	.L2
	ldr	w0, [sp, 36]
	lsl	w0, w0, 1
	sub	w0, w0, #1
	b	.L3
.L2:
	mov	w0, 0
.L3:
	ldr	x1, [sp, 24]
	str	w0, [x1]
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	bl	malloc
	str	x0, [sp, 56]
	ldr	w0, [sp, 36]
	cmp	w0, 0
	ble	.L4
	ldr	x0, [sp, 40]
	ldr	w1, [x0]
	ldr	x0, [sp, 56]
	str	w1, [x0]
.L4:
	mov	w0, 1
	str	w0, [sp, 48]
	mov	w0, 1
	str	w0, [sp, 52]
	b	.L5
.L6:
	ldr	w0, [sp, 52]
	add	w1, w0, 1
	str	w1, [sp, 52]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w1, [sp, 32]
	str	w1, [x0]
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldr	w0, [sp, 52]
	add	w2, w0, 1
	str	w2, [sp, 52]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x2, [sp, 56]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L5:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L6
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
