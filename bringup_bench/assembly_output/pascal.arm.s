	.arch armv8-a
	.file	"pascal.c"
	.text
	.local	triangle
	.comm	triangle,3720,8
	.align	2
	.global	num_digits
	.type	num_digits, %function
num_digits:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L2
.L3:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	ldr	w0, [sp, 12]
	mov	w1, 26215
	movk	w1, 0x6666, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 2
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	cmp	w0, 0
	bne	.L3
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	num_digits, .-num_digits
	.section	.rodata
	.align	3
.LC0:
	.string	" "
	.align	3
.LC1:
	.string	"%d"
	.text
	.align	2
	.global	print_centered
	.type	print_centered, %function
print_centered:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	bl	num_digits
	str	w0, [sp, 40]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	bge	.L6
	mov	w0, 1
	b	.L7
.L6:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 40]
	sub	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 44]
	str	wzr, [sp, 36]
	b	.L8
.L9:
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	libmin_printf
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L8:
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	blt	.L9
	ldr	w1, [sp, 28]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	libmin_printf
	str	wzr, [sp, 36]
	b	.L10
.L11:
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	libmin_printf
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L10:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 40]
	sub	w1, w1, w0
	ldr	w0, [sp, 44]
	sub	w0, w1, w0
	ldr	w1, [sp, 36]
	cmp	w1, w0
	blt	.L11
	mov	w0, 0
.L7:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	print_centered, .-print_centered
	.section	.rodata
	.align	3
.LC2:
	.string	"\n\npascal [-h -v] [-c n] n \nprint the first n rows of pascal's triangle to stdout.\n-h: print this helpful information\n-v: print version number and exit\n-c: print the number of columns required for display only \n\n"
	.align	3
.LC3:
	.string	"1.0"
	.align	3
.LC4:
	.string	"%s\n"
	.align	3
.LC5:
	.string	"usage: pascal [ -h -v] [-c rows] rows\n"
	.align	3
.LC6:
	.string	"0\n"
	.align	3
.LC7:
	.string	"pascal"
	.align	3
.LC8:
	.string	"%s: %d is an invalid number of rows\n"
	.align	3
.LC9:
	.string	"%s: %d > %d rows maximum\n"
	.align	3
.LC10:
	.string	"%d\n"
	.align	3
.LC11:
	.string	"%s: error printing element %d,%d\n"
	.align	3
.LC12:
	.string	"\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	mov	w0, 1
	str	w0, [sp, 48]
	str	xzr, [sp, 56]
	mov	w0, 1
	str	w0, [sp, 28]
	str	wzr, [sp, 36]
	b	.L13
.L20:
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x0, [x0]
	add	x0, x0, 1
	ldrb	w0, [x0]
	cmp	w0, 104
	bne	.L14
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	libmin_printf
	mov	w0, 0
	b	.L15
.L14:
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x0, [x0]
	add	x0, x0, 1
	ldrb	w0, [x0]
	cmp	w0, 118
	bne	.L16
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	libmin_printf
	mov	w0, 0
	b	.L15
.L16:
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x0, [x0]
	add	x0, x0, 1
	ldrb	w0, [x0]
	cmp	w0, 99
	bne	.L17
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	ldr	w1, [sp, 48]
	cmp	w1, w0
	bgt	.L18
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	libmin_printf
	mov	w0, 1
	b	.L15
.L18:
	mov	w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	b	.L13
.L17:
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	libmin_printf
	mov	w0, 1
	b	.L15
.L13:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 48]
	cmp	w1, w0
	bge	.L19
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldrb	w0, [x0]
	cmp	w0, 45
	beq	.L20
.L19:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	ldr	w1, [sp, 48]
	cmp	w1, w0
	beq	.L21
	mov	w0, 20
	str	w0, [sp, 40]
	b	.L22
.L21:
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	libmin_atoi
	str	w0, [sp, 40]
.L22:
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bne	.L23
	ldr	w0, [sp, 36]
	cmp	w0, 0
	beq	.L24
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	libmin_printf
.L24:
	bl	libmin_success
.L23:
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bge	.L25
	ldr	w2, [sp, 40]
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	libmin_printf
	mov	w0, 1
	bl	libmin_fail
.L25:
	ldr	w0, [sp, 40]
	cmp	w0, 30
	ble	.L26
	mov	w3, 30
	ldr	w2, [sp, 40]
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	libmin_printf
	mov	w0, 1
	bl	libmin_fail
.L26:
	adrp	x0, triangle
	add	x0, x0, :lo12:triangle
	mov	w1, 1
	str	w1, [x0]
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L27
.L30:
	adrp	x0, triangle
	add	x2, x0, :lo12:triangle
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	mov	w1, 1
	str	w1, [x0]
	mov	w0, 1
	str	w0, [sp, 32]
	b	.L28
.L29:
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	ldr	w0, [sp, 32]
	sub	w3, w0, #1
	adrp	x0, triangle
	add	x2, x0, :lo12:triangle
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	adrp	x0, triangle
	add	x3, x0, :lo12:triangle
	ldrsw	x4, [sp, 32]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	add	w3, w2, w0
	adrp	x0, triangle
	add	x2, x0, :lo12:triangle
	ldrsw	x4, [sp, 32]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
.L28:
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L29
	adrp	x0, triangle
	add	x2, x0, :lo12:triangle
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	mov	w1, 1
	str	w1, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L27:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	blt	.L30
	ldr	w0, [sp, 40]
	sub	w4, w0, #1
	ldr	w0, [sp, 40]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	adrp	x0, triangle
	add	x2, x0, :lo12:triangle
	sxtw	x3, w1
	sxtw	x1, w4
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	bl	num_digits
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L31
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L31:
	ldr	w0, [sp, 36]
	cmp	w0, 0
	beq	.L32
	ldr	w0, [sp, 44]
	add	w1, w0, 2
	ldr	w0, [sp, 40]
	mul	w0, w1, w0
	mov	w1, w0
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	libmin_printf
	bl	libmin_success
.L32:
	str	wzr, [sp, 28]
	b	.L33
.L39:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 28]
	sub	w0, w1, w0
	sub	w1, w0, #1
	ldr	w0, [sp, 44]
	lsr	w2, w0, 31
	add	w0, w2, w0
	asr	w0, w0, 1
	add	w0, w0, 1
	mul	w0, w1, w0
	str	w0, [sp, 52]
	str	wzr, [sp, 32]
	b	.L34
.L35:
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	libmin_printf
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
.L34:
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	blt	.L35
	str	wzr, [sp, 32]
	b	.L36
.L38:
	adrp	x0, triangle
	add	x2, x0, :lo12:triangle
	ldrsw	x3, [sp, 32]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	ldr	w0, [sp, 44]
	add	w0, w0, 2
	mov	w1, w0
	mov	w0, w2
	bl	print_centered
	cmp	w0, 0
	beq	.L37
	ldr	w3, [sp, 32]
	ldr	w2, [sp, 28]
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	libmin_printf
	mov	w0, 1
	bl	libmin_fail
.L37:
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
.L36:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	bge	.L38
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	libmin_printf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L33:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	blt	.L39
	bl	libmin_success
	mov	w0, 0
.L15:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
