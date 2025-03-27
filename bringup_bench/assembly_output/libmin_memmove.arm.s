	.arch armv8-a
	.file	"libmin_memmove.c"
	.text
	.align	2
	.global	libmin_memmove
	.type	libmin_memmove, %function
libmin_memmove:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 16]
	str	x0, [sp, 48]
	ldr	x0, [sp, 24]
	str	x0, [sp, 56]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 48]
	cmp	x1, x0
	bcs	.L2
	str	xzr, [sp, 40]
	b	.L3
.L4:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 40]
	add	x1, x1, x0
	ldr	x2, [sp, 56]
	ldr	x0, [sp, 40]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L3:
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 8]
	cmp	x1, x0
	bcc	.L4
	b	.L5
.L2:
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 48]
	cmp	x1, x0
	bls	.L5
	ldr	x0, [sp, 8]
	str	x0, [sp, 40]
	b	.L6
.L7:
	ldr	x0, [sp, 40]
	sub	x0, x0, #1
	ldr	x1, [sp, 48]
	add	x1, x1, x0
	ldr	x0, [sp, 40]
	sub	x0, x0, #1
	ldr	x2, [sp, 56]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	x0, [sp, 40]
	sub	x0, x0, #1
	str	x0, [sp, 40]
.L6:
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L7
.L5:
	ldr	x0, [sp, 24]
	add	sp, sp, 64
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_memmove, .-libmin_memmove
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
