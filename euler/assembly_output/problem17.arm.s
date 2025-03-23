	.arch armv8-a
	.file	"problem17.c"
	.text
	.section	.rodata
	.align	3
.LC3:
	.string	"%u\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #176
	.cfi_def_cfa_offset 176
	stp	x29, x30, [sp, 160]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 160
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 152]
	mov	x1, 0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 32
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	x1, [x1, 32]
	str	x1, [x0, 32]
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 72
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	x1, [x1, 32]
	str	x1, [x0, 32]
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, sp, 112
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	x1, [x1, 32]
	str	x1, [x0, 32]
	mov	w0, 7
	str	w0, [sp, 20]
	mov	w0, 3
	str	w0, [sp, 24]
	mov	w0, 8
	str	w0, [sp, 28]
	str	wzr, [sp, 12]
	mov	w0, 1
	str	w0, [sp, 8]
	b	.L2
.L3:
	ldr	w0, [sp, 8]
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 12]
	add	w0, w1, w0
	str	w0, [sp, 12]
	ldr	w0, [sp, 8]
	add	w0, w0, 1
	str	w0, [sp, 8]
.L2:
	ldr	w0, [sp, 8]
	cmp	w0, 9
	bls	.L3
	str	wzr, [sp, 8]
	b	.L4
.L5:
	ldr	w0, [sp, 8]
	lsl	x0, x0, 2
	add	x1, sp, 72
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 12]
	add	w0, w1, w0
	str	w0, [sp, 12]
	ldr	w0, [sp, 8]
	add	w0, w0, 1
	str	w0, [sp, 8]
.L4:
	ldr	w0, [sp, 8]
	cmp	w0, 9
	bls	.L5
	mov	w0, 20
	str	w0, [sp, 8]
	b	.L6
.L7:
	ldr	w1, [sp, 8]
	mov	w0, 52429
	movk	w0, 0xcccc, lsl 16
	umull	x0, w1, w0
	lsr	x0, x0, 32
	lsr	w0, w0, 3
	uxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 112
	ldr	w3, [x1, x0]
	ldr	w2, [sp, 8]
	mov	w0, 52429
	movk	w0, 0xcccc, lsl 16
	umull	x0, w2, w0
	lsr	x0, x0, 32
	lsr	w1, w0, 3
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	sub	w1, w2, w0
	uxtw	x0, w1
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	add	w0, w3, w0
	ldr	w1, [sp, 12]
	add	w0, w1, w0
	str	w0, [sp, 12]
	ldr	w0, [sp, 8]
	add	w0, w0, 1
	str	w0, [sp, 8]
.L6:
	ldr	w0, [sp, 8]
	cmp	w0, 99
	bls	.L7
	mov	w0, 1
	str	w0, [sp, 8]
	b	.L8
.L15:
	ldr	w0, [sp, 8]
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 20]
	add	w0, w1, w0
	ldr	w1, [sp, 12]
	add	w0, w1, w0
	str	w0, [sp, 12]
	mov	w0, 1
	str	w0, [sp, 16]
	b	.L9
.L10:
	ldr	w0, [sp, 8]
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 20]
	add	w1, w1, w0
	ldr	w0, [sp, 24]
	add	w1, w1, w0
	ldrsw	x0, [sp, 16]
	lsl	x0, x0, 2
	add	x2, sp, 32
	ldr	w0, [x2, x0]
	add	w0, w1, w0
	ldr	w1, [sp, 12]
	add	w0, w1, w0
	str	w0, [sp, 12]
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 16]
.L9:
	ldr	w0, [sp, 16]
	cmp	w0, 9
	ble	.L10
	str	wzr, [sp, 16]
	b	.L11
.L12:
	ldr	w0, [sp, 8]
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 20]
	add	w1, w1, w0
	ldr	w0, [sp, 24]
	add	w1, w1, w0
	ldrsw	x0, [sp, 16]
	lsl	x0, x0, 2
	add	x2, sp, 72
	ldr	w0, [x2, x0]
	add	w0, w1, w0
	ldr	w1, [sp, 12]
	add	w0, w1, w0
	str	w0, [sp, 12]
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 16]
.L11:
	ldr	w0, [sp, 16]
	cmp	w0, 9
	ble	.L12
	mov	w0, 20
	str	w0, [sp, 16]
	b	.L13
.L14:
	ldr	w0, [sp, 8]
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 20]
	add	w1, w1, w0
	ldr	w0, [sp, 24]
	add	w1, w1, w0
	ldr	w0, [sp, 16]
	mov	w2, 26215
	movk	w2, 0x6666, lsl 16
	smull	x2, w0, w2
	lsr	x2, x2, 32
	asr	w2, w2, 2
	asr	w0, w0, 31
	sub	w0, w2, w0
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x2, sp, 112
	ldr	w0, [x2, x0]
	add	w3, w1, w0
	ldr	w1, [sp, 16]
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
	sub	w2, w1, w0
	sxtw	x0, w2
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	add	w0, w3, w0
	ldr	w1, [sp, 12]
	add	w0, w1, w0
	str	w0, [sp, 12]
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 16]
.L13:
	ldr	w0, [sp, 16]
	cmp	w0, 99
	ble	.L14
	ldr	w0, [sp, 8]
	add	w0, w0, 1
	str	w0, [sp, 8]
.L8:
	ldr	w0, [sp, 8]
	cmp	w0, 9
	bls	.L15
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 28]
	add	w0, w1, w0
	ldr	w1, [sp, 12]
	add	w0, w1, w0
	str	w0, [sp, 12]
	ldr	w1, [sp, 12]
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 152]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L17
	bl	__stack_chk_fail
.L17:
	mov	w0, w1
	ldp	x29, x30, [sp, 160]
	add	sp, sp, 176
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	3
	.word	3
	.word	5
	.word	4
	.word	4
	.word	3
	.word	5
	.word	5
	.word	4
	.align	3
.LC1:
	.word	3
	.word	6
	.word	6
	.word	8
	.word	8
	.word	7
	.word	7
	.word	9
	.word	8
	.word	8
	.align	3
.LC2:
	.word	0
	.word	0
	.word	6
	.word	6
	.word	5
	.word	5
	.word	5
	.word	7
	.word	6
	.word	6
	.text
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
