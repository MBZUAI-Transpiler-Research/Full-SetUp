	.arch armv8-a
	.file	"problem152.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	str	d8, [sp, 24]
	.cfi_offset 19, -48
	.cfi_offset 72, -40
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	xzr, [sp, 56]
	str	wzr, [sp, 52]
	b	.L2
.L6:
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcvt	d8, s0
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcvt	d0, s0
	bl	round
	fsub	d0, d8, d0
	fabs	d0, d0
	adrp	x0, .LC4
	ldr	d1, [x0, #:lo12:.LC4]
	fcmpe	d0, d1
	bmi	.L8
	b	.L3
.L8:
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcmpe	s0, #0.0
	bgt	.L9
	b	.L3
.L9:
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcvt	d0, s0
	bl	round
	fcvtzs	w0, d0
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	cmp	w0, 1
	bne	.L3
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcvt	d0, s0
	bl	round
	fcvtzs	w19, d0
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcvt	d0, s0
	bl	round
	fcvtzs	w0, d0
	mul	w0, w19, w0
	sxtw	x0, w0
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	str	x0, [sp, 56]
.L3:
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L2:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L6
	ldr	x0, [sp, 56]
	ldr	d8, [sp, 24]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 72
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC5:
	.string	"problem152.c"
	.align	3
.LC6:
	.string	"func0((float[]){}, 0) == 0"
	.align	3
.LC7:
	.string	"func0((float[]){5, 4}, 2) == 25"
	.align	3
.LC8:
	.string	"func0((float[]){0.1, 0.2, 0.3}, 3) == 0"
	.align	3
.LC9:
	.string	"func0((float[]){-10, -20, -30}, 3) == 0"
	.align	3
.LC10:
	.string	"func0((float[]){-1, -2, 8}, 3) == 0"
	.align	3
.LC11:
	.string	"func0((float[]){0.2, 3, 5}, 3) == 34"
	.align	3
.LC12:
	.string	"func0(lst, lst_size) == odd_sum"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #848
	.cfi_def_cfa_offset 848
	stp	x29, x30, [sp]
	.cfi_offset 29, -848
	.cfi_offset 30, -840
	mov	x29, sp
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 840]
	mov	x1, 0
	add	x0, sp, 40
	mov	w1, 0
	bl	func0
	cmp	x0, 0
	beq	.L11
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 21
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L11:
	fmov	s0, 5.0e+0
	str	s0, [sp, 40]
	fmov	s0, 4.0e+0
	str	s0, [sp, 44]
	add	x0, sp, 40
	mov	w1, 2
	bl	func0
	cmp	x0, 25
	beq	.L12
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 22
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L12:
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 40
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x0, sp, 40
	mov	w1, 3
	bl	func0
	cmp	x0, 0
	beq	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 23
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L13:
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 40
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x0, sp, 40
	mov	w1, 3
	bl	func0
	cmp	x0, 0
	beq	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 24
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L14:
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, sp, 40
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x0, sp, 40
	mov	w1, 3
	bl	func0
	cmp	x0, 0
	beq	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 25
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L15:
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	add	x0, sp, 40
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x0, sp, 40
	mov	w1, 3
	bl	func0
	cmp	x0, 34
	beq	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 26
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	__assert_fail
.L16:
	str	xzr, [sp, 32]
	str	wzr, [sp, 24]
	mov	w0, -99
	str	w0, [sp, 28]
	b	.L17
.L19:
	ldr	s0, [sp, 28]
	scvtf	s0, s0
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	str	w1, [sp, 24]
	movi	v1.2s, #0
	fadd	s0, s0, s1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 40
	str	s0, [x1, x0]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	ble	.L18
	ldr	w0, [sp, 28]
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	cmp	w0, 1
	bne	.L18
	ldr	w0, [sp, 28]
	mul	w0, w0, w0
	sxtw	x0, w0
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	str	x0, [sp, 32]
.L18:
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
.L17:
	ldr	w0, [sp, 28]
	cmp	w0, 99
	ble	.L19
	add	x0, sp, 40
	ldr	w1, [sp, 24]
	bl	func0
	mov	x1, x0
	ldr	x0, [sp, 32]
	cmp	x0, x1
	beq	.L20
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 37
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	__assert_fail
.L20:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 840]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L22
	bl	__stack_chk_fail
.L22:
	mov	w0, w1
	ldp	x29, x30, [sp]
	add	sp, sp, 848
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	1036831949
	.word	1045220557
	.word	1050253722
	.align	3
.LC1:
	.word	-1054867456
	.word	-1046478848
	.word	-1041235968
	.align	3
.LC2:
	.word	-1082130432
	.word	-1073741824
	.word	1090519040
	.align	3
.LC3:
	.word	1045220557
	.word	1077936128
	.word	1084227584
	.text
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
