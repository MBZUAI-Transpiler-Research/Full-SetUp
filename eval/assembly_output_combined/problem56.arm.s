	.arch armv8-a
	.file	"problem56.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #4048
	.cfi_def_cfa_offset 4048
	stp	x29, x30, [sp]
	.cfi_offset 29, -4048
	.cfi_offset 30, -4040
	mov	x29, sp
	str	w0, [sp, 28]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 4040]
	mov	x1, 0
	add	x0, sp, 40
	mov	x1, 4000
	mov	x2, x1
	mov	w1, 0
	bl	memset
	str	wzr, [sp, 40]
	mov	w0, 1
	str	w0, [sp, 44]
	mov	w0, 2
	str	w0, [sp, 36]
	b	.L2
.L3:
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 40
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 36]
	sub	w0, w0, #2
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x2, sp, 40
	ldr	w0, [x2, x0]
	add	w2, w1, w0
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	add	x1, sp, 40
	str	w2, [x1, x0]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L2:
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	ble	.L3
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	add	x1, sp, 40
	ldr	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 4040]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L5
	bl	__stack_chk_fail
.L5:
	mov	w0, w1
	ldp	x29, x30, [sp]
	add	sp, sp, 4048
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem56.c"
	.align	3
.LC1:
	.string	"func0(10) == 55"
	.align	3
.LC2:
	.string	"func0(1) == 1"
	.align	3
.LC3:
	.string	"func0(8) == 21"
	.align	3
.LC4:
	.string	"func0(11) == 89"
	.align	3
.LC5:
	.string	"func0(12) == 144"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	mov	w0, 10
	bl	func0
	cmp	w0, 55
	beq	.L7
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 17
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L7:
	mov	w0, 1
	bl	func0
	cmp	w0, 1
	beq	.L8
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 18
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L8:
	mov	w0, 8
	bl	func0
	cmp	w0, 21
	beq	.L9
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 19
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L9:
	mov	w0, 11
	bl	func0
	cmp	w0, 89
	beq	.L10
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 20
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L10:
	mov	w0, 12
	bl	func0
	cmp	w0, 144
	beq	.L11
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 21
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L11:
	mov	w0, 0
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
