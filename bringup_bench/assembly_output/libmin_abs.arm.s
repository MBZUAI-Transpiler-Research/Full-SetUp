	.arch armv8-a
	.file	"libmin_abs.c"
	.text
	.align	2
	.global	libmin_abs
	.type	libmin_abs, %function
libmin_abs:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	cmp	w0, 0
	csneg	w0, w0, w0, ge
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_abs, .-libmin_abs
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
