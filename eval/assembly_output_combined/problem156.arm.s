	.arch armv8-a
	.file	"problem156.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	x1, [sp]
	str	wzr, [sp, 20]
	str	wzr, [sp, 24]
	ldr	w0, [sp, 12]
	cmp	w0, 0
	csneg	w0, w0, w0, ge
	str	w0, [sp, 12]
.L4:
	ldr	w1, [sp, 12]
	mov	w0, 26215
	movk	w0, 0x6666, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 2
	asr	w0, w1, 31
	sub	w2, w2, w0
	mov	w0, w2
	lsl	w0, w0, 2
	add	w0, w0, w2
	lsl	w0, w0, 1
	sub	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L2
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
	b	.L3
.L2:
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L3:
	ldr	w0, [sp, 12]
	mov	w1, 26215
	movk	w1, 0x6666, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 2
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	cmp	w0, 0
	bgt	.L4
	ldr	x0, [sp]
	ldr	w1, [sp, 20]
	str	w1, [x0]
	ldr	x0, [sp]
	add	x0, x0, 4
	ldr	w1, [sp, 24]
	str	w1, [x0]
	nop
	add	sp, sp, 32
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
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	w2, [sp, 28]
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	mov	x2, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	memcmp
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	ldp	x29, x30, [sp], 48
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
	.string	"problem156.c"
	.align	3
.LC1:
	.string	"issame(result, (int[]){0, 1}, 2)"
	.align	3
.LC2:
	.string	"issame(result, (int[]){1, 1}, 2)"
	.align	3
.LC3:
	.string	"issame(result, (int[]){2, 2}, 2)"
	.align	3
.LC4:
	.string	"issame(result, (int[]){3, 3}, 2)"
	.align	3
.LC5:
	.string	"issame(result, (int[]){1, 0}, 2)"
	.align	3
.LC6:
	.string	"issame(result, (int[]){2, 3}, 2)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, 32]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 32
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 24]
	mov	x1, 0
	add	x0, sp, 8
	mov	x1, x0
	mov	w0, 7
	bl	func0
	str	wzr, [sp, 16]
	mov	w0, 1
	str	w0, [sp, 20]
	add	x1, sp, 16
	add	x0, sp, 8
	mov	w2, 2
	bl	issame
	cmp	w0, 0
	bne	.L8
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 35
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L8:
	add	x0, sp, 8
	mov	x1, x0
	mov	w0, -78
	bl	func0
	mov	w0, 1
	str	w0, [sp, 16]
	mov	w0, 1
	str	w0, [sp, 20]
	add	x1, sp, 16
	add	x0, sp, 8
	mov	w2, 2
	bl	issame
	cmp	w0, 0
	bne	.L9
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 38
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L9:
	add	x0, sp, 8
	mov	x1, x0
	mov	w0, 3452
	bl	func0
	mov	w0, 2
	str	w0, [sp, 16]
	mov	w0, 2
	str	w0, [sp, 20]
	add	x1, sp, 16
	add	x0, sp, 8
	mov	w2, 2
	bl	issame
	cmp	w0, 0
	bne	.L10
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 41
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L10:
	add	x0, sp, 8
	mov	x1, x0
	mov	w0, 18531
	movk	w0, 0x5, lsl 16
	bl	func0
	mov	w0, 3
	str	w0, [sp, 16]
	mov	w0, 3
	str	w0, [sp, 20]
	add	x1, sp, 16
	add	x0, sp, 8
	mov	w2, 2
	bl	issame
	cmp	w0, 0
	bne	.L11
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 44
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L11:
	add	x0, sp, 8
	mov	x1, x0
	mov	w0, 47395
	movk	w0, 0xfffa, lsl 16
	bl	func0
	mov	w0, 3
	str	w0, [sp, 16]
	mov	w0, 3
	str	w0, [sp, 20]
	add	x1, sp, 16
	add	x0, sp, 8
	mov	w2, 2
	bl	issame
	cmp	w0, 0
	bne	.L12
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 47
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L12:
	add	x0, sp, 8
	mov	x1, x0
	mov	w0, -2
	bl	func0
	mov	w0, 1
	str	w0, [sp, 16]
	str	wzr, [sp, 20]
	add	x1, sp, 16
	add	x0, sp, 8
	mov	w2, 2
	bl	issame
	cmp	w0, 0
	bne	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 50
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L13:
	add	x0, sp, 8
	mov	x1, x0
	mov	w0, -45347
	bl	func0
	mov	w0, 2
	str	w0, [sp, 16]
	mov	w0, 3
	str	w0, [sp, 20]
	add	x1, sp, 16
	add	x0, sp, 8
	mov	w2, 2
	bl	issame
	cmp	w0, 0
	bne	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 53
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L14:
	add	x0, sp, 8
	mov	x1, x0
	mov	w0, 0
	bl	func0
	mov	w0, 1
	str	w0, [sp, 16]
	str	wzr, [sp, 20]
	add	x1, sp, 16
	add	x0, sp, 8
	mov	w2, 2
	bl	issame
	cmp	w0, 0
	bne	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 56
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L15:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 24]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L17
	bl	__stack_chk_fail
.L17:
	mov	w0, w1
	ldp	x29, x30, [sp, 32]
	add	sp, sp, 48
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
