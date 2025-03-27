	.arch armv8-a
	.file	"libmin_printf.c"
	.text
	.global	__extenddftf2
	.align	2
	.type	dopr, %function
dopr:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #176
	.cfi_def_cfa_offset 176
	stp	x29, x30, [sp, 144]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 144
	str	x19, [sp, 160]
	.cfi_offset 19, -16
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	mov	x19, x3
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 136]
	mov	x1, 0
	str	wzr, [sp, 44]
	str	wzr, [sp, 36]
	ldr	w0, [sp, 36]
	str	w0, [sp, 52]
	ldr	w0, [sp, 52]
	str	w0, [sp, 48]
	ldrsw	x0, [sp, 48]
	str	x0, [sp, 56]
	mov	w0, -1
	str	w0, [sp, 40]
	ldr	x0, [sp, 8]
	add	x1, x0, 1
	str	x1, [sp, 8]
	ldrb	w0, [x0]
	strb	w0, [sp, 35]
	b	.L2
.L208:
	ldrb	w0, [sp, 35]
	cmp	w0, 0
	bne	.L3
	mov	w0, 7
	str	w0, [sp, 44]
.L3:
	ldr	w0, [sp, 44]
	cmp	w0, 7
	beq	.L213
	ldr	w0, [sp, 44]
	cmp	w0, 7
	bgt	.L214
	ldr	w0, [sp, 44]
	cmp	w0, 6
	beq	.L6
	ldr	w0, [sp, 44]
	cmp	w0, 6
	bgt	.L214
	ldr	w0, [sp, 44]
	cmp	w0, 5
	beq	.L7
	ldr	w0, [sp, 44]
	cmp	w0, 5
	bgt	.L214
	ldr	w0, [sp, 44]
	cmp	w0, 4
	beq	.L8
	ldr	w0, [sp, 44]
	cmp	w0, 4
	bgt	.L214
	ldr	w0, [sp, 44]
	cmp	w0, 3
	beq	.L9
	ldr	w0, [sp, 44]
	cmp	w0, 3
	bgt	.L214
	ldr	w0, [sp, 44]
	cmp	w0, 2
	beq	.L10
	ldr	w0, [sp, 44]
	cmp	w0, 2
	bgt	.L214
	ldr	w0, [sp, 44]
	cmp	w0, 0
	beq	.L11
	ldr	w0, [sp, 44]
	cmp	w0, 1
	beq	.L12
	b	.L214
.L11:
	ldrb	w0, [sp, 35]
	cmp	w0, 37
	bne	.L13
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L14
.L13:
	add	x0, sp, 56
	ldrb	w3, [sp, 35]
	ldr	x2, [sp, 16]
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	dopr_outch
.L14:
	ldr	x0, [sp, 8]
	add	x1, x0, 1
	str	x1, [sp, 8]
	ldrb	w0, [x0]
	strb	w0, [sp, 35]
	b	.L2
.L12:
	ldrb	w0, [sp, 35]
	cmp	w0, 48
	beq	.L16
	cmp	w0, 48
	bgt	.L17
	cmp	w0, 45
	beq	.L18
	cmp	w0, 45
	bgt	.L17
	cmp	w0, 43
	beq	.L19
	cmp	w0, 43
	bgt	.L17
	cmp	w0, 32
	beq	.L20
	cmp	w0, 35
	beq	.L21
	b	.L17
.L18:
	ldr	w0, [sp, 48]
	orr	w0, w0, 1
	str	w0, [sp, 48]
	ldr	x0, [sp, 8]
	add	x1, x0, 1
	str	x1, [sp, 8]
	ldrb	w0, [x0]
	strb	w0, [sp, 35]
	b	.L22
.L19:
	ldr	w0, [sp, 48]
	orr	w0, w0, 2
	str	w0, [sp, 48]
	ldr	x0, [sp, 8]
	add	x1, x0, 1
	str	x1, [sp, 8]
	ldrb	w0, [x0]
	strb	w0, [sp, 35]
	b	.L22
.L20:
	ldr	w0, [sp, 48]
	orr	w0, w0, 4
	str	w0, [sp, 48]
	ldr	x0, [sp, 8]
	add	x1, x0, 1
	str	x1, [sp, 8]
	ldrb	w0, [x0]
	strb	w0, [sp, 35]
	b	.L22
.L21:
	ldr	w0, [sp, 48]
	orr	w0, w0, 8
	str	w0, [sp, 48]
	ldr	x0, [sp, 8]
	add	x1, x0, 1
	str	x1, [sp, 8]
	ldrb	w0, [x0]
	strb	w0, [sp, 35]
	b	.L22
.L16:
	ldr	w0, [sp, 48]
	orr	w0, w0, 16
	str	w0, [sp, 48]
	ldr	x0, [sp, 8]
	add	x1, x0, 1
	str	x1, [sp, 8]
	ldrb	w0, [x0]
	strb	w0, [sp, 35]
	b	.L22
.L17:
	mov	w0, 2
	str	w0, [sp, 44]
	nop
.L22:
	b	.L2
.L10:
	adrp	x0, :got:_pctype
	ldr	x0, [x0, :got_lo12:_pctype]
	ldr	x1, [x0]
	ldrb	w0, [sp, 35]
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 4
	cmp	w0, 0
	beq	.L23
	ldr	w1, [sp, 36]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w1, w0
	ldrb	w0, [sp, 35]
	sub	w0, w0, #48
	add	w0, w1, w0
	str	w0, [sp, 36]
	ldr	x0, [sp, 8]
	add	x1, x0, 1
	str	x1, [sp, 8]
	ldrb	w0, [x0]
	strb	w0, [sp, 35]
	b	.L2
.L23:
	ldrb	w0, [sp, 35]
	cmp	w0, 42
	bne	.L25
	ldr	w1, [x19, 24]
	ldr	x0, [x19]
	cmp	w1, 0
	blt	.L26
	add	x1, x0, 11
	and	x1, x1, -8
	str	x1, [x19]
	b	.L27
.L26:
	add	w2, w1, 8
	str	w2, [x19, 24]
	ldr	w2, [x19, 24]
	cmp	w2, 0
	ble	.L28
	add	x1, x0, 11
	and	x1, x1, -8
	str	x1, [x19]
	b	.L27
.L28:
	ldr	x2, [x19, 8]
	sxtw	x0, w1
	add	x0, x2, x0
.L27:
	ldr	w0, [x0]
	str	w0, [sp, 36]
	ldr	x0, [sp, 8]
	add	x1, x0, 1
	str	x1, [sp, 8]
	ldrb	w0, [x0]
	strb	w0, [sp, 35]
	mov	w0, 3
	str	w0, [sp, 44]
	b	.L2
.L25:
	mov	w0, 3
	str	w0, [sp, 44]
	b	.L2
.L9:
	ldrb	w0, [sp, 35]
	cmp	w0, 46
	bne	.L30
	mov	w0, 4
	str	w0, [sp, 44]
	ldr	x0, [sp, 8]
	add	x1, x0, 1
	str	x1, [sp, 8]
	ldrb	w0, [x0]
	strb	w0, [sp, 35]
	b	.L2
.L30:
	mov	w0, 5
	str	w0, [sp, 44]
	b	.L2
.L8:
	adrp	x0, :got:_pctype
	ldr	x0, [x0, :got_lo12:_pctype]
	ldr	x1, [x0]
	ldrb	w0, [sp, 35]
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 4
	cmp	w0, 0
	beq	.L32
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bge	.L33
	str	wzr, [sp, 40]
.L33:
	ldr	w1, [sp, 40]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w1, w0
	ldrb	w0, [sp, 35]
	sub	w0, w0, #48
	add	w0, w1, w0
	str	w0, [sp, 40]
	ldr	x0, [sp, 8]
	add	x1, x0, 1
	str	x1, [sp, 8]
	ldrb	w0, [x0]
	strb	w0, [sp, 35]
	b	.L2
.L32:
	ldrb	w0, [sp, 35]
	cmp	w0, 42
	bne	.L35
	ldr	w1, [x19, 24]
	ldr	x0, [x19]
	cmp	w1, 0
	blt	.L36
	add	x1, x0, 11
	and	x1, x1, -8
	str	x1, [x19]
	b	.L37
.L36:
	add	w2, w1, 8
	str	w2, [x19, 24]
	ldr	w2, [x19, 24]
	cmp	w2, 0
	ble	.L38
	add	x1, x0, 11
	and	x1, x1, -8
	str	x1, [x19]
	b	.L37
.L38:
	ldr	x2, [x19, 8]
	sxtw	x0, w1
	add	x0, x2, x0
.L37:
	ldr	w0, [x0]
	str	w0, [sp, 40]
	ldr	x0, [sp, 8]
	add	x1, x0, 1
	str	x1, [sp, 8]
	ldrb	w0, [x0]
	strb	w0, [sp, 35]
	mov	w0, 5
	str	w0, [sp, 44]
	b	.L2
.L35:
	mov	w0, 5
	str	w0, [sp, 44]
	b	.L2
.L7:
	ldrb	w0, [sp, 35]
	cmp	w0, 108
	beq	.L40
	cmp	w0, 108
	bgt	.L215
	cmp	w0, 76
	beq	.L42
	cmp	w0, 104
	bne	.L215
	mov	w0, 1
	str	w0, [sp, 52]
	ldr	x0, [sp, 8]
	add	x1, x0, 1
	str	x1, [sp, 8]
	ldrb	w0, [x0]
	strb	w0, [sp, 35]
	b	.L43
.L40:
	mov	w0, 2
	str	w0, [sp, 52]
	ldr	x0, [sp, 8]
	add	x1, x0, 1
	str	x1, [sp, 8]
	ldrb	w0, [x0]
	strb	w0, [sp, 35]
	ldrb	w0, [sp, 35]
	cmp	w0, 108
	bne	.L216
	mov	w0, 4
	str	w0, [sp, 52]
	ldr	x0, [sp, 8]
	add	x1, x0, 1
	str	x1, [sp, 8]
	ldrb	w0, [x0]
	strb	w0, [sp, 35]
	b	.L216
.L42:
	mov	w0, 3
	str	w0, [sp, 52]
	ldr	x0, [sp, 8]
	add	x1, x0, 1
	str	x1, [sp, 8]
	ldrb	w0, [x0]
	strb	w0, [sp, 35]
	b	.L43
.L215:
	nop
	b	.L43
.L216:
	nop
.L43:
	mov	w0, 6
	str	w0, [sp, 44]
	b	.L2
.L6:
	ldrb	w0, [sp, 35]
	sub	w0, w0, #37
	cmp	w0, 83
	bhi	.L217
	adrp	x1, .L47
	add	x1, x1, :lo12:.L47
	ldr	w0, [x1,w0,uxtw #2]
	adr	x1, .Lrtx47
	add	x0, x1, w0, sxtw #2
	br	x0
.Lrtx47:
	.section	.rodata
	.align	0
	.align	2
.L47:
	.word	(.L62 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L61 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L60 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L59 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L58 - .Lrtx47) / 4
	.word	(.L54 - .Lrtx47) / 4
	.word	(.L57 - .Lrtx47) / 4
	.word	(.L56 - .Lrtx47) / 4
	.word	(.L55 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L54 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L53 - .Lrtx47) / 4
	.word	(.L52 - .Lrtx47) / 4
	.word	(.L51 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L50 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L49 - .Lrtx47) / 4
	.word	(.L217 - .Lrtx47) / 4
	.word	(.L48 - .Lrtx47) / 4
	.word	(.L46 - .Lrtx47) / 4
	.text
.L54:
	ldr	w0, [sp, 52]
	cmp	w0, 1
	bne	.L63
	ldr	w1, [x19, 24]
	ldr	x0, [x19]
	cmp	w1, 0
	blt	.L64
	add	x1, x0, 11
	and	x1, x1, -8
	str	x1, [x19]
	b	.L65
.L64:
	add	w2, w1, 8
	str	w2, [x19, 24]
	ldr	w2, [x19, 24]
	cmp	w2, 0
	ble	.L66
	add	x1, x0, 11
	and	x1, x1, -8
	str	x1, [x19]
	b	.L65
.L66:
	ldr	x2, [x19, 8]
	sxtw	x0, w1
	add	x0, x2, x0
.L65:
	ldr	w0, [x0]
	sxtw	x0, w0
	str	x0, [sp, 64]
	b	.L68
.L63:
	ldr	w0, [sp, 52]
	cmp	w0, 2
	bne	.L69
	ldr	w1, [x19, 24]
	ldr	x0, [x19]
	cmp	w1, 0
	blt	.L70
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [x19]
	b	.L71
.L70:
	add	w2, w1, 8
	str	w2, [x19, 24]
	ldr	w2, [x19, 24]
	cmp	w2, 0
	ble	.L72
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [x19]
	b	.L71
.L72:
	ldr	x2, [x19, 8]
	sxtw	x0, w1
	add	x0, x2, x0
.L71:
	ldr	x0, [x0]
	str	x0, [sp, 64]
	b	.L68
.L69:
	ldr	w0, [sp, 52]
	cmp	w0, 4
	bne	.L74
	ldr	w1, [x19, 24]
	ldr	x0, [x19]
	cmp	w1, 0
	blt	.L75
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [x19]
	b	.L76
.L75:
	add	w2, w1, 8
	str	w2, [x19, 24]
	ldr	w2, [x19, 24]
	cmp	w2, 0
	ble	.L77
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [x19]
	b	.L76
.L77:
	ldr	x2, [x19, 8]
	sxtw	x0, w1
	add	x0, x2, x0
.L76:
	ldr	x0, [x0]
	str	x0, [sp, 64]
	b	.L68
.L74:
	ldr	w1, [x19, 24]
	ldr	x0, [x19]
	cmp	w1, 0
	blt	.L79
	add	x1, x0, 11
	and	x1, x1, -8
	str	x1, [x19]
	b	.L80
.L79:
	add	w2, w1, 8
	str	w2, [x19, 24]
	ldr	w2, [x19, 24]
	cmp	w2, 0
	ble	.L81
	add	x1, x0, 11
	and	x1, x1, -8
	str	x1, [x19]
	b	.L80
.L81:
	ldr	x2, [x19, 8]
	sxtw	x0, w1
	add	x0, x2, x0
.L80:
	ldr	w0, [x0]
	sxtw	x0, w0
	str	x0, [sp, 64]
.L68:
	add	x0, sp, 56
	ldr	w7, [sp, 48]
	ldr	w6, [sp, 40]
	ldr	w5, [sp, 36]
	mov	w4, 10
	ldr	x3, [sp, 64]
	ldr	x2, [sp, 16]
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	fmtint
	b	.L83
.L52:
	ldr	w0, [sp, 48]
	orr	w0, w0, 64
	str	w0, [sp, 48]
	ldr	w0, [sp, 52]
	cmp	w0, 1
	bne	.L84
	ldr	w1, [x19, 24]
	ldr	x0, [x19]
	cmp	w1, 0
	blt	.L85
	add	x1, x0, 11
	and	x1, x1, -8
	str	x1, [x19]
	b	.L86
.L85:
	add	w2, w1, 8
	str	w2, [x19, 24]
	ldr	w2, [x19, 24]
	cmp	w2, 0
	ble	.L87
	add	x1, x0, 11
	and	x1, x1, -8
	str	x1, [x19]
	b	.L86
.L87:
	ldr	x2, [x19, 8]
	sxtw	x0, w1
	add	x0, x2, x0
.L86:
	ldr	w0, [x0]
	uxtw	x0, w0
	str	x0, [sp, 64]
	b	.L89
.L84:
	ldr	w0, [sp, 52]
	cmp	w0, 2
	bne	.L90
	ldr	w1, [x19, 24]
	ldr	x0, [x19]
	cmp	w1, 0
	blt	.L91
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [x19]
	b	.L92
.L91:
	add	w2, w1, 8
	str	w2, [x19, 24]
	ldr	w2, [x19, 24]
	cmp	w2, 0
	ble	.L93
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [x19]
	b	.L92
.L93:
	ldr	x2, [x19, 8]
	sxtw	x0, w1
	add	x0, x2, x0
.L92:
	ldr	x0, [x0]
	str	x0, [sp, 64]
	b	.L89
.L90:
	ldr	w0, [sp, 52]
	cmp	w0, 4
	bne	.L95
	ldr	w1, [x19, 24]
	ldr	x0, [x19]
	cmp	w1, 0
	blt	.L96
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [x19]
	b	.L97
.L96:
	add	w2, w1, 8
	str	w2, [x19, 24]
	ldr	w2, [x19, 24]
	cmp	w2, 0
	ble	.L98
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [x19]
	b	.L97
.L98:
	ldr	x2, [x19, 8]
	sxtw	x0, w1
	add	x0, x2, x0
.L97:
	ldr	x0, [x0]
	str	x0, [sp, 64]
	b	.L89
.L95:
	ldr	w1, [x19, 24]
	ldr	x0, [x19]
	cmp	w1, 0
	blt	.L100
	add	x1, x0, 11
	and	x1, x1, -8
	str	x1, [x19]
	b	.L101
.L100:
	add	w2, w1, 8
	str	w2, [x19, 24]
	ldr	w2, [x19, 24]
	cmp	w2, 0
	ble	.L102
	add	x1, x0, 11
	and	x1, x1, -8
	str	x1, [x19]
	b	.L101
.L102:
	ldr	x2, [x19, 8]
	sxtw	x0, w1
	add	x0, x2, x0
.L101:
	ldr	w0, [x0]
	uxtw	x0, w0
	str	x0, [sp, 64]
.L89:
	add	x0, sp, 56
	ldr	w7, [sp, 48]
	ldr	w6, [sp, 40]
	ldr	w5, [sp, 36]
	mov	w4, 8
	ldr	x3, [sp, 64]
	ldr	x2, [sp, 16]
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	fmtint
	b	.L83
.L49:
	ldr	w0, [sp, 48]
	orr	w0, w0, 64
	str	w0, [sp, 48]
	ldr	w0, [sp, 52]
	cmp	w0, 1
	bne	.L104
	ldr	w1, [x19, 24]
	ldr	x0, [x19]
	cmp	w1, 0
	blt	.L105
	add	x1, x0, 11
	and	x1, x1, -8
	str	x1, [x19]
	b	.L106
.L105:
	add	w2, w1, 8
	str	w2, [x19, 24]
	ldr	w2, [x19, 24]
	cmp	w2, 0
	ble	.L107
	add	x1, x0, 11
	and	x1, x1, -8
	str	x1, [x19]
	b	.L106
.L107:
	ldr	x2, [x19, 8]
	sxtw	x0, w1
	add	x0, x2, x0
.L106:
	ldr	w0, [x0]
	uxtw	x0, w0
	str	x0, [sp, 64]
	b	.L109
.L104:
	ldr	w0, [sp, 52]
	cmp	w0, 2
	bne	.L110
	ldr	w1, [x19, 24]
	ldr	x0, [x19]
	cmp	w1, 0
	blt	.L111
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [x19]
	b	.L112
.L111:
	add	w2, w1, 8
	str	w2, [x19, 24]
	ldr	w2, [x19, 24]
	cmp	w2, 0
	ble	.L113
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [x19]
	b	.L112
.L113:
	ldr	x2, [x19, 8]
	sxtw	x0, w1
	add	x0, x2, x0
.L112:
	ldr	x0, [x0]
	str	x0, [sp, 64]
	b	.L109
.L110:
	ldr	w0, [sp, 52]
	cmp	w0, 4
	bne	.L115
	ldr	w1, [x19, 24]
	ldr	x0, [x19]
	cmp	w1, 0
	blt	.L116
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [x19]
	b	.L117
.L116:
	add	w2, w1, 8
	str	w2, [x19, 24]
	ldr	w2, [x19, 24]
	cmp	w2, 0
	ble	.L118
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [x19]
	b	.L117
.L118:
	ldr	x2, [x19, 8]
	sxtw	x0, w1
	add	x0, x2, x0
.L117:
	ldr	x0, [x0]
	str	x0, [sp, 64]
	b	.L109
.L115:
	ldr	w1, [x19, 24]
	ldr	x0, [x19]
	cmp	w1, 0
	blt	.L120
	add	x1, x0, 11
	and	x1, x1, -8
	str	x1, [x19]
	b	.L121
.L120:
	add	w2, w1, 8
	str	w2, [x19, 24]
	ldr	w2, [x19, 24]
	cmp	w2, 0
	ble	.L122
	add	x1, x0, 11
	and	x1, x1, -8
	str	x1, [x19]
	b	.L121
.L122:
	ldr	x2, [x19, 8]
	sxtw	x0, w1
	add	x0, x2, x0
.L121:
	ldr	w0, [x0]
	uxtw	x0, w0
	str	x0, [sp, 64]
.L109:
	add	x0, sp, 56
	ldr	w7, [sp, 48]
	ldr	w6, [sp, 40]
	ldr	w5, [sp, 36]
	mov	w4, 10
	ldr	x3, [sp, 64]
	ldr	x2, [sp, 16]
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	fmtint
	b	.L83
.L59:
	ldr	w0, [sp, 48]
	orr	w0, w0, 32
	str	w0, [sp, 48]
.L46:
	ldr	w0, [sp, 48]
	orr	w0, w0, 64
	str	w0, [sp, 48]
	ldr	w0, [sp, 52]
	cmp	w0, 1
	bne	.L124
	ldr	w1, [x19, 24]
	ldr	x0, [x19]
	cmp	w1, 0
	blt	.L125
	add	x1, x0, 11
	and	x1, x1, -8
	str	x1, [x19]
	b	.L126
.L125:
	add	w2, w1, 8
	str	w2, [x19, 24]
	ldr	w2, [x19, 24]
	cmp	w2, 0
	ble	.L127
	add	x1, x0, 11
	and	x1, x1, -8
	str	x1, [x19]
	b	.L126
.L127:
	ldr	x2, [x19, 8]
	sxtw	x0, w1
	add	x0, x2, x0
.L126:
	ldr	w0, [x0]
	uxtw	x0, w0
	str	x0, [sp, 64]
	b	.L129
.L124:
	ldr	w0, [sp, 52]
	cmp	w0, 2
	bne	.L130
	ldr	w1, [x19, 24]
	ldr	x0, [x19]
	cmp	w1, 0
	blt	.L131
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [x19]
	b	.L132
.L131:
	add	w2, w1, 8
	str	w2, [x19, 24]
	ldr	w2, [x19, 24]
	cmp	w2, 0
	ble	.L133
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [x19]
	b	.L132
.L133:
	ldr	x2, [x19, 8]
	sxtw	x0, w1
	add	x0, x2, x0
.L132:
	ldr	x0, [x0]
	str	x0, [sp, 64]
	b	.L129
.L130:
	ldr	w0, [sp, 52]
	cmp	w0, 4
	bne	.L135
	ldr	w1, [x19, 24]
	ldr	x0, [x19]
	cmp	w1, 0
	blt	.L136
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [x19]
	b	.L137
.L136:
	add	w2, w1, 8
	str	w2, [x19, 24]
	ldr	w2, [x19, 24]
	cmp	w2, 0
	ble	.L138
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [x19]
	b	.L137
.L138:
	ldr	x2, [x19, 8]
	sxtw	x0, w1
	add	x0, x2, x0
.L137:
	ldr	x0, [x0]
	str	x0, [sp, 64]
	b	.L129
.L135:
	ldr	w1, [x19, 24]
	ldr	x0, [x19]
	cmp	w1, 0
	blt	.L140
	add	x1, x0, 11
	and	x1, x1, -8
	str	x1, [x19]
	b	.L141
.L140:
	add	w2, w1, 8
	str	w2, [x19, 24]
	ldr	w2, [x19, 24]
	cmp	w2, 0
	ble	.L142
	add	x1, x0, 11
	and	x1, x1, -8
	str	x1, [x19]
	b	.L141
.L142:
	ldr	x2, [x19, 8]
	sxtw	x0, w1
	add	x0, x2, x0
.L141:
	ldr	w0, [x0]
	uxtw	x0, w0
	str	x0, [sp, 64]
.L129:
	add	x0, sp, 56
	ldr	w7, [sp, 48]
	ldr	w6, [sp, 40]
	ldr	w5, [sp, 36]
	mov	w4, 16
	ldr	x3, [sp, 64]
	ldr	x2, [sp, 16]
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	fmtint
	b	.L83
.L56:
	ldr	w0, [sp, 52]
	cmp	w0, 3
	bne	.L144
	ldr	w0, [x19, 28]
	ldr	x1, [x19]
	cmp	w0, 0
	blt	.L145
	add	x0, x1, 15
	and	x0, x0, -16
	add	x1, x0, 23
	and	x1, x1, -8
	str	x1, [x19]
	b	.L146
.L145:
	add	w2, w0, 16
	str	w2, [x19, 28]
	ldr	w2, [x19, 28]
	cmp	w2, 0
	ble	.L147
	add	x0, x1, 15
	and	x0, x0, -16
	add	x1, x0, 23
	and	x1, x1, -8
	str	x1, [x19]
	b	.L146
.L147:
	ldr	x1, [x19, 16]
	sxtw	x0, w0
	add	x0, x1, x0
.L146:
	ldr	q0, [x0]
	str	q0, [sp, 112]
	b	.L149
.L144:
	ldr	w1, [x19, 28]
	ldr	x0, [x19]
	cmp	w1, 0
	blt	.L150
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [x19]
	b	.L151
.L150:
	add	w2, w1, 16
	str	w2, [x19, 28]
	ldr	w2, [x19, 28]
	cmp	w2, 0
	ble	.L152
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [x19]
	b	.L151
.L152:
	ldr	x2, [x19, 16]
	sxtw	x0, w1
	add	x0, x2, x0
.L151:
	ldr	d0, [x0]
	bl	__extenddftf2
	str	q0, [sp, 112]
.L149:
	add	x0, sp, 56
	ldr	w5, [sp, 48]
	ldr	w4, [sp, 40]
	ldr	w3, [sp, 36]
	ldr	q0, [sp, 112]
	ldr	x2, [sp, 16]
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	fmtfp
	b	.L83
.L61:
	ldr	w0, [sp, 48]
	orr	w0, w0, 32
	str	w0, [sp, 48]
.L57:
	ldr	w0, [sp, 52]
	cmp	w0, 3
	bne	.L154
	ldr	w0, [x19, 28]
	ldr	x1, [x19]
	cmp	w0, 0
	blt	.L155
	add	x0, x1, 15
	and	x0, x0, -16
	add	x1, x0, 23
	and	x1, x1, -8
	str	x1, [x19]
	b	.L156
.L155:
	add	w2, w0, 16
	str	w2, [x19, 28]
	ldr	w2, [x19, 28]
	cmp	w2, 0
	ble	.L157
	add	x0, x1, 15
	and	x0, x0, -16
	add	x1, x0, 23
	and	x1, x1, -8
	str	x1, [x19]
	b	.L156
.L157:
	ldr	x1, [x19, 16]
	sxtw	x0, w0
	add	x0, x1, x0
.L156:
	ldr	q0, [x0]
	str	q0, [sp, 112]
	b	.L83
.L154:
	ldr	w1, [x19, 28]
	ldr	x0, [x19]
	cmp	w1, 0
	blt	.L160
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [x19]
	b	.L161
.L160:
	add	w2, w1, 16
	str	w2, [x19, 28]
	ldr	w2, [x19, 28]
	cmp	w2, 0
	ble	.L162
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [x19]
	b	.L161
.L162:
	ldr	x2, [x19, 16]
	sxtw	x0, w1
	add	x0, x2, x0
.L161:
	ldr	d0, [x0]
	bl	__extenddftf2
	str	q0, [sp, 112]
	b	.L83
.L60:
	ldr	w0, [sp, 48]
	orr	w0, w0, 32
	str	w0, [sp, 48]
.L55:
	ldr	w0, [sp, 52]
	cmp	w0, 3
	bne	.L164
	ldr	w0, [x19, 28]
	ldr	x1, [x19]
	cmp	w0, 0
	blt	.L165
	add	x0, x1, 15
	and	x0, x0, -16
	add	x1, x0, 23
	and	x1, x1, -8
	str	x1, [x19]
	b	.L166
.L165:
	add	w2, w0, 16
	str	w2, [x19, 28]
	ldr	w2, [x19, 28]
	cmp	w2, 0
	ble	.L167
	add	x0, x1, 15
	and	x0, x0, -16
	add	x1, x0, 23
	and	x1, x1, -8
	str	x1, [x19]
	b	.L166
.L167:
	ldr	x1, [x19, 16]
	sxtw	x0, w0
	add	x0, x1, x0
.L166:
	ldr	q0, [x0]
	str	q0, [sp, 112]
	b	.L83
.L164:
	ldr	w1, [x19, 28]
	ldr	x0, [x19]
	cmp	w1, 0
	blt	.L170
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [x19]
	b	.L171
.L170:
	add	w2, w1, 16
	str	w2, [x19, 28]
	ldr	w2, [x19, 28]
	cmp	w2, 0
	ble	.L172
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [x19]
	b	.L171
.L172:
	ldr	x2, [x19, 16]
	sxtw	x0, w1
	add	x0, x2, x0
.L171:
	ldr	d0, [x0]
	bl	__extenddftf2
	str	q0, [sp, 112]
	b	.L83
.L58:
	ldr	w1, [x19, 24]
	ldr	x0, [x19]
	cmp	w1, 0
	blt	.L174
	add	x1, x0, 11
	and	x1, x1, -8
	str	x1, [x19]
	b	.L175
.L174:
	add	w2, w1, 8
	str	w2, [x19, 24]
	ldr	w2, [x19, 24]
	cmp	w2, 0
	ble	.L176
	add	x1, x0, 11
	and	x1, x1, -8
	str	x1, [x19]
	b	.L175
.L176:
	ldr	x2, [x19, 8]
	sxtw	x0, w1
	add	x0, x2, x0
.L175:
	ldr	w0, [x0]
	and	w1, w0, 255
	add	x0, sp, 56
	mov	w3, w1
	ldr	x2, [sp, 16]
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	dopr_outch
	b	.L83
.L50:
	ldr	w1, [x19, 24]
	ldr	x0, [x19]
	cmp	w1, 0
	blt	.L178
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [x19]
	b	.L179
.L178:
	add	w2, w1, 8
	str	w2, [x19, 24]
	ldr	w2, [x19, 24]
	cmp	w2, 0
	ble	.L180
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [x19]
	b	.L179
.L180:
	ldr	x2, [x19, 8]
	sxtw	x0, w1
	add	x0, x2, x0
.L179:
	ldr	x0, [x0]
	str	x0, [sp, 72]
	ldr	w0, [sp, 40]
	cmn	w0, #1
	bne	.L182
	ldr	x0, [sp, 72]
	bl	libmin_strlen
	str	w0, [sp, 40]
.L182:
	ldr	w0, [sp, 36]
	cmp	w0, 0
	ble	.L183
	ldr	w0, [sp, 40]
	cmp	w0, 0
	blt	.L183
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	ble	.L183
	ldr	w0, [sp, 36]
	str	w0, [sp, 40]
.L183:
	add	x0, sp, 56
	ldr	w6, [sp, 40]
	ldr	w5, [sp, 36]
	ldr	w4, [sp, 48]
	ldr	x3, [sp, 72]
	ldr	x2, [sp, 16]
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	fmtstr
	b	.L83
.L51:
	ldr	w1, [x19, 24]
	ldr	x0, [x19]
	cmp	w1, 0
	blt	.L184
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [x19]
	b	.L185
.L184:
	add	w2, w1, 8
	str	w2, [x19, 24]
	ldr	w2, [x19, 24]
	cmp	w2, 0
	ble	.L186
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [x19]
	b	.L185
.L186:
	ldr	x2, [x19, 8]
	sxtw	x0, w1
	add	x0, x2, x0
.L185:
	ldr	x0, [x0]
	str	x0, [sp, 72]
	ldr	x1, [sp, 72]
	add	x0, sp, 56
	ldr	w7, [sp, 48]
	ldr	w6, [sp, 40]
	ldr	w5, [sp, 36]
	mov	w4, 16
	mov	x3, x1
	ldr	x2, [sp, 16]
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	fmtint
	b	.L83
.L53:
	ldr	w0, [sp, 52]
	cmp	w0, 1
	bne	.L188
	ldr	w1, [x19, 24]
	ldr	x0, [x19]
	cmp	w1, 0
	blt	.L189
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [x19]
	b	.L190
.L189:
	add	w2, w1, 8
	str	w2, [x19, 24]
	ldr	w2, [x19, 24]
	cmp	w2, 0
	ble	.L191
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [x19]
	b	.L190
.L191:
	ldr	x2, [x19, 8]
	sxtw	x0, w1
	add	x0, x2, x0
.L190:
	ldr	x0, [x0]
	str	x0, [sp, 104]
	ldr	x0, [sp, 56]
	sxth	w1, w0
	ldr	x0, [sp, 104]
	strh	w1, [x0]
	b	.L83
.L188:
	ldr	w0, [sp, 52]
	cmp	w0, 2
	bne	.L194
	ldr	w1, [x19, 24]
	ldr	x0, [x19]
	cmp	w1, 0
	blt	.L195
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [x19]
	b	.L196
.L195:
	add	w2, w1, 8
	str	w2, [x19, 24]
	ldr	w2, [x19, 24]
	cmp	w2, 0
	ble	.L197
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [x19]
	b	.L196
.L197:
	ldr	x2, [x19, 8]
	sxtw	x0, w1
	add	x0, x2, x0
.L196:
	ldr	x0, [x0]
	str	x0, [sp, 96]
	ldr	x0, [sp, 56]
	mov	x1, x0
	ldr	x0, [sp, 96]
	str	x1, [x0]
	b	.L83
.L194:
	ldr	w0, [sp, 52]
	cmp	w0, 4
	bne	.L199
	ldr	w1, [x19, 24]
	ldr	x0, [x19]
	cmp	w1, 0
	blt	.L200
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [x19]
	b	.L201
.L200:
	add	w2, w1, 8
	str	w2, [x19, 24]
	ldr	w2, [x19, 24]
	cmp	w2, 0
	ble	.L202
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [x19]
	b	.L201
.L202:
	ldr	x2, [x19, 8]
	sxtw	x0, w1
	add	x0, x2, x0
.L201:
	ldr	x0, [x0]
	str	x0, [sp, 88]
	ldr	x0, [sp, 56]
	mov	x1, x0
	ldr	x0, [sp, 88]
	str	x1, [x0]
	b	.L83
.L199:
	ldr	w1, [x19, 24]
	ldr	x0, [x19]
	cmp	w1, 0
	blt	.L204
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [x19]
	b	.L205
.L204:
	add	w2, w1, 8
	str	w2, [x19, 24]
	ldr	w2, [x19, 24]
	cmp	w2, 0
	ble	.L206
	add	x1, x0, 15
	and	x1, x1, -8
	str	x1, [x19]
	b	.L205
.L206:
	ldr	x2, [x19, 8]
	sxtw	x0, w1
	add	x0, x2, x0
.L205:
	ldr	x0, [x0]
	str	x0, [sp, 80]
	ldr	x0, [sp, 56]
	mov	w1, w0
	ldr	x0, [sp, 80]
	str	w1, [x0]
	b	.L83
.L62:
	add	x0, sp, 56
	ldrb	w3, [sp, 35]
	ldr	x2, [sp, 16]
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	dopr_outch
	b	.L83
.L48:
	ldr	x0, [sp, 8]
	add	x1, x0, 1
	str	x1, [sp, 8]
	ldrb	w0, [x0]
	strb	w0, [sp, 35]
	b	.L83
.L217:
	nop
.L83:
	ldr	x0, [sp, 8]
	add	x1, x0, 1
	str	x1, [sp, 8]
	ldrb	w0, [x0]
	strb	w0, [sp, 35]
	str	wzr, [sp, 44]
	str	wzr, [sp, 36]
	ldr	w0, [sp, 36]
	str	w0, [sp, 52]
	ldr	w0, [sp, 52]
	str	w0, [sp, 48]
	mov	w0, -1
	str	w0, [sp, 40]
	b	.L2
.L213:
	nop
	b	.L2
.L214:
	nop
.L2:
	ldr	w0, [sp, 44]
	cmp	w0, 7
	bne	.L208
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L209
	ldr	x0, [sp, 16]
	sub	x1, x0, #1
	ldr	x0, [sp, 56]
	cmp	x1, x0
	bls	.L210
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	strb	wzr, [x0]
	b	.L209
.L210:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L209
	ldr	x0, [sp, 16]
	sub	x0, x0, #1
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	strb	wzr, [x0]
.L209:
	ldr	x0, [sp, 56]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 136]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L212
	bl	__stack_chk_fail
.L212:
	mov	x0, x1
	ldr	x19, [sp, 160]
	ldp	x29, x30, [sp, 144]
	add	sp, sp, 176
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	dopr, .-dopr
	.section	.rodata
	.align	3
.LC0:
	.string	"<NULL>"
	.text
	.align	2
	.type	fmtstr, %function
fmtstr:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	str	w4, [sp, 28]
	str	w5, [sp, 24]
	str	w6, [sp, 20]
	str	wzr, [sp, 76]
	ldr	x0, [sp, 32]
	cmp	x0, 0
	bne	.L223
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	str	x0, [sp, 32]
.L223:
	str	wzr, [sp, 72]
	b	.L224
.L225:
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
.L224:
	ldrsw	x0, [sp, 72]
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L225
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 72]
	sub	w0, w1, w0
	str	w0, [sp, 68]
	ldr	w0, [sp, 68]
	cmp	w0, 0
	bge	.L226
	str	wzr, [sp, 68]
.L226:
	ldr	w0, [sp, 28]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L228
	ldr	w0, [sp, 68]
	neg	w0, w0
	str	w0, [sp, 68]
	b	.L228
.L230:
	mov	w3, 32
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	bl	dopr_outch
	ldr	w0, [sp, 68]
	sub	w0, w0, #1
	str	w0, [sp, 68]
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
.L228:
	ldr	w0, [sp, 68]
	cmp	w0, 0
	ble	.L231
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L230
	b	.L231
.L233:
	ldr	x0, [sp, 32]
	add	x1, x0, 1
	str	x1, [sp, 32]
	ldrb	w0, [x0]
	mov	w3, w0
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	bl	dopr_outch
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
.L231:
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L234
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L233
	b	.L234
.L236:
	mov	w3, 32
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	bl	dopr_outch
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
.L234:
	ldr	w0, [sp, 68]
	cmp	w0, 0
	bge	.L237
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L236
.L237:
	nop
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	fmtstr, .-fmtstr
	.section	.rodata
	.align	3
.LC1:
	.string	"0123456789ABCDEF"
	.align	3
.LC2:
	.string	"0123456789abcdef"
	.text
	.align	2
	.type	fmtint, %function
fmtint:
.LFB5:
	.cfi_startproc
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, 112]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 112
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	str	w4, [sp, 12]
	str	w5, [sp, 8]
	str	w6, [sp, 4]
	str	w7, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 104]
	mov	x1, 0
	str	wzr, [sp, 52]
	str	wzr, [sp, 56]
	str	wzr, [sp, 60]
	str	wzr, [sp, 64]
	str	wzr, [sp, 68]
	ldr	w0, [sp, 4]
	cmp	w0, 0
	bge	.L239
	str	wzr, [sp, 4]
.L239:
	ldr	x0, [sp, 16]
	str	x0, [sp, 72]
	ldr	w0, [sp]
	and	w0, w0, 64
	cmp	w0, 0
	bne	.L240
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bge	.L241
	mov	w0, 45
	str	w0, [sp, 52]
	ldr	x0, [sp, 16]
	neg	x0, x0
	str	x0, [sp, 72]
	b	.L240
.L241:
	ldr	w0, [sp]
	and	w0, w0, 2
	cmp	w0, 0
	beq	.L242
	mov	w0, 43
	str	w0, [sp, 52]
	b	.L240
.L242:
	ldr	w0, [sp]
	and	w0, w0, 4
	cmp	w0, 0
	beq	.L240
	mov	w0, 32
	str	w0, [sp, 52]
.L240:
	ldr	w0, [sp]
	and	w0, w0, 32
	cmp	w0, 0
	beq	.L247
	mov	w0, 1
	str	w0, [sp, 68]
.L247:
	ldr	w0, [sp, 68]
	cmp	w0, 0
	beq	.L244
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	b	.L245
.L244:
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
.L245:
	ldr	w1, [sp, 12]
	uxtw	x2, w1
	ldr	x1, [sp, 72]
	udiv	x3, x1, x2
	mul	x2, x3, x2
	sub	x1, x1, x2
	add	x1, x0, x1
	ldr	w0, [sp, 56]
	add	w2, w0, 1
	str	w2, [sp, 56]
	ldrb	w2, [x1]
	sxtw	x0, w0
	add	x1, sp, 80
	strb	w2, [x1, x0]
	ldr	w0, [sp, 12]
	uxtw	x0, w0
	ldr	x1, [sp, 72]
	udiv	x0, x1, x0
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	cmp	x0, 0
	beq	.L246
	ldr	w0, [sp, 56]
	cmp	w0, 19
	ble	.L247
.L246:
	ldr	w0, [sp, 56]
	cmp	w0, 20
	bne	.L248
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	str	w0, [sp, 56]
.L248:
	ldrsw	x0, [sp, 56]
	add	x1, sp, 80
	strb	wzr, [x1, x0]
	ldr	w1, [sp, 4]
	ldr	w0, [sp, 56]
	sub	w0, w1, w0
	str	w0, [sp, 64]
	ldr	w0, [sp, 4]
	ldr	w2, [sp, 56]
	ldr	w1, [sp, 56]
	cmp	w2, w0
	csel	w0, w1, w0, ge
	ldr	w1, [sp, 8]
	sub	w0, w1, w0
	ldr	w1, [sp, 52]
	cmp	w1, 0
	cset	w1, ne
	and	w1, w1, 255
	sub	w0, w0, w1
	str	w0, [sp, 60]
	ldr	w0, [sp, 64]
	cmp	w0, 0
	bge	.L249
	str	wzr, [sp, 64]
.L249:
	ldr	w0, [sp, 60]
	cmp	w0, 0
	bge	.L250
	str	wzr, [sp, 60]
.L250:
	ldr	w0, [sp]
	and	w0, w0, 16
	cmp	w0, 0
	beq	.L251
	ldr	w0, [sp, 64]
	ldr	w2, [sp, 60]
	ldr	w1, [sp, 60]
	cmp	w2, w0
	csel	w0, w1, w0, ge
	str	w0, [sp, 64]
	str	wzr, [sp, 60]
.L251:
	ldr	w0, [sp]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L253
	ldr	w0, [sp, 60]
	neg	w0, w0
	str	w0, [sp, 60]
	b	.L253
.L254:
	mov	w3, 32
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	dopr_outch
	ldr	w0, [sp, 60]
	sub	w0, w0, #1
	str	w0, [sp, 60]
.L253:
	ldr	w0, [sp, 60]
	cmp	w0, 0
	bgt	.L254
	ldr	w0, [sp, 52]
	cmp	w0, 0
	beq	.L255
	ldr	w0, [sp, 52]
	and	w0, w0, 255
	mov	w3, w0
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	dopr_outch
.L255:
	ldr	w0, [sp, 64]
	cmp	w0, 0
	ble	.L259
	b	.L257
.L258:
	mov	w3, 48
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	dopr_outch
	ldr	w0, [sp, 64]
	sub	w0, w0, #1
	str	w0, [sp, 64]
.L257:
	ldr	w0, [sp, 64]
	cmp	w0, 0
	bgt	.L258
	b	.L259
.L260:
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	str	w0, [sp, 56]
	ldrsw	x0, [sp, 56]
	add	x1, sp, 80
	ldrb	w0, [x1, x0]
	mov	w3, w0
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	dopr_outch
.L259:
	ldr	w0, [sp, 56]
	cmp	w0, 0
	bgt	.L260
	b	.L261
.L262:
	mov	w3, 32
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	dopr_outch
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L261:
	ldr	w0, [sp, 60]
	cmp	w0, 0
	blt	.L262
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 104]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L263
	bl	__stack_chk_fail
.L263:
	ldp	x29, x30, [sp, 112]
	add	sp, sp, 128
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	fmtint, .-fmtint
	.global	__lttf2
	.align	2
	.type	abs_val, %function
abs_val:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	stp	x20, x21, [sp, 16]
	.cfi_offset 20, -48
	.cfi_offset 21, -40
	str	q0, [sp, 32]
	ldr	q0, [sp, 32]
	str	q0, [sp, 48]
	movi	v1.2d, #0
	ldr	q0, [sp, 32]
	bl	__lttf2
	cmp	w0, 0
	bge	.L265
	ldr	x20, [sp, 32]
	ldr	x0, [sp, 40]
	eor	x21, x0, -9223372036854775808
	stp	x20, x21, [sp, 48]
.L265:
	ldr	q0, [sp, 48]
	ldp	x20, x21, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 20
	.cfi_restore 21
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	abs_val, .-abs_val
	.global	__multf3
	.align	2
	.type	POW10, %function
POW10:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	ldr	q0, [x0]
	str	q0, [sp, 32]
	b	.L270
.L271:
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	ldr	q1, [x0]
	ldr	q0, [sp, 32]
	bl	__multf3
	str	q0, [sp, 32]
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	str	w0, [sp, 28]
.L270:
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L271
	ldr	q0, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	POW10, .-POW10
	.global	__fixtfdi
	.global	__floatditf
	.global	__subtf3
	.global	__getf2
	.align	2
	.type	ROUND, %function
ROUND:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	q0, [sp, 16]
	ldr	q0, [sp, 16]
	bl	__fixtfdi
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	bl	__floatditf
	mov	v1.16b, v0.16b
	ldr	q0, [sp, 16]
	bl	__subtf3
	str	q0, [sp, 16]
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	ldr	q1, [x0]
	ldr	q0, [sp, 16]
	bl	__getf2
	cmp	w0, 0
	blt	.L274
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L274:
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	ROUND, .-ROUND
	.align	2
	.type	my_modf, %function
my_modf:
.LFB9:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80
	str	d0, [sp, 8]
	str	x0, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	ldr	d0, [sp, 8]
	str	d0, [sp, 48]
	fmov	d0, 1.0e+0
	str	d0, [sp, 56]
	str	wzr, [sp, 28]
	b	.L279
.L284:
	ldr	d0, [sp, 48]
	fcvtzs	d0, d0
	str	d0, [sp, 40]
	ldr	d0, [sp, 40]
	scvtf	d1, d0
	ldr	d2, [sp, 48]
	fmov	d0, 1.0e+0
	fadd	d0, d2, d0
	fcmpe	d1, d0
	bls	.L289
	b	.L280
.L289:
	ldr	d0, [sp, 40]
	scvtf	d1, d0
	ldr	d2, [sp, 48]
	fmov	d0, 1.0e+0
	fsub	d0, d2, d0
	fcmpe	d1, d0
	bge	.L290
.L280:
	ldr	d0, [sp, 48]
	adrp	x0, .LC6
	ldr	d1, [x0, #:lo12:.LC6]
	fmul	d0, d0, d1
	str	d0, [sp, 48]
	ldr	d1, [sp, 56]
	fmov	d0, 1.0e+1
	fmul	d0, d1, d0
	str	d0, [sp, 56]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L279:
	ldr	w0, [sp, 28]
	cmp	w0, 99
	ble	.L284
	b	.L283
.L290:
	nop
.L283:
	ldr	w0, [sp, 28]
	cmp	w0, 100
	bne	.L285
	ldr	x0, [sp]
	str	xzr, [x0]
	movi	d0, #0
	b	.L286
.L285:
	ldr	w0, [sp, 28]
	cmp	w0, 0
	beq	.L287
	ldr	d0, [sp, 40]
	scvtf	d1, d0
	ldr	d0, [sp, 56]
	fmul	d0, d1, d0
	ldr	d1, [sp, 8]
	fsub	d0, d1, d0
	add	x0, sp, 32
	bl	my_modf
	str	d0, [sp, 64]
	ldr	d0, [sp, 40]
	scvtf	d1, d0
	ldr	d0, [sp, 56]
	fmul	d1, d1, d0
	ldr	d0, [sp, 32]
	fadd	d0, d1, d0
	ldr	x0, [sp]
	str	d0, [x0]
	ldr	d0, [sp, 64]
	b	.L286
.L287:
	ldr	d0, [sp, 40]
	scvtf	d0, d0
	ldr	x0, [sp]
	str	d0, [x0]
	ldr	x0, [sp]
	ldr	d0, [x0]
	ldr	d1, [sp, 48]
	fsub	d0, d1, d0
.L286:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 72]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L288
	bl	__stack_chk_fail
.L288:
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 96
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9:
	.size	my_modf, .-my_modf
	.global	__trunctfdf2
	.align	2
	.type	fmtfp, %function
fmtfp:
.LFB10:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	sub	sp, sp, #784
	.cfi_def_cfa_offset 800
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	str	q0, [sp, 32]
	str	w3, [sp, 52]
	str	w4, [sp, 48]
	str	w5, [sp, 28]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 776]
	mov	x1, 0
	str	wzr, [sp, 92]
	str	wzr, [sp, 96]
	str	wzr, [sp, 100]
	str	wzr, [sp, 104]
	str	wzr, [sp, 108]
	str	wzr, [sp, 112]
	ldr	w0, [sp, 48]
	cmp	w0, 0
	bge	.L292
	mov	w0, 6
	str	w0, [sp, 48]
.L292:
	ldr	q0, [sp, 32]
	bl	abs_val
	bl	__trunctfdf2
	str	d0, [sp, 136]
	movi	v1.2d, #0
	ldr	q0, [sp, 32]
	bl	__lttf2
	cmp	w0, 0
	bge	.L332
	mov	w0, 45
	str	w0, [sp, 92]
	b	.L295
.L332:
	ldr	w0, [sp, 28]
	and	w0, w0, 2
	cmp	w0, 0
	beq	.L296
	mov	w0, 43
	str	w0, [sp, 92]
	b	.L295
.L296:
	ldr	w0, [sp, 28]
	and	w0, w0, 4
	cmp	w0, 0
	beq	.L295
	mov	w0, 32
	str	w0, [sp, 92]
.L295:
	ldr	w0, [sp, 48]
	cmp	w0, 16
	ble	.L297
	mov	w0, 16
	str	w0, [sp, 48]
.L297:
	ldr	d0, [sp, 136]
	str	d0, [sp, 144]
	add	x0, sp, 120
	ldr	d0, [sp, 144]
	bl	my_modf
	ldr	w0, [sp, 48]
	bl	POW10
	str	q0, [sp]
	ldr	d0, [sp, 120]
	ldr	d1, [sp, 136]
	fsub	d0, d1, d0
	bl	__extenddftf2
	mov	v1.16b, v0.16b
	ldr	q0, [sp]
	bl	__multf3
	bl	ROUND
	scvtf	d0, x0
	str	d0, [sp, 128]
	ldr	d0, [sp, 128]
	bl	__extenddftf2
	str	q0, [sp]
	ldr	w0, [sp, 48]
	bl	POW10
	mov	v1.16b, v0.16b
	ldr	q0, [sp]
	bl	__getf2
	cmp	w0, 0
	blt	.L303
	ldr	d1, [sp, 120]
	fmov	d0, 1.0e+0
	fadd	d0, d1, d0
	str	d0, [sp, 120]
	ldr	w0, [sp, 48]
	bl	POW10
	str	q0, [sp]
	ldr	d0, [sp, 128]
	bl	__extenddftf2
	ldr	q1, [sp]
	bl	__subtf3
	bl	__trunctfdf2
	str	d0, [sp, 128]
.L303:
	ldr	d0, [sp, 120]
	str	d0, [sp, 144]
	ldr	d0, [sp, 120]
	adrp	x0, .LC6
	ldr	d1, [x0, #:lo12:.LC6]
	fmul	d0, d0, d1
	add	x0, sp, 120
	bl	my_modf
	ldr	d0, [sp, 144]
	adrp	x0, .LC6
	ldr	d1, [x0, #:lo12:.LC6]
	fmul	d0, d0, d1
	str	d0, [sp, 144]
	ldr	d0, [sp, 120]
	ldr	d1, [sp, 144]
	fsub	d0, d1, d0
	adrp	x0, .LC7
	ldr	d1, [x0, #:lo12:.LC7]
	fadd	d1, d0, d1
	fmov	d0, 1.0e+1
	fmul	d0, d1, d0
	fcvtzs	w0, d0
	str	w0, [sp, 116]
	ldr	w0, [sp, 112]
	cmp	w0, 0
	beq	.L300
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	b	.L301
.L300:
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
.L301:
	ldrsw	x1, [sp, 116]
	add	x1, x0, x1
	ldr	w0, [sp, 96]
	add	w2, w0, 1
	str	w2, [sp, 96]
	ldrb	w2, [x1]
	sxtw	x0, w0
	add	x1, sp, 152
	strb	w2, [x1, x0]
	ldr	d0, [sp, 120]
	fcmp	d0, #0.0
	beq	.L302
	ldr	w0, [sp, 96]
	cmp	w0, 310
	ble	.L303
.L302:
	ldr	w0, [sp, 96]
	cmp	w0, 311
	bne	.L304
	ldr	w0, [sp, 96]
	sub	w0, w0, #1
	str	w0, [sp, 96]
.L304:
	ldrsw	x0, [sp, 96]
	add	x1, sp, 152
	strb	wzr, [x1, x0]
	ldr	d0, [sp, 128]
	fcmp	d0, #0.0
	beq	.L305
.L309:
	ldr	d0, [sp, 128]
	str	d0, [sp, 144]
	ldr	d0, [sp, 128]
	adrp	x0, .LC6
	ldr	d1, [x0, #:lo12:.LC6]
	fmul	d0, d0, d1
	add	x0, sp, 128
	bl	my_modf
	ldr	d0, [sp, 144]
	adrp	x0, .LC6
	ldr	d1, [x0, #:lo12:.LC6]
	fmul	d0, d0, d1
	str	d0, [sp, 144]
	ldr	d0, [sp, 128]
	ldr	d1, [sp, 144]
	fsub	d0, d1, d0
	adrp	x0, .LC7
	ldr	d1, [x0, #:lo12:.LC7]
	fadd	d1, d0, d1
	fmov	d0, 1.0e+1
	fmul	d0, d1, d0
	fcvtzs	w0, d0
	str	w0, [sp, 116]
	ldr	w0, [sp, 112]
	cmp	w0, 0
	beq	.L306
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	b	.L307
.L306:
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
.L307:
	ldrsw	x1, [sp, 116]
	add	x1, x0, x1
	ldr	w0, [sp, 100]
	add	w2, w0, 1
	str	w2, [sp, 100]
	ldrb	w2, [x1]
	sxtw	x0, w0
	add	x1, sp, 464
	strb	w2, [x1, x0]
	ldr	d0, [sp, 128]
	fcmp	d0, #0.0
	beq	.L308
	ldr	w0, [sp, 100]
	cmp	w0, 310
	ble	.L309
.L308:
	ldr	w0, [sp, 100]
	cmp	w0, 311
	bne	.L305
	ldr	w0, [sp, 100]
	sub	w0, w0, #1
	str	w0, [sp, 100]
.L305:
	ldrsw	x0, [sp, 100]
	add	x1, sp, 464
	strb	wzr, [x1, x0]
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 96]
	sub	w1, w1, w0
	ldr	w0, [sp, 48]
	sub	w0, w1, w0
	sub	w0, w0, #1
	ldr	w1, [sp, 92]
	cmp	w1, 0
	cset	w1, ne
	and	w1, w1, 255
	sub	w0, w0, w1
	str	w0, [sp, 104]
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 100]
	sub	w0, w1, w0
	str	w0, [sp, 108]
	ldr	w0, [sp, 108]
	cmp	w0, 0
	bge	.L310
	str	wzr, [sp, 108]
.L310:
	ldr	w0, [sp, 104]
	cmp	w0, 0
	bge	.L311
	str	wzr, [sp, 104]
.L311:
	ldr	w0, [sp, 28]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L312
	ldr	w0, [sp, 104]
	neg	w0, w0
	str	w0, [sp, 104]
.L312:
	ldr	w0, [sp, 28]
	and	w0, w0, 16
	cmp	w0, 0
	beq	.L317
	ldr	w0, [sp, 104]
	cmp	w0, 0
	ble	.L317
	ldr	w0, [sp, 92]
	cmp	w0, 0
	beq	.L315
	ldr	w0, [sp, 92]
	and	w0, w0, 255
	mov	w3, w0
	ldr	x2, [sp, 56]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	bl	dopr_outch
	ldr	w0, [sp, 104]
	sub	w0, w0, #1
	str	w0, [sp, 104]
	str	wzr, [sp, 92]
	b	.L315
.L316:
	mov	w3, 48
	ldr	x2, [sp, 56]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	bl	dopr_outch
	ldr	w0, [sp, 104]
	sub	w0, w0, #1
	str	w0, [sp, 104]
.L315:
	ldr	w0, [sp, 104]
	cmp	w0, 0
	bgt	.L316
	b	.L317
.L318:
	mov	w3, 32
	ldr	x2, [sp, 56]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	bl	dopr_outch
	ldr	w0, [sp, 104]
	sub	w0, w0, #1
	str	w0, [sp, 104]
.L317:
	ldr	w0, [sp, 104]
	cmp	w0, 0
	bgt	.L318
	ldr	w0, [sp, 92]
	cmp	w0, 0
	beq	.L320
	ldr	w0, [sp, 92]
	and	w0, w0, 255
	mov	w3, w0
	ldr	x2, [sp, 56]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	bl	dopr_outch
	b	.L320
.L321:
	ldr	w0, [sp, 96]
	sub	w0, w0, #1
	str	w0, [sp, 96]
	ldrsw	x0, [sp, 96]
	add	x1, sp, 152
	ldrb	w0, [x1, x0]
	mov	w3, w0
	ldr	x2, [sp, 56]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	bl	dopr_outch
.L320:
	ldr	w0, [sp, 96]
	cmp	w0, 0
	bgt	.L321
	ldr	w0, [sp, 48]
	cmp	w0, 0
	ble	.L325
	mov	w3, 46
	ldr	x2, [sp, 56]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	bl	dopr_outch
	b	.L323
.L324:
	ldr	w0, [sp, 100]
	sub	w0, w0, #1
	str	w0, [sp, 100]
	ldrsw	x0, [sp, 100]
	add	x1, sp, 464
	ldrb	w0, [x1, x0]
	mov	w3, w0
	ldr	x2, [sp, 56]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	bl	dopr_outch
.L323:
	ldr	w0, [sp, 100]
	cmp	w0, 0
	bgt	.L324
	b	.L325
.L326:
	mov	w3, 48
	ldr	x2, [sp, 56]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	bl	dopr_outch
	ldr	w0, [sp, 108]
	sub	w0, w0, #1
	str	w0, [sp, 108]
.L325:
	ldr	w0, [sp, 108]
	cmp	w0, 0
	bgt	.L326
	b	.L327
.L328:
	mov	w3, 32
	ldr	x2, [sp, 56]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	bl	dopr_outch
	ldr	w0, [sp, 104]
	add	w0, w0, 1
	str	w0, [sp, 104]
.L327:
	ldr	w0, [sp, 104]
	cmp	w0, 0
	blt	.L328
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 776]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L329
	bl	__stack_chk_fail
.L329:
	add	sp, sp, 784
	.cfi_def_cfa_offset 16
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10:
	.size	fmtfp, .-fmtfp
	.align	2
	.type	dopr_outch, %function
dopr_outch:
.LFB11:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	strb	w3, [sp, 7]
	ldr	x0, [sp, 16]
	ldr	x0, [x0]
	ldr	x1, [sp, 8]
	cmp	x1, x0
	bls	.L334
	ldr	x0, [sp, 16]
	ldr	x0, [x0]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w1, [sp, 7]
	strb	w1, [x0]
.L334:
	ldr	x0, [sp, 16]
	ldr	x0, [x0]
	add	x1, x0, 1
	ldr	x0, [sp, 16]
	str	x1, [x0]
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11:
	.size	dopr_outch, .-dopr_outch
	.align	2
	.global	libmin_printf
	.type	libmin_printf, %function
libmin_printf:
.LFB12:
	.cfi_startproc
	stp	x29, x30, [sp, -208]!
	.cfi_def_cfa_offset 208
	.cfi_offset 29, -208
	.cfi_offset 30, -200
	mov	x29, sp
	sub	sp, sp, #1136
	.cfi_def_cfa_offset 1344
	str	xzr, [sp, 1024]
	str	x0, [sp, 40]
	str	x1, [sp, 1288]
	str	x2, [sp, 1296]
	str	x3, [sp, 1304]
	str	x4, [sp, 1312]
	str	x5, [sp, 1320]
	str	x6, [sp, 1328]
	str	x7, [sp, 1336]
	add	x0, sp, 1024
	str	q0, [x0, 128]
	add	x0, sp, 1024
	str	q1, [x0, 144]
	add	x0, sp, 1024
	str	q2, [x0, 160]
	add	x0, sp, 1024
	str	q3, [x0, 176]
	add	x0, sp, 1024
	str	q4, [x0, 192]
	add	x0, sp, 1024
	str	q5, [x0, 208]
	add	x0, sp, 1024
	str	q6, [x0, 224]
	add	x0, sp, 1024
	str	q7, [x0, 240]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 1128]
	mov	x1, 0
	add	x0, sp, 1344
	str	x0, [sp, 72]
	add	x0, sp, 1344
	str	x0, [sp, 80]
	add	x0, sp, 1280
	str	x0, [sp, 88]
	mov	w0, -56
	str	w0, [sp, 96]
	mov	w0, -128
	str	w0, [sp, 100]
	mov	x0, sp
	add	x1, sp, 72
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	mov	x1, sp
	add	x0, sp, 104
	mov	x3, x1
	ldr	x2, [sp, 40]
	mov	x1, 1024
	bl	dopr
	strb	wzr, [sp, 1127]
	str	wzr, [sp, 60]
	add	x0, sp, 104
	str	x0, [sp, 64]
	b	.L336
.L337:
	ldr	x0, [sp, 64]
	ldrb	w0, [x0]
	bl	libtarg_putc
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	x0, [sp, 64]
	add	x0, x0, 1
	str	x0, [sp, 64]
.L336:
	ldr	x0, [sp, 64]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L337
	ldr	w0, [sp, 60]
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 1128]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L339
	bl	__stack_chk_fail
.L339:
	mov	w0, w1
	add	sp, sp, 1136
	.cfi_def_cfa_offset 208
	ldp	x29, x30, [sp], 208
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE12:
	.size	libmin_printf, .-libmin_printf
	.align	2
	.global	libmin_snprintf
	.type	libmin_snprintf, %function
libmin_snprintf:
.LFB13:
	.cfi_startproc
	sub	sp, sp, #304
	.cfi_def_cfa_offset 304
	stp	x29, x30, [sp, 112]
	.cfi_offset 29, -192
	.cfi_offset 30, -184
	add	x29, sp, 112
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 264]
	str	x4, [sp, 272]
	str	x5, [sp, 280]
	str	x6, [sp, 288]
	str	x7, [sp, 296]
	str	q0, [sp, 128]
	str	q1, [sp, 144]
	str	q2, [sp, 160]
	str	q3, [sp, 176]
	str	q4, [sp, 192]
	str	q5, [sp, 208]
	str	q6, [sp, 224]
	str	q7, [sp, 240]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 104]
	mov	x1, 0
	add	x0, sp, 304
	str	x0, [sp, 72]
	add	x0, sp, 304
	str	x0, [sp, 80]
	add	x0, sp, 256
	str	x0, [sp, 88]
	mov	w0, -40
	str	w0, [sp, 96]
	mov	w0, -128
	str	w0, [sp, 100]
	mov	x0, sp
	add	x1, sp, 72
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	mov	x0, sp
	mov	x3, x0
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	bl	dopr
	ldr	x0, [sp, 48]
	sub	x0, x0, #1
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	strb	wzr, [x0]
	ldr	x0, [sp, 56]
	bl	libmin_strlen
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 104]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L342
	bl	__stack_chk_fail
.L342:
	mov	w0, w1
	ldp	x29, x30, [sp, 112]
	add	sp, sp, 304
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE13:
	.size	libmin_snprintf, .-libmin_snprintf
	.section	.rodata
	.align	4
.LC3:
	.word	0
	.word	0
	.word	0
	.word	1073676288
	.align	4
.LC4:
	.word	0
	.word	0
	.word	0
	.word	1073889280
	.align	4
.LC5:
	.word	0
	.word	0
	.word	0
	.word	1073610752
	.align	3
.LC6:
	.word	-1717986918
	.word	1069128089
	.align	3
.LC7:
	.word	-1717986918
	.word	1068079513
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
