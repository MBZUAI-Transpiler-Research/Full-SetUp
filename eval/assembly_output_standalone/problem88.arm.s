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
	str	x19, [sp, 16]
	.cfi_offset 19, -80
	str	x0, [sp, 56]
	str	w1, [sp, 52]
	str	x2, [sp, 40]
	str	w3, [sp, 48]
	str	x4, [sp, 32]
	mov	x0, 800
	bl	malloc
	str	x0, [sp, 88]
	str	wzr, [sp, 76]
	str	wzr, [sp, 80]
	b	.L2
.L6:
	ldrsw	x0, [sp, 80]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w0, [x0]
	sub	w0, w0, #1
	str	w0, [sp, 84]
	b	.L3
.L5:
	ldrsw	x0, [sp, 80]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 84]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 48]
	cmp	w1, w0
	bne	.L4
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	ldr	x1, [sp, 88]
	add	x19, x1, x0
	mov	x0, 8
	bl	malloc
	str	x0, [x19]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	w1, [sp, 80]
	str	w1, [x0]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	x0, [x0]
	add	x0, x0, 4
	ldr	w1, [sp, 84]
	str	w1, [x0]
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
.L4:
	ldr	w0, [sp, 84]
	sub	w0, w0, #1
	str	w0, [sp, 84]
.L3:
	ldr	w0, [sp, 84]
	cmp	w0, 0
	bge	.L5
	ldr	w0, [sp, 80]
	add	w0, w0, 1
	str	w0, [sp, 80]
.L2:
	ldr	w1, [sp, 80]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	blt	.L6
	ldr	x0, [sp, 32]
	ldr	w1, [sp, 76]
	str	w1, [x0]
	ldr	x0, [sp, 88]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
