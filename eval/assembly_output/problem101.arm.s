	.arch armv8-a
	.file	"problem101.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	bl	malloc
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	w1, [sp, 28]
	str	w1, [x0]
	mov	w0, 1
	str	w0, [sp, 36]
	b	.L2
.L3:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	add	w1, w1, 2
	str	w1, [x0]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L2:
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L3
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC4:
	.string	"problem101.c"
	.align	3
.LC5:
	.string	"result[i] == test1[i]"
	.align	3
.LC6:
	.string	"result[i] == test2[i]"
	.align	3
.LC7:
	.string	"result[i] == test3[i]"
	.align	3
.LC8:
	.string	"result[i] == test4[i]"
	.align	3
.LC9:
	.string	"result[i] == test5[i]"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #176
	.cfi_def_cfa_offset 176
	stp	x29, x30, [sp, 160]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 160
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 152]
	mov	x1, 0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 40
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	mov	w0, 4
	str	w0, [sp, 56]
	mov	w0, 6
	str	w0, [sp, 60]
	mov	w0, 8
	str	w0, [sp, 64]
	mov	w0, 10
	str	w0, [sp, 68]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	add	x2, sp, 72
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	add	x2, sp, 96
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	add	x0, sp, 120
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	mov	w0, 3
	bl	func0
	str	x0, [sp, 32]
	str	wzr, [sp, 12]
	b	.L6
.L8:
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 2
	add	x2, sp, 40
	ldr	w0, [x2, x0]
	cmp	w1, w0
	beq	.L7
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 27
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L7:
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	str	w0, [sp, 12]
.L6:
	ldr	w0, [sp, 12]
	cmp	w0, 2
	ble	.L8
	ldr	x0, [sp, 32]
	bl	free
	mov	w0, 4
	bl	func0
	str	x0, [sp, 32]
	str	wzr, [sp, 16]
	b	.L9
.L11:
	ldrsw	x0, [sp, 16]
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 16]
	lsl	x0, x0, 2
	add	x2, sp, 56
	ldr	w0, [x2, x0]
	cmp	w1, w0
	beq	.L10
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 31
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L10:
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 16]
.L9:
	ldr	w0, [sp, 16]
	cmp	w0, 3
	ble	.L11
	ldr	x0, [sp, 32]
	bl	free
	mov	w0, 5
	bl	func0
	str	x0, [sp, 32]
	str	wzr, [sp, 20]
	b	.L12
.L14:
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	add	x2, sp, 72
	ldr	w0, [x2, x0]
	cmp	w1, w0
	beq	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 35
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L13:
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L12:
	ldr	w0, [sp, 20]
	cmp	w0, 4
	ble	.L14
	ldr	x0, [sp, 32]
	bl	free
	mov	w0, 6
	bl	func0
	str	x0, [sp, 32]
	str	wzr, [sp, 24]
	b	.L15
.L17:
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 2
	add	x2, sp, 96
	ldr	w0, [x2, x0]
	cmp	w1, w0
	beq	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 39
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L16:
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L15:
	ldr	w0, [sp, 24]
	cmp	w0, 5
	ble	.L17
	ldr	x0, [sp, 32]
	bl	free
	mov	w0, 8
	bl	func0
	str	x0, [sp, 32]
	str	wzr, [sp, 28]
	b	.L18
.L20:
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	add	x2, sp, 120
	ldr	w0, [x2, x0]
	cmp	w1, w0
	beq	.L19
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 43
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L19:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L18:
	ldr	w0, [sp, 28]
	cmp	w0, 7
	ble	.L20
	ldr	x0, [sp, 32]
	bl	free
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 152]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L22
	bl	__stack_chk_fail
.L22:
	mov	w0, w1
	ldp	x29, x30, [sp, 160]
	add	sp, sp, 176
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	3
	.word	5
	.word	7
	.align	3
.LC1:
	.word	5
	.word	7
	.word	9
	.word	11
	.word	13
	.align	3
.LC2:
	.word	6
	.word	8
	.word	10
	.word	12
	.word	14
	.word	16
	.align	3
.LC3:
	.word	8
	.word	10
	.word	12
	.word	14
	.word	16
	.word	18
	.word	20
	.word	22
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
