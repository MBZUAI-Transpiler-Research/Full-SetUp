	.arch armv8-a
	.file	"libmin_mgets.c"
	.text
	.align	2
	.global	libmin_mgets
	.type	libmin_mgets, %function
libmin_mgets:
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
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 24]
	ldr	w0, [x0, 24]
	sxtw	x0, w0
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 10
	beq	.L5
	ldr	x0, [sp, 32]
	sub	x0, x0, #1
	ldr	x1, [sp, 56]
	cmp	x1, x0
	bcs	.L5
	ldr	x0, [sp, 24]
	bl	libmin_meof
	cmp	w0, 0
	beq	.L6
.L5:
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 24]
	ldr	w0, [x0, 24]
	sxtw	x0, w0
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 10
	bne	.L7
	ldr	x0, [sp, 24]
	ldr	w0, [x0, 24]
	add	w1, w0, 1
	ldr	x0, [sp, 24]
	str	w1, [x0, 24]
.L7:
	ldr	x0, [sp, 48]
	strb	wzr, [x0]
	ldr	x0, [sp, 40]
.L3:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_mgets, .-libmin_mgets
	.align	2
	.global	libmin_getline
	.type	libmin_getline, %function
libmin_getline:
.LFB4:
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
	ldr	x0, [x0]
	cmp	x0, 0
	bne	.L9
	ldr	x0, [sp, 32]
	mov	x1, 80
	str	x1, [x0]
	ldr	x0, [sp, 32]
	ldr	x0, [x0]
	bl	libmin_malloc
	mov	x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0]
.L9:
	str	wzr, [sp, 52]
.L15:
	ldrsw	x1, [sp, 52]
	ldr	x0, [sp, 32]
	ldr	x0, [x0]
	sub	x0, x0, #1
	cmp	x1, x0
	bne	.L10
	ldr	x0, [sp, 32]
	ldr	x0, [x0]
	lsl	x0, x0, 1
	bl	libmin_malloc
	str	x0, [sp, 56]
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldr	x0, [sp, 32]
	ldr	x0, [x0]
	mov	x2, x0
	ldr	x0, [sp, 56]
	bl	libmin_strncpy
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	bl	libmin_free
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 56]
	str	x1, [x0]
	str	xzr, [sp, 56]
	ldr	x0, [sp, 32]
	ldr	x0, [x0]
	lsl	x1, x0, 1
	ldr	x0, [sp, 32]
	str	x1, [x0]
.L10:
	ldr	x0, [sp, 24]
	bl	libmin_mgetc
	strb	w0, [sp, 51]
	ldrb	w0, [sp, 51]
	cmp	w0, 10
	bne	.L11
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 52]
	add	x0, x1, x0
	strb	wzr, [x0]
	nop
	ldr	w0, [sp, 52]
	cmp	w0, 0
	ble	.L16
	b	.L19
.L11:
	ldrb	w0, [sp, 51]
	cmp	w0, 8
	bne	.L13
	ldr	w0, [sp, 52]
	cmp	w0, 0
	ble	.L13
	ldr	w0, [sp, 52]
	sub	w0, w0, #2
	str	w0, [sp, 52]
	b	.L14
.L13:
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 52]
	add	x0, x1, x0
	ldrb	w1, [sp, 51]
	strb	w1, [x0]
.L14:
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
	b	.L15
.L19:
	ldr	w0, [sp, 52]
	b	.L18
.L16:
	mov	w0, -1
.L18:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	libmin_getline, .-libmin_getline
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
