	.arch armv8-a
	.file	"rm.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"--help"
	.align	3
.LC1:
	.string	"\nusage: rm FileTodelete"
	.align	3
.LC2:
	.string	"successfull"
	.align	3
.LC3:
	.string	"Unsuccessfull"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
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
	bl	remove
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bne	.L4
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	puts
	b	.L5
.L4:
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	puts
.L5:
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
