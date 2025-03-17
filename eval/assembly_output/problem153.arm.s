	.arch armv8-a
	.file	"problem153.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	str	w3, [sp, 4]
	str	wzr, [sp, 44]
	b	.L2
.L3:
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
	sub	w0, w1, w0
	ldrsw	x1, [sp, 44]
	lsl	x1, x1, 2
	ldr	x2, [sp, 8]
	add	x1, x2, x1
	cmp	w0, 0
	csneg	w0, w0, w0, ge
	str	w0, [x1]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L2:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L3
	nop
	nop
	add	sp, sp, 48
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
	b	.L5
.L8:
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
	beq	.L6
	mov	w0, 0
	b	.L7
.L6:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L5:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	blt	.L8
	mov	w0, 1
.L7:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC9:
	.string	"problem153.c"
	.align	3
.LC10:
	.string	"issame(result, (int[]){0,0,0,0,3,3}, 6)"
	.align	3
.LC11:
	.string	"issame(result, (int[]){4,4,1,0,0,6}, 6)"
	.align	3
.LC12:
	.string	"issame(result, (int[]){0,0,0,0,0,0}, 6)"
	.align	3
.LC13:
	.string	"issame(result, (int[]){2,4,6}, 3)"
	.align	3
.LC14:
	.string	"issame(result, (int[]){2,0,0,1}, 4)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #336
	.cfi_def_cfa_offset 336
	stp	x29, x30, [sp, 320]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 320
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 312]
	mov	x1, 0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	add	x2, sp, 96
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	add	x2, sp, 120
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x2, sp, 72
	add	x1, sp, 120
	add	x0, sp, 96
	mov	w3, 6
	bl	func0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	add	x2, sp, 288
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x1, sp, 288
	add	x0, sp, 72
	mov	w2, 6
	bl	issame
	cmp	w0, 0
	bne	.L10
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 26
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L10:
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	add	x2, sp, 144
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	add	x2, sp, 168
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x2, sp, 72
	add	x1, sp, 168
	add	x0, sp, 144
	mov	w3, 6
	bl	func0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	add	x2, sp, 288
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x1, sp, 288
	add	x0, sp, 72
	mov	w2, 6
	bl	issame
	cmp	w0, 0
	bne	.L11
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 29
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	__assert_fail
.L11:
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	add	x2, sp, 192
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	add	x2, sp, 216
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x2, sp, 72
	add	x1, sp, 216
	add	x0, sp, 192
	mov	w3, 6
	bl	func0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	add	x2, sp, 288
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x1, sp, 288
	add	x0, sp, 72
	mov	w2, 6
	bl	issame
	cmp	w0, 0
	bne	.L12
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 32
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L12:
	stp	xzr, xzr, [sp, 240]
	str	xzr, [sp, 256]
	add	x0, sp, 512
	stp	xzr, xzr, [x0, -248]
	str	xzr, [sp, 280]
	add	x2, sp, 72
	add	x1, sp, 264
	add	x0, sp, 240
	mov	w3, 6
	bl	func0
	stp	xzr, xzr, [sp, 288]
	str	xzr, [sp, 304]
	add	x1, sp, 288
	add	x0, sp, 72
	mov	w2, 6
	bl	issame
	cmp	w0, 0
	bne	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 35
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	__assert_fail
.L13:
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	add	x0, sp, 8
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	add	x0, sp, 24
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x2, sp, 72
	add	x1, sp, 24
	add	x0, sp, 8
	mov	w3, 3
	bl	func0
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	add	x0, sp, 288
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x1, sp, 288
	add	x0, sp, 72
	mov	w2, 3
	bl	issame
	cmp	w0, 0
	bne	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 38
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	__assert_fail
.L14:
	mov	w0, 1
	str	w0, [sp, 40]
	mov	w0, 2
	str	w0, [sp, 44]
	mov	w0, 3
	str	w0, [sp, 48]
	mov	w0, 5
	str	w0, [sp, 52]
	mov	w0, -1
	str	w0, [sp, 56]
	mov	w0, 2
	str	w0, [sp, 60]
	mov	w0, 3
	str	w0, [sp, 64]
	mov	w0, 4
	str	w0, [sp, 68]
	add	x2, sp, 72
	add	x1, sp, 56
	add	x0, sp, 40
	mov	w3, 4
	bl	func0
	mov	w0, 2
	str	w0, [sp, 288]
	str	wzr, [sp, 292]
	str	wzr, [sp, 296]
	mov	w0, 1
	str	w0, [sp, 300]
	add	x1, sp, 288
	add	x0, sp, 72
	mov	w2, 4
	bl	issame
	cmp	w0, 0
	bne	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 41
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	__assert_fail
.L15:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 312]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L17
	bl	__stack_chk_fail
.L17:
	mov	w0, w1
	ldp	x29, x30, [sp, 320]
	add	sp, sp, 336
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	1
	.align	3
.LC1:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	2
	.word	-2
	.align	3
.LC2:
	.word	0
	.word	0
	.word	0
	.word	0
	.word	3
	.word	3
	.align	3
.LC3:
	.word	0
	.word	5
	.word	0
	.word	0
	.word	0
	.word	4
	.align	3
.LC4:
	.word	4
	.word	1
	.word	1
	.word	0
	.word	0
	.word	-2
	.align	3
.LC5:
	.word	4
	.word	4
	.word	1
	.word	0
	.word	0
	.word	6
	.align	3
.LC6:
	.word	1
	.word	2
	.word	3
	.align	3
.LC7:
	.word	-1
	.word	-2
	.word	-3
	.align	3
.LC8:
	.word	2
	.word	4
	.word	6
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
