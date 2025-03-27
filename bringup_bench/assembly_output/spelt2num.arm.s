	.arch armv8-a
	.file	"spelt2num.c"
	.text
	.global	p
	.section	.rodata
	.align	3
.LC0:
	.string	"fifty-two trillion six-hundred and seventy five million and sixty-one thousand and five-hundred sixty-two\n"
	.section	.data.rel.local,"aw"
	.align	3
	.type	p, %object
	.size	p, 8
p:
	.xword	.LC0
	.global	n
	.bss
	.align	3
	.type	n, %object
	.size	n, 8
n:
	.zero	8
	.global	u
	.align	3
	.type	u, %object
	.size	u, 8
u:
	.zero	8
	.global	m
	.align	3
	.type	m, %object
	.size	m, 8
m:
	.zero	8
	.global	b
	.align	3
	.type	b, %object
	.size	b, 8
b:
	.zero	8
	.section	.rodata
	.align	3
.LC3:
	.string	"%llx\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	b	.L2
.L21:
	adrp	x0, b
	add	x0, x0, :lo12:b
	ldr	x0, [x0]
	negs	x1, x0
	and	x0, x0, 63
	and	x1, x1, 63
	csneg	x0, x0, x1, mi
	sub	x0, x0, #25
	str	x0, [sp, 24]
	b	.L3
.L18:
	adrp	x0, n
	add	x0, x0, :lo12:n
	mov	x1, 19
	str	x1, [x0]
	b	.L4
.L16:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	x0, [x0]
	sub	x2, x0, #1
	adrp	x1, n
	add	x1, x1, :lo12:n
	str	x2, [x1]
	mov	x1, 6177
	sdiv	x2, x1, x0
	mul	x0, x2, x0
	sub	x0, x1, x0
	lsl	w0, w0, 2
	mov	x1, 1
	lsl	x1, x1, x0
	adrp	x0, u
	add	x0, x0, :lo12:u
	str	x1, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	x0, [x0]
	adrp	x1, .LC1
	add	x1, x1, :lo12:.LC1
	ldrb	w0, [x1, x0]
	sub	w0, w0, #42
	uxtw	x0, w0
	and	x1, x0, 255
	adrp	x0, b
	add	x0, x0, :lo12:b
	ldr	x0, [x0]
	cmp	x1, x0
	bne	.L23
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	x0, [x0]
	cmp	x0, 15
	bgt	.L6
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	x0, [x0]
	cmp	x0, 9
	ble	.L7
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	x0, [x0]
	adrp	x1, u
	add	x1, x1, :lo12:u
	ldr	x1, [x1]
	sdiv	x2, x0, x1
	mul	x1, x2, x1
	sub	x1, x0, x1
	adrp	x0, u
	add	x0, x0, :lo12:u
	ldr	x0, [x0]
	sub	x0, x0, #1
	mul	x0, x1, x0
	b	.L13
.L7:
	ldr	x0, [sp, 24]
	cmn	x0, #1
	beq	.L9
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L10
	mov	x0, 16
	b	.L11
.L10:
	mov	x0, 0
.L11:
	adrp	x1, n
	add	x1, x1, :lo12:n
	ldr	x1, [x1]
	add	x0, x0, x1
	b	.L13
.L9:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	x0, [x0]
	lsl	x0, x0, 4
	b	.L13
.L6:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	x0, [x0]
.L13:
	adrp	x1, m
	add	x1, x1, :lo12:m
	ldr	x1, [x1]
	add	x1, x0, x1
	adrp	x0, m
	add	x0, x0, :lo12:m
	str	x1, [x0]
	adrp	x0, b
	add	x0, x0, :lo12:b
	str	xzr, [x0]
	adrp	x0, b
	add	x0, x0, :lo12:b
	ldr	x0, [x0]
	cmp	x0, 0
.L23:
	nop
.L4:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	x0, [x0]
	cmp	x0, 0
	bne	.L16
	adrp	x0, b
	add	x0, x0, :lo12:b
	ldr	x0, [x0]
	add	x1, x0, 7
	cmp	x0, 0
	csel	x0, x1, x0, lt
	asr	x0, x0, 3
	mov	x1, x0
	adrp	x0, b
	add	x0, x0, :lo12:b
	str	x1, [x0]
.L3:
	ldr	w0, [sp, 20]
	cmp	w0, 46
	bgt	.L17
	adrp	x0, b
	add	x0, x0, :lo12:b
	ldr	x0, [x0]
	cmp	x0, 0
	bne	.L18
.L17:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	x2, [x0]
	mov	x0, 35747
	movk	x0, 0xba2e, lsl 16
	movk	x0, 0xa2e8, lsl 32
	movk	x0, 0x2e8b, lsl 48
	smulh	x0, x2, x0
	asr	x1, x0, 1
	asr	x0, x2, 63
	sub	x1, x1, x0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	sub	x1, x2, x0
	adrp	x0, n
	add	x0, x0, :lo12:n
	str	x1, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	x0, [x0]
	adrp	x1, .LC2
	add	x1, x1, :lo12:.LC2
	ldrb	w0, [x1, x0]
	mov	w1, w0
	ldr	w0, [sp, 20]
	cmp	w0, w1
	bne	.L19
	adrp	x0, b
	add	x0, x0, :lo12:b
	ldr	x0, [x0]
	lsl	x1, x0, 3
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	x0, [x0]
	add	x0, x1, x0
	b	.L20
.L19:
	adrp	x0, b
	add	x0, x0, :lo12:b
	ldr	x0, [x0]
.L20:
	adrp	x1, b
	add	x1, x1, :lo12:b
	str	x0, [x1]
.L2:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	x0, [x0]
	add	x2, x0, 1
	adrp	x1, n
	add	x1, x1, :lo12:n
	str	x2, [x1]
	cmp	x0, 0
	bne	.L21
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldr	x0, [x0]
	add	x2, x0, 1
	adrp	x1, p
	add	x1, x1, :lo12:p
	str	x2, [x1]
	ldrb	w0, [x0]
	str	w0, [sp, 20]
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bgt	.L21
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	x0, [x0]
	mov	x1, x0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	libmin_printf
	bl	libmin_success
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC1:
	.string	"1+DIY/.K430x9G(kC["
	.align	3
.LC2:
	.string	"ynwtsflrabg"
	.text
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
