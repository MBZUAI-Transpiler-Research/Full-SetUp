	.arch armv8-a
	.file	"touch.c"
	.text
	.global	retvalue
	.bss
	.align	2
	.type	retvalue, %object
	.size	retvalue, 4
retvalue:
	.zero	4
	.section	.rodata
	.align	3
.LC0:
	.string	"--help"
	.align	3
.LC1:
	.string	"Usage::touch textfileTomodify"
	.align	3
.LC2:
	.string	"Timestamp modified"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	w0, [sp, 28]
	str	x1, [sp, 16]
	ldr	w0, [sp, 28]
	cmp	w0, 2
	bne	.L2
	ldr	x0, [sp, 16]
	add	x0, x0, 8
	ldr	x1, [x0]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	cmp	x1, x0
	bne	.L3
.L2:
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	puts
.L3:
	ldr	x0, [sp, 16]
	add	x0, x0, 8
	ldr	x0, [x0]
	mov	x1, 0
	bl	utime
	mov	w1, w0
	adrp	x0, retvalue
	add	x0, x0, :lo12:retvalue
	str	w1, [x0]
	adrp	x0, retvalue
	add	x0, x0, :lo12:retvalue
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L5
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	puts
.L5:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
