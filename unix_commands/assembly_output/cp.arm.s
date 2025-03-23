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
	mov	x12, 8272
	sub	sp, sp, x12
	.cfi_def_cfa_offset 8272
	stp	x29, x30, [sp]
	.cfi_offset 29, -8272
	.cfi_offset 30, -8264
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -8256
	str	w0, [sp, 44]
	str	x1, [sp, 32]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 8264]
	mov	x1, 0
	ldr	w0, [sp, 44]
	cmp	w0, 3
	bne	.L2
	ldr	x0, [sp, 32]
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
	ldr	x0, [sp, 32]
	add	x0, x0, 8
	ldr	x0, [x0]
	mov	w1, 0
	bl	open
	str	w0, [sp, 60]
	ldr	w0, [sp, 60]
	cmn	w0, #1
	bne	.L4
	ldr	x0, [sp, 32]
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
	ldr	x0, [sp, 32]
	add	x0, x0, 16
	ldr	x0, [x0]
	mov	w2, 438
	mov	w1, 577
	bl	open
	str	w0, [sp, 64]
	ldr	w0, [sp, 64]
	cmn	w0, #1
	bne	.L6
	ldr	x0, [sp, 32]
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
.L7:
	ldrsw	x1, [sp, 68]
	add	x0, sp, 72
	mov	x2, x1
	mov	x1, x0
	ldr	w0, [sp, 64]
	bl	write
	mov	x1, x0
	ldrsw	x0, [sp, 68]
	cmp	x1, x0
	beq	.L6
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	puts
.L6:
	add	x0, sp, 72
	mov	x2, 1024
	mov	x1, x0
	ldr	w0, [sp, 60]
	bl	read
	str	w0, [sp, 68]
	ldr	w0, [sp, 68]
	cmp	w0, 0
	bgt	.L7
	ldr	w0, [sp, 60]
	bl	close
	cmn	w0, #1
	bne	.L8
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	puts
.L8:
	ldr	w0, [sp, 64]
	bl	close
	cmn	w0, #1
	bne	.L9
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	puts
.L9:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 8264]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L11
	bl	__stack_chk_fail
.L11:
	mov	w0, w1
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp]
	mov	x12, 8272
	add	sp, sp, x12
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
