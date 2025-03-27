	.arch armv8-a
	.file	"libmin_atan.c"
	.text
	.data
	.align	3
	.type	tiny, %object
	.size	tiny, 8
tiny:
	.word	-1023872167
	.word	27618847
	.section	.rodata
	.align	3
	.type	zero, %object
	.size	zero, 8
zero:
	.zero	8
	.align	3
	.type	pi_o_4, %object
	.size	pi_o_4, 8
pi_o_4:
	.word	1413754136
	.word	1072243195
	.align	3
	.type	pi_o_2, %object
	.size	pi_o_2, 8
pi_o_2:
	.word	1413754136
	.word	1073291771
	.align	3
	.type	pi, %object
	.size	pi, 8
pi:
	.word	1413754136
	.word	1074340347
	.data
	.align	3
	.type	pi_lo, %object
	.size	pi_lo, 8
pi_lo:
	.word	856972295
	.word	1017226790
	.text
	.align	2
	.global	libmin_atan2
	.type	libmin_atan2, %function
libmin_atan2:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	d0, [sp, 24]
	str	d1, [sp, 16]
	ldr	d0, [sp, 16]
	str	d0, [sp, 64]
	ldr	x0, [sp, 64]
	lsr	x0, x0, 32
	str	w0, [sp, 36]
	ldr	x0, [sp, 64]
	str	w0, [sp, 40]
	ldr	w0, [sp, 36]
	and	w0, w0, 2147483647
	str	w0, [sp, 44]
	ldr	d0, [sp, 24]
	str	d0, [sp, 64]
	ldr	x0, [sp, 64]
	lsr	x0, x0, 32
	str	w0, [sp, 48]
	ldr	x0, [sp, 64]
	str	w0, [sp, 52]
	ldr	w0, [sp, 48]
	and	w0, w0, 2147483647
	str	w0, [sp, 56]
	ldr	w0, [sp, 40]
	neg	w1, w0
	ldr	w0, [sp, 40]
	orr	w0, w1, w0
	lsr	w1, w0, 31
	ldr	w0, [sp, 44]
	orr	w1, w1, w0
	mov	w0, 2146435072
	cmp	w1, w0
	bhi	.L2
	ldr	w0, [sp, 52]
	neg	w1, w0
	ldr	w0, [sp, 52]
	orr	w0, w1, w0
	lsr	w1, w0, 31
	ldr	w0, [sp, 56]
	orr	w1, w1, w0
	mov	w0, 2146435072
	cmp	w1, w0
	bls	.L3
.L2:
	ldr	d1, [sp, 16]
	ldr	d0, [sp, 24]
	fadd	d0, d1, d0
	b	.L4
.L3:
	ldr	w1, [sp, 36]
	mov	w0, 1072693248
	cmp	w1, w0
	bne	.L5
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bne	.L5
	ldr	d0, [sp, 24]
	bl	libmin_atan
	b	.L4
.L5:
	ldr	w0, [sp, 48]
	lsr	w0, w0, 31
	mov	w1, w0
	ldr	w0, [sp, 36]
	asr	w0, w0, 30
	and	w0, w0, 2
	orr	w0, w1, w0
	str	w0, [sp, 32]
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 52]
	orr	w0, w1, w0
	cmp	w0, 0
	bne	.L6
	ldr	w0, [sp, 32]
	cmp	w0, 3
	beq	.L7
	ldr	w0, [sp, 32]
	cmp	w0, 3
	bgt	.L6
	ldr	w0, [sp, 32]
	cmp	w0, 1
	bgt	.L8
	ldr	w0, [sp, 32]
	cmp	w0, 0
	bge	.L9
	b	.L6
.L8:
	ldr	w0, [sp, 32]
	cmp	w0, 2
	beq	.L10
	b	.L6
.L9:
	ldr	d0, [sp, 24]
	b	.L4
.L10:
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	adrp	x0, tiny
	add	x0, x0, :lo12:tiny
	ldr	d0, [x0]
	fadd	d0, d1, d0
	b	.L4
.L7:
	adrp	x0, .LC0
	ldr	d0, [x0, #:lo12:.LC0]
	fneg	d1, d0
	adrp	x0, tiny
	add	x0, x0, :lo12:tiny
	ldr	d0, [x0]
	fsub	d0, d1, d0
	b	.L4
.L6:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	orr	w0, w1, w0
	cmp	w0, 0
	bne	.L11
	ldr	w0, [sp, 48]
	cmp	w0, 0
	bge	.L12
	adrp	x0, .LC1
	ldr	d0, [x0, #:lo12:.LC1]
	fneg	d1, d0
	adrp	x0, tiny
	add	x0, x0, :lo12:tiny
	ldr	d0, [x0]
	fsub	d0, d1, d0
	b	.L4
.L12:
	adrp	x0, .LC1
	ldr	d1, [x0, #:lo12:.LC1]
	adrp	x0, tiny
	add	x0, x0, :lo12:tiny
	ldr	d0, [x0]
	fadd	d0, d1, d0
	b	.L4
.L11:
	ldr	w1, [sp, 44]
	mov	w0, 2146435072
	cmp	w1, w0
	bne	.L14
	ldr	w1, [sp, 56]
	mov	w0, 2146435072
	cmp	w1, w0
	bne	.L15
	ldr	w0, [sp, 32]
	cmp	w0, 3
	beq	.L16
	ldr	w0, [sp, 32]
	cmp	w0, 3
	bgt	.L14
	ldr	w0, [sp, 32]
	cmp	w0, 2
	beq	.L17
	ldr	w0, [sp, 32]
	cmp	w0, 2
	bgt	.L14
	ldr	w0, [sp, 32]
	cmp	w0, 0
	beq	.L18
	ldr	w0, [sp, 32]
	cmp	w0, 1
	beq	.L19
	b	.L14
.L18:
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	adrp	x0, tiny
	add	x0, x0, :lo12:tiny
	ldr	d0, [x0]
	fadd	d0, d1, d0
	b	.L4
.L19:
	adrp	x0, .LC2
	ldr	d0, [x0, #:lo12:.LC2]
	fneg	d1, d0
	adrp	x0, tiny
	add	x0, x0, :lo12:tiny
	ldr	d0, [x0]
	fsub	d0, d1, d0
	b	.L4
.L17:
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	fmov	d0, 3.0e+0
	fmul	d1, d1, d0
	adrp	x0, tiny
	add	x0, x0, :lo12:tiny
	ldr	d0, [x0]
	fadd	d0, d1, d0
	b	.L4
.L16:
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	fmov	d0, -3.0e+0
	fmul	d1, d1, d0
	adrp	x0, tiny
	add	x0, x0, :lo12:tiny
	ldr	d0, [x0]
	fsub	d0, d1, d0
	b	.L4
.L15:
	ldr	w0, [sp, 32]
	cmp	w0, 3
	beq	.L20
	ldr	w0, [sp, 32]
	cmp	w0, 3
	bgt	.L14
	ldr	w0, [sp, 32]
	cmp	w0, 2
	beq	.L21
	ldr	w0, [sp, 32]
	cmp	w0, 2
	bgt	.L14
	ldr	w0, [sp, 32]
	cmp	w0, 0
	beq	.L22
	ldr	w0, [sp, 32]
	cmp	w0, 1
	beq	.L23
	b	.L14
.L22:
	movi	d0, #0
	b	.L4
.L23:
	movi	d0, #0
	fneg	d0, d0
	b	.L4
.L21:
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	adrp	x0, tiny
	add	x0, x0, :lo12:tiny
	ldr	d0, [x0]
	fadd	d0, d1, d0
	b	.L4
.L20:
	adrp	x0, .LC0
	ldr	d0, [x0, #:lo12:.LC0]
	fneg	d1, d0
	adrp	x0, tiny
	add	x0, x0, :lo12:tiny
	ldr	d0, [x0]
	fsub	d0, d1, d0
	b	.L4
.L14:
	ldr	w1, [sp, 56]
	mov	w0, 2146435072
	cmp	w1, w0
	bne	.L24
	ldr	w0, [sp, 48]
	cmp	w0, 0
	bge	.L25
	adrp	x0, .LC1
	ldr	d0, [x0, #:lo12:.LC1]
	fneg	d1, d0
	adrp	x0, tiny
	add	x0, x0, :lo12:tiny
	ldr	d0, [x0]
	fsub	d0, d1, d0
	b	.L4
.L25:
	adrp	x0, .LC1
	ldr	d1, [x0, #:lo12:.LC1]
	adrp	x0, tiny
	add	x0, x0, :lo12:tiny
	ldr	d0, [x0]
	fadd	d0, d1, d0
	b	.L4
.L24:
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 44]
	sub	w0, w1, w0
	asr	w0, w0, 20
	str	w0, [sp, 60]
	ldr	w0, [sp, 60]
	cmp	w0, 60
	ble	.L27
	adrp	x0, pi_lo
	add	x0, x0, :lo12:pi_lo
	ldr	d1, [x0]
	fmov	d0, 5.0e-1
	fmul	d0, d1, d0
	adrp	x0, .LC1
	ldr	d1, [x0, #:lo12:.LC1]
	fadd	d0, d0, d1
	str	d0, [sp, 72]
	ldr	w0, [sp, 32]
	and	w0, w0, 1
	str	w0, [sp, 32]
	b	.L28
.L27:
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bge	.L29
	ldr	w0, [sp, 60]
	cmn	w0, #60
	bge	.L29
	str	xzr, [sp, 72]
	b	.L28
.L29:
	ldr	d0, [sp, 16]
	ldr	d1, [sp, 24]
	fdiv	d0, d1, d0
	bl	libmin_fabs
	bl	libmin_atan
	str	d0, [sp, 72]
.L28:
	ldr	w0, [sp, 32]
	cmp	w0, 2
	beq	.L30
	ldr	w0, [sp, 32]
	cmp	w0, 2
	bgt	.L31
	ldr	w0, [sp, 32]
	cmp	w0, 0
	beq	.L32
	ldr	w0, [sp, 32]
	cmp	w0, 1
	beq	.L33
	b	.L31
.L32:
	ldr	d0, [sp, 72]
	b	.L4
.L33:
	ldr	d0, [sp, 72]
	fneg	d0, d0
	b	.L4
.L30:
	adrp	x0, .LC0
	ldr	d2, [x0, #:lo12:.LC0]
	adrp	x0, pi_lo
	add	x0, x0, :lo12:pi_lo
	ldr	d0, [x0]
	ldr	d1, [sp, 72]
	fsub	d0, d1, d0
	fsub	d0, d2, d0
	b	.L4
.L31:
	adrp	x0, pi_lo
	add	x0, x0, :lo12:pi_lo
	ldr	d0, [x0]
	ldr	d1, [sp, 72]
	fsub	d0, d1, d0
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	fsub	d0, d0, d1
.L4:
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_atan2, .-libmin_atan2
	.section	.rodata
	.align	3
	.type	atanhi, %object
	.size	atanhi, 32
atanhi:
	.word	90291023
	.word	1071492199
	.word	1413754136
	.word	1072243195
	.word	-763234661
	.word	1072657163
	.word	1413754136
	.word	1073291771
	.align	3
	.type	atanlo, %object
	.size	atanlo, 32
atanlo:
	.word	573531618
	.word	1014639487
	.word	856972295
	.word	1015129638
	.word	2062601149
	.word	1013974920
	.word	856972295
	.word	1016178214
	.align	3
	.type	aT, %object
	.size	aT, 88
aT:
	.word	1431655693
	.word	1070945621
	.word	-1718031420
	.word	-1077306983
	.word	-1845459969
	.word	1069697316
	.word	-31254927
	.word	-1078169146
	.word	-984866706
	.word	1068975565
	.word	-1351312787
	.word	-1078742798
	.word	-1596965551
	.word	1068567910
	.word	1390345626
	.word	-1079124435
	.word	611716587
	.word	1068071755
	.word	745172015
	.word	-1079856060
	.word	-484255215
	.word	1066446138
	.align	3
	.type	one, %object
	.size	one, 8
one:
	.word	0
	.word	1072693248
	.align	3
	.type	huge, %object
	.size	huge, 8
huge:
	.word	-2013235812
	.word	2117592124
	.text
	.align	2
	.global	libmin_atan
	.type	libmin_atan, %function
libmin_atan:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	d0, [sp, 24]
	ldr	d0, [sp, 24]
	str	d0, [sp, 56]
	ldr	x0, [sp, 56]
	lsr	x0, x0, 32
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	and	w0, w0, 2147483647
	str	w0, [sp, 48]
	ldr	w1, [sp, 48]
	mov	w0, 1141899263
	cmp	w1, w0
	ble	.L35
	ldr	d0, [sp, 24]
	str	d0, [sp, 56]
	ldr	x0, [sp, 56]
	str	w0, [sp, 52]
	ldr	w1, [sp, 48]
	mov	w0, 2146435072
	cmp	w1, w0
	bgt	.L36
	ldr	w1, [sp, 48]
	mov	w0, 2146435072
	cmp	w1, w0
	bne	.L37
	ldr	w0, [sp, 52]
	cmp	w0, 0
	beq	.L37
.L36:
	ldr	d0, [sp, 24]
	fadd	d0, d0, d0
	b	.L38
.L37:
	ldr	w0, [sp, 44]
	cmp	w0, 0
	ble	.L39
	adrp	x0, .LC1
	ldr	d1, [x0, #:lo12:.LC1]
	adrp	x0, atanlo+24
	add	x0, x0, :lo12:atanlo+24
	ldr	d0, [x0]
	fadd	d0, d1, d0
	b	.L38
.L39:
	adrp	x0, .LC1
	ldr	d0, [x0, #:lo12:.LC1]
	fneg	d1, d0
	adrp	x0, atanlo+24
	add	x0, x0, :lo12:atanlo+24
	ldr	d0, [x0]
	fsub	d0, d1, d0
	b	.L38
.L35:
	ldr	w1, [sp, 48]
	mov	w0, 1071382527
	cmp	w1, w0
	bgt	.L40
	ldr	w1, [sp, 48]
	mov	w0, 1044381695
	cmp	w1, w0
	bgt	.L41
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	ldr	d0, [sp, 24]
	fadd	d1, d1, d0
	fmov	d0, 1.0e+0
	fcmpe	d1, d0
	bgt	.L50
	b	.L41
.L50:
	ldr	d0, [sp, 24]
	b	.L38
.L41:
	mov	w0, -1
	str	w0, [sp, 40]
	b	.L43
.L40:
	ldr	d0, [sp, 24]
	bl	libmin_fabs
	str	d0, [sp, 24]
	ldr	w1, [sp, 48]
	mov	w0, 1072889855
	cmp	w1, w0
	bgt	.L44
	ldr	w1, [sp, 48]
	mov	w0, 1072037887
	cmp	w1, w0
	bgt	.L45
	str	wzr, [sp, 40]
	ldr	d0, [sp, 24]
	fadd	d1, d0, d0
	fmov	d0, 1.0e+0
	fsub	d1, d1, d0
	ldr	d2, [sp, 24]
	fmov	d0, 2.0e+0
	fadd	d0, d2, d0
	fdiv	d0, d1, d0
	str	d0, [sp, 24]
	b	.L43
.L45:
	mov	w0, 1
	str	w0, [sp, 40]
	fmov	d0, 1.0e+0
	ldr	d1, [sp, 24]
	fsub	d1, d1, d0
	fmov	d2, 1.0e+0
	ldr	d0, [sp, 24]
	fadd	d0, d2, d0
	fdiv	d0, d1, d0
	str	d0, [sp, 24]
	b	.L43
.L44:
	ldr	w1, [sp, 48]
	mov	w0, 32767
	movk	w0, 0x4003, lsl 16
	cmp	w1, w0
	bgt	.L46
	mov	w0, 2
	str	w0, [sp, 40]
	ldr	d1, [sp, 24]
	fmov	d0, 1.5e+0
	fsub	d1, d1, d0
	ldr	d2, [sp, 24]
	fmov	d0, 1.5e+0
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d0, d2, d0
	fdiv	d0, d1, d0
	str	d0, [sp, 24]
	b	.L43
.L46:
	mov	w0, 3
	str	w0, [sp, 40]
	ldr	d0, [sp, 24]
	fmov	d1, -1.0e+0
	fdiv	d0, d1, d0
	str	d0, [sp, 24]
.L43:
	ldr	d0, [sp, 24]
	fmul	d0, d0, d0
	str	d0, [sp, 64]
	ldr	d0, [sp, 64]
	fmul	d0, d0, d0
	str	d0, [sp, 72]
	adrp	x0, .LC4
	ldr	d2, [x0, #:lo12:.LC4]
	adrp	x0, .LC5
	ldr	d3, [x0, #:lo12:.LC5]
	adrp	x0, .LC6
	ldr	d4, [x0, #:lo12:.LC6]
	adrp	x0, .LC7
	ldr	d5, [x0, #:lo12:.LC7]
	adrp	x0, .LC8
	ldr	d1, [x0, #:lo12:.LC8]
	adrp	x0, .LC9
	ldr	d6, [x0, #:lo12:.LC9]
	ldr	d0, [sp, 72]
	fmul	d0, d6, d0
	fadd	d1, d1, d0
	ldr	d0, [sp, 72]
	fmul	d0, d1, d0
	fadd	d1, d5, d0
	ldr	d0, [sp, 72]
	fmul	d0, d1, d0
	fadd	d1, d4, d0
	ldr	d0, [sp, 72]
	fmul	d0, d1, d0
	fadd	d1, d3, d0
	ldr	d0, [sp, 72]
	fmul	d0, d1, d0
	fadd	d0, d2, d0
	ldr	d1, [sp, 64]
	fmul	d0, d1, d0
	str	d0, [sp, 80]
	adrp	x0, .LC10
	ldr	d2, [x0, #:lo12:.LC10]
	adrp	x0, .LC11
	ldr	d3, [x0, #:lo12:.LC11]
	adrp	x0, .LC12
	ldr	d4, [x0, #:lo12:.LC12]
	adrp	x0, .LC13
	ldr	d1, [x0, #:lo12:.LC13]
	adrp	x0, .LC14
	ldr	d5, [x0, #:lo12:.LC14]
	ldr	d0, [sp, 72]
	fmul	d0, d5, d0
	fadd	d1, d1, d0
	ldr	d0, [sp, 72]
	fmul	d0, d1, d0
	fadd	d1, d4, d0
	ldr	d0, [sp, 72]
	fmul	d0, d1, d0
	fadd	d1, d3, d0
	ldr	d0, [sp, 72]
	fmul	d0, d1, d0
	fadd	d0, d2, d0
	ldr	d1, [sp, 72]
	fmul	d0, d1, d0
	str	d0, [sp, 88]
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bge	.L47
	ldr	d1, [sp, 80]
	ldr	d0, [sp, 88]
	fadd	d1, d1, d0
	ldr	d0, [sp, 24]
	fmul	d0, d1, d0
	ldr	d1, [sp, 24]
	fsub	d0, d1, d0
	b	.L38
.L47:
	adrp	x0, atanhi
	add	x0, x0, :lo12:atanhi
	ldrsw	x1, [sp, 40]
	ldr	d1, [x0, x1, lsl 3]
	ldr	d2, [sp, 80]
	ldr	d0, [sp, 88]
	fadd	d2, d2, d0
	ldr	d0, [sp, 24]
	fmul	d2, d2, d0
	adrp	x0, atanlo
	add	x0, x0, :lo12:atanlo
	ldrsw	x1, [sp, 40]
	ldr	d0, [x0, x1, lsl 3]
	fsub	d2, d2, d0
	ldr	d0, [sp, 24]
	fsub	d0, d2, d0
	fsub	d0, d1, d0
	str	d0, [sp, 64]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bge	.L48
	ldr	d0, [sp, 64]
	fneg	d0, d0
	b	.L38
.L48:
	ldr	d0, [sp, 64]
.L38:
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	libmin_atan, .-libmin_atan
	.section	.rodata
	.align	3
.LC0:
	.word	1413754136
	.word	1074340347
	.align	3
.LC1:
	.word	1413754136
	.word	1073291771
	.align	3
.LC2:
	.word	1413754136
	.word	1072243195
	.align	3
.LC3:
	.word	-2013235812
	.word	2117592124
	.align	3
.LC4:
	.word	1431655693
	.word	1070945621
	.align	3
.LC5:
	.word	-1845459969
	.word	1069697316
	.align	3
.LC6:
	.word	-984866706
	.word	1068975565
	.align	3
.LC7:
	.word	-1596965551
	.word	1068567910
	.align	3
.LC8:
	.word	611716587
	.word	1068071755
	.align	3
.LC9:
	.word	-484255215
	.word	1066446138
	.align	3
.LC10:
	.word	-1718031420
	.word	-1077306983
	.align	3
.LC11:
	.word	-31254927
	.word	-1078169146
	.align	3
.LC12:
	.word	-1351312787
	.word	-1078742798
	.align	3
.LC13:
	.word	1390345626
	.word	-1079124435
	.align	3
.LC14:
	.word	745172015
	.word	-1079856060
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
