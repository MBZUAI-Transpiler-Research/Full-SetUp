	.arch armv8-a
	.file	"shortest-path.c"
	.text
	.global	dist
	.bss
	.align	3
	.type	dist, %object
	.size	dist, 256
dist:
	.zero	256
	.text
	.align	2
	.global	floydWarshall
	.type	floydWarshall, %function
floydWarshall:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	wzr, [sp, 20]
	b	.L2
.L5:
	str	wzr, [sp, 24]
	b	.L3
.L4:
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 5
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrsw	x1, [sp, 24]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, dist
	add	x0, x0, :lo12:dist
	ldrsw	x1, [sp, 24]
	ldrsw	x3, [sp, 20]
	lsl	x3, x3, 3
	add	x1, x3, x1
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L3:
	ldr	w0, [sp, 24]
	cmp	w0, 7
	ble	.L4
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L2:
	ldr	w0, [sp, 20]
	cmp	w0, 7
	ble	.L5
	str	wzr, [sp, 28]
	b	.L6
.L12:
	str	wzr, [sp, 20]
	b	.L7
.L11:
	str	wzr, [sp, 24]
	b	.L8
.L10:
	adrp	x0, dist
	add	x0, x0, :lo12:dist
	ldrsw	x1, [sp, 28]
	ldrsw	x2, [sp, 20]
	lsl	x2, x2, 3
	add	x1, x2, x1
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, dist
	add	x0, x0, :lo12:dist
	ldrsw	x2, [sp, 24]
	ldrsw	x3, [sp, 28]
	lsl	x3, x3, 3
	add	x2, x3, x2
	ldr	w0, [x0, x2, lsl 2]
	add	w1, w1, w0
	adrp	x0, dist
	add	x0, x0, :lo12:dist
	ldrsw	x2, [sp, 24]
	ldrsw	x3, [sp, 20]
	lsl	x3, x3, 3
	add	x2, x3, x2
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bge	.L9
	adrp	x0, dist
	add	x0, x0, :lo12:dist
	ldrsw	x1, [sp, 28]
	ldrsw	x2, [sp, 20]
	lsl	x2, x2, 3
	add	x1, x2, x1
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, dist
	add	x0, x0, :lo12:dist
	ldrsw	x2, [sp, 24]
	ldrsw	x3, [sp, 28]
	lsl	x3, x3, 3
	add	x2, x3, x2
	ldr	w0, [x0, x2, lsl 2]
	add	w2, w1, w0
	adrp	x0, dist
	add	x0, x0, :lo12:dist
	ldrsw	x1, [sp, 24]
	ldrsw	x3, [sp, 20]
	lsl	x3, x3, 3
	add	x1, x3, x1
	str	w2, [x0, x1, lsl 2]
.L9:
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L8:
	ldr	w0, [sp, 24]
	cmp	w0, 7
	ble	.L10
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L7:
	ldr	w0, [sp, 20]
	cmp	w0, 7
	ble	.L11
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L6:
	ldr	w0, [sp, 28]
	cmp	w0, 7
	ble	.L12
	nop
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	floydWarshall, .-floydWarshall
	.section	.rodata
	.align	3
.LC1:
	.string	"Following matrix shows the shortest distances between every pair of vertices \n"
	.align	3
.LC2:
	.string	"INF"
	.align	3
.LC3:
	.string	"%7s"
	.align	3
.LC4:
	.string	"%7d"
	.align	3
.LC5:
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
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	libmin_printf
	str	wzr, [sp, 40]
	b	.L14
.L19:
	str	wzr, [sp, 44]
	b	.L15
.L18:
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 5
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrsw	x1, [sp, 44]
	ldr	w1, [x0, x1, lsl 2]
	mov	w0, 34463
	movk	w0, 0x1, lsl 16
	cmp	w1, w0
	bne	.L16
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	libmin_printf
	b	.L17
.L16:
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 5
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	libmin_printf
.L17:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L15:
	ldr	w0, [sp, 44]
	cmp	w0, 7
	ble	.L18
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	libmin_printf
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L14:
	ldr	w0, [sp, 40]
	cmp	w0, 7
	ble	.L19
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
	.align	2
	.global	main
	.type	main, %function
main:
.LFB5:
	.cfi_startproc
	sub	sp, sp, #288
	.cfi_def_cfa_offset 288
	stp	x29, x30, [sp, 272]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 272
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 264]
	mov	x1, 0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 8
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	ldp	q0, q1, [x1, 64]
	stp	q0, q1, [x0, 64]
	ldp	q0, q1, [x1, 96]
	stp	q0, q1, [x0, 96]
	ldp	q0, q1, [x1, 128]
	stp	q0, q1, [x0, 128]
	ldp	q0, q1, [x1, 160]
	stp	q0, q1, [x0, 160]
	ldp	q0, q1, [x1, 192]
	stp	q0, q1, [x0, 192]
	ldp	q0, q1, [x1, 224]
	stp	q0, q1, [x0, 224]
	add	x0, sp, 8
	bl	floydWarshall
	adrp	x0, dist
	add	x0, x0, :lo12:dist
	bl	printSolution
	bl	libmin_success
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 264]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L22
	bl	__stack_chk_fail
.L22:
	mov	w0, w1
	ldp	x29, x30, [sp, 272]
	add	sp, sp, 288
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	99999
	.word	4
	.word	99999
	.word	99999
	.word	7
	.word	99999
	.word	99999
	.word	99999
	.word	0
	.word	99999
	.word	99999
	.word	9
	.word	99999
	.word	99999
	.word	3
	.word	4
	.word	99999
	.word	0
	.word	3
	.word	99999
	.word	2
	.word	9
	.word	99999
	.word	99999
	.word	99999
	.word	3
	.word	0
	.word	3
	.word	99999
	.word	7
	.word	99999
	.word	99999
	.word	9
	.word	99999
	.word	3
	.word	0
	.word	99999
	.word	2
	.word	7
	.word	7
	.word	99999
	.word	2
	.word	99999
	.word	99999
	.word	0
	.word	8
	.word	99999
	.word	99999
	.word	99999
	.word	9
	.word	7
	.word	2
	.word	8
	.word	0
	.word	3
	.word	99999
	.word	3
	.word	99999
	.word	99999
	.word	7
	.word	99999
	.word	3
	.word	0
	.text
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
