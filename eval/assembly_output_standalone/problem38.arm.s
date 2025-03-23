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
	ldr	w0, [sp, 36]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	bl	malloc
	str	x0, [sp, 72]
	str	wzr, [sp, 64]
	str	wzr, [sp, 56]
	b	.L2
.L3:
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldr	w0, [sp, 64]
	add	w2, w0, 1
	str	w2, [sp, 64]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x2, [sp, 72]
	add	x0, x2, x0
	ldr	s0, [x1]
	str	s0, [x0]
	ldr	w0, [sp, 56]
	add	w0, w0, 2
	str	w0, [sp, 56]
.L2:
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L3
	str	wzr, [sp, 56]
	b	.L4
.L9:
	str	wzr, [sp, 60]
	b	.L5
.L8:
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	s1, [x0]
	ldrsw	x0, [sp, 60]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcmpe	s1, s0
	bgt	.L14
	b	.L6
.L14:
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	s0, [x0]
	str	s0, [sp, 68]
	ldrsw	x0, [sp, 60]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 72]
	add	x1, x1, x0
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x2, [sp, 72]
	add	x0, x2, x0
	ldr	s0, [x1]
	str	s0, [x0]
	ldrsw	x0, [sp, 60]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	s0, [sp, 68]
	str	s0, [x0]
.L6:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L5:
	ldr	w1, [sp, 64]
	ldr	w0, [sp, 56]
	sub	w0, w1, w0
	sub	w0, w0, #1
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L8
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L4:
	ldr	w0, [sp, 64]
	sub	w0, w0, #1
	ldr	w1, [sp, 56]
	cmp	w1, w0
	blt	.L9
	str	wzr, [sp, 56]
	b	.L10
.L13:
	ldr	w0, [sp, 56]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L11
	ldr	w0, [sp, 56]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 72]
	add	x1, x1, x0
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	s0, [x1]
	str	s0, [x0]
	b	.L12
.L11:
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	s0, [x1]
	str	s0, [x0]
.L12:
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L10:
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L13
	ldr	x0, [sp, 72]
	bl	free
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
