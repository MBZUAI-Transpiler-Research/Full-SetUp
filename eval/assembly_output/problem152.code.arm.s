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
	str	d8, [sp, 24]
	.cfi_offset 19, -48
	.cfi_offset 72, -40
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	xzr, [sp, 56]
	str	wzr, [sp, 52]
	b	.L2
.L6:
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcvt	d8, s0
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcvt	d0, s0
	bl	round
	fsub	d0, d8, d0
	fabs	d0, d0
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	fcmpe	d0, d1
	bmi	.L8
	b	.L3
.L8:
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcmpe	s0, #0.0
	bgt	.L9
	b	.L3
.L9:
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcvt	d0, s0
	bl	round
	fcvtzs	w0, d0
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	cmp	w0, 1
	bne	.L3
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcvt	d0, s0
	bl	round
	fcvtzs	w19, d0
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcvt	d0, s0
	bl	round
	fcvtzs	w0, d0
	mul	w0, w19, w0
	sxtw	x0, w0
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	str	x0, [sp, 56]
.L3:
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L2:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L6
	ldr	x0, [sp, 56]
	ldr	d8, [sp, 24]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 72
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.word	-350469331
	.word	1058682594
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
