	.arch armv8-a
	.file	"problem33.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	str	xzr, [sp, 32]
	ldr	x0, [sp, 8]
	ldr	d0, [x0]
	str	d0, [sp, 40]
	mov	w0, 1
	str	w0, [sp, 16]
	b	.L2
.L5:
	fmov	d0, 1.0e+0
	str	d0, [sp, 56]
	str	wzr, [sp, 20]
	b	.L3
.L4:
	ldr	d1, [sp, 56]
	ldr	d0, [sp, 32]
	fmul	d0, d1, d0
	str	d0, [sp, 56]
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L3:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	blt	.L4
	ldrsw	x0, [sp, 16]
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	d0, [sp, 56]
	fmul	d0, d1, d0
	ldr	d1, [sp, 40]
	fadd	d0, d1, d0
	str	d0, [sp, 40]
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 16]
.L2:
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L5
	b	.L6
.L15:
	str	xzr, [sp, 48]
	mov	w0, 1
	str	w0, [sp, 16]
	b	.L7
.L10:
	fmov	d0, 1.0e+0
	str	d0, [sp, 56]
	mov	w0, 1
	str	w0, [sp, 24]
	b	.L8
.L9:
	ldr	d1, [sp, 56]
	ldr	d0, [sp, 32]
	fmul	d0, d1, d0
	str	d0, [sp, 56]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L8:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	blt	.L9
	ldr	w0, [sp, 16]
	scvtf	d1, w0
	ldrsw	x0, [sp, 16]
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fmul	d1, d1, d0
	ldr	d0, [sp, 56]
	fmul	d0, d1, d0
	ldr	d1, [sp, 48]
	fadd	d0, d1, d0
	str	d0, [sp, 48]
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 16]
.L7:
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L10
	ldr	d0, [sp, 48]
	ldr	d1, [sp, 40]
	fdiv	d0, d1, d0
	ldr	d1, [sp, 32]
	fsub	d0, d1, d0
	str	d0, [sp, 32]
	ldr	x0, [sp, 8]
	ldr	d0, [x0]
	str	d0, [sp, 40]
	mov	w0, 1
	str	w0, [sp, 16]
	b	.L11
.L14:
	fmov	d0, 1.0e+0
	str	d0, [sp, 56]
	str	wzr, [sp, 28]
	b	.L12
.L13:
	ldr	d1, [sp, 56]
	ldr	d0, [sp, 32]
	fmul	d0, d1, d0
	str	d0, [sp, 56]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L12:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	blt	.L13
	ldrsw	x0, [sp, 16]
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	d0, [sp, 56]
	fmul	d0, d1, d0
	ldr	d1, [sp, 40]
	fadd	d0, d1, d0
	str	d0, [sp, 40]
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 16]
.L11:
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L14
.L6:
	ldr	d0, [sp, 40]
	fabs	d0, d0
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	fcmpe	d0, d1
	bgt	.L15
	ldr	d0, [sp, 32]
	add	sp, sp, 64
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.align	2
	.global	evaluate_polynomial
	.type	evaluate_polynomial, %function
evaluate_polynomial:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	d0, [sp, 8]
	str	xzr, [sp, 48]
	fmov	d0, 1.0e+0
	str	d0, [sp, 56]
	str	wzr, [sp, 44]
	b	.L18
.L20:
	ldr	w0, [sp, 44]
	cmp	w0, 0
	ble	.L19
	ldr	d1, [sp, 56]
	ldr	d0, [sp, 8]
	fmul	d0, d1, d0
	str	d0, [sp, 56]
.L19:
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	d0, [sp, 56]
	fmul	d0, d1, d0
	ldr	d1, [sp, 48]
	fadd	d0, d1, d0
	str	d0, [sp, 48]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L18:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L20
	ldr	d0, [sp, 48]
	add	sp, sp, 64
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	evaluate_polynomial, .-evaluate_polynomial
	.section	.rodata
	.align	3
.LC1:
	.string	"problem33.c"
	.align	3
.LC2:
	.string	"fabs(evaluate_polynomial(coeffs, ncoeff, solution)) < 1e-3"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -160]!
	.cfi_def_cfa_offset 160
	.cfi_offset 29, -160
	.cfi_offset 30, -152
	mov	x29, sp
	.cfi_def_cfa_register 29
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	str	x27, [sp, 80]
	sub	sp, sp, #16
	.cfi_offset 19, -144
	.cfi_offset 20, -136
	.cfi_offset 21, -128
	.cfi_offset 22, -120
	.cfi_offset 23, -112
	.cfi_offset 24, -104
	.cfi_offset 25, -96
	.cfi_offset 26, -88
	.cfi_offset 27, -80
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [x29, 152]
	mov	x1, 0
	str	wzr, [x29, 108]
	b	.L23
.L31:
	mov	x0, sp
	mov	x19, x0
	bl	rand
	negs	w1, w0
	and	w0, w0, 3
	and	w1, w1, 3
	csneg	w0, w0, w1, mi
	add	w0, w0, 1
	lsl	w0, w0, 1
	str	w0, [x29, 116]
	ldr	w0, [x29, 116]
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 128]
	sxtw	x1, w0
	mov	x24, x1
	mov	x25, 0
	lsr	x1, x24, 58
	lsl	x21, x25, 6
	orr	x21, x1, x21
	lsl	x20, x24, 6
	sxtw	x1, w0
	mov	x26, x1
	mov	x27, 0
	lsr	x1, x26, 58
	lsl	x23, x27, 6
	orr	x23, x1, x23
	lsl	x22, x26, 6
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
.L24:
	cmp	sp, x1
	beq	.L25
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L24
.L25:
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L26
	str	xzr, [sp, 1024]
.L26:
	add	x0, sp, 16
	add	x0, x0, 7
	lsr	x0, x0, 3
	lsl	x0, x0, 3
	str	x0, [x29, 136]
	str	wzr, [x29, 112]
	b	.L27
.L29:
	bl	rand
	mov	w1, w0
	mov	w0, 3121
	movk	w0, 0x30c3, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 2
	asr	w0, w1, 31
	sub	w0, w2, w0
	mov	w2, 21
	mul	w0, w0, w2
	sub	w0, w1, w0
	sub	w0, w0, #10
	scvtf	d0, w0
	str	d0, [x29, 120]
	ldr	d0, [x29, 120]
	fcmp	d0, #0.0
	bne	.L28
	fmov	d0, 1.0e+0
	str	d0, [x29, 120]
.L28:
	ldr	x0, [x29, 136]
	ldrsw	x1, [x29, 112]
	ldr	d0, [x29, 120]
	str	d0, [x0, x1, lsl 3]
	ldr	w0, [x29, 112]
	add	w0, w0, 1
	str	w0, [x29, 112]
.L27:
	ldr	w1, [x29, 112]
	ldr	w0, [x29, 116]
	cmp	w1, w0
	blt	.L29
	ldr	w1, [x29, 116]
	ldr	x0, [x29, 136]
	bl	func0
	str	d0, [x29, 144]
	ldr	d0, [x29, 144]
	ldr	w1, [x29, 116]
	ldr	x0, [x29, 136]
	bl	evaluate_polynomial
	fabs	d0, d0
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fcmpe	d0, d1
	bmi	.L30
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 76
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L30:
	mov	sp, x19
	ldr	w0, [x29, 108]
	add	w0, w0, 1
	str	w0, [x29, 108]
.L23:
	ldr	w0, [x29, 108]
	cmp	w0, 99
	ble	.L31
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [x29, 152]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L33
	bl	__stack_chk_fail
.L33:
	mov	w0, w1
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 160
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align	3
.LC0:
	.word	-1598689907
	.word	1051772663
	.align	3
.LC3:
	.word	-755914244
	.word	1062232653
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
