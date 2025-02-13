	.arch armv8-a
	.file	"xargs.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"a+"
	.align	3
.LC1:
	.string	"lm.txt"
	.align	3
.LC2:
	.string	"%s\n"
	.align	3
.LC3:
	.string	"r"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #288
	.cfi_def_cfa_offset 288
	stp	x29, x30, [sp, 272]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 272
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 264]
	mov	x1, 0
	b	.L2
.L3:
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	fopen
	str	x0, [sp, 16]
	add	x0, sp, 24
	mov	x2, x0
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	ldr	x0, [sp, 16]
	bl	fprintf
	ldr	x0, [sp, 16]
	bl	fclose
.L2:
	adrp	x0, :got:stdin
	ldr	x0, [x0, :got_lo12:stdin]
	ldr	x1, [x0]
	add	x0, sp, 24
	mov	x2, x1
	mov	w1, 100
	bl	fgets
	cmp	x0, 0
	bne	.L3
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	fopen
	str	x0, [sp, 16]
	b	.L4
.L7:
	ldrb	w0, [sp, 15]
	bl	putchar
.L4:
	ldr	x0, [sp, 16]
	bl	fgetc
	strb	w0, [sp, 15]
	b	.L7
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
