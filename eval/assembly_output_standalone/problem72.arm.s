	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	s0, [sp, 28]
	str	s1, [sp, 24]
	str	s2, [sp, 20]
	ldr	s1, [sp, 28]
	ldr	s0, [sp, 24]
	fadd	s0, s1, s0
	ldr	s1, [sp, 20]
	fcmpe	s1, s0
	bge	.L2
	ldr	s1, [sp, 28]
	ldr	s0, [sp, 20]
	fadd	s0, s1, s0
	ldr	s1, [sp, 24]
	fcmpe	s1, s0
	bge	.L2
	ldr	s1, [sp, 24]
	ldr	s0, [sp, 20]
	fadd	s0, s1, s0
	ldr	s1, [sp, 28]
	fcmpe	s1, s0
	bge	.L2
	b	.L6
.L2:
	fmov	s0, -1.0e+0
	b	.L5
.L6:
	ldr	s1, [sp, 28]
	ldr	s0, [sp, 24]
	fadd	s1, s1, s0
	ldr	s0, [sp, 20]
	fadd	s1, s1, s0
	fmov	s0, 2.0e+0
	fdiv	s0, s1, s0
	str	s0, [sp, 40]
	ldr	s1, [sp, 40]
	ldr	s0, [sp, 28]
	fsub	s1, s1, s0
	ldr	s0, [sp, 40]
	fmul	s1, s1, s0
	ldr	s2, [sp, 40]
	ldr	s0, [sp, 24]
	fsub	s0, s2, s0
	fmul	s1, s1, s0
	ldr	s2, [sp, 40]
	ldr	s0, [sp, 20]
	fsub	s0, s2, s0
	fmul	s0, s1, s0
	bl	sqrtf
	str	s0, [sp, 44]
	ldr	s0, [sp, 44]
	mov	w0, 1120403456
	fmov	s1, w0
	fmul	s0, s0, s1
	bl	roundf
	mov	w0, 1120403456
	fmov	s1, w0
	fdiv	s0, s0, s1
.L5:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
