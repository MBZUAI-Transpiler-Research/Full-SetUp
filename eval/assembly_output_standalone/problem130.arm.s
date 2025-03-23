	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	w2, [sp, 32]
	str	x3, [sp, 24]
	str	wzr, [sp, 52]
	b	.L2
.L6:
	str	wzr, [sp, 56]
	b	.L3
.L5:
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 1
	bne	.L4
	ldr	w0, [sp, 52]
	str	w0, [sp, 60]
	ldr	w0, [sp, 56]
	str	w0, [sp, 64]
.L4:
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L3:
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L5
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L2:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L6
	ldr	w0, [sp, 36]
	mul	w0, w0, w0
	str	w0, [sp, 68]
	ldr	w0, [sp, 60]
	cmp	w0, 0
	ble	.L7
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	sub	x0, x0, #8
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 68]
	cmp	w1, w0
	ble	.L7
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	sub	x0, x0, #8
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 68]
.L7:
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	ldr	w1, [sp, 60]
	cmp	w1, w0
	bge	.L8
	ldrsw	x0, [sp, 60]
	add	x0, x0, 1
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 68]
	cmp	w1, w0
	ble	.L8
	ldrsw	x0, [sp, 60]
	add	x0, x0, 1
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 68]
.L8:
	ldr	w0, [sp, 64]
	cmp	w0, 0
	ble	.L9
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 68]
	cmp	w1, w0
	ble	.L9
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 68]
.L9:
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	ldr	w1, [sp, 64]
	cmp	w1, w0
	bge	.L10
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 64]
	add	x0, x0, 1
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 68]
	cmp	w1, w0
	ble	.L10
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 64]
	add	x0, x0, 1
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 68]
.L10:
	ldr	x0, [sp, 24]
	ldr	w1, [sp, 32]
	str	w1, [x0]
	ldrsw	x0, [sp, 32]
	lsl	x0, x0, 2
	bl	malloc
	str	x0, [sp, 72]
	str	wzr, [sp, 52]
	b	.L11
.L14:
	ldr	w0, [sp, 52]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L12
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	mov	w1, 1
	str	w1, [x0]
	b	.L13
.L12:
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	w1, [sp, 68]
	str	w1, [x0]
.L13:
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L11:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	blt	.L14
	ldr	x0, [sp, 72]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
