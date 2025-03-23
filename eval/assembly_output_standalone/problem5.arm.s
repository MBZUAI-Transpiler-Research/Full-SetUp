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
	str	wzr, [sp, 16]
	str	wzr, [sp, 24]
	str	wzr, [sp, 24]
	b	.L2
.L3:
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	s0, [x0]
	ldr	s1, [sp, 16]
	fadd	s0, s1, s0
	str	s0, [sp, 16]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L2:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L3
	ldr	s0, [sp, 4]
	scvtf	s0, s0
	ldr	s1, [sp, 16]
	fdiv	s0, s1, s0
	str	s0, [sp, 28]
	str	wzr, [sp, 20]
	str	wzr, [sp, 24]
	b	.L4
.L5:
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	s1, [x0]
	ldr	s0, [sp, 28]
	fsub	s0, s1, s0
	fabs	s0, s0
	ldr	s1, [sp, 20]
	fadd	s0, s1, s0
	str	s0, [sp, 20]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L4:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L5
	ldr	s0, [sp, 4]
	scvtf	s0, s0
	ldr	s1, [sp, 20]
	fdiv	s0, s1, s0
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
