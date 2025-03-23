	.arch armv8-a
	.file	"problem46.c"
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
	ldr	s1, [sp, 12]
	ldr	s0, [sp, 8]
	fmul	s1, s1, s0
	fmov	s0, 5.0e-1
	fmul	s0, s1, s0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem46.c"
	.align	3
.LC1:
	.string	"fabs(func0(5, 3) - 7.5) < 1e-4"
	.align	3
.LC2:
	.string	"fabs(func0(2, 2) - 2.0) < 1e-4"
	.align	3
.LC3:
	.string	"fabs(func0(10, 8) - 40.0) < 1e-4"
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
	fmov	s1, 3.0e+0
	fmov	s0, 5.0e+0
	bl	func0
	fcvt	d1, s0
	fmov	d0, 7.5e+0
	fsub	d0, d1, d0
	fabs	d0, d0
	adrp	x0, .LC4
	ldr	d1, [x0, #:lo12:.LC4]
	fcmpe	d0, d1
	bmi	.L4
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 15
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L4:
	fmov	s1, 2.0e+0
	fmov	s0, 2.0e+0
	bl	func0
	fcvt	d1, s0
	fmov	d0, 2.0e+0
	fsub	d0, d1, d0
	fabs	d0, d0
	adrp	x0, .LC4
	ldr	d1, [x0, #:lo12:.LC4]
	fcmpe	d0, d1
	bmi	.L5
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 16
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L5:
	fmov	s1, 8.0e+0
	fmov	s0, 1.0e+1
	bl	func0
	fcvt	d0, s0
	mov	x0, 4630826316843712512
	fmov	d1, x0
	fsub	d0, d0, d1
	fabs	d0, d0
	adrp	x0, .LC4
	ldr	d1, [x0, #:lo12:.LC4]
	fcmpe	d0, d1
	bmi	.L6
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 17
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
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
.LC4:
	.word	-350469331
	.word	1058682594
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
