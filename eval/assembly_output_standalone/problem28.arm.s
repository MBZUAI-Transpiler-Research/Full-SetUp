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
	ldr	x0, [sp, 24]
	bl	strlen
	str	w0, [sp, 44]
	str	wzr, [sp, 40]
	b	.L2
.L5:
	ldrsw	x0, [sp, 40]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 39]
	ldrb	w0, [sp, 39]
	cmp	w0, 96
	bls	.L3
	ldrb	w0, [sp, 39]
	cmp	w0, 122
	bhi	.L3
	ldrb	w0, [sp, 39]
	sub	w0, w0, #32
	strb	w0, [sp, 39]
	b	.L4
.L3:
	ldrb	w0, [sp, 39]
	cmp	w0, 64
	bls	.L4
	ldrb	w0, [sp, 39]
	cmp	w0, 90
	bhi	.L4
	ldrb	w0, [sp, 39]
	add	w0, w0, 32
	strb	w0, [sp, 39]
.L4:
	ldrsw	x0, [sp, 40]
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldrb	w1, [sp, 39]
	strb	w1, [x0]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L2:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	blt	.L5
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	strb	wzr, [x0]
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
