	.arch armv8-a
	.file	"libmin_atol.c"
	.text
	.align	2
	.global	libmin_atol
	.type	libmin_atol, %function
libmin_atol:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	xzr, [sp, 24]
	str	wzr, [sp, 20]
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
	str	w0, [sp, 20]
.L4:
	ldr	x0, [sp, 8]
	add	x0, x0, 1
	str	x0, [sp, 8]
	b	.L6
.L7:
	ldr	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	mov	x2, x0
	ldr	x0, [sp, 8]
	add	x1, x0, 1
	str	x1, [sp, 8]
	ldrb	w0, [x0]
	sub	w0, w0, #48
	sxtw	x0, w0
	sub	x0, x2, x0
	str	x0, [sp, 24]
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
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bne	.L8
	ldr	x0, [sp, 24]
	neg	x0, x0
	b	.L10
.L8:
	ldr	x0, [sp, 24]
.L10:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_atol, .-libmin_atol
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
