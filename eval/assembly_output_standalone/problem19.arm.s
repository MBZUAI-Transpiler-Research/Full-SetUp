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
	str	x1, [sp, 16]
	str	wzr, [sp, 32]
	ldr	x0, [sp, 24]
	bl	strlen
	str	w0, [sp, 40]
	ldr	x0, [sp, 16]
	bl	strlen
	str	w0, [sp, 44]
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bne	.L2
	mov	w0, 0
	b	.L3
.L2:
	str	wzr, [sp, 36]
	b	.L4
.L6:
	ldrsw	x0, [sp, 36]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrsw	x1, [sp, 44]
	mov	x2, x1
	ldr	x1, [sp, 16]
	bl	strncmp
	cmp	w0, 0
	bne	.L5
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
.L5:
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L4:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	sub	w0, w1, w0
	ldr	w1, [sp, 36]
	cmp	w1, w0
	ble	.L6
	ldr	w0, [sp, 32]
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
