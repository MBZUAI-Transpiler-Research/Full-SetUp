	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	str	wzr, [sp, 24]
	str	wzr, [sp, 28]
	str	wzr, [sp, 32]
	b	.L2
.L8:
	ldrsw	x0, [sp, 32]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 1
	ble	.L3
	mov	w0, 1
	str	w0, [sp, 36]
	mov	w0, 2
	str	w0, [sp, 40]
	b	.L4
.L7:
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 40]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 40]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L5
	str	wzr, [sp, 36]
	b	.L6
.L5:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L4:
	ldr	w0, [sp, 40]
	mul	w0, w0, w0
	ldr	w1, [sp, 44]
	cmp	w1, w0
	bge	.L7
.L6:
	ldr	w0, [sp, 36]
	cmp	w0, 0
	beq	.L3
	ldr	w0, [sp, 44]
	ldr	w2, [sp, 24]
	ldr	w1, [sp, 24]
	cmp	w2, w0
	csel	w0, w1, w0, ge
	str	w0, [sp, 24]
.L3:
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
.L2:
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L8
	b	.L9
.L10:
	ldr	w2, [sp, 24]
	mov	w0, 26215
	movk	w0, 0x6666, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	asr	w1, w0, 2
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	sub	w1, w2, w0
	ldr	w0, [sp, 28]
	add	w0, w0, w1
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	mov	w1, 26215
	movk	w1, 0x6666, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 2
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 24]
.L9:
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bgt	.L10
	ldr	w0, [sp, 28]
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
