	.arch armv8-a
	.file	"libmin_qsort.c"
	.text
	.align	2
	.type	a_ctz_l, %function
a_ctz_l:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	neg	x1, x0
	ldr	x0, [sp, 8]
	and	x1, x1, x0
	mov	x0, 58921
	movk	x0, 0x76b, lsl 16
	mul	x0, x1, x0
	lsr	x0, x0, 27
	adrp	x1, debruijn32.0
	add	x1, x1, :lo12:debruijn32.0
	ldrb	w0, [x1, x0]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	a_ctz_l, .-a_ctz_l
	.align	2
	.type	pntz, %function
pntz:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	sub	x0, x0, #1
	bl	a_ctz_l
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bne	.L4
	ldr	x0, [sp, 24]
	add	x0, x0, 8
	ldr	x0, [x0]
	bl	a_ctz_l
	add	w0, w0, 64
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 64
	beq	.L5
.L4:
	ldr	w0, [sp, 44]
	b	.L6
.L5:
	mov	w0, 0
.L6:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	pntz, .-pntz
	.align	2
	.type	cycle, %function
cycle:
.LFB5:
	.cfi_startproc
	sub	sp, sp, #336
	.cfi_def_cfa_offset 336
	stp	x29, x30, [sp, 320]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 320
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	w2, [sp, 12]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 312]
	mov	x1, 0
	ldr	w0, [sp, 12]
	cmp	w0, 1
	ble	.L15
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 3
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	add	x1, sp, 56
	str	x1, [x0]
	b	.L10
.L13:
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 24]
	mov	x0, 256
	cmp	x2, 256
	csel	x0, x1, x0, ls
	str	x0, [sp, 48]
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 3
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	x3, [x0]
	ldr	x0, [sp, 16]
	ldr	x0, [x0]
	ldr	x2, [sp, 48]
	mov	x1, x0
	mov	x0, x3
	bl	libmin_memcpy
	str	wzr, [sp, 44]
	b	.L11
.L12:
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 3
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	x3, [x0]
	ldrsw	x0, [sp, 44]
	add	x0, x0, 1
	lsl	x0, x0, 3
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x2, [sp, 48]
	mov	x1, x0
	mov	x0, x3
	bl	libmin_memcpy
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 3
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	x2, [x0]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 3
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	x1, [sp, 48]
	add	x1, x2, x1
	str	x1, [x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L11:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	blt	.L12
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 48]
	sub	x0, x1, x0
	str	x0, [sp, 24]
.L10:
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L13
	b	.L7
.L15:
	nop
.L7:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 312]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L14
	bl	__stack_chk_fail
.L14:
	ldp	x29, x30, [sp, 320]
	add	sp, sp, 336
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	cycle, .-cycle
	.align	2
	.type	shl, %function
shl:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	ldr	w0, [sp, 4]
	cmp	w0, 63
	bls	.L17
	ldr	w0, [sp, 4]
	sub	w0, w0, #64
	str	w0, [sp, 4]
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	ldr	x1, [sp, 8]
	ldr	x1, [x1]
	str	x1, [x0]
	ldr	x0, [sp, 8]
	str	xzr, [x0]
.L17:
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	ldr	x2, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	ldr	w1, [sp, 4]
	lsl	x1, x2, x1
	str	x1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	ldr	x2, [x0]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	w0, [sp, 4]
	mov	w3, 64
	sub	w0, w3, w0
	lsr	x1, x1, x0
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	orr	x1, x2, x1
	str	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	w0, [sp, 4]
	lsl	x1, x1, x0
	ldr	x0, [sp, 8]
	str	x1, [x0]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	shl, .-shl
	.align	2
	.type	shr, %function
shr:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	ldr	w0, [sp, 4]
	cmp	w0, 63
	bls	.L19
	ldr	w0, [sp, 4]
	sub	w0, w0, #64
	str	w0, [sp, 4]
	ldr	x0, [sp, 8]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	str	xzr, [x0]
.L19:
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	w0, [sp, 4]
	lsr	x1, x1, x0
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	ldr	x2, [x0]
	ldr	w0, [sp, 4]
	mov	w3, 64
	sub	w0, w3, w0
	lsl	x0, x2, x0
	orr	x1, x1, x0
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	ldr	x2, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	ldr	w1, [sp, 4]
	lsr	x1, x2, x1
	str	x1, [x0]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	shr, .-shr
	.align	2
	.type	sift, %function
sift:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	sub	sp, sp, #992
	.cfi_def_cfa_offset 1008
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	w3, [sp, 20]
	str	x4, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 984]
	mov	x1, 0
	mov	w0, 1
	str	w0, [sp, 60]
	ldr	x0, [sp, 40]
	str	x0, [sp, 80]
	b	.L21
.L26:
	ldr	x0, [sp, 32]
	neg	x0, x0
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	str	x0, [sp, 64]
	ldr	x0, [sp, 32]
	neg	x1, x0
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 3
	sub	x0, x0, #16
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	x0, [x0]
	sub	x0, x1, x0
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	str	x0, [sp, 72]
	ldr	x0, [sp, 80]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 72]
	blr	x2
	cmp	w0, 0
	blt	.L22
	ldr	x0, [sp, 80]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 64]
	blr	x2
	cmp	w0, 0
	bge	.L28
.L22:
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	blr	x2
	cmp	w0, 0
	blt	.L24
	ldr	w0, [sp, 60]
	add	w1, w0, 1
	str	w1, [sp, 60]
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 80
	ldr	x2, [sp, 72]
	str	x2, [x1, x0]
	ldr	x0, [sp, 72]
	str	x0, [sp, 40]
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	str	w0, [sp, 20]
	b	.L21
.L24:
	ldr	w0, [sp, 60]
	add	w1, w0, 1
	str	w1, [sp, 60]
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 80
	ldr	x2, [sp, 64]
	str	x2, [x1, x0]
	ldr	x0, [sp, 64]
	str	x0, [sp, 40]
	ldr	w0, [sp, 20]
	sub	w0, w0, #2
	str	w0, [sp, 20]
.L21:
	ldr	w0, [sp, 20]
	cmp	w0, 1
	bgt	.L26
	b	.L23
.L28:
	nop
.L23:
	add	x0, sp, 80
	ldr	w2, [sp, 60]
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	cycle
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 984]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L27
	bl	__stack_chk_fail
.L27:
	add	sp, sp, 992
	.cfi_def_cfa_offset 16
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	sift, .-sift
	.align	2
	.type	trinkle, %function
trinkle:
.LFB9:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	sub	sp, sp, #1008
	.cfi_def_cfa_offset 1024
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	str	w4, [sp, 12]
	str	w5, [sp, 8]
	str	x6, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 1000]
	mov	x1, 0
	mov	w0, 1
	str	w0, [sp, 48]
	ldr	x0, [sp, 16]
	ldr	x0, [x0]
	str	x0, [sp, 80]
	ldr	x0, [sp, 16]
	ldr	x0, [x0, 8]
	str	x0, [sp, 88]
	ldr	x0, [sp, 40]
	str	x0, [sp, 96]
	b	.L30
.L34:
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	ldr	x0, [x0]
	neg	x0, x0
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	str	x0, [sp, 56]
	ldr	x0, [sp, 96]
	ldr	x2, [sp, 24]
	mov	x1, x0
	ldr	x0, [sp, 56]
	blr	x2
	cmp	w0, 0
	ble	.L37
	ldr	w0, [sp, 8]
	cmp	w0, 0
	bne	.L33
	ldr	w0, [sp, 12]
	cmp	w0, 1
	ble	.L33
	ldr	x0, [sp, 32]
	neg	x0, x0
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	str	x0, [sp, 64]
	ldr	x0, [sp, 32]
	neg	x1, x0
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 3
	sub	x0, x0, #16
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	x0, [x0]
	sub	x0, x1, x0
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	str	x0, [sp, 72]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 64]
	blr	x2
	cmp	w0, 0
	bge	.L32
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 72]
	blr	x2
	cmp	w0, 0
	bge	.L32
.L33:
	ldr	w0, [sp, 48]
	add	w1, w0, 1
	str	w1, [sp, 48]
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 96
	ldr	x2, [sp, 56]
	str	x2, [x1, x0]
	ldr	x0, [sp, 56]
	str	x0, [sp, 40]
	add	x0, sp, 80
	bl	pntz
	str	w0, [sp, 52]
	add	x0, sp, 80
	ldr	w1, [sp, 52]
	bl	shr
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 52]
	add	w0, w1, w0
	str	w0, [sp, 12]
	str	wzr, [sp, 8]
.L30:
	ldr	x0, [sp, 80]
	cmp	x0, 1
	bne	.L34
	ldr	x0, [sp, 88]
	cmp	x0, 0
	bne	.L34
	b	.L32
.L37:
	nop
.L32:
	ldr	w0, [sp, 8]
	cmp	w0, 0
	bne	.L38
	add	x0, sp, 96
	ldr	w2, [sp, 48]
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	cycle
	ldr	x4, [sp]
	ldr	w3, [sp, 12]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	sift
.L38:
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 1000]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L36
	bl	__stack_chk_fail
.L36:
	add	sp, sp, 1008
	.cfi_def_cfa_offset 16
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9:
	.size	trinkle, .-trinkle
	.align	2
	.global	libmin_qsort
	.type	libmin_qsort, %function
libmin_qsort:
.LFB10:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	sub	sp, sp, #864
	.cfi_def_cfa_offset 880
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	str	x3, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 856]
	mov	x1, 0
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 16]
	mul	x0, x1, x0
	str	x0, [sp, 56]
	mov	x0, 1
	str	x0, [sp, 72]
	str	xzr, [sp, 80]
	mov	w0, 1
	str	w0, [sp, 32]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L57
	ldr	x0, [sp, 24]
	str	x0, [sp, 48]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 8]
	sub	x0, x1, x0
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	str	x0, [sp, 64]
	ldr	x0, [sp, 8]
	str	x0, [sp, 96]
	ldr	x0, [sp, 96]
	str	x0, [sp, 88]
	mov	x0, 2
	str	x0, [sp, 40]
	b	.L42
.L43:
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L42:
	ldr	x0, [sp, 40]
	sub	x0, x0, #2
	lsl	x0, x0, 3
	add	x1, sp, 88
	ldr	x1, [x1, x0]
	ldr	x0, [sp, 40]
	sub	x0, x0, #1
	lsl	x0, x0, 3
	add	x2, sp, 88
	ldr	x0, [x2, x0]
	add	x1, x1, x0
	ldr	x0, [sp, 8]
	add	x2, x1, x0
	ldr	x0, [sp, 40]
	lsl	x0, x0, 3
	add	x1, sp, 88
	str	x2, [x1, x0]
	ldr	x0, [sp, 40]
	lsl	x0, x0, 3
	add	x1, sp, 88
	ldr	x0, [x1, x0]
	ldr	x1, [sp, 56]
	cmp	x1, x0
	bhi	.L43
	b	.L44
.L50:
	ldr	x0, [sp, 72]
	and	x0, x0, 3
	cmp	x0, 3
	bne	.L45
	add	x0, sp, 88
	mov	x4, x0
	ldr	w3, [sp, 32]
	ldr	x2, [sp]
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 48]
	bl	sift
	add	x0, sp, 72
	mov	w1, 2
	bl	shr
	ldr	w0, [sp, 32]
	add	w0, w0, 2
	str	w0, [sp, 32]
	b	.L46
.L45:
	ldr	w0, [sp, 32]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 88
	ldr	x0, [x1, x0]
	ldr	x2, [sp, 64]
	ldr	x1, [sp, 48]
	sub	x1, x2, x1
	cmp	x0, x1
	bcc	.L47
	add	x1, sp, 88
	add	x0, sp, 72
	mov	x6, x1
	mov	w5, 0
	ldr	w4, [sp, 32]
	mov	x3, x0
	ldr	x2, [sp]
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 48]
	bl	trinkle
	b	.L48
.L47:
	add	x0, sp, 88
	mov	x4, x0
	ldr	w3, [sp, 32]
	ldr	x2, [sp]
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 48]
	bl	sift
.L48:
	ldr	w0, [sp, 32]
	cmp	w0, 1
	bne	.L49
	add	x0, sp, 72
	mov	w1, 1
	bl	shl
	str	wzr, [sp, 32]
	b	.L46
.L49:
	ldr	w0, [sp, 32]
	sub	w1, w0, #1
	add	x0, sp, 72
	bl	shl
	mov	w0, 1
	str	w0, [sp, 32]
.L46:
	ldr	x0, [sp, 72]
	orr	x0, x0, 1
	str	x0, [sp, 72]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 8]
	add	x0, x1, x0
	str	x0, [sp, 48]
.L44:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 64]
	cmp	x1, x0
	bcc	.L50
	add	x1, sp, 88
	add	x0, sp, 72
	mov	x6, x1
	mov	w5, 0
	ldr	w4, [sp, 32]
	mov	x3, x0
	ldr	x2, [sp]
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 48]
	bl	trinkle
	b	.L51
.L54:
	ldr	w0, [sp, 32]
	cmp	w0, 1
	bgt	.L52
	add	x0, sp, 72
	bl	pntz
	str	w0, [sp, 36]
	add	x0, sp, 72
	ldr	w1, [sp, 36]
	bl	shr
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 36]
	add	w0, w1, w0
	str	w0, [sp, 32]
	b	.L53
.L52:
	add	x0, sp, 72
	mov	w1, 2
	bl	shl
	ldr	w0, [sp, 32]
	sub	w0, w0, #2
	str	w0, [sp, 32]
	ldr	x0, [sp, 72]
	eor	x0, x0, 7
	str	x0, [sp, 72]
	add	x0, sp, 72
	mov	w1, 1
	bl	shr
	ldrsw	x0, [sp, 32]
	lsl	x0, x0, 3
	add	x1, sp, 88
	ldr	x0, [x1, x0]
	neg	x1, x0
	ldr	x0, [sp, 8]
	sub	x0, x1, x0
	ldr	x1, [sp, 48]
	add	x7, x1, x0
	ldr	w0, [sp, 32]
	add	w1, w0, 1
	add	x2, sp, 88
	add	x0, sp, 72
	mov	x6, x2
	mov	w5, 1
	mov	w4, w1
	mov	x3, x0
	ldr	x2, [sp]
	ldr	x1, [sp, 8]
	mov	x0, x7
	bl	trinkle
	add	x0, sp, 72
	mov	w1, 1
	bl	shl
	ldr	x0, [sp, 72]
	orr	x0, x0, 1
	str	x0, [sp, 72]
	ldr	x0, [sp, 8]
	neg	x0, x0
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	add	x2, sp, 88
	add	x1, sp, 72
	mov	x6, x2
	mov	w5, 1
	ldr	w4, [sp, 32]
	mov	x3, x1
	ldr	x2, [sp]
	ldr	x1, [sp, 8]
	bl	trinkle
.L53:
	ldr	x0, [sp, 8]
	neg	x0, x0
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	str	x0, [sp, 48]
.L51:
	ldr	w0, [sp, 32]
	cmp	w0, 1
	bne	.L54
	ldr	x0, [sp, 72]
	cmp	x0, 1
	bne	.L54
	ldr	x0, [sp, 80]
	cmp	x0, 0
	bne	.L54
	b	.L39
.L57:
	nop
.L39:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 856]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L56
	bl	__stack_chk_fail
.L56:
	add	sp, sp, 864
	.cfi_def_cfa_offset 16
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10:
	.size	libmin_qsort, .-libmin_qsort
	.section	.rodata
	.align	3
	.type	debruijn32.0, %object
	.size	debruijn32.0, 32
debruijn32.0:
	.string	""
	.ascii	"\001\027\002\035\030\023\003\036\033\031\013\024\b\004\r\037"
	.ascii	"\026\034\022\032\n\007\f\025\021\t\006\020\005\017\016"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
