	.arch armv8-a
	.file	"libmin_rand.c"
	.text
	.local	mt_initialized
	.comm	mt_initialized,4,4
	.local	mt
	.comm	mt,2500,8
	.data
	.align	2
	.type	mti, %object
	.size	mti, 4
mti:
	.word	625
	.text
	.align	2
	.global	libmin_srand
	.type	libmin_srand, %function
libmin_srand:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	adrp	x0, mt_initialized
	add	x0, x0, :lo12:mt_initialized
	mov	w1, 1
	str	w1, [x0]
	str	wzr, [sp, 28]
	b	.L2
.L3:
	ldr	w0, [sp, 12]
	and	w2, w0, -65536
	adrp	x0, mt
	add	x0, x0, :lo12:mt
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	ldr	w1, [sp, 12]
	mov	w0, 3533
	movk	w0, 0x1, lsl 16
	mul	w0, w1, w0
	add	w0, w0, 1
	str	w0, [sp, 12]
	adrp	x0, mt
	add	x0, x0, :lo12:mt
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 12]
	lsr	w0, w0, 16
	orr	w2, w1, w0
	adrp	x0, mt
	add	x0, x0, :lo12:mt
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	ldr	w1, [sp, 12]
	mov	w0, 3533
	movk	w0, 0x1, lsl 16
	mul	w0, w1, w0
	add	w0, w0, 1
	str	w0, [sp, 12]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	ldr	w0, [sp, 28]
	cmp	w0, 623
	ble	.L3
	adrp	x0, mti
	add	x0, x0, :lo12:mti
	mov	w1, 624
	str	w1, [x0]
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_srand, .-libmin_srand
	.section	.rodata
	.align	3
.LC0:
	.string	"ERROR: rng is not initialized, call mysrand()!\n"
	.text
	.align	2
	.global	libmin_rand
	.type	libmin_rand, %function
libmin_rand:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	adrp	x0, mt_initialized
	add	x0, x0, :lo12:mt_initialized
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L5
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	libmin_printf
	mov	w0, 1
	bl	libmin_fail
.L5:
	adrp	x0, mti
	add	x0, x0, :lo12:mti
	ldr	w0, [x0]
	cmp	w0, 623
	ble	.L6
	adrp	x0, mti
	add	x0, x0, :lo12:mti
	ldr	w0, [x0]
	cmp	w0, 625
	bne	.L7
	mov	w0, 4357
	bl	libmin_srand
.L7:
	str	wzr, [sp, 24]
	b	.L8
.L9:
	adrp	x0, mt
	add	x0, x0, :lo12:mt
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	and	w1, w0, -2147483648
	ldr	w0, [sp, 24]
	add	w2, w0, 1
	adrp	x0, mt
	add	x0, x0, :lo12:mt
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	and	w0, w0, 2147483647
	orr	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	add	w1, w0, 397
	adrp	x0, mt
	add	x0, x0, :lo12:mt
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	lsr	w0, w0, 1
	eor	w1, w1, w0
	ldr	w0, [sp, 28]
	and	w2, w0, 1
	adrp	x0, mag01.0
	add	x0, x0, :lo12:mag01.0
	uxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	eor	w2, w1, w0
	adrp	x0, mt
	add	x0, x0, :lo12:mt
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L8:
	ldr	w0, [sp, 24]
	cmp	w0, 226
	ble	.L9
	b	.L10
.L11:
	adrp	x0, mt
	add	x0, x0, :lo12:mt
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	and	w1, w0, -2147483648
	ldr	w0, [sp, 24]
	add	w2, w0, 1
	adrp	x0, mt
	add	x0, x0, :lo12:mt
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	and	w0, w0, 2147483647
	orr	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	sub	w1, w0, #227
	adrp	x0, mt
	add	x0, x0, :lo12:mt
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	lsr	w0, w0, 1
	eor	w1, w1, w0
	ldr	w0, [sp, 28]
	and	w2, w0, 1
	adrp	x0, mag01.0
	add	x0, x0, :lo12:mag01.0
	uxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	eor	w2, w1, w0
	adrp	x0, mt
	add	x0, x0, :lo12:mt
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L10:
	ldr	w0, [sp, 24]
	cmp	w0, 622
	ble	.L11
	adrp	x0, mt
	add	x0, x0, :lo12:mt
	ldr	w0, [x0, 2492]
	and	w1, w0, -2147483648
	adrp	x0, mt
	add	x0, x0, :lo12:mt
	ldr	w0, [x0]
	and	w0, w0, 2147483647
	orr	w0, w1, w0
	str	w0, [sp, 28]
	adrp	x0, mt
	add	x0, x0, :lo12:mt
	ldr	w1, [x0, 1584]
	ldr	w0, [sp, 28]
	lsr	w0, w0, 1
	eor	w1, w1, w0
	ldr	w0, [sp, 28]
	and	w2, w0, 1
	adrp	x0, mag01.0
	add	x0, x0, :lo12:mag01.0
	uxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	eor	w1, w1, w0
	adrp	x0, mt
	add	x0, x0, :lo12:mt
	str	w1, [x0, 2492]
	adrp	x0, mti
	add	x0, x0, :lo12:mti
	str	wzr, [x0]
.L6:
	adrp	x0, mti
	add	x0, x0, :lo12:mti
	ldr	w0, [x0]
	add	w2, w0, 1
	adrp	x1, mti
	add	x1, x1, :lo12:mti
	str	w2, [x1]
	adrp	x1, mt
	add	x1, x1, :lo12:mt
	sxtw	x0, w0
	ldr	w0, [x1, x0, lsl 2]
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	lsr	w0, w0, 11
	ldr	w1, [sp, 28]
	eor	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	lsl	w1, w0, 7
	mov	w0, 22144
	movk	w0, 0x9d2c, lsl 16
	and	w0, w1, w0
	ldr	w1, [sp, 28]
	eor	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	lsl	w1, w0, 15
	mov	w0, -272236544
	and	w0, w1, w0
	ldr	w1, [sp, 28]
	eor	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	lsr	w0, w0, 18
	ldr	w1, [sp, 28]
	eor	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	and	w0, w0, 2147483647
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	libmin_rand, .-libmin_rand
	.data
	.align	3
	.type	mag01.0, %object
	.size	mag01.0, 8
mag01.0:
	.word	0
	.word	-1727483681
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
