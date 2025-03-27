	.arch armv8-a
	.file	"libmin_strcspn.c"
	.text
	.align	2
	.type	__strchrnul, %function
__strchrnul:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	ldr	w0, [sp, 20]
	and	w0, w0, 255
	str	w0, [sp, 20]
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bne	.L4
	ldr	x0, [sp, 24]
	bl	libmin_strlen
	mov	x1, x0
	ldr	x0, [sp, 24]
	add	x0, x0, x1
	b	.L3
.L7:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L5
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	w0, [sp, 20]
	cmp	w0, w1
	bne	.L6
.L5:
	ldr	x0, [sp, 24]
	b	.L3
.L6:
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
.L4:
	ldr	x0, [sp, 24]
	and	x0, x0, 7
	cmp	x0, 0
	bne	.L7
	ldrsw	x1, [sp, 20]
	mov	x0, 72340172838076673
	mul	x0, x1, x0
	str	x0, [sp, 40]
	ldr	x0, [sp, 24]
	str	x0, [sp, 32]
	b	.L8
.L10:
	ldr	x0, [sp, 32]
	add	x0, x0, 8
	str	x0, [sp, 32]
.L8:
	ldr	x0, [sp, 32]
	ldr	x1, [x0]
	mov	x0, -72340172838076674
	movk	x0, 0xfeff, lsl 0
	add	x1, x1, x0
	ldr	x0, [sp, 32]
	ldr	x0, [x0]
	mvn	x0, x0
	and	x0, x1, x0
	and	x0, x0, -9187201950435737472
	cmp	x0, 0
	bne	.L9
	ldr	x0, [sp, 32]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	eor	x1, x1, x0
	mov	x0, -72340172838076674
	movk	x0, 0xfeff, lsl 0
	add	x1, x1, x0
	ldr	x0, [sp, 32]
	ldr	x2, [x0]
	ldr	x0, [sp, 40]
	eor	x0, x2, x0
	mvn	x0, x0
	and	x0, x1, x0
	and	x0, x0, -9187201950435737472
	cmp	x0, 0
	beq	.L10
.L9:
	ldr	x0, [sp, 32]
	str	x0, [sp, 24]
	b	.L11
.L13:
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
.L11:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L12
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	w0, [sp, 20]
	cmp	w0, w1
	bne	.L13
.L12:
	ldr	x0, [sp, 24]
.L3:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	__strchrnul, .-__strchrnul
	.align	2
	.global	libmin_strcspn
	.type	libmin_strcspn, %function
libmin_strcspn:
.LFB4:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64
	str	x0, [sp, 8]
	str	x1, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	ldr	x0, [sp, 8]
	str	x0, [sp, 16]
	ldr	x0, [sp]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L15
	ldr	x0, [sp]
	add	x0, x0, 1
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L16
.L15:
	ldr	x0, [sp]
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	x0, [sp, 8]
	bl	__strchrnul
	mov	x1, x0
	ldr	x0, [sp, 16]
	sub	x0, x1, x0
	b	.L24
.L16:
	add	x0, sp, 24
	mov	x2, 32
	mov	w1, 0
	bl	libmin_memset
	b	.L18
.L20:
	ldr	x0, [sp]
	add	x0, x0, 1
	str	x0, [sp]
.L18:
	ldr	x0, [sp]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L21
	ldr	x0, [sp]
	ldrb	w0, [x0]
	lsr	w0, w0, 6
	and	w3, w0, 255
	and	x1, x3, 255
	add	x0, sp, 72
	sub	x0, x0, #48
	ldr	x2, [x0, x1, lsl 3]
	ldr	x0, [sp]
	ldrb	w0, [x0]
	and	w0, w0, 63
	mov	x1, 1
	lsl	x1, x1, x0
	and	x0, x3, 255
	orr	x2, x2, x1
	add	x1, sp, 72
	sub	x1, x1, #48
	str	x2, [x1, x0, lsl 3]
	add	x1, sp, 72
	sub	x1, x1, #48
	ldr	x0, [x1, x0, lsl 3]
	cmp	x0, 0
	bne	.L20
	b	.L21
.L23:
	ldr	x0, [sp, 8]
	add	x0, x0, 1
	str	x0, [sp, 8]
.L21:
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L22
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	lsr	w0, w0, 6
	and	w0, w0, 255
	and	x1, x0, 255
	add	x0, sp, 72
	sub	x0, x0, #48
	ldr	x1, [x0, x1, lsl 3]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	and	w0, w0, 63
	lsr	x0, x1, x0
	and	x0, x0, 1
	cmp	x0, 0
	beq	.L23
.L22:
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 16]
	sub	x0, x1, x0
.L24:
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L25
	bl	__stack_chk_fail
.L25:
	mov	x0, x1
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	libmin_strcspn, .-libmin_strcspn
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
