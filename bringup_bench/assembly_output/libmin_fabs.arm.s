	.arch armv8-a
	.file	"libmin_fabs.c"
	.text
	.align	2
	.global	libmin_fabs
	.type	libmin_fabs, %function
libmin_fabs:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	d0, [sp, 8]
	ldr	d0, [sp, 8]
	str	d0, [sp, 24]
	ldr	x0, [sp, 24]
	and	x0, x0, 9223372036854775807
	str	x0, [sp, 24]
	ldr	d0, [sp, 24]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_fabs, .-libmin_fabs
	.align	2
	.global	libmin_fabsf
	.type	libmin_fabsf, %function
libmin_fabsf:
.LFB4:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	s0, [sp, 12]
	ldr	s0, [sp, 12]
	str	s0, [sp, 24]
	ldr	w0, [sp, 24]
	and	w0, w0, 2147483647
	str	w0, [sp, 24]
	ldr	s0, [sp, 24]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	libmin_fabsf, .-libmin_fabsf
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
