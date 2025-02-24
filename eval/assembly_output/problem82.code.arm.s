	.arch armv8-a
	.file	"code.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"A+"
	.align	3
.LC1:
	.string	"A"
	.align	3
.LC2:
	.string	"A-"
	.align	3
.LC3:
	.string	"B+"
	.align	3
.LC4:
	.string	"B"
	.align	3
.LC5:
	.string	"B-"
	.align	3
.LC6:
	.string	"C+"
	.align	3
.LC7:
	.string	"C"
	.align	3
.LC8:
	.string	"C-"
	.align	3
.LC9:
	.string	"D+"
	.align	3
.LC10:
	.string	"D"
	.align	3
.LC11:
	.string	"D-"
	.align	3
.LC12:
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
	adrp	x0, .LC13
	ldr	d1, [x0, #:lo12:.LC13]
	fcmpe	d0, d1
	bge	.L30
	b	.L42
.L30:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	adrp	x1, .LC0
	add	x1, x1, :lo12:.LC0
	str	x1, [x0]
	b	.L5
.L42:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcvt	d0, s0
	adrp	x0, .LC14
	ldr	d1, [x0, #:lo12:.LC14]
	fcmpe	d0, d1
	bgt	.L31
	b	.L43
.L31:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	adrp	x1, .LC1
	add	x1, x1, :lo12:.LC1
	str	x1, [x0]
	b	.L5
.L43:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcvt	d0, s0
	adrp	x0, .LC15
	ldr	d1, [x0, #:lo12:.LC15]
	fcmpe	d0, d1
	bgt	.L32
	b	.L44
.L32:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	adrp	x1, .LC2
	add	x1, x1, :lo12:.LC2
	str	x1, [x0]
	b	.L5
.L44:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcvt	d0, s0
	adrp	x0, .LC16
	ldr	d1, [x0, #:lo12:.LC16]
	fcmpe	d0, d1
	bgt	.L33
	b	.L45
.L33:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	adrp	x1, .LC3
	add	x1, x1, :lo12:.LC3
	str	x1, [x0]
	b	.L5
.L45:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcvt	d0, s0
	adrp	x0, .LC17
	ldr	d1, [x0, #:lo12:.LC17]
	fcmpe	d0, d1
	bgt	.L34
	b	.L46
.L34:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	adrp	x1, .LC4
	add	x1, x1, :lo12:.LC4
	str	x1, [x0]
	b	.L5
.L46:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcvt	d0, s0
	adrp	x0, .LC18
	ldr	d1, [x0, #:lo12:.LC18]
	fcmpe	d0, d1
	bgt	.L35
	b	.L47
.L35:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	adrp	x1, .LC5
	add	x1, x1, :lo12:.LC5
	str	x1, [x0]
	b	.L5
.L47:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcvt	d0, s0
	adrp	x0, .LC19
	ldr	d1, [x0, #:lo12:.LC19]
	fcmpe	d0, d1
	bgt	.L36
	b	.L48
.L36:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	adrp	x1, .LC6
	add	x1, x1, :lo12:.LC6
	str	x1, [x0]
	b	.L5
.L48:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcvt	d0, s0
	adrp	x0, .LC20
	ldr	d1, [x0, #:lo12:.LC20]
	fcmpe	d0, d1
	bgt	.L37
	b	.L49
.L37:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	adrp	x1, .LC7
	add	x1, x1, :lo12:.LC7
	str	x1, [x0]
	b	.L5
.L49:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcvt	d0, s0
	adrp	x0, .LC21
	ldr	d1, [x0, #:lo12:.LC21]
	fcmpe	d0, d1
	bgt	.L38
	b	.L50
.L38:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	adrp	x1, .LC8
	add	x1, x1, :lo12:.LC8
	str	x1, [x0]
	b	.L5
.L50:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcvt	d0, s0
	adrp	x0, .LC22
	ldr	d1, [x0, #:lo12:.LC22]
	fcmpe	d0, d1
	bgt	.L39
	b	.L51
.L39:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	adrp	x1, .LC9
	add	x1, x1, :lo12:.LC9
	str	x1, [x0]
	b	.L5
.L51:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcvt	d0, s0
	adrp	x0, .LC23
	ldr	d1, [x0, #:lo12:.LC23]
	fcmpe	d0, d1
	bgt	.L40
	b	.L52
.L40:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	adrp	x1, .LC10
	add	x1, x1, :lo12:.LC10
	str	x1, [x0]
	b	.L5
.L52:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	s0, [x0]
	fcvt	d0, s0
	adrp	x0, .LC24
	ldr	d1, [x0, #:lo12:.LC24]
	fcmpe	d0, d1
	bgt	.L41
	b	.L53
.L41:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	adrp	x1, .LC11
	add	x1, x1, :lo12:.LC11
	str	x1, [x0]
	b	.L5
.L53:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	adrp	x1, .LC12
	add	x1, x1, :lo12:.LC12
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
	.section	.rodata
	.align	3
.LC13:
	.word	-1841681977
	.word	1074790347
	.align	3
.LC14:
	.word	123695058
	.word	1074633166
	.align	3
.LC15:
	.word	-735298401
	.word	1074423450
	.align	3
.LC16:
	.word	1841681977
	.word	1074266164
	.align	3
.LC17:
	.word	123695058
	.word	1074108878
	.align	3
.LC18:
	.word	-735298401
	.word	1073899162
	.align	3
.LC19:
	.word	1841681977
	.word	1073741876
	.align	3
.LC20:
	.word	247390116
	.word	1073427356
	.align	3
.LC21:
	.word	-1470596802
	.word	1073007925
	.align	3
.LC22:
	.word	-611603343
	.word	1072693352
	.align	3
.LC23:
	.word	494780232
	.word	1072064312
	.align	3
.LC24:
	.word	-350469331
	.word	1058682594
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
