	.arch armv8-a
	.file	"ls.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"."
	.align	3
.LC1:
	.string	"-R"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, 48]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 48
	str	w0, [sp, 12]
	str	x1, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 40]
	mov	x1, 0
	ldr	w0, [sp, 12]
	cmp	w0, 1
	bne	.L2
	add	x0, sp, 32
	adrp	x3, :got:alphasort
	ldr	x3, [x3, :got_lo12:alphasort]
	mov	x2, 0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	scandir
	str	w0, [sp, 28]
	b	.L3
.L4:
	ldr	x1, [sp, 32]
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x0, [x0]
	add	x0, x0, 19
	bl	puts
	ldr	x1, [sp, 32]
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	free
.L3:
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	str	w1, [sp, 28]
	cmp	w0, 0
	bne	.L4
	ldr	x0, [sp, 32]
	bl	free
	b	.L5
.L2:
	ldr	w0, [sp, 12]
	cmp	w0, 2
	beq	.L6
	ldr	x0, [sp]
	add	x0, x0, 8
	ldr	x1, [x0]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	cmp	x1, x0
	bne	.L5
.L6:
	mov	w1, 0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	recursive
.L5:
	mov	w0, 0
	bl	exit
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC2:
	.string	".."
	.align	3
.LC3:
	.string	"%s"
	.align	3
.LC4:
	.string	""
	.align	3
.LC5:
	.string	"%*s[[%s]]\n"
	.align	3
.LC6:
	.string	"%*s-> %s\n"
	.text
	.align	2
	.global	recursive
	.type	recursive, %function
recursive:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	sub	sp, sp, #1072
	.cfi_def_cfa_offset 1088
	str	xzr, [sp, 1024]
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 1064]
	mov	x1, 0
	ldr	x0, [sp, 8]
	bl	opendir
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	beq	.L18
	b	.L11
.L16:
	ldr	x0, [sp, 32]
	ldrb	w0, [x0, 18]
	cmp	w0, 4
	bne	.L12
	ldr	x0, [sp, 32]
	add	x2, x0, 19
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L19
	ldr	x0, [sp, 32]
	add	x2, x0, 19
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L19
	ldr	x0, [sp, 32]
	add	x0, x0, 19
	add	x3, sp, 40
	mov	x2, x0
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	mov	x0, x3
	bl	sprintf
	ldr	x0, [sp, 32]
	add	x0, x0, 19
	mov	x3, x0
	adrp	x0, .LC4
	add	x2, x0, :lo12:.LC4
	ldr	w1, [sp, 4]
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	printf
	ldr	w0, [sp, 4]
	add	w1, w0, 3
	add	x0, sp, 40
	bl	recursive
	b	.L11
.L12:
	ldr	x0, [sp, 32]
	add	x0, x0, 19
	mov	x3, x0
	adrp	x0, .LC4
	add	x2, x0, :lo12:.LC4
	ldr	w1, [sp, 4]
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	printf
	b	.L11
.L19:
	nop
.L11:
	ldr	x0, [sp, 24]
	bl	readdir
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	cmp	x0, 0
	bne	.L16
	ldr	x0, [sp, 24]
	bl	closedir
	b	.L8
.L18:
	nop
.L8:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 1064]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L17
	bl	__stack_chk_fail
.L17:
	add	sp, sp, 1072
	.cfi_def_cfa_offset 16
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	recursive, .-recursive
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
