	.arch armv8-a
	.file	"libmin_strcasestr.c"
	.text
	.align	2
	.global	libmin_strcasestr
	.type	libmin_strcasestr, %function
libmin_strcasestr:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	bl	libmin_strlen
	str	x0, [sp, 40]
	b	.L2
.L5:
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	libmin_strncasecmp
	cmp	w0, 0
	bne	.L3
	ldr	x0, [sp, 24]
	b	.L4
.L3:
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
.L2:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L5
	mov	x0, 0
.L4:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_strcasestr, .-libmin_strcasestr
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
