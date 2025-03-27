	.arch armv8-a
	.file	"libmin_strncmp.c"
	.text
	.align	2
	.global	libmin_strncmp
	.type	libmin_strncmp, %function
libmin_strncmp:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	x1, [sp]
	mov	x1, x2
	b	.L2
.L5:
	ldr	x0, [sp, 8]
	add	x2, x0, 1
	str	x2, [sp, 8]
	ldrb	w0, [x0]
	strb	w0, [sp, 30]
	ldr	x0, [sp]
	add	x2, x0, 1
	str	x2, [sp]
	ldrb	w0, [x0]
	strb	w0, [sp, 31]
	ldrb	w2, [sp, 30]
	ldrb	w0, [sp, 31]
	cmp	w2, w0
	beq	.L3
	ldrb	w1, [sp, 30]
	ldrb	w0, [sp, 31]
	sub	w0, w1, w0
	b	.L4
.L3:
	ldrb	w0, [sp, 30]
	cmp	w0, 0
	bne	.L2
	mov	w0, 0
	b	.L4
.L2:
	mov	x0, x1
	sub	x1, x0, #1
	cmp	x0, 0
	bne	.L5
	mov	w0, 0
.L4:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_strncmp, .-libmin_strncmp
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
