	.arch armv8-a
	.file	"libmin_mgetc.c"
	.text
	.align	2
	.global	libmin_mgetc
	.type	libmin_mgetc, %function
libmin_mgetc:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 24]
	sxtw	x1, w0
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 8]
	cmp	x1, x0
	bcc	.L2
	mov	w0, -1
	b	.L3
.L2:
	ldr	x0, [sp, 8]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 24]
	add	w3, w0, 1
	ldr	x2, [sp, 8]
	str	w3, [x2, 24]
	sxtw	x0, w0
	add	x0, x1, x0
	ldrb	w0, [x0]
.L3:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_mgetc, .-libmin_mgetc
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
