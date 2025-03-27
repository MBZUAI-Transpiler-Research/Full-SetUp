	.arch armv8-a
	.file	"regex-parser.c"
	.text
	.align	2
	.global	re_match
	.type	re_match, %function
re_match:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 40]
	bl	re_compile
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	bl	re_matchp
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	re_match, .-re_match
	.align	2
	.global	re_matchp
	.type	re_matchp, %function
re_matchp:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 24]
	str	wzr, [x0]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	beq	.L4
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	cmp	w0, 2
	bne	.L5
	ldr	x0, [sp, 40]
	add	x0, x0, 16
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	bl	matchpattern
	cmp	w0, 0
	beq	.L6
	mov	w0, 0
	b	.L8
.L6:
	mov	w0, -1
	b	.L8
.L5:
	mov	w0, -1
	str	w0, [sp, 60]
.L11:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	matchpattern
	cmp	w0, 0
	beq	.L9
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L10
	mov	w0, -1
	b	.L8
.L10:
	ldr	w0, [sp, 60]
	b	.L8
.L9:
	ldr	x0, [sp, 32]
	add	x1, x0, 1
	str	x1, [sp, 32]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L11
.L4:
	mov	w0, -1
.L8:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	re_matchp, .-re_matchp
	.align	2
	.global	re_compile
	.type	re_compile, %function
re_compile:
.LFB5:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 8]
	mov	w0, 1
	str	w0, [sp, 32]
	str	wzr, [sp, 36]
	str	wzr, [sp, 40]
	b	.L13
.L45:
	ldrsw	x0, [sp, 36]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 31]
	ldrb	w0, [sp, 31]
	cmp	w0, 94
	beq	.L14
	cmp	w0, 94
	bgt	.L15
	cmp	w0, 92
	beq	.L16
	cmp	w0, 92
	bgt	.L15
	cmp	w0, 91
	beq	.L17
	cmp	w0, 91
	bgt	.L15
	cmp	w0, 63
	beq	.L18
	cmp	w0, 63
	bgt	.L15
	cmp	w0, 46
	beq	.L19
	cmp	w0, 46
	bgt	.L15
	cmp	w0, 43
	beq	.L20
	cmp	w0, 43
	bgt	.L15
	cmp	w0, 36
	beq	.L21
	cmp	w0, 42
	beq	.L22
	b	.L15
.L14:
	adrp	x0, re_compiled.1
	add	x1, x0, :lo12:re_compiled.1
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 4
	add	x0, x1, x0
	mov	w1, 2
	strb	w1, [x0]
	b	.L23
.L21:
	adrp	x0, re_compiled.1
	add	x1, x0, :lo12:re_compiled.1
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 4
	add	x0, x1, x0
	mov	w1, 3
	strb	w1, [x0]
	b	.L23
.L19:
	adrp	x0, re_compiled.1
	add	x1, x0, :lo12:re_compiled.1
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 4
	add	x0, x1, x0
	mov	w1, 1
	strb	w1, [x0]
	b	.L23
.L22:
	adrp	x0, re_compiled.1
	add	x1, x0, :lo12:re_compiled.1
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 4
	add	x0, x1, x0
	mov	w1, 5
	strb	w1, [x0]
	b	.L23
.L20:
	adrp	x0, re_compiled.1
	add	x1, x0, :lo12:re_compiled.1
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 4
	add	x0, x1, x0
	mov	w1, 6
	strb	w1, [x0]
	b	.L23
.L18:
	adrp	x0, re_compiled.1
	add	x1, x0, :lo12:re_compiled.1
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 4
	add	x0, x1, x0
	mov	w1, 4
	strb	w1, [x0]
	b	.L23
.L16:
	ldrsw	x0, [sp, 36]
	add	x0, x0, 1
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L46
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldrsw	x0, [sp, 36]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 119
	beq	.L25
	cmp	w0, 119
	bgt	.L26
	cmp	w0, 115
	beq	.L27
	cmp	w0, 115
	bgt	.L26
	cmp	w0, 100
	beq	.L28
	cmp	w0, 100
	bgt	.L26
	cmp	w0, 87
	beq	.L29
	cmp	w0, 87
	bgt	.L26
	cmp	w0, 68
	beq	.L30
	cmp	w0, 83
	beq	.L31
	b	.L26
.L28:
	adrp	x0, re_compiled.1
	add	x1, x0, :lo12:re_compiled.1
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 4
	add	x0, x1, x0
	mov	w1, 10
	strb	w1, [x0]
	b	.L24
.L30:
	adrp	x0, re_compiled.1
	add	x1, x0, :lo12:re_compiled.1
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 4
	add	x0, x1, x0
	mov	w1, 11
	strb	w1, [x0]
	b	.L24
.L25:
	adrp	x0, re_compiled.1
	add	x1, x0, :lo12:re_compiled.1
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 4
	add	x0, x1, x0
	mov	w1, 12
	strb	w1, [x0]
	b	.L24
.L29:
	adrp	x0, re_compiled.1
	add	x1, x0, :lo12:re_compiled.1
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 4
	add	x0, x1, x0
	mov	w1, 13
	strb	w1, [x0]
	b	.L24
.L27:
	adrp	x0, re_compiled.1
	add	x1, x0, :lo12:re_compiled.1
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 4
	add	x0, x1, x0
	mov	w1, 14
	strb	w1, [x0]
	b	.L24
.L31:
	adrp	x0, re_compiled.1
	add	x1, x0, :lo12:re_compiled.1
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 4
	add	x0, x1, x0
	mov	w1, 15
	strb	w1, [x0]
	b	.L24
.L26:
	adrp	x0, re_compiled.1
	add	x1, x0, :lo12:re_compiled.1
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 4
	add	x0, x1, x0
	mov	w1, 7
	strb	w1, [x0]
	ldrsw	x0, [sp, 36]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w2, [x0]
	adrp	x0, re_compiled.1
	add	x1, x0, :lo12:re_compiled.1
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 4
	add	x0, x1, x0
	mov	w1, w2
	strb	w1, [x0, 8]
	nop
.L24:
	b	.L46
.L17:
	ldr	w0, [sp, 32]
	str	w0, [sp, 44]
	ldrsw	x0, [sp, 36]
	add	x0, x0, 1
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 94
	bne	.L32
	adrp	x0, re_compiled.1
	add	x1, x0, :lo12:re_compiled.1
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 4
	add	x0, x1, x0
	mov	w1, 9
	strb	w1, [x0]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldrsw	x0, [sp, 36]
	add	x0, x0, 1
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L35
	mov	x0, 0
	b	.L34
.L32:
	adrp	x0, re_compiled.1
	add	x1, x0, :lo12:re_compiled.1
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 4
	add	x0, x1, x0
	mov	w1, 8
	strb	w1, [x0]
	b	.L35
.L41:
	ldrsw	x0, [sp, 36]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 92
	bne	.L36
	ldr	w0, [sp, 32]
	cmp	w0, 38
	ble	.L37
	mov	x0, 0
	b	.L34
.L37:
	ldrsw	x0, [sp, 36]
	add	x0, x0, 1
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L38
	mov	x0, 0
	b	.L34
.L38:
	ldr	w0, [sp, 36]
	add	w1, w0, 1
	str	w1, [sp, 36]
	sxtw	x0, w0
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w0, [sp, 32]
	add	w2, w0, 1
	str	w2, [sp, 32]
	ldrb	w2, [x1]
	adrp	x1, ccl_buf.0
	add	x1, x1, :lo12:ccl_buf.0
	sxtw	x0, w0
	strb	w2, [x1, x0]
	b	.L39
.L36:
	ldr	w0, [sp, 32]
	cmp	w0, 39
	ble	.L39
	mov	x0, 0
	b	.L34
.L39:
	ldrsw	x0, [sp, 36]
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w0, [sp, 32]
	add	w2, w0, 1
	str	w2, [sp, 32]
	ldrb	w2, [x1]
	adrp	x1, ccl_buf.0
	add	x1, x1, :lo12:ccl_buf.0
	sxtw	x0, w0
	strb	w2, [x1, x0]
.L35:
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldrsw	x0, [sp, 36]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 93
	beq	.L40
	ldrsw	x0, [sp, 36]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L41
.L40:
	ldr	w0, [sp, 32]
	cmp	w0, 39
	ble	.L42
	mov	x0, 0
	b	.L34
.L42:
	ldr	w0, [sp, 32]
	add	w1, w0, 1
	str	w1, [sp, 32]
	adrp	x1, ccl_buf.0
	add	x1, x1, :lo12:ccl_buf.0
	sxtw	x0, w0
	strb	wzr, [x1, x0]
	ldrsw	x1, [sp, 44]
	adrp	x0, ccl_buf.0
	add	x0, x0, :lo12:ccl_buf.0
	add	x1, x1, x0
	adrp	x0, re_compiled.1
	add	x2, x0, :lo12:re_compiled.1
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 4
	add	x0, x2, x0
	str	x1, [x0, 8]
	b	.L23
.L15:
	adrp	x0, re_compiled.1
	add	x1, x0, :lo12:re_compiled.1
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 4
	add	x0, x1, x0
	mov	w1, 7
	strb	w1, [x0]
	adrp	x0, re_compiled.1
	add	x1, x0, :lo12:re_compiled.1
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldrb	w1, [sp, 31]
	strb	w1, [x0, 8]
	b	.L23
.L46:
	nop
.L23:
	ldrsw	x0, [sp, 36]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L43
	mov	x0, 0
	b	.L34
.L43:
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L13:
	ldrsw	x0, [sp, 36]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L44
	ldr	w0, [sp, 40]
	cmp	w0, 28
	ble	.L45
.L44:
	adrp	x0, re_compiled.1
	add	x1, x0, :lo12:re_compiled.1
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 4
	add	x0, x1, x0
	strb	wzr, [x0]
	adrp	x0, re_compiled.1
	add	x0, x0, :lo12:re_compiled.1
.L34:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	re_compile, .-re_compile
	.section	.rodata
	.align	3
.LC19:
	.string	"type: %s"
	.align	3
.LC20:
	.string	" ["
	.align	3
.LC21:
	.string	"%c"
	.align	3
.LC22:
	.string	"]"
	.align	3
.LC23:
	.string	" '%c'"
	.align	3
.LC24:
	.string	"\n"
	.text
	.align	2
	.global	re_print
	.type	re_print, %function
re_print:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #192
	.cfi_def_cfa_offset 192
	stp	x29, x30, [sp, 176]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 176
	str	x0, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 168]
	mov	x1, 0
	adrp	x0, .LC18
	add	x1, x0, :lo12:.LC18
	add	x0, sp, 32
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	ldp	q0, q1, [x1, 64]
	stp	q0, q1, [x0, 64]
	ldp	q0, q1, [x1, 96]
	stp	q0, q1, [x0, 96]
	ldr	x1, [x1, 128]
	str	x1, [x0, 128]
	str	wzr, [sp, 24]
	b	.L48
.L57:
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 4
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L59
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 4
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 32
	ldr	x0, [x1, x0]
	mov	x1, x0
	adrp	x0, .LC19
	add	x0, x0, :lo12:.LC19
	bl	libmin_printf
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 4
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 8
	beq	.L51
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 4
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 9
	bne	.L52
.L51:
	adrp	x0, .LC20
	add	x0, x0, :lo12:.LC20
	bl	libmin_printf
	str	wzr, [sp, 28]
	b	.L53
.L55:
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 4
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	x1, [x0, 8]
	ldrsw	x0, [sp, 28]
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 23]
	ldrb	w0, [sp, 23]
	cmp	w0, 0
	beq	.L54
	ldrb	w0, [sp, 23]
	cmp	w0, 93
	beq	.L54
	ldrb	w0, [sp, 23]
	mov	w1, w0
	adrp	x0, .LC21
	add	x0, x0, :lo12:.LC21
	bl	libmin_printf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L53:
	ldr	w0, [sp, 28]
	cmp	w0, 39
	ble	.L55
.L54:
	adrp	x0, .LC22
	add	x0, x0, :lo12:.LC22
	bl	libmin_printf
	b	.L56
.L52:
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 4
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 7
	bne	.L56
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 4
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0, 8]
	mov	w1, w0
	adrp	x0, .LC23
	add	x0, x0, :lo12:.LC23
	bl	libmin_printf
.L56:
	adrp	x0, .LC24
	add	x0, x0, :lo12:.LC24
	bl	libmin_printf
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L48:
	ldr	w0, [sp, 24]
	cmp	w0, 29
	ble	.L57
	b	.L50
.L59:
	nop
.L50:
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 168]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L58
	bl	__stack_chk_fail
.L58:
	ldp	x29, x30, [sp, 176]
	add	sp, sp, 192
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	re_print, .-re_print
	.section	.rodata
	.align	3
.LC0:
	.string	"UNUSED"
	.align	3
.LC1:
	.string	"DOT"
	.align	3
.LC2:
	.string	"BEGIN"
	.align	3
.LC3:
	.string	"END"
	.align	3
.LC4:
	.string	"QUESTIONMARK"
	.align	3
.LC5:
	.string	"STAR"
	.align	3
.LC6:
	.string	"PLUS"
	.align	3
.LC7:
	.string	"CHAR"
	.align	3
.LC8:
	.string	"CHAR_CLASS"
	.align	3
.LC9:
	.string	"INV_CHAR_CLASS"
	.align	3
.LC10:
	.string	"DIGIT"
	.align	3
.LC11:
	.string	"NOT_DIGIT"
	.align	3
.LC12:
	.string	"ALPHA"
	.align	3
.LC13:
	.string	"NOT_ALPHA"
	.align	3
.LC14:
	.string	"WHITESPACE"
	.align	3
.LC15:
	.string	"NOT_WHITESPACE"
	.align	3
.LC16:
	.string	"BRANCH"
	.data
	.align	3
.LC18:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.xword	.LC3
	.xword	.LC4
	.xword	.LC5
	.xword	.LC6
	.xword	.LC7
	.xword	.LC8
	.xword	.LC9
	.xword	.LC10
	.xword	.LC11
	.xword	.LC12
	.xword	.LC13
	.xword	.LC14
	.xword	.LC15
	.xword	.LC16
	.text
	.align	2
	.type	matchdigit, %function
matchdigit:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strb	w0, [sp, 15]
	adrp	x0, :got:_pctype
	ldr	x0, [x0, :got_lo12:_pctype]
	ldr	x1, [x0]
	ldrb	w0, [sp, 15]
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 4
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	matchdigit, .-matchdigit
	.align	2
	.type	matchalpha, %function
matchalpha:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strb	w0, [sp, 15]
	adrp	x0, :got:_pctype
	ldr	x0, [x0, :got_lo12:_pctype]
	ldr	x1, [x0]
	ldrb	w0, [sp, 15]
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 3
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	matchalpha, .-matchalpha
	.align	2
	.type	matchwhitespace, %function
matchwhitespace:
.LFB9:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strb	w0, [sp, 15]
	adrp	x0, :got:_pctype
	ldr	x0, [x0, :got_lo12:_pctype]
	ldr	x1, [x0]
	ldrb	w0, [sp, 15]
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 8
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9:
	.size	matchwhitespace, .-matchwhitespace
	.align	2
	.type	matchalphanum, %function
matchalphanum:
.LFB10:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	strb	w0, [sp, 31]
	ldrb	w0, [sp, 31]
	cmp	w0, 95
	beq	.L67
	ldrb	w0, [sp, 31]
	bl	matchalpha
	cmp	w0, 0
	bne	.L67
	ldrb	w0, [sp, 31]
	bl	matchdigit
	cmp	w0, 0
	beq	.L68
.L67:
	mov	w0, 1
	b	.L70
.L68:
	mov	w0, 0
.L70:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10:
	.size	matchalphanum, .-matchalphanum
	.align	2
	.type	matchrange, %function
matchrange:
.LFB11:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strb	w0, [sp, 15]
	str	x1, [sp]
	ldrb	w0, [sp, 15]
	cmp	w0, 45
	beq	.L72
	ldr	x0, [sp]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L72
	ldr	x0, [sp]
	ldrb	w0, [x0]
	cmp	w0, 45
	beq	.L72
	ldr	x0, [sp]
	add	x0, x0, 1
	ldrb	w0, [x0]
	cmp	w0, 45
	bne	.L72
	ldr	x0, [sp]
	add	x0, x0, 2
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L72
	ldr	x0, [sp]
	ldrb	w0, [x0]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bcc	.L72
	ldr	x0, [sp]
	add	x0, x0, 2
	ldrb	w0, [x0]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bhi	.L72
	mov	w0, 1
	b	.L74
.L72:
	mov	w0, 0
.L74:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11:
	.size	matchrange, .-matchrange
	.align	2
	.type	matchdot, %function
matchdot:
.LFB12:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strb	w0, [sp, 15]
	mov	w0, 1
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE12:
	.size	matchdot, .-matchdot
	.align	2
	.type	ismetachar, %function
ismetachar:
.LFB13:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strb	w0, [sp, 15]
	ldrb	w0, [sp, 15]
	cmp	w0, 115
	beq	.L78
	ldrb	w0, [sp, 15]
	cmp	w0, 83
	beq	.L78
	ldrb	w0, [sp, 15]
	cmp	w0, 119
	beq	.L78
	ldrb	w0, [sp, 15]
	cmp	w0, 87
	beq	.L78
	ldrb	w0, [sp, 15]
	cmp	w0, 100
	beq	.L78
	ldrb	w0, [sp, 15]
	cmp	w0, 68
	bne	.L79
.L78:
	mov	w0, 1
	b	.L81
.L79:
	mov	w0, 0
.L81:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE13:
	.size	ismetachar, .-ismetachar
	.align	2
	.type	matchmetachar, %function
matchmetachar:
.LFB14:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	strb	w0, [sp, 31]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	cmp	w0, 119
	beq	.L83
	cmp	w0, 119
	bgt	.L84
	cmp	w0, 115
	beq	.L85
	cmp	w0, 115
	bgt	.L84
	cmp	w0, 100
	beq	.L86
	cmp	w0, 100
	bgt	.L84
	cmp	w0, 87
	beq	.L87
	cmp	w0, 87
	bgt	.L84
	cmp	w0, 68
	beq	.L88
	cmp	w0, 83
	beq	.L89
	b	.L84
.L86:
	ldrb	w0, [sp, 31]
	bl	matchdigit
	b	.L90
.L88:
	ldrb	w0, [sp, 31]
	bl	matchdigit
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	b	.L90
.L83:
	ldrb	w0, [sp, 31]
	bl	matchalphanum
	b	.L90
.L87:
	ldrb	w0, [sp, 31]
	bl	matchalphanum
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	b	.L90
.L85:
	ldrb	w0, [sp, 31]
	bl	matchwhitespace
	b	.L90
.L89:
	ldrb	w0, [sp, 31]
	bl	matchwhitespace
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	b	.L90
.L84:
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	ldrb	w1, [sp, 31]
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
.L90:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE14:
	.size	matchmetachar, .-matchmetachar
	.align	2
	.type	matchcharclass, %function
matchcharclass:
.LFB15:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	strb	w0, [sp, 31]
	str	x1, [sp, 16]
.L101:
	ldr	x1, [sp, 16]
	ldrb	w0, [sp, 31]
	bl	matchrange
	cmp	w0, 0
	beq	.L92
	mov	w0, 1
	b	.L93
.L92:
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	cmp	w0, 92
	bne	.L94
	ldr	x0, [sp, 16]
	add	x0, x0, 1
	str	x0, [sp, 16]
	ldr	x1, [sp, 16]
	ldrb	w0, [sp, 31]
	bl	matchmetachar
	cmp	w0, 0
	beq	.L95
	mov	w0, 1
	b	.L93
.L95:
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	ldrb	w1, [sp, 31]
	cmp	w1, w0
	bne	.L96
	ldrb	w0, [sp, 31]
	bl	ismetachar
	cmp	w0, 0
	bne	.L96
	mov	w0, 1
	b	.L93
.L94:
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	ldrb	w1, [sp, 31]
	cmp	w1, w0
	bne	.L96
	ldrb	w0, [sp, 31]
	cmp	w0, 45
	bne	.L97
	ldr	x0, [sp, 16]
	sub	x0, x0, #1
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L98
	ldr	x0, [sp, 16]
	add	x0, x0, 1
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L99
.L98:
	mov	w0, 1
	b	.L93
.L99:
	mov	w0, 0
	b	.L93
.L97:
	mov	w0, 1
	b	.L93
.L96:
	ldr	x0, [sp, 16]
	add	x1, x0, 1
	str	x1, [sp, 16]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L101
	mov	w0, 0
.L93:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE15:
	.size	matchcharclass, .-matchcharclass
	.align	2
	.type	matchone, %function
matchone:
.LFB16:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x0, x1, [sp, 32]
	strb	w2, [sp, 31]
	ldrb	w0, [sp, 32]
	cmp	w0, 15
	beq	.L103
	cmp	w0, 15
	bgt	.L104
	cmp	w0, 14
	beq	.L105
	cmp	w0, 14
	bgt	.L104
	cmp	w0, 13
	beq	.L106
	cmp	w0, 13
	bgt	.L104
	cmp	w0, 12
	beq	.L107
	cmp	w0, 12
	bgt	.L104
	cmp	w0, 11
	beq	.L108
	cmp	w0, 11
	bgt	.L104
	cmp	w0, 10
	beq	.L109
	cmp	w0, 10
	bgt	.L104
	cmp	w0, 9
	beq	.L110
	cmp	w0, 9
	bgt	.L104
	cmp	w0, 1
	beq	.L111
	cmp	w0, 8
	beq	.L112
	b	.L104
.L111:
	ldrb	w0, [sp, 31]
	bl	matchdot
	b	.L113
.L112:
	ldr	x0, [sp, 40]
	mov	x1, x0
	ldrb	w0, [sp, 31]
	bl	matchcharclass
	b	.L113
.L110:
	ldr	x0, [sp, 40]
	mov	x1, x0
	ldrb	w0, [sp, 31]
	bl	matchcharclass
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	b	.L113
.L109:
	ldrb	w0, [sp, 31]
	bl	matchdigit
	b	.L113
.L108:
	ldrb	w0, [sp, 31]
	bl	matchdigit
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	b	.L113
.L107:
	ldrb	w0, [sp, 31]
	bl	matchalphanum
	b	.L113
.L106:
	ldrb	w0, [sp, 31]
	bl	matchalphanum
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	b	.L113
.L105:
	ldrb	w0, [sp, 31]
	bl	matchwhitespace
	b	.L113
.L103:
	ldrb	w0, [sp, 31]
	bl	matchwhitespace
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	b	.L113
.L104:
	ldrb	w0, [sp, 40]
	ldrb	w1, [sp, 31]
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
.L113:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE16:
	.size	matchone, .-matchone
	.align	2
	.type	matchstar, %function
matchstar:
.LFB17:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x0, x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	str	x4, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	str	w0, [sp, 68]
	ldr	x0, [sp, 32]
	str	x0, [sp, 72]
	b	.L115
.L117:
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	add	w1, w0, 1
	ldr	x0, [sp, 24]
	str	w1, [x0]
.L115:
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L118
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	mov	w2, w0
	ldp	x0, x1, [sp, 48]
	bl	matchone
	cmp	w0, 0
	bne	.L117
	b	.L118
.L121:
	ldr	x0, [sp, 32]
	sub	x1, x0, #1
	str	x1, [sp, 32]
	ldr	x2, [sp, 24]
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	matchpattern
	cmp	w0, 0
	beq	.L119
	mov	w0, 1
	b	.L120
.L119:
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	sub	w1, w0, #1
	ldr	x0, [sp, 24]
	str	w1, [x0]
.L118:
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 72]
	cmp	x1, x0
	bcs	.L121
	ldr	x0, [sp, 24]
	ldr	w1, [sp, 68]
	str	w1, [x0]
	mov	w0, 0
.L120:
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE17:
	.size	matchstar, .-matchstar
	.align	2
	.type	matchplus, %function
matchplus:
.LFB18:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x0, x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	str	x4, [sp, 24]
	ldr	x0, [sp, 32]
	str	x0, [sp, 72]
	b	.L123
.L125:
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	add	w1, w0, 1
	ldr	x0, [sp, 24]
	str	w1, [x0]
.L123:
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L126
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	mov	w2, w0
	ldp	x0, x1, [sp, 48]
	bl	matchone
	cmp	w0, 0
	bne	.L125
	b	.L126
.L129:
	ldr	x0, [sp, 32]
	sub	x1, x0, #1
	str	x1, [sp, 32]
	ldr	x2, [sp, 24]
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	matchpattern
	cmp	w0, 0
	beq	.L127
	mov	w0, 1
	b	.L128
.L127:
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	sub	w1, w0, #1
	ldr	x0, [sp, 24]
	str	w1, [x0]
.L126:
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 72]
	cmp	x1, x0
	bhi	.L129
	mov	w0, 0
.L128:
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE18:
	.size	matchplus, .-matchplus
	.align	2
	.type	matchquestion, %function
matchquestion:
.LFB19:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	stp	x0, x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	str	x4, [sp, 24]
	ldrb	w0, [sp, 48]
	cmp	w0, 0
	bne	.L131
	mov	w0, 1
	b	.L132
.L131:
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	matchpattern
	cmp	w0, 0
	beq	.L133
	mov	w0, 1
	b	.L132
.L133:
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L134
	ldr	x0, [sp, 32]
	add	x1, x0, 1
	str	x1, [sp, 32]
	ldrb	w0, [x0]
	mov	w2, w0
	ldp	x0, x1, [sp, 48]
	bl	matchone
	cmp	w0, 0
	beq	.L134
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	matchpattern
	cmp	w0, 0
	beq	.L134
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	add	w1, w0, 1
	ldr	x0, [sp, 24]
	str	w1, [x0]
	mov	w0, 1
	b	.L132
.L134:
	mov	w0, 0
.L132:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE19:
	.size	matchquestion, .-matchquestion
	.align	2
	.type	matchpattern, %function
matchpattern:
.LFB20:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	str	w0, [sp, 60]
.L143:
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L136
	ldr	x0, [sp, 40]
	add	x0, x0, 16
	ldrb	w0, [x0]
	cmp	w0, 4
	bne	.L137
.L136:
	ldr	x0, [sp, 40]
	add	x1, x0, 32
	ldr	x0, [sp, 40]
	ldr	x4, [sp, 24]
	ldr	x3, [sp, 32]
	mov	x2, x1
	ldp	x0, x1, [x0]
	bl	matchquestion
	b	.L138
.L137:
	ldr	x0, [sp, 40]
	add	x0, x0, 16
	ldrb	w0, [x0]
	cmp	w0, 5
	bne	.L139
	ldr	x0, [sp, 40]
	add	x1, x0, 32
	ldr	x0, [sp, 40]
	ldr	x4, [sp, 24]
	ldr	x3, [sp, 32]
	mov	x2, x1
	ldp	x0, x1, [x0]
	bl	matchstar
	b	.L138
.L139:
	ldr	x0, [sp, 40]
	add	x0, x0, 16
	ldrb	w0, [x0]
	cmp	w0, 6
	bne	.L140
	ldr	x0, [sp, 40]
	add	x1, x0, 32
	ldr	x0, [sp, 40]
	ldr	x4, [sp, 24]
	ldr	x3, [sp, 32]
	mov	x2, x1
	ldp	x0, x1, [x0]
	bl	matchplus
	b	.L138
.L140:
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	cmp	w0, 3
	bne	.L141
	ldr	x0, [sp, 40]
	add	x0, x0, 16
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L141
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	b	.L138
.L141:
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	add	w1, w0, 1
	ldr	x0, [sp, 24]
	str	w1, [x0]
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L142
	ldr	x0, [sp, 40]
	add	x1, x0, 16
	str	x1, [sp, 40]
	ldr	x1, [sp, 32]
	add	x2, x1, 1
	str	x2, [sp, 32]
	ldrb	w1, [x1]
	mov	w2, w1
	ldp	x0, x1, [x0]
	bl	matchone
	cmp	w0, 0
	bne	.L143
.L142:
	ldr	x0, [sp, 24]
	ldr	w1, [sp, 60]
	str	w1, [x0]
	mov	w0, 0
.L138:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE20:
	.size	matchpattern, .-matchpattern
	.global	test_vector
	.section	.rodata
	.align	3
.LC25:
	.string	"\\d"
	.align	3
.LC26:
	.string	"5"
	.align	3
.LC27:
	.string	"\\w+"
	.align	3
.LC28:
	.string	"hej"
	.align	3
.LC29:
	.string	"\\s"
	.align	3
.LC30:
	.string	"\t \n"
	.align	3
.LC31:
	.string	"\\S"
	.align	3
.LC32:
	.string	"[\\s]"
	.align	3
.LC33:
	.string	"[\\S]"
	.align	3
.LC34:
	.string	"\\D"
	.align	3
.LC35:
	.string	"\\W+"
	.align	3
.LC36:
	.string	"[0-9]+"
	.align	3
.LC37:
	.string	"12345"
	.align	3
.LC38:
	.string	"[^\\w]"
	.align	3
.LC39:
	.string	"\\"
	.align	3
.LC40:
	.string	"[\\W]"
	.align	3
.LC41:
	.string	"[\\w]"
	.align	3
.LC42:
	.string	"[^\\d]"
	.align	3
.LC43:
	.string	"d"
	.align	3
.LC44:
	.string	"[\\d]"
	.align	3
.LC45:
	.string	"[^\\D]"
	.align	3
.LC46:
	.string	"[\\D]"
	.align	3
.LC47:
	.string	"^.*\\\\.*$"
	.align	3
.LC48:
	.string	"c:\\Tools"
	.align	3
.LC49:
	.string	"^[\\+-]*[\\d]+$"
	.align	3
.LC50:
	.string	"+27"
	.align	3
.LC51:
	.string	"[abc]"
	.align	3
.LC52:
	.string	"1c2"
	.align	3
.LC53:
	.string	"1C2"
	.align	3
.LC54:
	.string	"[1-5]+"
	.align	3
.LC55:
	.string	"0123456789"
	.align	3
.LC56:
	.string	"[.2]"
	.align	3
.LC57:
	.string	"a*$"
	.align	3
.LC58:
	.string	"Xaa"
	.align	3
.LC59:
	.string	"[a-h]+"
	.align	3
.LC60:
	.string	"abcdefghxxx"
	.align	3
.LC61:
	.string	"ABCDEFGH"
	.align	3
.LC62:
	.string	"[A-H]+"
	.align	3
.LC63:
	.string	"abcdefgh"
	.align	3
.LC64:
	.string	"[^\\s]+"
	.align	3
.LC65:
	.string	"abc def"
	.align	3
.LC66:
	.string	"[^fc]+"
	.align	3
.LC67:
	.string	"[^d\\sf]+"
	.align	3
.LC68:
	.string	"abc\ndef"
	.align	3
.LC69:
	.string	"b.\\s*\n"
	.align	3
.LC70:
	.string	"aa\r\nbb\r\ncc\r\n\r\n"
	.align	3
.LC71:
	.string	".*c"
	.align	3
.LC72:
	.string	"abcabc"
	.align	3
.LC73:
	.string	".+c"
	.align	3
.LC74:
	.string	"[b-z].*"
	.align	3
.LC75:
	.string	"ab"
	.align	3
.LC76:
	.string	"b[k-z]*"
	.align	3
.LC77:
	.string	"[0-9]"
	.align	3
.LC78:
	.string	"  - "
	.align	3
.LC79:
	.string	"[^0-9]"
	.align	3
.LC80:
	.string	"0|"
	.align	3
.LC81:
	.string	"\\d\\d:\\d\\d:\\d\\d"
	.align	3
.LC82:
	.string	"0s:00:00"
	.align	3
.LC83:
	.string	"000:00"
	.align	3
.LC84:
	.string	"00:0000"
	.align	3
.LC85:
	.string	"100:0:00"
	.align	3
.LC86:
	.string	"00:100:00"
	.align	3
.LC87:
	.string	"0:00:100"
	.align	3
.LC88:
	.string	"\\d\\d?:\\d\\d?:\\d\\d?"
	.align	3
.LC89:
	.string	"0:0:0"
	.align	3
.LC90:
	.string	"0:00:0"
	.align	3
.LC91:
	.string	"0:0:00"
	.align	3
.LC92:
	.string	"00:0:0"
	.align	3
.LC93:
	.string	"00:00:0"
	.align	3
.LC94:
	.string	"00:0:00"
	.align	3
.LC95:
	.string	"0:00:00"
	.align	3
.LC96:
	.string	"00:00:00"
	.align	3
.LC97:
	.string	"[Hh]ello [Ww]orld\\s*[!]?"
	.align	3
.LC98:
	.string	"Hello world !"
	.align	3
.LC99:
	.string	"hello world !"
	.align	3
.LC100:
	.string	"Hello World !"
	.align	3
.LC101:
	.string	"Hello world!   "
	.align	3
.LC102:
	.string	"Hello world  !"
	.align	3
.LC103:
	.string	"hello World    !"
	.align	3
.LC104:
	.string	"a:0"
	.align	3
.LC105:
	.string	".?bar"
	.align	3
.LC106:
	.string	"real_bar"
	.align	3
.LC107:
	.string	"real_foo"
	.align	3
.LC108:
	.string	"X?Y"
	.align	3
.LC109:
	.string	"Z"
	.align	3
.LC110:
	.string	"[a-z]+\nbreak"
	.align	3
.LC111:
	.string	"blahblah\nbreak"
	.align	3
.LC112:
	.string	"[a-z\\s]+\nbreak"
	.align	3
.LC113:
	.string	"bla bla \nbreak"
	.section	.data.rel.local,"aw"
	.align	3
	.type	test_vector, %object
	.size	test_vector, 2176
test_vector:
	.xword	1
	.xword	.LC25
	.xword	.LC26
	.xword	1
	.xword	1
	.xword	.LC27
	.xword	.LC28
	.xword	3
	.xword	1
	.xword	.LC29
	.xword	.LC30
	.xword	1
	.xword	0
	.xword	.LC31
	.xword	.LC30
	.xword	0
	.xword	1
	.xword	.LC32
	.xword	.LC30
	.xword	1
	.xword	0
	.xword	.LC33
	.xword	.LC30
	.xword	0
	.xword	0
	.xword	.LC34
	.xword	.LC26
	.xword	0
	.xword	0
	.xword	.LC35
	.xword	.LC28
	.xword	0
	.xword	1
	.xword	.LC36
	.xword	.LC37
	.xword	5
	.xword	1
	.xword	.LC34
	.xword	.LC28
	.xword	1
	.xword	0
	.xword	.LC25
	.xword	.LC28
	.xword	0
	.xword	1
	.xword	.LC38
	.xword	.LC39
	.xword	1
	.xword	1
	.xword	.LC40
	.xword	.LC39
	.xword	1
	.xword	0
	.xword	.LC41
	.xword	.LC39
	.xword	0
	.xword	1
	.xword	.LC42
	.xword	.LC43
	.xword	1
	.xword	0
	.xword	.LC44
	.xword	.LC43
	.xword	0
	.xword	0
	.xword	.LC45
	.xword	.LC43
	.xword	0
	.xword	1
	.xword	.LC46
	.xword	.LC43
	.xword	1
	.xword	1
	.xword	.LC47
	.xword	.LC48
	.xword	8
	.xword	1
	.xword	.LC49
	.xword	.LC50
	.xword	3
	.xword	1
	.xword	.LC51
	.xword	.LC52
	.xword	1
	.xword	0
	.xword	.LC51
	.xword	.LC53
	.xword	0
	.xword	1
	.xword	.LC54
	.xword	.LC55
	.xword	5
	.xword	1
	.xword	.LC56
	.xword	.LC53
	.xword	1
	.xword	1
	.xword	.LC57
	.xword	.LC58
	.xword	2
	.xword	1
	.xword	.LC57
	.xword	.LC58
	.xword	2
	.xword	1
	.xword	.LC59
	.xword	.LC60
	.xword	8
	.xword	0
	.xword	.LC59
	.xword	.LC61
	.xword	0
	.xword	1
	.xword	.LC62
	.xword	.LC61
	.xword	8
	.xword	0
	.xword	.LC62
	.xword	.LC63
	.xword	0
	.xword	1
	.xword	.LC64
	.xword	.LC65
	.xword	3
	.xword	1
	.xword	.LC66
	.xword	.LC65
	.xword	2
	.xword	1
	.xword	.LC67
	.xword	.LC65
	.xword	3
	.xword	1
	.xword	.LC24
	.xword	.LC68
	.xword	1
	.xword	1
	.xword	.LC69
	.xword	.LC70
	.xword	4
	.xword	1
	.xword	.LC71
	.xword	.LC72
	.xword	6
	.xword	1
	.xword	.LC73
	.xword	.LC72
	.xword	6
	.xword	1
	.xword	.LC74
	.xword	.LC75
	.xword	1
	.xword	1
	.xword	.LC76
	.xword	.LC75
	.xword	1
	.xword	0
	.xword	.LC77
	.xword	.LC78
	.xword	0
	.xword	1
	.xword	.LC79
	.xword	.LC78
	.xword	1
	.xword	1
	.xword	.LC80
	.xword	.LC80
	.xword	2
	.xword	0
	.xword	.LC81
	.xword	.LC82
	.xword	0
	.xword	0
	.xword	.LC81
	.xword	.LC83
	.xword	0
	.xword	0
	.xword	.LC81
	.xword	.LC84
	.xword	0
	.xword	0
	.xword	.LC81
	.xword	.LC85
	.xword	0
	.xword	0
	.xword	.LC81
	.xword	.LC86
	.xword	0
	.xword	0
	.xword	.LC81
	.xword	.LC87
	.xword	0
	.xword	1
	.xword	.LC88
	.xword	.LC89
	.xword	5
	.xword	1
	.xword	.LC88
	.xword	.LC90
	.xword	6
	.xword	1
	.xword	.LC88
	.xword	.LC91
	.xword	5
	.xword	1
	.xword	.LC88
	.xword	.LC92
	.xword	6
	.xword	1
	.xword	.LC88
	.xword	.LC93
	.xword	7
	.xword	1
	.xword	.LC88
	.xword	.LC94
	.xword	6
	.xword	1
	.xword	.LC88
	.xword	.LC95
	.xword	6
	.xword	1
	.xword	.LC88
	.xword	.LC96
	.xword	7
	.xword	1
	.xword	.LC97
	.xword	.LC98
	.xword	12
	.xword	1
	.xword	.LC97
	.xword	.LC99
	.xword	12
	.xword	1
	.xword	.LC97
	.xword	.LC100
	.xword	12
	.xword	1
	.xword	.LC97
	.xword	.LC101
	.xword	11
	.xword	1
	.xword	.LC97
	.xword	.LC102
	.xword	13
	.xword	1
	.xword	.LC97
	.xword	.LC103
	.xword	15
	.xword	0
	.xword	.LC88
	.xword	.LC104
	.xword	0
	.xword	1
	.xword	.LC105
	.xword	.LC106
	.xword	4
	.xword	0
	.xword	.LC105
	.xword	.LC107
	.xword	0
	.xword	0
	.xword	.LC108
	.xword	.LC109
	.xword	0
	.xword	1
	.xword	.LC110
	.xword	.LC111
	.xword	14
	.xword	1
	.xword	.LC112
	.xword	.LC113
	.xword	14
	.section	.rodata
	.align	3
.LC114:
	.string	"[%lu/%lu]: pattern '%s' matched '%s' unexpectedly, matched %i chars. \n"
	.align	3
.LC115:
	.string	"[%lu/%lu]: pattern '%s' didn't match '%s' as expected. \n"
	.align	3
.LC116:
	.string	"[%lu/%lu]: pattern '%s' matched '%i' chars of '%s'; expected '%i'. \n"
	.align	3
.LC117:
	.string	"%lu/%lu tests succeeded.\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB21:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	mov	x0, 68
	str	x0, [sp, 32]
	str	xzr, [sp, 16]
	str	xzr, [sp, 24]
	b	.L145
.L149:
	adrp	x0, test_vector
	add	x1, x0, :lo12:test_vector
	ldr	x0, [sp, 24]
	lsl	x0, x0, 5
	add	x0, x1, x0
	ldr	x0, [x0, 8]
	str	x0, [sp, 40]
	adrp	x0, test_vector
	add	x1, x0, :lo12:test_vector
	ldr	x0, [sp, 24]
	lsl	x0, x0, 5
	add	x0, x1, x0
	ldr	x0, [x0, 16]
	str	x0, [sp, 48]
	adrp	x0, test_vector
	add	x1, x0, :lo12:test_vector
	ldr	x0, [sp, 24]
	lsl	x0, x0, 5
	add	x0, x1, x0
	ldr	x0, [x0]
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	str	w0, [sp, 4]
	adrp	x0, test_vector
	add	x1, x0, :lo12:test_vector
	ldr	x0, [sp, 24]
	lsl	x0, x0, 5
	add	x0, x1, x0
	ldr	x0, [x0, 24]
	str	w0, [sp, 8]
	mov	x0, sp
	mov	x2, x0
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 40]
	bl	re_match
	str	w0, [sp, 12]
	ldr	w0, [sp, 4]
	cmp	w0, 0
	beq	.L146
	ldr	w0, [sp, 12]
	cmn	w0, #1
	beq	.L147
	adrp	x0, .LC24
	add	x0, x0, :lo12:.LC24
	bl	libmin_printf
	ldr	x0, [sp, 40]
	bl	re_compile
	bl	re_print
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	ldr	w1, [sp]
	mov	w5, w1
	ldr	x4, [sp, 48]
	ldr	x3, [sp, 40]
	ldr	x2, [sp, 32]
	mov	x1, x0
	adrp	x0, .LC114
	add	x0, x0, :lo12:.LC114
	bl	libmin_printf
	ldr	x0, [sp, 16]
	add	x0, x0, 1
	str	x0, [sp, 16]
	b	.L147
.L146:
	ldr	w0, [sp, 12]
	cmn	w0, #1
	bne	.L148
	adrp	x0, .LC24
	add	x0, x0, :lo12:.LC24
	bl	libmin_printf
	ldr	x0, [sp, 40]
	bl	re_compile
	bl	re_print
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	ldr	x4, [sp, 48]
	ldr	x3, [sp, 40]
	ldr	x2, [sp, 32]
	mov	x1, x0
	adrp	x0, .LC115
	add	x0, x0, :lo12:.LC115
	bl	libmin_printf
	ldr	x0, [sp, 16]
	add	x0, x0, 1
	str	x0, [sp, 16]
	b	.L147
.L148:
	ldr	w0, [sp]
	ldr	w1, [sp, 8]
	cmp	w1, w0
	beq	.L147
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	ldr	w1, [sp]
	ldr	w6, [sp, 8]
	ldr	x5, [sp, 48]
	mov	w4, w1
	ldr	x3, [sp, 40]
	ldr	x2, [sp, 32]
	mov	x1, x0
	adrp	x0, .LC116
	add	x0, x0, :lo12:.LC116
	bl	libmin_printf
	ldr	x0, [sp, 16]
	add	x0, x0, 1
	str	x0, [sp, 16]
.L147:
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
.L145:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bcc	.L149
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 16]
	sub	x0, x1, x0
	ldr	x2, [sp, 32]
	mov	x1, x0
	adrp	x0, .LC117
	add	x0, x0, :lo12:.LC117
	bl	libmin_printf
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L150
	ldr	x0, [sp, 16]
	b	.L152
.L150:
	bl	libmin_success
	mov	w0, 0
.L152:
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L153
	bl	__stack_chk_fail
.L153:
	mov	w0, w1
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE21:
	.size	main, .-main
	.local	re_compiled.1
	.comm	re_compiled.1,480,8
	.local	ccl_buf.0
	.comm	ccl_buf.0,40,8
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
