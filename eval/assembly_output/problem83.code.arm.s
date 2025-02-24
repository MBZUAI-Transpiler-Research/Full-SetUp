	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	strlen
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 1
	bgt	.L2
	mov	w0, 0
	b	.L3
.L2:
	mov	w0, 2
	str	w0, [sp, 40]
	b	.L4
.L6:
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 40]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 40]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L5
	mov	w0, 0
	b	.L3
.L5:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L4:
	ldr	w0, [sp, 40]
	mul	w0, w0, w0
	ldr	w1, [sp, 44]
	cmp	w1, w0
	bge	.L6
	mov	w0, 1
.L3:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
