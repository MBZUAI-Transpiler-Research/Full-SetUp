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
	str	x19, [sp, 16]
	.cfi_offset 19, -64
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	strlen
	str	w0, [sp, 52]
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [sp, 64]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	sxtw	x0, w0
	bl	malloc
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	strb	wzr, [x0]
	str	wzr, [sp, 48]
	b	.L2
.L3:
	ldr	x0, [sp, 56]
	bl	strlen
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	add	x0, x0, 2
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	realloc
	str	x0, [sp, 56]
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldr	x2, [sp, 56]
	ldr	x0, [sp, 72]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	x0, [sp, 72]
	add	x0, x0, 1
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	strb	wzr, [x0]
	ldr	x0, [sp, 56]
	bl	strlen
	add	x2, x0, 1
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 3
	ldr	x1, [sp, 64]
	add	x19, x1, x0
	mov	x0, x2
	bl	malloc
	str	x0, [x19]
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 3
	ldr	x1, [sp, 64]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x1, [sp, 56]
	bl	strcpy
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L2:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	blt	.L3
	ldr	x0, [sp, 56]
	bl	free
	ldr	x0, [sp, 32]
	ldr	w1, [sp, 52]
	str	w1, [x0]
	ldr	x0, [sp, 64]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
