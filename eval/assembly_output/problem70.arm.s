	.arch armv8-a
	.file	"problem70.c"
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
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	sxtw	x0, w0
	mov	x1, 4
	bl	calloc
	str	x0, [sp, 40]
	mov	w0, -1
	str	w0, [sp, 32]
	str	wzr, [sp, 36]
	b	.L2
.L4:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w1, [x0]
	add	w1, w1, 1
	str	w1, [x0]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	blt	.L3
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 32]
	cmp	w1, w0
	bge	.L3
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 32]
.L3:
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L2:
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L4
	ldr	x0, [sp, 40]
	bl	free
	ldr	w0, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	sub	sp, sp, #1360
	.cfi_def_cfa_offset 1376
	str	xzr, [sp, 1024]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 1352]
	mov	x1, 0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	add	x2, sp, 48
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	add	x2, sp, 144
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	mov	w0, 3
	str	w0, [sp, 24]
	mov	w0, 3
	str	w0, [sp, 28]
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, sp, 200
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	add	x2, sp, 72
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	add	x0, sp, 664
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	ldr	q0, [x1, 64]
	str	q0, [x0, 64]
	ldr	x1, [x1, 80]
	str	x1, [x0, 80]
	mov	w0, 3
	str	w0, [sp, 32]
	mov	w0, 2
	str	w0, [sp, 36]
	mov	w0, 8
	str	w0, [sp, 40]
	mov	w0, 2
	str	w0, [sp, 44]
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	add	x0, sp, 232
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 28]
	str	q0, [x0, 28]
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	add	x0, sp, 168
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 12]
	str	q0, [x0, 12]
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	add	x0, sp, 1128
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	ldp	q0, q1, [x1, 64]
	stp	q0, q1, [x0, 64]
	ldr	w1, [x1, 96]
	str	w1, [x0, 96]
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	add	x2, sp, 96
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	add	x0, sp, 1032
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	ldp	q0, q1, [x1, 64]
	stp	q0, q1, [x0, 64]
	mov	w0, 1
	str	w0, [sp, 8]
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	add	x0, sp, 840
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	ldr	q0, [x1, 64]
	str	q0, [x0, 64]
	ldr	q0, [x1, 76]
	str	q0, [x0, 76]
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	add	x0, sp, 432
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	ldr	x1, [x1, 64]
	str	x1, [x0, 64]
	adrp	x0, .LC12
	add	x1, x0, :lo12:.LC12
	add	x0, sp, 328
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 32]
	str	q0, [x0, 32]
	adrp	x0, .LC13
	add	x1, x0, :lo12:.LC13
	add	x0, sp, 1232
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	ldp	q0, q1, [x1, 64]
	stp	q0, q1, [x0, 64]
	ldr	q0, [x1, 96]
	str	q0, [x0, 96]
	ldr	x1, [x1, 112]
	str	x1, [x0, 112]
	adrp	x0, .LC14
	add	x1, x0, :lo12:.LC14
	add	x0, sp, 936
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	ldr	q0, [x1, 64]
	str	q0, [x0, 64]
	ldr	q0, [x1, 76]
	str	q0, [x0, 76]
	adrp	x0, .LC15
	add	x1, x0, :lo12:.LC15
	add	x0, sp, 504
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	ldr	x1, [x1, 64]
	str	x1, [x0, 64]
	adrp	x0, .LC16
	add	x1, x0, :lo12:.LC16
	add	x0, sp, 576
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	ldr	q0, [x1, 64]
	str	q0, [x0, 64]
	ldr	w1, [x1, 80]
	str	w1, [x0, 80]
	mov	w0, 10
	str	w0, [sp, 16]
	adrp	x0, .LC17
	add	x1, x0, :lo12:.LC17
	add	x0, sp, 376
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 32]
	str	q0, [x0, 32]
	ldr	w1, [x1, 48]
	str	w1, [x0, 48]
	adrp	x0, .LC18
	add	x1, x0, :lo12:.LC18
	add	x0, sp, 280
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 28]
	str	q0, [x0, 28]
	adrp	x0, .LC19
	add	x1, x0, :lo12:.LC19
	add	x0, sp, 752
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	ldr	q0, [x1, 64]
	str	q0, [x0, 64]
	ldr	x1, [x1, 80]
	str	x1, [x0, 80]
	adrp	x0, .LC20
	add	x0, x0, :lo12:.LC20
	add	x2, sp, 120
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 1352]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L8
	bl	__stack_chk_fail
.L8:
	mov	w0, w1
	add	sp, sp, 1360
	.cfi_def_cfa_offset 16
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	5
	.word	5
	.word	5
	.word	5
	.word	1
	.align	3
.LC1:
	.word	4
	.word	1
	.word	4
	.word	1
	.word	4
	.word	4
	.align	3
.LC2:
	.word	8
	.word	8
	.word	8
	.word	8
	.word	8
	.word	8
	.word	8
	.word	8
	.align	3
.LC3:
	.word	2
	.word	3
	.word	3
	.word	2
	.word	2
	.align	3
.LC4:
	.word	2
	.word	7
	.word	8
	.word	8
	.word	4
	.word	8
	.word	7
	.word	3
	.word	9
	.word	6
	.word	5
	.word	10
	.word	4
	.word	3
	.word	6
	.word	7
	.word	1
	.word	7
	.word	4
	.word	10
	.word	8
	.word	1
	.align	3
.LC5:
	.word	6
	.word	7
	.word	1
	.word	8
	.word	8
	.word	10
	.word	5
	.word	8
	.word	5
	.word	3
	.word	10
	.align	3
.LC6:
	.word	8
	.word	8
	.word	3
	.word	6
	.word	5
	.word	6
	.word	4
	.align	3
.LC7:
	.word	6
	.word	9
	.word	6
	.word	7
	.word	1
	.word	4
	.word	7
	.word	1
	.word	8
	.word	8
	.word	9
	.word	8
	.word	10
	.word	10
	.word	8
	.word	4
	.word	10
	.word	4
	.word	10
	.word	1
	.word	2
	.word	9
	.word	5
	.word	7
	.word	9
	.align	3
.LC8:
	.word	1
	.word	9
	.word	10
	.word	1
	.word	3
	.align	3
.LC9:
	.word	6
	.word	9
	.word	7
	.word	5
	.word	8
	.word	7
	.word	5
	.word	3
	.word	7
	.word	5
	.word	10
	.word	10
	.word	3
	.word	6
	.word	10
	.word	2
	.word	8
	.word	6
	.word	5
	.word	4
	.word	9
	.word	5
	.word	3
	.word	10
	.align	3
.LC10:
	.word	8
	.word	8
	.word	10
	.word	6
	.word	4
	.word	3
	.word	5
	.word	8
	.word	2
	.word	4
	.word	2
	.word	8
	.word	4
	.word	6
	.word	10
	.word	4
	.word	2
	.word	1
	.word	10
	.word	2
	.word	1
	.word	1
	.word	5
	.align	3
.LC11:
	.word	2
	.word	10
	.word	4
	.word	8
	.word	2
	.word	10
	.word	5
	.word	1
	.word	2
	.word	9
	.word	5
	.word	5
	.word	6
	.word	3
	.word	8
	.word	6
	.word	4
	.word	10
	.align	3
.LC12:
	.word	1
	.word	6
	.word	10
	.word	1
	.word	6
	.word	9
	.word	10
	.word	8
	.word	6
	.word	8
	.word	7
	.word	3
	.align	3
.LC13:
	.word	9
	.word	2
	.word	4
	.word	1
	.word	5
	.word	1
	.word	5
	.word	2
	.word	5
	.word	7
	.word	7
	.word	7
	.word	3
	.word	10
	.word	1
	.word	5
	.word	4
	.word	2
	.word	8
	.word	4
	.word	1
	.word	9
	.word	10
	.word	7
	.word	10
	.word	2
	.word	8
	.word	10
	.word	9
	.word	4
	.align	3
.LC14:
	.word	2
	.word	6
	.word	4
	.word	2
	.word	8
	.word	7
	.word	5
	.word	6
	.word	4
	.word	10
	.word	4
	.word	6
	.word	3
	.word	7
	.word	8
	.word	8
	.word	3
	.word	1
	.word	4
	.word	2
	.word	2
	.word	10
	.word	7
	.align	3
.LC15:
	.word	9
	.word	8
	.word	6
	.word	10
	.word	2
	.word	6
	.word	10
	.word	2
	.word	7
	.word	8
	.word	10
	.word	3
	.word	8
	.word	2
	.word	6
	.word	2
	.word	3
	.word	1
	.align	3
.LC16:
	.word	5
	.word	5
	.word	3
	.word	9
	.word	5
	.word	6
	.word	3
	.word	2
	.word	8
	.word	5
	.word	6
	.word	10
	.word	10
	.word	6
	.word	8
	.word	4
	.word	10
	.word	7
	.word	7
	.word	10
	.word	8
	.align	3
.LC17:
	.word	9
	.word	7
	.word	7
	.word	2
	.word	4
	.word	7
	.word	2
	.word	10
	.word	9
	.word	7
	.word	5
	.word	7
	.word	2
	.align	3
.LC18:
	.word	5
	.word	4
	.word	10
	.word	2
	.word	1
	.word	1
	.word	10
	.word	3
	.word	6
	.word	1
	.word	8
	.align	3
.LC19:
	.word	7
	.word	9
	.word	9
	.word	9
	.word	3
	.word	4
	.word	1
	.word	5
	.word	9
	.word	1
	.word	2
	.word	1
	.word	1
	.word	10
	.word	7
	.word	5
	.word	6
	.word	7
	.word	6
	.word	7
	.word	7
	.word	6
	.align	3
.LC20:
	.word	3
	.word	10
	.word	10
	.word	9
	.word	2
	.text
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
