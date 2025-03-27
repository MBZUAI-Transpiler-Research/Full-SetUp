	.arch armv8-a
	.file	"cipher.c"
	.text
	.align	2
	.global	encipher
	.type	encipher, %function
encipher:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	str	w0, [sp, 44]
	ldr	x0, [sp, 24]
	ldr	w0, [x0, 4]
	str	w0, [sp, 48]
	str	wzr, [sp, 52]
	mov	w0, 31161
	movk	w0, 0x9e37, lsl 16
	str	w0, [sp, 60]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	str	w0, [sp, 64]
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	ldr	w0, [x0]
	str	w0, [sp, 68]
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	ldr	w0, [x0]
	str	w0, [sp, 72]
	ldr	x0, [sp, 8]
	add	x0, x0, 12
	ldr	w0, [x0]
	str	w0, [sp, 76]
	mov	w0, 32
	str	w0, [sp, 56]
	b	.L2
.L3:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 60]
	add	w0, w1, w0
	str	w0, [sp, 52]
	ldr	w0, [sp, 48]
	lsl	w1, w0, 4
	ldr	w0, [sp, 64]
	add	w1, w1, w0
	ldr	w2, [sp, 48]
	ldr	w0, [sp, 52]
	add	w0, w2, w0
	eor	w1, w1, w0
	ldr	w0, [sp, 48]
	lsr	w2, w0, 5
	ldr	w0, [sp, 68]
	add	w0, w2, w0
	eor	w0, w1, w0
	ldr	w1, [sp, 44]
	add	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	lsl	w1, w0, 4
	ldr	w0, [sp, 72]
	add	w1, w1, w0
	ldr	w2, [sp, 44]
	ldr	w0, [sp, 52]
	add	w0, w2, w0
	eor	w1, w1, w0
	ldr	w0, [sp, 44]
	lsr	w2, w0, 5
	ldr	w0, [sp, 76]
	add	w0, w2, w0
	eor	w0, w1, w0
	ldr	w1, [sp, 48]
	add	w0, w1, w0
	str	w0, [sp, 48]
.L2:
	ldr	w0, [sp, 56]
	sub	w1, w0, #1
	str	w1, [sp, 56]
	cmp	w0, 0
	bne	.L3
	ldr	x0, [sp, 16]
	ldr	w1, [sp, 44]
	str	w1, [x0]
	ldr	x0, [sp, 16]
	add	x0, x0, 4
	ldr	w1, [sp, 48]
	str	w1, [x0]
	nop
	add	sp, sp, 80
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	encipher, .-encipher
	.align	2
	.global	decipher
	.type	decipher, %function
decipher:
.LFB4:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	str	w0, [sp, 44]
	ldr	x0, [sp, 24]
	ldr	w0, [x0, 4]
	str	w0, [sp, 48]
	mov	w0, 14112
	movk	w0, 0xc6ef, lsl 16
	str	w0, [sp, 52]
	mov	w0, 31161
	movk	w0, 0x9e37, lsl 16
	str	w0, [sp, 60]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	str	w0, [sp, 64]
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	ldr	w0, [x0]
	str	w0, [sp, 68]
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	ldr	w0, [x0]
	str	w0, [sp, 72]
	ldr	x0, [sp, 8]
	add	x0, x0, 12
	ldr	w0, [x0]
	str	w0, [sp, 76]
	mov	w0, 32
	str	w0, [sp, 56]
	b	.L5
.L6:
	ldr	w0, [sp, 44]
	lsl	w1, w0, 4
	ldr	w0, [sp, 72]
	add	w1, w1, w0
	ldr	w2, [sp, 44]
	ldr	w0, [sp, 52]
	add	w0, w2, w0
	eor	w1, w1, w0
	ldr	w0, [sp, 44]
	lsr	w2, w0, 5
	ldr	w0, [sp, 76]
	add	w0, w2, w0
	eor	w0, w1, w0
	ldr	w1, [sp, 48]
	sub	w0, w1, w0
	str	w0, [sp, 48]
	ldr	w0, [sp, 48]
	lsl	w1, w0, 4
	ldr	w0, [sp, 64]
	add	w1, w1, w0
	ldr	w2, [sp, 48]
	ldr	w0, [sp, 52]
	add	w0, w2, w0
	eor	w1, w1, w0
	ldr	w0, [sp, 48]
	lsr	w2, w0, 5
	ldr	w0, [sp, 68]
	add	w0, w2, w0
	eor	w0, w1, w0
	ldr	w1, [sp, 44]
	sub	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 60]
	sub	w0, w1, w0
	str	w0, [sp, 52]
.L5:
	ldr	w0, [sp, 56]
	sub	w1, w0, #1
	str	w1, [sp, 56]
	cmp	w0, 0
	bne	.L6
	ldr	x0, [sp, 16]
	ldr	w1, [sp, 44]
	str	w1, [x0]
	ldr	x0, [sp, 16]
	add	x0, x0, 4
	ldr	w1, [sp, 48]
	str	w1, [x0]
	nop
	add	sp, sp, 80
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	decipher, .-decipher
	.global	keytext
	.data
	.align	3
	.type	keytext, %object
	.size	keytext, 16
keytext:
	.word	358852050
	.word	311606025
	.word	739108171
	.word	861449956
	.global	plaintext
	.align	3
	.type	plaintext, %object
	.size	plaintext, 8
plaintext:
	.word	765625614
	.word	14247501
	.global	cipherref
	.align	3
	.type	cipherref, %object
	.size	cipherref, 8
cipherref:
	.word	-1612527516
	.word	-673559132
	.global	ciphertext
	.bss
	.align	3
	.type	ciphertext, %object
	.size	ciphertext, 8
ciphertext:
	.zero	8
	.global	newplain
	.align	3
	.type	newplain, %object
	.size	newplain, 8
newplain:
	.zero	8
	.section	.rodata
	.align	3
.LC0:
	.string	"TEA Cipher results:\n"
	.align	3
.LC1:
	.string	"  plaintext:  0x%08lx 0x%08lx\n"
	.align	3
.LC2:
	.string	"  ciphertext: 0x%08lx 0x%08lx\n"
	.align	3
.LC3:
	.string	"  newplain:   0x%08lx 0x%08lx\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	adrp	x0, keytext
	add	x2, x0, :lo12:keytext
	adrp	x0, ciphertext
	add	x1, x0, :lo12:ciphertext
	adrp	x0, plaintext
	add	x0, x0, :lo12:plaintext
	bl	encipher
	adrp	x0, ciphertext
	add	x0, x0, :lo12:ciphertext
	ldr	w1, [x0]
	adrp	x0, cipherref
	add	x0, x0, :lo12:cipherref
	ldr	w0, [x0]
	cmp	w1, w0
	bne	.L8
	adrp	x0, ciphertext
	add	x0, x0, :lo12:ciphertext
	ldr	w1, [x0, 4]
	adrp	x0, cipherref
	add	x0, x0, :lo12:cipherref
	ldr	w0, [x0, 4]
	cmp	w1, w0
	beq	.L9
.L8:
	mov	w0, 1
	bl	libmin_fail
.L9:
	adrp	x0, keytext
	add	x2, x0, :lo12:keytext
	adrp	x0, newplain
	add	x1, x0, :lo12:newplain
	adrp	x0, ciphertext
	add	x0, x0, :lo12:ciphertext
	bl	decipher
	adrp	x0, newplain
	add	x0, x0, :lo12:newplain
	ldr	w1, [x0]
	adrp	x0, plaintext
	add	x0, x0, :lo12:plaintext
	ldr	w0, [x0]
	cmp	w1, w0
	bne	.L10
	adrp	x0, newplain
	add	x0, x0, :lo12:newplain
	ldr	w1, [x0, 4]
	adrp	x0, plaintext
	add	x0, x0, :lo12:plaintext
	ldr	w0, [x0, 4]
	cmp	w1, w0
	beq	.L11
.L10:
	mov	w0, 2
	bl	libmin_fail
.L11:
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	libmin_printf
	adrp	x0, plaintext
	add	x0, x0, :lo12:plaintext
	ldr	w1, [x0]
	adrp	x0, plaintext
	add	x0, x0, :lo12:plaintext
	ldr	w0, [x0, 4]
	mov	w2, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	libmin_printf
	adrp	x0, ciphertext
	add	x0, x0, :lo12:ciphertext
	ldr	w1, [x0]
	adrp	x0, ciphertext
	add	x0, x0, :lo12:ciphertext
	ldr	w0, [x0, 4]
	mov	w2, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	libmin_printf
	adrp	x0, newplain
	add	x0, x0, :lo12:newplain
	ldr	w1, [x0]
	adrp	x0, newplain
	add	x0, x0, :lo12:newplain
	ldr	w0, [x0, 4]
	mov	w2, w0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	libmin_printf
	bl	libmin_success
	mov	w0, 0
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
