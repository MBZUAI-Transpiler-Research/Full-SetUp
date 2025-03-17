	.arch armv8-a
	.file	"problem16.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%u\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB26:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	str	wzr, [sp, 12]
	add	x0, sp, 40
	bl	__gmpz_init
	add	x0, sp, 40
	mov	x2, 1000
	mov	x1, 2
	bl	__gmpz_ui_pow_ui
	add	x0, sp, 40
	mov	x2, x0
	mov	w1, 10
	mov	x0, 0
	bl	__gmpz_get_str
	str	x0, [sp, 24]
	add	x0, sp, 40
	mov	w1, 10
	bl	__gmpz_sizeinbase
	str	x0, [sp, 32]
	str	xzr, [sp, 16]
	b	.L2
.L3:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	add	x0, x1, x0
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	w0, [sp, 12]
	add	w0, w1, w0
	sub	w0, w0, #48
	str	w0, [sp, 12]
	ldr	x0, [sp, 16]
	add	x0, x0, 1
	str	x0, [sp, 16]
.L2:
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bcc	.L3
	ldr	w1, [sp, 12]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	x0, [sp, 24]
	bl	free
	add	x0, sp, 40
	bl	__gmpz_clear
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L5
	bl	__stack_chk_fail
.L5:
	mov	w0, w1
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE26:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
