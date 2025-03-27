	.arch armv8-a
	.file	"mersenne.c"
	.text
	.local	mt
	.comm	mt,2496,8
	.data
	.align	2
	.type	mti, %object
	.size	mti, 4
mti:
	.word	625
	.text
	.align	2
	.global	sgenrand
	.type	sgenrand, %function
sgenrand:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
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
	.size	sgenrand, .-sgenrand
	.align	2
	.global	lsgenrand
	.type	lsgenrand, %function
lsgenrand:
.LFB4:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	wzr, [sp, 28]
	b	.L5
.L6:
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w2, [x0]
	adrp	x0, mt
	add	x0, x0, :lo12:mt
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L5:
	ldr	w0, [sp, 28]
	cmp	w0, 623
	ble	.L6
	adrp	x0, mti
	add	x0, x0, :lo12:mti
	mov	w1, 624
	str	w1, [x0]
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	lsgenrand, .-lsgenrand
	.align	2
	.global	genrand
	.type	genrand, %function
genrand:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	adrp	x0, mti
	add	x0, x0, :lo12:mti
	ldr	w0, [x0]
	cmp	w0, 623
	ble	.L8
	adrp	x0, mti
	add	x0, x0, :lo12:mti
	ldr	w0, [x0]
	cmp	w0, 625
	bne	.L9
	mov	w0, 4357
	bl	sgenrand
.L9:
	str	wzr, [sp, 24]
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
.L10:
	ldr	w0, [sp, 24]
	cmp	w0, 226
	ble	.L11
	b	.L12
.L13:
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
.L12:
	ldr	w0, [sp, 24]
	cmp	w0, 622
	ble	.L13
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
.L8:
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
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	genrand, .-genrand
	.section	.rodata
	.align	3
.LC0:
	.string	"%10u "
	.align	3
.LC1:
	.string	"\n"
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
	mov	w0, 10000
	str	w0, [sp, 28]
	mov	w0, 4357
	bl	sgenrand
	str	wzr, [sp, 20]
	str	wzr, [sp, 24]
	b	.L16
.L18:
	ldr	w1, [sp, 20]
	mov	w0, 34079
	movk	w0, 0x51eb, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 5
	asr	w0, w1, 31
	sub	w0, w2, w0
	mov	w2, 100
	mul	w0, w0, w2
	sub	w0, w1, w0
	cmp	w0, 0
	bne	.L17
	bl	genrand
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	libmin_printf
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w2, [sp, 24]
	mov	w0, 26215
	movk	w0, 0x6666, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	asr	w1, w0, 1
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	sub	w1, w2, w0
	cmp	w1, 0
	bne	.L17
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	libmin_printf
.L17:
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L16:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L18
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	libmin_printf
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
	.data
	.align	3
	.type	mag01.0, %object
	.size	mag01.0, 8
mag01.0:
	.word	0
	.word	-1727483681
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
