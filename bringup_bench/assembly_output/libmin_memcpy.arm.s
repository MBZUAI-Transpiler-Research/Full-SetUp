	.arch armv8-a
	.file	"libmin_memcpy.c"
	.text
	.align	2
	.global	libmin_memcpy
	.type	libmin_memcpy, %function
libmin_memcpy:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 24]
	str	x0, [sp, 32]
	ldr	x0, [sp, 16]
	str	x0, [sp, 40]
	b	.L2
.L3:
	ldr	x1, [sp, 40]
	add	x0, x1, 1
	str	x0, [sp, 40]
	ldr	x0, [sp, 32]
	add	x2, x0, 1
	str	x2, [sp, 32]
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	sub	x0, x0, #1
	str	x0, [sp, 8]
.L2:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	bne	.L3
	ldr	x0, [sp, 24]
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_memcpy, .-libmin_memcpy
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
