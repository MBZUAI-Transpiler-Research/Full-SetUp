	.arch armv8-a
	.file	"flood-fill.c"
	.text
	.global	mat
	.data
	.align	3
	.type	mat, %object
	.size	mat, 100
mat:
	.ascii	"YYYGGGGGGG"
	.ascii	"YYYYYYGXXX"
	.ascii	"GXGGGGGXXX"
	.ascii	"WXXWWGGGGX"
	.ascii	"WRRRRRGXXX"
	.ascii	"WWWRRGGXXX"
	.ascii	"WBWRRRRRRX"
	.ascii	"WBBBBRRXXX"
	.ascii	"WBBXBBBBXX"
	.ascii	"WBBXXXXXXX"
	.global	row
	.align	3
	.type	row, %object
	.size	row, 32
row:
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	1
	.word	1
	.word	1
	.global	col
	.align	3
	.type	col, %object
	.size	col, 32
col:
	.word	-1
	.word	0
	.word	1
	.word	-1
	.word	1
	.word	-1
	.word	0
	.word	1
	.text
	.align	2
	.global	floodfill
	.type	floodfill, %function
floodfill:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	strb	w1, [sp, 23]
	strb	w2, [sp, 22]
	strb	w3, [sp, 21]
	ldrb	w1, [sp, 23]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	mov	x1, x0
	ldr	x0, [sp, 24]
	add	x1, x0, x1
	ldrb	w0, [sp, 22]
	sxtw	x0, w0
	ldrb	w0, [x1, x0]
	strb	w0, [sp, 43]
	ldrb	w1, [sp, 23]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	mov	x1, x0
	ldr	x0, [sp, 24]
	add	x1, x0, x1
	ldrb	w0, [sp, 22]
	sxtw	x0, w0
	ldrb	w2, [sp, 21]
	strb	w2, [x1, x0]
	str	wzr, [sp, 44]
	b	.L2
.L4:
	ldrb	w1, [sp, 23]
	adrp	x0, row
	add	x0, x0, :lo12:row
	ldrsw	x2, [sp, 44]
	ldr	w0, [x0, x2, lsl 2]
	add	w0, w1, w0
	cmp	w0, 0
	blt	.L3
	ldrb	w1, [sp, 23]
	adrp	x0, row
	add	x0, x0, :lo12:row
	ldrsw	x2, [sp, 44]
	ldr	w0, [x0, x2, lsl 2]
	add	w0, w1, w0
	cmp	w0, 9
	bgt	.L3
	ldrb	w1, [sp, 22]
	adrp	x0, col
	add	x0, x0, :lo12:col
	ldrsw	x2, [sp, 44]
	ldr	w0, [x0, x2, lsl 2]
	add	w0, w1, w0
	cmp	w0, 0
	blt	.L3
	ldrb	w1, [sp, 22]
	adrp	x0, col
	add	x0, x0, :lo12:col
	ldrsw	x2, [sp, 44]
	ldr	w0, [x0, x2, lsl 2]
	add	w0, w1, w0
	cmp	w0, 9
	bgt	.L3
	ldrb	w1, [sp, 23]
	adrp	x0, row
	add	x0, x0, :lo12:row
	ldrsw	x2, [sp, 44]
	ldr	w0, [x0, x2, lsl 2]
	add	w0, w1, w0
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	mov	x1, x0
	ldr	x0, [sp, 24]
	add	x1, x0, x1
	ldrb	w2, [sp, 22]
	adrp	x0, col
	add	x0, x0, :lo12:col
	ldrsw	x3, [sp, 44]
	ldr	w0, [x0, x3, lsl 2]
	add	w0, w2, w0
	sxtw	x0, w0
	ldrb	w0, [x1, x0]
	ldrb	w1, [sp, 43]
	cmp	w1, w0
	bne	.L3
	adrp	x0, row
	add	x0, x0, :lo12:row
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	and	w0, w0, 255
	ldrb	w1, [sp, 23]
	add	w0, w0, w1
	and	w4, w0, 255
	adrp	x0, col
	add	x0, x0, :lo12:col
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	and	w0, w0, 255
	ldrb	w1, [sp, 22]
	add	w0, w0, w1
	and	w0, w0, 255
	ldrb	w3, [sp, 21]
	mov	w2, w0
	mov	w1, w4
	ldr	x0, [sp, 24]
	bl	floodfill
.L3:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L2:
	ldr	w0, [sp, 44]
	cmp	w0, 7
	ble	.L4
	nop
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	floodfill, .-floodfill
	.section	.rodata
	.align	3
.LC0:
	.string	"  %c"
	.align	3
.LC1:
	.string	"\n"
	.text
	.align	2
	.global	printMatrix
	.type	printMatrix, %function
printMatrix:
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
	lsl	x0, x0, 1
	mov	x1, x0
	ldr	x0, [sp, 24]
	add	x1, x0, x1
	ldrsw	x0, [sp, 44]
	ldrb	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	libmin_printf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L7:
	ldr	w0, [sp, 44]
	cmp	w0, 9
	ble	.L8
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	libmin_printf
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L6:
	ldr	w0, [sp, 40]
	cmp	w0, 9
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
	.size	printMatrix, .-printMatrix
	.section	.rodata
	.align	3
.LC2:
	.string	"\nBEFORE flooding `%c' @ (%d,%d):\n"
	.align	3
.LC3:
	.string	"\nAFTER:\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	mov	w0, 3
	str	w0, [sp, 24]
	mov	w0, 9
	str	w0, [sp, 28]
	mov	w0, 67
	strb	w0, [sp, 23]
	ldrb	w0, [sp, 23]
	ldr	w3, [sp, 28]
	ldr	w2, [sp, 24]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	libmin_printf
	adrp	x0, mat
	add	x0, x0, :lo12:mat
	bl	printMatrix
	ldr	w0, [sp, 24]
	and	w0, w0, 255
	ldr	w1, [sp, 28]
	and	w1, w1, 255
	ldrb	w3, [sp, 23]
	mov	w2, w1
	mov	w1, w0
	adrp	x0, mat
	add	x0, x0, :lo12:mat
	bl	floodfill
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	libmin_printf
	adrp	x0, mat
	add	x0, x0, :lo12:mat
	bl	printMatrix
	bl	libmin_success
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
