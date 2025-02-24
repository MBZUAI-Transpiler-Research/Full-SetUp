	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	mov	w0, 1
	str	w0, [sp, 24]
	str	wzr, [sp, 28]
	b	.L2
.L6:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	bne	.L3
	mov	w0, 1
	b	.L4
.L3:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 8]
	mul	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	bgt	.L5
	ldr	w0, [sp, 28]
	cmp	w0, 99
	ble	.L6
.L5:
	mov	w0, 0
.L4:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
