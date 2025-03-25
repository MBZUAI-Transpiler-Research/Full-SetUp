	.arch	armv8-a
	.file	"file.c"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #1072
	.cfi_def_cfa_offset 1072
	stp	x29, x30, [sp]
	.cfi_offset 29, -1072
	.cfi_offset 30, -1064
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -1056
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	w2, [sp, 28]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 1064]
	mov	x1, 0
	ldr	w0, [sp, 28]
	cmp	w0, 2
	beq	.L2
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	puts
.L2:
	ldr	x0, [sp, 32]
	ldr	x0, [x0, 8]
	str	x0, [sp, 48]
	ldr	x0, [sp, 48]
	bl	chdir
	cmn	w0, #1
	bne	.L3
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	perror
	mov	w0, 1
	bl	exit
.L3:
	add	x0, sp, 56
	mov	x1, 1024
	bl	getcwd
	cmp	x0, 0
	beq	.L4
	adrp	x0, :got:stdout
	ldr	x0, [x0, #:got_lo12:stdout]
	ldr	x3, [x0]
	add	x0, sp, 56
	mov	x2, x0
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x3
	bl	fprintf
	b	.L5
.L4:
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	perror
.L5:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 1064]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L7
	bl	__stack_chk_fail
.L7:
	mov	w0, w1
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp]
	add	sp, sp, 1072
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.string	"Usage:: cd Directory"
	.align	3
.LC1:
	.string	"chdir"
	.align	3
.LC2:
	.string	"Current working dir: %s\n"
	.align	3
.LC3:
	.string	"getcwd() error"
	.text
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
bits
