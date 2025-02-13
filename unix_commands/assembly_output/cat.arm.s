	.arch armv8-a
	.file	"cat.c"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #160
	.cfi_def_cfa_offset 160
	stp	x29, x30, [sp, 144]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 144
	str	w0, [sp, 12]
	str	x1, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 136]
	mov	x1, 0
	ldr	x0, [sp]
	add	x0, x0, 8
	ldr	x0, [x0]
	mov	w1, 0
	bl	open
	str	w0, [sp, 24]
	b	.L2
.L3:
	ldrsw	x1, [sp, 28]
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x0
	mov	w0, 1
	bl	write
.L2:
	add	x0, sp, 32
	mov	x2, 99
	mov	x1, x0
	ldr	w0, [sp, 24]
	bl	read
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L3
	mov	w0, 10
	bl	putchar
	ldr	w0, [sp, 24]
	bl	close
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 136]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L5
	bl	__stack_chk_fail
.L5:
	mov	w0, w1
	ldp	x29, x30, [sp, 144]
	add	sp, sp, 160
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
