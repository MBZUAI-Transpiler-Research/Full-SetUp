	.arch armv8-a
	.file	"libmin_strcat.c"
	.text
	.align	2
	.global	libmin_strcat
	.type	libmin_strcat, %function
libmin_strcat:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	libmin_strlen
	mov	x1, x0
	ldr	x0, [sp, 24]
	add	x0, x0, x1
	ldr	x1, [sp, 16]
	bl	libmin_strcpy
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_strcat, .-libmin_strcat
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
