	.arch armv8-a
	.file	"libmin_scanf.c"
	.text
	.align	2
	.global	libmin_sscanf
	.type	libmin_sscanf, %function
libmin_sscanf:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #272
	.cfi_def_cfa_offset 272
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -192
	.cfi_offset 30, -184
	add	x29, sp, 80
	str	x0, [sp, 8]
	str	x1, [sp]
	str	x2, [sp, 224]
	str	x3, [sp, 232]
	str	x4, [sp, 240]
	str	x5, [sp, 248]
	str	x6, [sp, 256]
	str	x7, [sp, 264]
	str	q0, [sp, 96]
	str	q1, [sp, 112]
	str	q2, [sp, 128]
	str	q3, [sp, 144]
	str	q4, [sp, 160]
	str	q5, [sp, 176]
	str	q6, [sp, 192]
	str	q7, [sp, 208]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	str	wzr, [sp, 24]
	str	wzr, [sp, 28]
	add	x0, sp, 272
	str	x0, [sp, 40]
	add	x0, sp, 272
	str	x0, [sp, 48]
	add	x0, sp, 224
	str	x0, [sp, 56]
	mov	w0, -48
	str	w0, [sp, 64]
	mov	w0, -128
	str	w0, [sp, 68]
	str	wzr, [sp, 20]
	b	.L2
.L22:
	ldrsw	x0, [sp, 20]
	ldr	x1, [sp]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 37
	bne	.L3
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
	ldrsw	x0, [sp, 20]
	ldr	x1, [sp]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 120
	beq	.L4
	cmp	w0, 120
	bgt	.L20
	cmp	w0, 99
	beq	.L6
	cmp	w0, 100
	beq	.L7
	b	.L20
.L6:
	ldrsw	x0, [sp, 24]
	ldr	x1, [sp, 8]
	add	x2, x1, x0
	ldr	w1, [sp, 64]
	ldr	x0, [sp, 40]
	cmp	w1, 0
	blt	.L8
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [sp, 40]
	b	.L9
.L8:
	add	w3, w1, 8
	str	w3, [sp, 64]
	ldr	w3, [sp, 64]
	cmp	w3, 0
	ble	.L10
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [sp, 40]
	b	.L9
.L10:
	ldr	x3, [sp, 48]
	sxtw	x0, w1
	add	x0, x3, x0
.L9:
	ldr	x0, [x0]
	ldrb	w1, [x2]
	strb	w1, [x0]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	b	.L20
.L7:
	ldrsw	x0, [sp, 24]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	add	x1, sp, 32
	mov	w2, 10
	bl	libmin_strtol
	mov	x3, x0
	ldr	w1, [sp, 64]
	ldr	x0, [sp, 40]
	cmp	w1, 0
	blt	.L12
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [sp, 40]
	b	.L13
.L12:
	add	w2, w1, 8
	str	w2, [sp, 64]
	ldr	w2, [sp, 64]
	cmp	w2, 0
	ble	.L14
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [sp, 40]
	b	.L13
.L14:
	ldr	x2, [sp, 48]
	sxtw	x0, w1
	add	x0, x2, x0
.L13:
	ldr	x0, [x0]
	mov	w1, w3
	str	w1, [x0]
	ldr	x1, [sp, 32]
	ldrsw	x0, [sp, 24]
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	sub	x0, x1, x0
	mov	w1, w0
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	b	.L20
.L4:
	ldrsw	x0, [sp, 24]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	add	x1, sp, 32
	mov	w2, 16
	bl	libmin_strtol
	mov	x3, x0
	ldr	w1, [sp, 64]
	ldr	x0, [sp, 40]
	cmp	w1, 0
	blt	.L16
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [sp, 40]
	b	.L17
.L16:
	add	w2, w1, 8
	str	w2, [sp, 64]
	ldr	w2, [sp, 64]
	cmp	w2, 0
	ble	.L18
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [sp, 40]
	b	.L17
.L18:
	ldr	x2, [sp, 48]
	sxtw	x0, w1
	add	x0, x2, x0
.L17:
	ldr	x0, [x0]
	mov	w1, w3
	str	w1, [x0]
	ldr	x1, [sp, 32]
	ldrsw	x0, [sp, 24]
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	sub	x0, x1, x0
	mov	w1, w0
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	b	.L20
.L3:
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L20:
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L2:
	ldr	x0, [sp]
	cmp	x0, 0
	beq	.L21
	ldrsw	x0, [sp, 20]
	ldr	x1, [sp]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L21
	ldrsw	x0, [sp, 24]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L22
.L21:
	ldr	w0, [sp, 28]
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 72]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L24
	bl	__stack_chk_fail
.L24:
	mov	w0, w1
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 272
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_sscanf, .-libmin_sscanf
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
