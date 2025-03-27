	.arch armv8-a
	.file	"libmin_puts.c"
	.text
	.align	2
	.global	libmin_puts
	.type	libmin_puts, %function
libmin_puts:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	b	.L2
.L3:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	bl	libtarg_putc
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
.L2:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L3
	mov	w0, 10
	bl	libtarg_putc
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_puts, .-libmin_puts
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
