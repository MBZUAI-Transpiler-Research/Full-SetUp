	.arch armv8-a
	.file	"libmin_memcmp.c"
	.text
	.align	2
	.global	libmin_memcmp
	.type	libmin_memcmp, %function
libmin_memcmp:
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
	b	.L2
.L4:
	ldr	x0, [sp, 8]
	sub	x0, x0, #1
	str	x0, [sp, 8]
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L2:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L3
	ldr	x0, [sp, 32]
	ldrb	w1, [x0]
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	cmp	w1, w0
	beq	.L4
.L3:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L5
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	sub	w0, w1, w0
	b	.L7
.L5:
	mov	w0, 0
.L7:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_memcmp, .-libmin_memcmp
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
