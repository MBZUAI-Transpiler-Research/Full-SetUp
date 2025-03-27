	.arch armv8-a
	.file	"skeleton.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"This is a test!, %d, %f...\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	mov	x0, 3689348814741910323
	movk	x0, 0x4046, lsl 48
	fmov	d0, x0
	mov	w1, 23
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	libmin_printf
	bl	libmin_success
	mov	w0, 0
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
