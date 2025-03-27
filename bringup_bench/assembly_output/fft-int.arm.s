	.arch armv8-a
	.file	"fft-int.c"
	.text
	.align	2
	.global	fix_fft
	.type	fix_fft, %function
fix_fft:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -112
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	w2, [sp, 44]
	str	w3, [sp, 40]
	ldr	w0, [sp, 44]
	mov	w1, 1
	lsl	w0, w1, w0
	str	w0, [sp, 108]
	ldr	w0, [sp, 108]
	cmp	w0, 1024
	ble	.L2
	mov	w0, -1
	b	.L3
.L2:
	str	wzr, [sp, 64]
	ldr	w0, [sp, 108]
	sub	w0, w0, #1
	str	w0, [sp, 112]
	str	wzr, [sp, 84]
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L4
.L8:
	ldr	w0, [sp, 108]
	str	w0, [sp, 76]
.L5:
	ldr	w0, [sp, 76]
	asr	w0, w0, 1
	str	w0, [sp, 76]
	ldr	w1, [sp, 64]
	ldr	w0, [sp, 76]
	add	w0, w1, w0
	ldr	w1, [sp, 112]
	cmp	w1, w0
	blt	.L5
	ldr	w0, [sp, 76]
	sub	w1, w0, #1
	ldr	w0, [sp, 64]
	and	w0, w1, w0
	ldr	w1, [sp, 76]
	add	w0, w1, w0
	str	w0, [sp, 64]
	ldr	w1, [sp, 64]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	ble	.L27
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 120]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x1, x1, x0
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x2, [sp, 56]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w1, [sp, 120]
	str	w1, [x0]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 124]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x1, [sp, 48]
	add	x1, x1, x0
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x2, [sp, 48]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	w1, [sp, 124]
	str	w1, [x0]
	b	.L7
.L27:
	nop
.L7:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L4:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 112]
	cmp	w1, w0
	ble	.L8
	mov	w0, 1
	str	w0, [sp, 76]
	mov	w0, 9
	str	w0, [sp, 80]
	b	.L9
.L26:
	ldr	w0, [sp, 40]
	cmp	w0, 0
	beq	.L10
	str	wzr, [sp, 88]
	str	wzr, [sp, 68]
	b	.L11
.L17:
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 72]
	ldr	w0, [sp, 72]
	cmp	w0, 0
	bge	.L12
	ldr	w0, [sp, 72]
	neg	w0, w0
	str	w0, [sp, 72]
.L12:
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 2
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bge	.L13
	ldr	w0, [sp, 44]
	neg	w0, w0
	str	w0, [sp, 44]
.L13:
	ldr	w1, [sp, 72]
	mov	w0, 16383
	cmp	w1, w0
	bgt	.L14
	ldr	w1, [sp, 44]
	mov	w0, 16383
	cmp	w1, w0
	ble	.L15
.L14:
	mov	w0, 1
	str	w0, [sp, 88]
	b	.L16
.L15:
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
.L11:
	ldr	w1, [sp, 68]
	ldr	w0, [sp, 108]
	cmp	w1, w0
	blt	.L17
.L16:
	ldr	w0, [sp, 88]
	cmp	w0, 0
	beq	.L18
	ldr	w0, [sp, 84]
	add	w0, w0, 1
	str	w0, [sp, 84]
	b	.L18
.L10:
	mov	w0, 1
	str	w0, [sp, 88]
.L18:
	ldr	w0, [sp, 76]
	lsl	w0, w0, 1
	str	w0, [sp, 116]
	str	wzr, [sp, 44]
	b	.L19
.L25:
	ldr	w0, [sp, 80]
	ldr	w1, [sp, 44]
	lsl	w0, w1, w0
	str	w0, [sp, 72]
	ldr	w0, [sp, 72]
	add	w1, w0, 256
	adrp	x0, Sinewave
	add	x0, x0, :lo12:Sinewave
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 100]
	adrp	x0, Sinewave
	add	x0, x0, :lo12:Sinewave
	ldrsw	x1, [sp, 72]
	ldr	w0, [x0, x1, lsl 2]
	neg	w0, w0
	str	w0, [sp, 104]
	ldr	w0, [sp, 40]
	cmp	w0, 0
	beq	.L20
	ldr	w0, [sp, 104]
	neg	w0, w0
	str	w0, [sp, 104]
.L20:
	ldr	w0, [sp, 88]
	cmp	w0, 0
	beq	.L21
	ldr	w0, [sp, 100]
	asr	w0, w0, 1
	str	w0, [sp, 100]
	ldr	w0, [sp, 104]
	asr	w0, w0, 1
	str	w0, [sp, 104]
.L21:
	ldr	w0, [sp, 44]
	str	w0, [sp, 68]
	b	.L22
.L24:
	ldr	w1, [sp, 68]
	ldr	w0, [sp, 76]
	add	w0, w1, w0
	str	w0, [sp, 72]
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w0, [x0]
	mov	w1, w0
	ldr	w0, [sp, 100]
	bl	fix_mpy
	mov	w19, w0
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	w0, [x0]
	mov	w1, w0
	ldr	w0, [sp, 104]
	bl	fix_mpy
	sub	w0, w19, w0
	str	w0, [sp, 120]
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	w0, [x0]
	mov	w1, w0
	ldr	w0, [sp, 100]
	bl	fix_mpy
	mov	w19, w0
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w0, [x0]
	mov	w1, w0
	ldr	w0, [sp, 104]
	bl	fix_mpy
	add	w0, w19, w0
	str	w0, [sp, 124]
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 92]
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 2
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 96]
	ldr	w0, [sp, 88]
	cmp	w0, 0
	beq	.L23
	ldr	w0, [sp, 92]
	asr	w0, w0, 1
	str	w0, [sp, 92]
	ldr	w0, [sp, 96]
	asr	w0, w0, 1
	str	w0, [sp, 96]
.L23:
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w2, [sp, 92]
	ldr	w1, [sp, 120]
	sub	w1, w2, w1
	str	w1, [x0]
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	w2, [sp, 96]
	ldr	w1, [sp, 124]
	sub	w1, w2, w1
	str	w1, [x0]
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w2, [sp, 92]
	ldr	w1, [sp, 120]
	add	w1, w2, w1
	str	w1, [x0]
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 2
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	w2, [sp, 96]
	ldr	w1, [sp, 124]
	add	w1, w2, w1
	str	w1, [x0]
	ldr	w1, [sp, 68]
	ldr	w0, [sp, 116]
	add	w0, w1, w0
	str	w0, [sp, 68]
.L22:
	ldr	w1, [sp, 68]
	ldr	w0, [sp, 108]
	cmp	w1, w0
	blt	.L24
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L19:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 76]
	cmp	w1, w0
	blt	.L25
	ldr	w0, [sp, 80]
	sub	w0, w0, #1
	str	w0, [sp, 80]
	ldr	w0, [sp, 116]
	str	w0, [sp, 76]
.L9:
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 108]
	cmp	w1, w0
	blt	.L26
	ldr	w0, [sp, 84]
.L3:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 128
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	fix_fft, .-fix_fft
	.align	2
	.global	window
	.type	window, %function
window:
.LFB4:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	mov	w1, 1024
	ldr	w0, [sp, 4]
	sdiv	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 4]
	asr	w0, w0, 1
	str	w0, [sp, 4]
	str	wzr, [sp, 20]
	mov	w0, 256
	str	w0, [sp, 24]
	b	.L29
.L30:
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [x0]
	adrp	x0, Sinewave
	add	x0, x0, :lo12:Sinewave
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	asr	w0, w0, 1
	mov	w2, 16384
	sub	w0, w2, w0
	mul	w1, w1, w0
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	asr	w1, w1, 15
	str	w1, [x0]
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w1, w0
	str	w0, [sp, 24]
.L29:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L30
	ldr	w0, [sp, 4]
	lsl	w0, w0, 1
	str	w0, [sp, 4]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	sub	w0, w1, w0
	str	w0, [sp, 24]
	b	.L31
.L32:
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [x0]
	adrp	x0, Sinewave
	add	x0, x0, :lo12:Sinewave
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	asr	w0, w0, 1
	mov	w2, 16384
	sub	w0, w2, w0
	mul	w1, w1, w0
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	asr	w1, w1, 15
	str	w1, [x0]
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	sub	w0, w1, w0
	str	w0, [sp, 24]
.L31:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L32
	nop
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	window, .-window
	.align	2
	.global	fix_loud
	.type	fix_loud, %function
fix_loud:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	w3, [sp, 20]
	str	w4, [sp, 16]
	str	wzr, [sp, 60]
	ldr	w0, [sp, 16]
	cmp	w0, 0
	ble	.L34
	mov	w0, 10
	str	w0, [sp, 60]
.L34:
	ldr	w0, [sp, 16]
	add	w1, w0, 1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	lsl	w0, w0, 1
	str	w0, [sp, 16]
	str	wzr, [sp, 56]
	b	.L35
.L37:
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w2, [x0]
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	mov	w1, w0
	mov	w0, w2
	bl	db_from_ampl
	mov	w2, w0
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w1, [sp, 16]
	add	w1, w2, w1
	str	w1, [x0]
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	bge	.L36
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w1, [sp, 60]
	str	w1, [x0]
.L36:
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L35:
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L37
	nop
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	fix_loud, .-fix_loud
	.align	2
	.global	db_from_ampl
	.type	db_from_ampl, %function
db_from_ampl:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	adrp	x0, loud2.0
	add	x0, x0, :lo12:loud2.0
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L39
	adrp	x0, Loudampl
	add	x0, x0, :lo12:Loudampl
	ldr	w1, [x0]
	adrp	x0, Loudampl
	add	x0, x0, :lo12:Loudampl
	ldr	w0, [x0]
	mul	w1, w1, w0
	adrp	x0, loud2.0
	add	x0, x0, :lo12:loud2.0
	str	w1, [x0]
	mov	w0, 1
	str	w0, [sp, 24]
	b	.L40
.L41:
	adrp	x0, Loudampl
	add	x0, x0, :lo12:Loudampl
	ldrsw	x1, [sp, 24]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, Loudampl
	add	x0, x0, :lo12:Loudampl
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	mul	w0, w1, w0
	str	w0, [sp, 28]
	adrp	x0, loud2.0
	add	x0, x0, :lo12:loud2.0
	ldrsw	x1, [sp, 24]
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 24]
	sub	w1, w0, #1
	adrp	x0, loud2.0
	add	x0, x0, :lo12:loud2.0
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	add	w0, w1, w0
	ldr	w1, [sp, 24]
	sub	w3, w1, #1
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w2, w0
	adrp	x0, loud2.0
	add	x0, x0, :lo12:loud2.0
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L40:
	ldr	w0, [sp, 24]
	cmp	w0, 99
	ble	.L41
.L39:
	ldr	w0, [sp, 12]
	mul	w1, w0, w0
	ldr	w0, [sp, 8]
	mul	w0, w0, w0
	add	w0, w1, w0
	str	w0, [sp, 28]
	str	wzr, [sp, 24]
	b	.L42
.L45:
	adrp	x0, loud2.0
	add	x0, x0, :lo12:loud2.0
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bge	.L47
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L42:
	ldr	w0, [sp, 24]
	cmp	w0, 99
	ble	.L45
	b	.L44
.L47:
	nop
.L44:
	ldr	w0, [sp, 24]
	neg	w0, w0
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	db_from_ampl, .-db_from_ampl
	.align	2
	.global	fix_mpy
	.type	fix_mpy, %function
fix_mpy:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	mul	w0, w1, w0
	asr	w0, w0, 15
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	fix_mpy, .-fix_mpy
	.align	2
	.global	iscale
	.type	iscale, %function
iscale:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	str	w2, [sp, 4]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	mul	w1, w1, w0
	ldr	w0, [sp, 4]
	sdiv	w0, w1, w0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	iscale, .-iscale
	.global	Sinewave
	.data
	.align	3
	.type	Sinewave, %object
	.size	Sinewave, 4096
Sinewave:
	.word	0
	.word	201
	.word	402
	.word	603
	.word	804
	.word	1005
	.word	1206
	.word	1406
	.word	1607
	.word	1808
	.word	2009
	.word	2209
	.word	2410
	.word	2610
	.word	2811
	.word	3011
	.word	3211
	.word	3411
	.word	3611
	.word	3811
	.word	4011
	.word	4210
	.word	4409
	.word	4608
	.word	4807
	.word	5006
	.word	5205
	.word	5403
	.word	5601
	.word	5799
	.word	5997
	.word	6195
	.word	6392
	.word	6589
	.word	6786
	.word	6982
	.word	7179
	.word	7375
	.word	7571
	.word	7766
	.word	7961
	.word	8156
	.word	8351
	.word	8545
	.word	8739
	.word	8932
	.word	9126
	.word	9319
	.word	9511
	.word	9703
	.word	9895
	.word	10087
	.word	10278
	.word	10469
	.word	10659
	.word	10849
	.word	11038
	.word	11227
	.word	11416
	.word	11604
	.word	11792
	.word	11980
	.word	12166
	.word	12353
	.word	12539
	.word	12724
	.word	12909
	.word	13094
	.word	13278
	.word	13462
	.word	13645
	.word	13827
	.word	14009
	.word	14191
	.word	14372
	.word	14552
	.word	14732
	.word	14911
	.word	15090
	.word	15268
	.word	15446
	.word	15623
	.word	15799
	.word	15975
	.word	16150
	.word	16325
	.word	16499
	.word	16672
	.word	16845
	.word	17017
	.word	17189
	.word	17360
	.word	17530
	.word	17699
	.word	17868
	.word	18036
	.word	18204
	.word	18371
	.word	18537
	.word	18702
	.word	18867
	.word	19031
	.word	19194
	.word	19357
	.word	19519
	.word	19680
	.word	19840
	.word	20000
	.word	20159
	.word	20317
	.word	20474
	.word	20631
	.word	20787
	.word	20942
	.word	21096
	.word	21249
	.word	21402
	.word	21554
	.word	21705
	.word	21855
	.word	22004
	.word	22153
	.word	22301
	.word	22448
	.word	22594
	.word	22739
	.word	22883
	.word	23027
	.word	23169
	.word	23311
	.word	23452
	.word	23592
	.word	23731
	.word	23869
	.word	24006
	.word	24143
	.word	24278
	.word	24413
	.word	24546
	.word	24679
	.word	24811
	.word	24942
	.word	25072
	.word	25201
	.word	25329
	.word	25456
	.word	25582
	.word	25707
	.word	25831
	.word	25954
	.word	26077
	.word	26198
	.word	26318
	.word	26437
	.word	26556
	.word	26673
	.word	26789
	.word	26905
	.word	27019
	.word	27132
	.word	27244
	.word	27355
	.word	27466
	.word	27575
	.word	27683
	.word	27790
	.word	27896
	.word	28001
	.word	28105
	.word	28208
	.word	28309
	.word	28410
	.word	28510
	.word	28608
	.word	28706
	.word	28802
	.word	28897
	.word	28992
	.word	29085
	.word	29177
	.word	29268
	.word	29358
	.word	29446
	.word	29534
	.word	29621
	.word	29706
	.word	29790
	.word	29873
	.word	29955
	.word	30036
	.word	30116
	.word	30195
	.word	30272
	.word	30349
	.word	30424
	.word	30498
	.word	30571
	.word	30643
	.word	30713
	.word	30783
	.word	30851
	.word	30918
	.word	30984
	.word	31049
	.word	31113
	.word	31175
	.word	31236
	.word	31297
	.word	31356
	.word	31413
	.word	31470
	.word	31525
	.word	31580
	.word	31633
	.word	31684
	.word	31735
	.word	31785
	.word	31833
	.word	31880
	.word	31926
	.word	31970
	.word	32014
	.word	32056
	.word	32097
	.word	32137
	.word	32176
	.word	32213
	.word	32249
	.word	32284
	.word	32318
	.word	32350
	.word	32382
	.word	32412
	.word	32441
	.word	32468
	.word	32495
	.word	32520
	.word	32544
	.word	32567
	.word	32588
	.word	32609
	.word	32628
	.word	32646
	.word	32662
	.word	32678
	.word	32692
	.word	32705
	.word	32717
	.word	32727
	.word	32736
	.word	32744
	.word	32751
	.word	32757
	.word	32761
	.word	32764
	.word	32766
	.word	32767
	.word	32766
	.word	32764
	.word	32761
	.word	32757
	.word	32751
	.word	32744
	.word	32736
	.word	32727
	.word	32717
	.word	32705
	.word	32692
	.word	32678
	.word	32662
	.word	32646
	.word	32628
	.word	32609
	.word	32588
	.word	32567
	.word	32544
	.word	32520
	.word	32495
	.word	32468
	.word	32441
	.word	32412
	.word	32382
	.word	32350
	.word	32318
	.word	32284
	.word	32249
	.word	32213
	.word	32176
	.word	32137
	.word	32097
	.word	32056
	.word	32014
	.word	31970
	.word	31926
	.word	31880
	.word	31833
	.word	31785
	.word	31735
	.word	31684
	.word	31633
	.word	31580
	.word	31525
	.word	31470
	.word	31413
	.word	31356
	.word	31297
	.word	31236
	.word	31175
	.word	31113
	.word	31049
	.word	30984
	.word	30918
	.word	30851
	.word	30783
	.word	30713
	.word	30643
	.word	30571
	.word	30498
	.word	30424
	.word	30349
	.word	30272
	.word	30195
	.word	30116
	.word	30036
	.word	29955
	.word	29873
	.word	29790
	.word	29706
	.word	29621
	.word	29534
	.word	29446
	.word	29358
	.word	29268
	.word	29177
	.word	29085
	.word	28992
	.word	28897
	.word	28802
	.word	28706
	.word	28608
	.word	28510
	.word	28410
	.word	28309
	.word	28208
	.word	28105
	.word	28001
	.word	27896
	.word	27790
	.word	27683
	.word	27575
	.word	27466
	.word	27355
	.word	27244
	.word	27132
	.word	27019
	.word	26905
	.word	26789
	.word	26673
	.word	26556
	.word	26437
	.word	26318
	.word	26198
	.word	26077
	.word	25954
	.word	25831
	.word	25707
	.word	25582
	.word	25456
	.word	25329
	.word	25201
	.word	25072
	.word	24942
	.word	24811
	.word	24679
	.word	24546
	.word	24413
	.word	24278
	.word	24143
	.word	24006
	.word	23869
	.word	23731
	.word	23592
	.word	23452
	.word	23311
	.word	23169
	.word	23027
	.word	22883
	.word	22739
	.word	22594
	.word	22448
	.word	22301
	.word	22153
	.word	22004
	.word	21855
	.word	21705
	.word	21554
	.word	21402
	.word	21249
	.word	21096
	.word	20942
	.word	20787
	.word	20631
	.word	20474
	.word	20317
	.word	20159
	.word	20000
	.word	19840
	.word	19680
	.word	19519
	.word	19357
	.word	19194
	.word	19031
	.word	18867
	.word	18702
	.word	18537
	.word	18371
	.word	18204
	.word	18036
	.word	17868
	.word	17699
	.word	17530
	.word	17360
	.word	17189
	.word	17017
	.word	16845
	.word	16672
	.word	16499
	.word	16325
	.word	16150
	.word	15975
	.word	15799
	.word	15623
	.word	15446
	.word	15268
	.word	15090
	.word	14911
	.word	14732
	.word	14552
	.word	14372
	.word	14191
	.word	14009
	.word	13827
	.word	13645
	.word	13462
	.word	13278
	.word	13094
	.word	12909
	.word	12724
	.word	12539
	.word	12353
	.word	12166
	.word	11980
	.word	11792
	.word	11604
	.word	11416
	.word	11227
	.word	11038
	.word	10849
	.word	10659
	.word	10469
	.word	10278
	.word	10087
	.word	9895
	.word	9703
	.word	9511
	.word	9319
	.word	9126
	.word	8932
	.word	8739
	.word	8545
	.word	8351
	.word	8156
	.word	7961
	.word	7766
	.word	7571
	.word	7375
	.word	7179
	.word	6982
	.word	6786
	.word	6589
	.word	6392
	.word	6195
	.word	5997
	.word	5799
	.word	5601
	.word	5403
	.word	5205
	.word	5006
	.word	4807
	.word	4608
	.word	4409
	.word	4210
	.word	4011
	.word	3811
	.word	3611
	.word	3411
	.word	3211
	.word	3011
	.word	2811
	.word	2610
	.word	2410
	.word	2209
	.word	2009
	.word	1808
	.word	1607
	.word	1406
	.word	1206
	.word	1005
	.word	804
	.word	603
	.word	402
	.word	201
	.word	0
	.word	-201
	.word	-402
	.word	-603
	.word	-804
	.word	-1005
	.word	-1206
	.word	-1406
	.word	-1607
	.word	-1808
	.word	-2009
	.word	-2209
	.word	-2410
	.word	-2610
	.word	-2811
	.word	-3011
	.word	-3211
	.word	-3411
	.word	-3611
	.word	-3811
	.word	-4011
	.word	-4210
	.word	-4409
	.word	-4608
	.word	-4807
	.word	-5006
	.word	-5205
	.word	-5403
	.word	-5601
	.word	-5799
	.word	-5997
	.word	-6195
	.word	-6392
	.word	-6589
	.word	-6786
	.word	-6982
	.word	-7179
	.word	-7375
	.word	-7571
	.word	-7766
	.word	-7961
	.word	-8156
	.word	-8351
	.word	-8545
	.word	-8739
	.word	-8932
	.word	-9126
	.word	-9319
	.word	-9511
	.word	-9703
	.word	-9895
	.word	-10087
	.word	-10278
	.word	-10469
	.word	-10659
	.word	-10849
	.word	-11038
	.word	-11227
	.word	-11416
	.word	-11604
	.word	-11792
	.word	-11980
	.word	-12166
	.word	-12353
	.word	-12539
	.word	-12724
	.word	-12909
	.word	-13094
	.word	-13278
	.word	-13462
	.word	-13645
	.word	-13827
	.word	-14009
	.word	-14191
	.word	-14372
	.word	-14552
	.word	-14732
	.word	-14911
	.word	-15090
	.word	-15268
	.word	-15446
	.word	-15623
	.word	-15799
	.word	-15975
	.word	-16150
	.word	-16325
	.word	-16499
	.word	-16672
	.word	-16845
	.word	-17017
	.word	-17189
	.word	-17360
	.word	-17530
	.word	-17699
	.word	-17868
	.word	-18036
	.word	-18204
	.word	-18371
	.word	-18537
	.word	-18702
	.word	-18867
	.word	-19031
	.word	-19194
	.word	-19357
	.word	-19519
	.word	-19680
	.word	-19840
	.word	-20000
	.word	-20159
	.word	-20317
	.word	-20474
	.word	-20631
	.word	-20787
	.word	-20942
	.word	-21096
	.word	-21249
	.word	-21402
	.word	-21554
	.word	-21705
	.word	-21855
	.word	-22004
	.word	-22153
	.word	-22301
	.word	-22448
	.word	-22594
	.word	-22739
	.word	-22883
	.word	-23027
	.word	-23169
	.word	-23311
	.word	-23452
	.word	-23592
	.word	-23731
	.word	-23869
	.word	-24006
	.word	-24143
	.word	-24278
	.word	-24413
	.word	-24546
	.word	-24679
	.word	-24811
	.word	-24942
	.word	-25072
	.word	-25201
	.word	-25329
	.word	-25456
	.word	-25582
	.word	-25707
	.word	-25831
	.word	-25954
	.word	-26077
	.word	-26198
	.word	-26318
	.word	-26437
	.word	-26556
	.word	-26673
	.word	-26789
	.word	-26905
	.word	-27019
	.word	-27132
	.word	-27244
	.word	-27355
	.word	-27466
	.word	-27575
	.word	-27683
	.word	-27790
	.word	-27896
	.word	-28001
	.word	-28105
	.word	-28208
	.word	-28309
	.word	-28410
	.word	-28510
	.word	-28608
	.word	-28706
	.word	-28802
	.word	-28897
	.word	-28992
	.word	-29085
	.word	-29177
	.word	-29268
	.word	-29358
	.word	-29446
	.word	-29534
	.word	-29621
	.word	-29706
	.word	-29790
	.word	-29873
	.word	-29955
	.word	-30036
	.word	-30116
	.word	-30195
	.word	-30272
	.word	-30349
	.word	-30424
	.word	-30498
	.word	-30571
	.word	-30643
	.word	-30713
	.word	-30783
	.word	-30851
	.word	-30918
	.word	-30984
	.word	-31049
	.word	-31113
	.word	-31175
	.word	-31236
	.word	-31297
	.word	-31356
	.word	-31413
	.word	-31470
	.word	-31525
	.word	-31580
	.word	-31633
	.word	-31684
	.word	-31735
	.word	-31785
	.word	-31833
	.word	-31880
	.word	-31926
	.word	-31970
	.word	-32014
	.word	-32056
	.word	-32097
	.word	-32137
	.word	-32176
	.word	-32213
	.word	-32249
	.word	-32284
	.word	-32318
	.word	-32350
	.word	-32382
	.word	-32412
	.word	-32441
	.word	-32468
	.word	-32495
	.word	-32520
	.word	-32544
	.word	-32567
	.word	-32588
	.word	-32609
	.word	-32628
	.word	-32646
	.word	-32662
	.word	-32678
	.word	-32692
	.word	-32705
	.word	-32717
	.word	-32727
	.word	-32736
	.word	-32744
	.word	-32751
	.word	-32757
	.word	-32761
	.word	-32764
	.word	-32766
	.word	-32767
	.word	-32766
	.word	-32764
	.word	-32761
	.word	-32757
	.word	-32751
	.word	-32744
	.word	-32736
	.word	-32727
	.word	-32717
	.word	-32705
	.word	-32692
	.word	-32678
	.word	-32662
	.word	-32646
	.word	-32628
	.word	-32609
	.word	-32588
	.word	-32567
	.word	-32544
	.word	-32520
	.word	-32495
	.word	-32468
	.word	-32441
	.word	-32412
	.word	-32382
	.word	-32350
	.word	-32318
	.word	-32284
	.word	-32249
	.word	-32213
	.word	-32176
	.word	-32137
	.word	-32097
	.word	-32056
	.word	-32014
	.word	-31970
	.word	-31926
	.word	-31880
	.word	-31833
	.word	-31785
	.word	-31735
	.word	-31684
	.word	-31633
	.word	-31580
	.word	-31525
	.word	-31470
	.word	-31413
	.word	-31356
	.word	-31297
	.word	-31236
	.word	-31175
	.word	-31113
	.word	-31049
	.word	-30984
	.word	-30918
	.word	-30851
	.word	-30783
	.word	-30713
	.word	-30643
	.word	-30571
	.word	-30498
	.word	-30424
	.word	-30349
	.word	-30272
	.word	-30195
	.word	-30116
	.word	-30036
	.word	-29955
	.word	-29873
	.word	-29790
	.word	-29706
	.word	-29621
	.word	-29534
	.word	-29446
	.word	-29358
	.word	-29268
	.word	-29177
	.word	-29085
	.word	-28992
	.word	-28897
	.word	-28802
	.word	-28706
	.word	-28608
	.word	-28510
	.word	-28410
	.word	-28309
	.word	-28208
	.word	-28105
	.word	-28001
	.word	-27896
	.word	-27790
	.word	-27683
	.word	-27575
	.word	-27466
	.word	-27355
	.word	-27244
	.word	-27132
	.word	-27019
	.word	-26905
	.word	-26789
	.word	-26673
	.word	-26556
	.word	-26437
	.word	-26318
	.word	-26198
	.word	-26077
	.word	-25954
	.word	-25831
	.word	-25707
	.word	-25582
	.word	-25456
	.word	-25329
	.word	-25201
	.word	-25072
	.word	-24942
	.word	-24811
	.word	-24679
	.word	-24546
	.word	-24413
	.word	-24278
	.word	-24143
	.word	-24006
	.word	-23869
	.word	-23731
	.word	-23592
	.word	-23452
	.word	-23311
	.word	-23169
	.word	-23027
	.word	-22883
	.word	-22739
	.word	-22594
	.word	-22448
	.word	-22301
	.word	-22153
	.word	-22004
	.word	-21855
	.word	-21705
	.word	-21554
	.word	-21402
	.word	-21249
	.word	-21096
	.word	-20942
	.word	-20787
	.word	-20631
	.word	-20474
	.word	-20317
	.word	-20159
	.word	-20000
	.word	-19840
	.word	-19680
	.word	-19519
	.word	-19357
	.word	-19194
	.word	-19031
	.word	-18867
	.word	-18702
	.word	-18537
	.word	-18371
	.word	-18204
	.word	-18036
	.word	-17868
	.word	-17699
	.word	-17530
	.word	-17360
	.word	-17189
	.word	-17017
	.word	-16845
	.word	-16672
	.word	-16499
	.word	-16325
	.word	-16150
	.word	-15975
	.word	-15799
	.word	-15623
	.word	-15446
	.word	-15268
	.word	-15090
	.word	-14911
	.word	-14732
	.word	-14552
	.word	-14372
	.word	-14191
	.word	-14009
	.word	-13827
	.word	-13645
	.word	-13462
	.word	-13278
	.word	-13094
	.word	-12909
	.word	-12724
	.word	-12539
	.word	-12353
	.word	-12166
	.word	-11980
	.word	-11792
	.word	-11604
	.word	-11416
	.word	-11227
	.word	-11038
	.word	-10849
	.word	-10659
	.word	-10469
	.word	-10278
	.word	-10087
	.word	-9895
	.word	-9703
	.word	-9511
	.word	-9319
	.word	-9126
	.word	-8932
	.word	-8739
	.word	-8545
	.word	-8351
	.word	-8156
	.word	-7961
	.word	-7766
	.word	-7571
	.word	-7375
	.word	-7179
	.word	-6982
	.word	-6786
	.word	-6589
	.word	-6392
	.word	-6195
	.word	-5997
	.word	-5799
	.word	-5601
	.word	-5403
	.word	-5205
	.word	-5006
	.word	-4807
	.word	-4608
	.word	-4409
	.word	-4210
	.word	-4011
	.word	-3811
	.word	-3611
	.word	-3411
	.word	-3211
	.word	-3011
	.word	-2811
	.word	-2610
	.word	-2410
	.word	-2209
	.word	-2009
	.word	-1808
	.word	-1607
	.word	-1406
	.word	-1206
	.word	-1005
	.word	-804
	.word	-603
	.word	-402
	.word	-201
	.global	Loudampl
	.align	3
	.type	Loudampl, %object
	.size	Loudampl, 400
Loudampl:
	.word	32767
	.word	29203
	.word	26027
	.word	23197
	.word	20674
	.word	18426
	.word	16422
	.word	14636
	.word	13044
	.word	11626
	.word	10361
	.word	9234
	.word	8230
	.word	7335
	.word	6537
	.word	5826
	.word	5193
	.word	4628
	.word	4125
	.word	3676
	.word	3276
	.word	2920
	.word	2602
	.word	2319
	.word	2067
	.word	1842
	.word	1642
	.word	1463
	.word	1304
	.word	1162
	.word	1036
	.word	923
	.word	823
	.word	733
	.word	653
	.word	582
	.word	519
	.word	462
	.word	412
	.word	367
	.word	327
	.word	292
	.word	260
	.word	231
	.word	206
	.word	184
	.word	164
	.word	146
	.word	130
	.word	116
	.word	103
	.word	92
	.word	82
	.word	73
	.word	65
	.word	58
	.word	51
	.word	46
	.word	41
	.word	36
	.word	32
	.word	29
	.word	26
	.word	23
	.word	20
	.word	18
	.word	16
	.word	14
	.word	13
	.word	11
	.word	10
	.word	9
	.word	8
	.word	7
	.word	6
	.word	5
	.word	5
	.word	4
	.word	4
	.word	3
	.word	3
	.word	2
	.word	2
	.word	2
	.word	2
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	3
.LC0:
	.string	"%d: %d, %d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB9:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	sub	sp, sp, #2064
	.cfi_def_cfa_offset 2080
	str	xzr, [sp, 1024]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 2056]
	mov	x1, 0
	str	wzr, [sp, 4]
	b	.L53
.L54:
	ldr	w0, [sp, 4]
	lsl	w0, w0, 1
	scvtf	d0, w0
	adrp	x0, .LC1
	ldr	d1, [x0, #:lo12:.LC1]
	fmul	d0, d0, d1
	mov	x0, 4643211215818981376
	fmov	d1, x0
	fdiv	d0, d0, d1
	bl	libmin_cos
	mov	x0, 70368744177664
	movk	x0, 0x408f, lsl 48
	fmov	d1, x0
	fmul	d0, d0, d1
	fcvtzs	w2, d0
	ldrsw	x0, [sp, 4]
	lsl	x0, x0, 2
	add	x1, sp, 8
	str	w2, [x1, x0]
	ldrsw	x0, [sp, 4]
	lsl	x0, x0, 2
	add	x1, sp, 1032
	str	wzr, [x1, x0]
	ldr	w0, [sp, 4]
	add	w0, w0, 1
	str	w0, [sp, 4]
.L53:
	ldr	w0, [sp, 4]
	cmp	w0, 255
	ble	.L54
	add	x1, sp, 1032
	add	x0, sp, 8
	mov	w3, 0
	mov	w2, 8
	bl	fix_fft
	str	wzr, [sp, 4]
	b	.L55
.L56:
	ldrsw	x0, [sp, 4]
	lsl	x0, x0, 2
	add	x1, sp, 8
	ldr	w2, [x1, x0]
	ldrsw	x0, [sp, 4]
	lsl	x0, x0, 2
	add	x1, sp, 1032
	ldr	w0, [x1, x0]
	mov	w3, w0
	ldr	w1, [sp, 4]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	libmin_printf
	ldr	w0, [sp, 4]
	add	w0, w0, 1
	str	w0, [sp, 4]
.L55:
	ldr	w0, [sp, 4]
	cmp	w0, 255
	ble	.L56
	add	x1, sp, 1032
	add	x0, sp, 8
	mov	w3, 1
	mov	w2, 8
	bl	fix_fft
	str	wzr, [sp, 4]
	b	.L57
.L58:
	ldrsw	x0, [sp, 4]
	lsl	x0, x0, 2
	add	x1, sp, 8
	ldr	w2, [x1, x0]
	ldrsw	x0, [sp, 4]
	lsl	x0, x0, 2
	add	x1, sp, 1032
	ldr	w0, [x1, x0]
	mov	w3, w0
	ldr	w1, [sp, 4]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	libmin_printf
	ldr	w0, [sp, 4]
	add	w0, w0, 1
	str	w0, [sp, 4]
.L57:
	ldr	w0, [sp, 4]
	cmp	w0, 255
	ble	.L58
	bl	libmin_success
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 2056]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L60
	bl	__stack_chk_fail
.L60:
	mov	w0, w1
	add	sp, sp, 2064
	.cfi_def_cfa_offset 16
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9:
	.size	main, .-main
	.local	loud2.0
	.comm	loud2.0,400,8
	.section	.rodata
	.align	3
.LC1:
	.word	1413551940
	.word	1074340347
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
