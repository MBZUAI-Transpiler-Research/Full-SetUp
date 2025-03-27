	.arch armv8-a
	.file	"libmin_mread.c"
	.text
	.align	2
	.global	libmin_mread
	.type	libmin_mread, %function
libmin_mread:
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
	ldr	x0, [sp, 24]
	bl	libmin_meof
	cmp	w0, 0
	beq	.L2
	mov	x0, 0
	b	.L3
.L2:
	ldr	x0, [sp, 40]
	str	x0, [sp, 48]
	str	xzr, [sp, 56]
	b	.L4
.L6:
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 24]
	ldr	w0, [x0, 24]
	add	w3, w0, 1
	ldr	x2, [sp, 24]
	str	w3, [x2, 24]
	sxtw	x0, w0
	add	x1, x1, x0
	ldr	x0, [sp, 48]
	add	x2, x0, 1
	str	x2, [sp, 48]
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	str	x0, [sp, 56]
.L4:
	ldr	x0, [sp, 24]
	ldr	w0, [x0, 24]
	sxtw	x1, w0
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	cmp	x1, x0
	bcs	.L5
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bcs	.L5
	ldr	x0, [sp, 24]
	bl	libmin_meof
	cmp	w0, 0
	beq	.L6
.L5:
	ldr	x0, [sp, 56]
.L3:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_mread, .-libmin_mread
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
