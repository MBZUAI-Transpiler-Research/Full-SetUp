	.arch armv8-a
	.file	"problem72.c"
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
	.section	.rodata
	.align	3
.LC0:
	.string	"problem72.c"
	.align	3
.LC1:
	.string	"fabs(func0(3, 4, 5) - 6.00) < 0.01"
	.align	3
.LC2:
	.string	"fabs(func0(1, 2, 10) + 1) < 0.01"
	.align	3
.LC3:
	.string	"fabs(func0(4, 8, 5) - 8.18) < 0.01"
	.align	3
.LC4:
	.string	"fabs(func0(2, 2, 2) - 1.73) < 0.01"
	.align	3
.LC5:
	.string	"fabs(func0(1, 2, 3) + 1) < 0.01"
	.align	3
.LC6:
	.string	"fabs(func0(10, 5, 7) - 16.25) < 0.01"
	.align	3
.LC7:
	.string	"fabs(func0(2, 6, 3) + 1) < 0.01"
	.align	3
.LC8:
	.string	"fabs(func0(1, 1, 1) - 0.43) < 0.01"
	.align	3
.LC9:
	.string	"fabs(func0(2, 2, 10) + 1) < 0.01"
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
	fmov	s2, 5.0e+0
	fmov	s1, 4.0e+0
	fmov	s0, 3.0e+0
	bl	func0
	fcvt	d1, s0
	fmov	d0, 6.0e+0
	fsub	d0, d1, d0
	fabs	d0, d0
	adrp	x0, .LC10
	ldr	d1, [x0, #:lo12:.LC10]
	fcmpe	d0, d1
	bmi	.L8
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 18
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L8:
	fmov	s2, 1.0e+1
	fmov	s1, 2.0e+0
	fmov	s0, 1.0e+0
	bl	func0
	fmov	s1, s0
	fmov	s0, 1.0e+0
	fadd	s0, s1, s0
	fabs	s0, s0
	fcvt	d0, s0
	adrp	x0, .LC10
	ldr	d1, [x0, #:lo12:.LC10]
	fcmpe	d0, d1
	bmi	.L9
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 19
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L9:
	fmov	s2, 5.0e+0
	fmov	s1, 8.0e+0
	fmov	s0, 4.0e+0
	bl	func0
	fcvt	d0, s0
	adrp	x0, .LC11
	ldr	d1, [x0, #:lo12:.LC11]
	fsub	d0, d0, d1
	fabs	d0, d0
	adrp	x0, .LC10
	ldr	d1, [x0, #:lo12:.LC10]
	fcmpe	d0, d1
	bmi	.L10
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 20
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L10:
	fmov	s2, 2.0e+0
	fmov	s1, 2.0e+0
	fmov	s0, 2.0e+0
	bl	func0
	fcvt	d0, s0
	adrp	x0, .LC12
	ldr	d1, [x0, #:lo12:.LC12]
	fsub	d0, d0, d1
	fabs	d0, d0
	adrp	x0, .LC10
	ldr	d1, [x0, #:lo12:.LC10]
	fcmpe	d0, d1
	bmi	.L11
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 21
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L11:
	fmov	s2, 3.0e+0
	fmov	s1, 2.0e+0
	fmov	s0, 1.0e+0
	bl	func0
	fmov	s1, s0
	fmov	s0, 1.0e+0
	fadd	s0, s1, s0
	fabs	s0, s0
	fcvt	d0, s0
	adrp	x0, .LC10
	ldr	d1, [x0, #:lo12:.LC10]
	fcmpe	d0, d1
	bmi	.L12
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 22
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L12:
	fmov	s2, 7.0e+0
	fmov	s1, 5.0e+0
	fmov	s0, 1.0e+1
	bl	func0
	fcvt	d0, s0
	mov	x0, 70368744177664
	movk	x0, 0x4030, lsl 48
	fmov	d1, x0
	fsub	d0, d0, d1
	fabs	d0, d0
	adrp	x0, .LC10
	ldr	d1, [x0, #:lo12:.LC10]
	fcmpe	d0, d1
	bmi	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 23
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L13:
	fmov	s2, 3.0e+0
	fmov	s1, 6.0e+0
	fmov	s0, 2.0e+0
	bl	func0
	fmov	s1, s0
	fmov	s0, 1.0e+0
	fadd	s0, s1, s0
	fabs	s0, s0
	fcvt	d0, s0
	adrp	x0, .LC10
	ldr	d1, [x0, #:lo12:.LC10]
	fcmpe	d0, d1
	bmi	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 24
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L14:
	fmov	s2, 1.0e+0
	fmov	s1, 1.0e+0
	fmov	s0, 1.0e+0
	bl	func0
	fcvt	d0, s0
	adrp	x0, .LC13
	ldr	d1, [x0, #:lo12:.LC13]
	fsub	d0, d0, d1
	fabs	d0, d0
	adrp	x0, .LC10
	ldr	d1, [x0, #:lo12:.LC10]
	fcmpe	d0, d1
	bmi	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 25
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L15:
	fmov	s2, 1.0e+1
	fmov	s1, 2.0e+0
	fmov	s0, 2.0e+0
	bl	func0
	fmov	s1, s0
	fmov	s0, 1.0e+0
	fadd	s0, s1, s0
	fabs	s0, s0
	fcvt	d0, s0
	adrp	x0, .LC10
	ldr	d1, [x0, #:lo12:.LC10]
	fcmpe	d0, d1
	bmi	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 26
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L16:
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
.LC10:
	.word	1202590843
	.word	1065646817
	.align	3
.LC11:
	.word	-171798692
	.word	1075862568
	.align	3
.LC12:
	.word	2061584302
	.word	1073458708
	.align	3
.LC13:
	.word	-1202590843
	.word	1071351070
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
