	.arch armv8-a
	.file	"sieve.c"
	.text
	.local	L_Prime
	.comm	L_Prime,8,8
	.local	N_Prime
	.comm	N_Prime,8,8
	.local	flags
	.comm	flags,8192,8
	.section	.rodata
	.align	3
.LC0:
	.string	"  %9ld   %8ld     %8ld\n"
	.text
	.align	2
	.type	SIEVE, %function
SIEVE:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	str	x23, [sp, 48]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	.cfi_offset 23, -48
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	mov	x20, 0
	ldr	x0, [sp, 72]
	sub	x22, x0, #1
	adrp	x0, N_Prime
	add	x0, x0, :lo12:N_Prime
	str	xzr, [x0]
	adrp	x0, L_Prime
	add	x0, x0, :lo12:L_Prime
	str	xzr, [x0]
	str	xzr, [sp, 88]
	mov	x23, 0
	mov	x19, 0
	b	.L2
.L3:
	mov	x1, x19
	adrp	x0, flags
	add	x0, x0, :lo12:flags
	add	x0, x1, x0
	mov	w1, 1
	strb	w1, [x0]
	add	x19, x19, 1
.L2:
	cmp	x19, x22
	ble	.L3
	mov	x19, 0
	b	.L4
.L8:
	mov	x1, x19
	adrp	x0, flags
	add	x0, x0, :lo12:flags
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L5
	add	x23, x23, 1
	lsl	x0, x19, 1
	add	x20, x0, 3
	add	x21, x19, x20
	b	.L6
.L7:
	mov	x1, x21
	adrp	x0, flags
	add	x0, x0, :lo12:flags
	add	x0, x1, x0
	strb	wzr, [x0]
	add	x21, x21, x20
.L6:
	cmp	x21, x22
	ble	.L7
.L5:
	add	x19, x19, 1
.L4:
	cmp	x19, x22
	ble	.L8
	ldr	x0, [sp, 88]
	add	x0, x0, x23
	str	x0, [sp, 88]
	adrp	x0, N_Prime
	add	x0, x0, :lo12:N_Prime
	ldr	x1, [sp, 88]
	str	x1, [x0]
	adrp	x0, L_Prime
	add	x0, x0, :lo12:L_Prime
	str	x20, [x0]
	ldr	x0, [sp, 64]
	cmp	x0, 0
	beq	.L9
	adrp	x0, N_Prime
	add	x0, x0, :lo12:N_Prime
	ldr	x1, [x0]
	adrp	x0, L_Prime
	add	x0, x0, :lo12:L_Prime
	ldr	x0, [x0]
	mov	x3, x0
	mov	x2, x1
	ldr	x1, [sp, 72]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	libmin_printf
.L9:
	mov	w0, 0
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldr	x23, [sp, 48]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	SIEVE, .-SIEVE
	.section	.rodata
	.align	3
.LC1:
	.string	"\n   Sieve of Eratosthenes (Scaled to 10 Iterations)\n"
	.align	3
.LC2:
	.string	"   Version 1.2b, 26 Sep 1992\n\n"
	.align	3
.LC3:
	.string	"   Array Size   Number   Last Prime\n"
	.align	3
.LC4:
	.string	"    (Bytes)   of Primes\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	libmin_printf
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	libmin_printf
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	libmin_printf
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	libmin_printf
	mov	x0, 1024
	str	x0, [sp, 16]
	mov	x0, 1
	str	x0, [sp, 24]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	bl	SIEVE
	bl	libmin_success
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
