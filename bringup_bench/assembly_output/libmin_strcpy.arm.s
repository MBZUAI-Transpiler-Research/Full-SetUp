	.arch armv8-a
	.file	"libmin_strcpy.c"
	.text
	.align	2
	.global	libmin_strcpy
	.type	libmin_strcpy, %function
libmin_strcpy:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	str	x0, [sp, 16]
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
	nop
.L2:
	ldr	x1, [sp, 16]
	add	x0, x1, 1
	str	x0, [sp, 16]
	ldr	x0, [sp, 24]
	add	x2, x0, 1
	str	x2, [sp, 24]
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L2
	ldr	x0, [sp, 8]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_strcpy, .-libmin_strcpy
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
