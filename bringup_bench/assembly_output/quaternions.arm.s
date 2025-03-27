	.arch armv8-a
	.file	"quaternions.c"
	.text
	.section	.rodata
	.align	3
.LC1:
	.string	"%s: Invalid input."
	.text
	.align	2
	.global	quat_from_euler
	.type	quat_from_euler, %function
quat_from_euler:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -208]!
	.cfi_def_cfa_offset 208
	.cfi_offset 29, -208
	.cfi_offset 30, -200
	mov	x29, sp
	str	x0, [sp, 56]
	str	xzr, [sp, 112]
	str	xzr, [sp, 120]
	str	xzr, [sp, 128]
	str	xzr, [sp, 136]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L2
	adrp	x0, __func__.2
	add	x1, x0, :lo12:__func__.2
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	libmin_printf
	add	x0, sp, 176
	add	x1, sp, 112
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	b	.L4
.L2:
	ldr	x0, [sp, 56]
	ldr	d1, [x0, 16]
	fmov	d0, 5.0e-1
	fmul	d0, d1, d0
	bl	libmin_cos
	str	d0, [sp, 64]
	ldr	x0, [sp, 56]
	ldr	d1, [x0, 16]
	fmov	d0, 5.0e-1
	fmul	d0, d1, d0
	bl	libmin_sin
	str	d0, [sp, 72]
	ldr	x0, [sp, 56]
	ldr	d1, [x0, 8]
	fmov	d0, 5.0e-1
	fmul	d0, d1, d0
	bl	libmin_cos
	str	d0, [sp, 80]
	ldr	x0, [sp, 56]
	ldr	d1, [x0, 8]
	fmov	d0, 5.0e-1
	fmul	d0, d1, d0
	bl	libmin_sin
	str	d0, [sp, 88]
	ldr	x0, [sp, 56]
	ldr	d1, [x0]
	fmov	d0, 5.0e-1
	fmul	d0, d1, d0
	bl	libmin_cos
	str	d0, [sp, 96]
	ldr	x0, [sp, 56]
	ldr	d1, [x0]
	fmov	d0, 5.0e-1
	fmul	d0, d1, d0
	bl	libmin_sin
	str	d0, [sp, 104]
	ldr	d1, [sp, 96]
	ldr	d0, [sp, 80]
	fmul	d1, d1, d0
	ldr	d0, [sp, 64]
	fmul	d1, d1, d0
	ldr	d2, [sp, 104]
	ldr	d0, [sp, 88]
	fmul	d2, d2, d0
	ldr	d0, [sp, 72]
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	str	d0, [sp, 144]
	ldr	d1, [sp, 104]
	ldr	d0, [sp, 80]
	fmul	d1, d1, d0
	ldr	d0, [sp, 64]
	fmul	d1, d1, d0
	ldr	d2, [sp, 96]
	ldr	d0, [sp, 88]
	fmul	d2, d2, d0
	ldr	d0, [sp, 72]
	fmul	d0, d2, d0
	fsub	d0, d1, d0
	str	d0, [sp, 152]
	ldr	d1, [sp, 96]
	ldr	d0, [sp, 88]
	fmul	d1, d1, d0
	ldr	d0, [sp, 64]
	fmul	d1, d1, d0
	ldr	d2, [sp, 104]
	ldr	d0, [sp, 80]
	fmul	d2, d2, d0
	ldr	d0, [sp, 72]
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	str	d0, [sp, 160]
	ldr	d1, [sp, 96]
	ldr	d0, [sp, 80]
	fmul	d1, d1, d0
	ldr	d0, [sp, 72]
	fmul	d1, d1, d0
	ldr	d2, [sp, 104]
	ldr	d0, [sp, 88]
	fmul	d2, d2, d0
	ldr	d0, [sp, 64]
	fmul	d0, d2, d0
	fsub	d0, d1, d0
	str	d0, [sp, 168]
	add	x0, sp, 176
	add	x1, sp, 144
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
.L4:
	ldr	d3, [sp, 176]
	ldr	d2, [sp, 184]
	ldr	d1, [sp, 192]
	ldr	d0, [sp, 200]
	fmov	d5, d3
	fmov	d4, d2
	fmov	d2, d1
	fmov	d3, d0
	fmov	d0, d5
	fmov	d1, d4
	ldp	x29, x30, [sp], 208
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	quat_from_euler, .-quat_from_euler
	.align	2
	.global	euler_from_quat
	.type	euler_from_quat, %function
euler_from_quat:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	str	x0, [sp, 56]
	str	xzr, [sp, 64]
	str	xzr, [sp, 72]
	str	xzr, [sp, 80]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L6
	adrp	x0, __func__.1
	add	x1, x0, :lo12:__func__.1
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	libmin_printf
	add	x2, sp, 88
	add	x3, sp, 64
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	b	.L8
.L6:
	ldr	x0, [sp, 56]
	ldr	d1, [x0]
	ldr	x0, [sp, 56]
	ldr	d0, [x0, 8]
	fmul	d1, d1, d0
	ldr	x0, [sp, 56]
	ldr	d2, [x0, 16]
	ldr	x0, [sp, 56]
	ldr	d0, [x0, 24]
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	fadd	d3, d0, d0
	ldr	x0, [sp, 56]
	ldr	d1, [x0, 8]
	ldr	x0, [sp, 56]
	ldr	d0, [x0, 8]
	fmul	d1, d1, d0
	ldr	x0, [sp, 56]
	ldr	d2, [x0, 16]
	ldr	x0, [sp, 56]
	ldr	d0, [x0, 16]
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	fadd	d0, d0, d0
	fmov	d1, 1.0e+0
	fsub	d0, d1, d0
	fmov	d1, d0
	fmov	d0, d3
	bl	libmin_atan2
	str	d0, [sp, 64]
	ldr	x0, [sp, 56]
	ldr	d1, [x0]
	ldr	x0, [sp, 56]
	ldr	d0, [x0, 16]
	fmul	d1, d1, d0
	ldr	x0, [sp, 56]
	ldr	d2, [x0, 8]
	ldr	x0, [sp, 56]
	ldr	d0, [x0, 24]
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	fadd	d0, d0, d0
	bl	libmin_asin
	str	d0, [sp, 72]
	ldr	x0, [sp, 56]
	ldr	d1, [x0]
	ldr	x0, [sp, 56]
	ldr	d0, [x0, 24]
	fmul	d1, d1, d0
	ldr	x0, [sp, 56]
	ldr	d2, [x0, 8]
	ldr	x0, [sp, 56]
	ldr	d0, [x0, 16]
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	fadd	d3, d0, d0
	ldr	x0, [sp, 56]
	ldr	d1, [x0, 16]
	ldr	x0, [sp, 56]
	ldr	d0, [x0, 16]
	fmul	d1, d1, d0
	ldr	x0, [sp, 56]
	ldr	d2, [x0, 24]
	ldr	x0, [sp, 56]
	ldr	d0, [x0, 24]
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	fadd	d0, d0, d0
	fmov	d1, 1.0e+0
	fsub	d0, d1, d0
	fmov	d1, d0
	fmov	d0, d3
	bl	libmin_atan2
	str	d0, [sp, 80]
	add	x2, sp, 88
	add	x3, sp, 64
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
.L8:
	ldr	d2, [sp, 88]
	ldr	d1, [sp, 96]
	ldr	d0, [sp, 104]
	fmov	d3, d2
	fmov	d2, d0
	fmov	d0, d3
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	euler_from_quat, .-euler_from_quat
	.align	2
	.global	quaternion_multiply
	.type	quaternion_multiply, %function
quaternion_multiply:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	xzr, [sp, 64]
	str	xzr, [sp, 72]
	str	xzr, [sp, 80]
	str	xzr, [sp, 88]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L10
	ldr	x0, [sp, 48]
	cmp	x0, 0
	bne	.L11
.L10:
	adrp	x0, __func__.0
	add	x1, x0, :lo12:__func__.0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	libmin_printf
	add	x0, sp, 96
	add	x1, sp, 64
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	b	.L13
.L11:
	ldr	x0, [sp, 56]
	ldr	d1, [x0]
	ldr	x0, [sp, 48]
	ldr	d0, [x0]
	fmul	d1, d1, d0
	ldr	x0, [sp, 56]
	ldr	d2, [x0, 8]
	ldr	x0, [sp, 48]
	ldr	d0, [x0, 8]
	fmul	d0, d2, d0
	fsub	d1, d1, d0
	ldr	x0, [sp, 56]
	ldr	d2, [x0, 16]
	ldr	x0, [sp, 48]
	ldr	d0, [x0, 16]
	fmul	d0, d2, d0
	fsub	d1, d1, d0
	ldr	x0, [sp, 56]
	ldr	d2, [x0, 24]
	ldr	x0, [sp, 48]
	ldr	d0, [x0, 24]
	fmul	d0, d2, d0
	fsub	d0, d1, d0
	str	d0, [sp, 64]
	ldr	x0, [sp, 56]
	ldr	d1, [x0]
	ldr	x0, [sp, 48]
	ldr	d0, [x0, 8]
	fmul	d1, d1, d0
	ldr	x0, [sp, 56]
	ldr	d2, [x0, 8]
	ldr	x0, [sp, 48]
	ldr	d0, [x0]
	fmul	d0, d2, d0
	fadd	d1, d1, d0
	ldr	x0, [sp, 56]
	ldr	d2, [x0, 16]
	ldr	x0, [sp, 48]
	ldr	d0, [x0, 24]
	fmul	d0, d2, d0
	fadd	d1, d1, d0
	ldr	x0, [sp, 56]
	ldr	d2, [x0, 24]
	ldr	x0, [sp, 48]
	ldr	d0, [x0, 16]
	fmul	d0, d2, d0
	fsub	d0, d1, d0
	str	d0, [sp, 72]
	ldr	x0, [sp, 56]
	ldr	d1, [x0]
	ldr	x0, [sp, 48]
	ldr	d0, [x0, 16]
	fmul	d1, d1, d0
	ldr	x0, [sp, 56]
	ldr	d2, [x0, 8]
	ldr	x0, [sp, 48]
	ldr	d0, [x0, 24]
	fmul	d0, d2, d0
	fsub	d1, d1, d0
	ldr	x0, [sp, 56]
	ldr	d2, [x0, 16]
	ldr	x0, [sp, 48]
	ldr	d0, [x0]
	fmul	d0, d2, d0
	fadd	d1, d1, d0
	ldr	x0, [sp, 56]
	ldr	d2, [x0, 24]
	ldr	x0, [sp, 48]
	ldr	d0, [x0, 8]
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	str	d0, [sp, 80]
	ldr	x0, [sp, 56]
	ldr	d1, [x0]
	ldr	x0, [sp, 48]
	ldr	d0, [x0, 24]
	fmul	d1, d1, d0
	ldr	x0, [sp, 56]
	ldr	d2, [x0, 8]
	ldr	x0, [sp, 48]
	ldr	d0, [x0, 16]
	fmul	d0, d2, d0
	fadd	d1, d1, d0
	ldr	x0, [sp, 56]
	ldr	d2, [x0, 16]
	ldr	x0, [sp, 48]
	ldr	d0, [x0, 8]
	fmul	d0, d2, d0
	fsub	d1, d1, d0
	ldr	x0, [sp, 56]
	ldr	d2, [x0, 24]
	ldr	x0, [sp, 48]
	ldr	d0, [x0]
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	str	d0, [sp, 88]
	add	x0, sp, 96
	add	x1, sp, 64
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
.L13:
	ldr	d3, [sp, 96]
	ldr	d2, [sp, 104]
	ldr	d1, [sp, 112]
	ldr	d0, [sp, 120]
	fmov	d5, d3
	fmov	d4, d2
	fmov	d2, d1
	fmov	d3, d0
	fmov	d0, d5
	fmov	d1, d4
	ldp	x29, x30, [sp], 128
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	quaternion_multiply, .-quaternion_multiply
	.section	.rodata
	.align	3
.LC2:
	.string	"Euler: %.4lf, %.4lf, %.4lf\n"
	.align	3
.LC3:
	.string	"Quaternion: %.4lf %+.4lf %+.4lf %+.4lf\n"
	.align	3
.LC4:
	.string	"All tests passed!\n"
	.text
	.align	2
	.type	test, %function
test:
.LFB6:
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
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 24
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	add	x0, sp, 24
	bl	euler_from_quat
	fmov	d3, d0
	fmov	d0, d2
	str	d3, [sp]
	str	d1, [sp, 8]
	str	d0, [sp, 16]
	ldr	d0, [sp, 8]
	ldr	d1, [sp]
	ldr	d2, [sp, 16]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	libmin_printf
	mov	x0, sp
	bl	quat_from_euler
	fmov	d5, d0
	fmov	d4, d1
	fmov	d1, d2
	fmov	d0, d3
	str	d5, [sp, 56]
	str	d4, [sp, 64]
	str	d1, [sp, 72]
	str	d0, [sp, 80]
	ldr	d0, [sp, 56]
	ldr	d1, [sp, 64]
	ldr	d2, [sp, 72]
	ldr	d3, [sp, 80]
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	libmin_printf
	ldr	d1, [sp, 56]
	ldr	d0, [sp, 24]
	fsub	d0, d1, d0
	bl	libmin_fabs
	adrp	x0, .LC5
	ldr	d1, [x0, #:lo12:.LC5]
	fcmpe	d0, d1
	bmi	.L15
	mov	w0, 1
	bl	libmin_fail
.L15:
	ldr	d1, [sp, 64]
	ldr	d0, [sp, 32]
	fsub	d0, d1, d0
	bl	libmin_fabs
	adrp	x0, .LC5
	ldr	d1, [x0, #:lo12:.LC5]
	fcmpe	d0, d1
	bmi	.L16
	mov	w0, 1
	bl	libmin_fail
.L16:
	ldr	d1, [sp, 72]
	ldr	d0, [sp, 40]
	fsub	d0, d1, d0
	bl	libmin_fabs
	adrp	x0, .LC5
	ldr	d1, [x0, #:lo12:.LC5]
	fcmpe	d0, d1
	bmi	.L17
	mov	w0, 1
	bl	libmin_fail
.L17:
	ldr	d1, [sp, 80]
	ldr	d0, [sp, 48]
	fsub	d0, d1, d0
	bl	libmin_fabs
	adrp	x0, .LC5
	ldr	d1, [x0, #:lo12:.LC5]
	fcmpe	d0, d1
	bmi	.L18
	mov	w0, 1
	bl	libmin_fail
.L18:
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	libmin_printf
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 88]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L19
	bl	__stack_chk_fail
.L19:
	ldp	x29, x30, [sp, 96]
	add	sp, sp, 112
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	test, .-test
	.section	.rodata
	.align	3
.LC0:
	.word	769658139
	.word	1072078992
	.word	769658139
	.word	1072078992
	.word	0
	.word	0
	.word	0
	.word	0
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
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
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__func__.2, %object
	.size	__func__.2, 16
__func__.2:
	.string	"quat_from_euler"
	.align	3
	.type	__func__.1, %object
	.size	__func__.1, 16
__func__.1:
	.string	"euler_from_quat"
	.align	3
	.type	__func__.0, %object
	.size	__func__.0, 20
__func__.0:
	.string	"quaternion_multiply"
	.align	3
.LC5:
	.word	1202590843
	.word	1065646817
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
