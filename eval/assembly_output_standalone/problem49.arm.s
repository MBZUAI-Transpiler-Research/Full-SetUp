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
	str	wzr, [sp, 40]
	b	.L2
.L5:
	ldrsw	x0, [sp, 40]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldr	w0, [sp, 44]
	sub	w2, w0, #1
	ldr	w0, [sp, 40]
	sub	w0, w2, w0
	sxtw	x0, w0
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldrb	w0, [x0]
	cmp	w1, w0
	beq	.L3
	mov	w0, 0
	b	.L4
.L3:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L2:
	ldr	w0, [sp, 44]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 40]
	cmp	w0, w1
	blt	.L5
	mov	w0, 1
.L4:
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
