	.arch armv8-a
	.file	"problem3.c"
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
	ldr	s0, [sp, 12]
	fcvtzs	s0, s0
	scvtf	s0, s0
	ldr	s1, [sp, 12]
	fsub	s0, s1, s0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"Testing problem 3"
	.align	3
.LC1:
	.string	"problem3.c"
	.align	3
.LC2:
	.string	"func0(3.5f) == 0.5f"
	.align	3
.LC3:
	.string	"fabs(func0(1.33f) - 0.33f) < 1e-4"
	.align	3
.LC4:
	.string	"fabs(func0(123.456f) - 0.456f) < 1e-4"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	puts
	fmov	s0, 3.5e+0
	bl	func0
	fmov	s1, s0
	fmov	s0, 5.0e-1
	fcmp	s1, s0
	beq	.L4
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 16
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L4:
	mov	w0, 15729
	movk	w0, 0x3faa, lsl 16
	fmov	s0, w0
	bl	func0
	mov	w0, 62915
	movk	w0, 0x3ea8, lsl 16
	fmov	s1, w0
	fsub	s0, s0, s1
	fabs	s0, s0
	fcvt	d0, s0
	adrp	x0, .LC5
	ldr	d1, [x0, #:lo12:.LC5]
	fcmpe	d0, d1
	bmi	.L5
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 17
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L5:
	mov	w0, 59769
	movk	w0, 0x42f6, lsl 16
	fmov	s0, w0
	bl	func0
	mov	w0, 30933
	movk	w0, 0x3ee9, lsl 16
	fmov	s1, w0
	fsub	s0, s0, s1
	fabs	s0, s0
	fcvt	d0, s0
	adrp	x0, .LC5
	ldr	d1, [x0, #:lo12:.LC5]
	fcmpe	d0, d1
	bmi	.L6
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 18
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L6:
	mov	w0, 0
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align	3
.LC5:
	.word	-350469331
	.word	1058682594
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
