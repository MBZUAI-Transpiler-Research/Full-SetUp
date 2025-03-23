	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	s0, [sp, 28]
	str	s1, [sp, 24]
	str	s2, [sp, 20]
	ldr	s0, [sp, 28]
	bl	roundf
	fmov	s1, s0
	ldr	s0, [sp, 28]
	fcmp	s0, s1
	beq	.L2
	mov	w0, 0
	b	.L3
.L2:
	ldr	s0, [sp, 24]
	bl	roundf
	fmov	s1, s0
	ldr	s0, [sp, 24]
	fcmp	s0, s1
	beq	.L4
	mov	w0, 0
	b	.L3
.L4:
	ldr	s0, [sp, 20]
	bl	roundf
	fmov	s1, s0
	ldr	s0, [sp, 20]
	fcmp	s0, s1
	beq	.L5
	mov	w0, 0
	b	.L3
.L5:
	ldr	s1, [sp, 28]
	ldr	s0, [sp, 24]
	fadd	s0, s1, s0
	ldr	s1, [sp, 20]
	fcmp	s1, s0
	beq	.L6
	ldr	s1, [sp, 28]
	ldr	s0, [sp, 20]
	fadd	s0, s1, s0
	ldr	s1, [sp, 24]
	fcmp	s1, s0
	beq	.L6
	ldr	s1, [sp, 24]
	ldr	s0, [sp, 20]
	fadd	s0, s1, s0
	ldr	s1, [sp, 28]
	fcmp	s1, s0
	bne	.L7
.L6:
	mov	w0, 1
	b	.L3
.L7:
	mov	w0, 0
.L3:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
