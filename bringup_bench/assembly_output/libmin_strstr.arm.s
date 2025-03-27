	.arch armv8-a
	.file	"libmin_strstr.c"
	.text
	.align	2
	.global	libmin_strstr
	.type	libmin_strstr, %function
libmin_strstr:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	str	x0, [sp, 32]
	ldr	x0, [sp, 16]
	bl	libmin_strlen
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L4
	ldr	x0, [sp, 24]
	b	.L3
.L6:
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 32]
	bl	libmin_strncmp
	cmp	w0, 0
	bne	.L5
	ldr	x0, [sp, 32]
	b	.L3
.L5:
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
.L4:
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	x0, [sp, 32]
	bl	libmin_strchr
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	cmp	x0, 0
	bne	.L6
	mov	x0, 0
.L3:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_strstr, .-libmin_strstr
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
