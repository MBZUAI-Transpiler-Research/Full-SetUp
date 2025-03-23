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
	str	x1, [sp, 32]
	str	wzr, [sp, 52]
	str	wzr, [sp, 56]
	str	wzr, [sp, 60]
	b	.L2
.L8:
	ldrsw	x0, [sp, 60]
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 32
	bne	.L3
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
	b	.L4
.L3:
	ldr	w0, [sp, 52]
	cmp	w0, 1
	bne	.L5
	ldr	w0, [sp, 56]
	add	w1, w0, 1
	str	w1, [sp, 56]
	sxtw	x0, w0
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	mov	w1, 95
	strb	w1, [x0]
.L5:
	ldr	w0, [sp, 52]
	cmp	w0, 2
	bne	.L6
	ldr	w0, [sp, 56]
	add	w1, w0, 1
	str	w1, [sp, 56]
	sxtw	x0, w0
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	mov	w1, 95
	strb	w1, [x0]
	ldr	w0, [sp, 56]
	add	w1, w0, 1
	str	w1, [sp, 56]
	sxtw	x0, w0
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	mov	w1, 95
	strb	w1, [x0]
.L6:
	ldr	w0, [sp, 52]
	cmp	w0, 2
	ble	.L7
	ldr	w0, [sp, 56]
	add	w1, w0, 1
	str	w1, [sp, 56]
	sxtw	x0, w0
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	mov	w1, 45
	strb	w1, [x0]
.L7:
	str	wzr, [sp, 52]
	ldrsw	x0, [sp, 60]
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldr	w0, [sp, 56]
	add	w2, w0, 1
	str	w2, [sp, 56]
	sxtw	x0, w0
	ldr	x2, [sp, 32]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
.L4:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L2:
	ldrsw	x19, [sp, 60]
	ldr	x0, [sp, 40]
	bl	strlen
	cmp	x19, x0
	bcc	.L8
	ldr	w0, [sp, 52]
	cmp	w0, 1
	bne	.L9
	ldr	w0, [sp, 56]
	add	w1, w0, 1
	str	w1, [sp, 56]
	sxtw	x0, w0
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	mov	w1, 95
	strb	w1, [x0]
.L9:
	ldr	w0, [sp, 52]
	cmp	w0, 2
	bne	.L10
	ldr	w0, [sp, 56]
	add	w1, w0, 1
	str	w1, [sp, 56]
	sxtw	x0, w0
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	mov	w1, 95
	strb	w1, [x0]
	ldr	w0, [sp, 56]
	add	w1, w0, 1
	str	w1, [sp, 56]
	sxtw	x0, w0
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	mov	w1, 95
	strb	w1, [x0]
.L10:
	ldr	w0, [sp, 52]
	cmp	w0, 2
	ble	.L11
	ldr	w0, [sp, 56]
	add	w1, w0, 1
	str	w1, [sp, 56]
	sxtw	x0, w0
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	mov	w1, 45
	strb	w1, [x0]
.L11:
	ldrsw	x0, [sp, 56]
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	strb	wzr, [x0]
	nop
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
