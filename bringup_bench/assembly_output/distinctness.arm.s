	.arch armv8-a
	.file	"distinctness.c"
	.text
	.global	elements1
	.data
	.align	3
	.type	elements1, %object
	.size	elements1, 512
elements1:
	.word	25
	.word	97
	.word	1
	.word	0
	.word	36
	.word	22
	.word	74
	.word	3
	.word	9
	.word	12
	.word	30
	.word	81
	.word	63
	.word	148
	.word	99
	.word	13
	.word	64
	.word	49
	.word	80
	.word	15
	.word	125
	.word	197
	.word	101
	.word	100
	.word	136
	.word	122
	.word	174
	.word	103
	.word	109
	.word	112
	.word	130
	.word	181
	.word	163
	.word	1148
	.word	199
	.word	113
	.word	164
	.word	149
	.word	180
	.word	115
	.word	225
	.word	297
	.word	201
	.word	200
	.word	236
	.word	222
	.word	274
	.word	203
	.word	209
	.word	212
	.word	230
	.word	281
	.word	263
	.word	2148
	.word	299
	.word	213
	.word	264
	.word	249
	.word	280
	.word	215
	.word	325
	.word	397
	.word	301
	.word	300
	.word	336
	.word	322
	.word	374
	.word	303
	.word	309
	.word	312
	.word	330
	.word	381
	.word	363
	.word	3148
	.word	399
	.word	313
	.word	364
	.word	349
	.word	380
	.word	315
	.word	425
	.word	497
	.word	401
	.word	400
	.word	436
	.word	422
	.word	474
	.word	403
	.word	409
	.word	412
	.word	430
	.word	481
	.word	463
	.word	4148
	.word	499
	.word	413
	.word	464
	.word	449
	.word	480
	.word	415
	.word	525
	.word	597
	.word	501
	.word	500
	.word	536
	.word	522
	.word	574
	.word	503
	.word	509
	.word	512
	.word	530
	.word	581
	.word	563
	.word	5148
	.word	599
	.word	513
	.word	564
	.word	549
	.word	580
	.word	515
	.word	625
	.word	697
	.word	601
	.word	600
	.word	636
	.word	622
	.word	674
	.word	603
	.global	elements2
	.align	3
	.type	elements2, %object
	.size	elements2, 512
elements2:
	.word	25
	.word	97
	.word	1
	.word	0
	.word	36
	.word	22
	.word	74
	.word	3
	.word	99
	.word	12
	.word	30
	.word	81
	.word	63
	.word	148
	.word	99
	.word	13
	.word	64
	.word	49
	.word	99
	.word	15
	.word	125
	.word	197
	.word	101
	.word	100
	.word	136
	.word	122
	.word	174
	.word	103
	.word	199
	.word	112
	.word	130
	.word	181
	.word	163
	.word	1148
	.word	119
	.word	113
	.word	164
	.word	149
	.word	199
	.word	115
	.word	225
	.word	297
	.word	201
	.word	200
	.word	236
	.word	222
	.word	274
	.word	203
	.word	299
	.word	212
	.word	230
	.word	281
	.word	263
	.word	2148
	.word	229
	.word	213
	.word	264
	.word	249
	.word	299
	.word	215
	.word	325
	.word	397
	.word	301
	.word	300
	.word	336
	.word	322
	.word	374
	.word	303
	.word	399
	.word	312
	.word	330
	.word	381
	.word	363
	.word	3148
	.word	339
	.word	313
	.word	364
	.word	349
	.word	399
	.word	315
	.word	425
	.word	497
	.word	401
	.word	400
	.word	436
	.word	422
	.word	474
	.word	403
	.word	409
	.word	412
	.word	430
	.word	481
	.word	463
	.word	4148
	.word	499
	.word	413
	.word	464
	.word	449
	.word	480
	.word	415
	.word	525
	.word	597
	.word	501
	.word	500
	.word	536
	.word	522
	.word	574
	.word	503
	.word	509
	.word	512
	.word	530
	.word	581
	.word	563
	.word	5148
	.word	599
	.word	513
	.word	564
	.word	549
	.word	580
	.word	515
	.word	625
	.word	697
	.word	601
	.word	600
	.word	636
	.word	622
	.word	674
	.word	603
	.text
	.align	2
	.global	isDistinct
	.type	isDistinct, %function
isDistinct:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	sub	sp, sp, #1600
	.cfi_def_cfa_offset 1616
	str	xzr, [sp, 1024]
	str	x0, [sp, 8]
	str	x1, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 1592]
	mov	x1, 0
	ldr	x0, [sp]
	mov	w1, 2147483647
	str	w1, [x0]
	str	wzr, [sp, 28]
	b	.L2
.L3:
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x1, sp, 56
	mov	w2, 2147483647
	str	w2, [x1, x0]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x1, sp, 60
	mov	w2, 2147483647
	str	w2, [x1, x0]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x1, sp, 64
	mov	w2, 2147483647
	str	w2, [x1, x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	ldr	w0, [sp, 28]
	cmp	w0, 127
	ble	.L3
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	str	w0, [sp, 56]
	str	wzr, [sp, 32]
	mov	w0, 1
	str	w0, [sp, 36]
	b	.L4
.L14:
	str	wzr, [sp, 40]
	ldr	w0, [sp, 56]
	str	w0, [sp, 44]
	ldr	w0, [sp, 60]
	str	w0, [sp, 48]
	ldr	w0, [sp, 64]
	str	w0, [sp, 52]
	b	.L5
.L13:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	bge	.L6
	ldr	w1, [sp, 52]
	mov	w0, 2147483647
	cmp	w1, w0
	beq	.L7
	ldrsw	x1, [sp, 52]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x1, sp, 56
	ldr	w0, [x1, x0]
	str	w0, [sp, 44]
	ldrsw	x1, [sp, 52]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x1, sp, 60
	ldr	w0, [x1, x0]
	str	w0, [sp, 48]
	ldr	w0, [sp, 52]
	str	w0, [sp, 40]
	ldrsw	x1, [sp, 52]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x1, sp, 64
	ldr	w0, [x1, x0]
	str	w0, [sp, 52]
	b	.L5
.L7:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [sp, 32]
	add	w1, w1, 1
	ldr	w2, [x0]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x1, sp, 56
	str	w2, [x1, x0]
	ldr	w0, [sp, 32]
	add	w2, w0, 1
	ldrsw	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x1, sp, 64
	str	w2, [x1, x0]
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
	b	.L9
.L6:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L10
	ldr	w1, [sp, 48]
	mov	w0, 2147483647
	cmp	w1, w0
	beq	.L11
	ldrsw	x1, [sp, 48]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x1, sp, 56
	ldr	w0, [x1, x0]
	str	w0, [sp, 44]
	ldrsw	x1, [sp, 48]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x1, sp, 64
	ldr	w0, [x1, x0]
	str	w0, [sp, 52]
	ldr	w0, [sp, 48]
	str	w0, [sp, 40]
	ldrsw	x1, [sp, 48]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x1, sp, 60
	ldr	w0, [x1, x0]
	str	w0, [sp, 48]
	b	.L5
.L11:
	ldr	w0, [sp, 32]
	add	w2, w0, 1
	ldrsw	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x1, sp, 60
	str	w2, [x1, x0]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [sp, 32]
	add	w1, w1, 1
	ldr	w2, [x0]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x1, sp, 56
	str	w2, [x1, x0]
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
	b	.L9
.L10:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldr	x0, [sp]
	str	w1, [x0]
	mov	w0, 0
	b	.L15
.L5:
	ldr	w1, [sp, 44]
	mov	w0, 2147483647
	cmp	w1, w0
	bne	.L13
.L9:
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L4:
	ldr	w0, [sp, 36]
	cmp	w0, 127
	ble	.L14
	mov	w0, 1
.L15:
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 1592]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L16
	bl	__stack_chk_fail
.L16:
	mov	w0, w1
	add	sp, sp, 1600
	.cfi_def_cfa_offset 16
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	isDistinct, .-isDistinct
	.section	.rodata
	.align	3
.LC0:
	.string	"The elements of `elements1' are distinct\n"
	.align	3
.LC1:
	.string	"The elements of `elements1' are not distinct (e.g., %d is duplicated)\n"
	.align	3
.LC2:
	.string	"The elements of `elements2' are distinct\n"
	.align	3
.LC3:
	.string	"The elements of `elements2' are not distinct (e.g., %d is duplicated)\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB4:
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
	adrp	x0, elements1
	add	x0, x0, :lo12:elements1
	bl	isDistinct
	str	w0, [sp, 16]
	add	x0, sp, 12
	mov	x1, x0
	adrp	x0, elements2
	add	x0, x0, :lo12:elements2
	bl	isDistinct
	str	w0, [sp, 20]
	ldr	w0, [sp, 16]
	cmp	w0, 0
	beq	.L18
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	libmin_printf
	b	.L19
.L18:
	ldr	w0, [sp, 8]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	libmin_printf
.L19:
	ldr	w0, [sp, 20]
	cmp	w0, 0
	beq	.L20
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	libmin_printf
	b	.L21
.L20:
	ldr	w0, [sp, 12]
	mov	w1, w0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	libmin_printf
.L21:
	bl	libmin_success
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 24]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L23
	bl	__stack_chk_fail
.L23:
	mov	w0, w1
	ldp	x29, x30, [sp, 32]
	add	sp, sp, 48
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
