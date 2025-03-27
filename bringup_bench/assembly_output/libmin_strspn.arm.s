	.arch armv8-a
	.file	"libmin_strspn.c"
	.text
	.align	2
	.global	libmin_strspn
	.type	libmin_strspn, %function
libmin_strspn:
.LFB3:
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
	add	x0, sp, 72
	sub	x0, x0, #48
	adrp	x1, .LC0
	add	x1, x1, :lo12:.LC0
	ld1	{v0.16b - v1.16b}, [x1]
	st1	{v0.16b - v1.16b}, [x0]
	ldr	x0, [sp]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L2
	mov	x0, 0
	b	.L13
.L2:
	ldr	x0, [sp]
	add	x0, x0, 1
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L7
	b	.L5
.L6:
	ldr	x0, [sp, 8]
	add	x0, x0, 1
	str	x0, [sp, 8]
.L5:
	ldr	x0, [sp, 8]
	ldrb	w1, [x0]
	ldr	x0, [sp]
	ldrb	w0, [x0]
	cmp	w1, w0
	beq	.L6
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 16]
	sub	x0, x1, x0
	b	.L13
.L9:
	ldr	x0, [sp]
	add	x0, x0, 1
	str	x0, [sp]
.L7:
	ldr	x0, [sp]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L10
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
	bne	.L9
	b	.L10
.L12:
	ldr	x0, [sp, 8]
	add	x0, x0, 1
	str	x0, [sp, 8]
.L10:
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L11
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
	bne	.L12
.L11:
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 16]
	sub	x0, x1, x0
.L13:
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L14
	bl	__stack_chk_fail
.L14:
	mov	x0, x1
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_strspn, .-libmin_strspn
	.section	.rodata
	.align	4
.LC0:
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
