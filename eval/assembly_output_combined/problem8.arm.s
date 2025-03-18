	.arch armv8-a
	.file	"problem8.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	str	xzr, [sp, 56]
	str	wzr, [sp, 48]
	str	wzr, [sp, 52]
	b	.L2
.L4:
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x1, [sp, 24]
	bl	strstr
	cmp	x0, 0
	beq	.L3
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	realloc
	str	x0, [sp, 56]
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 3
	ldr	x2, [sp, 56]
	add	x0, x2, x0
	ldr	x1, [x1]
	str	x1, [x0]
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L3:
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L2:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L4
	ldr	x0, [sp, 16]
	ldr	w1, [sp, 48]
	str	w1, [x0]
	ldr	x0, [sp, 56]
	ldp	x29, x30, [sp], 64
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
	str	w3, [sp, 24]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	beq	.L7
	mov	w0, 0
	b	.L8
.L7:
	str	wzr, [sp, 60]
	b	.L9
.L11:
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
	beq	.L10
	mov	w0, 0
	b	.L8
.L10:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L9:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L11
	mov	w0, 1
.L8:
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
.LC15:
	.string	"john"
	.align	3
.LC16:
	.string	"problem8.c"
	.align	3
.LC17:
	.string	"out_size == 0 && result == NULL"
	.align	3
.LC0:
	.string	"xxx"
	.align	3
.LC20:
	.string	"issame(result, expected1, out_size, 3)"
	.align	3
.LC23:
	.string	"xx"
	.align	3
.LC24:
	.string	"issame(result, expected2, out_size, 4)"
	.align	3
.LC10:
	.string	"grunt"
	.align	3
.LC12:
	.string	"prune"
	.align	3
.LC26:
	.string	"run"
	.align	3
.LC27:
	.string	"issame(result, expected3, out_size, 2)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #240
	.cfi_def_cfa_offset 240
	stp	x29, x30, [sp, 224]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 224
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 216]
	mov	x1, 0
	add	x0, sp, 4
	mov	x3, x0
	adrp	x0, .LC15
	add	x2, x0, :lo12:.LC15
	mov	w1, 0
	mov	x0, 0
	bl	func0
	str	x0, [sp, 8]
	ldr	w0, [sp, 4]
	cmp	w0, 0
	bne	.L13
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L20
.L13:
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 40
	adrp	x0, .LC16
	add	x1, x0, :lo12:.LC16
	adrp	x0, .LC17
	add	x0, x0, :lo12:.LC17
	bl	__assert_fail
.L20:
	adrp	x0, .LC18
	add	x1, x0, :lo12:.LC18
	add	x0, sp, 120
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 32]
	str	q0, [x0, 32]
	adrp	x0, .LC19
	add	x0, x0, :lo12:.LC19
	add	x2, sp, 32
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x0, sp, 4
	add	x4, sp, 120
	mov	x3, x0
	adrp	x0, .LC0
	add	x2, x0, :lo12:.LC0
	mov	w1, 6
	mov	x0, x4
	bl	func0
	str	x0, [sp, 8]
	ldr	w1, [sp, 4]
	add	x0, sp, 32
	mov	w3, 3
	mov	w2, w1
	mov	x1, x0
	ldr	x0, [sp, 8]
	bl	issame
	cmp	w0, 0
	bne	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 46
	adrp	x0, .LC16
	add	x1, x0, :lo12:.LC16
	adrp	x0, .LC20
	add	x0, x0, :lo12:.LC20
	bl	__assert_fail
.L15:
	ldr	x0, [sp, 8]
	bl	free
	adrp	x0, .LC21
	add	x1, x0, :lo12:.LC21
	add	x0, sp, 168
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 32]
	str	q0, [x0, 32]
	add	x0, sp, 232
	sub	x0, x0, #176
	adrp	x1, .LC22
	add	x1, x1, :lo12:.LC22
	ld1	{v0.16b - v1.16b}, [x1]
	st1	{v0.16b - v1.16b}, [x0]
	add	x0, sp, 4
	add	x4, sp, 168
	mov	x3, x0
	adrp	x0, .LC23
	add	x2, x0, :lo12:.LC23
	mov	w1, 6
	mov	x0, x4
	bl	func0
	str	x0, [sp, 8]
	ldr	w1, [sp, 4]
	add	x0, sp, 56
	mov	w3, 4
	mov	w2, w1
	mov	x1, x0
	ldr	x0, [sp, 8]
	bl	issame
	cmp	w0, 0
	bne	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 53
	adrp	x0, .LC16
	add	x1, x0, :lo12:.LC16
	adrp	x0, .LC24
	add	x0, x0, :lo12:.LC24
	bl	__assert_fail
.L16:
	ldr	x0, [sp, 8]
	bl	free
	add	x0, sp, 232
	sub	x0, x0, #144
	adrp	x1, .LC25
	add	x1, x1, :lo12:.LC25
	ld1	{v0.16b - v1.16b}, [x1]
	st1	{v0.16b - v1.16b}, [x0]
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	str	x0, [sp, 16]
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	str	x0, [sp, 24]
	add	x0, sp, 4
	add	x4, sp, 88
	mov	x3, x0
	adrp	x0, .LC26
	add	x2, x0, :lo12:.LC26
	mov	w1, 4
	mov	x0, x4
	bl	func0
	str	x0, [sp, 8]
	ldr	w1, [sp, 4]
	add	x0, sp, 16
	mov	w3, 2
	mov	w2, w1
	mov	x1, x0
	ldr	x0, [sp, 8]
	bl	issame
	cmp	w0, 0
	bne	.L17
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 60
	adrp	x0, .LC16
	add	x1, x0, :lo12:.LC16
	adrp	x0, .LC27
	add	x0, x0, :lo12:.LC27
	bl	__assert_fail
.L17:
	ldr	x0, [sp, 8]
	bl	free
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 216]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L19
	bl	__stack_chk_fail
.L19:
	mov	w0, w1
	ldp	x29, x30, [sp, 224]
	add	sp, sp, 240
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC1:
	.string	"asd"
	.align	3
.LC2:
	.string	"xxy"
	.align	3
.LC3:
	.string	"john doe"
	.align	3
.LC4:
	.string	"xxxAAA"
	.data
	.align	3
.LC18:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.xword	.LC3
	.xword	.LC4
	.xword	.LC0
	.align	3
.LC19:
	.xword	.LC0
	.xword	.LC4
	.xword	.LC0
	.section	.rodata
	.align	3
.LC7:
	.string	"aaaxxy"
	.data
	.align	3
.LC21:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC7
	.xword	.LC3
	.xword	.LC4
	.xword	.LC0
	.align	3
.LC22:
	.xword	.LC0
	.xword	.LC7
	.xword	.LC4
	.xword	.LC0
	.section	.rodata
	.align	3
.LC11:
	.string	"trumpet"
	.align	3
.LC13:
	.string	"gruesome"
	.data
	.align	3
.LC25:
	.xword	.LC10
	.xword	.LC11
	.xword	.LC12
	.xword	.LC13
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
