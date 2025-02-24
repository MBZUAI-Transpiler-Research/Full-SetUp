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
	str	x0, [sp, 8]
	str	x1, [sp]
	str	wzr, [sp, 24]
	b	.L2
.L3:
	ldrsw	x0, [sp, 24]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	sub	w1, w0, #93
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
	str	w0, [sp, 28]
	ldrsw	x0, [sp, 24]
	ldr	x1, [sp]
	add	x0, x1, x0
	ldr	w1, [sp, 28]
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L2:
	ldrsw	x0, [sp, 24]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L3
	ldrsw	x0, [sp, 24]
	ldr	x1, [sp]
	add	x0, x1, x0
	strb	wzr, [x0]
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
