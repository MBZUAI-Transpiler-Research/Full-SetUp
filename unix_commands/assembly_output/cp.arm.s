	.arch armv8-a
	.file	"cp.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"--help"
	.align	3
.LC1:
	.string	"\nUsage: cpcmd source destination"
	.align	3
.LC2:
	.string	"\nError opening file %s errno = %d\n"
	.align	3
.LC3:
	.string	"\nError in writing data to "
	.align	3
.LC4:
	.string	"\nError in closing file"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x13, 8240
	sub	sp, sp, x13
	.cfi_def_cfa_offset 8272
	.cfi_offset 19, -16
	str	xzr, [sp, 1024]
	str	w0, [sp, 12]
	str	x1, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 8232]
	mov	x1, 0
	ldr	w0, [sp, 12]
	cmp	w0, 3
	bne	.L2
	ldr	x0, [sp]
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
	mov	w0, 1
	bl	exit
.L3:
	ldr	x0, [sp]
	add	x0, x0, 8
	ldr	x0, [x0]
	mov	w1, 0
	bl	open
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmn	w0, #1
	bne	.L4
	ldr	x0, [sp]
	add	x0, x0, 8
	ldr	x19, [x0]
	bl	__errno_location
	ldr	w0, [x0]
	mov	w2, w0
	mov	x1, x19
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 1
	bl	exit
.L4:
	ldr	x0, [sp]
	add	x0, x0, 16
	ldr	x0, [x0]
	mov	w2, 438
	mov	w1, 577
	bl	open
	str	w0, [sp, 32]
	ldr	w0, [sp, 32]
	cmn	w0, #1
	bne	.L7
	ldr	x0, [sp]
	add	x0, x0, 16
	ldr	x19, [x0]
	bl	__errno_location
	ldr	w0, [x0]
	mov	w2, w0
	mov	x1, x19
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 1
	bl	exit
.L8:
	ldrsw	x1, [sp, 36]
	add	x0, sp, 40
	mov	x2, x1
	mov	x1, x0
	ldr	w0, [sp, 32]
	bl	write
	mov	x1, x0
	ldrsw	x0, [sp, 36]
	cmp	x1, x0
	beq	.L7
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	puts
.L7:
	add	x0, sp, 40
	mov	x2, 1024
	mov	x1, x0
	ldr	w0, [sp, 28]
	bl	read
	str	w0, [sp, 36]
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bgt	.L8
	ldr	w0, [sp, 28]
	bl	close
	cmn	w0, #1
	bne	.L9
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	puts
.L9:
	ldr	w0, [sp, 32]
	bl	close
	cmn	w0, #1
	bne	.L10
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	puts
.L10:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 8232]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L12
	bl	__stack_chk_fail
.L12:
	mov	w0, w1
	mov	x13, 8240
	add	sp, sp, x13
	.cfi_def_cfa_offset 32
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
