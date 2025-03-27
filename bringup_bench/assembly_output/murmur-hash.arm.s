	.arch armv8-a
	.file	"murmur-hash.c"
	.text
	.align	2
	.global	murmurhash
	.type	murmurhash, %function
murmurhash:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	str	w2, [sp]
	mov	w0, 11601
	movk	w0, 0xcc9e, lsl 16
	str	w0, [sp, 28]
	mov	w0, 13715
	movk	w0, 0x1b87, lsl 16
	str	w0, [sp, 32]
	mov	w0, 15
	str	w0, [sp, 36]
	mov	w0, 13
	str	w0, [sp, 40]
	mov	w0, 5
	str	w0, [sp, 44]
	mov	w0, 27492
	movk	w0, 0xe654, lsl 16
	str	w0, [sp, 48]
	str	wzr, [sp, 16]
	str	wzr, [sp, 20]
	ldr	x0, [sp, 8]
	str	x0, [sp, 56]
	str	xzr, [sp, 64]
	str	xzr, [sp, 72]
	str	wzr, [sp, 24]
	ldr	w0, [sp, 4]
	lsr	w0, w0, 2
	str	w0, [sp, 52]
	ldr	w0, [sp]
	str	w0, [sp, 16]
	ldr	w0, [sp, 52]
	lsl	w0, w0, 2
	sxtw	x0, w0
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	str	x0, [sp, 64]
	ldr	w0, [sp, 52]
	lsl	w0, w0, 2
	sxtw	x0, w0
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	str	x0, [sp, 72]
	ldr	w0, [sp, 52]
	neg	w0, w0
	str	w0, [sp, 24]
	b	.L2
.L3:
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 2
	ldr	x1, [sp, 64]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 20]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 28]
	mul	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 20]
	neg	w0, w0
	ror	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 32]
	mul	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 20]
	eor	w0, w1, w0
	str	w0, [sp, 16]
	ldr	w0, [sp, 40]
	ldr	w1, [sp, 16]
	neg	w0, w0
	ror	w0, w1, w0
	str	w0, [sp, 16]
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 44]
	mul	w0, w1, w0
	ldr	w1, [sp, 48]
	add	w0, w1, w0
	str	w0, [sp, 16]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L2:
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bne	.L3
	str	wzr, [sp, 20]
	ldr	w0, [sp, 4]
	and	w0, w0, 3
	cmp	w0, 3
	beq	.L4
	cmp	w0, 3
	bhi	.L5
	cmp	w0, 1
	beq	.L6
	cmp	w0, 2
	beq	.L7
	b	.L5
.L4:
	ldr	x0, [sp, 72]
	add	x0, x0, 2
	ldrb	w0, [x0]
	lsl	w0, w0, 16
	ldr	w1, [sp, 20]
	eor	w0, w1, w0
	str	w0, [sp, 20]
.L7:
	ldr	x0, [sp, 72]
	add	x0, x0, 1
	ldrb	w0, [x0]
	lsl	w0, w0, 8
	ldr	w1, [sp, 20]
	eor	w0, w1, w0
	str	w0, [sp, 20]
.L6:
	ldr	x0, [sp, 72]
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	w0, [sp, 20]
	eor	w0, w0, w1
	str	w0, [sp, 20]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 28]
	mul	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 20]
	neg	w0, w0
	ror	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 32]
	mul	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 20]
	eor	w0, w1, w0
	str	w0, [sp, 16]
.L5:
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 4]
	eor	w0, w1, w0
	str	w0, [sp, 16]
	ldr	w0, [sp, 16]
	lsr	w0, w0, 16
	ldr	w1, [sp, 16]
	eor	w0, w1, w0
	str	w0, [sp, 16]
	ldr	w1, [sp, 16]
	mov	w0, 51819
	movk	w0, 0x85eb, lsl 16
	mul	w0, w1, w0
	str	w0, [sp, 16]
	ldr	w0, [sp, 16]
	lsr	w0, w0, 13
	ldr	w1, [sp, 16]
	eor	w0, w1, w0
	str	w0, [sp, 16]
	ldr	w1, [sp, 16]
	mov	w0, 44597
	movk	w0, 0xc2b2, lsl 16
	mul	w0, w1, w0
	str	w0, [sp, 16]
	ldr	w0, [sp, 16]
	lsr	w0, w0, 16
	ldr	w1, [sp, 16]
	eor	w0, w1, w0
	str	w0, [sp, 16]
	ldr	w0, [sp, 16]
	add	sp, sp, 80
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	murmurhash, .-murmurhash
	.section	.rodata
	.align	3
.LC0:
	.string	"kinkajou"
	.align	3
.LC1:
	.string	"murmurhash(\"%s\") = 0x%x\n"
	.align	3
.LC2:
	.string	"The bringup-bench benchmark MURMUR made this."
	.align	3
.LC3:
	.string	"It has to start somewhere, it has to start sometime, what better place than here? What better time than now?"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	wzr, [sp, 24]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	bl	libmin_strlen
	ldr	w2, [sp, 24]
	mov	w1, w0
	ldr	x0, [sp, 40]
	bl	murmurhash
	str	w0, [sp, 28]
	ldr	w2, [sp, 28]
	ldr	x1, [sp, 40]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	libmin_printf
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	str	x0, [sp, 48]
	ldr	x0, [sp, 48]
	bl	libmin_strlen
	ldr	w2, [sp, 24]
	mov	w1, w0
	ldr	x0, [sp, 48]
	bl	murmurhash
	str	w0, [sp, 32]
	ldr	w2, [sp, 32]
	ldr	x1, [sp, 48]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	libmin_printf
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	bl	libmin_strlen
	ldr	w2, [sp, 24]
	mov	w1, w0
	ldr	x0, [sp, 56]
	bl	murmurhash
	str	w0, [sp, 36]
	ldr	w2, [sp, 36]
	ldr	x1, [sp, 56]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	libmin_printf
	bl	libmin_success
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
