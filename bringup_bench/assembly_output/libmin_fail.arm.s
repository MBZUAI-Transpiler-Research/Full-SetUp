	.arch armv8-a
	.file	"libmin_fail.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"ERROR: failure with termination code `%d'\n"
	.text
	.align	2
	.global	libmin_fail
	.type	libmin_fail, %function
libmin_fail:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	libmin_printf
	ldr	w0, [sp, 28]
	bl	libtarg_fail
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_fail, .-libmin_fail
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
