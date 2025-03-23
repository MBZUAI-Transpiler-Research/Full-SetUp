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
	str	w3, [sp, 32]
	str	wzr, [sp, 56]
	str	wzr, [sp, 60]
	str	wzr, [sp, 52]
	b	.L2
.L3:
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	strlen
	mov	w1, w0
	ldr	w0, [sp, 56]
	add	w0, w1, w0
	str	w0, [sp, 56]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L2:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L3
	str	wzr, [sp, 52]
	b	.L4
.L5:
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	strlen
	mov	w1, w0
	ldr	w0, [sp, 60]
	add	w0, w1, w0
	str	w0, [sp, 60]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L4:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	blt	.L5
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	bge	.L6
	ldr	x0, [sp, 40]
	b	.L7
.L6:
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	ble	.L8
	ldr	x0, [sp, 24]
	b	.L7
.L8:
	ldr	x0, [sp, 40]
.L7:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
