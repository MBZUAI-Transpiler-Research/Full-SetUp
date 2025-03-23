	.arch armv8-a
	.file	"code.c"
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
	.section	.rodata
	.align	3
.LC0:
	.word	-1598689907
	.word	1051772663
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
