	.arch armv8-a
	.file	"knapsack.c"
	.text
	.global	val
	.data
	.align	3
	.type	val, %object
	.size	val, 200
val:
	.word	27
	.word	34
	.word	9
	.word	22
	.word	8
	.word	17
	.word	22
	.word	21
	.word	23
	.word	19
	.word	7
	.word	36
	.word	11
	.word	42
	.word	37
	.word	16
	.word	10
	.word	26
	.word	10
	.word	50
	.word	23
	.word	46
	.word	37
	.word	3
	.word	14
	.word	16
	.word	35
	.word	14
	.word	15
	.word	44
	.word	49
	.word	2
	.word	45
	.word	3
	.word	15
	.word	1
	.word	34
	.word	44
	.word	19
	.word	25
	.word	43
	.word	28
	.word	26
	.word	4
	.word	30
	.word	24
	.word	49
	.word	11
	.word	48
	.word	13
	.global	wt
	.align	3
	.type	wt, %object
	.size	wt, 200
wt:
	.word	23
	.word	47
	.word	22
	.word	15
	.word	42
	.word	30
	.word	15
	.word	32
	.word	47
	.word	33
	.word	15
	.word	38
	.word	44
	.word	7
	.word	16
	.word	34
	.word	30
	.word	33
	.word	3
	.word	2
	.word	43
	.word	31
	.word	46
	.word	17
	.word	30
	.word	1
	.word	34
	.word	21
	.word	30
	.word	21
	.word	29
	.word	21
	.word	36
	.word	14
	.word	18
	.word	21
	.word	13
	.word	3
	.word	27
	.word	44
	.word	33
	.word	11
	.word	9
	.word	31
	.word	40
	.word	40
	.word	30
	.word	9
	.word	41
	.word	31
	.text
	.align	2
	.global	max
	.type	max, %function
max:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	ble	.L2
	ldr	w0, [sp, 12]
	b	.L3
.L2:
	ldr	w0, [sp, 8]
.L3:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	max, .-max
	.align	2
	.global	knapSack
	.type	knapSack, %function
knapSack:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -64
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	wzr, [sp, 72]
	b	.L5
.L12:
	str	wzr, [sp, 76]
	b	.L6
.L11:
	ldr	w0, [sp, 72]
	cmp	w0, 0
	beq	.L7
	ldr	w0, [sp, 76]
	cmp	w0, 0
	bne	.L8
.L7:
	ldrsw	x1, [sp, 72]
	mov	x0, x1
	lsl	x0, x0, 6
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	mov	x1, x0
	ldr	x0, [sp, 40]
	add	x0, x0, x1
	ldrsw	x1, [sp, 76]
	str	wzr, [x0, x1, lsl 2]
	b	.L9
.L8:
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 76]
	cmp	w1, w0
	blt	.L10
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	w2, [x0]
	ldrsw	x1, [sp, 72]
	mov	x0, x1
	lsl	x0, x0, 6
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, #1004
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldrsw	x1, [sp, 72]
	lsl	x1, x1, 2
	sub	x1, x1, #4
	ldr	x3, [sp, 56]
	add	x1, x3, x1
	ldr	w1, [x1]
	ldr	w3, [sp, 76]
	sub	w1, w3, w1
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w2, w0
	ldrsw	x1, [sp, 72]
	mov	x0, x1
	lsl	x0, x0, 6
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, #1004
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldrsw	x1, [sp, 76]
	ldr	w3, [x0, x1, lsl 2]
	ldrsw	x1, [sp, 72]
	mov	x0, x1
	lsl	x0, x0, 6
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	mov	x1, x0
	ldr	x0, [sp, 40]
	add	x19, x0, x1
	mov	w1, w3
	mov	w0, w2
	bl	max
	mov	w1, w0
	ldrsw	x0, [sp, 76]
	str	w1, [x19, x0, lsl 2]
	b	.L9
.L10:
	ldrsw	x1, [sp, 72]
	mov	x0, x1
	lsl	x0, x0, 6
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, #1004
	ldr	x1, [sp, 40]
	add	x2, x1, x0
	ldrsw	x1, [sp, 72]
	mov	x0, x1
	lsl	x0, x0, 6
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	mov	x1, x0
	ldr	x0, [sp, 40]
	add	x0, x0, x1
	ldrsw	x1, [sp, 76]
	ldr	w2, [x2, x1, lsl 2]
	ldrsw	x1, [sp, 76]
	str	w2, [x0, x1, lsl 2]
.L9:
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
.L6:
	ldr	w0, [sp, 76]
	cmp	w0, 250
	ble	.L11
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
.L5:
	ldr	w0, [sp, 72]
	cmp	w0, 50
	ble	.L12
	nop
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	knapSack, .-knapSack
	.section	.rodata
	.align	3
.LC0:
	.string	"Max value: %d\n"
	.align	3
.LC1:
	.string	"Selected packs:\n"
	.align	3
.LC2:
	.string	"  Package %d with wt=%d and val=%d\n"
	.align	3
.LC3:
	.string	"Total weight: %d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	mov	x13, 51232
	sub	sp, sp, x13
	.cfi_def_cfa_offset 51248
	str	xzr, [sp, 1024]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	add	x1, sp, 49152
	ldr	x2, [x0]
	str	x2, [x1, 2072]
	mov	x2, 0
	mov	w0, 50
	str	w0, [sp, 8]
	mov	w0, 250
	str	w0, [sp, 12]
	add	x0, sp, 16
	mov	x2, x0
	adrp	x0, val
	add	x1, x0, :lo12:val
	adrp	x0, wt
	add	x0, x0, :lo12:wt
	bl	knapSack
	ldrsw	x1, [sp, 8]
	mov	x0, x1
	lsl	x0, x0, 6
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x1, sp, 1016
	ldr	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	libmin_printf
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	libmin_printf
	b	.L14
.L16:
	ldrsw	x2, [sp, 12]
	ldrsw	x1, [sp, 8]
	mov	x0, x1
	lsl	x0, x0, 6
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w2, [x1, x0]
	ldr	w0, [sp, 8]
	sub	w0, w0, #1
	ldrsw	x3, [sp, 12]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 6
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	add	x0, x0, x3
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w0, [x1, x0]
	cmp	w2, w0
	beq	.L15
	ldr	w0, [sp, 8]
	sub	w1, w0, #1
	adrp	x0, wt
	add	x0, x0, :lo12:wt
	sxtw	x1, w1
	ldr	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 8]
	sub	w1, w0, #1
	adrp	x0, val
	add	x0, x0, :lo12:val
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	mov	w3, w0
	ldr	w1, [sp, 8]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	libmin_printf
	ldr	w0, [sp, 8]
	sub	w1, w0, #1
	adrp	x0, wt
	add	x0, x0, :lo12:wt
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 12]
	sub	w0, w1, w0
	str	w0, [sp, 12]
.L15:
	ldr	w0, [sp, 8]
	sub	w0, w0, #1
	str	w0, [sp, 8]
.L14:
	ldr	w0, [sp, 8]
	cmp	w0, 0
	bne	.L16
	mov	w1, 250
	ldr	w0, [sp, 12]
	sub	w0, w1, w0
	mov	w1, w0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	libmin_printf
	bl	libmin_success
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	add	x3, sp, 49152
	ldr	x4, [x3, 2072]
	ldr	x2, [x0]
	subs	x4, x4, x2
	mov	x2, 0
	beq	.L18
	bl	__stack_chk_fail
.L18:
	mov	w0, w1
	mov	x13, 51232
	add	sp, sp, x13
	.cfi_def_cfa_offset 16
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
