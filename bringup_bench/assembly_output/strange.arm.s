	.arch armv8-a
	.file	"strange.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d "
	.align	3
.LC1:
	.string	"\n| %d |"
	.align	3
.LC2:
	.string	"\n %d"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB3:
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
	b	.L2
.L3:
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w2, [sp, 12]
	str	w2, [x1, x0]
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	str	w0, [sp, 12]
.L2:
	ldr	w0, [sp, 12]
	cmp	w0, 9
	ble	.L3
	b	.L4
.L5:
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 12]
	add	w0, w1, w0
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	libmin_printf
.L4:
	ldr	w0, [sp, 12]
	sub	w1, w0, #1
	str	w1, [sp, 12]
	cmp	w0, 0
	bgt	.L5
	nop
.L6:
	mov	w0, 8
	str	w0, [sp, 12]
	ldr	w1, [sp, 12]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	libmin_printf
	str	wzr, [sp, 12]
	ldr	w1, [sp, 12]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	libmin_printf
	bl	libmin_success
	nop
	b	.L6
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
