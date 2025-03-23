	.arch armv8-a
	.file	"problem108.c"
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
	str	w0, [sp, 28]
	mov	x0, 8
	bl	malloc
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	str	wzr, [x0]
	ldr	x0, [sp, 56]
	add	x0, x0, 4
	str	wzr, [x0]
	mov	w0, 1
	str	w0, [sp, 40]
	b	.L2
.L7:
	str	wzr, [sp, 44]
	ldr	w0, [sp, 40]
	str	w0, [sp, 52]
	ldr	w0, [sp, 40]
	str	w0, [sp, 48]
	b	.L3
.L4:
	ldr	w1, [sp, 44]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w3, w0
	ldr	w2, [sp, 48]
	mov	w0, 26215
	movk	w0, 0x6666, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	asr	w1, w0, 2
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	sub	w1, w2, w0
	add	w0, w3, w1
	str	w0, [sp, 44]
	ldr	w0, [sp, 48]
	mov	w1, 26215
	movk	w1, 0x6666, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 2
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 48]
.L3:
	ldr	w0, [sp, 48]
	cmp	w0, 0
	bne	.L4
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	bne	.L5
	ldr	w0, [sp, 52]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L6
	ldr	x0, [sp, 56]
	ldr	w0, [x0]
	add	w1, w0, 1
	ldr	x0, [sp, 56]
	str	w1, [x0]
	b	.L5
.L6:
	ldr	x0, [sp, 56]
	add	x0, x0, 4
	ldr	w1, [x0]
	add	w1, w1, 1
	str	w1, [x0]
.L5:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L2:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	ble	.L7
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
	str	wzr, [sp, 44]
	b	.L10
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
	beq	.L11
	mov	w0, 0
	b	.L12
.L11:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L10:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	blt	.L13
	mov	w0, 1
.L12:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC0:
	.string	"problem108.c"
	.align	3
.LC1:
	.string	"issame(result, expected1, 2)"
	.align	3
.LC2:
	.string	"issame(result, expected2, 2)"
	.align	3
.LC3:
	.string	"issame(result, expected3, 2)"
	.align	3
.LC4:
	.string	"issame(result, expected4, 2)"
	.align	3
.LC5:
	.string	"issame(result, expected5, 2)"
	.align	3
.LC6:
	.string	"issame(result, expected6, 2)"
	.align	3
.LC7:
	.string	"issame(result, expected7, 2)"
	.align	3
.LC8:
	.string	"issame(result, expected8, 2)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 88]
	mov	x1, 0
	mov	w0, 123
	bl	func0
	str	x0, [sp, 16]
	mov	w0, 8
	str	w0, [sp, 24]
	mov	w0, 13
	str	w0, [sp, 28]
	add	x0, sp, 24
	mov	w2, 2
	mov	x1, x0
	ldr	x0, [sp, 16]
	bl	issame
	cmp	w0, 0
	bne	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 45
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L15:
	ldr	x0, [sp, 16]
	bl	free
	mov	w0, 12
	bl	func0
	str	x0, [sp, 16]
	mov	w0, 4
	str	w0, [sp, 32]
	mov	w0, 6
	str	w0, [sp, 36]
	add	x0, sp, 32
	mov	w2, 2
	mov	x1, x0
	ldr	x0, [sp, 16]
	bl	issame
	cmp	w0, 0
	bne	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 50
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L16:
	ldr	x0, [sp, 16]
	bl	free
	mov	w0, 3
	bl	func0
	str	x0, [sp, 16]
	mov	w0, 1
	str	w0, [sp, 40]
	mov	w0, 2
	str	w0, [sp, 44]
	add	x0, sp, 40
	mov	w2, 2
	mov	x1, x0
	ldr	x0, [sp, 16]
	bl	issame
	cmp	w0, 0
	bne	.L17
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 55
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L17:
	ldr	x0, [sp, 16]
	bl	free
	mov	w0, 63
	bl	func0
	str	x0, [sp, 16]
	mov	w0, 6
	str	w0, [sp, 48]
	mov	w0, 8
	str	w0, [sp, 52]
	add	x0, sp, 48
	mov	w2, 2
	mov	x1, x0
	ldr	x0, [sp, 16]
	bl	issame
	cmp	w0, 0
	bne	.L18
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 60
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L18:
	ldr	x0, [sp, 16]
	bl	free
	mov	w0, 25
	bl	func0
	str	x0, [sp, 16]
	mov	w0, 5
	str	w0, [sp, 56]
	mov	w0, 6
	str	w0, [sp, 60]
	add	x0, sp, 56
	mov	w2, 2
	mov	x1, x0
	ldr	x0, [sp, 16]
	bl	issame
	cmp	w0, 0
	bne	.L19
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 65
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L19:
	ldr	x0, [sp, 16]
	bl	free
	mov	w0, 19
	bl	func0
	str	x0, [sp, 16]
	mov	w0, 4
	str	w0, [sp, 64]
	mov	w0, 6
	str	w0, [sp, 68]
	add	x0, sp, 64
	mov	w2, 2
	mov	x1, x0
	ldr	x0, [sp, 16]
	bl	issame
	cmp	w0, 0
	bne	.L20
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 70
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L20:
	ldr	x0, [sp, 16]
	bl	free
	mov	w0, 9
	bl	func0
	str	x0, [sp, 16]
	mov	w0, 4
	str	w0, [sp, 72]
	mov	w0, 5
	str	w0, [sp, 76]
	add	x0, sp, 72
	mov	w2, 2
	mov	x1, x0
	ldr	x0, [sp, 16]
	bl	issame
	cmp	w0, 0
	bne	.L21
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 75
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L21:
	ldr	x0, [sp, 16]
	bl	free
	mov	w0, 1
	bl	func0
	str	x0, [sp, 16]
	str	wzr, [sp, 80]
	mov	w0, 1
	str	w0, [sp, 84]
	add	x0, sp, 80
	mov	w2, 2
	mov	x1, x0
	ldr	x0, [sp, 16]
	bl	issame
	cmp	w0, 0
	bne	.L22
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 80
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L22:
	ldr	x0, [sp, 16]
	bl	free
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 88]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L24
	bl	__stack_chk_fail
.L24:
	mov	w0, w1
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
