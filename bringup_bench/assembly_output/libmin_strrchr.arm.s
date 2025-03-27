	.arch armv8-a
	.file	"libmin_strrchr.c"
	.text
	.align	2
	.global	libmin_strrchr
	.type	libmin_strrchr, %function
libmin_strrchr:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	str	xzr, [sp, 24]
.L3:
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	w0, [sp, 4]
	cmp	w0, w1
	bne	.L2
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
.L2:
	ldr	x0, [sp, 8]
	add	x1, x0, 1
	str	x1, [sp, 8]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L3
	ldr	x0, [sp, 24]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_strrchr, .-libmin_strrchr
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
