	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	atof
	str	d0, [sp, 40]
	ldr	d0, [sp, 40]
	fcmpe	d0, #0.0
	bmi	.L6
	b	.L7
.L6:
	ldr	d1, [sp, 40]
	fmov	d0, 5.0e-1
	fsub	d0, d1, d0
	bl	ceil
	fcvtzs	w0, d0
	b	.L5
.L7:
	ldr	d1, [sp, 40]
	fmov	d0, 5.0e-1
	fadd	d0, d1, d0
	bl	floor
	fcvtzs	w0, d0
.L5:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
