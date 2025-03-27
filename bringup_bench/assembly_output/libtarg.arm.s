	.arch armv8-a
	.file	"libtarg.c"
	.text
	.align	2
	.global	libtarg_success
	.type	libtarg_success, %function
libtarg_success:
.LFB9:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	mov	w0, 0
	bl	exit
	.cfi_endproc
.LFE9:
	.size	libtarg_success, .-libtarg_success
	.align	2
	.global	libtarg_fail
	.type	libtarg_fail, %function
libtarg_fail:
.LFB10:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	bl	exit
	.cfi_endproc
.LFE10:
	.size	libtarg_fail, .-libtarg_fail
	.align	2
	.global	libtarg_putc
	.type	libtarg_putc, %function
libtarg_putc:
.LFB11:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	strb	w0, [sp, 31]
	ldrb	w2, [sp, 31]
	adrp	x0, :got:stdout
	ldr	x0, [x0, :got_lo12:stdout]
	ldr	x0, [x0]
	mov	x1, x0
	mov	w0, w2
	bl	fputc
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11:
	.size	libtarg_putc, .-libtarg_putc
	.align	2
	.global	libtarg_sbrk
	.type	libtarg_sbrk, %function
libtarg_sbrk:
.LFB12:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	sbrk
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE12:
	.size	libtarg_sbrk, .-libtarg_sbrk
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
