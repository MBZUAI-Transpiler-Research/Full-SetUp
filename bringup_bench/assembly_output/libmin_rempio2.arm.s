	.arch armv8-a
	.file	"libmin_rempio2.c"
	.text
	.section	.rodata
	.align	3
	.type	init_jk, %object
	.size	init_jk, 16
init_jk:
	.word	3
	.word	4
	.word	4
	.word	6
	.align	3
	.type	ipio2, %object
	.size	ipio2, 264
ipio2:
	.word	10680707
	.word	7228996
	.word	1387004
	.word	2578385
	.word	16069853
	.word	12639074
	.word	9804092
	.word	4427841
	.word	16666979
	.word	11263675
	.word	12935607
	.word	2387514
	.word	4345298
	.word	14681673
	.word	3074569
	.word	13734428
	.word	16653803
	.word	1880361
	.word	10960616
	.word	8533493
	.word	3062596
	.word	8710556
	.word	7349940
	.word	6258241
	.word	3772886
	.word	3769171
	.word	3798172
	.word	8675211
	.word	12450088
	.word	3874808
	.word	9961438
	.word	366607
	.word	15675153
	.word	9132554
	.word	7151469
	.word	3571407
	.word	2607881
	.word	12013382
	.word	4155038
	.word	6285869
	.word	7677882
	.word	13102053
	.word	15825725
	.word	473591
	.word	9065106
	.word	15363067
	.word	6271263
	.word	9264392
	.word	5636912
	.word	4652155
	.word	7056368
	.word	13614112
	.word	10155062
	.word	1944035
	.word	9527646
	.word	15080200
	.word	6658437
	.word	6231200
	.word	6832269
	.word	16767104
	.word	5075751
	.word	3212806
	.word	1398474
	.word	7579849
	.word	6349435
	.word	12618859
	.align	3
	.type	PIo2, %object
	.size	PIo2, 64
PIo2:
	.word	1073741824
	.word	1073291771
	.word	0
	.word	1047807021
	.word	-2147483648
	.word	1022903960
	.word	1610612736
	.word	997772369
	.word	-2147483648
	.word	972036995
	.word	1073741824
	.word	947528992
	.word	-2147483648
	.word	920879650
	.word	0
	.word	896135965
	.text
	.align	2
	.global	__rem_pio2_large
	.type	__rem_pio2_large, %function
__rem_pio2_large:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	sub	sp, sp, #672
	.cfi_def_cfa_offset 688
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	w2, [sp, 12]
	str	w3, [sp, 8]
	str	w4, [sp, 4]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 664]
	mov	x1, 0
	adrp	x0, init_jk
	add	x0, x0, :lo12:init_jk
	ldrsw	x1, [sp, 4]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 72]
	ldr	w0, [sp, 72]
	str	w0, [sp, 76]
	ldr	w0, [sp, 8]
	sub	w0, w0, #1
	str	w0, [sp, 80]
	ldr	w0, [sp, 12]
	sub	w0, w0, #3
	mov	w1, 43691
	movk	w1, 0x2aaa, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 2
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bge	.L2
	str	wzr, [sp, 40]
.L2:
	ldr	w0, [sp, 40]
	add	w1, w0, 1
	mov	w0, w1
	lsl	w1, w1, 2
	sub	w0, w0, w1
	lsl	w0, w0, 3
	mov	w1, w0
	ldr	w0, [sp, 12]
	add	w0, w0, w1
	str	w0, [sp, 64]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 80]
	sub	w0, w1, w0
	str	w0, [sp, 56]
	ldr	w1, [sp, 80]
	ldr	w0, [sp, 72]
	add	w0, w1, w0
	str	w0, [sp, 84]
	str	wzr, [sp, 52]
	b	.L3
.L6:
	ldr	w0, [sp, 56]
	cmp	w0, 0
	blt	.L4
	adrp	x0, ipio2
	add	x0, x0, :lo12:ipio2
	ldrsw	x1, [sp, 56]
	ldr	w0, [x0, x1, lsl 2]
	scvtf	d0, w0
	b	.L5
.L4:
	movi	d0, #0
.L5:
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	add	x1, sp, 184
	str	d0, [x1, x0]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L3:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 84]
	cmp	w1, w0
	ble	.L6
	str	wzr, [sp, 52]
	b	.L7
.L10:
	str	wzr, [sp, 56]
	str	xzr, [sp, 96]
	b	.L8
.L9:
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w1, [sp, 80]
	ldr	w0, [sp, 52]
	add	w1, w1, w0
	ldr	w0, [sp, 56]
	sub	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 184
	ldr	d0, [x1, x0]
	fmul	d0, d1, d0
	ldr	d1, [sp, 96]
	fadd	d0, d1, d0
	str	d0, [sp, 96]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L8:
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 80]
	cmp	w1, w0
	ble	.L9
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	add	x1, sp, 504
	ldr	d0, [sp, 96]
	str	d0, [x1, x0]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L7:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 72]
	cmp	w1, w0
	ble	.L10
	ldr	w0, [sp, 72]
	str	w0, [sp, 36]
.L11:
	str	wzr, [sp, 52]
	ldr	w0, [sp, 36]
	str	w0, [sp, 56]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	add	x1, sp, 504
	ldr	d0, [x1, x0]
	str	d0, [sp, 88]
	b	.L12
.L13:
	ldr	d0, [sp, 88]
	mov	x0, 4499096027743125504
	fmov	d1, x0
	fmul	d0, d0, d1
	fcvtzs	w0, d0
	scvtf	d0, w0
	str	d0, [sp, 96]
	ldr	d0, [sp, 96]
	mov	x0, 4715268809856909312
	fmov	d1, x0
	fmul	d0, d0, d1
	ldr	d1, [sp, 88]
	fsub	d0, d1, d0
	fcvtzs	w2, d0
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	add	x1, sp, 104
	str	w2, [x1, x0]
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 504
	ldr	d0, [x1, x0]
	ldr	d1, [sp, 96]
	fadd	d0, d1, d0
	str	d0, [sp, 88]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	str	w0, [sp, 56]
.L12:
	ldr	w0, [sp, 56]
	cmp	w0, 0
	bgt	.L13
	ldr	w0, [sp, 64]
	ldr	d0, [sp, 88]
	bl	libmin_scalbn
	str	d0, [sp, 88]
	ldr	d1, [sp, 88]
	fmov	d0, 1.25e-1
	fmul	d0, d1, d0
	bl	libmin_floor
	fmov	d1, d0
	fmov	d0, 8.0e+0
	fmul	d0, d1, d0
	ldr	d1, [sp, 88]
	fsub	d0, d1, d0
	str	d0, [sp, 88]
	ldr	d0, [sp, 88]
	fcvtzs	w0, d0
	str	w0, [sp, 48]
	ldr	w0, [sp, 48]
	scvtf	d0, w0
	ldr	d1, [sp, 88]
	fsub	d0, d1, d0
	str	d0, [sp, 88]
	str	wzr, [sp, 68]
	ldr	w0, [sp, 64]
	cmp	w0, 0
	ble	.L14
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 104
	ldr	w1, [x1, x0]
	mov	w2, 24
	ldr	w0, [sp, 64]
	sub	w0, w2, w0
	asr	w0, w1, w0
	str	w0, [sp, 52]
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 52]
	add	w0, w1, w0
	str	w0, [sp, 48]
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 104
	ldr	w1, [x1, x0]
	mov	w2, 24
	ldr	w0, [sp, 64]
	sub	w0, w2, w0
	ldr	w2, [sp, 52]
	lsl	w0, w2, w0
	ldr	w2, [sp, 36]
	sub	w3, w2, #1
	sub	w2, w1, w0
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 104
	str	w2, [x1, x0]
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 104
	ldr	w1, [x1, x0]
	mov	w2, 23
	ldr	w0, [sp, 64]
	sub	w0, w2, w0
	asr	w0, w1, w0
	str	w0, [sp, 68]
	b	.L15
.L14:
	ldr	w0, [sp, 64]
	cmp	w0, 0
	bne	.L16
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 104
	ldr	w0, [x1, x0]
	asr	w0, w0, 23
	str	w0, [sp, 68]
	b	.L15
.L16:
	ldr	d1, [sp, 88]
	fmov	d0, 5.0e-1
	fcmpe	d1, d0
	bge	.L73
	b	.L15
.L73:
	mov	w0, 2
	str	w0, [sp, 68]
.L15:
	ldr	w0, [sp, 68]
	cmp	w0, 0
	ble	.L18
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
	str	wzr, [sp, 44]
	str	wzr, [sp, 52]
	b	.L19
.L22:
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	add	x1, sp, 104
	ldr	w0, [x1, x0]
	str	w0, [sp, 56]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bne	.L20
	ldr	w0, [sp, 56]
	cmp	w0, 0
	beq	.L21
	mov	w0, 1
	str	w0, [sp, 44]
	mov	w1, 16777216
	ldr	w0, [sp, 56]
	sub	w2, w1, w0
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	add	x1, sp, 104
	str	w2, [x1, x0]
	b	.L21
.L20:
	mov	w1, 16777215
	ldr	w0, [sp, 56]
	sub	w2, w1, w0
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	add	x1, sp, 104
	str	w2, [x1, x0]
.L21:
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L19:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L22
	ldr	w0, [sp, 64]
	cmp	w0, 0
	ble	.L23
	ldr	w0, [sp, 64]
	cmp	w0, 1
	beq	.L24
	ldr	w0, [sp, 64]
	cmp	w0, 2
	beq	.L25
	b	.L23
.L24:
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 104
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 36]
	sub	w1, w1, #1
	and	w2, w0, 8388607
	sxtw	x0, w1
	lsl	x0, x0, 2
	add	x1, sp, 104
	str	w2, [x1, x0]
	b	.L23
.L25:
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 104
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 36]
	sub	w1, w1, #1
	and	w2, w0, 4194303
	sxtw	x0, w1
	lsl	x0, x0, 2
	add	x1, sp, 104
	str	w2, [x1, x0]
	nop
.L23:
	ldr	w0, [sp, 68]
	cmp	w0, 2
	bne	.L18
	fmov	d1, 1.0e+0
	ldr	d0, [sp, 88]
	fsub	d0, d1, d0
	str	d0, [sp, 88]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	beq	.L18
	ldr	w0, [sp, 64]
	fmov	d0, 1.0e+0
	bl	libmin_scalbn
	fmov	d1, d0
	ldr	d0, [sp, 88]
	fsub	d0, d0, d1
	str	d0, [sp, 88]
.L18:
	ldr	d0, [sp, 88]
	fcmp	d0, #0.0
	bne	.L26
	str	wzr, [sp, 56]
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	str	w0, [sp, 52]
	b	.L27
.L28:
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	add	x1, sp, 104
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 56]
	orr	w0, w1, w0
	str	w0, [sp, 56]
	ldr	w0, [sp, 52]
	sub	w0, w0, #1
	str	w0, [sp, 52]
.L27:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 72]
	cmp	w1, w0
	bge	.L28
	ldr	w0, [sp, 56]
	cmp	w0, 0
	bne	.L26
	mov	w0, 1
	str	w0, [sp, 60]
	b	.L29
.L30:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L29:
	ldr	w1, [sp, 72]
	ldr	w0, [sp, 60]
	sub	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 104
	ldr	w0, [x1, x0]
	cmp	w0, 0
	beq	.L30
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 52]
	b	.L31
.L34:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 52]
	add	w1, w1, w0
	adrp	x0, ipio2
	add	x0, x0, :lo12:ipio2
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	ldr	w2, [sp, 80]
	ldr	w1, [sp, 52]
	add	w1, w2, w1
	scvtf	d0, w0
	sxtw	x0, w1
	lsl	x0, x0, 3
	add	x1, sp, 184
	str	d0, [x1, x0]
	str	wzr, [sp, 56]
	str	xzr, [sp, 96]
	b	.L32
.L33:
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w1, [sp, 80]
	ldr	w0, [sp, 52]
	add	w1, w1, w0
	ldr	w0, [sp, 56]
	sub	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 184
	ldr	d0, [x1, x0]
	fmul	d0, d1, d0
	ldr	d1, [sp, 96]
	fadd	d0, d1, d0
	str	d0, [sp, 96]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L32:
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 80]
	cmp	w1, w0
	ble	.L33
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	add	x1, sp, 504
	ldr	d0, [sp, 96]
	str	d0, [x1, x0]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L31:
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 60]
	add	w0, w1, w0
	ldr	w1, [sp, 52]
	cmp	w1, w0
	ble	.L34
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 60]
	add	w0, w1, w0
	str	w0, [sp, 36]
	b	.L11
.L26:
	ldr	d0, [sp, 88]
	fcmp	d0, #0.0
	bne	.L35
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	str	w0, [sp, 36]
	ldr	w0, [sp, 64]
	sub	w0, w0, #24
	str	w0, [sp, 64]
	b	.L36
.L37:
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	str	w0, [sp, 36]
	ldr	w0, [sp, 64]
	sub	w0, w0, #24
	str	w0, [sp, 64]
.L36:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	add	x1, sp, 104
	ldr	w0, [x1, x0]
	cmp	w0, 0
	beq	.L37
	b	.L38
.L35:
	ldr	w0, [sp, 64]
	neg	w0, w0
	ldr	d0, [sp, 88]
	bl	libmin_scalbn
	str	d0, [sp, 88]
	ldr	d0, [sp, 88]
	mov	x0, 4715268809856909312
	fmov	d1, x0
	fcmpe	d0, d1
	bge	.L74
	b	.L75
.L74:
	ldr	d0, [sp, 88]
	mov	x0, 4499096027743125504
	fmov	d1, x0
	fmul	d0, d0, d1
	fcvtzs	w0, d0
	scvtf	d0, w0
	str	d0, [sp, 96]
	ldr	d0, [sp, 96]
	mov	x0, 4715268809856909312
	fmov	d1, x0
	fmul	d0, d0, d1
	ldr	d1, [sp, 88]
	fsub	d0, d1, d0
	fcvtzs	w2, d0
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	add	x1, sp, 104
	str	w2, [x1, x0]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 64]
	add	w0, w0, 24
	str	w0, [sp, 64]
	ldr	d0, [sp, 96]
	fcvtzs	w2, d0
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	add	x1, sp, 104
	str	w2, [x1, x0]
	b	.L38
.L75:
	ldr	d0, [sp, 88]
	fcvtzs	w2, d0
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	add	x1, sp, 104
	str	w2, [x1, x0]
.L38:
	ldr	w0, [sp, 64]
	fmov	d0, 1.0e+0
	bl	libmin_scalbn
	str	d0, [sp, 96]
	ldr	w0, [sp, 36]
	str	w0, [sp, 52]
	b	.L41
.L42:
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	add	x1, sp, 104
	ldr	w0, [x1, x0]
	scvtf	d1, w0
	ldr	d0, [sp, 96]
	fmul	d0, d1, d0
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	add	x1, sp, 504
	str	d0, [x1, x0]
	ldr	d0, [sp, 96]
	mov	x0, 4499096027743125504
	fmov	d1, x0
	fmul	d0, d0, d1
	str	d0, [sp, 96]
	ldr	w0, [sp, 52]
	sub	w0, w0, #1
	str	w0, [sp, 52]
.L41:
	ldr	w0, [sp, 52]
	cmp	w0, 0
	bge	.L42
	ldr	w0, [sp, 36]
	str	w0, [sp, 52]
	b	.L43
.L47:
	str	xzr, [sp, 96]
	str	wzr, [sp, 60]
	b	.L44
.L46:
	adrp	x0, PIo2
	add	x0, x0, :lo12:PIo2
	ldrsw	x1, [sp, 60]
	ldr	d1, [x0, x1, lsl 3]
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 60]
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 504
	ldr	d0, [x1, x0]
	fmul	d0, d1, d0
	ldr	d1, [sp, 96]
	fadd	d0, d1, d0
	str	d0, [sp, 96]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L44:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 76]
	cmp	w1, w0
	bgt	.L45
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 52]
	sub	w0, w1, w0
	ldr	w1, [sp, 60]
	cmp	w1, w0
	ble	.L46
.L45:
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 52]
	sub	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 344
	ldr	d0, [sp, 96]
	str	d0, [x1, x0]
	ldr	w0, [sp, 52]
	sub	w0, w0, #1
	str	w0, [sp, 52]
.L43:
	ldr	w0, [sp, 52]
	cmp	w0, 0
	bge	.L47
	ldr	w0, [sp, 4]
	cmp	w0, 3
	beq	.L48
	ldr	w0, [sp, 4]
	cmp	w0, 3
	bgt	.L49
	ldr	w0, [sp, 4]
	cmp	w0, 0
	beq	.L50
	ldr	w0, [sp, 4]
	cmp	w0, 0
	blt	.L49
	ldr	w0, [sp, 4]
	sub	w0, w0, #1
	cmp	w0, 1
	bhi	.L49
	b	.L76
.L50:
	str	xzr, [sp, 96]
	ldr	w0, [sp, 36]
	str	w0, [sp, 52]
	b	.L52
.L53:
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	add	x1, sp, 344
	ldr	d0, [x1, x0]
	ldr	d1, [sp, 96]
	fadd	d0, d1, d0
	str	d0, [sp, 96]
	ldr	w0, [sp, 52]
	sub	w0, w0, #1
	str	w0, [sp, 52]
.L52:
	ldr	w0, [sp, 52]
	cmp	w0, 0
	bge	.L53
	ldr	w0, [sp, 68]
	cmp	w0, 0
	beq	.L54
	ldr	d0, [sp, 96]
	fneg	d0, d0
	b	.L55
.L54:
	ldr	d0, [sp, 96]
.L55:
	ldr	x0, [sp, 16]
	str	d0, [x0]
	b	.L49
.L76:
	str	xzr, [sp, 96]
	ldr	w0, [sp, 36]
	str	w0, [sp, 52]
	b	.L56
.L57:
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	add	x1, sp, 344
	ldr	d0, [x1, x0]
	ldr	d1, [sp, 96]
	fadd	d0, d1, d0
	str	d0, [sp, 96]
	ldr	w0, [sp, 52]
	sub	w0, w0, #1
	str	w0, [sp, 52]
.L56:
	ldr	w0, [sp, 52]
	cmp	w0, 0
	bge	.L57
	ldr	w0, [sp, 68]
	cmp	w0, 0
	beq	.L58
	ldr	d0, [sp, 96]
	fneg	d0, d0
	b	.L59
.L58:
	ldr	d0, [sp, 96]
.L59:
	ldr	x0, [sp, 16]
	str	d0, [x0]
	ldr	d1, [sp, 344]
	ldr	d0, [sp, 96]
	fsub	d0, d1, d0
	str	d0, [sp, 96]
	mov	w0, 1
	str	w0, [sp, 52]
	b	.L60
.L61:
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	add	x1, sp, 344
	ldr	d0, [x1, x0]
	ldr	d1, [sp, 96]
	fadd	d0, d1, d0
	str	d0, [sp, 96]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L60:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	ble	.L61
	ldr	w0, [sp, 68]
	cmp	w0, 0
	beq	.L62
	ldr	d0, [sp, 96]
	fneg	d0, d0
	b	.L63
.L62:
	ldr	d0, [sp, 96]
.L63:
	ldr	x0, [sp, 16]
	add	x0, x0, 8
	str	d0, [x0]
	b	.L49
.L48:
	ldr	w0, [sp, 36]
	str	w0, [sp, 52]
	b	.L64
.L65:
	ldr	w0, [sp, 52]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 344
	ldr	d1, [x1, x0]
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	add	x1, sp, 344
	ldr	d0, [x1, x0]
	fadd	d0, d1, d0
	str	d0, [sp, 96]
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	add	x1, sp, 344
	ldr	d1, [x1, x0]
	ldr	w0, [sp, 52]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 344
	ldr	d2, [x1, x0]
	ldr	d0, [sp, 96]
	fsub	d0, d2, d0
	fadd	d0, d1, d0
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	add	x1, sp, 344
	str	d0, [x1, x0]
	ldr	w0, [sp, 52]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 344
	ldr	d0, [sp, 96]
	str	d0, [x1, x0]
	ldr	w0, [sp, 52]
	sub	w0, w0, #1
	str	w0, [sp, 52]
.L64:
	ldr	w0, [sp, 52]
	cmp	w0, 0
	bgt	.L65
	ldr	w0, [sp, 36]
	str	w0, [sp, 52]
	b	.L66
.L67:
	ldr	w0, [sp, 52]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 344
	ldr	d1, [x1, x0]
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	add	x1, sp, 344
	ldr	d0, [x1, x0]
	fadd	d0, d1, d0
	str	d0, [sp, 96]
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	add	x1, sp, 344
	ldr	d1, [x1, x0]
	ldr	w0, [sp, 52]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 344
	ldr	d2, [x1, x0]
	ldr	d0, [sp, 96]
	fsub	d0, d2, d0
	fadd	d0, d1, d0
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	add	x1, sp, 344
	str	d0, [x1, x0]
	ldr	w0, [sp, 52]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 344
	ldr	d0, [sp, 96]
	str	d0, [x1, x0]
	ldr	w0, [sp, 52]
	sub	w0, w0, #1
	str	w0, [sp, 52]
.L66:
	ldr	w0, [sp, 52]
	cmp	w0, 1
	bgt	.L67
	str	xzr, [sp, 96]
	ldr	w0, [sp, 36]
	str	w0, [sp, 52]
	b	.L68
.L69:
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	add	x1, sp, 344
	ldr	d0, [x1, x0]
	ldr	d1, [sp, 96]
	fadd	d0, d1, d0
	str	d0, [sp, 96]
	ldr	w0, [sp, 52]
	sub	w0, w0, #1
	str	w0, [sp, 52]
.L68:
	ldr	w0, [sp, 52]
	cmp	w0, 1
	bgt	.L69
	ldr	w0, [sp, 68]
	cmp	w0, 0
	bne	.L70
	ldr	d0, [sp, 344]
	ldr	x0, [sp, 16]
	str	d0, [x0]
	ldr	x0, [sp, 16]
	add	x0, x0, 8
	ldr	d0, [sp, 352]
	str	d0, [x0]
	ldr	x0, [sp, 16]
	add	x0, x0, 16
	ldr	d0, [sp, 96]
	str	d0, [x0]
	b	.L49
.L70:
	ldr	d0, [sp, 344]
	fneg	d0, d0
	ldr	x0, [sp, 16]
	str	d0, [x0]
	ldr	d0, [sp, 352]
	ldr	x0, [sp, 16]
	add	x0, x0, 8
	fneg	d0, d0
	str	d0, [x0]
	ldr	x0, [sp, 16]
	add	x0, x0, 16
	ldr	d0, [sp, 96]
	fneg	d0, d0
	str	d0, [x0]
.L49:
	ldr	w0, [sp, 48]
	and	w0, w0, 7
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 664]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L72
	bl	__stack_chk_fail
.L72:
	mov	w0, w1
	add	sp, sp, 672
	.cfi_def_cfa_offset 16
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	__rem_pio2_large, .-__rem_pio2_large
	.section	.rodata
	.align	3
	.type	toint, %object
	.size	toint, 8
toint:
	.word	0
	.word	1127743488
	.align	3
	.type	pio4, %object
	.size	pio4, 8
pio4:
	.word	1413754136
	.word	1072243195
	.align	3
	.type	invpio2, %object
	.size	invpio2, 8
invpio2:
	.word	1841940611
	.word	1071931184
	.align	3
	.type	pio2_1, %object
	.size	pio2_1, 8
pio2_1:
	.word	1413480448
	.word	1073291771
	.align	3
	.type	pio2_1t, %object
	.size	pio2_1t, 8
pio2_1t:
	.word	442655537
	.word	1037087841
	.align	3
	.type	pio2_2, %object
	.size	pio2_2, 8
pio2_2:
	.word	442499072
	.word	1037087841
	.align	3
	.type	pio2_2t, %object
	.size	pio2_2t, 8
pio2_2t:
	.word	771977331
	.word	1000544650
	.align	3
	.type	pio2_3, %object
	.size	pio2_3, 8
pio2_3:
	.word	771751936
	.word	1000544650
	.align	3
	.type	pio2_3t, %object
	.size	pio2_3t, 8
pio2_3t:
	.word	622873025
	.word	964395930
	.text
	.align	2
	.global	__rem_pio2
	.type	__rem_pio2, %function
__rem_pio2:
.LFB4:
	.cfi_startproc
	sub	sp, sp, #160
	.cfi_def_cfa_offset 160
	stp	x29, x30, [sp, 144]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 144
	str	d0, [sp, 8]
	str	x0, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 136]
	mov	x1, 0
	ldr	d0, [sp, 8]
	str	d0, [sp, 48]
	ldr	x0, [sp, 48]
	lsr	x0, x0, 63
	str	w0, [sp, 32]
	ldr	x0, [sp, 48]
	lsr	x0, x0, 32
	and	w0, w0, 2147483647
	str	w0, [sp, 36]
	ldr	w1, [sp, 36]
	mov	w0, 27258
	movk	w0, 0x400f, lsl 16
	cmp	w1, w0
	bhi	.L78
	ldr	w0, [sp, 36]
	and	w1, w0, 1048575
	mov	w0, 8699
	movk	w0, 0x9, lsl 16
	cmp	w1, w0
	beq	.L108
	ldr	w1, [sp, 36]
	mov	w0, 55676
	movk	w0, 0x4002, lsl 16
	cmp	w1, w0
	bhi	.L81
	ldr	w0, [sp, 32]
	cmp	w0, 0
	bne	.L82
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	ldr	d0, [sp, 8]
	fsub	d0, d0, d1
	str	d0, [sp, 56]
	adrp	x0, .LC1
	ldr	d1, [x0, #:lo12:.LC1]
	ldr	d0, [sp, 56]
	fsub	d0, d0, d1
	ldr	x0, [sp]
	str	d0, [x0]
	ldr	x0, [sp]
	ldr	d0, [x0]
	ldr	d1, [sp, 56]
	fsub	d0, d1, d0
	adrp	x0, .LC1
	ldr	d1, [x0, #:lo12:.LC1]
	ldr	x0, [sp]
	add	x0, x0, 8
	fsub	d0, d0, d1
	str	d0, [x0]
	mov	w0, 1
	b	.L103
.L82:
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	ldr	d0, [sp, 8]
	fadd	d0, d0, d1
	str	d0, [sp, 56]
	adrp	x0, .LC1
	ldr	d1, [x0, #:lo12:.LC1]
	ldr	d0, [sp, 56]
	fadd	d0, d1, d0
	ldr	x0, [sp]
	str	d0, [x0]
	ldr	x0, [sp]
	ldr	d0, [x0]
	ldr	d1, [sp, 56]
	fsub	d0, d1, d0
	adrp	x0, .LC1
	ldr	d1, [x0, #:lo12:.LC1]
	ldr	x0, [sp]
	add	x0, x0, 8
	fadd	d0, d0, d1
	str	d0, [x0]
	mov	w0, -1
	b	.L103
.L81:
	ldr	w0, [sp, 32]
	cmp	w0, 0
	bne	.L84
	adrp	x0, .LC0
	ldr	d0, [x0, #:lo12:.LC0]
	fadd	d0, d0, d0
	ldr	d1, [sp, 8]
	fsub	d0, d1, d0
	str	d0, [sp, 56]
	adrp	x0, .LC1
	ldr	d0, [x0, #:lo12:.LC1]
	fadd	d0, d0, d0
	ldr	d1, [sp, 56]
	fsub	d0, d1, d0
	ldr	x0, [sp]
	str	d0, [x0]
	ldr	x0, [sp]
	ldr	d0, [x0]
	ldr	d1, [sp, 56]
	fsub	d1, d1, d0
	adrp	x0, .LC1
	ldr	d0, [x0, #:lo12:.LC1]
	fadd	d0, d0, d0
	ldr	x0, [sp]
	add	x0, x0, 8
	fsub	d0, d1, d0
	str	d0, [x0]
	mov	w0, 2
	b	.L103
.L84:
	adrp	x0, .LC0
	ldr	d0, [x0, #:lo12:.LC0]
	fadd	d0, d0, d0
	ldr	d1, [sp, 8]
	fadd	d0, d1, d0
	str	d0, [sp, 56]
	adrp	x0, .LC1
	ldr	d0, [x0, #:lo12:.LC1]
	fadd	d1, d0, d0
	ldr	d0, [sp, 56]
	fadd	d0, d1, d0
	ldr	x0, [sp]
	str	d0, [x0]
	ldr	x0, [sp]
	ldr	d0, [x0]
	ldr	d1, [sp, 56]
	fsub	d1, d1, d0
	adrp	x0, .LC1
	ldr	d0, [x0, #:lo12:.LC1]
	fadd	d0, d0, d0
	ldr	x0, [sp]
	add	x0, x0, 8
	fadd	d0, d1, d0
	str	d0, [x0]
	mov	w0, -2
	b	.L103
.L78:
	ldr	w1, [sp, 36]
	mov	w0, 17979
	movk	w0, 0x401c, lsl 16
	cmp	w1, w0
	bhi	.L85
	ldr	w1, [sp, 36]
	mov	w0, 64956
	movk	w0, 0x4015, lsl 16
	cmp	w1, w0
	bhi	.L86
	ldr	w1, [sp, 36]
	mov	w0, 55676
	movk	w0, 0x4012, lsl 16
	cmp	w1, w0
	beq	.L109
	ldr	w0, [sp, 32]
	cmp	w0, 0
	bne	.L88
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	fmov	d0, 3.0e+0
	fmul	d0, d1, d0
	ldr	d1, [sp, 8]
	fsub	d0, d1, d0
	str	d0, [sp, 56]
	adrp	x0, .LC1
	ldr	d1, [x0, #:lo12:.LC1]
	fmov	d0, 3.0e+0
	fmul	d0, d1, d0
	ldr	d1, [sp, 56]
	fsub	d0, d1, d0
	ldr	x0, [sp]
	str	d0, [x0]
	ldr	x0, [sp]
	ldr	d0, [x0]
	ldr	d1, [sp, 56]
	fsub	d1, d1, d0
	adrp	x0, .LC1
	ldr	d2, [x0, #:lo12:.LC1]
	fmov	d0, 3.0e+0
	fmul	d0, d2, d0
	ldr	x0, [sp]
	add	x0, x0, 8
	fsub	d0, d1, d0
	str	d0, [x0]
	mov	w0, 3
	b	.L103
.L88:
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	fmov	d0, 3.0e+0
	fmul	d0, d1, d0
	ldr	d1, [sp, 8]
	fadd	d0, d1, d0
	str	d0, [sp, 56]
	adrp	x0, .LC1
	ldr	d1, [x0, #:lo12:.LC1]
	fmov	d0, 3.0e+0
	fmul	d1, d1, d0
	ldr	d0, [sp, 56]
	fadd	d0, d1, d0
	ldr	x0, [sp]
	str	d0, [x0]
	ldr	x0, [sp]
	ldr	d0, [x0]
	ldr	d1, [sp, 56]
	fsub	d1, d1, d0
	adrp	x0, .LC1
	ldr	d2, [x0, #:lo12:.LC1]
	fmov	d0, 3.0e+0
	fmul	d0, d2, d0
	ldr	x0, [sp]
	add	x0, x0, 8
	fadd	d0, d1, d0
	str	d0, [x0]
	mov	w0, -3
	b	.L103
.L86:
	ldr	w1, [sp, 36]
	mov	w0, 8699
	movk	w0, 0x4019, lsl 16
	cmp	w1, w0
	beq	.L110
	ldr	w0, [sp, 32]
	cmp	w0, 0
	bne	.L90
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	fmov	d0, 4.0e+0
	fmul	d0, d1, d0
	ldr	d1, [sp, 8]
	fsub	d0, d1, d0
	str	d0, [sp, 56]
	adrp	x0, .LC1
	ldr	d1, [x0, #:lo12:.LC1]
	fmov	d0, 4.0e+0
	fmul	d0, d1, d0
	ldr	d1, [sp, 56]
	fsub	d0, d1, d0
	ldr	x0, [sp]
	str	d0, [x0]
	ldr	x0, [sp]
	ldr	d0, [x0]
	ldr	d1, [sp, 56]
	fsub	d1, d1, d0
	adrp	x0, .LC1
	ldr	d2, [x0, #:lo12:.LC1]
	fmov	d0, 4.0e+0
	fmul	d0, d2, d0
	ldr	x0, [sp]
	add	x0, x0, 8
	fsub	d0, d1, d0
	str	d0, [x0]
	mov	w0, 4
	b	.L103
.L90:
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	fmov	d0, 4.0e+0
	fmul	d0, d1, d0
	ldr	d1, [sp, 8]
	fadd	d0, d1, d0
	str	d0, [sp, 56]
	adrp	x0, .LC1
	ldr	d1, [x0, #:lo12:.LC1]
	fmov	d0, 4.0e+0
	fmul	d1, d1, d0
	ldr	d0, [sp, 56]
	fadd	d0, d1, d0
	ldr	x0, [sp]
	str	d0, [x0]
	ldr	x0, [sp]
	ldr	d0, [x0]
	ldr	d1, [sp, 56]
	fsub	d1, d1, d0
	adrp	x0, .LC1
	ldr	d2, [x0, #:lo12:.LC1]
	fmov	d0, 4.0e+0
	fmul	d0, d2, d0
	ldr	x0, [sp]
	add	x0, x0, 8
	fadd	d0, d1, d0
	str	d0, [x0]
	mov	w0, -4
	b	.L103
.L85:
	ldr	w1, [sp, 36]
	mov	w0, 8698
	movk	w0, 0x4139, lsl 16
	cmp	w1, w0
	bhi	.L91
	b	.L80
.L108:
	nop
	b	.L80
.L109:
	nop
	b	.L80
.L110:
	nop
.L80:
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	ldr	d0, [sp, 8]
	fmul	d0, d1, d0
	mov	x0, 4843621399236968448
	fmov	d1, x0
	fadd	d0, d0, d1
	mov	x0, 4843621399236968448
	fmov	d1, x0
	fsub	d0, d0, d1
	str	d0, [sp, 80]
	ldr	d0, [sp, 80]
	fcvtzs	w0, d0
	str	w0, [sp, 24]
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	ldr	d0, [sp, 80]
	fmul	d0, d1, d0
	ldr	d1, [sp, 8]
	fsub	d0, d1, d0
	str	d0, [sp, 72]
	adrp	x0, .LC1
	ldr	d1, [x0, #:lo12:.LC1]
	ldr	d0, [sp, 80]
	fmul	d0, d0, d1
	str	d0, [sp, 64]
	ldr	d1, [sp, 72]
	ldr	d0, [sp, 64]
	fsub	d1, d1, d0
	adrp	x0, .LC3
	ldr	d0, [x0, #:lo12:.LC3]
	fneg	d0, d0
	fcmpe	d1, d0
	bmi	.L105
	b	.L107
.L105:
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	str	w0, [sp, 24]
	ldr	d1, [sp, 80]
	fmov	d0, 1.0e+0
	fsub	d0, d1, d0
	str	d0, [sp, 80]
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	ldr	d0, [sp, 80]
	fmul	d0, d1, d0
	ldr	d1, [sp, 8]
	fsub	d0, d1, d0
	str	d0, [sp, 72]
	adrp	x0, .LC1
	ldr	d1, [x0, #:lo12:.LC1]
	ldr	d0, [sp, 80]
	fmul	d0, d0, d1
	str	d0, [sp, 64]
	b	.L94
.L107:
	ldr	d1, [sp, 72]
	ldr	d0, [sp, 64]
	fsub	d0, d1, d0
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fcmpe	d0, d1
	bgt	.L106
	b	.L94
.L106:
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldr	d1, [sp, 80]
	fmov	d0, 1.0e+0
	fadd	d0, d1, d0
	str	d0, [sp, 80]
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	ldr	d0, [sp, 80]
	fmul	d0, d1, d0
	ldr	d1, [sp, 8]
	fsub	d0, d1, d0
	str	d0, [sp, 72]
	adrp	x0, .LC1
	ldr	d1, [x0, #:lo12:.LC1]
	ldr	d0, [sp, 80]
	fmul	d0, d0, d1
	str	d0, [sp, 64]
.L94:
	ldr	d1, [sp, 72]
	ldr	d0, [sp, 64]
	fsub	d0, d1, d0
	ldr	x0, [sp]
	str	d0, [x0]
	ldr	x0, [sp]
	ldr	d0, [x0]
	str	d0, [sp, 48]
	ldr	x0, [sp, 48]
	lsr	x0, x0, 52
	and	w0, w0, 2047
	str	w0, [sp, 40]
	ldr	w0, [sp, 36]
	lsr	w0, w0, 20
	str	w0, [sp, 44]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	sub	w0, w1, w0
	cmp	w0, 16
	ble	.L96
	ldr	d0, [sp, 72]
	str	d0, [sp, 88]
	adrp	x0, .LC4
	ldr	d1, [x0, #:lo12:.LC4]
	ldr	d0, [sp, 80]
	fmul	d0, d0, d1
	str	d0, [sp, 64]
	ldr	d1, [sp, 88]
	ldr	d0, [sp, 64]
	fsub	d0, d1, d0
	str	d0, [sp, 72]
	adrp	x0, .LC5
	ldr	d1, [x0, #:lo12:.LC5]
	ldr	d0, [sp, 80]
	fmul	d1, d1, d0
	ldr	d2, [sp, 88]
	ldr	d0, [sp, 72]
	fsub	d2, d2, d0
	ldr	d0, [sp, 64]
	fsub	d0, d2, d0
	fsub	d0, d1, d0
	str	d0, [sp, 64]
	ldr	d1, [sp, 72]
	ldr	d0, [sp, 64]
	fsub	d0, d1, d0
	ldr	x0, [sp]
	str	d0, [x0]
	ldr	x0, [sp]
	ldr	d0, [x0]
	str	d0, [sp, 48]
	ldr	x0, [sp, 48]
	lsr	x0, x0, 52
	and	w0, w0, 2047
	str	w0, [sp, 40]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	sub	w0, w1, w0
	cmp	w0, 49
	ble	.L96
	ldr	d0, [sp, 72]
	str	d0, [sp, 88]
	adrp	x0, .LC6
	ldr	d1, [x0, #:lo12:.LC6]
	ldr	d0, [sp, 80]
	fmul	d0, d0, d1
	str	d0, [sp, 64]
	ldr	d1, [sp, 88]
	ldr	d0, [sp, 64]
	fsub	d0, d1, d0
	str	d0, [sp, 72]
	adrp	x0, .LC7
	ldr	d1, [x0, #:lo12:.LC7]
	ldr	d0, [sp, 80]
	fmul	d1, d1, d0
	ldr	d2, [sp, 88]
	ldr	d0, [sp, 72]
	fsub	d2, d2, d0
	ldr	d0, [sp, 64]
	fsub	d0, d2, d0
	fsub	d0, d1, d0
	str	d0, [sp, 64]
	ldr	d1, [sp, 72]
	ldr	d0, [sp, 64]
	fsub	d0, d1, d0
	ldr	x0, [sp]
	str	d0, [x0]
.L96:
	ldr	x0, [sp]
	ldr	d0, [x0]
	ldr	d1, [sp, 72]
	fsub	d1, d1, d0
	ldr	x0, [sp]
	add	x0, x0, 8
	ldr	d0, [sp, 64]
	fsub	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 24]
	b	.L103
.L91:
	ldr	w1, [sp, 36]
	mov	w0, 2146435071
	cmp	w1, w0
	bls	.L97
	ldr	x0, [sp]
	add	x0, x0, 8
	ldr	d0, [sp, 8]
	fsub	d0, d0, d0
	str	d0, [x0]
	ldr	d0, [x0]
	ldr	x0, [sp]
	str	d0, [x0]
	mov	w0, 0
	b	.L103
.L97:
	ldr	d0, [sp, 8]
	str	d0, [sp, 48]
	ldr	x0, [sp, 48]
	and	x0, x0, 4503599627370495
	str	x0, [sp, 48]
	ldr	x1, [sp, 48]
	mov	x0, 4710765210229538816
	orr	x0, x1, x0
	str	x0, [sp, 48]
	ldr	d0, [sp, 48]
	str	d0, [sp, 56]
	str	wzr, [sp, 28]
	b	.L98
.L99:
	ldr	d0, [sp, 56]
	fcvtzs	w0, d0
	scvtf	d0, w0
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	add	x1, sp, 112
	str	d0, [x1, x0]
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	add	x1, sp, 112
	ldr	d0, [x1, x0]
	ldr	d1, [sp, 56]
	fsub	d0, d1, d0
	mov	x0, 4715268809856909312
	fmov	d1, x0
	fmul	d0, d0, d1
	str	d0, [sp, 56]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L98:
	ldr	w0, [sp, 28]
	cmp	w0, 1
	ble	.L99
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	add	x1, sp, 112
	ldr	d0, [sp, 56]
	str	d0, [x1, x0]
	b	.L100
.L101:
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	str	w0, [sp, 28]
.L100:
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	add	x1, sp, 112
	ldr	d0, [x1, x0]
	fcmp	d0, #0.0
	beq	.L101
	ldr	w0, [sp, 36]
	lsr	w0, w0, 20
	sub	w2, w0, #1046
	ldr	w0, [sp, 28]
	add	w3, w0, 1
	add	x1, sp, 96
	add	x0, sp, 112
	mov	w4, 1
	bl	__rem_pio2_large
	str	w0, [sp, 24]
	ldr	w0, [sp, 32]
	cmp	w0, 0
	beq	.L102
	ldr	d0, [sp, 96]
	fneg	d0, d0
	ldr	x0, [sp]
	str	d0, [x0]
	ldr	d0, [sp, 104]
	ldr	x0, [sp]
	add	x0, x0, 8
	fneg	d0, d0
	str	d0, [x0]
	ldr	w0, [sp, 24]
	neg	w0, w0
	b	.L103
.L102:
	ldr	d0, [sp, 96]
	ldr	x0, [sp]
	str	d0, [x0]
	ldr	x0, [sp]
	add	x0, x0, 8
	ldr	d0, [sp, 104]
	str	d0, [x0]
	ldr	w0, [sp, 24]
.L103:
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 136]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L104
	bl	__stack_chk_fail
.L104:
	mov	w0, w1
	ldp	x29, x30, [sp, 144]
	add	sp, sp, 160
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	__rem_pio2, .-__rem_pio2
	.section	.rodata
	.align	3
.LC0:
	.word	1413480448
	.word	1073291771
	.align	3
.LC1:
	.word	442655537
	.word	1037087841
	.align	3
.LC2:
	.word	1841940611
	.word	1071931184
	.align	3
.LC3:
	.word	1413754136
	.word	1072243195
	.align	3
.LC4:
	.word	442499072
	.word	1037087841
	.align	3
.LC5:
	.word	771977331
	.word	1000544650
	.align	3
.LC6:
	.word	771751936
	.word	1000544650
	.align	3
.LC7:
	.word	622873025
	.word	964395930
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
