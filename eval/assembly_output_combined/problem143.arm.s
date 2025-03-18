	.arch armv8-a
	.file	"problem143.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	str	wzr, [sp, 24]
	str	wzr, [sp, 28]
	b	.L2
.L6:
	ldr	w2, [sp, 28]
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sub	w1, w2, w0
	cmp	w1, 0
	bne	.L3
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w0, [x0]
	mul	w0, w1, w0
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	b	.L4
.L3:
	ldr	w0, [sp, 28]
	and	w0, w0, 3
	cmp	w0, 0
	bne	.L5
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w0, [x0]
	mul	w1, w1, w0
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w0, [x0]
	mul	w0, w1, w0
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	b	.L4
.L5:
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
.L4:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L6
	ldr	w0, [sp, 24]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC9:
	.string	"problem143.c"
	.align	3
.LC10:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == 6"
	.align	3
.LC11:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == 14"
	.align	3
.LC12:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == 0"
	.align	3
.LC13:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == 9"
	.align	3
.LC14:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == -3"
	.align	3
.LC15:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == -126"
	.align	3
.LC16:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == 3030"
	.align	3
.LC17:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == -14196"
	.align	3
.LC18:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == -1448"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, 96]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 96
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 88]
	mov	x1, 0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 8
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x0, sp, 8
	mov	w1, 3
	bl	func0
	cmp	w0, 6
	beq	.L9
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 20
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L9:
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 8
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x0, sp, 8
	mov	w1, 3
	bl	func0
	cmp	w0, 14
	beq	.L10
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 24
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	__assert_fail
.L10:
	add	x0, sp, 8
	mov	w1, 0
	bl	func0
	cmp	w0, 0
	beq	.L11
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 28
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	__assert_fail
.L11:
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, sp, 8
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	w1, [x1, 32]
	str	w1, [x0, 32]
	add	x0, sp, 8
	mov	w1, 9
	bl	func0
	cmp	w0, 9
	beq	.L12
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 32
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	__assert_fail
.L12:
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	add	x0, sp, 8
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	w1, [x1, 32]
	str	w1, [x0, 32]
	add	x0, sp, 8
	mov	w1, 9
	bl	func0
	cmn	w0, #3
	beq	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 36
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	__assert_fail
.L13:
	str	wzr, [sp, 8]
	add	x0, sp, 8
	mov	w1, 1
	bl	func0
	cmp	w0, 0
	beq	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 40
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	__assert_fail
.L14:
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	add	x2, sp, 8
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	add	x0, sp, 8
	mov	w1, 5
	bl	func0
	cmn	w0, #126
	beq	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 44
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	__assert_fail
.L15:
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	add	x2, sp, 8
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	add	x0, sp, 8
	mov	w1, 5
	bl	func0
	cmp	w0, 3030
	beq	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 48
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	__assert_fail
.L16:
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	add	x0, sp, 8
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	w1, [x1, 32]
	str	w1, [x0, 32]
	add	x0, sp, 8
	mov	w1, 9
	bl	func0
	cmp	w0, 0
	beq	.L17
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 52
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	__assert_fail
.L17:
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	add	x0, sp, 8
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 32]
	str	q0, [x0, 32]
	ldr	q0, [x1, 44]
	str	q0, [x0, 44]
	add	x0, sp, 8
	mov	w1, 15
	bl	func0
	mov	w1, w0
	mov	w0, -14196
	cmp	w1, w0
	beq	.L18
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 56
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	adrp	x0, .LC17
	add	x0, x0, :lo12:.LC17
	bl	__assert_fail
.L18:
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	add	x0, sp, 8
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	ldr	q0, [x1, 64]
	str	q0, [x0, 64]
	add	x0, sp, 8
	mov	w1, 20
	bl	func0
	cmn	w0, #1448
	beq	.L19
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 60
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	bl	__assert_fail
.L19:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 88]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L21
	bl	__stack_chk_fail
.L21:
	mov	w0, w1
	ldp	x29, x30, [sp, 96]
	add	sp, sp, 112
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	1
	.word	2
	.word	3
	.align	3
.LC1:
	.word	1
	.word	4
	.word	9
	.align	3
.LC2:
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.align	3
.LC3:
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.align	3
.LC4:
	.word	-1
	.word	-5
	.word	2
	.word	-1
	.word	-5
	.align	3
.LC5:
	.word	-56
	.word	-99
	.word	1
	.word	0
	.word	-2
	.align	3
.LC6:
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.align	3
.LC7:
	.word	-16
	.word	-9
	.word	-2
	.word	36
	.word	36
	.word	26
	.word	-20
	.word	25
	.word	-40
	.word	20
	.word	-4
	.word	12
	.word	-26
	.word	35
	.word	37
	.align	3
.LC8:
	.word	-1
	.word	-3
	.word	17
	.word	-1
	.word	-15
	.word	13
	.word	-1
	.word	14
	.word	-14
	.word	-12
	.word	-5
	.word	14
	.word	-14
	.word	6
	.word	13
	.word	11
	.word	16
	.word	16
	.word	4
	.word	10
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
