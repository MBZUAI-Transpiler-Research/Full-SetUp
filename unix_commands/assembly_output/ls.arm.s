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
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	w0, [sp, 28]
	str	x1, [sp, 16]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L2
	add	x1, sp, 48
	adrp	x0, :got:alphasort
	ldr	x3, [x0, #:got_lo12:alphasort]
	mov	x2, 0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	scandir
	str	w0, [sp, 44]
	b	.L3
.L4:
	ldr	x1, [sp, 48]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x0, [x0]
	add	x0, x0, 19
	bl	puts
	ldr	x1, [sp, 48]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	free
.L3:
	ldr	w0, [sp, 44]
	sub	w1, w0, #1
	str	w1, [sp, 44]
	cmp	w0, 0
	bne	.L4
	ldr	x0, [sp, 48]
	bl	free
	b	.L5
.L2:
	ldr	w0, [sp, 28]
	cmp	w0, 2
	beq	.L6
	ldr	x0, [sp, 16]
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
	sub	sp, sp, #1088
	.cfi_def_cfa_offset 1088
	stp	x29, x30, [sp]
	.cfi_offset 29, -1088
	.cfi_offset 30, -1080
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 1080]
	mov	x1, 0
	ldr	x0, [sp, 24]
	bl	opendir
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	beq	.L17
	b	.L11
.L15:
	ldr	x0, [sp, 48]
	ldrb	w0, [x0, 18]
	cmp	w0, 4
	bne	.L12
	ldr	x0, [sp, 48]
	add	x2, x0, 19
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L11
	ldr	x0, [sp, 48]
	add	x2, x0, 19
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L14
	b	.L11
.L14:
	ldr	x0, [sp, 48]
	add	x0, x0, 19
	add	x3, sp, 56
	mov	x2, x0
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	mov	x0, x3
	bl	sprintf
	ldr	x0, [sp, 48]
	add	x0, x0, 19
	mov	x3, x0
	adrp	x0, .LC4
	add	x2, x0, :lo12:.LC4
	ldr	w1, [sp, 20]
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	printf
	ldr	w0, [sp, 20]
	add	w1, w0, 3
	add	x0, sp, 56
	bl	recursive
	b	.L11
.L12:
	ldr	x0, [sp, 48]
	add	x0, x0, 19
	mov	x3, x0
	adrp	x0, .LC4
	add	x2, x0, :lo12:.LC4
	ldr	w1, [sp, 20]
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	printf
.L11:
	ldr	x0, [sp, 40]
	bl	readdir
	str	x0, [sp, 48]
	ldr	x0, [sp, 48]
	cmp	x0, 0
	bne	.L15
	ldr	x0, [sp, 40]
	bl	closedir
	b	.L8
.L17:
	nop
.L8:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 1080]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L16
	bl	__stack_chk_fail
.L16:
	ldp	x29, x30, [sp]
	add	sp, sp, 1088
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	recursive, .-recursive
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
