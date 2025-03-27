	.arch armv8-a
	.file	"totient.c"
	.text
	.align	2
	.type	my_gcd, %function
my_gcd:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	beq	.L2
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bne	.L3
.L2:
	mov	w0, -1
	b	.L4
.L3:
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bge	.L5
	ldr	w0, [sp, 28]
	neg	w0, w0
	str	w0, [sp, 28]
.L5:
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bge	.L6
	ldr	w0, [sp, 24]
	neg	w0, w0
	str	w0, [sp, 24]
.L6:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bge	.L7
	ldr	w0, [sp, 24]
	str	w0, [sp, 36]
	ldr	w0, [sp, 28]
	str	w0, [sp, 24]
	ldr	w0, [sp, 36]
	str	w0, [sp, 28]
.L7:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	sdiv	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 40]
	mul	w0, w1, w0
	ldr	w1, [sp, 24]
	sub	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bne	.L8
	ldr	w0, [sp, 28]
	b	.L4
.L8:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 28]
	bl	my_gcd
.L4:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	my_gcd, .-my_gcd
	.align	2
	.type	phi, %function
phi:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bge	.L10
	ldr	w0, [sp, 28]
	neg	w0, w0
	str	w0, [sp, 28]
.L10:
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bgt	.L11
	mov	w0, 0
	b	.L12
.L11:
	ldr	w0, [sp, 28]
	cmp	w0, 2
	bne	.L13
	mov	w0, 1
	b	.L12
.L13:
	ldr	w0, [sp, 28]
	cmp	w0, 3
	bne	.L14
	mov	w0, 2
	b	.L12
.L14:
	mov	w1, 2
	ldr	w0, [sp, 28]
	bl	phiphi
.L12:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	phi, .-phi
	.align	2
	.type	phiphi, %function
phiphi:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	w0, [sp, 44]
	str	w1, [sp, 40]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	ldr	w1, [sp, 44]
	cmp	w1, w0
	bne	.L16
	ldr	w0, [sp, 40]
	b	.L17
.L16:
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 40]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 40]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L18
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	sdiv	w0, w1, w0
	str	w0, [sp, 60]
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 40]
	bl	my_gcd
	cmp	w0, 1
	bne	.L19
	ldr	w0, [sp, 40]
	bl	phi
	mov	w19, w0
	ldr	w0, [sp, 60]
	bl	phi
	mul	w0, w19, w0
	b	.L17
.L19:
	ldr	w0, [sp, 60]
	bl	phi
	mov	w1, w0
	ldr	w0, [sp, 40]
	mul	w0, w1, w0
	b	.L17
.L18:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 44]
	bl	phiphi
.L17:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	phiphi, .-phiphi
	.section	.rodata
	.align	3
.LC0:
	.string	"1.0"
	.align	3
.LC1:
	.string	"%s\n"
	.align	3
.LC2:
	.ascii	"\ntotient [ -h -v --] n\n\nFind the Euler totient function o"
	.ascii	"f n, the number of k <= n such that\nk"
	.string	" and n are relatively prime. (1 is relatively prime to everything.)\n\n--: Signal end of options so that negative n can be input. (Silly, since\n    we merely define phi(-n) = phi(n).)\n-v: Print version number and exit. \n-h: Print this helpful information. \n\n"
	.align	3
.LC3:
	.string	"totient: unkown option %s\n"
	.align	3
.LC4:
	.string	"totient [ -h -v -- ] n"
	.align	3
.LC5:
	.string	"totient: not defined for n = 0.\n"
	.align	3
.LC6:
	.string	"phi(%d) = %d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	mov	w0, 1
	str	w0, [sp, 36]
	str	xzr, [sp, 40]
	str	wzr, [sp, 32]
	nop
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	bge	.L27
	ldrsw	x0, [sp, 32]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldrb	w0, [x0]
	cmp	w0, 45
	bne	.L33
	ldrsw	x0, [sp, 32]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x0, [x0]
	add	x0, x0, 1
	ldrb	w0, [x0]
	cmp	w0, 45
	beq	.L23
	cmp	w0, 45
	blt	.L24
	cmp	w0, 118
	bgt	.L24
	cmp	w0, 63
	blt	.L24
	sub	w0, w0, #63
	mov	x1, 1
	lsl	x0, x1, x0
	mov	x1, 513
	movk	x1, 0x200, lsl 32
	and	x1, x0, x1
	cmp	x1, 0
	cset	w1, ne
	and	w1, w1, 255
	and	w1, w1, 1
	cmp	w1, 0
	bne	.L25
	and	x0, x0, 36028797027352576
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L26
	b	.L24
.L23:
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
	nop
	b	.L33
.L26:
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	libmin_printf
	bl	libmin_success
.L25:
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	libmin_printf
	bl	libmin_success
.L24:
	ldrsw	x0, [sp, 32]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x1, x0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	libmin_printf
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	libmin_printf
	mov	w0, 1
	bl	libmin_fail
.L33:
	nop
.L27:
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L29
	mov	w0, 45457
	str	w0, [sp, 28]
	b	.L30
.L29:
	ldr	w0, [sp, 32]
	add	w1, w0, 1
	str	w1, [sp, 32]
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	libmin_atoi
	str	w0, [sp, 28]
.L30:
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L31
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	libmin_printf
	mov	w0, 1
	b	.L32
.L31:
	ldr	w0, [sp, 28]
	bl	phi
	mov	w2, w0
	ldr	w1, [sp, 28]
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	libmin_printf
	bl	libmin_success
	mov	w0, 0
.L32:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
