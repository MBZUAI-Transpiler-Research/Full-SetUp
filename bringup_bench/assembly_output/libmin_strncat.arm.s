	.arch armv8-a
	.file	"libmin_strncat.c"
	.text
	.align	2
	.global	libmin_strncat
	.type	libmin_strncat, %function
libmin_strncat:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 40]
	str	x0, [sp, 56]
	ldr	x0, [sp, 40]
	bl	libmin_strlen
	mov	x1, x0
	ldr	x0, [sp, 40]
	add	x0, x0, x1
	str	x0, [sp, 40]
	b	.L2
.L4:
	ldr	x0, [sp, 24]
	sub	x0, x0, #1
	str	x0, [sp, 24]
	ldr	x1, [sp, 32]
	add	x0, x1, 1
	str	x0, [sp, 32]
	ldr	x0, [sp, 40]
	add	x2, x0, 1
	str	x2, [sp, 40]
	ldrb	w1, [x1]
	strb	w1, [x0]
.L2:
	ldr	x0, [sp, 24]
	cmp	x0, 0
	beq	.L3
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L4
.L3:
	ldr	x0, [sp, 40]
	add	x1, x0, 1
	str	x1, [sp, 40]
	strb	wzr, [x0]
	ldr	x0, [sp, 56]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_strncat, .-libmin_strncat
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
