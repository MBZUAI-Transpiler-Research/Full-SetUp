	.arch armv8-a
	.file	"mandelbrot.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"<%d,%d,%d>\n"
	.text
	.align	2
	.global	color
	.type	color, %function
color:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	str	w2, [sp, 20]
	ldr	w3, [sp, 20]
	ldr	w2, [sp, 24]
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	libmin_printf
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	color, .-color
	.section	.rodata
	.align	3
.LC1:
	.string	"** Mandelbrot ASCII image\n"
	.align	3
.LC2:
	.string	"** xres: %d, yres: %d\n"
	.align	3
.LC3:
	.string	" "
	.align	3
.LC4:
	.string	"0"
	.align	3
.LC5:
	.string	"\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	mov	w0, 100
	str	w0, [sp, 36]
	fmov	d0, 1.0e+0
	str	d0, [sp, 64]
	mov	w0, 78
	str	w0, [sp, 40]
	mov	w0, 48
	str	w0, [sp, 44]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	libmin_printf
	ldr	w2, [sp, 44]
	ldr	w1, [sp, 40]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	libmin_printf
	mov	w0, 1
	str	w0, [sp, 32]
	b	.L3
.L12:
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L4
.L11:
	ldr	s0, [sp, 28]
	scvtf	s1, s0
	ldr	s0, [sp, 40]
	scvtf	s0, s0
	fdiv	s0, s1, s0
	fcvt	d1, s0
	fmov	d0, 5.0e-1
	fsub	d1, d1, d0
	ldr	d0, [sp, 64]
	fdiv	d1, d1, d0
	fmov	d0, 3.0e+0
	fmul	d0, d1, d0
	mov	x0, 7378697629483820646
	movk	x0, 0x3fe6, lsl 48
	fmov	d1, x0
	fsub	d0, d0, d1
	str	d0, [sp, 72]
	ldr	s0, [sp, 32]
	scvtf	s1, s0
	ldr	s0, [sp, 44]
	scvtf	s0, s0
	fdiv	s0, s1, s0
	fcvt	d1, s0
	fmov	d0, 5.0e-1
	fsub	d1, d1, d0
	ldr	d0, [sp, 64]
	fdiv	d1, d1, d0
	fmov	d0, 3.0e+0
	fmul	d0, d1, d0
	str	d0, [sp, 80]
	str	xzr, [sp, 48]
	str	xzr, [sp, 56]
	mov	w0, 1
	str	w0, [sp, 24]
	b	.L5
.L8:
	ldr	d0, [sp, 48]
	fmul	d1, d0, d0
	ldr	d0, [sp, 56]
	fmul	d0, d0, d0
	fsub	d0, d1, d0
	ldr	d1, [sp, 72]
	fadd	d0, d1, d0
	str	d0, [sp, 88]
	ldr	d0, [sp, 48]
	fadd	d1, d0, d0
	ldr	d0, [sp, 56]
	fmul	d0, d1, d0
	ldr	d1, [sp, 80]
	fadd	d0, d1, d0
	str	d0, [sp, 56]
	ldr	d0, [sp, 88]
	str	d0, [sp, 48]
	ldr	d0, [sp, 48]
	fmul	d1, d0, d0
	ldr	d0, [sp, 56]
	fmul	d0, d0, d0
	fadd	d0, d1, d0
	mov	x0, 4636737291354636288
	fmov	d1, x0
	fcmpe	d0, d1
	bgt	.L14
	b	.L6
.L14:
	mov	w0, 16959
	movk	w0, 0xf, lsl 16
	str	w0, [sp, 24]
.L6:
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L5:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L8
	ldr	w1, [sp, 24]
	mov	w0, 34462
	movk	w0, 0x1, lsl 16
	cmp	w1, w0
	bgt	.L9
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	libmin_printf
	b	.L10
.L9:
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	libmin_printf
.L10:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L4:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	ble	.L11
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	libmin_printf
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
.L3:
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	ble	.L12
	bl	libmin_success
	mov	w0, 0
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
