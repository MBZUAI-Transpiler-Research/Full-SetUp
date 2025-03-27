	.arch armv8-a
	.file	"libmin_atoi.c"
	.text
	.align	2
	.global	libmin_atoi
	.type	libmin_atoi, %function
libmin_atoi:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	wzr, [sp, 24]
	str	wzr, [sp, 28]
	b	.L2
.L3:
	ldr	x0, [sp, 8]
	add	x0, x0, 1
	str	x0, [sp, 8]
.L2:
	adrp	x0, :got:_pctype
	ldr	x0, [x0, :got_lo12:_pctype]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	and	x0, x0, 255
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 8
	cmp	w0, 0
	bne	.L3
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	cmp	w0, 43
	beq	.L4
	cmp	w0, 45
	bne	.L6
	mov	w0, 1
	str	w0, [sp, 28]
.L4:
	ldr	x0, [sp, 8]
	add	x0, x0, 1
	str	x0, [sp, 8]
	b	.L6
.L7:
	ldr	w1, [sp, 24]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w2, w0
	ldr	x0, [sp, 8]
	add	x1, x0, 1
	str	x1, [sp, 8]
	ldrb	w0, [x0]
	sub	w0, w0, #48
	sub	w0, w2, w0
	str	w0, [sp, 24]
.L6:
	adrp	x0, :got:_pctype
	ldr	x0, [x0, :got_lo12:_pctype]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	and	x0, x0, 255
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 4
	cmp	w0, 0
	bne	.L7
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L8
	ldr	w0, [sp, 24]
	neg	w0, w0
	b	.L10
.L8:
	ldr	w0, [sp, 24]
.L10:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_atoi, .-libmin_atoi
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
