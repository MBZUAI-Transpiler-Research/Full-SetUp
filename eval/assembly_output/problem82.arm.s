	.arch armv8-a
	.file	"problem82.c"
	.text
	.section	.rodata
	.align	3
.LC1:
	.string	"A+"
	.align	3
.LC12:
	.string	"A"
	.align	3
.LC5:
	.string	"A-"
	.align	3
.LC10:
	.string	"B+"
	.align	3
.LC2:
	.string	"B"
	.align	3
.LC13:
	.string	"B-"
	.align	3
.LC14:
	.string	"C+"
	.align	3
.LC4:
	.string	"C"
	.align	3
.LC3:
	.string	"C-"
	.align	3
.LC15:
	.string	"D+"
	.align	3
.LC8:
	.string	"D"
	.align	3
.LC9:
	.string	"D-"
	.align	3
.LC16:
	.string	"E"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [sp, 40]
	str	wzr, [sp, 36]
	b	.L2
.L28:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcvt	d0, s0
	adrp	x0, .LC17
	ldr	d1, [x0, #:lo12:.LC17]
	fcmpe	d0, d1
	bge	.L30
	b	.L42
.L30:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	adrp	x1, .LC1
	add	x1, x1, :lo12:.LC1
	str	x1, [x0]
	b	.L5
.L42:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcvt	d0, s0
	adrp	x0, .LC18
	ldr	d1, [x0, #:lo12:.LC18]
	fcmpe	d0, d1
	bgt	.L31
	b	.L43
.L31:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	adrp	x1, .LC12
	add	x1, x1, :lo12:.LC12
	str	x1, [x0]
	b	.L5
.L43:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcvt	d0, s0
	adrp	x0, .LC19
	ldr	d1, [x0, #:lo12:.LC19]
	fcmpe	d0, d1
	bgt	.L32
	b	.L44
.L32:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	adrp	x1, .LC5
	add	x1, x1, :lo12:.LC5
	str	x1, [x0]
	b	.L5
.L44:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcvt	d0, s0
	adrp	x0, .LC20
	ldr	d1, [x0, #:lo12:.LC20]
	fcmpe	d0, d1
	bgt	.L33
	b	.L45
.L33:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	adrp	x1, .LC10
	add	x1, x1, :lo12:.LC10
	str	x1, [x0]
	b	.L5
.L45:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcvt	d0, s0
	adrp	x0, .LC21
	ldr	d1, [x0, #:lo12:.LC21]
	fcmpe	d0, d1
	bgt	.L34
	b	.L46
.L34:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	adrp	x1, .LC2
	add	x1, x1, :lo12:.LC2
	str	x1, [x0]
	b	.L5
.L46:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcvt	d0, s0
	adrp	x0, .LC22
	ldr	d1, [x0, #:lo12:.LC22]
	fcmpe	d0, d1
	bgt	.L35
	b	.L47
.L35:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	adrp	x1, .LC13
	add	x1, x1, :lo12:.LC13
	str	x1, [x0]
	b	.L5
.L47:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcvt	d0, s0
	adrp	x0, .LC23
	ldr	d1, [x0, #:lo12:.LC23]
	fcmpe	d0, d1
	bgt	.L36
	b	.L48
.L36:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	adrp	x1, .LC14
	add	x1, x1, :lo12:.LC14
	str	x1, [x0]
	b	.L5
.L48:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcvt	d0, s0
	adrp	x0, .LC24
	ldr	d1, [x0, #:lo12:.LC24]
	fcmpe	d0, d1
	bgt	.L37
	b	.L49
.L37:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	adrp	x1, .LC4
	add	x1, x1, :lo12:.LC4
	str	x1, [x0]
	b	.L5
.L49:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcvt	d0, s0
	adrp	x0, .LC25
	ldr	d1, [x0, #:lo12:.LC25]
	fcmpe	d0, d1
	bgt	.L38
	b	.L50
.L38:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	adrp	x1, .LC3
	add	x1, x1, :lo12:.LC3
	str	x1, [x0]
	b	.L5
.L50:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcvt	d0, s0
	adrp	x0, .LC26
	ldr	d1, [x0, #:lo12:.LC26]
	fcmpe	d0, d1
	bgt	.L39
	b	.L51
.L39:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	adrp	x1, .LC15
	add	x1, x1, :lo12:.LC15
	str	x1, [x0]
	b	.L5
.L51:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcvt	d0, s0
	adrp	x0, .LC27
	ldr	d1, [x0, #:lo12:.LC27]
	fcmpe	d0, d1
	bgt	.L40
	b	.L52
.L40:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	adrp	x1, .LC8
	add	x1, x1, :lo12:.LC8
	str	x1, [x0]
	b	.L5
.L52:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcvt	d0, s0
	adrp	x0, .LC28
	ldr	d1, [x0, #:lo12:.LC28]
	fcmpe	d0, d1
	bgt	.L41
	b	.L53
.L41:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	adrp	x1, .LC9
	add	x1, x1, :lo12:.LC9
	str	x1, [x0]
	b	.L5
.L53:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	adrp	x1, .LC16
	add	x1, x1, :lo12:.LC16
	str	x1, [x0]
.L5:
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L2:
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L28
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.align	2
	.global	issame
	.type	issame, %function
issame:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	w2, [sp, 28]
	str	wzr, [sp, 60]
	b	.L55
.L58:
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x2, [x0]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x1, x0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L56
	mov	w0, 0
	b	.L57
.L56:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L55:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L58
	mov	w0, 1
.L57:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC30:
	.string	"problem82.c"
	.align	3
.LC31:
	.string	"issame(result1, expected1, 5)"
	.align	3
.LC32:
	.string	"issame(result2, expected2, 1)"
	.align	3
.LC33:
	.string	"issame(result3, expected3, 1)"
	.align	3
.LC34:
	.string	"issame(result4, expected4, 1)"
	.align	3
.LC36:
	.string	"issame(result5, expected5, 5)"
	.align	3
.LC37:
	.string	"issame(result6, expected6, 2)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #272
	.cfi_def_cfa_offset 272
	stp	x29, x30, [sp, 256]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 256
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 248]
	mov	x1, 0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	add	x2, sp, 120
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	adrp	x0, .LC29
	add	x1, x0, :lo12:.LC29
	add	x0, sp, 168
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	x1, [x1, 32]
	str	x1, [x0, 32]
	add	x0, sp, 120
	mov	w1, 5
	bl	func0
	str	x0, [sp]
	add	x0, sp, 168
	mov	w2, 5
	mov	x1, x0
	ldr	x0, [sp]
	bl	issame
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L60
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 42
	adrp	x0, .LC30
	add	x1, x0, :lo12:.LC30
	adrp	x0, .LC31
	add	x0, x0, :lo12:.LC31
	bl	__assert_fail
.L60:
	ldr	x0, [sp]
	bl	free
	mov	w0, 39322
	movk	w0, 0x3f99, lsl 16
	fmov	s0, w0
	str	s0, [sp, 48]
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	str	x0, [sp, 72]
	add	x0, sp, 48
	mov	w1, 1
	bl	func0
	str	x0, [sp, 8]
	add	x0, sp, 72
	mov	w2, 1
	mov	x1, x0
	ldr	x0, [sp, 8]
	bl	issame
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L61
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 48
	adrp	x0, .LC30
	add	x1, x0, :lo12:.LC30
	adrp	x0, .LC32
	add	x0, x0, :lo12:.LC32
	bl	__assert_fail
.L61:
	ldr	x0, [sp, 8]
	bl	free
	fmov	s0, 5.0e-1
	str	s0, [sp, 56]
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	str	x0, [sp, 80]
	add	x0, sp, 56
	mov	w1, 1
	bl	func0
	str	x0, [sp, 16]
	add	x0, sp, 80
	mov	w2, 1
	mov	x1, x0
	ldr	x0, [sp, 16]
	bl	issame
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L62
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 54
	adrp	x0, .LC30
	add	x1, x0, :lo12:.LC30
	adrp	x0, .LC33
	add	x0, x0, :lo12:.LC33
	bl	__assert_fail
.L62:
	ldr	x0, [sp, 16]
	bl	free
	str	wzr, [sp, 64]
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	str	x0, [sp, 88]
	add	x0, sp, 64
	mov	w1, 1
	bl	func0
	str	x0, [sp, 24]
	add	x0, sp, 88
	mov	w2, 1
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	issame
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L63
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 60
	adrp	x0, .LC30
	add	x1, x0, :lo12:.LC30
	adrp	x0, .LC34
	add	x0, x0, :lo12:.LC34
	bl	__assert_fail
.L63:
	ldr	x0, [sp, 24]
	bl	free
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	add	x2, sp, 144
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	adrp	x0, .LC35
	add	x1, x0, :lo12:.LC35
	add	x0, sp, 208
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	x1, [x1, 32]
	str	x1, [x0, 32]
	add	x0, sp, 144
	mov	w1, 5
	bl	func0
	str	x0, [sp, 32]
	add	x0, sp, 208
	mov	w2, 5
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	issame
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L64
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 66
	adrp	x0, .LC30
	add	x1, x0, :lo12:.LC30
	adrp	x0, .LC36
	add	x0, x0, :lo12:.LC36
	bl	__assert_fail
.L64:
	ldr	x0, [sp, 32]
	bl	free
	str	wzr, [sp, 96]
	mov	w0, 13107
	movk	w0, 0x3f33, lsl 16
	fmov	s0, w0
	str	s0, [sp, 100]
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	str	x0, [sp, 104]
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	str	x0, [sp, 112]
	add	x0, sp, 96
	mov	w1, 2
	bl	func0
	str	x0, [sp, 40]
	add	x0, sp, 104
	mov	w2, 2
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	issame
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L65
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 72
	adrp	x0, .LC30
	add	x1, x0, :lo12:.LC30
	adrp	x0, .LC37
	add	x0, x0, :lo12:.LC37
	bl	__assert_fail
.L65:
	ldr	x0, [sp, 40]
	bl	free
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 248]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L67
	bl	__stack_chk_fail
.L67:
	mov	w0, w1
	ldp	x29, x30, [sp, 256]
	add	sp, sp, 272
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	1082130432
	.word	1077936128
	.word	1071225242
	.word	1073741824
	.word	1080033280
	.data
	.align	3
.LC29:
	.xword	.LC1
	.xword	.LC2
	.xword	.LC3
	.xword	.LC4
	.xword	.LC5
	.section	.rodata
	.align	3
.LC7:
	.word	1065353216
	.word	1050253722
	.word	1069547520
	.word	1077097267
	.word	1079194419
	.data
	.align	3
.LC35:
	.xword	.LC8
	.xword	.LC9
	.xword	.LC3
	.xword	.LC2
	.xword	.LC10
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align	3
.LC17:
	.word	-1841681977
	.word	1074790347
	.align	3
.LC18:
	.word	123695058
	.word	1074633166
	.align	3
.LC19:
	.word	-735298401
	.word	1074423450
	.align	3
.LC20:
	.word	1841681977
	.word	1074266164
	.align	3
.LC21:
	.word	123695058
	.word	1074108878
	.align	3
.LC22:
	.word	-735298401
	.word	1073899162
	.align	3
.LC23:
	.word	1841681977
	.word	1073741876
	.align	3
.LC24:
	.word	247390116
	.word	1073427356
	.align	3
.LC25:
	.word	-1470596802
	.word	1073007925
	.align	3
.LC26:
	.word	-611603343
	.word	1072693352
	.align	3
.LC27:
	.word	494780232
	.word	1072064312
	.align	3
.LC28:
	.word	-350469331
	.word	1058682594
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
