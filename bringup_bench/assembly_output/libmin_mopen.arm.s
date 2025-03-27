	.arch armv8-a
	.file	"libmin_mopen.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"r"
	.align	3
.LC1:
	.string	"ERROR: libmin only support file reads\n"
	.text
	.align	2
	.global	libmin_mopen
	.type	libmin_mopen, %function
libmin_mopen:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	ldr	x0, [sp, 16]
	bl	libmin_strcmp
	cmp	w0, 0
	beq	.L2
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	libmin_printf
	mov	w0, 1
	bl	libmin_fail
.L2:
	ldr	x0, [sp, 24]
	str	wzr, [x0, 24]
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_mopen, .-libmin_mopen
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
