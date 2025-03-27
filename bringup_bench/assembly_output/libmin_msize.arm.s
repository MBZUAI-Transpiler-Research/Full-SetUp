	.arch armv8-a
	.file	"libmin_msize.c"
	.text
	.align	2
	.global	libmin_msize
	.type	libmin_msize, %function
libmin_msize:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_msize, .-libmin_msize
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
