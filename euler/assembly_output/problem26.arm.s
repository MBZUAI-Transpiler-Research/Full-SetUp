	.arch armv8-a
	.file	"problem26.c"
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
.LFB20:
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
	str	wzr, [sp, 8]
	str	wzr, [sp, 12]
	add	x0, sp, 24
	bl	__gmpz_init
	add	x0, sp, 40
	bl	__gmpz_init
	mov	w0, 2
	str	w0, [sp, 16]
	b	.L2
.L8:
	mov	w0, 1
	str	w0, [sp, 20]
	ldr	w0, [sp, 16]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L11
	ldr	w2, [sp, 16]
	mov	w0, 52429
	movk	w0, 0xcccc, lsl 16
	umull	x0, w2, w0
	lsr	x0, x0, 32
	lsr	w1, w0, 2
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	sub	w1, w2, w0
	cmp	w1, 0
	beq	.L11
	add	x0, sp, 24
	mov	x1, 10
	bl	__gmpz_set_ui
	b	.L6
.L7:
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
	add	x1, sp, 24
	add	x0, sp, 24
	mov	x2, 10
	bl	__gmpz_mul_ui
.L6:
	ldr	w2, [sp, 16]
	add	x1, sp, 24
	add	x0, sp, 40
	bl	__gmpz_fdiv_r_ui
	add	x0, sp, 40
	mov	x1, 1
	bl	__gmpz_cmp_ui
	cmp	w0, 0
	bne	.L7
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	bls	.L5
	ldr	w0, [sp, 20]
	str	w0, [sp, 8]
	ldr	w0, [sp, 16]
	str	w0, [sp, 12]
	b	.L5
.L11:
	nop
.L5:
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 16]
.L2:
	ldr	w0, [sp, 16]
	cmp	w0, 999
	bls	.L8
	ldr	w1, [sp, 12]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	add	x0, sp, 24
	bl	__gmpz_clear
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
	beq	.L10
	bl	__stack_chk_fail
.L10:
	mov	w0, w1
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE20:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
