	.arch armv8-a
	.file	"libmin_strcmp.c"
	.text
	.align	2
	.global	libmin_strcmp
	.type	libmin_strcmp, %function
libmin_strcmp:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	b	.L2
.L4:
	ldr	x0, [sp, 8]
	add	x0, x0, 1
	str	x0, [sp, 8]
	ldr	x0, [sp]
	add	x0, x0, 1
	str	x0, [sp]
.L2:
	ldr	x0, [sp, 8]
	ldrb	w1, [x0]
	ldr	x0, [sp]
	ldrb	w0, [x0]
	cmp	w1, w0
	bne	.L3
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L3
	ldr	x0, [sp]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L4
.L3:
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	x0, [sp]
	ldrb	w0, [x0]
	sub	w0, w1, w0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_strcmp, .-libmin_strcmp
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
