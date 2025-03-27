	.arch armv8-a
	.file	"max-subseq.c"
	.text
	.global	S1
	.data
	.align	3
	.type	S1, %object
	.size	S1, 20
S1:
	.string	"ACADBFEDSFSDFDSEFE"
	.zero	1
	.global	S2
	.align	3
	.type	S2, %object
	.size	S2, 20
S2:
	.string	"CBDAEFEFESAFEASDD"
	.zero	2
	.global	i
	.bss
	.align	2
	.type	i, %object
	.size	i, 4
i:
	.zero	4
	.global	j
	.align	2
	.type	j, %object
	.size	j, 4
j:
	.zero	4
	.global	m
	.align	2
	.type	m, %object
	.size	m, 4
m:
	.zero	4
	.global	n
	.align	2
	.type	n, %object
	.size	n, 4
n:
	.zero	4
	.global	LCS_table
	.align	3
	.type	LCS_table, %object
	.size	LCS_table, 6400
LCS_table:
	.zero	6400
	.global	b
	.align	3
	.type	b, %object
	.size	b, 1600
b:
	.zero	1600
	.section	.rodata
	.align	3
.LC0:
	.string	"LCS: %s"
	.text
	.align	2
	.global	lcsAlgo
	.type	lcsAlgo, %function
lcsAlgo:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	.cfi_def_cfa_register 29
	str	x19, [sp, 16]
	sub	sp, sp, #64
	.cfi_offset 19, -16
	adrp	x4, :got:__stack_chk_guard
	ldr	x4, [x4, :got_lo12:__stack_chk_guard]
	ldr	x5, [x4]
	str	x5, [x29, -8]
	mov	x5, 0
	mov	x4, sp
	mov	x19, x4
	adrp	x4, i
	add	x4, x4, :lo12:i
	str	wzr, [x4]
	b	.L2
.L3:
	adrp	x4, i
	add	x4, x4, :lo12:i
	ldr	w5, [x4]
	adrp	x4, LCS_table
	add	x10, x4, :lo12:LCS_table
	sxtw	x5, w5
	mov	x4, x5
	lsl	x4, x4, 2
	add	x4, x4, x5
	lsl	x4, x4, 5
	add	x4, x10, x4
	str	wzr, [x4]
	adrp	x4, i
	add	x4, x4, :lo12:i
	ldr	w4, [x4]
	add	w5, w4, 1
	adrp	x4, i
	add	x4, x4, :lo12:i
	str	w5, [x4]
.L2:
	adrp	x4, i
	add	x4, x4, :lo12:i
	ldr	w5, [x4]
	adrp	x4, m
	add	x4, x4, :lo12:m
	ldr	w4, [x4]
	cmp	w5, w4
	ble	.L3
	adrp	x4, i
	add	x4, x4, :lo12:i
	str	wzr, [x4]
	b	.L4
.L5:
	adrp	x4, i
	add	x4, x4, :lo12:i
	ldr	w5, [x4]
	adrp	x4, LCS_table
	add	x4, x4, :lo12:LCS_table
	sxtw	x5, w5
	str	wzr, [x4, x5, lsl 2]
	adrp	x4, i
	add	x4, x4, :lo12:i
	ldr	w4, [x4]
	add	w5, w4, 1
	adrp	x4, i
	add	x4, x4, :lo12:i
	str	w5, [x4]
.L4:
	adrp	x4, i
	add	x4, x4, :lo12:i
	ldr	w5, [x4]
	adrp	x4, n
	add	x4, x4, :lo12:n
	ldr	w4, [x4]
	cmp	w5, w4
	ble	.L5
	adrp	x4, i
	add	x4, x4, :lo12:i
	mov	w5, 1
	str	w5, [x4]
	b	.L6
.L12:
	adrp	x4, j
	add	x4, x4, :lo12:j
	mov	w5, 1
	str	w5, [x4]
	b	.L7
.L11:
	adrp	x4, i
	add	x4, x4, :lo12:i
	ldr	w4, [x4]
	sub	w10, w4, #1
	adrp	x4, S1
	add	x5, x4, :lo12:S1
	sxtw	x4, w10
	ldrb	w5, [x5, x4]
	adrp	x4, j
	add	x4, x4, :lo12:j
	ldr	w4, [x4]
	sub	w11, w4, #1
	adrp	x4, S2
	add	x10, x4, :lo12:S2
	sxtw	x4, w11
	ldrb	w4, [x10, x4]
	cmp	w5, w4
	bne	.L8
	adrp	x4, i
	add	x4, x4, :lo12:i
	ldr	w4, [x4]
	sub	w5, w4, #1
	adrp	x4, j
	add	x4, x4, :lo12:j
	ldr	w4, [x4]
	sub	w11, w4, #1
	adrp	x4, LCS_table
	add	x10, x4, :lo12:LCS_table
	sxtw	x11, w11
	sxtw	x5, w5
	mov	x4, x5
	lsl	x4, x4, 2
	add	x4, x4, x5
	lsl	x4, x4, 3
	add	x4, x4, x11
	ldr	w4, [x10, x4, lsl 2]
	adrp	x5, i
	add	x5, x5, :lo12:i
	ldr	w13, [x5]
	adrp	x5, j
	add	x5, x5, :lo12:j
	ldr	w5, [x5]
	add	w11, w4, 1
	adrp	x4, LCS_table
	add	x10, x4, :lo12:LCS_table
	sxtw	x12, w5
	sxtw	x5, w13
	mov	x4, x5
	lsl	x4, x4, 2
	add	x4, x4, x5
	lsl	x4, x4, 3
	add	x4, x4, x12
	str	w11, [x10, x4, lsl 2]
	b	.L9
.L8:
	adrp	x4, i
	add	x4, x4, :lo12:i
	ldr	w4, [x4]
	sub	w5, w4, #1
	adrp	x4, j
	add	x4, x4, :lo12:j
	ldr	w11, [x4]
	adrp	x4, LCS_table
	add	x10, x4, :lo12:LCS_table
	sxtw	x11, w11
	sxtw	x5, w5
	mov	x4, x5
	lsl	x4, x4, 2
	add	x4, x4, x5
	lsl	x4, x4, 3
	add	x4, x4, x11
	ldr	w10, [x10, x4, lsl 2]
	adrp	x4, i
	add	x4, x4, :lo12:i
	ldr	w5, [x4]
	adrp	x4, j
	add	x4, x4, :lo12:j
	ldr	w4, [x4]
	sub	w12, w4, #1
	adrp	x4, LCS_table
	add	x11, x4, :lo12:LCS_table
	sxtw	x12, w12
	sxtw	x5, w5
	mov	x4, x5
	lsl	x4, x4, 2
	add	x4, x4, x5
	lsl	x4, x4, 3
	add	x4, x4, x12
	ldr	w4, [x11, x4, lsl 2]
	cmp	w10, w4
	blt	.L10
	adrp	x4, i
	add	x4, x4, :lo12:i
	ldr	w4, [x4]
	sub	w5, w4, #1
	adrp	x4, j
	add	x4, x4, :lo12:j
	ldr	w11, [x4]
	adrp	x4, i
	add	x4, x4, :lo12:i
	ldr	w13, [x4]
	adrp	x4, j
	add	x4, x4, :lo12:j
	ldr	w12, [x4]
	adrp	x4, LCS_table
	add	x10, x4, :lo12:LCS_table
	sxtw	x11, w11
	sxtw	x5, w5
	mov	x4, x5
	lsl	x4, x4, 2
	add	x4, x4, x5
	lsl	x4, x4, 3
	add	x4, x4, x11
	ldr	w11, [x10, x4, lsl 2]
	adrp	x4, LCS_table
	add	x10, x4, :lo12:LCS_table
	sxtw	x12, w12
	sxtw	x5, w13
	mov	x4, x5
	lsl	x4, x4, 2
	add	x4, x4, x5
	lsl	x4, x4, 3
	add	x4, x4, x12
	str	w11, [x10, x4, lsl 2]
	b	.L9
.L10:
	adrp	x4, i
	add	x4, x4, :lo12:i
	ldr	w5, [x4]
	adrp	x4, j
	add	x4, x4, :lo12:j
	ldr	w4, [x4]
	sub	w11, w4, #1
	adrp	x4, i
	add	x4, x4, :lo12:i
	ldr	w13, [x4]
	adrp	x4, j
	add	x4, x4, :lo12:j
	ldr	w12, [x4]
	adrp	x4, LCS_table
	add	x10, x4, :lo12:LCS_table
	sxtw	x11, w11
	sxtw	x5, w5
	mov	x4, x5
	lsl	x4, x4, 2
	add	x4, x4, x5
	lsl	x4, x4, 3
	add	x4, x4, x11
	ldr	w11, [x10, x4, lsl 2]
	adrp	x4, LCS_table
	add	x10, x4, :lo12:LCS_table
	sxtw	x12, w12
	sxtw	x5, w13
	mov	x4, x5
	lsl	x4, x4, 2
	add	x4, x4, x5
	lsl	x4, x4, 3
	add	x4, x4, x12
	str	w11, [x10, x4, lsl 2]
.L9:
	adrp	x4, j
	add	x4, x4, :lo12:j
	ldr	w4, [x4]
	add	w5, w4, 1
	adrp	x4, j
	add	x4, x4, :lo12:j
	str	w5, [x4]
.L7:
	adrp	x4, j
	add	x4, x4, :lo12:j
	ldr	w5, [x4]
	adrp	x4, n
	add	x4, x4, :lo12:n
	ldr	w4, [x4]
	cmp	w5, w4
	ble	.L11
	adrp	x4, i
	add	x4, x4, :lo12:i
	ldr	w4, [x4]
	add	w5, w4, 1
	adrp	x4, i
	add	x4, x4, :lo12:i
	str	w5, [x4]
.L6:
	adrp	x4, i
	add	x4, x4, :lo12:i
	ldr	w5, [x4]
	adrp	x4, m
	add	x4, x4, :lo12:m
	ldr	w4, [x4]
	cmp	w5, w4
	ble	.L12
	adrp	x4, m
	add	x4, x4, :lo12:m
	ldr	w5, [x4]
	adrp	x4, n
	add	x4, x4, :lo12:n
	ldr	w11, [x4]
	adrp	x4, LCS_table
	add	x10, x4, :lo12:LCS_table
	sxtw	x11, w11
	sxtw	x5, w5
	mov	x4, x5
	lsl	x4, x4, 2
	add	x4, x4, x5
	lsl	x4, x4, 3
	add	x4, x4, x11
	ldr	w4, [x10, x4, lsl 2]
	str	w4, [x29, -36]
	ldr	w4, [x29, -36]
	add	w4, w4, 1
	sxtw	x5, w4
	sub	x5, x5, #1
	str	x5, [x29, -24]
	sxtw	x5, w4
	mov	x8, x5
	mov	x9, 0
	lsr	x5, x8, 61
	lsl	x3, x9, 3
	orr	x3, x5, x3
	lsl	x2, x8, 3
	sxtw	x2, w4
	mov	x6, x2
	mov	x7, 0
	lsr	x2, x6, 61
	lsl	x1, x7, 3
	orr	x1, x2, x1
	lsl	x0, x6, 3
	sxtw	x0, w4
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
.L13:
	cmp	sp, x1
	beq	.L14
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L13
.L14:
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L15
	str	xzr, [sp, 1024]
.L15:
	add	x0, sp, 16
	add	x0, x0, 0
	str	x0, [x29, -16]
	ldr	x1, [x29, -16]
	ldrsw	x0, [x29, -36]
	strb	wzr, [x1, x0]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	str	w0, [x29, -32]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	str	w0, [x29, -28]
	b	.L16
.L21:
	ldr	w0, [x29, -32]
	sub	w2, w0, #1
	adrp	x0, S1
	add	x1, x0, :lo12:S1
	sxtw	x0, w2
	ldrb	w1, [x1, x0]
	ldr	w0, [x29, -28]
	sub	w3, w0, #1
	adrp	x0, S2
	add	x2, x0, :lo12:S2
	sxtw	x0, w3
	ldrb	w0, [x2, x0]
	cmp	w1, w0
	bne	.L17
	ldr	w0, [x29, -32]
	sub	w2, w0, #1
	ldr	w0, [x29, -36]
	sub	w3, w0, #1
	adrp	x0, S1
	add	x1, x0, :lo12:S1
	sxtw	x0, w2
	ldrb	w2, [x1, x0]
	ldr	x1, [x29, -16]
	sxtw	x0, w3
	strb	w2, [x1, x0]
	ldr	w0, [x29, -32]
	sub	w0, w0, #1
	str	w0, [x29, -32]
	ldr	w0, [x29, -28]
	sub	w0, w0, #1
	str	w0, [x29, -28]
	ldr	w0, [x29, -36]
	sub	w0, w0, #1
	str	w0, [x29, -36]
	b	.L16
.L17:
	ldr	w0, [x29, -32]
	sub	w1, w0, #1
	adrp	x0, LCS_table
	add	x2, x0, :lo12:LCS_table
	ldrsw	x3, [x29, -28]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	ldr	w0, [x29, -28]
	sub	w1, w0, #1
	adrp	x0, LCS_table
	add	x3, x0, :lo12:LCS_table
	sxtw	x4, w1
	ldrsw	x1, [x29, -32]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	cmp	w2, w0
	ble	.L19
	ldr	w0, [x29, -32]
	sub	w0, w0, #1
	str	w0, [x29, -32]
	b	.L16
.L19:
	ldr	w0, [x29, -28]
	sub	w0, w0, #1
	str	w0, [x29, -28]
.L16:
	ldr	w0, [x29, -32]
	cmp	w0, 0
	ble	.L20
	ldr	w0, [x29, -28]
	cmp	w0, 0
	bgt	.L21
.L20:
	ldr	x1, [x29, -16]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	libmin_printf
	mov	sp, x19
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [x29, -8]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L22
	bl	__stack_chk_fail
.L22:
	mov	sp, x29
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE3:
	.size	lcsAlgo, .-lcsAlgo
	.section	.rodata
	.align	3
.LC1:
	.string	"S1 : %s (%d) \nS2 : %s  (%d)\n"
	.align	3
.LC2:
	.string	"\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	adrp	x0, S1
	add	x0, x0, :lo12:S1
	bl	libmin_strlen
	mov	w1, w0
	adrp	x0, m
	add	x0, x0, :lo12:m
	str	w1, [x0]
	adrp	x0, S2
	add	x0, x0, :lo12:S2
	bl	libmin_strlen
	mov	w1, w0
	adrp	x0, n
	add	x0, x0, :lo12:n
	str	w1, [x0]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w1, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	mov	w4, w0
	adrp	x0, S2
	add	x3, x0, :lo12:S2
	mov	w2, w1
	adrp	x0, S1
	add	x1, x0, :lo12:S1
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	libmin_printf
	bl	lcsAlgo
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	libmin_printf
	bl	libmin_success
	mov	w0, 0
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
