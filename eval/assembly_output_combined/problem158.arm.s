	.arch armv8-a
	.file	"problem158.c"
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
.LC1:
	.string	"problem158.c"
	.align	3
.LC2:
	.string	"func0(3, 4, 5) == 1"
	.align	3
.LC3:
	.string	"func0(1, 2, 3) == 0"
	.align	3
.LC4:
	.string	"func0(10, 6, 8) == 1"
	.align	3
.LC5:
	.string	"func0(2, 2, 2) == 0"
	.align	3
.LC6:
	.string	"func0(7, 24, 25) == 1"
	.align	3
.LC7:
	.string	"func0(10, 5, 7) == 0"
	.align	3
.LC8:
	.string	"func0(5, 12, 13) == 1"
	.align	3
.LC9:
	.string	"func0(15, 8, 17) == 1"
	.align	3
.LC10:
	.string	"func0(48, 55, 73) == 1"
	.align	3
.LC11:
	.string	"func0(1, 1, 1) == 0"
	.align	3
.LC12:
	.string	"func0(2, 2, 10) == 0"
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
	cmp	w0, 1
	beq	.L8
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 14
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L8:
	fmov	s2, 3.0e+0
	fmov	s1, 2.0e+0
	fmov	s0, 1.0e+0
	bl	func0
	cmp	w0, 0
	beq	.L9
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 15
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L9:
	fmov	s2, 8.0e+0
	fmov	s1, 6.0e+0
	fmov	s0, 1.0e+1
	bl	func0
	cmp	w0, 1
	beq	.L10
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 16
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L10:
	fmov	s2, 2.0e+0
	fmov	s1, 2.0e+0
	fmov	s0, 2.0e+0
	bl	func0
	cmp	w0, 0
	beq	.L11
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 17
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L11:
	fmov	s2, 2.5e+1
	fmov	s1, 2.4e+1
	fmov	s0, 7.0e+0
	bl	func0
	cmp	w0, 1
	beq	.L12
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 18
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L12:
	fmov	s2, 7.0e+0
	fmov	s1, 5.0e+0
	fmov	s0, 1.0e+1
	bl	func0
	cmp	w0, 0
	beq	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 19
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L13:
	fmov	s2, 1.3e+1
	fmov	s1, 1.2e+1
	fmov	s0, 5.0e+0
	bl	func0
	cmp	w0, 1
	beq	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 20
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L14:
	fmov	s2, 1.7e+1
	fmov	s1, 8.0e+0
	fmov	s0, 1.5e+1
	bl	func0
	cmp	w0, 1
	beq	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 21
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L15:
	mov	w0, 1116864512
	fmov	s2, w0
	mov	w0, 1113325568
	fmov	s1, w0
	mov	w0, 1111490560
	fmov	s0, w0
	bl	func0
	cmp	w0, 1
	beq	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 22
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L16:
	fmov	s2, 1.0e+0
	fmov	s1, 1.0e+0
	fmov	s0, 1.0e+0
	bl	func0
	cmp	w0, 0
	beq	.L17
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 23
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	__assert_fail
.L17:
	fmov	s2, 1.0e+1
	fmov	s1, 2.0e+0
	fmov	s0, 2.0e+0
	bl	func0
	cmp	w0, 0
	beq	.L18
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 24
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	__assert_fail
.L18:
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
.LC0:
	.word	-350469331
	.word	1058682594
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
