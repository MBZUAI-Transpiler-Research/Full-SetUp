	.arch armv8-a
	.file	"libmin_strncasecmp.c"
	.text
	.align	2
	.global	libmin_strncasecmp
	.type	libmin_strncasecmp, %function
libmin_strncasecmp:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 24]
	str	x0, [sp, 32]
	ldr	x0, [sp, 16]
	str	x0, [sp, 40]
	ldr	x0, [sp, 8]
	sub	x1, x0, #1
	str	x1, [sp, 8]
	cmp	x0, 0
	bne	.L4
	mov	w0, 0
	b	.L3
.L6:
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
	ldr	x0, [sp, 8]
	sub	x0, x0, #1
	str	x0, [sp, 8]
.L4:
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L5
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L5
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L5
	ldr	x0, [sp, 32]
	ldrb	w1, [x0]
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	cmp	w1, w0
	beq	.L6
	adrp	x0, :got:_pctype
	ldr	x0, [x0, :got_lo12:_pctype]
	ldr	x1, [x0]
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	and	x0, x0, 255
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L7
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	add	w1, w0, 32
	b	.L8
.L7:
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	mov	w1, w0
.L8:
	adrp	x0, :got:_pctype
	ldr	x0, [x0, :got_lo12:_pctype]
	ldr	x2, [x0]
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	and	x0, x0, 255
	lsl	x0, x0, 1
	add	x0, x2, x0
	ldrh	w0, [x0]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L9
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	add	w0, w0, 32
	b	.L10
.L9:
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
.L10:
	cmp	w1, w0
	beq	.L6
.L5:
	adrp	x0, :got:_pctype
	ldr	x0, [x0, :got_lo12:_pctype]
	ldr	x1, [x0]
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	and	x0, x0, 255
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L11
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	add	w1, w0, 32
	b	.L12
.L11:
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	mov	w1, w0
.L12:
	adrp	x0, :got:_pctype
	ldr	x0, [x0, :got_lo12:_pctype]
	ldr	x2, [x0]
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	and	x0, x0, 255
	lsl	x0, x0, 1
	add	x0, x2, x0
	ldrh	w0, [x0]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L13
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	add	w0, w0, 32
	b	.L14
.L13:
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
.L14:
	sub	w0, w1, w0
.L3:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_strncasecmp, .-libmin_strncasecmp
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
