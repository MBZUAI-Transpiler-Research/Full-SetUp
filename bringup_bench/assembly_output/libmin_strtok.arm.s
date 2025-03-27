	.arch armv8-a
	.file	"libmin_strtok.c"
	.text
	.align	2
	.global	libmin_strtok
	.type	libmin_strtok, %function
libmin_strtok:
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
	cmp	x0, 0
	bne	.L2
	adrp	x0, p.0
	add	x0, x0, :lo12:p.0
	ldr	x0, [x0]
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L2
	mov	x0, 0
	b	.L3
.L2:
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	libmin_strspn
	mov	x1, x0
	ldr	x0, [sp, 24]
	add	x0, x0, x1
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L4
	adrp	x0, p.0
	add	x0, x0, :lo12:p.0
	str	xzr, [x0]
	adrp	x0, p.0
	add	x0, x0, :lo12:p.0
	ldr	x0, [x0]
	b	.L3
.L4:
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	libmin_strcspn
	mov	x1, x0
	ldr	x0, [sp, 24]
	add	x1, x0, x1
	adrp	x0, p.0
	add	x0, x0, :lo12:p.0
	str	x1, [x0]
	adrp	x0, p.0
	add	x0, x0, :lo12:p.0
	ldr	x0, [x0]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L5
	adrp	x0, p.0
	add	x0, x0, :lo12:p.0
	ldr	x0, [x0]
	add	x2, x0, 1
	adrp	x1, p.0
	add	x1, x1, :lo12:p.0
	str	x2, [x1]
	strb	wzr, [x0]
	b	.L6
.L5:
	adrp	x0, p.0
	add	x0, x0, :lo12:p.0
	str	xzr, [x0]
.L6:
	ldr	x0, [sp, 24]
.L3:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_strtok, .-libmin_strtok
	.local	p.0
	.comm	p.0,8,8
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
