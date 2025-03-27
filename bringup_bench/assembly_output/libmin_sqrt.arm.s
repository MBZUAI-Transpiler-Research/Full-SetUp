	.arch armv8-a
	.file	"libmin_sqrt.c"
	.text
	.section	.rodata
	.align	3
	.type	__tiny, %object
	.size	__tiny, 8
__tiny:
	.word	-1023872167
	.word	27618847
	.text
	.align	2
	.global	libmin_sqrt
	.type	libmin_sqrt, %function
libmin_sqrt:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	str	d0, [sp, 8]
	mov	w0, -2147483648
	str	w0, [sp, 52]
	ldr	d0, [sp, 8]
	str	d0, [sp, 64]
	ldr	x0, [sp, 64]
	lsr	x0, x0, 32
	str	w0, [sp, 16]
	ldr	x0, [sp, 64]
	str	w0, [sp, 44]
	ldr	w0, [sp, 16]
	and	w1, w0, 2146435072
	mov	w0, 2146435072
	cmp	w1, w0
	bne	.L2
	ldr	d0, [sp, 8]
	fmul	d1, d0, d0
	ldr	d0, [sp, 8]
	fadd	d0, d1, d0
	b	.L3
.L2:
	ldr	w0, [sp, 16]
	cmp	w0, 0
	bgt	.L4
	ldr	w0, [sp, 52]
	mvn	w1, w0
	ldr	w0, [sp, 16]
	and	w0, w1, w0
	mov	w1, w0
	ldr	w0, [sp, 44]
	orr	w0, w1, w0
	cmp	w0, 0
	bne	.L5
	ldr	d0, [sp, 8]
	b	.L3
.L5:
	ldr	w0, [sp, 16]
	cmp	w0, 0
	bge	.L4
	ldr	d0, [sp, 8]
	fsub	d1, d0, d0
	ldr	d0, [sp, 8]
	fsub	d0, d0, d0
	fdiv	d0, d1, d0
	b	.L3
.L4:
	ldr	w0, [sp, 16]
	asr	w0, w0, 20
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L6
	b	.L7
.L8:
	ldr	w0, [sp, 28]
	sub	w0, w0, #21
	str	w0, [sp, 28]
	ldr	w0, [sp, 44]
	lsr	w1, w0, 11
	ldr	w0, [sp, 16]
	orr	w0, w1, w0
	str	w0, [sp, 16]
	ldr	w0, [sp, 44]
	lsl	w0, w0, 21
	str	w0, [sp, 44]
.L7:
	ldr	w0, [sp, 16]
	cmp	w0, 0
	beq	.L8
	str	wzr, [sp, 32]
	b	.L9
.L10:
	ldr	w0, [sp, 16]
	lsl	w0, w0, 1
	str	w0, [sp, 16]
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
.L9:
	ldr	w0, [sp, 16]
	and	w0, w0, 1048576
	cmp	w0, 0
	beq	.L10
	ldr	w0, [sp, 32]
	sub	w0, w0, #1
	ldr	w1, [sp, 28]
	sub	w0, w1, w0
	str	w0, [sp, 28]
	mov	w1, 32
	ldr	w0, [sp, 32]
	sub	w0, w1, w0
	ldr	w1, [sp, 44]
	lsr	w1, w1, w0
	ldr	w0, [sp, 16]
	orr	w0, w1, w0
	str	w0, [sp, 16]
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 44]
	lsl	w0, w1, w0
	str	w0, [sp, 44]
.L6:
	ldr	w0, [sp, 28]
	sub	w0, w0, #1023
	str	w0, [sp, 28]
	ldr	w0, [sp, 16]
	and	w0, w0, 1048575
	orr	w0, w0, 1048576
	str	w0, [sp, 16]
	ldr	w0, [sp, 28]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L11
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 44]
	and	w0, w1, w0
	lsr	w1, w0, 31
	ldr	w0, [sp, 16]
	add	w1, w1, w0
	ldr	w0, [sp, 16]
	add	w0, w1, w0
	str	w0, [sp, 16]
	ldr	w0, [sp, 44]
	lsl	w0, w0, 1
	str	w0, [sp, 44]
.L11:
	ldr	w0, [sp, 28]
	asr	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 44]
	and	w0, w1, w0
	lsr	w1, w0, 31
	ldr	w0, [sp, 16]
	add	w1, w1, w0
	ldr	w0, [sp, 16]
	add	w0, w1, w0
	str	w0, [sp, 16]
	ldr	w0, [sp, 44]
	lsl	w0, w0, 1
	str	w0, [sp, 44]
	str	wzr, [sp, 40]
	str	wzr, [sp, 20]
	ldr	w0, [sp, 20]
	str	w0, [sp, 48]
	ldr	w0, [sp, 48]
	str	w0, [sp, 24]
	mov	w0, 2097152
	str	w0, [sp, 36]
	b	.L12
.L14:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 36]
	add	w0, w1, w0
	str	w0, [sp, 60]
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	bgt	.L13
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 36]
	add	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 60]
	sub	w0, w1, w0
	str	w0, [sp, 16]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 36]
	add	w0, w1, w0
	str	w0, [sp, 24]
.L13:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 44]
	and	w0, w1, w0
	lsr	w1, w0, 31
	ldr	w0, [sp, 16]
	add	w1, w1, w0
	ldr	w0, [sp, 16]
	add	w0, w1, w0
	str	w0, [sp, 16]
	ldr	w0, [sp, 44]
	lsl	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 36]
	lsr	w0, w0, 1
	str	w0, [sp, 36]
.L12:
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bne	.L14
	ldr	w0, [sp, 52]
	str	w0, [sp, 36]
	b	.L15
.L20:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 36]
	add	w0, w1, w0
	str	w0, [sp, 56]
	ldr	w0, [sp, 20]
	str	w0, [sp, 60]
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	blt	.L16
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	bne	.L17
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	bhi	.L17
.L16:
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 36]
	add	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 56]
	and	w1, w1, w0
	ldr	w0, [sp, 52]
	cmp	w1, w0
	bne	.L18
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 40]
	and	w0, w1, w0
	cmp	w0, 0
	bne	.L18
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L18:
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 60]
	sub	w0, w1, w0
	str	w0, [sp, 16]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	bcs	.L19
	ldr	w0, [sp, 16]
	sub	w0, w0, #1
	str	w0, [sp, 16]
.L19:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 56]
	sub	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 36]
	add	w0, w1, w0
	str	w0, [sp, 48]
.L17:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 44]
	and	w0, w1, w0
	lsr	w1, w0, 31
	ldr	w0, [sp, 16]
	add	w1, w1, w0
	ldr	w0, [sp, 16]
	add	w0, w1, w0
	str	w0, [sp, 16]
	ldr	w0, [sp, 44]
	lsl	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 36]
	lsr	w0, w0, 1
	str	w0, [sp, 36]
.L15:
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bne	.L20
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 44]
	orr	w0, w1, w0
	cmp	w0, 0
	beq	.L21
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	fmov	d0, 1.0e+0
	fsub	d0, d0, d1
	str	d0, [sp, 72]
	ldr	d1, [sp, 72]
	fmov	d0, 1.0e+0
	fcmpe	d1, d0
	bge	.L28
	b	.L21
.L28:
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	fmov	d0, 1.0e+0
	fadd	d0, d1, d0
	str	d0, [sp, 72]
	ldr	w0, [sp, 48]
	cmn	w0, #1
	bne	.L23
	str	wzr, [sp, 48]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	b	.L21
.L23:
	ldr	d1, [sp, 72]
	fmov	d0, 1.0e+0
	fcmpe	d1, d0
	bgt	.L29
	b	.L30
.L29:
	ldr	w0, [sp, 48]
	cmn	w0, #2
	bne	.L26
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L26:
	ldr	w0, [sp, 48]
	add	w0, w0, 2
	str	w0, [sp, 48]
	b	.L21
.L30:
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	and	w0, w0, -2
	str	w0, [sp, 48]
.L21:
	ldr	w0, [sp, 24]
	asr	w1, w0, 1
	mov	w0, 1071644672
	add	w0, w1, w0
	str	w0, [sp, 16]
	ldr	w0, [sp, 48]
	lsr	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 24]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L27
	ldr	w0, [sp, 52]
	ldr	w1, [sp, 44]
	orr	w0, w1, w0
	str	w0, [sp, 44]
.L27:
	ldr	w0, [sp, 28]
	lsl	w0, w0, 20
	ldr	w1, [sp, 16]
	add	w0, w1, w0
	str	w0, [sp, 16]
	ldrsw	x0, [sp, 16]
	lsl	x1, x0, 32
	ldr	w0, [sp, 44]
	orr	x0, x1, x0
	str	x0, [sp, 64]
	ldr	d0, [sp, 64]
	str	d0, [sp, 72]
	ldr	d0, [sp, 72]
.L3:
	add	sp, sp, 80
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_sqrt, .-libmin_sqrt
	.section	.rodata
	.align	3
.LC0:
	.word	-1023872167
	.word	27618847
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
