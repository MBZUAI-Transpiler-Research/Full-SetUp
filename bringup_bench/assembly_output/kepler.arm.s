	.arch armv8-a
	.file	"kepler.c"
	.text
	.data
	.align	3
	.type	derror, %object
	.size	derror, 8
derror:
	.word	-1598689907
	.word	1051772663
	.text
	.align	2
	.global	strict_iteration
	.type	strict_iteration, %function
strict_iteration:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	d0, [sp, 40]
	str	d1, [sp, 32]
	str	d2, [sp, 24]
	str	w0, [sp, 20]
	ldr	d0, [sp, 40]
	bl	libmin_sin
	fmov	d1, d0
	ldr	d0, [sp, 32]
	fmul	d1, d1, d0
	ldr	d0, [sp, 24]
	fadd	d0, d1, d0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	strict_iteration, .-strict_iteration
	.align	2
	.global	newton
	.type	newton, %function
newton:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	d8, [sp, 16]
	.cfi_offset 72, -48
	str	d0, [sp, 56]
	str	d1, [sp, 48]
	str	d2, [sp, 40]
	str	w0, [sp, 36]
	ldr	d0, [sp, 56]
	bl	libmin_sin
	fmov	d1, d0
	ldr	d0, [sp, 48]
	fmul	d1, d1, d0
	ldr	d0, [sp, 40]
	fadd	d1, d1, d0
	ldr	d0, [sp, 56]
	fsub	d8, d1, d0
	ldr	d0, [sp, 56]
	bl	libmin_cos
	fmov	d1, d0
	ldr	d0, [sp, 48]
	fmul	d0, d1, d0
	fmov	d1, 1.0e+0
	fsub	d0, d1, d0
	fdiv	d1, d8, d0
	ldr	d0, [sp, 56]
	fadd	d0, d1, d0
	ldr	d8, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 72
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	newton, .-newton
	.align	2
	.global	binary
	.type	binary, %function
binary:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	d0, [sp, 40]
	str	d1, [sp, 32]
	str	d2, [sp, 24]
	str	w0, [sp, 20]
	ldr	w0, [sp, 20]
	cmp	w0, 0
	beq	.L6
	adrp	x0, scale.2
	add	x0, x0, :lo12:scale.2
	adrp	x1, .LC0
	ldr	d0, [x1, #:lo12:.LC0]
	str	d0, [x0]
	movi	d0, #0
	b	.L7
.L6:
	ldr	d0, [sp, 40]
	bl	libmin_sin
	fmov	d1, d0
	ldr	d0, [sp, 32]
	fmul	d0, d1, d0
	ldr	d1, [sp, 40]
	fsub	d0, d1, d0
	str	d0, [sp, 48]
	ldr	d1, [sp, 24]
	ldr	d0, [sp, 48]
	fcmpe	d1, d0
	bgt	.L11
	b	.L12
.L11:
	adrp	x0, scale.2
	add	x0, x0, :lo12:scale.2
	ldr	d1, [x0]
	ldr	d0, [sp, 40]
	fadd	d0, d1, d0
	b	.L10
.L12:
	adrp	x0, scale.2
	add	x0, x0, :lo12:scale.2
	ldr	d0, [x0]
	ldr	d1, [sp, 40]
	fsub	d0, d1, d0
.L10:
	str	d0, [sp, 56]
	adrp	x0, scale.2
	add	x0, x0, :lo12:scale.2
	ldr	d1, [x0]
	fmov	d0, 2.0e+0
	fdiv	d0, d1, d0
	adrp	x0, scale.2
	add	x0, x0, :lo12:scale.2
	str	d0, [x0]
	ldr	d0, [sp, 56]
.L7:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	binary, .-binary
	.align	2
	.global	e_series
	.type	e_series, %function
e_series:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	d8, [sp, 16]
	.cfi_offset 72, -80
	str	d0, [sp, 56]
	str	d1, [sp, 48]
	str	d2, [sp, 40]
	str	w0, [sp, 36]
	str	xzr, [sp, 72]
	ldr	w0, [sp, 36]
	cmp	w0, 0
	beq	.L14
	adrp	x0, n.1
	add	x0, x0, :lo12:n.1
	str	wzr, [x0]
	movi	d0, #0
	b	.L15
.L14:
	adrp	x0, n.1
	add	x0, x0, :lo12:n.1
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L16
	adrp	x0, n.1
	add	x0, x0, :lo12:n.1
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, n.1
	add	x0, x0, :lo12:n.1
	str	w1, [x0]
	ldr	d0, [sp, 40]
	b	.L15
.L16:
	str	wzr, [sp, 68]
	b	.L17
.L20:
	adrp	x0, n.1
	add	x0, x0, :lo12:n.1
	ldr	w0, [x0]
	scvtf	d1, w0
	ldr	w0, [sp, 68]
	scvtf	d0, w0
	fadd	d0, d0, d0
	fsub	d0, d1, d0
	str	d0, [sp, 80]
	ldr	w0, [sp, 68]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L18
	fmov	d0, -1.0e+0
	b	.L19
.L18:
	fmov	d0, 1.0e+0
.L19:
	str	d0, [sp, 88]
	adrp	x0, n.1
	add	x0, x0, :lo12:n.1
	ldr	w0, [x0]
	ldr	w1, [sp, 68]
	bl	bin_fact
	fmov	d1, d0
	ldr	d0, [sp, 88]
	fmul	d8, d1, d0
	ldr	d1, [sp, 80]
	ldr	d0, [sp, 40]
	fmul	d0, d1, d0
	bl	libmin_sin
	fmul	d0, d8, d0
	ldr	d1, [sp, 72]
	fadd	d0, d1, d0
	str	d0, [sp, 72]
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
.L17:
	ldr	w0, [sp, 68]
	lsl	w1, w0, 1
	adrp	x0, n.1
	add	x0, x0, :lo12:n.1
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L20
	adrp	x0, n.1
	add	x0, x0, :lo12:n.1
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, n.1
	add	x0, x0, :lo12:n.1
	str	w1, [x0]
	adrp	x0, n.1
	add	x0, x0, :lo12:n.1
	ldr	w0, [x0]
	sub	w0, w0, #1
	scvtf	d0, w0
	fmov	d1, d0
	ldr	d0, [sp, 48]
	bl	libmin_pow
	fmov	d1, d0
	ldr	d0, [sp, 72]
	fmul	d1, d1, d0
	ldr	d0, [sp, 56]
	fadd	d0, d1, d0
.L15:
	ldr	d8, [sp, 16]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 72
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	e_series, .-e_series
	.align	2
	.global	j_series
	.type	j_series, %function
j_series:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	d8, [sp, 16]
	.cfi_offset 72, -64
	str	d0, [sp, 56]
	str	d1, [sp, 48]
	str	d2, [sp, 40]
	str	w0, [sp, 36]
	ldr	w0, [sp, 36]
	cmp	w0, 0
	beq	.L22
	adrp	x0, n.0
	add	x0, x0, :lo12:n.0
	str	wzr, [x0]
	movi	d0, #0
	b	.L23
.L22:
	adrp	x0, n.0
	add	x0, x0, :lo12:n.0
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L24
	adrp	x0, n.0
	add	x0, x0, :lo12:n.0
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, n.0
	add	x0, x0, :lo12:n.0
	str	w1, [x0]
	ldr	d0, [sp, 40]
	b	.L23
.L24:
	adrp	x0, n.0
	add	x0, x0, :lo12:n.0
	ldr	w0, [x0]
	scvtf	d0, w0
	str	d0, [sp, 64]
	adrp	x0, n.0
	add	x0, x0, :lo12:n.0
	ldr	w0, [x0]
	scvtf	d0, w0
	fmov	d1, 2.0e+0
	fdiv	d8, d1, d0
	adrp	x0, n.0
	add	x0, x0, :lo12:n.0
	ldr	w0, [x0]
	ldr	d1, [sp, 64]
	ldr	d0, [sp, 48]
	fmul	d0, d1, d0
	bl	J
	fmul	d8, d8, d0
	ldr	d1, [sp, 64]
	ldr	d0, [sp, 40]
	fmul	d0, d1, d0
	bl	libmin_sin
	fmul	d0, d8, d0
	str	d0, [sp, 72]
	adrp	x0, n.0
	add	x0, x0, :lo12:n.0
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, n.0
	add	x0, x0, :lo12:n.0
	str	w1, [x0]
	ldr	d1, [sp, 56]
	ldr	d0, [sp, 72]
	fadd	d0, d1, d0
.L23:
	ldr	d8, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 72
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	j_series, .-j_series
	.section	.data.rel.local,"aw"
	.align	3
	.type	methods, %object
	.size	methods, 40
methods:
	.xword	strict_iteration
	.xword	newton
	.xword	binary
	.xword	e_series
	.xword	j_series
	.global	argc
	.data
	.align	2
	.type	argc, %object
	.size	argc, 4
argc:
	.word	5
	.global	argv
	.section	.rodata
	.align	3
.LC1:
	.string	"kepler"
	.align	3
.LC2:
	.string	"-m"
	.align	3
.LC3:
	.string	"3"
	.align	3
.LC4:
	.string	"0.34"
	.align	3
.LC5:
	.string	"0.25"
	.section	.data.rel.local
	.align	3
	.type	argv, %object
	.size	argv, 40
argv:
	.xword	.LC1
	.xword	.LC2
	.xword	.LC3
	.xword	.LC4
	.xword	.LC5
	.section	.rodata
	.align	3
.LC6:
	.string	"-h"
	.align	3
.LC7:
	.ascii	"kepler [-h -v -a <.nnnn...> -m <k>] M e\n-h: print this help"
	.ascii	"ful message\n-v: print version number and exit\n-a: obtain s"
	.ascii	"olution to accuracy of  < .nnnn (default ."
	.string	"0000001)\n-m: use selected calculation method k, where\n\tk = 1: Simple iteration.\n\tk = 2: Newton's method.\n\tk = 3: Binary search.\n\tk = 4: Series in powers of e. (e<.6627434193.)\n\tk = 5: Fourier Bessel series.\nM = mean anomaly (radians)\ne = orbit eccentricty."
	.align	3
.LC8:
	.string	"%s\n"
	.align	3
.LC9:
	.string	"-v"
	.align	3
.LC10:
	.string	"1.11"
	.align	3
.LC11:
	.string	"-a"
	.align	3
.LC12:
	.string	"Warning: requested precision may exceed implementation limit.\n"
	.align	3
.LC13:
	.string	"Bad method number %d\n"
	.align	3
.LC14:
	.string	"kepler: Unknown option %s\n"
	.align	3
.LC15:
	.string	"kepler [-h -v -a <.nnnn...> -m <k>] M e"
	.align	3
.LC16:
	.string	"e cannot exceed %f for this method.\n"
	.align	3
.LC17:
	.string	"Eccentricity %f out of range.\n"
	.align	3
.LC18:
	.string	"n = %d\tE = %f\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	mov	w0, 1
	str	w0, [sp, 20]
	mov	w0, 1
	str	w0, [sp, 24]
	mov	w0, 1
	str	w0, [sp, 28]
	fmov	d0, 1.0e+0
	str	d0, [sp, 32]
	str	xzr, [sp, 40]
	adrp	x0, .LC19
	ldr	d0, [x0, #:lo12:.LC19]
	str	d0, [sp, 56]
	adrp	x0, .LC20
	ldr	d0, [x0, #:lo12:.LC20]
	str	d0, [sp, 48]
	b	.L26
.L37:
	adrp	x0, argv
	add	x0, x0, :lo12:argv
	ldrsw	x1, [sp, 24]
	ldr	x2, [x0, x1, lsl 3]
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	mov	x0, x2
	bl	libmin_strcmp
	cmp	w0, 0
	bne	.L27
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	libmin_printf
	bl	libmin_success
.L27:
	adrp	x0, argv
	add	x0, x0, :lo12:argv
	ldrsw	x1, [sp, 24]
	ldr	x2, [x0, x1, lsl 3]
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	mov	x0, x2
	bl	libmin_strcmp
	cmp	w0, 0
	bne	.L28
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	libmin_printf
	bl	libmin_success
.L28:
	adrp	x0, argv
	add	x0, x0, :lo12:argv
	ldrsw	x1, [sp, 24]
	ldr	x2, [x0, x1, lsl 3]
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	mov	x0, x2
	bl	libmin_strcmp
	cmp	w0, 0
	bne	.L29
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	adrp	x0, argv
	add	x0, x0, :lo12:argv
	sxtw	x1, w1
	ldr	x0, [x0, x1, lsl 3]
	bl	libmin_atof
	adrp	x0, derror
	add	x0, x0, :lo12:derror
	str	d0, [x0]
	adrp	x0, derror
	add	x0, x0, :lo12:derror
	ldr	d0, [x0]
	mov	x0, 4372995238176751616
	fmov	d1, x0
	fcmpe	d0, d1
	bls	.L51
	b	.L30
.L51:
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	libmin_printf
.L30:
	ldr	w0, [sp, 24]
	add	w0, w0, 2
	str	w0, [sp, 24]
	b	.L26
.L29:
	adrp	x0, argv
	add	x0, x0, :lo12:argv
	ldrsw	x1, [sp, 24]
	ldr	x2, [x0, x1, lsl 3]
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x2
	bl	libmin_strcmp
	cmp	w0, 0
	bne	.L33
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	adrp	x0, argv
	add	x0, x0, :lo12:argv
	sxtw	x1, w1
	ldr	x0, [x0, x1, lsl 3]
	bl	libmin_atoi
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	ble	.L34
	ldr	w0, [sp, 28]
	cmp	w0, 5
	bls	.L35
.L34:
	ldr	w1, [sp, 28]
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	libmin_printf
	mov	w0, 1
	b	.L36
.L35:
	ldr	w0, [sp, 24]
	add	w0, w0, 2
	str	w0, [sp, 24]
	b	.L26
.L33:
	adrp	x0, argv
	add	x0, x0, :lo12:argv
	ldrsw	x1, [sp, 24]
	ldr	x0, [x0, x1, lsl 3]
	mov	x1, x0
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	libmin_printf
	adrp	x0, .LC15
	add	x1, x0, :lo12:.LC15
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	libmin_printf
	mov	w0, 1
	b	.L36
.L26:
	adrp	x0, argv
	add	x0, x0, :lo12:argv
	ldrsw	x1, [sp, 24]
	ldr	x0, [x0, x1, lsl 3]
	ldrb	w0, [x0]
	cmp	w0, 45
	beq	.L37
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	adrp	x0, argc
	add	x0, x0, :lo12:argc
	ldr	w0, [x0]
	cmp	w1, w0
	blt	.L38
	adrp	x0, .LC15
	add	x1, x0, :lo12:.LC15
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	libmin_printf
	mov	w0, 1
	b	.L36
.L38:
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	str	w1, [sp, 24]
	adrp	x1, argv
	add	x1, x1, :lo12:argv
	sxtw	x0, w0
	ldr	x0, [x1, x0, lsl 3]
	bl	libmin_atof
	str	d0, [sp, 40]
	adrp	x0, argv
	add	x0, x0, :lo12:argv
	ldrsw	x1, [sp, 24]
	ldr	x0, [x0, x1, lsl 3]
	bl	libmin_atof
	str	d0, [sp, 56]
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	adrp	x0, methods
	add	x0, x0, :lo12:methods
	sxtw	x1, w1
	ldr	x0, [x0, x1, lsl 3]
	str	x0, [sp, 64]
	ldr	w0, [sp, 28]
	cmp	w0, 4
	bne	.L39
	ldr	d0, [sp, 56]
	adrp	x0, .LC21
	ldr	d1, [x0, #:lo12:.LC21]
	fcmpe	d0, d1
	bgt	.L52
	b	.L39
.L52:
	adrp	x0, .LC21
	ldr	d0, [x0, #:lo12:.LC21]
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	libmin_printf
	mov	w0, 1
	b	.L36
.L39:
	ldr	d0, [sp, 56]
	fcmpe	d0, #0.0
	bmi	.L41
	ldr	d1, [sp, 56]
	fmov	d0, 1.0e+0
	fcmpe	d1, d0
	bge	.L41
	b	.L55
.L41:
	ldr	d0, [sp, 56]
	adrp	x0, .LC17
	add	x0, x0, :lo12:.LC17
	bl	libmin_printf
	mov	w0, 1
	b	.L36
.L55:
	ldr	d0, [sp, 40]
	fcmpe	d0, #0.0
	bgt	.L53
	b	.L56
.L53:
	fmov	d0, 1.0e+0
	b	.L46
.L56:
	fmov	d0, -1.0e+0
.L46:
	str	d0, [sp, 32]
	ldr	d0, [sp, 40]
	bl	libmin_fabs
	adrp	x0, .LC22
	ldr	d1, [x0, #:lo12:.LC22]
	fdiv	d0, d0, d1
	str	d0, [sp, 40]
	ldr	d0, [sp, 40]
	bl	libmin_floor
	fmov	d1, d0
	ldr	d0, [sp, 40]
	fsub	d0, d0, d1
	fadd	d0, d0, d0
	adrp	x0, .LC23
	ldr	d1, [x0, #:lo12:.LC23]
	fmul	d0, d0, d1
	ldr	d1, [sp, 32]
	fmul	d0, d1, d0
	str	d0, [sp, 40]
	fmov	d0, 1.0e+0
	str	d0, [sp, 32]
	ldr	d0, [sp, 40]
	adrp	x0, .LC23
	ldr	d1, [x0, #:lo12:.LC23]
	fcmpe	d0, d1
	bgt	.L54
	b	.L47
.L54:
	adrp	x0, .LC22
	ldr	d1, [x0, #:lo12:.LC22]
	ldr	d0, [sp, 40]
	fsub	d0, d1, d0
	str	d0, [sp, 40]
	fmov	d0, -1.0e+0
	str	d0, [sp, 32]
.L47:
	b	.L49
.L50:
	ldr	d0, [sp, 72]
	str	d0, [sp, 48]
	ldr	w0, [sp, 20]
	add	w1, w0, 1
	str	w1, [sp, 20]
	ldr	d1, [sp, 32]
	ldr	d0, [sp, 72]
	fmul	d0, d1, d0
	mov	w1, w0
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	bl	libmin_printf
.L49:
	ldr	x1, [sp, 64]
	mov	w0, 0
	ldr	d2, [sp, 40]
	ldr	d1, [sp, 56]
	ldr	d0, [sp, 48]
	blr	x1
	str	d0, [sp, 72]
	ldr	d1, [sp, 48]
	ldr	d0, [sp, 72]
	fsub	d0, d1, d0
	bl	libmin_fabs
	fmov	d1, d0
	adrp	x0, derror
	add	x0, x0, :lo12:derror
	ldr	d0, [x0]
	fcmpe	d1, d0
	bge	.L50
	bl	libmin_success
	mov	w0, 0
.L36:
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.align	2
	.global	bin_fact
	.type	bin_fact, %function
bin_fact:
.LFB9:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	fmov	d0, 1.0e+0
	str	d0, [sp, 32]
	ldr	w0, [sp, 12]
	scvtf	d1, w0
	fmov	d0, 2.0e+0
	fdiv	d1, d1, d0
	ldr	w0, [sp, 8]
	scvtf	d0, w0
	fsub	d0, d1, d0
	str	d0, [sp, 40]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	sub	w0, w1, w0
	str	w0, [sp, 28]
	b	.L58
.L63:
	ldr	w0, [sp, 28]
	scvtf	d0, w0
	str	d0, [sp, 48]
	ldr	w0, [sp, 12]
	scvtf	d1, w0
	ldr	w0, [sp, 8]
	scvtf	d0, w0
	fsub	d1, d1, d0
	ldr	d0, [sp, 48]
	fsub	d1, d1, d0
	fmov	d0, 1.0e+0
	fadd	d0, d1, d0
	str	d0, [sp, 56]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	sub	w1, w1, w0
	ldr	w0, [sp, 28]
	sub	w0, w1, w0
	ldr	w1, [sp, 8]
	cmp	w1, w0
	ble	.L59
	ldr	d1, [sp, 56]
	ldr	d0, [sp, 48]
	fmul	d0, d1, d0
	b	.L60
.L59:
	ldr	d0, [sp, 48]
.L60:
	str	d0, [sp, 64]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	sub	w1, w1, w0
	ldr	w0, [sp, 28]
	sub	w0, w1, w0
	ldr	w1, [sp, 8]
	cmp	w1, w0
	ble	.L61
	ldr	d0, [sp, 40]
	fmul	d0, d0, d0
	b	.L62
.L61:
	ldr	d0, [sp, 40]
.L62:
	str	d0, [sp, 72]
	ldr	d0, [sp, 64]
	ldr	d1, [sp, 72]
	fdiv	d0, d1, d0
	ldr	d1, [sp, 32]
	fmul	d0, d1, d0
	str	d0, [sp, 32]
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	str	w0, [sp, 28]
.L58:
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bgt	.L63
	ldr	d0, [sp, 32]
	add	sp, sp, 80
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9:
	.size	bin_fact, .-bin_fact
	.align	2
	.global	J
	.type	J, %function
J:
.LFB10:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	str	w0, [sp, 12]
	str	d0, [sp]
	str	xzr, [sp, 32]
	fmov	d0, 1.0e+0
	str	d0, [sp, 48]
	ldr	w0, [sp, 12]
	cmp	w0, 0
	csneg	w0, w0, w0, ge
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	scvtf	d0, w0
	str	d0, [sp, 56]
	mov	w0, 1
	str	w0, [sp, 24]
	b	.L66
.L67:
	ldr	w0, [sp, 24]
	scvtf	d0, w0
	str	d0, [sp, 64]
	ldr	d0, [sp, 64]
	fadd	d0, d0, d0
	ldr	d1, [sp]
	fdiv	d0, d1, d0
	ldr	d1, [sp, 48]
	fmul	d0, d1, d0
	str	d0, [sp, 48]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L66:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	ble	.L67
	ldr	d0, [sp, 48]
	str	d0, [sp, 40]
	ldr	d0, [sp, 40]
	str	d0, [sp, 32]
	mov	w0, 1
	str	w0, [sp, 24]
.L70:
	ldr	w0, [sp, 24]
	scvtf	d0, w0
	str	d0, [sp, 64]
	ldr	w0, [sp, 24]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L68
	fmov	d0, -1.0e+0
	b	.L69
.L68:
	fmov	d0, 1.0e+0
.L69:
	str	d0, [sp, 72]
	ldr	d0, [sp]
	fmul	d1, d0, d0
	ldr	d2, [sp, 64]
	fmov	d0, 4.0e+0
	fmul	d2, d2, d0
	ldr	d3, [sp, 56]
	ldr	d0, [sp, 64]
	fadd	d0, d3, d0
	fmul	d0, d2, d0
	fdiv	d0, d1, d0
	ldr	d1, [sp, 40]
	fmul	d0, d1, d0
	str	d0, [sp, 40]
	ldr	d1, [sp, 72]
	ldr	d0, [sp, 40]
	fmul	d0, d1, d0
	ldr	d1, [sp, 32]
	fadd	d0, d1, d0
	str	d0, [sp, 32]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldr	d0, [sp, 40]
	mov	x0, 4372995238176751616
	fmov	d1, x0
	fcmpe	d0, d1
	bgt	.L70
	ldr	w0, [sp, 28]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L71
	fmov	d0, -1.0e+0
	b	.L72
.L71:
	fmov	d0, 1.0e+0
.L72:
	str	d0, [sp, 72]
	ldr	w0, [sp, 12]
	cmp	w0, 0
	bge	.L73
	ldr	d1, [sp, 72]
	ldr	d0, [sp, 32]
	fmul	d0, d1, d0
	b	.L75
.L73:
	ldr	d0, [sp, 32]
.L75:
	add	sp, sp, 80
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10:
	.size	J, .-J
	.align	2
	.global	kepler
	.type	kepler, %function
kepler:
.LFB11:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	x0, [sp, 56]
	str	d0, [sp, 48]
	str	d1, [sp, 40]
	str	d2, [sp, 32]
	str	w1, [sp, 28]
	str	wzr, [sp, 68]
	fmov	d0, 1.0e+0
	str	d0, [sp, 72]
	adrp	x0, .LC20
	ldr	d0, [x0, #:lo12:.LC20]
	str	d0, [sp, 80]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	blt	.L77
	ldr	w0, [sp, 28]
	cmp	w0, 4
	bls	.L78
.L77:
	mov	w0, -1
	b	.L79
.L78:
	adrp	x0, methods
	add	x0, x0, :lo12:methods
	ldrsw	x1, [sp, 28]
	ldr	x0, [x0, x1, lsl 3]
	str	x0, [sp, 88]
	ldr	w0, [sp, 28]
	cmp	w0, 3
	bne	.L80
	ldr	d0, [sp, 40]
	adrp	x0, .LC21
	ldr	d1, [x0, #:lo12:.LC21]
	fcmpe	d0, d1
	bgt	.L95
	b	.L80
.L95:
	mov	w0, -1
	b	.L79
.L80:
	ldr	d0, [sp, 40]
	fcmpe	d0, #0.0
	bmi	.L82
	ldr	d1, [sp, 40]
	fmov	d0, 1.0e+0
	fcmpe	d1, d0
	bge	.L82
	b	.L99
.L82:
	mov	w0, -1
	b	.L79
.L99:
	ldr	d0, [sp, 48]
	fcmpe	d0, #0.0
	bgt	.L96
	b	.L100
.L96:
	fmov	d0, 1.0e+0
	b	.L87
.L100:
	fmov	d0, -1.0e+0
.L87:
	str	d0, [sp, 72]
	ldr	d0, [sp, 48]
	bl	libmin_fabs
	adrp	x0, .LC22
	ldr	d1, [x0, #:lo12:.LC22]
	fdiv	d0, d0, d1
	str	d0, [sp, 48]
	ldr	d0, [sp, 48]
	bl	libmin_floor
	fmov	d1, d0
	ldr	d0, [sp, 48]
	fsub	d0, d0, d1
	fadd	d0, d0, d0
	adrp	x0, .LC23
	ldr	d1, [x0, #:lo12:.LC23]
	fmul	d0, d0, d1
	ldr	d1, [sp, 72]
	fmul	d0, d1, d0
	str	d0, [sp, 48]
	ldr	d0, [sp, 48]
	fcmpe	d0, #0.0
	bgt	.L97
	b	.L101
.L97:
	fmov	d0, 1.0e+0
	b	.L90
.L101:
	fmov	d0, -1.0e+0
.L90:
	str	d0, [sp, 72]
	ldr	d0, [sp, 48]
	bl	libmin_fabs
	str	d0, [sp, 48]
	ldr	d0, [sp, 48]
	adrp	x0, .LC23
	ldr	d1, [x0, #:lo12:.LC23]
	fcmpe	d0, d1
	bgt	.L98
	b	.L91
.L98:
	adrp	x0, .LC22
	ldr	d1, [x0, #:lo12:.LC22]
	ldr	d0, [sp, 48]
	fsub	d0, d1, d0
	str	d0, [sp, 48]
	fmov	d0, -1.0e+0
	str	d0, [sp, 72]
.L91:
	b	.L93
.L94:
	ldr	x0, [sp, 56]
	ldr	d0, [x0]
	str	d0, [sp, 80]
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
.L93:
	ldr	x1, [sp, 88]
	mov	w0, 0
	ldr	d2, [sp, 48]
	ldr	d1, [sp, 40]
	ldr	d0, [sp, 80]
	blr	x1
	ldr	x0, [sp, 56]
	str	d0, [x0]
	ldr	x0, [sp, 56]
	ldr	d0, [x0]
	ldr	d1, [sp, 80]
	fsub	d0, d1, d0
	bl	libmin_fabs
	fmov	d1, d0
	ldr	d0, [sp, 32]
	fcmpe	d0, d1
	bls	.L94
	ldr	x0, [sp, 56]
	ldr	d1, [x0]
	ldr	d0, [sp, 72]
	fmul	d0, d1, d0
	ldr	x0, [sp, 56]
	str	d0, [x0]
	ldr	x1, [sp, 88]
	mov	w0, 1
	movi	d2, #0
	movi	d1, #0
	movi	d0, #0
	blr	x1
	ldr	w0, [sp, 68]
.L79:
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11:
	.size	kepler, .-kepler
	.data
	.align	3
	.type	scale.2, %object
	.size	scale.2, 8
scale.2:
	.word	1413754602
	.word	1072243195
	.local	n.1
	.comm	n.1,4,4
	.local	n.0
	.comm	n.0,4,4
	.section	.rodata
	.align	3
.LC0:
	.word	1413754602
	.word	1072243195
	.align	3
.LC19:
	.word	-1717986918
	.word	-1078355559
	.align	3
.LC20:
	.word	1413754602
	.word	1073291771
	.align	3
.LC21:
	.word	-1343157247
	.word	1071985969
	.align	3
.LC22:
	.word	1413754602
	.word	1075388923
	.align	3
.LC23:
	.word	1413754602
	.word	1074340347
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
