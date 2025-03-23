	.arch armv8-a
	.file	"problem109.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	str	wzr, [sp, 16]
	str	wzr, [sp, 20]
	b	.L2
.L7:
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 0
	ble	.L3
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 16]
	b	.L4
.L3:
	str	wzr, [sp, 24]
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 0
	csneg	w0, w0, w0, ge
	str	w0, [sp, 28]
	b	.L5
.L6:
	ldr	w2, [sp, 28]
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
	ldr	w0, [sp, 24]
	add	w0, w0, w1
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	mov	w1, 26215
	movk	w1, 0x6666, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 2
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 28]
.L5:
	ldr	w0, [sp, 28]
	cmp	w0, 9
	bgt	.L6
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	sub	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	cmp	w0, 0
	ble	.L4
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 16]
.L4:
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L2:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L7
	ldr	w0, [sp, 16]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC5:
	.string	"problem109.c"
	.align	3
.LC6:
	.string	"func0((int[]){}, 0) == 0"
	.align	3
.LC7:
	.string	"func0((int[]){-1, -2, 0}, 3) == 0"
	.align	3
.LC8:
	.string	"func0((int[]){1, 1, 2, -2, 3, 4, 5}, 7) == 6"
	.align	3
.LC9:
	.string	"func0((int[]){1, 6, 9, -6, 0, 1, 5}, 7) == 5"
	.align	3
.LC10:
	.string	"func0((int[]){1, 100, 98, -7, 1, -1}, 6) == 4"
	.align	3
.LC11:
	.string	"func0((int[]){12, 23, 34, -45, -56, 0}, 6) == 5"
	.align	3
.LC12:
	.string	"func0((int[]){-0, 1}, 2) == 1"
	.align	3
.LC13:
	.string	"func0((int[]){1}, 1) == 1"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	add	x0, sp, 24
	mov	w1, 0
	bl	func0
	cmp	w0, 0
	beq	.L10
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 28
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L10:
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 24
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x0, sp, 24
	mov	w1, 3
	bl	func0
	cmp	w0, 0
	beq	.L11
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 29
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L11:
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 24
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 12]
	str	q0, [x0, 12]
	add	x0, sp, 24
	mov	w1, 7
	bl	func0
	cmp	w0, 6
	beq	.L12
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 30
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L12:
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, sp, 24
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 12]
	str	q0, [x0, 12]
	add	x0, sp, 24
	mov	w1, 7
	bl	func0
	cmp	w0, 5
	beq	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 31
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L13:
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	add	x2, sp, 24
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x0, sp, 24
	mov	w1, 6
	bl	func0
	cmp	w0, 4
	beq	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 32
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L14:
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	add	x2, sp, 24
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x0, sp, 24
	mov	w1, 6
	bl	func0
	cmp	w0, 5
	beq	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 33
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	__assert_fail
.L15:
	str	wzr, [sp, 24]
	mov	w0, 1
	str	w0, [sp, 28]
	add	x0, sp, 24
	mov	w1, 2
	bl	func0
	cmp	w0, 1
	beq	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 34
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	__assert_fail
.L16:
	mov	w0, 1
	str	w0, [sp, 24]
	add	x0, sp, 24
	mov	w1, 1
	bl	func0
	cmp	w0, 1
	beq	.L17
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 35
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	__assert_fail
.L17:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L19
	bl	__stack_chk_fail
.L19:
	mov	w0, w1
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	-1
	.word	-2
	.word	0
	.align	3
.LC1:
	.word	1
	.word	1
	.word	2
	.word	-2
	.word	3
	.word	4
	.word	5
	.align	3
.LC2:
	.word	1
	.word	6
	.word	9
	.word	-6
	.word	0
	.word	1
	.word	5
	.align	3
.LC3:
	.word	1
	.word	100
	.word	98
	.word	-7
	.word	1
	.word	-1
	.align	3
.LC4:
	.word	12
	.word	23
	.word	34
	.word	-45
	.word	-56
	.word	0
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
