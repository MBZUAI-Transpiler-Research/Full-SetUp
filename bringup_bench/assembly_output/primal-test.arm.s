	.arch armv8-a
	.file	"primal-test.c"
	.text
	.align	2
	.type	powm, %function
powm:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	w2, [sp, 12]
	mov	x0, 1
	str	x0, [sp, 40]
	b	.L2
.L4:
	ldr	x0, [sp, 16]
	and	x0, x0, 1
	cmp	x0, 0
	beq	.L3
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	mul	x0, x1, x0
	ldr	w1, [sp, 12]
	udiv	x2, x0, x1
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [sp, 40]
.L3:
	ldr	x0, [sp, 24]
	mul	x0, x0, x0
	ldr	w1, [sp, 12]
	udiv	x2, x0, x1
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [sp, 24]
	ldr	x0, [sp, 16]
	lsr	x0, x0, 1
	str	x0, [sp, 16]
.L2:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L4
	ldr	x0, [sp, 40]
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	powm, .-powm
	.align	2
	.global	get_random_int
	.type	get_random_int, %function
get_random_int:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	bl	libmin_rand
	uxtw	x0, w0
	ldr	x2, [sp, 16]
	ldr	x1, [sp, 24]
	sub	x1, x2, x1
	add	x1, x1, 1
	udiv	x2, x0, x1
	mul	x1, x2, x1
	sub	x1, x0, x1
	ldr	x0, [sp, 24]
	add	x0, x1, x0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	get_random_int, .-get_random_int
	.align	2
	.global	split_int
	.type	split_int, %function
split_int:
.LFB5:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 24]
	str	xzr, [x0]
	ldr	x0, [sp, 8]
	sub	x1, x0, #1
	ldr	x0, [sp, 16]
	str	x1, [x0]
	b	.L9
.L10:
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	add	x1, x0, 1
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 16]
	ldr	x0, [x0]
	lsr	x1, x0, 1
	ldr	x0, [sp, 16]
	str	x1, [x0]
.L9:
	ldr	x0, [sp, 16]
	ldr	x0, [x0]
	and	x0, x0, 1
	cmp	x0, 0
	beq	.L10
	nop
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	split_int, .-split_int
	.align	2
	.global	miller_rabin_int
	.type	miller_rabin_int, %function
miller_rabin_int:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	str	xzr, [sp, 56]
	ldr	w0, [sp, 12]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L12
	ldr	w0, [sp, 12]
	cmp	w0, 2
	cset	w0, eq
	and	w0, w0, 255
	b	.L26
.L12:
	ldr	w0, [sp, 12]
	cmp	w0, 3
	bne	.L14
	mov	w0, 1
	b	.L26
.L14:
	ldr	w0, [sp, 12]
	cmp	w0, 2
	bhi	.L15
	mov	w0, 0
	b	.L26
.L15:
	ldr	w0, [sp, 12]
	sub	w0, w0, #1
	uxtw	x0, w0
	str	x0, [sp, 64]
	ldr	w2, [sp, 12]
	add	x1, sp, 32
	add	x0, sp, 24
	bl	split_int
	str	wzr, [sp, 20]
	b	.L16
.L25:
	ldr	w0, [sp, 12]
	sub	w0, w0, #2
	uxtw	x0, w0
	mov	x1, x0
	mov	x0, 2
	bl	get_random_int
	str	x0, [sp, 56]
	ldr	x0, [sp, 32]
	ldr	w2, [sp, 12]
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	powm
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	cmp	x0, 1
	beq	.L28
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 64]
	cmp	x1, x0
	beq	.L28
	mov	x0, 1
	str	x0, [sp, 48]
	b	.L20
.L24:
	ldr	x0, [sp, 40]
	mul	x0, x0, x0
	ldr	w1, [sp, 12]
	udiv	x2, x0, x1
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	cmp	x0, 1
	bne	.L21
	mov	w0, 0
	b	.L26
.L21:
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 64]
	cmp	x1, x0
	beq	.L29
	ldr	x0, [sp, 48]
	add	x0, x0, 1
	str	x0, [sp, 48]
.L20:
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 48]
	cmp	x1, x0
	bls	.L24
	b	.L23
.L29:
	nop
.L23:
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 64]
	cmp	x1, x0
	beq	.L19
	mov	w0, 0
	b	.L26
.L28:
	nop
.L19:
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L16:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	bcc	.L25
	mov	w0, 2
.L26:
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 72]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L27
	bl	__stack_chk_fail
.L27:
	mov	w0, w1
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 96
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	miller_rabin_int, .-miller_rabin_int
	.global	q
	.bss
	.align	3
	.type	q, %object
	.size	q, 512
q:
	.zero	512
	.global	q_head
	.align	2
	.type	q_head, %object
	.size	q_head, 4
q_head:
	.zero	4
	.section	.rodata
	.align	3
.LC0:
	.string	"Primality tests found %d primes...\n"
	.align	3
.LC1:
	.string	"Value %u is `prime' with failure probability (0)\n"
	.align	3
.LC2:
	.string	"Value %u is `likely prime' with failure probability (1 in %.0lf)\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	mov	w0, 42
	bl	libmin_srand
	mov	w0, 3
	str	w0, [sp, 44]
	str	wzr, [sp, 48]
	b	.L31
.L33:
	mov	w1, 16
	ldr	w0, [sp, 44]
	bl	miller_rabin_int
	str	w0, [sp, 56]
	ldr	w0, [sp, 56]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	str	w0, [sp, 60]
	ldr	w0, [sp, 60]
	cmp	w0, 0
	beq	.L32
	adrp	x0, q_head
	add	x0, x0, :lo12:q_head
	ldr	w2, [x0]
	adrp	x0, q
	add	x1, x0, :lo12:q
	sxtw	x0, w2
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	w1, [sp, 44]
	str	w1, [x0]
	adrp	x0, q_head
	add	x0, x0, :lo12:q_head
	ldr	w2, [x0]
	adrp	x0, q
	add	x1, x0, :lo12:q
	sxtw	x0, w2
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	w1, [sp, 56]
	str	w1, [x0, 4]
	adrp	x0, q_head
	add	x0, x0, :lo12:q_head
	ldr	w0, [x0]
	cmp	w0, 62
	bgt	.L32
	adrp	x0, q_head
	add	x0, x0, :lo12:q_head
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, q_head
	add	x0, x0, :lo12:q_head
	str	w1, [x0]
.L32:
	bl	libmin_rand
	str	w0, [sp, 44]
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L31:
	ldr	w0, [sp, 48]
	cmp	w0, 199
	ble	.L33
	adrp	x0, q_head
	add	x0, x0, :lo12:q_head
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	libmin_printf
	str	wzr, [sp, 52]
	b	.L34
.L37:
	adrp	x0, q
	add	x1, x0, :lo12:q
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	w0, [x0, 4]
	cmp	w0, 1
	bne	.L35
	adrp	x0, q
	add	x1, x0, :lo12:q
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	libmin_printf
	b	.L36
.L35:
	adrp	x0, q
	add	x1, x0, :lo12:q
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	w0, [x0, 4]
	cmp	w0, 2
	bne	.L36
	adrp	x0, q
	add	x1, x0, :lo12:q
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	w19, [x0]
	fmov	d1, 1.6e+1
	fmov	d0, 4.0e+0
	bl	libmin_pow
	mov	w1, w19
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	libmin_printf
.L36:
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L34:
	adrp	x0, q_head
	add	x0, x0, :lo12:q_head
	ldr	w0, [x0]
	ldr	w1, [sp, 52]
	cmp	w1, w0
	blt	.L37
	bl	libmin_success
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
