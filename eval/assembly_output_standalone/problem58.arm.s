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
	str	w1, [sp, 4]
	str	wzr, [sp, 24]
	ldr	w0, [sp, 24]
	str	w0, [sp, 20]
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L2
.L7:
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	s1, [x0]
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcmpe	s1, s0
	bgt	.L10
	b	.L3
.L10:
	mov	w0, 1
	str	w0, [sp, 20]
.L3:
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	s1, [x0]
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcmpe	s1, s0
	bmi	.L11
	b	.L5
.L11:
	mov	w0, 1
	str	w0, [sp, 24]
.L5:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L7
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	cmp	w0, 2
	bne	.L8
	mov	w0, 0
	b	.L9
.L8:
	mov	w0, 1
.L9:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
