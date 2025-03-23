	.arch armv8-a
	.file	"problem112.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -192]!
	.cfi_def_cfa_offset 192
	.cfi_offset 29, -192
	.cfi_offset 30, -184
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 184]
	mov	x1, 0
	add	x0, sp, 80
	movi	v0.4s, 0
	stp	q0, q0, [x0]
	stp	q0, q0, [x0, 32]
	stp	q0, q0, [x0, 64]
	fmov	x1, d0
	str	x1, [x0, 96]
	str	wzr, [sp, 56]
	ldr	x0, [sp, 40]
	str	x0, [sp, 72]
	str	wzr, [sp, 60]
	b	.L2
.L4:
	ldr	x0, [sp, 72]
	ldrb	w0, [x0]
	cmp	w0, 32
	beq	.L3
	ldr	x0, [sp, 72]
	ldrb	w0, [x0]
	sub	w0, w0, #97
	str	w0, [sp, 68]
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 2
	add	x1, sp, 80
	ldr	w0, [x1, x0]
	add	w2, w0, 1
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 2
	add	x1, sp, 80
	str	w2, [x1, x0]
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 2
	add	x1, sp, 80
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 56]
	cmp	w1, w0
	bge	.L3
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 2
	add	x1, sp, 80
	ldr	w0, [x1, x0]
	str	w0, [sp, 56]
.L3:
	ldr	x0, [sp, 72]
	add	x0, x0, 1
	str	x0, [sp, 72]
.L2:
	ldr	x0, [sp, 72]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L4
	str	wzr, [sp, 64]
	b	.L5
.L7:
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldrsw	x1, [sp, 64]
	lsl	x1, x1, 2
	add	x2, sp, 80
	ldr	w1, [x2, x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	add	x1, sp, 80
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 56]
	cmp	w1, w0
	bne	.L6
	ldr	w0, [sp, 64]
	and	w1, w0, 255
	ldr	w0, [sp, 60]
	add	w2, w0, 1
	str	w2, [sp, 60]
	sxtw	x0, w0
	ldr	x2, [sp, 16]
	add	x0, x2, x0
	add	w1, w1, 97
	and	w1, w1, 255
	strb	w1, [x0]
.L6:
	ldr	w0, [sp, 64]
	add	w0, w0, 1
	str	w0, [sp, 64]
.L5:
	ldr	w0, [sp, 64]
	cmp	w0, 25
	ble	.L7
	ldr	x0, [sp, 24]
	ldr	w1, [sp, 56]
	str	w1, [x0]
	ldrsw	x0, [sp, 60]
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	strb	wzr, [x0]
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 184]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L8
	bl	__stack_chk_fail
.L8:
	ldp	x29, x30, [sp], 192
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.align	2
	.global	issame
	.type	issame, %function
issame:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	w2, [sp, 28]
	str	x3, [sp, 16]
	str	x4, [sp, 8]
	str	w5, [sp, 24]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	beq	.L10
	mov	w0, 0
	b	.L11
.L10:
	str	wzr, [sp, 56]
	b	.L12
.L14:
	ldrsw	x0, [sp, 56]
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldrb	w0, [x0]
	and	x0, x0, 255
	lsl	x0, x0, 2
	sub	x0, x0, #388
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 56]
	ldr	x2, [sp, 32]
	add	x0, x2, x0
	ldrb	w0, [x0]
	and	x0, x0, 255
	lsl	x0, x0, 2
	sub	x0, x0, #388
	ldr	x2, [sp, 16]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	beq	.L13
	mov	w0, 0
	b	.L11
.L13:
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L12:
	ldrsw	x0, [sp, 56]
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L14
	str	wzr, [sp, 60]
	b	.L15
.L17:
	ldrsw	x0, [sp, 60]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	and	x0, x0, 255
	lsl	x0, x0, 2
	sub	x0, x0, #388
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 60]
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldrb	w0, [x0]
	and	x0, x0, 255
	lsl	x0, x0, 2
	sub	x0, x0, #388
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	beq	.L16
	mov	w0, 0
	b	.L11
.L16:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L15:
	ldrsw	x0, [sp, 60]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L17
	mov	w0, 1
.L11:
	add	sp, sp, 64
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC0:
	.string	"a b b a"
	.align	3
.LC1:
	.string	"ab"
	.align	3
.LC2:
	.string	"problem112.c"
	.align	3
.LC3:
	.string	"issame(counts1, letters1, max_count1, counts2, \"ab\", 2)"
	.align	3
.LC4:
	.string	"a b c a b"
	.align	3
.LC5:
	.string	"a b c d g"
	.align	3
.LC6:
	.string	"abcdg"
	.align	3
.LC7:
	.string	"issame(counts1, letters1, max_count1, counts2, \"abcdg\", 1)"
	.align	3
.LC8:
	.string	"r t g"
	.align	3
.LC9:
	.string	"rtg"
	.align	3
.LC10:
	.string	"issame(counts1, letters1, max_count1, counts2, \"rtg\", 1)"
	.align	3
.LC11:
	.string	"b b b b a"
	.align	3
.LC12:
	.string	"b"
	.align	3
.LC13:
	.string	"issame(counts1, letters1, max_count1, counts2, \"b\", 4)"
	.align	3
.LC14:
	.string	"a"
	.align	3
.LC15:
	.string	"issame(counts1, letters1, max_count1, counts2, \"a\", 1)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -272]!
	.cfi_def_cfa_offset 272
	.cfi_offset 29, -272
	.cfi_offset 30, -264
	mov	x29, sp
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 264]
	mov	x1, 0
	add	x2, sp, 232
	add	x1, sp, 20
	add	x0, sp, 24
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	func0
	add	x0, sp, 128
	mov	x2, 104
	mov	w1, 0
	bl	memset
	mov	w0, 2
	str	w0, [sp, 128]
	mov	w0, 2
	str	w0, [sp, 132]
	ldr	w2, [sp, 20]
	add	x3, sp, 128
	add	x1, sp, 232
	add	x6, sp, 24
	mov	w5, 2
	adrp	x0, .LC1
	add	x4, x0, :lo12:.LC1
	mov	x0, x6
	bl	issame
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L19
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 59
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L19:
	add	x2, sp, 232
	add	x1, sp, 20
	add	x0, sp, 24
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	func0
	add	x0, sp, 128
	mov	x2, 104
	mov	w1, 0
	bl	memset
	mov	w0, 2
	str	w0, [sp, 128]
	mov	w0, 2
	str	w0, [sp, 132]
	ldr	w2, [sp, 20]
	add	x3, sp, 128
	add	x1, sp, 232
	add	x6, sp, 24
	mov	w5, 2
	adrp	x0, .LC1
	add	x4, x0, :lo12:.LC1
	mov	x0, x6
	bl	issame
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L20
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 65
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L20:
	add	x2, sp, 232
	add	x1, sp, 20
	add	x0, sp, 24
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	func0
	add	x0, sp, 128
	mov	x2, 104
	mov	w1, 0
	bl	memset
	mov	w0, 1
	str	w0, [sp, 152]
	ldr	w0, [sp, 152]
	str	w0, [sp, 140]
	ldr	w0, [sp, 140]
	str	w0, [sp, 136]
	ldr	w0, [sp, 136]
	str	w0, [sp, 132]
	ldr	w0, [sp, 132]
	str	w0, [sp, 128]
	ldr	w2, [sp, 20]
	add	x3, sp, 128
	add	x1, sp, 232
	add	x6, sp, 24
	mov	w5, 1
	adrp	x0, .LC6
	add	x4, x0, :lo12:.LC6
	mov	x0, x6
	bl	issame
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L21
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 70
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L21:
	add	x2, sp, 232
	add	x1, sp, 20
	add	x0, sp, 24
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	func0
	add	x0, sp, 128
	mov	x2, 104
	mov	w1, 0
	bl	memset
	mov	w0, 1
	str	w0, [sp, 152]
	ldr	w0, [sp, 152]
	str	w0, [sp, 204]
	ldr	w0, [sp, 204]
	str	w0, [sp, 196]
	ldr	w2, [sp, 20]
	add	x3, sp, 128
	add	x1, sp, 232
	add	x6, sp, 24
	mov	w5, 1
	adrp	x0, .LC9
	add	x4, x0, :lo12:.LC9
	mov	x0, x6
	bl	issame
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L22
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 75
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L22:
	add	x2, sp, 232
	add	x1, sp, 20
	add	x0, sp, 24
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	func0
	add	x0, sp, 128
	mov	x2, 104
	mov	w1, 0
	bl	memset
	mov	w0, 4
	str	w0, [sp, 132]
	ldr	w2, [sp, 20]
	add	x3, sp, 128
	add	x1, sp, 232
	add	x6, sp, 24
	mov	w5, 4
	adrp	x0, .LC12
	add	x4, x0, :lo12:.LC12
	mov	x0, x6
	bl	issame
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L23
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 80
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	__assert_fail
.L23:
	add	x2, sp, 232
	add	x1, sp, 20
	add	x0, sp, 24
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	func0
	add	x0, sp, 128
	mov	x2, 104
	mov	w1, 0
	bl	memset
	mov	w0, 1
	str	w0, [sp, 152]
	ldr	w0, [sp, 152]
	str	w0, [sp, 204]
	ldr	w0, [sp, 204]
	str	w0, [sp, 196]
	ldr	w2, [sp, 20]
	add	x3, sp, 128
	add	x1, sp, 232
	add	x6, sp, 24
	mov	w5, 1
	adrp	x0, .LC9
	add	x4, x0, :lo12:.LC9
	mov	x0, x6
	bl	issame
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L24
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 85
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L24:
	add	x2, sp, 232
	add	x1, sp, 20
	add	x0, sp, 24
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	func0
	add	x0, sp, 128
	mov	x2, 104
	mov	w1, 0
	bl	memset
	mov	w0, 1
	str	w0, [sp, 128]
	ldr	w2, [sp, 20]
	add	x3, sp, 128
	add	x1, sp, 232
	add	x6, sp, 24
	mov	w5, 1
	adrp	x0, .LC14
	add	x4, x0, :lo12:.LC14
	mov	x0, x6
	bl	issame
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L25
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 90
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	__assert_fail
.L25:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 264]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L27
	bl	__stack_chk_fail
.L27:
	mov	w0, w1
	ldp	x29, x30, [sp], 272
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
