	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	x2, [sp, 24]
	ldr	x0, [sp, 24]
	str	wzr, [x0]
	str	wzr, [sp, 56]
	b	.L2
.L4:
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	strlen
	and	x0, x0, 1
	cmp	x0, 0
	bne	.L3
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	ldr	x1, [x1]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	add	w1, w0, 1
	ldr	x0, [sp, 24]
	str	w1, [x0]
.L3:
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L2:
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L4
	str	wzr, [sp, 56]
	b	.L5
.L10:
	str	wzr, [sp, 60]
	b	.L6
.L9:
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	strlen
	str	x0, [sp, 72]
	ldrsw	x0, [sp, 60]
	add	x0, x0, 1
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	strlen
	str	x0, [sp, 80]
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 80]
	cmp	x1, x0
	bhi	.L7
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 80]
	cmp	x1, x0
	bne	.L8
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x2, [x0]
	ldrsw	x0, [sp, 60]
	add	x0, x0, 1
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x1, x0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	ble	.L8
.L7:
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x0, [x0]
	str	x0, [sp, 88]
	ldrsw	x0, [sp, 60]
	add	x0, x0, 1
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	ldr	x1, [x1]
	str	x1, [x0]
	ldrsw	x0, [sp, 60]
	add	x0, x0, 1
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [sp, 88]
	str	x1, [x0]
.L8:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L6:
	ldr	x0, [sp, 24]
	ldr	w1, [x0]
	ldr	w0, [sp, 56]
	sub	w0, w1, w0
	sub	w0, w0, #1
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L9
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L5:
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	sub	w0, w0, #1
	ldr	w1, [sp, 56]
	cmp	w1, w0
	blt	.L10
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [sp, 64]
	str	wzr, [sp, 56]
	b	.L11
.L12:
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 3
	ldr	x2, [sp, 64]
	add	x0, x2, x0
	ldr	x1, [x1]
	str	x1, [x0]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L11:
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	ldr	w1, [sp, 56]
	cmp	w1, w0
	blt	.L12
	ldr	x0, [sp, 64]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
