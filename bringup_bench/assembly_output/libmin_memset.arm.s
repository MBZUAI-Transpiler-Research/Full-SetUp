	.arch armv8-a
	.file	"libmin_memset.c"
	.text
	.align	2
	.global	libmin_memset
	.type	libmin_memset, %function
libmin_memset:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	x2, [sp, 8]
	ldr	x0, [sp, 24]
	str	x0, [sp, 32]
	ldr	x0, [sp, 8]
	cmp	x0, 0
	bne	.L2
	ldr	x0, [sp, 24]
	b	.L3
.L2:
	ldr	x0, [sp, 8]
	sub	x0, x0, #1
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w1, [sp, 20]
	and	w1, w1, 255
	strb	w1, [x0]
	ldrb	w1, [x0]
	ldr	x0, [sp, 32]
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	cmp	x0, 2
	bhi	.L4
	ldr	x0, [sp, 24]
	b	.L3
.L4:
	ldr	x0, [sp, 8]
	sub	x0, x0, #2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w1, [sp, 20]
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	x1, [sp, 32]
	add	x1, x1, 1
	ldrb	w0, [x0]
	strb	w0, [x1]
	ldr	x0, [sp, 8]
	sub	x0, x0, #3
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w1, [sp, 20]
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	x1, [sp, 32]
	add	x1, x1, 2
	ldrb	w0, [x0]
	strb	w0, [x1]
	ldr	x0, [sp, 8]
	cmp	x0, 6
	bhi	.L5
	ldr	x0, [sp, 24]
	b	.L3
.L5:
	ldr	x0, [sp, 8]
	sub	x0, x0, #4
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w1, [sp, 20]
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	x1, [sp, 32]
	add	x1, x1, 3
	ldrb	w0, [x0]
	strb	w0, [x1]
	ldr	x0, [sp, 8]
	cmp	x0, 8
	bhi	.L6
	ldr	x0, [sp, 24]
	b	.L3
.L6:
	ldr	x0, [sp, 32]
	neg	x0, x0
	and	x0, x0, 3
	str	x0, [sp, 40]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	add	x0, x1, x0
	str	x0, [sp, 32]
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 40]
	sub	x0, x1, x0
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	and	x0, x0, -4
	str	x0, [sp, 8]
	b	.L7
.L8:
	ldr	w0, [sp, 20]
	and	w1, w0, 255
	ldr	x0, [sp, 32]
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	sub	x0, x0, #1
	str	x0, [sp, 8]
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
.L7:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	bne	.L8
	ldr	x0, [sp, 24]
.L3:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_memset, .-libmin_memset
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
