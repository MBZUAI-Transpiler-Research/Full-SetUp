	.arch armv8-a
	.file	"libmin_strpbrk.c"
	.text
	.align	2
	.global	libmin_strpbrk
	.type	libmin_strpbrk, %function
libmin_strpbrk:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	libmin_strcspn
	mov	x1, x0
	ldr	x0, [sp, 24]
	add	x0, x0, x1
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L2
	ldr	x0, [sp, 24]
	b	.L4
.L2:
	mov	x0, 0
.L4:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_strpbrk, .-libmin_strpbrk
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
