	.arch armv8-a
	.file	"libmin_strlen.c"
	.text
	.align	2
	.global	libmin_strlen
	.type	libmin_strlen, %function
libmin_strlen:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	cmp	x0, 0
	bne	.L2
	mov	x0, 0
	b	.L3
.L2:
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
	b	.L4
.L5:
	ldr	x0, [sp, 8]
	add	x0, x0, 1
	str	x0, [sp, 8]
.L4:
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L5
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 24]
	sub	x0, x1, x0
.L3:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_strlen, .-libmin_strlen
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
