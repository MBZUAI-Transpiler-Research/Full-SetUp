	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	bl	malloc
	mov	x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 16]
	str	wzr, [x0]
	str	wzr, [sp, 60]
	b	.L2
.L9:
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 64]
	strb	wzr, [sp, 59]
	ldr	w0, [sp, 64]
	cmp	w0, 0
	bne	.L4
	mov	w0, 1
	strb	w0, [sp, 59]
	b	.L4
.L7:
	ldr	w0, [sp, 64]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L5
	mov	w0, 1
	strb	w0, [sp, 59]
.L5:
	ldr	w0, [sp, 64]
	mov	w1, 26215
	movk	w1, 0x6666, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 2
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 64]
.L4:
	ldr	w0, [sp, 64]
	cmp	w0, 0
	ble	.L6
	ldrb	w0, [sp, 59]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L7
.L6:
	ldrb	w0, [sp, 59]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L8
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldr	x0, [sp, 24]
	ldr	x2, [x0]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	add	w1, w0, 1
	ldr	x0, [sp, 16]
	str	w1, [x0]
.L8:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L2:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L9
	str	wzr, [sp, 68]
	b	.L10
.L14:
	str	wzr, [sp, 72]
	b	.L11
.L13:
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w1, [x0]
	ldr	x0, [sp, 24]
	ldr	x2, [x0]
	ldrsw	x0, [sp, 72]
	add	x0, x0, 1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L12
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 76]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 72]
	add	x0, x0, 1
	lsl	x0, x0, 2
	add	x1, x1, x0
	ldr	x0, [sp, 24]
	ldr	x2, [x0]
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 72]
	add	x0, x0, 1
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w1, [sp, 76]
	str	w1, [x0]
.L12:
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
.L11:
	ldr	x0, [sp, 16]
	ldr	w1, [x0]
	ldr	w0, [sp, 68]
	sub	w0, w1, w0
	sub	w0, w0, #1
	ldr	w1, [sp, 72]
	cmp	w1, w0
	blt	.L13
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
.L10:
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	sub	w0, w0, #1
	ldr	w1, [sp, 68]
	cmp	w1, w0
	blt	.L14
	nop
	nop
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
