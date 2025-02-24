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
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	wzr, [sp, 60]
	str	wzr, [sp, 44]
	str	wzr, [sp, 48]
	str	wzr, [sp, 52]
	b	.L2
.L13:
	ldrsw	x0, [sp, 52]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 32
	beq	.L3
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	b	.L4
.L3:
	ldr	w0, [sp, 44]
	cmp	w0, 1
	ble	.L5
	mov	w0, 1
	strb	w0, [sp, 43]
	mov	w0, 2
	str	w0, [sp, 56]
	b	.L6
.L9:
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 56]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 56]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L7
	strb	wzr, [sp, 43]
	b	.L10
.L7:
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L6:
	ldr	w0, [sp, 56]
	mul	w0, w0, w0
	ldr	w1, [sp, 44]
	cmp	w1, w0
	bge	.L9
	b	.L10
.L5:
	strb	wzr, [sp, 43]
.L10:
	ldrb	w0, [sp, 43]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L11
	ldr	w0, [sp, 48]
	cmp	w0, 0
	ble	.L12
	ldr	w0, [sp, 48]
	add	w1, w0, 1
	str	w1, [sp, 48]
	sxtw	x0, w0
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	mov	w1, 32
	strb	w1, [x0]
.L12:
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 16]
	add	x3, x1, x0
	ldrsw	x1, [sp, 52]
	ldrsw	x0, [sp, 44]
	sub	x0, x1, x0
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrsw	x1, [sp, 44]
	mov	x2, x1
	mov	x1, x0
	mov	x0, x3
	bl	memcpy
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 44]
	add	w0, w1, w0
	str	w0, [sp, 48]
.L11:
	str	wzr, [sp, 44]
.L4:
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L2:
	ldrsw	x0, [sp, 52]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L13
	ldr	w0, [sp, 44]
	cmp	w0, 1
	ble	.L14
	mov	w0, 1
	strb	w0, [sp, 43]
	mov	w0, 2
	str	w0, [sp, 56]
	b	.L15
.L18:
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 56]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 56]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L16
	strb	wzr, [sp, 43]
	b	.L19
.L16:
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L15:
	ldr	w0, [sp, 56]
	mul	w0, w0, w0
	ldr	w1, [sp, 44]
	cmp	w1, w0
	bge	.L18
	b	.L19
.L14:
	strb	wzr, [sp, 43]
.L19:
	ldrb	w0, [sp, 43]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L20
	ldr	w0, [sp, 48]
	cmp	w0, 0
	ble	.L21
	ldr	w0, [sp, 48]
	add	w1, w0, 1
	str	w1, [sp, 48]
	sxtw	x0, w0
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	mov	w1, 32
	strb	w1, [x0]
.L21:
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 16]
	add	x3, x1, x0
	ldrsw	x1, [sp, 52]
	ldrsw	x0, [sp, 44]
	sub	x0, x1, x0
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrsw	x1, [sp, 44]
	mov	x2, x1
	mov	x1, x0
	mov	x0, x3
	bl	memcpy
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 44]
	add	w0, w1, w0
	str	w0, [sp, 48]
.L20:
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	strb	wzr, [x0]
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
