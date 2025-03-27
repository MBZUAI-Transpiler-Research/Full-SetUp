	.arch armv8-a
	.file	"libmin_atof.c"
	.text
	.align	2
	.global	libmin_atof
	.type	libmin_atof, %function
libmin_atof:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 8]
	str	xzr, [sp, 40]
	str	wzr, [sp, 24]
	b	.L2
.L4:
	ldr	d1, [sp, 40]
	fmov	d0, 1.0e+1
	fmul	d1, d1, d0
	ldr	w0, [sp, 28]
	sub	w0, w0, #48
	scvtf	d0, w0
	fadd	d0, d1, d0
	str	d0, [sp, 40]
.L2:
	ldr	x0, [sp, 8]
	add	x1, x0, 1
	str	x1, [sp, 8]
	ldrb	w0, [x0]
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	beq	.L3
	adrp	x0, :got:_pctype
	ldr	x0, [x0, :got_lo12:_pctype]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 4
	cmp	w0, 0
	bne	.L4
.L3:
	ldr	w0, [sp, 28]
	cmp	w0, 46
	bne	.L5
	b	.L6
.L7:
	ldr	d1, [sp, 40]
	fmov	d0, 1.0e+1
	fmul	d1, d1, d0
	ldr	w0, [sp, 28]
	sub	w0, w0, #48
	scvtf	d0, w0
	fadd	d0, d1, d0
	str	d0, [sp, 40]
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	str	w0, [sp, 24]
.L6:
	ldr	x0, [sp, 8]
	add	x1, x0, 1
	str	x1, [sp, 8]
	ldrb	w0, [x0]
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	beq	.L5
	adrp	x0, :got:_pctype
	ldr	x0, [x0, :got_lo12:_pctype]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 4
	cmp	w0, 0
	bne	.L7
.L5:
	ldr	w0, [sp, 28]
	cmp	w0, 101
	beq	.L8
	ldr	w0, [sp, 28]
	cmp	w0, 69
	bne	.L14
.L8:
	mov	w0, 1
	str	w0, [sp, 32]
	str	wzr, [sp, 36]
	ldr	x0, [sp, 8]
	add	x1, x0, 1
	str	x1, [sp, 8]
	ldrb	w0, [x0]
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 43
	bne	.L10
	ldr	x0, [sp, 8]
	add	x1, x0, 1
	str	x1, [sp, 8]
	ldrb	w0, [x0]
	str	w0, [sp, 28]
	b	.L12
.L10:
	ldr	w0, [sp, 28]
	cmp	w0, 45
	bne	.L12
	ldr	x0, [sp, 8]
	add	x1, x0, 1
	str	x1, [sp, 8]
	ldrb	w0, [x0]
	str	w0, [sp, 28]
	mov	w0, -1
	str	w0, [sp, 32]
	b	.L12
.L13:
	ldr	w1, [sp, 36]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 28]
	sub	w0, w0, #48
	add	w0, w1, w0
	str	w0, [sp, 36]
	ldr	x0, [sp, 8]
	add	x1, x0, 1
	str	x1, [sp, 8]
	ldrb	w0, [x0]
	str	w0, [sp, 28]
.L12:
	adrp	x0, :got:_pctype
	ldr	x0, [x0, :got_lo12:_pctype]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 4
	cmp	w0, 0
	bne	.L13
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 32]
	mul	w0, w1, w0
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	b	.L14
.L15:
	ldr	d1, [sp, 40]
	fmov	d0, 1.0e+1
	fmul	d0, d1, d0
	str	d0, [sp, 40]
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	str	w0, [sp, 24]
.L14:
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bgt	.L15
	b	.L16
.L17:
	ldr	d0, [sp, 40]
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	fmul	d0, d0, d1
	str	d0, [sp, 40]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L16:
	ldr	w0, [sp, 24]
	cmp	w0, 0
	blt	.L17
	ldr	d0, [sp, 40]
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_atof, .-libmin_atof
	.section	.rodata
	.align	3
.LC0:
	.word	-1717986918
	.word	1069128089
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
