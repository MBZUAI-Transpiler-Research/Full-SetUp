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
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	ldr	w0, [sp, 20]
	cmp	w0, 0
	beq	.L2
	mov	w0, 5
	b	.L3
.L2:
	mov	w0, 21
.L3:
	str	w0, [sp, 40]
	ldr	x0, [sp, 24]
	bl	strlen
	str	x0, [sp, 56]
	str	xzr, [sp, 48]
	b	.L4
.L5:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 48]
	add	x0, x1, x0
	ldrb	w0, [x0]
	sub	w1, w0, #97
	ldr	w0, [sp, 40]
	add	w1, w1, w0
	mov	w0, 60495
	movk	w0, 0x4ec4, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 3
	asr	w0, w1, 31
	sub	w0, w2, w0
	mov	w2, 26
	mul	w0, w0, w2
	sub	w0, w1, w0
	add	w0, w0, 97
	str	w0, [sp, 44]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 48]
	add	x0, x1, x0
	ldr	w1, [sp, 44]
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	x0, [sp, 48]
	add	x0, x0, 1
	str	x0, [sp, 48]
.L4:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	cmp	x1, x0
	bcc	.L5
	nop
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
