	.arch armv8-a
	.file	"knights-tour.c"
	.text
	.align	2
	.global	isSafe
	.type	isSafe, %function
isSafe:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	str	x2, [sp]
	ldr	w0, [sp, 12]
	cmp	w0, 0
	blt	.L2
	ldr	w0, [sp, 12]
	cmp	w0, 4
	bgt	.L2
	ldr	w0, [sp, 8]
	cmp	w0, 0
	blt	.L2
	ldr	w0, [sp, 8]
	cmp	w0, 4
	bgt	.L2
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	mov	x1, x0
	ldr	x0, [sp]
	add	x0, x0, x1
	ldrsw	x1, [sp, 8]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L2
	mov	w0, 1
	b	.L4
.L2:
	mov	w0, 0
.L4:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	isSafe, .-isSafe
	.section	.rodata
	.align	3
.LC2:
	.string	" %2d "
	.align	3
.LC3:
	.string	"\n"
	.text
	.align	2
	.global	printSolution
	.type	printSolution, %function
printSolution:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	wzr, [sp, 40]
	b	.L6
.L9:
	str	wzr, [sp, 44]
	b	.L7
.L8:
	ldrsw	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	mov	x1, x0
	ldr	x0, [sp, 24]
	add	x0, x0, x1
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	libmin_printf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L7:
	ldr	w0, [sp, 44]
	cmp	w0, 4
	ble	.L8
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	libmin_printf
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L6:
	ldr	w0, [sp, 40]
	cmp	w0, 4
	ble	.L9
	nop
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	printSolution, .-printSolution
	.section	.rodata
	.align	3
.LC4:
	.string	"Solution does not exist"
	.text
	.align	2
	.global	solveKT
	.type	solveKT, %function
solveKT:
.LFB5:
	.cfi_startproc
	sub	sp, sp, #208
	.cfi_def_cfa_offset 208
	stp	x29, x30, [sp, 192]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 192
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 184]
	mov	x1, 0
	str	wzr, [sp, 8]
	b	.L11
.L14:
	str	wzr, [sp, 12]
	b	.L12
.L13:
	ldrsw	x2, [sp, 12]
	ldrsw	x1, [sp, 8]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 80
	mov	w2, -1
	str	w2, [x1, x0]
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	str	w0, [sp, 12]
.L12:
	ldr	w0, [sp, 12]
	cmp	w0, 4
	ble	.L13
	ldr	w0, [sp, 8]
	add	w0, w0, 1
	str	w0, [sp, 8]
.L11:
	ldr	w0, [sp, 8]
	cmp	w0, 4
	ble	.L14
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 16
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 48
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	str	wzr, [sp, 80]
	add	x2, sp, 48
	add	x1, sp, 16
	add	x0, sp, 80
	mov	x5, x2
	mov	x4, x1
	mov	x3, x0
	mov	w2, 1
	mov	w1, 0
	mov	w0, 0
	bl	solveKTUtil
	cmp	w0, 0
	bne	.L15
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	libmin_printf
	mov	w0, 0
	b	.L17
.L15:
	add	x0, sp, 80
	bl	printSolution
	mov	w0, 1
.L17:
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 184]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L18
	bl	__stack_chk_fail
.L18:
	mov	w0, w1
	ldp	x29, x30, [sp, 192]
	add	sp, sp, 208
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	solveKT, .-solveKT
	.section	.rodata
	.align	3
.LC0:
	.word	2
	.word	1
	.word	-1
	.word	-2
	.word	-2
	.word	-1
	.word	1
	.word	2
	.align	3
.LC1:
	.word	1
	.word	2
	.word	2
	.word	1
	.word	-1
	.word	-2
	.word	-2
	.word	-1
	.text
	.align	2
	.global	solveKTUtil
	.type	solveKTUtil, %function
solveKTUtil:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	w0, [sp, 60]
	str	w1, [sp, 56]
	str	w2, [sp, 52]
	str	x3, [sp, 40]
	str	x4, [sp, 32]
	str	x5, [sp, 24]
	ldr	w0, [sp, 52]
	cmp	w0, 25
	bne	.L20
	mov	w0, 1
	b	.L21
.L20:
	str	wzr, [sp, 68]
	b	.L22
.L25:
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 60]
	add	w0, w1, w0
	str	w0, [sp, 72]
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 56]
	add	w0, w1, w0
	str	w0, [sp, 76]
	ldr	x2, [sp, 40]
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 72]
	bl	isSafe
	cmp	w0, 0
	beq	.L23
	ldrsw	x1, [sp, 72]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	mov	x1, x0
	ldr	x0, [sp, 40]
	add	x0, x0, x1
	ldrsw	x1, [sp, 76]
	ldr	w2, [sp, 52]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	ldr	x5, [sp, 24]
	ldr	x4, [sp, 32]
	ldr	x3, [sp, 40]
	mov	w2, w0
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 72]
	bl	solveKTUtil
	cmp	w0, 1
	bne	.L24
	mov	w0, 1
	b	.L21
.L24:
	ldrsw	x1, [sp, 72]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	mov	x1, x0
	ldr	x0, [sp, 40]
	add	x0, x0, x1
	ldrsw	x1, [sp, 76]
	mov	w2, -1
	str	w2, [x0, x1, lsl 2]
.L23:
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
.L22:
	ldr	w0, [sp, 68]
	cmp	w0, 7
	ble	.L25
	mov	w0, 0
.L21:
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	solveKTUtil, .-solveKTUtil
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
	bl	solveKT
	bl	libmin_success
	mov	w0, 0
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
