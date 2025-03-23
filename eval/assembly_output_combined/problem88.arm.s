	.arch armv8-a
	.file	"problem88.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -80
	str	x0, [sp, 56]
	str	w1, [sp, 52]
	str	x2, [sp, 40]
	str	w3, [sp, 48]
	str	x4, [sp, 32]
	mov	x0, 800
	bl	malloc
	str	x0, [sp, 88]
	str	wzr, [sp, 76]
	str	wzr, [sp, 80]
	b	.L2
.L6:
	ldrsw	x0, [sp, 80]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w0, [x0]
	sub	w0, w0, #1
	str	w0, [sp, 84]
	b	.L3
.L5:
	ldrsw	x0, [sp, 80]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 84]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 48]
	cmp	w1, w0
	bne	.L4
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	ldr	x1, [sp, 88]
	add	x19, x1, x0
	mov	x0, 8
	bl	malloc
	str	x0, [x19]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	w1, [sp, 80]
	str	w1, [x0]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	x0, [x0]
	add	x0, x0, 4
	ldr	w1, [sp, 84]
	str	w1, [x0]
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
.L4:
	ldr	w0, [sp, 84]
	sub	w0, w0, #1
	str	w0, [sp, 84]
.L3:
	ldr	w0, [sp, 84]
	cmp	w0, 0
	bge	.L5
	ldr	w0, [sp, 80]
	add	w0, w0, 1
	str	w0, [sp, 80]
.L2:
	ldr	w1, [sp, 80]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	blt	.L6
	ldr	x0, [sp, 32]
	ldr	w1, [sp, 76]
	str	w1, [x0]
	ldr	x0, [sp, 88]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
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
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	x2, [sp, 8]
	str	w3, [sp, 16]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	beq	.L9
	mov	w0, 0
	b	.L10
.L9:
	str	wzr, [sp, 44]
	b	.L11
.L14:
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	w1, [x0]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 3
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	x0, [x0]
	ldr	w0, [x0]
	cmp	w1, w0
	bne	.L12
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	x0, [x0]
	add	x0, x0, 4
	ldr	w1, [x0]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 3
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	x0, [x0]
	add	x0, x0, 4
	ldr	w0, [x0]
	cmp	w1, w0
	beq	.L13
.L12:
	mov	w0, 0
	b	.L10
.L13:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L11:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L14
	mov	w0, 1
.L10:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.align	2
	.global	free_result
	.type	free_result, %function
free_result:
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
	.size	free_result, .-free_result
	.section	.rodata
	.align	3
.LC4:
	.string	"problem88.c"
	.align	3
.LC5:
	.string	"issame(result, returnSize, expected1, 5)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB9:
	.cfi_startproc
	sub	sp, sp, #240
	.cfi_def_cfa_offset 240
	stp	x29, x30, [sp, 224]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 224
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 216]
	mov	x1, 0
	mov	w0, 3
	str	w0, [sp, 12]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 64
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	add	x2, sp, 104
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x0, sp, 104
	str	x0, [sp, 80]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	add	x2, sp, 128
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x0, sp, 128
	str	x0, [sp, 88]
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	add	x2, sp, 152
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x0, sp, 152
	str	x0, [sp, 96]
	str	wzr, [sp, 24]
	str	wzr, [sp, 28]
	add	x0, sp, 24
	str	x0, [sp, 176]
	mov	w0, 1
	str	w0, [sp, 32]
	mov	w0, 4
	str	w0, [sp, 36]
	add	x0, sp, 32
	str	x0, [sp, 184]
	mov	w0, 1
	str	w0, [sp, 40]
	str	wzr, [sp, 44]
	add	x0, sp, 40
	str	x0, [sp, 192]
	mov	w0, 2
	str	w0, [sp, 48]
	mov	w0, 5
	str	w0, [sp, 52]
	add	x0, sp, 48
	str	x0, [sp, 200]
	mov	w0, 2
	str	w0, [sp, 56]
	str	wzr, [sp, 60]
	add	x0, sp, 56
	str	x0, [sp, 208]
	add	x2, sp, 8
	add	x1, sp, 64
	add	x0, sp, 80
	mov	x4, x2
	mov	w3, 1
	mov	x2, x1
	ldr	w1, [sp, 12]
	bl	func0
	str	x0, [sp, 16]
	ldr	w0, [sp, 8]
	add	x1, sp, 176
	mov	w3, 5
	mov	x2, x1
	mov	w1, w0
	ldr	x0, [sp, 16]
	bl	issame
	cmp	w0, 0
	bne	.L19
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 53
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L19:
	ldr	w0, [sp, 8]
	mov	w1, w0
	ldr	x0, [sp, 16]
	bl	free_result
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 216]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L21
	bl	__stack_chk_fail
.L21:
	mov	w0, w1
	ldp	x29, x30, [sp, 224]
	add	sp, sp, 240
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
	.word	6
	.word	6
	.word	6
	.align	3
.LC1:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.align	3
.LC2:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	1
	.word	6
	.align	3
.LC3:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
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
