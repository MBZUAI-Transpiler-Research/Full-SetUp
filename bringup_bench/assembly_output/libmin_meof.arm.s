	.arch armv8-a
	.file	"libmin_meof.c"
	.text
	.align	2
	.global	libmin_meof
	.type	libmin_meof, %function
libmin_meof:
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
	cset	w0, cs
	and	w0, w0, 255
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_meof, .-libmin_meof
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
