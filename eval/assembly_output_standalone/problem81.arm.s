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
	ldr	x0, [sp, 40]
	bl	strlen
	cmp	x0, 2
	bhi	.L2
	mov	w0, 0
	b	.L3
.L2:
	mov	w0, 2
	str	w0, [sp, 60]
	b	.L4
.L7:
	ldrsw	x0, [sp, 60]
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldrsw	x0, [sp, 60]
	sub	x0, x0, #1
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	ldrb	w0, [x0]
	cmp	w1, w0
	beq	.L5
	ldrsw	x0, [sp, 60]
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldrsw	x0, [sp, 60]
	sub	x0, x0, #2
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	ldrb	w0, [x0]
	cmp	w1, w0
	bne	.L6
.L5:
	mov	w0, 0
	b	.L3
.L6:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L4:
	ldrsw	x19, [sp, 60]
	ldr	x0, [sp, 40]
	bl	strlen
	cmp	x19, x0
	bcc	.L7
	mov	w0, 1
.L3:
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
