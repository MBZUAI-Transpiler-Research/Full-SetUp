	.arch armv8-a
	.file	"libmin_strchr.c"
	.text
	.align	2
	.global	libmin_strchr
	.type	libmin_strchr, %function
libmin_strchr:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	strb	w1, [sp, 7]
.L4:
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	ldrb	w1, [sp, 7]
	cmp	w1, w0
	bne	.L2
	ldr	x0, [sp, 8]
	b	.L3
.L2:
	ldr	x0, [sp, 8]
	add	x1, x0, 1
	str	x1, [sp, 8]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L4
	mov	x0, 0
.L3:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_strchr, .-libmin_strchr
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
