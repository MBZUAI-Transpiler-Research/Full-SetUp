	.arch	armv8-a
	.file	"file.c"
	.text
	.2p1_m2p0_a2p1_f2p2_d2_c2p0_zicsr2p0_zifencei2p0"
	.align	3
.LC0:
	.string	"attribute unaligned_access, 0
	.section	.rodata
	.align	3
.LC1:
	.string	"-R"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	w0, [sp, 44]
	str	x1, [sp, 32]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	ldr	w0, [sp, 44]
	cmp	w0, 1
	bne	.L2
	add	x1, sp, 48
	adrp	x0, :got:alphasort
	ldr	x3, [x0, #:got_lo12:alphasort]
	mov	x2, 0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	scandir
	str	w0, [sp, 60]
	b	.L3
.L4:
	ldr	x1, [sp, 48]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x0, [x0]
	add	x0, x0, 19
	bl	puts
	ldr	x1, [sp, 48]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	free
.L3:
	ldr	w0, [sp, 60]
	sub	w1, w0, #1
	str	w1, [sp, 60]
	cmp	w0, 0
	bne	.L4
	ldr	x0, [sp, 48]
	bl	free
	b	.L5
.L2:
	ldr	w0, [sp, 44]
	cmp	w0, 2
	beq	.L6
	ldr	x0, [sp, 32]
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
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC2:
	.string	"-R"
	.align	3
.LC3:
	.string	"%s"
	.align	3
.LC4:
	.string	""
	.align	3
.LC5:
	.string	"%*s-> %s\n"
	.align	3
.LC6:
	.string	"%*s-> %s\n"
	.text
	.align	2
	.global	recursive
	.type	recursive, %function
recursive:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #772
	.cfi_def_cfa_offset 1072
	stp	x29, x30, [sp]
	.cfi_offset 29, -1072
	.cfi_offset 30, -1064
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -1056
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 1064]
	mov	x1, 0
	ldr	x0, [sp, 40]
	bl	opendir
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L18
	b	.L11
.L16:
	ldr	x0, [sp, 64]
	ldrb	w0, [x0, 18]
	cmp	w0, 4
	bne	.L12
	ldr	x0, [sp, 64]
	add	x2, x0, 19
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L19
	ldr	x0, [sp, 64]
	add	x2, x0, 19
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L19
	ldr	x0, [sp, 64]
	add	x0, x0, 19
	add	x3, sp, 72
	mov	x2, x0
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	mov	x0, x3
	bl	sprintf
	ldr	x0, [sp, 64]
	add	x0, x0, 19
	mov	x3, x0
	adrp	x0, .LC4
	add	x2, x0, :lo12:.LC4
	ldr	w1, [sp, 36]
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	printf
	ldr	w0, [sp, 36]
	add	w1, w0, 3
	add	x0, sp, 72
	bl	recursive
	b	.L11
.L12:
	ldr	x0, [sp, 64]<<;	add	x0, x0, 19;	mov	x3, x0:.LC4>>
	adrp	x0, .LC4
	add	x2, x0, :lo12:.LC4
	ldr	w1, [sp, 36]
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	printf
	b	.L11
.L19:
	nop
.L11:
	ldr	x0, [sp, 56]
	bl	readdir
	str	x0, [sp, 64]
	ldr	x0, [sp, 64]
	cmp	x0, 0
	bne	.L16
	ldr	x0, [sp, 56]
	bl	closedir
	b	.L8
.L18:
	nop
.L8:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 1064]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L17
	bl	__stack_chk_fail
.L17:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp]
	add	sp, sp, 1072
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	recursive, .-recursive
	.section	.rodata
	.align	3
.LC7:
	.string	"-R"
	.align	3
.LC8:
	.string	"%s"
	.align	3
.LC9:
	.string	""
	.align	3
.LC10:
	.string	"%*s[[%s]]\n"
	.align	3
.LC11:
	.string	"%*s-> %s\n"
	.text
	.align	2
	.global	recursive
	.type	recursive, %function
recursive:
.LFB2:
	.cfi_startproc
	sub	sp, sp, #772
	.cfi_def_cfa_offset 1072
	stp	x29, x30, [sp]
	.cfi_offset 29, -1072
	.cfi_offset 30, -1064
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -1056
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 1064]
	mov	x1, 0
	ldr	x0, [sp, 40]
	bl	opendir
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L18
	b	.L11
.L16:
	ldr	x0, [sp, 64]
	ldrb	w0, [x0, 18]
	cmp	w0, 4
	bne	.L12
	ldr	x0, [sp, 64]
	add	x2, x0, 19
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L19
	ldr	x0, [sp, 64]
	add	x2, x0, 19
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L19
	ldr	x0, [sp, 64]
	add	x0, x0, 19
	add	x3, sp, 72
	mov	x2, x0
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	mov	x0, x3
	bl	sprintf
	ldr	x0, [sp, 64]
	add	x0, x0, 19
	mov	x3, x0
	adrp	x0, .LC4
	add	x2, x0, :lo12:.LC4
	ldr	w1, [sp, 36]
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	printf
	ldr	w0, [sp, 36]
	add	w1, w0, 3
	add	x0, sp, 72
	bl	recursive
	b	.L11
.L12:
	ldr	x0, [sp, 64]<<;	add	x0, x0, 19;	mov	x3, x0:.LC4>>
	adrp	x0, .LC4
	add	x2, x0, :lo12:.LC4
	ldr	w1, [sp, 36]
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	printf
	b	.L11
.L19:
	nop
.L11:
	ldr	x0, [sp, 56]
	bl	readdir
	str	x0, [sp, 64]
	ldr	x0, [sp, 64]
	cmp	x0, 0
	bne	.L16
	ldr	x0, [sp, 56]
	bl	closedir
	b	.L8
.L18:
	nop
.L8:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 1064]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L17
	bl	__stack_chk_fail
.L17:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp]
	add	sp, sp, 1072
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	recursive, .-recursive
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
