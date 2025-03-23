	.arch armv8-a
	.file	"problem150.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	x2, [sp, 24]
	ldr	x0, [sp, 24]
	str	wzr, [x0]
	str	wzr, [sp, 56]
	b	.L2
.L4:
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	strlen
	and	x0, x0, 1
	cmp	x0, 0
	bne	.L3
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	ldr	x1, [x1]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	add	w1, w0, 1
	ldr	x0, [sp, 24]
	str	w1, [x0]
.L3:
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L2:
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L4
	str	wzr, [sp, 56]
	b	.L5
.L10:
	str	wzr, [sp, 60]
	b	.L6
.L9:
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	strlen
	str	x0, [sp, 72]
	ldrsw	x0, [sp, 60]
	add	x0, x0, 1
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	strlen
	str	x0, [sp, 80]
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 80]
	cmp	x1, x0
	bhi	.L7
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 80]
	cmp	x1, x0
	bne	.L8
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x2, [x0]
	ldrsw	x0, [sp, 60]
	add	x0, x0, 1
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x1, x0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	ble	.L8
.L7:
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x0, [x0]
	str	x0, [sp, 88]
	ldrsw	x0, [sp, 60]
	add	x0, x0, 1
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	ldr	x1, [x1]
	str	x1, [x0]
	ldrsw	x0, [sp, 60]
	add	x0, x0, 1
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [sp, 88]
	str	x1, [x0]
.L8:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L6:
	ldr	x0, [sp, 24]
	ldr	w1, [x0]
	ldr	w0, [sp, 56]
	sub	w0, w1, w0
	sub	w0, w0, #1
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L9
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L5:
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	sub	w0, w0, #1
	ldr	w1, [sp, 56]
	cmp	w1, w0
	blt	.L10
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [sp, 64]
	str	wzr, [sp, 56]
	b	.L11
.L12:
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 3
	ldr	x2, [sp, 64]
	add	x0, x2, x0
	ldr	x1, [x1]
	str	x1, [x0]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L11:
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	ldr	w1, [sp, 56]
	cmp	w1, w0
	blt	.L12
	ldr	x0, [sp, 64]
	ldp	x29, x30, [sp], 96
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
	beq	.L15
	mov	w0, 0
	b	.L16
.L15:
	str	wzr, [sp, 60]
	b	.L17
.L19:
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
	beq	.L18
	mov	w0, 0
	b	.L16
.L18:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L17:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L19
	mov	w0, 1
.L16:
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
.LC0:
	.string	"aa"
	.align	3
.LC27:
	.string	"problem150.c"
	.align	3
.LC28:
	.string	"issame(result, expected1, size, 1)"
	.align	3
.LC31:
	.string	"issame(result, expected2, size, 3)"
	.align	3
.LC33:
	.string	"size == 0"
	.align	3
.LC14:
	.string	"abcd"
	.align	3
.LC13:
	.string	"dcba"
	.align	3
.LC35:
	.string	"issame(result, expected4, size, 2)"
	.align	3
.LC37:
	.string	"issame(result, expected5, size, 3)"
	.align	3
.LC41:
	.string	"issame(result, expected7, size, 4)"
	.align	3
.LC42:
	.string	"All tests passed!"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #368
	.cfi_def_cfa_offset 368
	stp	x29, x30, [sp, 352]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 352
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 344]
	mov	x1, 0
	adrp	x0, .LC26
	add	x0, x0, :lo12:.LC26
	add	x2, sp, 40
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	str	x0, [sp, 16]
	add	x1, sp, 4
	add	x0, sp, 40
	mov	x2, x1
	mov	w1, 3
	bl	func0
	str	x0, [sp, 8]
	ldr	w1, [sp, 4]
	add	x0, sp, 16
	mov	w3, 1
	mov	w2, w1
	mov	x1, x0
	ldr	x0, [sp, 8]
	bl	issame
	cmp	w0, 0
	bne	.L21
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 59
	adrp	x0, .LC27
	add	x1, x0, :lo12:.LC27
	adrp	x0, .LC28
	add	x0, x0, :lo12:.LC28
	bl	__assert_fail
.L21:
	ldr	x0, [sp, 8]
	bl	free
	add	x0, sp, 360
	sub	x0, x0, #224
	adrp	x1, .LC29
	add	x1, x1, :lo12:.LC29
	ld1	{v0.16b - v1.16b}, [x1]
	st1	{v0.16b - v1.16b}, [x0]
	adrp	x0, .LC30
	add	x0, x0, :lo12:.LC30
	add	x2, sp, 64
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x1, sp, 4
	add	x0, sp, 136
	mov	x2, x1
	mov	w1, 4
	bl	func0
	str	x0, [sp, 8]
	ldr	w1, [sp, 4]
	add	x0, sp, 64
	mov	w3, 3
	mov	w2, w1
	mov	x1, x0
	ldr	x0, [sp, 8]
	bl	issame
	cmp	w0, 0
	bne	.L22
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 65
	adrp	x0, .LC27
	add	x1, x0, :lo12:.LC27
	adrp	x0, .LC31
	add	x0, x0, :lo12:.LC31
	bl	__assert_fail
.L22:
	ldr	x0, [sp, 8]
	bl	free
	add	x0, sp, 360
	sub	x0, x0, #192
	adrp	x1, .LC32
	add	x1, x1, :lo12:.LC32
	ld1	{v0.16b - v1.16b}, [x1]
	st1	{v0.16b - v1.16b}, [x0]
	add	x1, sp, 4
	add	x0, sp, 168
	mov	x2, x1
	mov	w1, 4
	bl	func0
	str	x0, [sp, 8]
	ldr	w0, [sp, 4]
	cmp	w0, 0
	beq	.L23
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 70
	adrp	x0, .LC27
	add	x1, x0, :lo12:.LC27
	adrp	x0, .LC33
	add	x0, x0, :lo12:.LC33
	bl	__assert_fail
.L23:
	ldr	x0, [sp, 8]
	bl	free
	add	x0, sp, 360
	sub	x0, x0, #160
	adrp	x1, .LC34
	add	x1, x1, :lo12:.LC34
	ld1	{v0.16b - v1.16b}, [x1]
	st1	{v0.16b - v1.16b}, [x0]
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	str	x0, [sp, 24]
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	str	x0, [sp, 32]
	add	x1, sp, 4
	add	x0, sp, 200
	mov	x2, x1
	mov	w1, 4
	bl	func0
	str	x0, [sp, 8]
	ldr	w1, [sp, 4]
	add	x0, sp, 24
	mov	w3, 2
	mov	w2, w1
	mov	x1, x0
	ldr	x0, [sp, 8]
	bl	issame
	cmp	w0, 0
	bne	.L24
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 76
	adrp	x0, .LC27
	add	x1, x0, :lo12:.LC27
	adrp	x0, .LC35
	add	x0, x0, :lo12:.LC35
	bl	__assert_fail
.L24:
	ldr	x0, [sp, 8]
	bl	free
	adrp	x0, .LC36
	add	x0, x0, :lo12:.LC36
	add	x2, sp, 88
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	adrp	x0, .LC36
	add	x0, x0, :lo12:.LC36
	add	x2, sp, 112
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x1, sp, 4
	add	x0, sp, 88
	mov	x2, x1
	mov	w1, 3
	bl	func0
	str	x0, [sp, 8]
	ldr	w1, [sp, 4]
	add	x0, sp, 112
	mov	w3, 3
	mov	w2, w1
	mov	x1, x0
	ldr	x0, [sp, 8]
	bl	issame
	cmp	w0, 0
	bne	.L25
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 82
	adrp	x0, .LC27
	add	x1, x0, :lo12:.LC27
	adrp	x0, .LC37
	add	x0, x0, :lo12:.LC37
	bl	__assert_fail
.L25:
	ldr	x0, [sp, 8]
	bl	free
	adrp	x0, .LC38
	add	x1, x0, :lo12:.LC38
	add	x0, sp, 296
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 32]
	str	q0, [x0, 32]
	add	x1, sp, 4
	add	x0, sp, 296
	mov	x2, x1
	mov	w1, 6
	bl	func0
	str	x0, [sp, 8]
	ldr	w0, [sp, 4]
	cmp	w0, 0
	beq	.L26
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 87
	adrp	x0, .LC27
	add	x1, x0, :lo12:.LC27
	adrp	x0, .LC33
	add	x0, x0, :lo12:.LC33
	bl	__assert_fail
.L26:
	ldr	x0, [sp, 8]
	bl	free
	add	x0, sp, 360
	sub	x0, x0, #128
	adrp	x1, .LC39
	add	x1, x1, :lo12:.LC39
	ld1	{v0.16b - v1.16b}, [x1]
	st1	{v0.16b - v1.16b}, [x0]
	add	x0, sp, 360
	sub	x0, x0, #96
	adrp	x1, .LC40
	add	x1, x1, :lo12:.LC40
	ld1	{v0.16b - v1.16b}, [x1]
	st1	{v0.16b - v1.16b}, [x0]
	add	x1, sp, 4
	add	x0, sp, 232
	mov	x2, x1
	mov	w1, 4
	bl	func0
	str	x0, [sp, 8]
	ldr	w1, [sp, 4]
	add	x0, sp, 264
	mov	w3, 4
	mov	w2, w1
	mov	x1, x0
	ldr	x0, [sp, 8]
	bl	issame
	cmp	w0, 0
	bne	.L27
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 93
	adrp	x0, .LC27
	add	x1, x0, :lo12:.LC27
	adrp	x0, .LC41
	add	x0, x0, :lo12:.LC41
	bl	__assert_fail
.L27:
	ldr	x0, [sp, 8]
	bl	free
	adrp	x0, .LC42
	add	x0, x0, :lo12:.LC42
	bl	puts
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 344]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L29
	bl	__stack_chk_fail
.L29:
	mov	w0, w1
	ldp	x29, x30, [sp, 352]
	add	sp, sp, 368
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
	.string	"a"
	.align	3
.LC2:
	.string	"aaa"
	.data
	.align	3
.LC26:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.section	.rodata
	.align	3
.LC4:
	.string	"school"
	.align	3
.LC5:
	.string	"AI"
	.align	3
.LC6:
	.string	"asdf"
	.align	3
.LC7:
	.string	"b"
	.data
	.align	3
.LC29:
	.xword	.LC4
	.xword	.LC5
	.xword	.LC6
	.xword	.LC7
	.align	3
.LC30:
	.xword	.LC5
	.xword	.LC6
	.xword	.LC4
	.section	.rodata
	.align	3
.LC10:
	.string	"d"
	.align	3
.LC11:
	.string	"c"
	.data
	.align	3
.LC32:
	.xword	.LC10
	.xword	.LC7
	.xword	.LC11
	.xword	.LC1
	.align	3
.LC34:
	.xword	.LC10
	.xword	.LC13
	.xword	.LC14
	.xword	.LC1
	.section	.rodata
	.align	3
.LC16:
	.string	"ai"
	.align	3
.LC17:
	.string	"au"
	.data
	.align	3
.LC36:
	.xword	.LC5
	.xword	.LC16
	.xword	.LC17
	.align	3
.LC38:
	.xword	.LC1
	.xword	.LC7
	.xword	.LC7
	.xword	.LC11
	.xword	.LC11
	.xword	.LC1
	.section	.rodata
	.align	3
.LC20:
	.string	"aaaa"
	.align	3
.LC21:
	.string	"bbbb"
	.align	3
.LC22:
	.string	"dd"
	.align	3
.LC23:
	.string	"cc"
	.data
	.align	3
.LC39:
	.xword	.LC20
	.xword	.LC21
	.xword	.LC22
	.xword	.LC23
	.align	3
.LC40:
	.xword	.LC23
	.xword	.LC22
	.xword	.LC20
	.xword	.LC21
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
