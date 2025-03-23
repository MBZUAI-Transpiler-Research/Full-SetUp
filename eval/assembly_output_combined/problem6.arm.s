	.arch armv8-a
	.file	"problem6.c"
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
	str	w2, [sp, 32]
	str	x3, [sp, 24]
	ldr	w0, [sp, 36]
	cmp	w0, 0
	ble	.L2
	ldr	w0, [sp, 36]
	lsl	w0, w0, 1
	sub	w0, w0, #1
	b	.L3
.L2:
	mov	w0, 0
.L3:
	ldr	x1, [sp, 24]
	str	w0, [x1]
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	bl	malloc
	str	x0, [sp, 56]
	ldr	w0, [sp, 36]
	cmp	w0, 0
	ble	.L4
	ldr	x0, [sp, 40]
	ldr	w1, [x0]
	ldr	x0, [sp, 56]
	str	w1, [x0]
.L4:
	mov	w0, 1
	str	w0, [sp, 48]
	mov	w0, 1
	str	w0, [sp, 52]
	b	.L5
.L6:
	ldr	w0, [sp, 52]
	add	w1, w0, 1
	str	w1, [sp, 52]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w1, [sp, 32]
	str	w1, [x0]
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldr	w0, [sp, 52]
	add	w2, w0, 1
	str	w2, [sp, 52]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x2, [sp, 56]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L5:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L6
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
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	w2, [sp, 12]
	str	w3, [sp, 8]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	beq	.L9
	mov	w0, 0
	b	.L10
.L9:
	str	wzr, [sp, 44]
	b	.L11
.L13:
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x2, [sp, 16]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	beq	.L12
	mov	w0, 0
	b	.L10
.L12:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L11:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	blt	.L13
	mov	w0, 1
.L10:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC3:
	.string	"problem6.c"
	.align	3
.LC4:
	.string	"issame(result_empty, (const int[]){}, out_size, 0)"
	.align	3
.LC5:
	.string	"issame(result1, result_expected1, out_size, 7)"
	.align	3
.LC6:
	.string	"issame(result2, result_expected2, out_size, 5)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -160]!
	.cfi_def_cfa_offset 160
	.cfi_offset 29, -160
	.cfi_offset 30, -152
	mov	x29, sp
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 152]
	mov	x1, 0
	add	x1, sp, 28
	add	x0, sp, 56
	mov	x3, x1
	mov	w2, 7
	mov	w1, 0
	bl	func0
	str	x0, [sp, 32]
	ldr	w1, [sp, 28]
	add	x0, sp, 120
	mov	w3, 0
	mov	w2, w1
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	issame
	cmp	w0, 0
	bne	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 34
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L15:
	ldr	x0, [sp, 32]
	bl	free
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 120
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 12]
	str	q0, [x0, 12]
	mov	w0, 5
	str	w0, [sp, 80]
	mov	w0, 6
	str	w0, [sp, 84]
	mov	w0, 3
	str	w0, [sp, 88]
	mov	w0, 2
	str	w0, [sp, 92]
	add	x1, sp, 28
	add	x0, sp, 80
	mov	x3, x1
	mov	w2, 8
	mov	w1, 4
	bl	func0
	str	x0, [sp, 40]
	ldr	w1, [sp, 28]
	add	x0, sp, 120
	mov	w3, 7
	mov	w2, w1
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	issame
	cmp	w0, 0
	bne	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 40
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L16:
	ldr	x0, [sp, 40]
	bl	free
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	add	x2, sp, 96
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, sp, 64
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x1, sp, 28
	add	x0, sp, 64
	mov	x3, x1
	mov	w2, 2
	mov	w1, 3
	bl	func0
	str	x0, [sp, 48]
	ldr	w1, [sp, 28]
	add	x0, sp, 96
	mov	w3, 5
	mov	w2, w1
	mov	x1, x0
	ldr	x0, [sp, 48]
	bl	issame
	cmp	w0, 0
	bne	.L17
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 46
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L17:
	ldr	x0, [sp, 48]
	bl	free
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 152]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L19
	bl	__stack_chk_fail
.L19:
	mov	w0, w1
	ldp	x29, x30, [sp], 160
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	5
	.word	8
	.word	6
	.word	8
	.word	3
	.word	8
	.word	2
	.align	3
.LC1:
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.align	3
.LC2:
	.word	2
	.word	2
	.word	2
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
