	.arch armv8-a
	.file	"problem116.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	w2, [sp, 16]
	str	w3, [sp, 12]
	str	wzr, [sp, 32]
	str	wzr, [sp, 36]
	b	.L2
.L6:
	str	wzr, [sp, 40]
	str	wzr, [sp, 44]
	b	.L3
.L4:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	add	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L3:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	blt	.L4
	ldr	w0, [sp, 40]
	cmp	w0, 0
	ble	.L5
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 12]
	add	w0, w1, w0
	sub	w1, w0, #1
	ldr	w0, [sp, 12]
	sdiv	w0, w1, w0
	ldr	w1, [sp, 32]
	add	w0, w1, w0
	str	w0, [sp, 32]
.L5:
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L2:
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L6
	ldr	w0, [sp, 32]
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC3:
	.string	"problem116.c"
	.align	3
.LC4:
	.string	"func0(grid, rows, cols, capacity) == 6"
	.align	3
.LC5:
	.string	"func0(grid, rows, cols, capacity) == 5"
	.align	3
.LC6:
	.string	"func0(grid, rows, cols, capacity) == 0"
	.align	3
.LC7:
	.string	"func0(grid, rows, cols, capacity) == 4"
	.align	3
.LC8:
	.string	"func0(grid, rows, cols, capacity) == 2"
	.align	3
.LC9:
	.string	"All tests passed!"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #320
	.cfi_def_cfa_offset 320
	stp	x29, x30, [sp, 288]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 288
	str	x19, [sp, 304]
	.cfi_offset 19, -16
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 280]
	mov	x1, 0
	mov	w0, 3
	str	w0, [sp, 60]
	mov	w0, 4
	str	w0, [sp, 64]
	mov	w0, 1
	str	w0, [sp, 68]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [sp, 72]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 168
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 32]
	str	q0, [x0, 32]
	str	wzr, [sp]
	b	.L9
.L12:
	ldrsw	x0, [sp, 64]
	lsl	x2, x0, 2
	ldrsw	x0, [sp]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x19, x1, x0
	mov	x0, x2
	bl	malloc
	str	x0, [x19]
	str	wzr, [sp, 4]
	b	.L10
.L11:
	ldrsw	x0, [sp]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 4]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldrsw	x1, [sp, 4]
	ldrsw	x2, [sp]
	lsl	x2, x2, 2
	add	x1, x2, x1
	lsl	x1, x1, 2
	add	x2, sp, 168
	ldr	w1, [x2, x1]
	str	w1, [x0]
	ldr	w0, [sp, 4]
	add	w0, w0, 1
	str	w0, [sp, 4]
.L10:
	ldr	w1, [sp, 4]
	ldr	w0, [sp, 64]
	cmp	w1, w0
	blt	.L11
	ldr	w0, [sp]
	add	w0, w0, 1
	str	w0, [sp]
.L9:
	ldr	w1, [sp]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	blt	.L12
	ldr	w3, [sp, 68]
	ldr	w2, [sp, 64]
	ldr	w1, [sp, 60]
	ldr	x0, [sp, 72]
	bl	func0
	cmp	w0, 6
	beq	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 33
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L13:
	str	wzr, [sp, 8]
	b	.L14
.L15:
	ldrsw	x0, [sp, 8]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	free
	ldr	w0, [sp, 8]
	add	w0, w0, 1
	str	w0, [sp, 8]
.L14:
	ldr	w1, [sp, 8]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	blt	.L15
	ldr	x0, [sp, 72]
	bl	free
	mov	w0, 4
	str	w0, [sp, 60]
	mov	w0, 4
	str	w0, [sp, 64]
	mov	w0, 2
	str	w0, [sp, 68]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [sp, 72]
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 216
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	str	wzr, [sp, 12]
	b	.L16
.L19:
	ldrsw	x0, [sp, 64]
	lsl	x2, x0, 2
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x19, x1, x0
	mov	x0, x2
	bl	malloc
	str	x0, [x19]
	str	wzr, [sp, 16]
	b	.L17
.L18:
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 16]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldrsw	x1, [sp, 16]
	ldrsw	x2, [sp, 12]
	lsl	x2, x2, 2
	add	x1, x2, x1
	lsl	x1, x1, 2
	add	x2, sp, 216
	ldr	w1, [x2, x1]
	str	w1, [x0]
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 16]
.L17:
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 64]
	cmp	w1, w0
	blt	.L18
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	str	w0, [sp, 12]
.L16:
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	blt	.L19
	ldr	w3, [sp, 68]
	ldr	w2, [sp, 64]
	ldr	w1, [sp, 60]
	ldr	x0, [sp, 72]
	bl	func0
	cmp	w0, 5
	beq	.L20
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 47
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L20:
	str	wzr, [sp, 20]
	b	.L21
.L22:
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	free
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L21:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	blt	.L22
	ldr	x0, [sp, 72]
	bl	free
	mov	w0, 2
	str	w0, [sp, 60]
	mov	w0, 3
	str	w0, [sp, 64]
	mov	w0, 5
	str	w0, [sp, 68]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [sp, 72]
	stp	xzr, xzr, [sp, 80]
	str	xzr, [sp, 96]
	str	wzr, [sp, 24]
	b	.L23
.L26:
	ldrsw	x0, [sp, 64]
	lsl	x2, x0, 2
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x19, x1, x0
	mov	x0, x2
	bl	malloc
	str	x0, [x19]
	str	wzr, [sp, 28]
	b	.L24
.L25:
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	add	x2, x1, x0
	ldrsw	x3, [sp, 28]
	ldrsw	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	add	x0, x0, x3
	lsl	x0, x0, 2
	add	x1, sp, 80
	ldr	w0, [x1, x0]
	str	w0, [x2]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L24:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 64]
	cmp	w1, w0
	blt	.L25
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L23:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	blt	.L26
	ldr	w3, [sp, 68]
	ldr	w2, [sp, 64]
	ldr	w1, [sp, 60]
	ldr	x0, [sp, 72]
	bl	func0
	cmp	w0, 0
	beq	.L27
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 61
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L27:
	str	wzr, [sp, 32]
	b	.L28
.L29:
	ldrsw	x0, [sp, 32]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	free
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
.L28:
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	blt	.L29
	ldr	x0, [sp, 72]
	bl	free
	mov	w0, 2
	str	w0, [sp, 60]
	mov	w0, 4
	str	w0, [sp, 64]
	mov	w0, 2
	str	w0, [sp, 68]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [sp, 72]
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, sp, 104
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	str	wzr, [sp, 36]
	b	.L30
.L33:
	ldrsw	x0, [sp, 64]
	lsl	x2, x0, 2
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x19, x1, x0
	mov	x0, x2
	bl	malloc
	str	x0, [x19]
	str	wzr, [sp, 40]
	b	.L31
.L32:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldrsw	x1, [sp, 40]
	ldrsw	x2, [sp, 36]
	lsl	x2, x2, 2
	add	x1, x2, x1
	lsl	x1, x1, 2
	add	x2, sp, 104
	ldr	w1, [x2, x1]
	str	w1, [x0]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L31:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 64]
	cmp	w1, w0
	blt	.L32
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L30:
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	blt	.L33
	ldr	w3, [sp, 68]
	ldr	w2, [sp, 64]
	ldr	w1, [sp, 60]
	ldr	x0, [sp, 72]
	bl	func0
	cmp	w0, 4
	beq	.L34
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 75
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L34:
	str	wzr, [sp, 44]
	b	.L35
.L36:
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	free
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L35:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	blt	.L36
	ldr	x0, [sp, 72]
	bl	free
	mov	w0, 2
	str	w0, [sp, 60]
	mov	w0, 4
	str	w0, [sp, 64]
	mov	w0, 9
	str	w0, [sp, 68]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [sp, 72]
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, sp, 136
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	str	wzr, [sp, 48]
	b	.L37
.L40:
	ldrsw	x0, [sp, 64]
	lsl	x2, x0, 2
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x19, x1, x0
	mov	x0, x2
	bl	malloc
	str	x0, [x19]
	str	wzr, [sp, 52]
	b	.L38
.L39:
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldrsw	x1, [sp, 52]
	ldrsw	x2, [sp, 48]
	lsl	x2, x2, 2
	add	x1, x2, x1
	lsl	x1, x1, 2
	add	x2, sp, 136
	ldr	w1, [x2, x1]
	str	w1, [x0]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L38:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 64]
	cmp	w1, w0
	blt	.L39
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L37:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	blt	.L40
	ldr	w3, [sp, 68]
	ldr	w2, [sp, 64]
	ldr	w1, [sp, 60]
	ldr	x0, [sp, 72]
	bl	func0
	cmp	w0, 2
	beq	.L41
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 89
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L41:
	str	wzr, [sp, 56]
	b	.L42
.L43:
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	free
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L42:
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	blt	.L43
	ldr	x0, [sp, 72]
	bl	free
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	puts
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 280]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L45
	bl	__stack_chk_fail
.L45:
	mov	w0, w1
	ldr	x19, [sp, 304]
	ldp	x29, x30, [sp, 288]
	add	sp, sp, 320
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	0
	.word	1
	.word	0
	.word	0
	.word	1
	.word	0
	.word	0
	.word	1
	.word	1
	.word	1
	.word	1
	.align	3
.LC1:
	.word	0
	.word	0
	.word	1
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	1
	.word	1
	.word	1
	.word	0
	.word	1
	.word	1
	.word	1
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
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
