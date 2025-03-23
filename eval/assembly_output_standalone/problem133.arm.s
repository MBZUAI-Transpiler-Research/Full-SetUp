	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 40]
	str	wzr, [sp, 52]
	str	wzr, [sp, 56]
	str	wzr, [sp, 60]
	b	.L2
.L9:
	ldrsw	x0, [sp, 60]
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 91
	bne	.L3
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L3:
	ldrsw	x0, [sp, 60]
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 93
	bne	.L4
	ldr	w0, [sp, 52]
	sub	w0, w0, #1
	str	w0, [sp, 52]
.L4:
	ldr	w0, [sp, 52]
	cmp	w0, 0
	bge	.L5
	str	wzr, [sp, 52]
.L5:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	ble	.L6
	ldr	w0, [sp, 52]
	str	w0, [sp, 56]
.L6:
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	ldr	w1, [sp, 52]
	cmp	w1, w0
	bge	.L7
	mov	w0, 1
	b	.L8
.L7:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L2:
	ldrsw	x19, [sp, 60]
	ldr	x0, [sp, 40]
	bl	strlen
	cmp	x19, x0
	bcc	.L9
	mov	w0, 0
.L8:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
