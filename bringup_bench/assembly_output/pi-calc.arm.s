	.arch armv8-a
	.file	"pi-calc.c"
	.text
	.global	a
	.bss
	.align	3
	.type	a, %object
	.size	a, 210056
a:
	.zero	210056
	.global	b
	.align	2
	.type	b, %object
	.size	b, 4
b:
	.zero	4
	.global	c
	.data
	.align	2
	.type	c, %object
	.size	c, 4
c:
	.word	52514
	.global	d
	.bss
	.align	2
	.type	d, %object
	.size	d, 4
d:
	.zero	4
	.global	e
	.align	2
	.type	e, %object
	.size	e, 4
e:
	.zero	4
	.global	f
	.data
	.align	2
	.type	f, %object
	.size	f, 4
f:
	.word	10000
	.global	g
	.bss
	.align	2
	.type	g, %object
	.size	g, 4
g:
	.zero	4
	.global	h
	.align	2
	.type	h, %object
	.size	h, 4
h:
	.zero	4
	.section	.rodata
	.align	3
.LC0:
	.string	"%04d"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	b	.L2
.L7:
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	w0, [x0]
	adrp	x1, f
	add	x1, x1, :lo12:f
	ldr	w1, [x1]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w1, w0, w1
	adrp	x0, d
	add	x0, x0, :lo12:d
	str	w1, [x0]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	w1, [x0]
	adrp	x0, e
	add	x0, x0, :lo12:e
	str	w1, [x0]
	b	.L3
.L6:
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	w1, [x0]
	adrp	x0, b
	add	x0, x0, :lo12:b
	ldr	w0, [x0]
	mul	w1, w1, w0
	adrp	x0, h
	add	x0, x0, :lo12:h
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L4
	adrp	x0, b
	add	x0, x0, :lo12:b
	ldr	w2, [x0]
	adrp	x0, a
	add	x0, x0, :lo12:a
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	b	.L5
.L4:
	adrp	x0, f
	add	x0, x0, :lo12:f
	ldr	w0, [x0]
	mov	w2, 26215
	movk	w2, 0x6666, lsl 16
	smull	x2, w0, w2
	lsr	x2, x2, 32
	asr	w2, w2, 1
	asr	w0, w0, 31
	sub	w0, w2, w0
.L5:
	adrp	x2, f
	add	x2, x2, :lo12:f
	ldr	w2, [x2]
	mul	w0, w0, w2
	add	w1, w1, w0
	adrp	x0, d
	add	x0, x0, :lo12:d
	str	w1, [x0]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	w0, [x0]
	adrp	x1, g
	add	x1, x1, :lo12:g
	ldr	w1, [x1]
	sub	w2, w1, #1
	adrp	x1, g
	add	x1, x1, :lo12:g
	str	w2, [x1]
	adrp	x1, g
	add	x1, x1, :lo12:g
	ldr	w1, [x1]
	adrp	x2, b
	add	x2, x2, :lo12:b
	ldr	w3, [x2]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w2, w0, w1
	adrp	x0, a
	add	x0, x0, :lo12:a
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	w1, [x0]
	adrp	x0, g
	add	x0, x0, :lo12:g
	ldr	w0, [x0]
	sdiv	w1, w1, w0
	adrp	x0, d
	add	x0, x0, :lo12:d
	str	w1, [x0]
.L3:
	adrp	x0, b
	add	x0, x0, :lo12:b
	ldr	w0, [x0]
	sub	w1, w0, #1
	adrp	x0, b
	add	x0, x0, :lo12:b
	str	w1, [x0]
	adrp	x0, b
	add	x0, x0, :lo12:b
	ldr	w0, [x0]
	lsl	w1, w0, 1
	adrp	x0, g
	add	x0, x0, :lo12:g
	str	w1, [x0]
	adrp	x0, g
	add	x0, x0, :lo12:g
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L6
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	w1, [x0]
	adrp	x0, f
	add	x0, x0, :lo12:f
	ldr	w0, [x0]
	sdiv	w1, w1, w0
	adrp	x0, e
	add	x0, x0, :lo12:e
	ldr	w0, [x0]
	add	w0, w1, w0
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	libmin_printf
	mov	w1, w0
	adrp	x0, h
	add	x0, x0, :lo12:h
	str	w1, [x0]
.L2:
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldr	w0, [x0]
	sub	w1, w0, #14
	adrp	x0, c
	add	x0, x0, :lo12:c
	str	w1, [x0]
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldr	w1, [x0]
	adrp	x0, b
	add	x0, x0, :lo12:b
	str	w1, [x0]
	adrp	x0, b
	add	x0, x0, :lo12:b
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L7
	bl	libmin_success
	mov	w0, 0
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
