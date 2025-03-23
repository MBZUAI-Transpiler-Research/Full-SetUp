	.arch armv8-a
	.file	"problem115.c"
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
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	str	x0, [sp, 32]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	str	x0, [sp, 40]
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L2
.L6:
	ldr	x0, [sp, 32]
	cmp	x0, 0
	bge	.L3
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldr	x0, [sp, 32]
	add	x0, x1, x0
	b	.L4
.L3:
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	x0, [x0]
.L4:
	str	x0, [sp, 32]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	cmp	x1, x0
	bge	.L5
	ldr	x0, [sp, 32]
	str	x0, [sp, 40]
.L5:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L6
	ldr	x0, [sp, 40]
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC8:
	.string	"problem115.c"
	.align	3
.LC9:
	.string	"func0(nums1, 6) == 1"
	.align	3
.LC10:
	.string	"func0(nums2, 3) == -6"
	.align	3
.LC11:
	.string	"func0(nums3, 5) == -14"
	.align	3
.LC12:
	.string	"func0(nums4, 1) == -9999999999999999"
	.align	3
.LC13:
	.string	"func0(nums5, 4) == 0"
	.align	3
.LC14:
	.string	"func0(nums6, 5) == -6"
	.align	3
.LC15:
	.string	"func0(nums7, 6) == -6"
	.align	3
.LC16:
	.string	"func0(nums8, 6) == 3"
	.align	3
.LC17:
	.string	"func0(nums9, 6) == -33"
	.align	3
.LC18:
	.string	"func0(nums10, 1) == -10"
	.align	3
.LC19:
	.string	"func0(nums11, 1) == 7"
	.align	3
.LC20:
	.string	"func0(nums12, 2) == -1"
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
	add	x0, sp, 200
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 32]
	str	q0, [x0, 32]
	add	x0, sp, 200
	mov	w1, 6
	bl	func0
	cmp	x0, 1
	beq	.L9
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 19
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L9:
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	add	x2, sp, 64
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x0, sp, 64
	mov	w1, 3
	bl	func0
	cmn	x0, #6
	beq	.L10
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 22
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L10:
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, sp, 120
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	x1, [x1, 32]
	str	x1, [x0, 32]
	add	x0, sp, 120
	mov	w1, 5
	bl	func0
	cmn	x0, #14
	beq	.L11
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 25
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	__assert_fail
.L11:
	mov	x0, 1
	movk	x0, 0x903f, lsl 16
	movk	x0, 0x790d, lsl 32
	movk	x0, 0xffdc, lsl 48
	str	x0, [sp, 24]
	add	x0, sp, 24
	mov	w1, 1
	bl	func0
	mov	x1, x0
	mov	x0, 1
	movk	x0, 0x903f, lsl 16
	movk	x0, 0x790d, lsl 32
	movk	x0, 0xffdc, lsl 48
	cmp	x1, x0
	beq	.L12
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 28
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	__assert_fail
.L12:
	add	x0, sp, 408
	sub	x0, x0, #320
	adrp	x1, .LC3
	add	x1, x1, :lo12:.LC3
	ld1	{v0.16b - v1.16b}, [x1]
	st1	{v0.16b - v1.16b}, [x0]
	add	x0, sp, 88
	mov	w1, 4
	bl	func0
	cmp	x0, 0
	beq	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 31
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	__assert_fail
.L13:
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	add	x0, sp, 160
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	x1, [x1, 32]
	str	x1, [x0, 32]
	add	x0, sp, 160
	mov	w1, 5
	bl	func0
	cmn	x0, #6
	beq	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 34
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	__assert_fail
.L14:
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	add	x0, sp, 248
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 32]
	str	q0, [x0, 32]
	add	x0, sp, 248
	mov	w1, 6
	bl	func0
	cmn	x0, #6
	beq	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 37
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	__assert_fail
.L15:
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	add	x0, sp, 296
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 32]
	str	q0, [x0, 32]
	add	x0, sp, 296
	mov	w1, 6
	bl	func0
	cmp	x0, 3
	beq	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 40
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	__assert_fail
.L16:
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	add	x0, sp, 344
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 32]
	str	q0, [x0, 32]
	add	x0, sp, 344
	mov	w1, 6
	bl	func0
	cmn	x0, #33
	beq	.L17
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 43
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC17
	add	x0, x0, :lo12:.LC17
	bl	__assert_fail
.L17:
	mov	x0, -10
	str	x0, [sp, 32]
	add	x0, sp, 32
	mov	w1, 1
	bl	func0
	cmn	x0, #10
	beq	.L18
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 46
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	bl	__assert_fail
.L18:
	mov	x0, 7
	str	x0, [sp, 40]
	add	x0, sp, 40
	mov	w1, 1
	bl	func0
	cmp	x0, 7
	beq	.L19
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 49
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC19
	add	x0, x0, :lo12:.LC19
	bl	__assert_fail
.L19:
	mov	x0, 1
	str	x0, [sp, 48]
	mov	x0, -1
	str	x0, [sp, 56]
	add	x0, sp, 48
	mov	w1, 2
	bl	func0
	cmn	x0, #1
	beq	.L20
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 52
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC20
	add	x0, x0, :lo12:.LC20
	bl	__assert_fail
.L20:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 392]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L22
	bl	__stack_chk_fail
.L22:
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
	.xword	2
	.xword	3
	.xword	4
	.xword	1
	.xword	2
	.xword	4
	.align	3
.LC1:
	.xword	-1
	.xword	-2
	.xword	-3
	.align	3
.LC2:
	.xword	-1
	.xword	-2
	.xword	-3
	.xword	2
	.xword	-10
	.align	3
.LC3:
	.xword	0
	.xword	10
	.xword	20
	.xword	1000000
	.align	3
.LC4:
	.xword	-1
	.xword	-2
	.xword	-3
	.xword	10
	.xword	-5
	.align	3
.LC5:
	.xword	100
	.xword	-1
	.xword	-2
	.xword	-3
	.xword	10
	.xword	-5
	.align	3
.LC6:
	.xword	10
	.xword	11
	.xword	13
	.xword	8
	.xword	3
	.xword	4
	.align	3
.LC7:
	.xword	100
	.xword	-33
	.xword	32
	.xword	-1
	.xword	0
	.xword	-2
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
