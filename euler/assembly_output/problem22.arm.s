	.arch armv8-a
	.file	"problem22.c"
	.text
	.section	.rodata
	.align	3
.LC1:
	.string	"r"
	.align	3
.LC2:
	.string	"\"%[^\"]\","
	.align	3
.LC3:
	.string	"%d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 64
	str	x19, [sp, 80]
	.cfi_offset 19, -16
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	str	wzr, [sp, 4]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 40
	ldr	x2, [x1]
	str	x2, [x0]
	ldrh	w1, [x1, 8]
	strh	w1, [x0, 8]
	str	wzr, [sp, 12]
	add	x2, sp, 40
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	fopen
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L2
	add	x0, sp, 40
	bl	perror
	mov	w0, 1
	b	.L10
.L2:
	mov	x0, 65536
	bl	malloc
	str	x0, [sp, 32]
	ldrsw	x0, [sp, 4]
	lsl	x0, x0, 3
	ldr	x1, [sp, 32]
	add	x19, x1, x0
	mov	x0, 16
	bl	malloc
	str	x0, [x19]
	b	.L4
.L5:
	ldr	w0, [sp, 4]
	add	w0, w0, 1
	str	w0, [sp, 4]
	ldrsw	x0, [sp, 4]
	lsl	x0, x0, 3
	ldr	x1, [sp, 32]
	add	x19, x1, x0
	mov	x0, 16
	bl	malloc
	str	x0, [x19]
.L4:
	ldrsw	x0, [sp, 4]
	lsl	x0, x0, 3
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, x0
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	ldr	x0, [sp, 24]
	bl	__isoc99_fscanf
	cmn	w0, #1
	bne	.L5
	ldrsw	x0, [sp, 4]
	lsl	x0, x0, 3
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	free
	ldr	x0, [sp, 24]
	bl	fclose
	ldrsw	x1, [sp, 4]
	adrp	x0, compare
	add	x3, x0, :lo12:compare
	mov	x2, 8
	ldr	x0, [sp, 32]
	bl	qsort
	str	wzr, [sp, 8]
	b	.L6
.L9:
	str	wzr, [sp, 20]
	str	wzr, [sp, 16]
	b	.L7
.L8:
	ldrsw	x0, [sp, 8]
	lsl	x0, x0, 3
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 16]
	add	x0, x1, x0
	ldrb	w0, [x0]
	sub	w0, w0, #64
	ldr	w1, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 16]
.L7:
	ldrsw	x0, [sp, 8]
	lsl	x0, x0, 3
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 16]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L8
	ldr	w0, [sp, 8]
	add	w1, w0, 1
	ldr	w0, [sp, 20]
	mul	w0, w1, w0
	ldr	w1, [sp, 12]
	add	w0, w1, w0
	str	w0, [sp, 12]
	ldrsw	x0, [sp, 8]
	lsl	x0, x0, 3
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	free
	ldr	w0, [sp, 8]
	add	w0, w0, 1
	str	w0, [sp, 8]
.L6:
	ldr	w1, [sp, 8]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L9
	ldr	x0, [sp, 32]
	bl	free
	ldr	w1, [sp, 12]
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	mov	w0, 0
.L10:
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L11
	bl	__stack_chk_fail
.L11:
	mov	w0, w1
	ldr	x19, [sp, 80]
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 96
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.string	"names.txt"
	.text
	.align	2
	.type	compare, %function
compare:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x2, [x0]
	ldr	x0, [sp, 16]
	ldr	x0, [x0]
	mov	x1, x0
	mov	x0, x2
	bl	strcmp
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	compare, .-compare
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
