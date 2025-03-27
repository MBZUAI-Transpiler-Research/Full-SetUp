	.arch armv8-a
	.file	"libmin_pow.c"
	.text
	.section	.rodata
	.align	3
	.type	bp, %object
	.size	bp, 16
bp:
	.word	0
	.word	1072693248
	.word	0
	.word	1073217536
	.align	3
	.type	dp_h, %object
	.size	dp_h, 16
dp_h:
	.word	0
	.word	0
	.word	1073741824
	.word	1071822851
	.align	3
	.type	dp_l, %object
	.size	dp_l, 16
dp_l:
	.word	0
	.word	0
	.word	1137692678
	.word	1045233131
	.align	3
	.type	two53, %object
	.size	two53, 8
two53:
	.word	0
	.word	1128267776
	.align	3
	.type	huge, %object
	.size	huge, 8
huge:
	.word	-2013235812
	.word	2117592124
	.align	3
	.type	tiny, %object
	.size	tiny, 8
tiny:
	.word	-1023872167
	.word	27618847
	.align	3
	.type	L1, %object
	.size	L1, 8
L1:
	.word	858993411
	.word	1071854387
	.align	3
	.type	L2, %object
	.size	L2, 8
L2:
	.word	-613438465
	.word	1071345078
	.align	3
	.type	L3, %object
	.size	L3, 8
L3:
	.word	1368335949
	.word	1070945621
	.align	3
	.type	L4, %object
	.size	L4, 8
L4:
	.word	-1457700607
	.word	1070691424
	.align	3
	.type	L5, %object
	.size	L5, 8
L5:
	.word	-1815487643
	.word	1070433866
	.align	3
	.type	L6, %object
	.size	L6, 8
L6:
	.word	1246056175
	.word	1070235176
	.align	3
	.type	P1, %object
	.size	P1, 8
P1:
	.word	1431655742
	.word	1069897045
	.align	3
	.type	P2, %object
	.size	P2, 8
P2:
	.word	381599123
	.word	-1083784852
	.align	3
	.type	P3, %object
	.size	P3, 8
P3:
	.word	-1356472788
	.word	1058100842
	.align	3
	.type	P4, %object
	.size	P4, 8
P4:
	.word	-976065551
	.word	-1094992575
	.align	3
	.type	P5, %object
	.size	P5, 8
P5:
	.word	1925096656
	.word	1046886249
	.align	3
	.type	lg2, %object
	.size	lg2, 8
lg2:
	.word	-17155601
	.word	1072049730
	.align	3
	.type	lg2_h, %object
	.size	lg2_h, 8
lg2_h:
	.word	0
	.word	1072049731
	.align	3
	.type	lg2_l, %object
	.size	lg2_l, 8
lg2_l:
	.word	212364345
	.word	-1105175455
	.align	3
	.type	ovt, %object
	.size	ovt, 8
ovt:
	.word	1697350398
	.word	1016534343
	.align	3
	.type	cp, %object
	.size	cp, 8
cp:
	.word	-600177667
	.word	1072613129
	.align	3
	.type	cp_h, %object
	.size	cp_h, 8
cp_h:
	.word	-536870912
	.word	1072613129
	.align	3
	.type	cp_l, %object
	.size	cp_l, 8
cp_l:
	.word	341508597
	.word	-1103220768
	.align	3
	.type	ivln2, %object
	.size	ivln2, 8
ivln2:
	.word	1697350398
	.word	1073157447
	.align	3
	.type	ivln2_h, %object
	.size	ivln2_h, 8
ivln2_h:
	.word	1610612736
	.word	1073157447
	.align	3
	.type	ivln2_l, %object
	.size	ivln2_l, 8
ivln2_l:
	.word	-128065724
	.word	1045736971
	.text
	.align	2
	.global	libmin_pow
	.type	libmin_pow, %function
libmin_pow:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -256]!
	.cfi_def_cfa_offset 256
	.cfi_offset 29, -256
	.cfi_offset 30, -248
	mov	x29, sp
	str	d0, [sp, 24]
	str	d1, [sp, 16]
	ldr	d0, [sp, 24]
	str	d0, [sp, 80]
	ldr	x0, [sp, 80]
	lsr	x0, x0, 32
	str	w0, [sp, 52]
	ldr	x0, [sp, 80]
	str	w0, [sp, 56]
	ldr	d0, [sp, 16]
	str	d0, [sp, 80]
	ldr	x0, [sp, 80]
	lsr	x0, x0, 32
	str	w0, [sp, 60]
	ldr	x0, [sp, 80]
	str	w0, [sp, 64]
	ldr	w0, [sp, 52]
	and	w0, w0, 2147483647
	str	w0, [sp, 48]
	ldr	w0, [sp, 60]
	and	w0, w0, 2147483647
	str	w0, [sp, 68]
	ldr	w1, [sp, 68]
	ldr	w0, [sp, 64]
	orr	w0, w1, w0
	cmp	w0, 0
	bne	.L2
	fmov	d0, 1.0e+0
	b	.L3
.L2:
	ldr	w1, [sp, 52]
	mov	w0, 1072693248
	cmp	w1, w0
	bne	.L4
	ldr	w0, [sp, 56]
	cmp	w0, 0
	bne	.L4
	fmov	d0, 1.0e+0
	b	.L3
.L4:
	ldr	w1, [sp, 48]
	mov	w0, 2146435072
	cmp	w1, w0
	bgt	.L5
	ldr	w1, [sp, 48]
	mov	w0, 2146435072
	cmp	w1, w0
	bne	.L6
	ldr	w0, [sp, 56]
	cmp	w0, 0
	bne	.L5
.L6:
	ldr	w1, [sp, 68]
	mov	w0, 2146435072
	cmp	w1, w0
	bgt	.L5
	ldr	w1, [sp, 68]
	mov	w0, 2146435072
	cmp	w1, w0
	bne	.L7
	ldr	w0, [sp, 64]
	cmp	w0, 0
	beq	.L7
.L5:
	ldr	d1, [sp, 24]
	ldr	d0, [sp, 16]
	fadd	d0, d1, d0
	b	.L3
.L7:
	str	wzr, [sp, 40]
	ldr	w0, [sp, 52]
	cmp	w0, 0
	bge	.L8
	ldr	w1, [sp, 68]
	mov	w0, 1128267775
	cmp	w1, w0
	ble	.L9
	mov	w0, 2
	str	w0, [sp, 40]
	b	.L8
.L9:
	ldr	w1, [sp, 68]
	mov	w0, 1072693247
	cmp	w1, w0
	ble	.L8
	ldr	w0, [sp, 68]
	asr	w0, w0, 20
	sub	w0, w0, #1023
	str	w0, [sp, 36]
	ldr	w0, [sp, 36]
	cmp	w0, 20
	ble	.L10
	mov	w1, 52
	ldr	w0, [sp, 36]
	sub	w0, w1, w0
	ldr	w1, [sp, 64]
	lsr	w0, w1, w0
	str	w0, [sp, 72]
	mov	w1, 52
	ldr	w0, [sp, 36]
	sub	w0, w1, w0
	ldr	w1, [sp, 72]
	lsl	w0, w1, w0
	mov	w1, w0
	ldr	w0, [sp, 64]
	cmp	w0, w1
	bne	.L8
	ldr	w0, [sp, 72]
	and	w0, w0, 1
	mov	w1, 2
	sub	w0, w1, w0
	str	w0, [sp, 40]
	b	.L8
.L10:
	ldr	w0, [sp, 64]
	cmp	w0, 0
	bne	.L8
	mov	w1, 20
	ldr	w0, [sp, 36]
	sub	w0, w1, w0
	ldr	w1, [sp, 68]
	asr	w0, w1, w0
	str	w0, [sp, 72]
	mov	w1, 20
	ldr	w0, [sp, 36]
	sub	w0, w1, w0
	ldr	w1, [sp, 72]
	lsl	w0, w1, w0
	ldr	w1, [sp, 68]
	cmp	w1, w0
	bne	.L8
	ldr	w0, [sp, 72]
	and	w0, w0, 1
	mov	w1, 2
	sub	w0, w1, w0
	str	w0, [sp, 40]
.L8:
	ldr	w0, [sp, 64]
	cmp	w0, 0
	bne	.L11
	ldr	w1, [sp, 68]
	mov	w0, 2146435072
	cmp	w1, w0
	bne	.L12
	ldr	w1, [sp, 48]
	mov	w0, -1072693248
	add	w0, w1, w0
	mov	w1, w0
	ldr	w0, [sp, 56]
	orr	w0, w1, w0
	cmp	w0, 0
	bne	.L13
	fmov	d0, 1.0e+0
	b	.L3
.L13:
	ldr	w1, [sp, 48]
	mov	w0, 1072693247
	cmp	w1, w0
	ble	.L14
	ldr	w0, [sp, 60]
	cmp	w0, 0
	blt	.L15
	ldr	d0, [sp, 16]
	b	.L3
.L15:
	movi	d0, #0
	b	.L3
.L14:
	ldr	w0, [sp, 60]
	cmp	w0, 0
	bge	.L17
	ldr	d0, [sp, 16]
	fneg	d0, d0
	b	.L3
.L17:
	movi	d0, #0
	b	.L3
.L12:
	ldr	w1, [sp, 68]
	mov	w0, 1072693248
	cmp	w1, w0
	bne	.L19
	ldr	w0, [sp, 60]
	cmp	w0, 0
	bge	.L20
	ldr	d0, [sp, 24]
	fmov	d1, 1.0e+0
	fdiv	d0, d1, d0
	b	.L3
.L20:
	ldr	d0, [sp, 24]
	b	.L3
.L19:
	ldr	w1, [sp, 60]
	mov	w0, 1073741824
	cmp	w1, w0
	bne	.L22
	ldr	d0, [sp, 24]
	fmul	d0, d0, d0
	b	.L3
.L22:
	ldr	w1, [sp, 60]
	mov	w0, 1071644672
	cmp	w1, w0
	bne	.L11
	ldr	w0, [sp, 52]
	cmp	w0, 0
	blt	.L11
	ldr	d0, [sp, 24]
	bl	libmin_sqrt
	b	.L3
.L11:
	ldr	d0, [sp, 24]
	bl	libmin_fabs
	str	d0, [sp, 96]
	ldr	w0, [sp, 56]
	cmp	w0, 0
	bne	.L23
	ldr	w1, [sp, 48]
	mov	w0, 2146435072
	cmp	w1, w0
	beq	.L24
	ldr	w0, [sp, 48]
	cmp	w0, 0
	beq	.L24
	ldr	w1, [sp, 48]
	mov	w0, 1072693248
	cmp	w1, w0
	bne	.L23
.L24:
	ldr	d0, [sp, 96]
	str	d0, [sp, 88]
	ldr	w0, [sp, 60]
	cmp	w0, 0
	bge	.L25
	ldr	d0, [sp, 88]
	fmov	d1, 1.0e+0
	fdiv	d0, d1, d0
	str	d0, [sp, 88]
.L25:
	ldr	w0, [sp, 52]
	cmp	w0, 0
	bge	.L26
	ldr	w1, [sp, 48]
	mov	w0, -1072693248
	add	w1, w1, w0
	ldr	w0, [sp, 40]
	orr	w0, w1, w0
	cmp	w0, 0
	bne	.L27
	ldr	d0, [sp, 88]
	fsub	d1, d0, d0
	ldr	d0, [sp, 88]
	fsub	d0, d0, d0
	fdiv	d0, d1, d0
	str	d0, [sp, 88]
	b	.L26
.L27:
	ldr	w0, [sp, 40]
	cmp	w0, 1
	bne	.L26
	ldr	d0, [sp, 88]
	fneg	d0, d0
	str	d0, [sp, 88]
.L26:
	ldr	d0, [sp, 88]
	b	.L3
.L23:
	fmov	d0, 1.0e+0
	str	d0, [sp, 128]
	ldr	w0, [sp, 52]
	cmp	w0, 0
	bge	.L28
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bne	.L29
	ldr	d0, [sp, 24]
	fsub	d1, d0, d0
	ldr	d0, [sp, 24]
	fsub	d0, d0, d0
	fdiv	d0, d1, d0
	b	.L3
.L29:
	ldr	w0, [sp, 40]
	cmp	w0, 1
	bne	.L28
	fmov	d0, -1.0e+0
	str	d0, [sp, 128]
.L28:
	ldr	w1, [sp, 68]
	mov	w0, 1105199104
	cmp	w1, w0
	ble	.L30
	ldr	w1, [sp, 68]
	mov	w0, 1139802112
	cmp	w1, w0
	ble	.L31
	ldr	w1, [sp, 48]
	mov	w0, 1072693247
	cmp	w1, w0
	bgt	.L32
	ldr	w0, [sp, 60]
	cmp	w0, 0
	bge	.L33
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	adrp	x0, .LC0
	ldr	d0, [x0, #:lo12:.LC0]
	fmul	d0, d1, d0
	b	.L3
.L33:
	adrp	x0, .LC1
	ldr	d1, [x0, #:lo12:.LC1]
	adrp	x0, .LC1
	ldr	d0, [x0, #:lo12:.LC1]
	fmul	d0, d1, d0
	b	.L3
.L32:
	ldr	w1, [sp, 48]
	mov	w0, 1072693247
	cmp	w1, w0
	ble	.L31
	ldr	w0, [sp, 60]
	cmp	w0, 0
	ble	.L35
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	adrp	x0, .LC0
	ldr	d0, [x0, #:lo12:.LC0]
	fmul	d0, d1, d0
	b	.L3
.L35:
	adrp	x0, .LC1
	ldr	d1, [x0, #:lo12:.LC1]
	adrp	x0, .LC1
	ldr	d0, [x0, #:lo12:.LC1]
	fmul	d0, d1, d0
	b	.L3
.L31:
	ldr	w1, [sp, 48]
	mov	w0, 1072693247
	cmp	w1, w0
	bge	.L37
	ldr	w0, [sp, 60]
	cmp	w0, 0
	bge	.L38
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	ldr	d0, [sp, 128]
	fmul	d0, d1, d0
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	fmul	d0, d0, d1
	b	.L3
.L38:
	adrp	x0, .LC1
	ldr	d1, [x0, #:lo12:.LC1]
	ldr	d0, [sp, 128]
	fmul	d0, d1, d0
	adrp	x0, .LC1
	ldr	d1, [x0, #:lo12:.LC1]
	fmul	d0, d0, d1
	b	.L3
.L37:
	ldr	w1, [sp, 48]
	mov	w0, 1072693248
	cmp	w1, w0
	ble	.L40
	ldr	w0, [sp, 60]
	cmp	w0, 0
	ble	.L41
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	ldr	d0, [sp, 128]
	fmul	d0, d1, d0
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	fmul	d0, d0, d1
	b	.L3
.L41:
	adrp	x0, .LC1
	ldr	d1, [x0, #:lo12:.LC1]
	ldr	d0, [sp, 128]
	fmul	d0, d1, d0
	adrp	x0, .LC1
	ldr	d1, [x0, #:lo12:.LC1]
	fmul	d0, d0, d1
	b	.L3
.L40:
	ldr	d1, [sp, 96]
	fmov	d0, 1.0e+0
	fsub	d0, d1, d0
	str	d0, [sp, 232]
	ldr	d0, [sp, 232]
	fmul	d1, d0, d0
	ldr	d2, [sp, 232]
	fmov	d0, 2.5e-1
	fmul	d0, d2, d0
	mov	x0, 6148914691236517205
	movk	x0, 0x3fd5, lsl 48
	fmov	d2, x0
	fsub	d2, d2, d0
	ldr	d0, [sp, 232]
	fmul	d0, d2, d0
	fmov	d2, 5.0e-1
	fsub	d0, d2, d0
	fmul	d0, d1, d0
	str	d0, [sp, 240]
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	ldr	d0, [sp, 232]
	fmul	d0, d0, d1
	str	d0, [sp, 136]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	ldr	d0, [sp, 232]
	fmul	d1, d1, d0
	adrp	x0, .LC4
	ldr	d2, [x0, #:lo12:.LC4]
	ldr	d0, [sp, 240]
	fmul	d0, d2, d0
	fsub	d0, d1, d0
	str	d0, [sp, 144]
	ldr	d1, [sp, 136]
	ldr	d0, [sp, 144]
	fadd	d0, d1, d0
	str	d0, [sp, 112]
	ldr	d0, [sp, 112]
	str	d0, [sp, 80]
	ldr	x0, [sp, 80]
	and	x0, x0, -4294967296
	str	x0, [sp, 80]
	ldr	x0, [sp, 80]
	str	x0, [sp, 80]
	ldr	d0, [sp, 80]
	str	d0, [sp, 112]
	ldr	d1, [sp, 112]
	ldr	d0, [sp, 136]
	fsub	d0, d1, d0
	ldr	d1, [sp, 144]
	fsub	d0, d1, d0
	str	d0, [sp, 120]
	b	.L43
.L30:
	str	wzr, [sp, 44]
	ldr	w1, [sp, 48]
	mov	w0, 1048575
	cmp	w1, w0
	bgt	.L44
	mov	x0, 4845873199050653696
	fmov	d1, x0
	ldr	d0, [sp, 96]
	fmul	d0, d0, d1
	str	d0, [sp, 96]
	ldr	w0, [sp, 44]
	sub	w0, w0, #53
	str	w0, [sp, 44]
	ldr	d0, [sp, 96]
	str	d0, [sp, 80]
	ldr	x0, [sp, 80]
	lsr	x0, x0, 32
	str	w0, [sp, 48]
.L44:
	ldr	w0, [sp, 48]
	asr	w0, w0, 20
	sub	w0, w0, #1023
	ldr	w1, [sp, 44]
	add	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w0, [sp, 48]
	and	w0, w0, 1048575
	str	w0, [sp, 72]
	ldr	w0, [sp, 72]
	orr	w0, w0, 1072693248
	str	w0, [sp, 48]
	ldr	w1, [sp, 72]
	mov	w0, 39054
	movk	w0, 0x3, lsl 16
	cmp	w1, w0
	bgt	.L45
	str	wzr, [sp, 36]
	b	.L46
.L45:
	ldr	w1, [sp, 72]
	mov	w0, 46713
	movk	w0, 0xb, lsl 16
	cmp	w1, w0
	bgt	.L47
	mov	w0, 1
	str	w0, [sp, 36]
	b	.L46
.L47:
	str	wzr, [sp, 36]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 48]
	sub	w0, w0, #1048576
	str	w0, [sp, 48]
.L46:
	ldr	d0, [sp, 96]
	str	d0, [sp, 80]
	ldr	x0, [sp, 80]
	and	x0, x0, 4294967295
	str	x0, [sp, 80]
	ldr	x1, [sp, 80]
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 32
	orr	x0, x1, x0
	str	x0, [sp, 80]
	ldr	d0, [sp, 80]
	str	d0, [sp, 96]
	adrp	x0, bp
	add	x0, x0, :lo12:bp
	ldrsw	x1, [sp, 36]
	ldr	d0, [x0, x1, lsl 3]
	ldr	d1, [sp, 96]
	fsub	d0, d1, d0
	str	d0, [sp, 136]
	adrp	x0, bp
	add	x0, x0, :lo12:bp
	ldrsw	x1, [sp, 36]
	ldr	d1, [x0, x1, lsl 3]
	ldr	d0, [sp, 96]
	fadd	d0, d1, d0
	fmov	d1, 1.0e+0
	fdiv	d0, d1, d0
	str	d0, [sp, 144]
	ldr	d1, [sp, 136]
	ldr	d0, [sp, 144]
	fmul	d0, d1, d0
	str	d0, [sp, 152]
	ldr	d0, [sp, 152]
	str	d0, [sp, 160]
	ldr	d0, [sp, 160]
	str	d0, [sp, 80]
	ldr	x0, [sp, 80]
	and	x0, x0, -4294967296
	str	x0, [sp, 80]
	ldr	x0, [sp, 80]
	str	x0, [sp, 80]
	ldr	d0, [sp, 80]
	str	d0, [sp, 160]
	str	xzr, [sp, 168]
	ldr	d0, [sp, 168]
	str	d0, [sp, 80]
	ldr	x0, [sp, 80]
	and	x0, x0, 4294967295
	str	x0, [sp, 80]
	ldr	x1, [sp, 80]
	ldr	w0, [sp, 48]
	asr	w0, w0, 1
	orr	w0, w0, 536870912
	add	w2, w0, 524288
	ldr	w0, [sp, 36]
	lsl	w0, w0, 18
	add	w0, w2, w0
	sxtw	x0, w0
	lsl	x0, x0, 32
	orr	x0, x1, x0
	str	x0, [sp, 80]
	ldr	d0, [sp, 80]
	str	d0, [sp, 168]
	adrp	x0, bp
	add	x0, x0, :lo12:bp
	ldrsw	x1, [sp, 36]
	ldr	d0, [x0, x1, lsl 3]
	ldr	d1, [sp, 168]
	fsub	d0, d1, d0
	ldr	d1, [sp, 96]
	fsub	d0, d1, d0
	str	d0, [sp, 176]
	ldr	d1, [sp, 160]
	ldr	d0, [sp, 168]
	fmul	d0, d1, d0
	ldr	d1, [sp, 136]
	fsub	d1, d1, d0
	ldr	d2, [sp, 160]
	ldr	d0, [sp, 176]
	fmul	d0, d2, d0
	fsub	d0, d1, d0
	ldr	d1, [sp, 144]
	fmul	d0, d1, d0
	str	d0, [sp, 184]
	ldr	d0, [sp, 152]
	fmul	d0, d0, d0
	str	d0, [sp, 192]
	ldr	d0, [sp, 192]
	fmul	d1, d0, d0
	adrp	x0, .LC5
	ldr	d2, [x0, #:lo12:.LC5]
	ldr	d0, [sp, 192]
	fmul	d0, d2, d0
	adrp	x0, .LC6
	ldr	d2, [x0, #:lo12:.LC6]
	fadd	d2, d0, d2
	ldr	d0, [sp, 192]
	fmul	d0, d2, d0
	adrp	x0, .LC7
	ldr	d2, [x0, #:lo12:.LC7]
	fadd	d2, d0, d2
	ldr	d0, [sp, 192]
	fmul	d0, d2, d0
	adrp	x0, .LC8
	ldr	d2, [x0, #:lo12:.LC8]
	fadd	d2, d0, d2
	ldr	d0, [sp, 192]
	fmul	d0, d2, d0
	adrp	x0, .LC9
	ldr	d2, [x0, #:lo12:.LC9]
	fadd	d2, d0, d2
	ldr	d0, [sp, 192]
	fmul	d0, d2, d0
	adrp	x0, .LC10
	ldr	d2, [x0, #:lo12:.LC10]
	fadd	d0, d0, d2
	fmul	d0, d1, d0
	str	d0, [sp, 200]
	ldr	d1, [sp, 160]
	ldr	d0, [sp, 152]
	fadd	d1, d1, d0
	ldr	d0, [sp, 184]
	fmul	d0, d1, d0
	ldr	d1, [sp, 200]
	fadd	d0, d1, d0
	str	d0, [sp, 200]
	ldr	d0, [sp, 160]
	fmul	d0, d0, d0
	str	d0, [sp, 192]
	ldr	d1, [sp, 192]
	fmov	d0, 3.0e+0
	fadd	d0, d1, d0
	ldr	d1, [sp, 200]
	fadd	d0, d1, d0
	str	d0, [sp, 168]
	ldr	d0, [sp, 168]
	str	d0, [sp, 80]
	ldr	x0, [sp, 80]
	and	x0, x0, -4294967296
	str	x0, [sp, 80]
	ldr	x0, [sp, 80]
	str	x0, [sp, 80]
	ldr	d0, [sp, 80]
	str	d0, [sp, 168]
	ldr	d1, [sp, 168]
	fmov	d0, 3.0e+0
	fsub	d1, d1, d0
	ldr	d0, [sp, 192]
	fsub	d0, d1, d0
	ldr	d1, [sp, 200]
	fsub	d0, d1, d0
	str	d0, [sp, 176]
	ldr	d1, [sp, 160]
	ldr	d0, [sp, 168]
	fmul	d0, d1, d0
	str	d0, [sp, 136]
	ldr	d1, [sp, 184]
	ldr	d0, [sp, 168]
	fmul	d1, d1, d0
	ldr	d2, [sp, 176]
	ldr	d0, [sp, 152]
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	str	d0, [sp, 144]
	ldr	d1, [sp, 136]
	ldr	d0, [sp, 144]
	fadd	d0, d1, d0
	str	d0, [sp, 104]
	ldr	d0, [sp, 104]
	str	d0, [sp, 80]
	ldr	x0, [sp, 80]
	and	x0, x0, -4294967296
	str	x0, [sp, 80]
	ldr	x0, [sp, 80]
	str	x0, [sp, 80]
	ldr	d0, [sp, 80]
	str	d0, [sp, 104]
	ldr	d1, [sp, 104]
	ldr	d0, [sp, 136]
	fsub	d0, d1, d0
	ldr	d1, [sp, 144]
	fsub	d0, d1, d0
	str	d0, [sp, 208]
	adrp	x0, .LC11
	ldr	d1, [x0, #:lo12:.LC11]
	ldr	d0, [sp, 104]
	fmul	d0, d0, d1
	str	d0, [sp, 216]
	adrp	x0, .LC12
	ldr	d1, [x0, #:lo12:.LC12]
	ldr	d0, [sp, 104]
	fmul	d1, d1, d0
	adrp	x0, .LC13
	ldr	d2, [x0, #:lo12:.LC13]
	ldr	d0, [sp, 208]
	fmul	d0, d2, d0
	fadd	d1, d1, d0
	adrp	x0, dp_l
	add	x0, x0, :lo12:dp_l
	ldrsw	x1, [sp, 36]
	ldr	d0, [x0, x1, lsl 3]
	fadd	d0, d1, d0
	str	d0, [sp, 224]
	ldr	w0, [sp, 44]
	scvtf	d0, w0
	str	d0, [sp, 232]
	ldr	d1, [sp, 216]
	ldr	d0, [sp, 224]
	fadd	d1, d1, d0
	adrp	x0, dp_h
	add	x0, x0, :lo12:dp_h
	ldrsw	x1, [sp, 36]
	ldr	d0, [x0, x1, lsl 3]
	fadd	d0, d1, d0
	ldr	d1, [sp, 232]
	fadd	d0, d1, d0
	str	d0, [sp, 112]
	ldr	d0, [sp, 112]
	str	d0, [sp, 80]
	ldr	x0, [sp, 80]
	and	x0, x0, -4294967296
	str	x0, [sp, 80]
	ldr	x0, [sp, 80]
	str	x0, [sp, 80]
	ldr	d0, [sp, 80]
	str	d0, [sp, 112]
	ldr	d1, [sp, 112]
	ldr	d0, [sp, 232]
	fsub	d1, d1, d0
	adrp	x0, dp_h
	add	x0, x0, :lo12:dp_h
	ldrsw	x1, [sp, 36]
	ldr	d0, [x0, x1, lsl 3]
	fsub	d1, d1, d0
	ldr	d0, [sp, 216]
	fsub	d0, d1, d0
	ldr	d1, [sp, 224]
	fsub	d0, d1, d0
	str	d0, [sp, 120]
.L43:
	ldr	d0, [sp, 16]
	str	d0, [sp, 248]
	ldr	d0, [sp, 248]
	str	d0, [sp, 80]
	ldr	x0, [sp, 80]
	and	x0, x0, -4294967296
	str	x0, [sp, 80]
	ldr	x0, [sp, 80]
	str	x0, [sp, 80]
	ldr	d0, [sp, 80]
	str	d0, [sp, 248]
	ldr	d1, [sp, 16]
	ldr	d0, [sp, 248]
	fsub	d1, d1, d0
	ldr	d0, [sp, 112]
	fmul	d1, d1, d0
	ldr	d2, [sp, 16]
	ldr	d0, [sp, 120]
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	str	d0, [sp, 208]
	ldr	d1, [sp, 248]
	ldr	d0, [sp, 112]
	fmul	d0, d1, d0
	str	d0, [sp, 104]
	ldr	d1, [sp, 208]
	ldr	d0, [sp, 104]
	fadd	d0, d1, d0
	str	d0, [sp, 88]
	ldr	d0, [sp, 88]
	str	d0, [sp, 80]
	ldr	x0, [sp, 80]
	lsr	x0, x0, 32
	str	w0, [sp, 72]
	ldr	x0, [sp, 80]
	str	w0, [sp, 76]
	ldr	w1, [sp, 72]
	mov	w0, 1083179007
	cmp	w1, w0
	ble	.L48
	ldr	w1, [sp, 72]
	mov	w0, -1083179008
	add	w1, w1, w0
	ldr	w0, [sp, 76]
	orr	w0, w1, w0
	cmp	w0, 0
	beq	.L49
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	ldr	d0, [sp, 128]
	fmul	d0, d1, d0
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	fmul	d0, d0, d1
	b	.L3
.L49:
	adrp	x0, .LC14
	ldr	d1, [x0, #:lo12:.LC14]
	ldr	d0, [sp, 208]
	fadd	d1, d1, d0
	ldr	d2, [sp, 88]
	ldr	d0, [sp, 104]
	fsub	d0, d2, d0
	fcmpe	d1, d0
	bgt	.L58
	b	.L50
.L58:
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	ldr	d0, [sp, 128]
	fmul	d0, d1, d0
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	fmul	d0, d0, d1
	b	.L3
.L48:
	ldr	w0, [sp, 72]
	and	w1, w0, 2147483647
	mov	w0, 52223
	movk	w0, 0x4090, lsl 16
	cmp	w1, w0
	ble	.L50
	ldr	w1, [sp, 72]
	mov	w0, 13312
	movk	w0, 0x3f6f, lsl 16
	add	w1, w1, w0
	ldr	w0, [sp, 76]
	orr	w0, w1, w0
	cmp	w0, 0
	beq	.L52
	adrp	x0, .LC1
	ldr	d1, [x0, #:lo12:.LC1]
	ldr	d0, [sp, 128]
	fmul	d0, d1, d0
	adrp	x0, .LC1
	ldr	d1, [x0, #:lo12:.LC1]
	fmul	d0, d0, d1
	b	.L3
.L52:
	ldr	d1, [sp, 88]
	ldr	d0, [sp, 104]
	fsub	d0, d1, d0
	ldr	d1, [sp, 208]
	fcmpe	d1, d0
	bls	.L59
	b	.L50
.L59:
	adrp	x0, .LC1
	ldr	d1, [x0, #:lo12:.LC1]
	ldr	d0, [sp, 128]
	fmul	d0, d1, d0
	adrp	x0, .LC1
	ldr	d1, [x0, #:lo12:.LC1]
	fmul	d0, d0, d1
	b	.L3
.L50:
	ldr	w0, [sp, 72]
	and	w0, w0, 2147483647
	str	w0, [sp, 76]
	ldr	w0, [sp, 76]
	asr	w0, w0, 20
	sub	w0, w0, #1023
	str	w0, [sp, 36]
	str	wzr, [sp, 44]
	ldr	w1, [sp, 76]
	mov	w0, 1071644672
	cmp	w1, w0
	ble	.L54
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	mov	w1, 1048576
	asr	w0, w1, w0
	ldr	w1, [sp, 72]
	add	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	asr	w0, w0, 20
	and	w0, w0, 2047
	sub	w0, w0, #1023
	str	w0, [sp, 36]
	str	xzr, [sp, 232]
	ldr	d0, [sp, 232]
	str	d0, [sp, 80]
	ldr	x0, [sp, 80]
	and	x0, x0, 4294967295
	str	x0, [sp, 80]
	ldr	x1, [sp, 80]
	ldr	w0, [sp, 36]
	mov	w2, -1048576
	asr	w2, w2, w0
	ldr	w0, [sp, 44]
	and	w0, w2, w0
	sxtw	x0, w0
	lsl	x0, x0, 32
	orr	x0, x1, x0
	str	x0, [sp, 80]
	ldr	d0, [sp, 80]
	str	d0, [sp, 232]
	ldr	w0, [sp, 44]
	and	w0, w0, 1048575
	orr	w1, w0, 1048576
	mov	w2, 20
	ldr	w0, [sp, 36]
	sub	w0, w2, w0
	asr	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w0, [sp, 72]
	cmp	w0, 0
	bge	.L55
	ldr	w0, [sp, 44]
	neg	w0, w0
	str	w0, [sp, 44]
.L55:
	ldr	d1, [sp, 104]
	ldr	d0, [sp, 232]
	fsub	d0, d1, d0
	str	d0, [sp, 104]
.L54:
	ldr	d1, [sp, 208]
	ldr	d0, [sp, 104]
	fadd	d0, d1, d0
	str	d0, [sp, 232]
	ldr	d0, [sp, 232]
	str	d0, [sp, 80]
	ldr	x0, [sp, 80]
	and	x0, x0, -4294967296
	str	x0, [sp, 80]
	ldr	x0, [sp, 80]
	str	x0, [sp, 80]
	ldr	d0, [sp, 80]
	str	d0, [sp, 232]
	mov	x0, 50865297686528
	movk	x0, 0x3fe6, lsl 48
	fmov	d1, x0
	ldr	d0, [sp, 232]
	fmul	d0, d0, d1
	str	d0, [sp, 136]
	ldr	d1, [sp, 232]
	ldr	d0, [sp, 104]
	fsub	d0, d1, d0
	ldr	d1, [sp, 208]
	fsub	d0, d1, d0
	adrp	x0, .LC15
	ldr	d1, [x0, #:lo12:.LC15]
	fmul	d1, d0, d1
	adrp	x0, .LC16
	ldr	d2, [x0, #:lo12:.LC16]
	ldr	d0, [sp, 232]
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	str	d0, [sp, 144]
	ldr	d1, [sp, 136]
	ldr	d0, [sp, 144]
	fadd	d0, d1, d0
	str	d0, [sp, 88]
	ldr	d1, [sp, 88]
	ldr	d0, [sp, 136]
	fsub	d0, d1, d0
	ldr	d1, [sp, 144]
	fsub	d0, d1, d0
	str	d0, [sp, 240]
	ldr	d0, [sp, 88]
	fmul	d0, d0, d0
	str	d0, [sp, 232]
	adrp	x0, .LC17
	ldr	d1, [x0, #:lo12:.LC17]
	ldr	d0, [sp, 232]
	fmul	d0, d1, d0
	adrp	x0, .LC18
	ldr	d1, [x0, #:lo12:.LC18]
	fadd	d1, d0, d1
	ldr	d0, [sp, 232]
	fmul	d0, d1, d0
	adrp	x0, .LC19
	ldr	d1, [x0, #:lo12:.LC19]
	fadd	d1, d0, d1
	ldr	d0, [sp, 232]
	fmul	d0, d1, d0
	adrp	x0, .LC20
	ldr	d1, [x0, #:lo12:.LC20]
	fadd	d1, d0, d1
	ldr	d0, [sp, 232]
	fmul	d0, d1, d0
	adrp	x0, .LC21
	ldr	d1, [x0, #:lo12:.LC21]
	fadd	d1, d0, d1
	ldr	d0, [sp, 232]
	fmul	d0, d1, d0
	ldr	d1, [sp, 88]
	fsub	d0, d1, d0
	str	d0, [sp, 112]
	ldr	d1, [sp, 88]
	ldr	d0, [sp, 112]
	fmul	d1, d1, d0
	ldr	d2, [sp, 112]
	fmov	d0, 2.0e+0
	fsub	d0, d2, d0
	fdiv	d1, d1, d0
	ldr	d2, [sp, 88]
	ldr	d0, [sp, 240]
	fmul	d2, d2, d0
	ldr	d0, [sp, 240]
	fadd	d0, d2, d0
	fsub	d0, d1, d0
	str	d0, [sp, 200]
	ldr	d1, [sp, 200]
	ldr	d0, [sp, 88]
	fsub	d0, d1, d0
	fmov	d1, 1.0e+0
	fsub	d0, d1, d0
	str	d0, [sp, 88]
	ldr	d0, [sp, 88]
	str	d0, [sp, 80]
	ldr	x0, [sp, 80]
	lsr	x0, x0, 32
	str	w0, [sp, 72]
	ldr	w0, [sp, 44]
	lsl	w0, w0, 20
	ldr	w1, [sp, 72]
	add	w0, w1, w0
	str	w0, [sp, 72]
	ldr	w0, [sp, 72]
	asr	w0, w0, 20
	cmp	w0, 0
	bgt	.L56
	ldr	w0, [sp, 44]
	ldr	d0, [sp, 88]
	bl	libmin_scalbn
	str	d0, [sp, 88]
	b	.L57
.L56:
	ldr	d0, [sp, 88]
	str	d0, [sp, 80]
	ldr	x0, [sp, 80]
	and	x0, x0, 4294967295
	str	x0, [sp, 80]
	ldr	x1, [sp, 80]
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 32
	orr	x0, x1, x0
	str	x0, [sp, 80]
	ldr	d0, [sp, 80]
	str	d0, [sp, 88]
.L57:
	ldr	d1, [sp, 128]
	ldr	d0, [sp, 88]
	fmul	d0, d1, d0
.L3:
	ldp	x29, x30, [sp], 256
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_pow, .-libmin_pow
	.section	.rodata
	.align	3
.LC0:
	.word	-2013235812
	.word	2117592124
	.align	3
.LC1:
	.word	-1023872167
	.word	27618847
	.align	3
.LC2:
	.word	1610612736
	.word	1073157447
	.align	3
.LC3:
	.word	-128065724
	.word	1045736971
	.align	3
.LC4:
	.word	1697350398
	.word	1073157447
	.align	3
.LC5:
	.word	1246056175
	.word	1070235176
	.align	3
.LC6:
	.word	-1815487643
	.word	1070433866
	.align	3
.LC7:
	.word	-1457700607
	.word	1070691424
	.align	3
.LC8:
	.word	1368335949
	.word	1070945621
	.align	3
.LC9:
	.word	-613438465
	.word	1071345078
	.align	3
.LC10:
	.word	858993411
	.word	1071854387
	.align	3
.LC11:
	.word	-536870912
	.word	1072613129
	.align	3
.LC12:
	.word	341508597
	.word	-1103220768
	.align	3
.LC13:
	.word	-600177667
	.word	1072613129
	.align	3
.LC14:
	.word	1697350398
	.word	1016534343
	.align	3
.LC15:
	.word	-17155601
	.word	1072049730
	.align	3
.LC16:
	.word	212364345
	.word	-1105175455
	.align	3
.LC17:
	.word	1925096656
	.word	1046886249
	.align	3
.LC18:
	.word	-976065551
	.word	-1094992575
	.align	3
.LC19:
	.word	-1356472788
	.word	1058100842
	.align	3
.LC20:
	.word	381599123
	.word	-1083784852
	.align	3
.LC21:
	.word	1431655742
	.word	1069897045
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
