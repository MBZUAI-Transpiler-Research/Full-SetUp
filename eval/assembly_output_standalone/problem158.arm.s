	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	s0, [sp, 12]
	str	s1, [sp, 8]
	str	s2, [sp, 4]
	ldr	s0, [sp, 12]
	fmul	s1, s0, s0
	ldr	s0, [sp, 8]
	fmul	s0, s0, s0
	fadd	s1, s1, s0
	ldr	s0, [sp, 4]
	fmul	s0, s0, s0
	fsub	s0, s1, s0
	fabs	s0, s0
	fcvt	d0, s0
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	fcmpe	d0, d1
	bmi	.L2
	ldr	s0, [sp, 12]
	fmul	s1, s0, s0
	ldr	s0, [sp, 4]
	fmul	s0, s0, s0
	fadd	s1, s1, s0
	ldr	s0, [sp, 8]
	fmul	s0, s0, s0
	fsub	s0, s1, s0
	fabs	s0, s0
	fcvt	d0, s0
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	fcmpe	d0, d1
	bmi	.L2
	ldr	s0, [sp, 8]
	fmul	s1, s0, s0
	ldr	s0, [sp, 4]
	fmul	s0, s0, s0
	fadd	s1, s1, s0
	ldr	s0, [sp, 12]
	fmul	s0, s0, s0
	fsub	s0, s1, s0
	fabs	s0, s0
	fcvt	d0, s0
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	fcmpe	d0, d1
	bmi	.L2
	b	.L6
.L2:
	mov	w0, 1
	b	.L5
.L6:
	mov	w0, 0
.L5:
	add	sp, sp, 16
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
