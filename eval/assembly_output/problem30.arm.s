	.arch armv8-a
	.file	"problem30.c"
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
	ldr	x0, [sp, 24]
	bl	strlen
	str	w0, [sp, 60]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	bl	malloc
	mov	x1, x0
	ldr	x0, [sp, 16]
	str	x1, [x0]
	str	wzr, [sp, 52]
	str	wzr, [sp, 56]
	b	.L2
.L4:
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldrsw	x1, [sp, 60]
	mov	x2, x1
	ldr	x1, [sp, 24]
	bl	strncmp
	cmp	w0, 0
	bne	.L3
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldr	x0, [sp, 16]
	ldr	x2, [x0]
	ldr	w0, [sp, 52]
	add	w3, w0, 1
	str	w3, [sp, 52]
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x0, x2, x0
	ldr	x1, [x1]
	str	x1, [x0]
.L3:
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L2:
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L4
	ldr	w0, [sp, 52]
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
	str	w1, [sp, 36]
	str	x2, [sp, 24]
	str	w3, [sp, 32]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 32]
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
	ldr	x1, [sp, 24]
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
	ldr	w0, [sp, 36]
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
.LC7:
	.string	"john"
	.align	3
.LC8:
	.string	"problem30.c"
	.align	3
.LC9:
	.string	"issame(result, count, (char*[]){}, 0)"
	.align	3
.LC0:
	.string	"xxx"
	.align	3
.LC12:
	.string	"issame(result, count, expected, 3)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, 112]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 112
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 104]
	mov	x1, 0
	add	x0, sp, 16
	add	x4, sp, 24
	mov	x3, x0
	adrp	x0, .LC7
	add	x2, x0, :lo12:.LC7
	mov	w1, 0
	mov	x0, x4
	bl	func0
	str	w0, [sp, 12]
	ldr	x0, [sp, 16]
	add	x1, sp, 56
	mov	w3, 0
	mov	x2, x1
	ldr	w1, [sp, 12]
	bl	issame
	cmp	w0, 0
	bne	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 40
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L13:
	ldr	x0, [sp, 16]
	bl	free
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	add	x0, sp, 56
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 32]
	str	q0, [x0, 32]
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	add	x2, sp, 32
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x0, sp, 16
	add	x4, sp, 56
	mov	x3, x0
	adrp	x0, .LC0
	add	x2, x0, :lo12:.LC0
	mov	w1, 6
	mov	x0, x4
	bl	func0
	str	w0, [sp, 12]
	ldr	x0, [sp, 16]
	add	x1, sp, 32
	mov	w3, 3
	mov	x2, x1
	ldr	w1, [sp, 12]
	bl	issame
	cmp	w0, 0
	bne	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 46
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	__assert_fail
.L14:
	ldr	x0, [sp, 16]
	bl	free
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 104]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L16
	bl	__stack_chk_fail
.L16:
	mov	w0, w1
	ldp	x29, x30, [sp, 112]
	add	sp, sp, 128
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
.LC10:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.xword	.LC3
	.xword	.LC4
	.xword	.LC0
	.align	3
.LC11:
	.xword	.LC0
	.xword	.LC4
	.xword	.LC0
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
