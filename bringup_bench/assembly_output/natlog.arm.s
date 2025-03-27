	.arch armv8-a
	.file	"natlog.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"natlog: e=%f\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	mov	w0, 34464
	movk	w0, 0x1, lsl 16
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	scvtf	d0, w0
	fmov	d1, 1.0e+0
	fdiv	d1, d1, d0
	fmov	d0, 1.0e+0
	fadd	d0, d1, d0
	str	d0, [sp, 40]
	fmov	d0, 1.0e+0
	str	d0, [sp, 32]
	b	.L2
.L3:
	ldr	d1, [sp, 32]
	ldr	d0, [sp, 40]
	fmul	d0, d1, d0
	str	d0, [sp, 32]
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	str	w0, [sp, 28]
.L2:
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bgt	.L3
	ldr	d0, [sp, 32]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	libmin_printf
	bl	libmin_success
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
