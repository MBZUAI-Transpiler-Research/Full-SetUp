	.arch armv8-a
	.file	"libmin_strdup.c"
	.text
	.align	2
	.global	libmin_strdup
	.type	libmin_strdup, %function
libmin_strdup:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	libmin_strlen
	add	x0, x0, 1
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	bl	libmin_malloc
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L2
	mov	x0, 0
	b	.L3
.L2:
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	bl	libmin_memcpy
	nop
.L3:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_strdup, .-libmin_strdup
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
