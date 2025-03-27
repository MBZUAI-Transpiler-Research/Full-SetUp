	.arch armv8-a
	.file	"audio-codec.c"
	.text
	.global	pcm
	.data
	.align	3
	.type	pcm, %object
	.size	pcm, 16
pcm:
	.hword	1000
	.hword	-1000
	.hword	1234
	.hword	3200
	.hword	-1314
	.hword	0
	.hword	32767
	.hword	-32768
	.global	r_coded
	.align	3
	.type	r_coded, %object
	.size	r_coded, 8
r_coded:
	.ascii	"\372z\346\234a\325\252*"
	.global	r_decoded
	.align	3
	.type	r_decoded, %object
	.size	r_decoded, 16
r_decoded:
	.hword	1008
	.hword	-1008
	.hword	1248
	.hword	3264
	.hword	-1312
	.hword	8
	.hword	32256
	.hword	-32256
	.text
	.align	2
	.global	encode
	.type	encode, %function
encode:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	strb	wzr, [sp, 37]
	strh	wzr, [sp, 38]
	str	wzr, [sp, 48]
	str	wzr, [sp, 52]
	str	wzr, [sp, 40]
	str	wzr, [sp, 44]
	str	xzr, [sp, 56]
	b	.L2
.L10:
	ldr	x0, [sp, 16]
	add	x1, x0, 2
	str	x1, [sp, 16]
	ldrh	w0, [x0]
	strh	w0, [sp, 38]
	mov	w0, 7
	str	w0, [sp, 40]
	mov	w0, 16384
	str	w0, [sp, 44]
	ldrsh	w0, [sp, 38]
	asr	w0, w0, 8
	and	w0, w0, 128
	str	w0, [sp, 48]
	ldr	w0, [sp, 48]
	cmp	w0, 0
	beq	.L3
	ldrh	w0, [sp, 38]
	mvn	w0, w0
	sxth	w0, w0
	b	.L4
.L3:
	ldrsh	w0, [sp, 38]
.L4:
	strh	w0, [sp, 38]
	b	.L5
.L7:
	ldr	w0, [sp, 40]
	sub	w0, w0, #1
	str	w0, [sp, 40]
	ldr	w0, [sp, 44]
	asr	w0, w0, 1
	str	w0, [sp, 44]
.L5:
	ldrsh	w1, [sp, 38]
	ldr	w0, [sp, 44]
	and	w0, w1, w0
	cmp	w0, 0
	bne	.L6
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bgt	.L7
.L6:
	ldrsh	w1, [sp, 38]
	ldr	w0, [sp, 40]
	cmp	w0, 0
	beq	.L8
	ldr	w0, [sp, 40]
	add	w0, w0, 3
	b	.L9
.L8:
	mov	w0, 4
.L9:
	asr	w0, w1, w0
	and	w0, w0, 15
	str	w0, [sp, 52]
	ldr	w0, [sp, 40]
	lsl	w0, w0, 4
	str	w0, [sp, 40]
	ldr	w0, [sp, 48]
	sxtb	w1, w0
	ldr	w0, [sp, 40]
	sxtb	w0, w0
	orr	w0, w1, w0
	sxtb	w1, w0
	ldr	w0, [sp, 52]
	sxtb	w0, w0
	orr	w0, w1, w0
	sxtb	w0, w0
	strb	w0, [sp, 37]
	ldr	x0, [sp, 24]
	add	x1, x0, 1
	str	x1, [sp, 24]
	ldrb	w2, [sp, 37]
	mov	w1, -43
	eor	w1, w2, w1
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	str	x0, [sp, 56]
.L2:
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 8]
	cmp	x1, x0
	bcc	.L10
	nop
	nop
	add	sp, sp, 64
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	encode, .-encode
	.align	2
	.global	decode
	.type	decode, %function
decode:
.LFB4:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	strb	wzr, [sp, 43]
	str	wzr, [sp, 44]
	str	wzr, [sp, 48]
	str	wzr, [sp, 52]
	str	xzr, [sp, 56]
	b	.L12
.L17:
	ldr	x0, [sp, 16]
	add	x1, x0, 1
	str	x1, [sp, 16]
	ldrb	w0, [x0]
	strb	w0, [sp, 43]
	ldrb	w1, [sp, 43]
	mov	w0, -43
	eor	w0, w1, w0
	strb	w0, [sp, 43]
	ldrb	w0, [sp, 43]
	and	w0, w0, 128
	str	w0, [sp, 48]
	ldrb	w0, [sp, 43]
	asr	w0, w0, 4
	and	w0, w0, 7
	str	w0, [sp, 52]
	ldrb	w0, [sp, 43]
	lsl	w0, w0, 4
	and	w0, w0, 255
	orr	w0, w0, 8
	str	w0, [sp, 44]
	ldr	w0, [sp, 52]
	cmp	w0, 0
	beq	.L13
	mov	w0, 256
	b	.L14
.L13:
	mov	w0, 0
.L14:
	ldr	w1, [sp, 44]
	add	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w2, [sp, 52]
	ldr	w1, [sp, 52]
	mov	w0, 1
	cmp	w2, 0
	csel	w0, w1, w0, gt
	sub	w0, w0, #1
	ldr	w1, [sp, 44]
	lsl	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w0, [sp, 48]
	cmp	w0, 0
	beq	.L15
	ldr	w0, [sp, 44]
	and	w0, w0, 65535
	neg	w0, w0
	and	w0, w0, 65535
	sxth	w1, w0
	b	.L16
.L15:
	ldr	w0, [sp, 44]
	sxth	w1, w0
.L16:
	ldr	x0, [sp, 24]
	add	x2, x0, 2
	str	x2, [sp, 24]
	strh	w1, [x0]
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	str	x0, [sp, 56]
.L12:
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 8]
	cmp	x1, x0
	bcc	.L17
	nop
	nop
	add	sp, sp, 64
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	decode, .-decode
	.align	2
	.type	test, %function
test:
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
	str	x3, [sp, 16]
	ldr	x2, [sp, 16]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	bl	encode
	str	xzr, [sp, 48]
	b	.L19
.L21:
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 48]
	add	x0, x1, x0
	ldrb	w1, [x0]
	adrp	x0, r_coded
	add	x2, x0, :lo12:r_coded
	ldr	x0, [sp, 48]
	add	x0, x2, x0
	ldrb	w0, [x0]
	cmp	w1, w0
	beq	.L20
	mov	w0, 1
	bl	libmin_fail
.L20:
	ldr	x0, [sp, 48]
	add	x0, x0, 1
	str	x0, [sp, 48]
.L19:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bcc	.L21
	ldr	x2, [sp, 16]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 24]
	bl	decode
	str	xzr, [sp, 56]
	b	.L22
.L24:
	ldr	x0, [sp, 56]
	lsl	x0, x0, 1
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrsh	w1, [x0]
	adrp	x0, r_decoded
	add	x0, x0, :lo12:r_decoded
	ldr	x2, [sp, 56]
	ldrsh	w0, [x0, x2, lsl 1]
	cmp	w1, w0
	beq	.L23
	mov	w0, 1
	bl	libmin_fail
.L23:
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	str	x0, [sp, 56]
.L22:
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bcc	.L24
	nop
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	test, .-test
	.section	.rodata
	.align	3
.LC0:
	.string	"inputs: "
	.align	3
.LC1:
	.string	"%d "
	.align	3
.LC2:
	.string	"\n"
	.align	3
.LC3:
	.string	"encode: "
	.align	3
.LC4:
	.string	"%u "
	.align	3
.LC5:
	.string	"decode: "
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80
	str	w0, [sp, 12]
	str	x1, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	add	x1, sp, 48
	add	x0, sp, 64
	mov	x3, 8
	mov	x2, x1
	mov	x1, x0
	adrp	x0, pcm
	add	x0, x0, :lo12:pcm
	bl	test
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	libmin_printf
	str	xzr, [sp, 24]
	b	.L26
.L27:
	adrp	x0, pcm
	add	x0, x0, :lo12:pcm
	ldr	x1, [sp, 24]
	ldrsh	w0, [x0, x1, lsl 1]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	libmin_printf
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
.L26:
	ldr	x0, [sp, 24]
	cmp	x0, 7
	bls	.L27
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	libmin_printf
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	libmin_printf
	str	xzr, [sp, 32]
	b	.L28
.L29:
	ldr	x0, [sp, 32]
	add	x1, sp, 64
	ldrb	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	libmin_printf
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
.L28:
	ldr	x0, [sp, 32]
	cmp	x0, 7
	bls	.L29
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	libmin_printf
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	libmin_printf
	str	xzr, [sp, 40]
	b	.L30
.L31:
	ldr	x0, [sp, 40]
	lsl	x0, x0, 1
	add	x1, sp, 48
	ldrsh	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	libmin_printf
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L30:
	ldr	x0, [sp, 40]
	cmp	x0, 7
	bls	.L31
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	libmin_printf
	bl	libmin_success
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 72]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L33
	bl	__stack_chk_fail
.L33:
	mov	w0, w1
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 96
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
