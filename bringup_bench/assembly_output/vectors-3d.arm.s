	.arch armv8-a
	.file	"vectors-3d.c"
	.text
	.align	2
	.global	vector_sub
	.type	vector_sub, %function
vector_sub:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	d1, [x0]
	ldr	x0, [sp, 32]
	ldr	d0, [x0]
	fsub	d0, d1, d0
	str	d0, [sp, 48]
	ldr	x0, [sp, 40]
	ldr	d1, [x0, 8]
	ldr	x0, [sp, 32]
	ldr	d0, [x0, 8]
	fsub	d0, d1, d0
	str	d0, [sp, 56]
	ldr	x0, [sp, 40]
	ldr	d1, [x0, 16]
	ldr	x0, [sp, 32]
	ldr	d0, [x0, 16]
	fsub	d0, d1, d0
	str	d0, [sp, 64]
	add	x2, sp, 72
	add	x3, sp, 48
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	ldr	d2, [sp, 72]
	ldr	d1, [sp, 80]
	ldr	d0, [sp, 88]
	fmov	d3, d2
	fmov	d2, d0
	fmov	d0, d3
	add	sp, sp, 96
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	vector_sub, .-vector_sub
	.align	2
	.global	vector_add
	.type	vector_add, %function
vector_add:
.LFB4:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	d1, [x0]
	ldr	x0, [sp, 32]
	ldr	d0, [x0]
	fadd	d0, d1, d0
	str	d0, [sp, 48]
	ldr	x0, [sp, 40]
	ldr	d1, [x0, 8]
	ldr	x0, [sp, 32]
	ldr	d0, [x0, 8]
	fadd	d0, d1, d0
	str	d0, [sp, 56]
	ldr	x0, [sp, 40]
	ldr	d1, [x0, 16]
	ldr	x0, [sp, 32]
	ldr	d0, [x0, 16]
	fadd	d0, d1, d0
	str	d0, [sp, 64]
	add	x2, sp, 72
	add	x3, sp, 48
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	ldr	d2, [sp, 72]
	ldr	d1, [sp, 80]
	ldr	d0, [sp, 88]
	fmov	d3, d2
	fmov	d2, d0
	fmov	d0, d3
	add	sp, sp, 96
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	vector_add, .-vector_add
	.align	2
	.global	dot_prod
	.type	dot_prod, %function
dot_prod:
.LFB5:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	d1, [x0]
	ldr	x0, [sp]
	ldr	d0, [x0]
	fmul	d0, d1, d0
	str	d0, [sp, 24]
	ldr	x0, [sp, 8]
	ldr	d1, [x0, 8]
	ldr	x0, [sp]
	ldr	d0, [x0, 8]
	fmul	d0, d1, d0
	ldr	d1, [sp, 24]
	fadd	d0, d1, d0
	str	d0, [sp, 24]
	ldr	x0, [sp, 8]
	ldr	d1, [x0, 16]
	ldr	x0, [sp]
	ldr	d0, [x0, 16]
	fmul	d0, d1, d0
	ldr	d1, [sp, 24]
	fadd	d0, d1, d0
	str	d0, [sp, 24]
	ldr	d0, [sp, 24]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	dot_prod, .-dot_prod
	.align	2
	.global	vector_prod
	.type	vector_prod, %function
vector_prod:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	d1, [x0, 8]
	ldr	x0, [sp, 32]
	ldr	d0, [x0, 16]
	fmul	d1, d1, d0
	ldr	x0, [sp, 40]
	ldr	d2, [x0, 16]
	ldr	x0, [sp, 32]
	ldr	d0, [x0, 8]
	fmul	d0, d2, d0
	fsub	d0, d1, d0
	str	d0, [sp, 48]
	ldr	x0, [sp, 40]
	ldr	d0, [x0]
	fneg	d1, d0
	ldr	x0, [sp, 32]
	ldr	d0, [x0, 16]
	fmul	d1, d1, d0
	ldr	x0, [sp, 40]
	ldr	d2, [x0, 16]
	ldr	x0, [sp, 32]
	ldr	d0, [x0]
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	str	d0, [sp, 56]
	ldr	x0, [sp, 40]
	ldr	d1, [x0]
	ldr	x0, [sp, 32]
	ldr	d0, [x0, 8]
	fmul	d1, d1, d0
	ldr	x0, [sp, 40]
	ldr	d2, [x0, 8]
	ldr	x0, [sp, 32]
	ldr	d0, [x0]
	fmul	d0, d2, d0
	fsub	d0, d1, d0
	str	d0, [sp, 64]
	add	x2, sp, 72
	add	x3, sp, 48
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	ldr	d2, [sp, 72]
	ldr	d1, [sp, 80]
	ldr	d0, [sp, 88]
	fmov	d3, d2
	fmov	d2, d0
	fmov	d0, d3
	add	sp, sp, 96
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	vector_prod, .-vector_prod
	.section	.rodata
	.align	3
.LC2:
	.string	"vec(%s) = (%.0lf)i + (%.0lf)j + (%.0lf)k\n"
	.text
	.align	2
	.global	print_vector
	.type	print_vector, %function
print_vector:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	d0, [x0]
	ldr	x0, [sp, 24]
	ldr	d1, [x0, 8]
	ldr	x0, [sp, 24]
	ldr	d2, [x0, 16]
	ldr	x3, [sp, 16]
	adrp	x0, .LC2
	add	x2, x0, :lo12:.LC2
	mov	x1, 99
	adrp	x0, vec_str.0
	add	x0, x0, :lo12:vec_str.0
	bl	libmin_snprintf
	adrp	x0, vec_str.0
	add	x0, x0, :lo12:vec_str.0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	print_vector, .-print_vector
	.align	2
	.global	vector_norm
	.type	vector_norm, %function
vector_norm:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 24]
	bl	dot_prod
	str	d0, [sp, 40]
	ldr	d0, [sp, 40]
	bl	libmin_sqrt
	str	d0, [sp, 40]
	ldr	d0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	vector_norm, .-vector_norm
	.align	2
	.global	unit_vec
	.type	unit_vec, %function
unit_vec:
.LFB9:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	str	x0, [sp, 56]
	stp	xzr, xzr, [sp, 80]
	str	xzr, [sp, 96]
	ldr	x0, [sp, 56]
	bl	vector_norm
	str	d0, [sp, 72]
	ldr	d0, [sp, 72]
	bl	libmin_fabs
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fcmpe	d0, d1
	bmi	.L19
	b	.L20
.L19:
	add	x2, sp, 104
	add	x3, sp, 80
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	b	.L18
.L20:
	ldr	d1, [sp, 72]
	fmov	d0, 1.0e+0
	fcmp	d1, d0
	beq	.L17
	ldr	x0, [sp, 56]
	ldr	d1, [x0]
	ldr	d0, [sp, 72]
	fdiv	d0, d1, d0
	str	d0, [sp, 80]
	ldr	x0, [sp, 56]
	ldr	d1, [x0, 8]
	ldr	d0, [sp, 72]
	fdiv	d0, d1, d0
	str	d0, [sp, 88]
	ldr	x0, [sp, 56]
	ldr	d1, [x0, 16]
	ldr	d0, [sp, 72]
	fdiv	d0, d1, d0
	str	d0, [sp, 96]
.L17:
	add	x2, sp, 104
	add	x3, sp, 80
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
.L18:
	ldr	d2, [sp, 104]
	ldr	d1, [sp, 112]
	ldr	d0, [sp, 120]
	fmov	d3, d2
	fmov	d2, d0
	fmov	d0, d3
	ldp	x29, x30, [sp], 128
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9:
	.size	unit_vec, .-unit_vec
	.align	2
	.global	get_cross_matrix
	.type	get_cross_matrix, %function
get_cross_matrix:
.LFB10:
	.cfi_startproc
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, 96]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 96
	mov	x1, x8
	str	x0, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [x0]
	str	x2, [sp, 88]
	mov	x2, 0
	str	xzr, [sp, 16]
	ldr	x0, [sp, 8]
	ldr	d0, [x0, 16]
	fneg	d0, d0
	str	d0, [sp, 24]
	ldr	x0, [sp, 8]
	ldr	d0, [x0, 8]
	str	d0, [sp, 32]
	ldr	x0, [sp, 8]
	ldr	d0, [x0, 16]
	str	d0, [sp, 40]
	str	xzr, [sp, 48]
	ldr	x0, [sp, 8]
	ldr	d0, [x0]
	fneg	d0, d0
	str	d0, [sp, 56]
	ldr	x0, [sp, 8]
	ldr	d0, [x0, 8]
	fneg	d0, d0
	str	d0, [sp, 64]
	ldr	x0, [sp, 8]
	ldr	d0, [x0]
	str	d0, [sp, 72]
	str	xzr, [sp, 80]
	add	x0, sp, 16
	ldp	q0, q1, [x0]
	stp	q0, q1, [x1]
	ldp	q0, q1, [x0, 32]
	stp	q0, q1, [x1, 32]
	ldr	x0, [x0, 64]
	str	x0, [x1, 64]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 88]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L23
	bl	__stack_chk_fail
.L23:
	ldp	x29, x30, [sp, 96]
	add	sp, sp, 112
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10:
	.size	get_cross_matrix, .-get_cross_matrix
	.align	2
	.global	get_angle
	.type	get_angle, %function
get_angle:
.LFB11:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	vector_norm
	str	d0, [sp, 32]
	ldr	x0, [sp, 16]
	bl	vector_norm
	str	d0, [sp, 40]
	ldr	d0, [sp, 32]
	bl	libmin_fabs
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fcmpe	d0, d1
	bmi	.L25
	ldr	d0, [sp, 40]
	bl	libmin_fabs
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fcmpe	d0, d1
	bmi	.L25
	b	.L29
.L25:
	mov	x0, 9221120237041090560
	fmov	d0, x0
	b	.L28
.L29:
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	dot_prod
	fmov	d2, d0
	ldr	d1, [sp, 32]
	ldr	d0, [sp, 40]
	fmul	d0, d1, d0
	fdiv	d0, d2, d0
	str	d0, [sp, 48]
	ldr	d0, [sp, 48]
	bl	libmin_acos
	str	d0, [sp, 56]
	ldr	d0, [sp, 56]
.L28:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11:
	.size	get_angle, .-get_angle
	.section	.rodata
	.align	3
.LC4:
	.string	"a"
	.align	3
.LC5:
	.string	"%s"
	.align	3
.LC6:
	.string	"b"
	.align	3
.LC7:
	.string	"|a| = %.4lf\n"
	.align	3
.LC8:
	.string	"|b| = %.4lf\n"
	.align	3
.LC9:
	.string	"Dot product: %lf\n"
	.align	3
.LC10:
	.string	"Vector product "
	.align	3
.LC11:
	.string	"c"
	.align	3
.LC12:
	.string	"The angle is %lf\n"
	.align	3
.LC13:
	.string	"All tests passed!\n"
	.text
	.align	2
	.type	test, %function
test:
.LFB12:
	.cfi_startproc
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, 96]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 96
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 88]
	mov	x1, 0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	add	x2, sp, 16
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	add	x2, sp, 40
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x2, sp, 16
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	bl	print_vector
	mov	x1, x0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	libmin_printf
	add	x2, sp, 40
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	mov	x0, x2
	bl	print_vector
	mov	x1, x0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	libmin_printf
	add	x0, sp, 16
	bl	vector_norm
	str	d0, [sp]
	ldr	d0, [sp]
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	libmin_printf
	ldr	d0, [sp]
	adrp	x0, .LC14
	ldr	d1, [x0, #:lo12:.LC14]
	fsub	d0, d0, d1
	bl	libmin_fabs
	adrp	x0, .LC15
	ldr	d1, [x0, #:lo12:.LC15]
	fcmpe	d0, d1
	bmi	.L31
	mov	w0, 1
	bl	libmin_fail
.L31:
	add	x0, sp, 40
	bl	vector_norm
	str	d0, [sp]
	ldr	d0, [sp]
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	libmin_printf
	ldr	d0, [sp]
	adrp	x0, .LC16
	ldr	d1, [x0, #:lo12:.LC16]
	fsub	d0, d0, d1
	bl	libmin_fabs
	adrp	x0, .LC15
	ldr	d1, [x0, #:lo12:.LC15]
	fcmpe	d0, d1
	bmi	.L32
	mov	w0, 1
	bl	libmin_fail
.L32:
	add	x1, sp, 40
	add	x0, sp, 16
	bl	dot_prod
	str	d0, [sp]
	ldr	d0, [sp]
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	libmin_printf
	ldr	d1, [sp]
	fmov	d0, 6.0e+0
	fsub	d0, d1, d0
	bl	libmin_fabs
	adrp	x0, .LC15
	ldr	d1, [x0, #:lo12:.LC15]
	fcmpe	d0, d1
	bmi	.L33
	mov	w0, 1
	bl	libmin_fail
.L33:
	add	x1, sp, 40
	add	x0, sp, 16
	bl	vector_prod
	fmov	d3, d0
	fmov	d0, d2
	str	d3, [sp, 64]
	str	d1, [sp, 72]
	str	d0, [sp, 80]
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	libmin_printf
	add	x2, sp, 64
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	mov	x0, x2
	bl	print_vector
	mov	x1, x0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	libmin_printf
	ldr	d1, [sp, 64]
	fmov	d0, 1.0e+0
	fadd	d0, d1, d0
	bl	libmin_fabs
	adrp	x0, .LC15
	ldr	d1, [x0, #:lo12:.LC15]
	fcmpe	d0, d1
	bmi	.L34
	mov	w0, 1
	bl	libmin_fail
.L34:
	ldr	d1, [sp, 72]
	fmov	d0, 2.0e+0
	fsub	d0, d1, d0
	bl	libmin_fabs
	adrp	x0, .LC15
	ldr	d1, [x0, #:lo12:.LC15]
	fcmpe	d0, d1
	bmi	.L35
	mov	w0, 1
	bl	libmin_fail
.L35:
	ldr	d1, [sp, 80]
	fmov	d0, 1.0e+0
	fadd	d0, d1, d0
	bl	libmin_fabs
	adrp	x0, .LC15
	ldr	d1, [x0, #:lo12:.LC15]
	fcmpe	d0, d1
	bmi	.L36
	mov	w0, 1
	bl	libmin_fail
.L36:
	add	x1, sp, 40
	add	x0, sp, 16
	bl	get_angle
	str	d0, [sp, 8]
	ldr	d0, [sp, 8]
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	libmin_printf
	ldr	d0, [sp, 8]
	adrp	x0, .LC17
	ldr	d1, [x0, #:lo12:.LC17]
	fsub	d0, d0, d1
	bl	libmin_fabs
	adrp	x0, .LC15
	ldr	d1, [x0, #:lo12:.LC15]
	fcmpe	d0, d1
	bmi	.L37
	mov	w0, 1
	bl	libmin_fail
.L37:
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	libmin_printf
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 88]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L38
	bl	__stack_chk_fail
.L38:
	ldp	x29, x30, [sp, 96]
	add	sp, sp, 112
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE12:
	.size	test, .-test
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	1072693248
	.word	0
	.word	1073741824
	.word	0
	.word	1074266112
	.align	3
.LC1:
	.word	0
	.word	1072693248
	.word	0
	.word	1072693248
	.word	0
	.word	1072693248
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB13:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	bl	test
	bl	libmin_success
	mov	w0, 0
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE13:
	.size	main, .-main
	.local	vec_str.0
	.comm	vec_str.0,100,8
	.section	.rodata
	.align	3
.LC3:
	.word	-400107883
	.word	1041313291
	.align	3
.LC14:
	.word	-1305670058
	.word	1074655133
	.align	3
.LC15:
	.word	1202590843
	.word	1065646817
	.align	3
.LC16:
	.word	-1580547965
	.word	1073460805
	.align	3
.LC17:
	.word	-1514027511
	.word	1071173219
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
