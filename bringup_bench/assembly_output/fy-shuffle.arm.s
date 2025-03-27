	.arch armv8-a
	.file	"fy-shuffle.c"
	.text
	.align	2
	.type	rand_int, %function
rand_int:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	mov	w0, 2147483647
	ldr	w1, [sp, 28]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 28]
	mul	w1, w2, w1
	sub	w0, w0, w1
	mov	w1, 2147483647
	sub	w0, w1, w0
	str	w0, [sp, 40]
.L2:
	bl	libmin_rand
	str	w0, [sp, 44]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	bge	.L2
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 28]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 28]
	mul	w1, w2, w1
	sub	w0, w0, w1
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	rand_int, .-rand_int
	.align	2
	.global	fy_shuffle
	.type	fy_shuffle, %function
fy_shuffle:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	str	w0, [sp, 36]
	b	.L5
.L8:
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	bl	rand_int
	str	w0, [sp, 40]
	ldr	w0, [sp, 36]
	cmp	w0, 0
	blt	.L6
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	bge	.L6
	ldr	w0, [sp, 40]
	cmp	w0, 0
	blt	.L6
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L7
.L6:
	mov	w0, 1
	bl	libmin_fail
.L7:
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 44]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x1, x1, x0
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w1, [sp, 44]
	str	w1, [x0]
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	str	w0, [sp, 36]
.L5:
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bgt	.L8
	nop
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	fy_shuffle, .-fy_shuffle
	.section	.rodata
	.align	3
.LC0:
	.string	"%s"
	.align	3
.LC1:
	.string	"%2d "
	.align	3
.LC2:
	.string	"\n"
	.text
	.align	2
	.global	print
	.type	print, %function
print:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	w2, [sp, 28]
	ldr	x1, [sp, 40]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	libmin_printf
	str	wzr, [sp, 60]
	b	.L10
.L11:
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	libmin_printf
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L10:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L11
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	libmin_printf
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	print, .-print
	.global	a
	.data
	.align	3
	.type	a, %object
	.size	a, 44
a:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.global	b
	.align	3
	.type	b, %object
	.size	b, 76
b:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15
	.word	16
	.word	17
	.word	18
	.section	.rodata
	.align	3
.LC3:
	.string	"A (before): "
	.align	3
.LC4:
	.string	"A (after):  "
	.align	3
.LC5:
	.string	"B (before): "
	.align	3
.LC6:
	.string	"B (after):  "
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	mov	w0, 42
	bl	libmin_srand
	str	wzr, [sp, 28]
	b	.L13
.L14:
	mov	w2, 11
	adrp	x0, a
	add	x1, x0, :lo12:a
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	print
	mov	w1, 11
	adrp	x0, a
	add	x0, x0, :lo12:a
	bl	fy_shuffle
	mov	w2, 11
	adrp	x0, a
	add	x1, x0, :lo12:a
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	print
	mov	w2, 19
	adrp	x0, b
	add	x1, x0, :lo12:b
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	print
	mov	w1, 19
	adrp	x0, b
	add	x0, x0, :lo12:b
	bl	fy_shuffle
	mov	w2, 19
	adrp	x0, b
	add	x1, x0, :lo12:b
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	print
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L13:
	ldr	w0, [sp, 28]
	cmp	w0, 7
	ble	.L14
	bl	libmin_success
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
