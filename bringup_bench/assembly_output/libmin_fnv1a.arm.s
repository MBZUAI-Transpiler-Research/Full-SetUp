	.arch armv8-a
	.file	"libmin_fnv1a.c"
	.text
	.align	2
	.global	libmin_fnv32a
	.type	libmin_fnv32a, %function
libmin_fnv32a:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	w2, [sp, 12]
	ldr	x0, [sp, 24]
	str	x0, [sp, 32]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 16]
	add	x0, x1, x0
	str	x0, [sp, 40]
	b	.L2
.L3:
	ldr	x0, [sp, 32]
	add	x1, x0, 1
	str	x1, [sp, 32]
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	w0, [sp, 12]
	eor	w0, w0, w1
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	lsl	w1, w0, 1
	ldr	w0, [sp, 12]
	lsl	w0, w0, 4
	add	w1, w1, w0
	ldr	w0, [sp, 12]
	lsl	w0, w0, 7
	add	w1, w1, w0
	ldr	w0, [sp, 12]
	lsl	w0, w0, 8
	add	w1, w1, w0
	ldr	w0, [sp, 12]
	lsl	w0, w0, 24
	add	w0, w1, w0
	ldr	w1, [sp, 12]
	add	w0, w1, w0
	str	w0, [sp, 12]
.L2:
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	cmp	x1, x0
	bcc	.L3
	ldr	w0, [sp, 12]
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_fnv32a, .-libmin_fnv32a
	.align	2
	.global	libmin_fnv64a
	.type	libmin_fnv64a, %function
libmin_fnv64a:
.LFB4:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 24]
	str	x0, [sp, 32]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 16]
	add	x0, x1, x0
	str	x0, [sp, 40]
	b	.L6
.L7:
	ldr	x0, [sp, 32]
	add	x1, x0, 1
	str	x1, [sp, 32]
	ldrb	w0, [x0]
	and	x0, x0, 255
	ldr	x1, [sp, 8]
	eor	x0, x1, x0
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	lsl	x1, x0, 1
	ldr	x0, [sp, 8]
	lsl	x0, x0, 4
	add	x1, x1, x0
	ldr	x0, [sp, 8]
	lsl	x0, x0, 5
	add	x1, x1, x0
	ldr	x0, [sp, 8]
	lsl	x0, x0, 7
	add	x1, x1, x0
	ldr	x0, [sp, 8]
	lsl	x0, x0, 8
	add	x1, x1, x0
	ldr	x0, [sp, 8]
	lsl	x0, x0, 40
	add	x0, x1, x0
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	str	x0, [sp, 8]
.L6:
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	cmp	x1, x0
	bcc	.L7
	ldr	x0, [sp, 8]
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	libmin_fnv64a, .-libmin_fnv64a
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
