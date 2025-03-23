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
	ldr	x0, [sp, 24]
	bl	strlen
	str	w0, [sp, 52]
	ldr	w0, [sp, 52]
	lsl	w0, w0, 1
	add	w0, w0, 1
	sxtw	x0, w0
	bl	malloc
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L2
	mov	x0, 0
	b	.L3
.L2:
	str	wzr, [sp, 40]
	b	.L4
.L12:
	mov	w0, 1
	str	w0, [sp, 48]
	str	wzr, [sp, 44]
	b	.L5
.L8:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	add	w0, w1, w0
	sxtw	x0, w0
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldr	w0, [sp, 52]
	sub	w2, w0, #1
	ldr	w0, [sp, 44]
	sub	w0, w2, w0
	sxtw	x0, w0
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldrb	w0, [x0]
	cmp	w1, w0
	beq	.L6
	str	wzr, [sp, 48]
	b	.L7
.L6:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L5:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 40]
	sub	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 44]
	cmp	w0, w1
	blt	.L8
.L7:
	ldr	w0, [sp, 48]
	cmp	w0, 0
	beq	.L9
	ldrsw	x0, [sp, 52]
	mov	x2, x0
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 56]
	bl	strncpy
	str	wzr, [sp, 44]
	b	.L10
.L11:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	sub	w0, w1, w0
	sxtw	x0, w0
	sub	x0, x0, #1
	ldr	x1, [sp, 24]
	add	x1, x1, x0
	ldr	w2, [sp, 52]
	ldr	w0, [sp, 44]
	add	w0, w2, w0
	sxtw	x0, w0
	ldr	x2, [sp, 56]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L10:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	blt	.L11
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 40]
	add	w0, w1, w0
	sxtw	x0, w0
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	strb	wzr, [x0]
	ldr	x0, [sp, 56]
	b	.L3
.L9:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L4:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	blt	.L12
	ldrsw	x0, [sp, 52]
	mov	x2, x0
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 56]
	bl	strncpy
	str	wzr, [sp, 44]
	b	.L13
.L14:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 44]
	sub	w0, w1, w0
	sxtw	x0, w0
	sub	x0, x0, #1
	ldr	x1, [sp, 24]
	add	x1, x1, x0
	ldr	w2, [sp, 52]
	ldr	w0, [sp, 44]
	add	w0, w2, w0
	sxtw	x0, w0
	ldr	x2, [sp, 56]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L13:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	blt	.L14
	ldr	w0, [sp, 52]
	lsl	w0, w0, 1
	sxtw	x0, w0
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	strb	wzr, [x0]
	ldr	x0, [sp, 56]
.L3:
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
