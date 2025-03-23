	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	x2, [sp, 8]
	mov	w0, 2139095039
	fmov	s0, w0
	str	s0, [sp, 44]
	ldr	x0, [sp, 24]
	ldr	s0, [x0]
	ldr	x0, [sp, 8]
	str	s0, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	ldr	x1, [sp, 24]
	ldr	s0, [x1, 4]
	str	s0, [x0]
	str	wzr, [sp, 48]
	b	.L2
.L7:
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 52]
	b	.L3
.L6:
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	s1, [x0]
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	s0, [x0]
	fsub	s0, s1, s0
	fabs	s0, s0
	str	s0, [sp, 60]
	ldr	s1, [sp, 60]
	ldr	s0, [sp, 44]
	fcmpe	s1, s0
	bmi	.L10
	b	.L4
.L10:
	ldr	s0, [sp, 60]
	str	s0, [sp, 44]
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	s0, [x0]
	ldr	x0, [sp, 8]
	str	s0, [x0]
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x1, x1, x0
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	ldr	s0, [x1]
	str	s0, [x0]
.L4:
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L3:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L6
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L2:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L7
	ldr	x0, [sp, 8]
	ldr	s1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	ldr	s0, [x0]
	fcmpe	s1, s0
	bgt	.L11
	b	.L12
.L11:
	ldr	x0, [sp, 8]
	ldr	s0, [x0]
	str	s0, [sp, 56]
	ldr	x0, [sp, 8]
	ldr	s0, [x0, 4]
	ldr	x0, [sp, 8]
	str	s0, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	ldr	s0, [sp, 56]
	str	s0, [x0]
.L12:
	nop
	add	sp, sp, 64
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
