	.arch armv8-a
	.file	"problem118.c"
	.text
	.section	.rodata
	.align	3
.LC5:
	.string	"aeiouAEIOU"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -96
	str	x0, [sp, 56]
	str	w1, [sp, 52]
	str	x2, [sp, 40]
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	str	x0, [sp, 88]
	str	xzr, [sp, 80]
	str	wzr, [sp, 64]
	str	wzr, [sp, 68]
	str	wzr, [sp, 72]
	ldr	x0, [sp, 56]
	bl	strlen
	str	x0, [sp, 96]
	ldr	x0, [sp, 96]
	add	x0, x0, 1
	bl	malloc
	str	x0, [sp, 104]
	str	wzr, [sp, 76]
	b	.L2
.L7:
	bl	__ctype_b_loc
	ldr	x1, [x0]
	ldrsw	x0, [sp, 76]
	ldr	x2, [sp, 56]
	add	x0, x2, x0
	ldrb	w0, [x0]
	and	x0, x0, 255
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 8192
	cmp	w0, 0
	bne	.L3
	ldrsw	x0, [sp, 76]
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L4
.L3:
	ldr	w1, [sp, 64]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	bne	.L5
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 72]
	sub	w0, w1, w0
	sxtw	x0, w0
	ldr	x1, [sp, 104]
	add	x0, x1, x0
	strb	wzr, [x0]
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 80]
	bl	realloc
	str	x0, [sp, 80]
	ldr	x0, [sp, 104]
	bl	strlen
	add	x2, x0, 1
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 3
	ldr	x1, [sp, 80]
	add	x19, x1, x0
	mov	x0, x2
	bl	malloc
	str	x0, [x19]
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 3
	ldr	x1, [sp, 80]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x1, [sp, 104]
	bl	strcpy
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
.L5:
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 72]
	str	wzr, [sp, 64]
	b	.L6
.L4:
	ldrsw	x0, [sp, 76]
	ldr	x1, [sp, 56]
	add	x1, x1, x0
	ldr	w2, [sp, 76]
	ldr	w0, [sp, 72]
	sub	w0, w2, w0
	sxtw	x0, w0
	ldr	x2, [sp, 104]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldrsw	x0, [sp, 76]
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	x0, [sp, 88]
	bl	strchr
	cmp	x0, 0
	bne	.L6
	bl	__ctype_b_loc
	ldr	x1, [x0]
	ldrsw	x0, [sp, 76]
	ldr	x2, [sp, 56]
	add	x0, x2, x0
	ldrb	w0, [x0]
	and	x0, x0, 255
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 1024
	cmp	w0, 0
	beq	.L6
	ldr	w0, [sp, 64]
	add	w0, w0, 1
	str	w0, [sp, 64]
.L6:
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
.L2:
	ldrsw	x0, [sp, 76]
	ldr	x1, [sp, 96]
	cmp	x1, x0
	bcs	.L7
	ldr	x0, [sp, 104]
	bl	free
	ldr	x0, [sp, 40]
	ldr	w1, [sp, 68]
	str	w1, [x0]
	ldr	x0, [sp, 80]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
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
	str	w1, [sp, 36]
	str	x2, [sp, 24]
	str	w3, [sp, 32]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	beq	.L10
	mov	w0, 0
	b	.L11
.L10:
	str	wzr, [sp, 60]
	b	.L12
.L14:
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x2, [x0]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x1, x0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L13
	mov	w0, 0
	b	.L11
.L13:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L12:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L14
	mov	w0, 1
.L11:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.align	2
	.global	free_words
	.type	free_words, %function
free_words:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	wzr, [sp, 44]
	b	.L16
.L17:
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	free
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L16:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L17
	ldr	x0, [sp, 24]
	bl	free
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	free_words, .-free_words
	.section	.rodata
	.align	3
.LC6:
	.string	"Mary had a little lamb"
	.align	3
.LC7:
	.string	"little"
	.align	3
.LC8:
	.string	"problem118.c"
	.align	3
.LC9:
	.string	"issame(words, size, expected1, 1)"
	.align	3
.LC10:
	.string	"Mary"
	.align	3
.LC11:
	.string	"lamb"
	.align	3
.LC12:
	.string	"issame(words, size, expected2, 2)"
	.align	3
.LC13:
	.string	"simple white space"
	.align	3
.LC14:
	.string	"size == 0"
	.align	3
.LC15:
	.string	"Hello world"
	.align	3
.LC16:
	.string	"world"
	.align	3
.LC17:
	.string	"issame(words, size, expected3, 1)"
	.align	3
.LC18:
	.string	"Uncle sam"
	.align	3
.LC19:
	.string	"Uncle"
	.align	3
.LC20:
	.string	"issame(words, size, expected4, 1)"
	.align	3
.LC21:
	.string	""
	.align	3
.LC22:
	.string	"a b c d e f"
	.align	3
.LC24:
	.string	"issame(words, size, expected5, 4)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB9:
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
	add	x0, sp, 4
	mov	x2, x0
	mov	w1, 4
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	func0
	str	x0, [sp, 8]
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	str	x0, [sp, 16]
	ldr	w0, [sp, 4]
	add	x1, sp, 16
	mov	w3, 1
	mov	x2, x1
	mov	w1, w0
	ldr	x0, [sp, 8]
	bl	issame
	cmp	w0, 0
	bne	.L19
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 65
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L19:
	ldr	w0, [sp, 4]
	mov	w1, w0
	ldr	x0, [sp, 8]
	bl	free_words
	add	x0, sp, 4
	mov	x2, x0
	mov	w1, 3
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	func0
	str	x0, [sp, 8]
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	str	x0, [sp, 40]
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	str	x0, [sp, 48]
	ldr	w0, [sp, 4]
	add	x1, sp, 40
	mov	w3, 2
	mov	x2, x1
	mov	w1, w0
	ldr	x0, [sp, 8]
	bl	issame
	cmp	w0, 0
	bne	.L20
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 70
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	__assert_fail
.L20:
	ldr	w0, [sp, 4]
	mov	w1, w0
	ldr	x0, [sp, 8]
	bl	free_words
	add	x0, sp, 4
	mov	x2, x0
	mov	w1, 2
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	func0
	str	x0, [sp, 8]
	ldr	w0, [sp, 4]
	cmp	w0, 0
	beq	.L21
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 74
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	__assert_fail
.L21:
	ldr	w0, [sp, 4]
	mov	w1, w0
	ldr	x0, [sp, 8]
	bl	free_words
	add	x0, sp, 4
	mov	x2, x0
	mov	w1, 4
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	func0
	str	x0, [sp, 8]
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	str	x0, [sp, 24]
	ldr	w0, [sp, 4]
	add	x1, sp, 24
	mov	w3, 1
	mov	x2, x1
	mov	w1, w0
	ldr	x0, [sp, 8]
	bl	issame
	cmp	w0, 0
	bne	.L22
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 79
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC17
	add	x0, x0, :lo12:.LC17
	bl	__assert_fail
.L22:
	ldr	w0, [sp, 4]
	mov	w1, w0
	ldr	x0, [sp, 8]
	bl	free_words
	add	x0, sp, 4
	mov	x2, x0
	mov	w1, 3
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	bl	func0
	str	x0, [sp, 8]
	adrp	x0, .LC19
	add	x0, x0, :lo12:.LC19
	str	x0, [sp, 32]
	ldr	w0, [sp, 4]
	add	x1, sp, 32
	mov	w3, 1
	mov	x2, x1
	mov	w1, w0
	ldr	x0, [sp, 8]
	bl	issame
	cmp	w0, 0
	bne	.L23
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 84
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC20
	add	x0, x0, :lo12:.LC20
	bl	__assert_fail
.L23:
	ldr	w0, [sp, 4]
	mov	w1, w0
	ldr	x0, [sp, 8]
	bl	free_words
	add	x0, sp, 4
	mov	x2, x0
	mov	w1, 4
	adrp	x0, .LC21
	add	x0, x0, :lo12:.LC21
	bl	func0
	str	x0, [sp, 8]
	ldr	w0, [sp, 4]
	cmp	w0, 0
	beq	.L24
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 88
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	__assert_fail
.L24:
	ldr	w0, [sp, 4]
	mov	w1, w0
	ldr	x0, [sp, 8]
	bl	free_words
	add	x0, sp, 4
	mov	x2, x0
	mov	w1, 1
	adrp	x0, .LC22
	add	x0, x0, :lo12:.LC22
	bl	func0
	str	x0, [sp, 8]
	add	x0, sp, 104
	sub	x0, x0, #48
	adrp	x1, .LC23
	add	x1, x1, :lo12:.LC23
	ld1	{v0.16b - v1.16b}, [x1]
	st1	{v0.16b - v1.16b}, [x0]
	ldr	w0, [sp, 4]
	add	x1, sp, 56
	mov	w3, 4
	mov	x2, x1
	mov	w1, w0
	ldr	x0, [sp, 8]
	bl	issame
	cmp	w0, 0
	bne	.L25
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 93
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC24
	add	x0, x0, :lo12:.LC24
	bl	__assert_fail
.L25:
	ldr	w0, [sp, 4]
	mov	w1, w0
	ldr	x0, [sp, 8]
	bl	free_words
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 88]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L27
	bl	__stack_chk_fail
.L27:
	mov	w0, w1
	ldp	x29, x30, [sp, 96]
	add	sp, sp, 112
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.string	"b"
	.align	3
.LC1:
	.string	"c"
	.align	3
.LC2:
	.string	"d"
	.align	3
.LC3:
	.string	"f"
	.data
	.align	3
.LC23:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.xword	.LC3
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
