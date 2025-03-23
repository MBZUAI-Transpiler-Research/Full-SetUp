	.arch armv8-a
	.file	"problem29.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB26:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, 48]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 48
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 40]
	mov	x1, 0
	str	wzr, [sp, 8]
	str	wzr, [sp, 12]
	add	x0, sp, 24
	bl	__gmpz_init
	mov	x0, 25744
	movk	x0, 0x2, lsl 16
	bl	malloc
	str	x0, [sp, 16]
	mov	w0, 2
	str	w0, [sp]
	b	.L2
.L5:
	ldrsw	x1, [sp]
	add	x0, sp, 24
	bl	__gmpz_set_ui
	mov	w0, 2
	str	w0, [sp, 4]
	b	.L3
.L4:
	ldrsw	x2, [sp]
	add	x1, sp, 24
	add	x0, sp, 24
	bl	__gmpz_mul_ui
	ldrsw	x0, [sp, 8]
	lsl	x0, x0, 4
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	bl	__gmpz_init
	ldrsw	x0, [sp, 8]
	lsl	x0, x0, 4
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	add	x1, sp, 24
	bl	__gmpz_set
	ldr	w0, [sp, 8]
	add	w0, w0, 1
	str	w0, [sp, 8]
	ldr	w0, [sp, 4]
	add	w0, w0, 1
	str	w0, [sp, 4]
.L3:
	ldr	w0, [sp, 4]
	cmp	w0, 100
	ble	.L4
	ldr	w0, [sp]
	add	w0, w0, 1
	str	w0, [sp]
.L2:
	ldr	w0, [sp]
	cmp	w0, 100
	ble	.L5
	adrp	x0, compare
	add	x3, x0, :lo12:compare
	mov	x2, 16
	mov	x1, 9801
	ldr	x0, [sp, 16]
	bl	qsort
	add	x0, sp, 24
	mov	x1, 0
	bl	__gmpz_set_ui
	str	wzr, [sp, 8]
	b	.L6
.L8:
	ldrsw	x0, [sp, 8]
	lsl	x0, x0, 4
	ldr	x1, [sp, 16]
	add	x1, x1, x0
	add	x0, sp, 24
	bl	__gmpz_cmp
	cmp	w0, 0
	beq	.L7
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	str	w0, [sp, 12]
.L7:
	ldrsw	x0, [sp, 8]
	lsl	x0, x0, 4
	ldr	x1, [sp, 16]
	add	x1, x1, x0
	add	x0, sp, 24
	bl	__gmpz_set
	ldrsw	x0, [sp, 8]
	lsl	x0, x0, 4
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	bl	__gmpz_clear
	ldr	w0, [sp, 8]
	add	w0, w0, 1
	str	w0, [sp, 8]
.L6:
	ldr	w1, [sp, 8]
	mov	w0, 9800
	cmp	w1, w0
	ble	.L8
	ldr	w1, [sp, 12]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	x0, [sp, 16]
	bl	free
	add	x0, sp, 24
	bl	__gmpz_clear
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 40]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L10
	bl	__stack_chk_fail
.L10:
	mov	w0, w1
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 64
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE26:
	.size	main, .-main
	.align	2
	.type	compare, %function
compare:
.LFB27:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	__gmpz_cmp
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE27:
	.size	compare, .-compare
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
