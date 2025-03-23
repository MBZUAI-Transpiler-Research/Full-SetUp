	.arch armv8-a
	.file	"problem95.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	str	wzr, [sp, 24]
	str	wzr, [sp, 28]
	str	wzr, [sp, 32]
	b	.L2
.L8:
	ldrsw	x0, [sp, 32]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 1
	ble	.L3
	mov	w0, 1
	str	w0, [sp, 36]
	mov	w0, 2
	str	w0, [sp, 40]
	b	.L4
.L7:
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 40]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 40]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L5
	str	wzr, [sp, 36]
	b	.L6
.L5:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L4:
	ldr	w0, [sp, 40]
	mul	w0, w0, w0
	ldr	w1, [sp, 44]
	cmp	w1, w0
	bge	.L7
.L6:
	ldr	w0, [sp, 36]
	cmp	w0, 0
	beq	.L3
	ldr	w0, [sp, 44]
	ldr	w2, [sp, 24]
	ldr	w1, [sp, 24]
	cmp	w2, w0
	csel	w0, w1, w0, ge
	str	w0, [sp, 24]
.L3:
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
.L2:
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L8
	b	.L9
.L10:
	ldr	w2, [sp, 24]
	mov	w0, 26215
	movk	w0, 0x6666, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	asr	w1, w0, 2
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	sub	w1, w2, w0
	ldr	w0, [sp, 28]
	add	w0, w0, w1
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	mov	w1, 26215
	movk	w1, 0x6666, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 2
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 24]
.L9:
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bgt	.L10
	ldr	w0, [sp, 28]
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC7:
	.string	"problem95.c"
	.align	3
.LC8:
	.string	"func0(lst1, sizeof(lst1)/sizeof(lst1[0])) == 10"
	.align	3
.LC9:
	.string	"func0(lst2, sizeof(lst2)/sizeof(lst2[0])) == 25"
	.align	3
.LC10:
	.string	"func0(lst3, sizeof(lst3)/sizeof(lst3[0])) == 13"
	.align	3
.LC11:
	.string	"func0(lst4, sizeof(lst4)/sizeof(lst4[0])) == 11"
	.align	3
.LC12:
	.string	"func0(lst5, sizeof(lst5)/sizeof(lst5[0])) == 3"
	.align	3
.LC13:
	.string	"func0(lst6, sizeof(lst6)/sizeof(lst6[0])) == 7"
	.align	3
.LC14:
	.string	"func0(lst7, sizeof(lst7)/sizeof(lst7[0])) == 19"
	.align	3
.LC15:
	.string	"func0(lst8, sizeof(lst8)/sizeof(lst8[0])) == 19"
	.align	3
.LC16:
	.string	"func0(lst9, sizeof(lst9)/sizeof(lst9[0])) == 10"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -400]!
	.cfi_def_cfa_offset 400
	.cfi_offset 29, -400
	.cfi_offset 30, -392
	mov	x29, sp
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 392]
	mov	x1, 0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 304
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	ldr	q0, [x1, 64]
	str	q0, [x0, 64]
	ldr	x1, [x1, 80]
	str	x1, [x0, 80]
	add	x0, sp, 304
	mov	w1, 22
	bl	func0
	cmp	w0, 10
	beq	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 36
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L13:
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 232
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	ldr	x1, [x1, 64]
	str	x1, [x0, 64]
	add	x0, sp, 232
	mov	w1, 18
	bl	func0
	cmp	w0, 25
	beq	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 39
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L14:
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, sp, 168
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	add	x0, sp, 168
	mov	w1, 16
	bl	func0
	cmp	w0, 13
	beq	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 42
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L15:
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	add	x0, sp, 112
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 32]
	str	q0, [x0, 32]
	ldr	x1, [x1, 48]
	str	x1, [x0, 48]
	add	x0, sp, 112
	mov	w1, 14
	bl	func0
	cmp	w0, 11
	beq	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 45
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	__assert_fail
.L16:
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	add	x2, sp, 64
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x0, sp, 64
	mov	w1, 6
	bl	func0
	cmp	w0, 3
	beq	.L17
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 48
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	__assert_fail
.L17:
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	add	x2, sp, 88
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x0, sp, 88
	mov	w1, 6
	bl	func0
	cmp	w0, 7
	beq	.L18
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 51
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	__assert_fail
.L18:
	mov	w0, 8191
	str	w0, [sp, 24]
	add	x0, sp, 24
	mov	w1, 1
	bl	func0
	cmp	w0, 19
	beq	.L19
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 54
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	__assert_fail
.L19:
	mov	w0, 8191
	str	w0, [sp, 48]
	mov	w0, 57920
	movk	w0, 0x1, lsl 16
	str	w0, [sp, 52]
	mov	w0, 127
	str	w0, [sp, 56]
	mov	w0, 7
	str	w0, [sp, 60]
	add	x0, sp, 48
	mov	w1, 4
	bl	func0
	cmp	w0, 19
	beq	.L20
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 57
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	__assert_fail
.L20:
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	add	x0, sp, 32
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x0, sp, 32
	mov	w1, 3
	bl	func0
	cmp	w0, 10
	beq	.L21
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 60
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	__assert_fail
.L21:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 392]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L23
	bl	__stack_chk_fail
.L23:
	mov	w0, w1
	ldp	x29, x30, [sp], 400
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	3
	.word	2
	.word	1
	.word	3
	.word	5
	.word	7
	.word	4
	.word	5
	.word	5
	.word	5
	.word	2
	.word	181
	.word	32
	.word	4
	.word	32
	.word	3
	.word	2
	.word	32
	.word	324
	.word	4
	.word	3
	.align	3
.LC1:
	.word	1
	.word	0
	.word	1
	.word	8
	.word	2
	.word	4597
	.word	2
	.word	1
	.word	3
	.word	40
	.word	1
	.word	2
	.word	1
	.word	2
	.word	4
	.word	2
	.word	5
	.word	1
	.align	3
.LC2:
	.word	1
	.word	3
	.word	1
	.word	32
	.word	5107
	.word	34
	.word	83278
	.word	109
	.word	163
	.word	23
	.word	2323
	.word	32
	.word	30
	.word	1
	.word	9
	.word	3
	.align	3
.LC3:
	.word	0
	.word	724
	.word	32
	.word	71
	.word	99
	.word	32
	.word	6
	.word	0
	.word	5
	.word	91
	.word	83
	.word	0
	.word	5
	.word	6
	.align	3
.LC4:
	.word	0
	.word	81
	.word	12
	.word	3
	.word	1
	.word	21
	.align	3
.LC5:
	.word	0
	.word	8
	.word	1
	.word	2
	.word	1
	.word	7
	.align	3
.LC6:
	.word	127
	.word	97
	.word	8192
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
