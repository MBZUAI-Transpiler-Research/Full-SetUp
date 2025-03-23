	.arch armv8-a
	.file	"problem106.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -160]!
	.cfi_def_cfa_offset 160
	.cfi_offset 29, -160
	.cfi_offset 30, -152
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 152]
	mov	x1, 0
	adrp	x0, .LC17
	add	x1, x0, :lo12:.LC17
	add	x0, sp, 72
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	ldr	q0, [x1, 64]
	str	q0, [x0, 64]
	str	wzr, [sp, 60]
	b	.L2
.L6:
	str	wzr, [sp, 64]
	b	.L3
.L5:
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 64]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L4
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 68]
	ldrsw	x0, [sp, 64]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 64]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w1, [sp, 68]
	str	w1, [x0]
.L4:
	ldr	w0, [sp, 64]
	add	w0, w0, 1
	str	w0, [sp, 64]
.L3:
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 60]
	sub	w0, w1, w0
	sub	w0, w0, #1
	ldr	w1, [sp, 64]
	cmp	w1, w0
	blt	.L5
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L2:
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L6
	ldr	x0, [sp, 16]
	str	wzr, [x0]
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	str	w0, [sp, 60]
	b	.L7
.L9:
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 0
	ble	.L8
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 9
	bgt	.L8
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	add	w1, w0, 1
	ldr	x0, [sp, 16]
	str	w1, [x0]
.L8:
	ldr	w0, [sp, 60]
	sub	w0, w0, #1
	str	w0, [sp, 60]
.L7:
	ldr	w0, [sp, 60]
	cmp	w0, 0
	bge	.L9
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 3
	bl	malloc
	mov	x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	str	w0, [sp, 60]
	str	wzr, [sp, 64]
	b	.L10
.L13:
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 0
	ble	.L11
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 9
	bgt	.L11
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w3, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	w0, [sp, 64]
	add	w2, w0, 1
	str	w2, [sp, 64]
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x0, x1, x0
	sxtw	x1, w3
	lsl	x1, x1, 3
	add	x2, sp, 72
	ldr	x1, [x2, x1]
	str	x1, [x0]
.L11:
	ldr	w0, [sp, 60]
	sub	w0, w0, #1
	str	w0, [sp, 60]
.L10:
	ldr	w0, [sp, 60]
	cmp	w0, 0
	blt	.L15
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	ldr	w1, [sp, 64]
	cmp	w1, w0
	blt	.L13
.L15:
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 152]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L14
	bl	__stack_chk_fail
.L14:
	ldp	x29, x30, [sp], 160
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	""
	.align	3
.LC1:
	.string	"One"
	.align	3
.LC2:
	.string	"Two"
	.align	3
.LC3:
	.string	"Three"
	.align	3
.LC4:
	.string	"Four"
	.align	3
.LC5:
	.string	"Five"
	.align	3
.LC6:
	.string	"Six"
	.align	3
.LC7:
	.string	"Seven"
	.align	3
.LC8:
	.string	"Eight"
	.align	3
.LC9:
	.string	"Nine"
	.data
	.align	3
.LC17:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.xword	.LC3
	.xword	.LC4
	.xword	.LC5
	.xword	.LC6
	.xword	.LC7
	.xword	.LC8
	.xword	.LC9
	.text
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
	beq	.L17
	mov	w0, 0
	b	.L18
.L17:
	str	wzr, [sp, 60]
	b	.L19
.L21:
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
	beq	.L20
	mov	w0, 0
	b	.L18
.L20:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L19:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L21
	mov	w0, 1
.L18:
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
.LC19:
	.string	"problem106.c"
	.align	3
.LC20:
	.string	"issame(out, out_size, expected1, 8)"
	.align	3
.LC21:
	.string	"issame(out, out_size, NULL, 0)"
	.align	3
.LC22:
	.string	"issame(out, out_size, expected3, 1)"
	.align	3
.LC24:
	.string	"issame(out, out_size, expected4, 3)"
	.align	3
.LC26:
	.string	"issame(out, out_size, expected5, 3)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -256]!
	.cfi_def_cfa_offset 256
	.cfi_offset 29, -256
	.cfi_offset 30, -248
	mov	x29, sp
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 248]
	mov	x1, 0
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	add	x0, sp, 152
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	adrp	x0, .LC18
	add	x1, x0, :lo12:.LC18
	add	x0, sp, 184
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	add	x2, sp, 28
	add	x1, sp, 32
	add	x0, sp, 152
	mov	x3, x2
	mov	x2, x1
	mov	w1, 8
	bl	func0
	ldr	x0, [sp, 32]
	ldr	w1, [sp, 28]
	add	x2, sp, 184
	mov	w3, 8
	bl	issame
	cmp	w0, 0
	bne	.L23
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 57
	adrp	x0, .LC19
	add	x1, x0, :lo12:.LC19
	adrp	x0, .LC20
	add	x0, x0, :lo12:.LC20
	bl	__assert_fail
.L23:
	ldr	x0, [sp, 32]
	bl	free
	add	x2, sp, 28
	add	x1, sp, 32
	add	x0, sp, 40
	mov	x3, x2
	mov	x2, x1
	mov	w1, 0
	bl	func0
	ldr	x0, [sp, 32]
	ldr	w1, [sp, 28]
	mov	w3, 0
	mov	x2, 0
	bl	issame
	cmp	w0, 0
	bne	.L24
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 62
	adrp	x0, .LC19
	add	x1, x0, :lo12:.LC19
	adrp	x0, .LC21
	add	x0, x0, :lo12:.LC21
	bl	__assert_fail
.L24:
	ldr	x0, [sp, 32]
	bl	free
	adrp	x0, .LC13
	add	x1, x0, :lo12:.LC13
	add	x0, sp, 56
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	str	x0, [sp, 48]
	add	x2, sp, 28
	add	x1, sp, 32
	add	x0, sp, 56
	mov	x3, x2
	mov	x2, x1
	mov	w1, 3
	bl	func0
	ldr	x0, [sp, 32]
	ldr	w1, [sp, 28]
	add	x2, sp, 48
	mov	w3, 1
	bl	issame
	cmp	w0, 0
	bne	.L25
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 68
	adrp	x0, .LC19
	add	x1, x0, :lo12:.LC19
	adrp	x0, .LC22
	add	x0, x0, :lo12:.LC22
	bl	__assert_fail
.L25:
	ldr	x0, [sp, 32]
	bl	free
	mov	w0, 1
	str	w0, [sp, 88]
	mov	w0, -1
	str	w0, [sp, 92]
	mov	w0, 3
	str	w0, [sp, 96]
	mov	w0, 2
	str	w0, [sp, 100]
	adrp	x0, .LC23
	add	x0, x0, :lo12:.LC23
	add	x2, sp, 104
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x2, sp, 28
	add	x1, sp, 32
	add	x0, sp, 88
	mov	x3, x2
	mov	x2, x1
	mov	w1, 4
	bl	func0
	ldr	x0, [sp, 32]
	ldr	w1, [sp, 28]
	add	x2, sp, 104
	mov	w3, 3
	bl	issame
	cmp	w0, 0
	bne	.L26
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 74
	adrp	x0, .LC19
	add	x1, x0, :lo12:.LC19
	adrp	x0, .LC24
	add	x0, x0, :lo12:.LC24
	bl	__assert_fail
.L26:
	ldr	x0, [sp, 32]
	bl	free
	adrp	x0, .LC15
	add	x1, x0, :lo12:.LC15
	add	x0, sp, 72
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	adrp	x0, .LC25
	add	x0, x0, :lo12:.LC25
	add	x2, sp, 128
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x2, sp, 28
	add	x1, sp, 32
	add	x0, sp, 72
	mov	x3, x2
	mov	x2, x1
	mov	w1, 3
	bl	func0
	ldr	x0, [sp, 32]
	ldr	w1, [sp, 28]
	add	x2, sp, 128
	mov	w3, 3
	bl	issame
	cmp	w0, 0
	bne	.L27
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 80
	adrp	x0, .LC19
	add	x1, x0, :lo12:.LC19
	adrp	x0, .LC26
	add	x0, x0, :lo12:.LC26
	bl	__assert_fail
.L27:
	ldr	x0, [sp, 32]
	bl	free
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 248]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L29
	bl	__stack_chk_fail
.L29:
	mov	w0, w1
	ldp	x29, x30, [sp], 256
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC11:
	.word	2
	.word	1
	.word	1
	.word	4
	.word	5
	.word	8
	.word	2
	.word	3
	.data
	.align	3
.LC18:
	.xword	.LC8
	.xword	.LC5
	.xword	.LC4
	.xword	.LC3
	.xword	.LC2
	.xword	.LC2
	.xword	.LC1
	.xword	.LC1
	.section	.rodata
	.align	3
.LC13:
	.word	1
	.word	-1
	.word	55
	.data
	.align	3
.LC23:
	.xword	.LC3
	.xword	.LC2
	.xword	.LC1
	.section	.rodata
	.align	3
.LC15:
	.word	9
	.word	4
	.word	8
	.data
	.align	3
.LC25:
	.xword	.LC9
	.xword	.LC8
	.xword	.LC4
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
