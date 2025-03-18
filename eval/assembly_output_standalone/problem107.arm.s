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
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	bl	malloc
	str	x0, [sp, 56]
	str	wzr, [sp, 44]
	mov	w0, 1
	str	w0, [sp, 48]
	mov	w0, 1
	str	w0, [sp, 52]
	b	.L2
.L5:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 52]
	add	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 52]
	mul	w0, w1, w0
	str	w0, [sp, 48]
	ldr	w0, [sp, 52]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L3
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w1, [sp, 48]
	str	w1, [x0]
	b	.L4
.L3:
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w1, [sp, 44]
	str	w1, [x0]
.L4:
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L2:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	ble	.L5
	ldr	x0, [sp, 56]
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
