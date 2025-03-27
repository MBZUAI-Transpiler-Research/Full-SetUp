	.arch armv8-a
	.file	"minspan.c"
	.text
	.global	V
	.section	.rodata
	.align	2
	.type	V, %object
	.size	V, 4
V:
	.word	10
	.global	vertName
	.align	3
.LC0:
	.string	"Home"
	.align	3
.LC1:
	.string	"z-mall"
	.align	3
.LC2:
	.string	"st.pet"
	.align	3
.LC3:
	.string	"office"
	.align	3
.LC4:
	.string	"school"
	.align	3
.LC5:
	.string	"motel"
	.align	3
.LC6:
	.string	"restr."
	.align	3
.LC7:
	.string	"library"
	.align	3
.LC8:
	.string	"airport"
	.align	3
.LC9:
	.string	"barber"
	.section	.data.rel.local,"aw"
	.align	3
	.type	vertName, %object
	.size	vertName, 80
vertName:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.xword	.LC3
	.xword	.LC4
	.xword	.LC5
	.xword	.LC6
	.xword	.LC7
	.xword	.LC8
	.xword	.LC9
	.text
	.align	2
	.global	minVal
	.type	minVal, %function
minVal:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	x1, [sp]
	mov	w0, -1
	str	w0, [sp, 20]
	mov	w0, 2147483647
	str	w0, [sp, 24]
	str	wzr, [sp, 28]
	b	.L2
.L4:
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	ble	.L3
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x1, [sp]
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L3
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	str	w0, [sp, 20]
.L3:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	mov	w0, 10
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L4
	ldr	w0, [sp, 20]
	cmn	w0, #1
	beq	.L5
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x1, [sp]
	add	x0, x1, x0
	mov	w1, 1
	str	w1, [x0]
.L5:
	ldr	w0, [sp, 20]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	minVal, .-minVal
	.align	2
	.global	minSpanTree
	.type	minSpanTree, %function
minSpanTree:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	.cfi_def_cfa_register 29
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	sub	sp, sp, #96
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	.cfi_offset 21, -16
	str	x0, [x29, -72]
	str	x1, [x29, -80]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [x29, -8]
	mov	x1, 0
	mov	w0, 10
	sxtw	x0, w0
	sub	x0, x0, #1
	str	x0, [x29, -48]
	mov	w0, 10
	sxtw	x0, w0
	mov	x20, x0
	mov	x21, 0
	lsr	x0, x20, 59
	lsl	x11, x21, 5
	orr	x11, x0, x11
	lsl	x10, x20, 5
	mov	x0, sp
	mov	x20, x0
	mov	w0, 10
	sxtw	x0, w0
	sub	x0, x0, #1
	str	x0, [x29, -40]
	mov	w0, 10
	sxtw	x0, w0
	mov	x18, x0
	mov	x19, 0
	lsr	x0, x18, 59
	lsl	x9, x19, 5
	orr	x9, x0, x9
	lsl	x8, x18, 5
	mov	w0, 10
	sxtw	x0, w0
	mov	x16, x0
	mov	x17, 0
	lsr	x0, x16, 59
	lsl	x7, x17, 5
	orr	x7, x0, x7
	lsl	x6, x16, 5
	mov	w0, 10
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
.L8:
	cmp	sp, x1
	beq	.L9
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L8
.L9:
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L10
	str	xzr, [sp, 1024]
.L10:
	add	x0, sp, 16
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, -32]
	mov	w0, 10
	sxtw	x0, w0
	sub	x0, x0, #1
	str	x0, [x29, -24]
	mov	w0, 10
	sxtw	x0, w0
	mov	x14, x0
	mov	x15, 0
	lsr	x0, x14, 59
	lsl	x5, x15, 5
	orr	x5, x0, x5
	lsl	x4, x14, 5
	mov	w0, 10
	sxtw	x0, w0
	mov	x12, x0
	mov	x13, 0
	lsr	x0, x12, 59
	lsl	x3, x13, 5
	orr	x3, x0, x3
	lsl	x2, x12, 5
	mov	w0, 10
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
.L11:
	cmp	sp, x1
	beq	.L12
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L11
.L12:
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L13
	str	xzr, [sp, 1024]
.L13:
	add	x0, sp, 16
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, -16]
	str	wzr, [x29, -64]
	str	wzr, [x29, -60]
	b	.L14
.L17:
	ldr	w1, [x29, -64]
	ldr	w0, [x29, -60]
	cmp	w1, w0
	bne	.L15
	ldr	x0, [x29, -32]
	ldrsw	x1, [x29, -60]
	str	wzr, [x0, x1, lsl 2]
	ldr	x0, [x29, -16]
	ldrsw	x1, [x29, -60]
	mov	w2, 1
	str	w2, [x0, x1, lsl 2]
	b	.L16
.L15:
	ldr	x0, [x29, -32]
	ldrsw	x1, [x29, -60]
	mov	w2, 2147483647
	str	w2, [x0, x1, lsl 2]
	ldr	x0, [x29, -16]
	ldrsw	x1, [x29, -60]
	str	wzr, [x0, x1, lsl 2]
.L16:
	ldr	w0, [x29, -60]
	add	w0, w0, 1
	str	w0, [x29, -60]
.L14:
	mov	w0, 10
	ldr	w1, [x29, -60]
	cmp	w1, w0
	blt	.L17
	str	wzr, [x29, -56]
	b	.L18
.L22:
	str	wzr, [x29, -52]
	b	.L19
.L21:
	ldr	x0, [x29, -16]
	ldrsw	x1, [x29, -52]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	bne	.L20
	ldrsw	x1, [x29, -64]
	mov	w0, 10
	sxtw	x0, w0
	mul	x0, x1, x0
	lsl	x0, x0, 2
	ldr	x1, [x29, -72]
	add	x0, x1, x0
	ldrsw	x1, [x29, -52]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	beq	.L20
	ldrsw	x1, [x29, -64]
	mov	w0, 10
	sxtw	x0, w0
	mul	x0, x1, x0
	lsl	x0, x0, 2
	ldr	x1, [x29, -72]
	add	x0, x1, x0
	ldrsw	x1, [x29, -52]
	ldr	w1, [x0, x1, lsl 2]
	ldr	x0, [x29, -32]
	ldrsw	x2, [x29, -52]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bge	.L20
	ldrsw	x1, [x29, -64]
	mov	w0, 10
	sxtw	x0, w0
	mul	x0, x1, x0
	lsl	x0, x0, 2
	ldr	x1, [x29, -72]
	add	x0, x1, x0
	ldrsw	x1, [x29, -52]
	ldr	w2, [x0, x1, lsl 2]
	ldr	x0, [x29, -32]
	ldrsw	x1, [x29, -52]
	str	w2, [x0, x1, lsl 2]
	ldrsw	x0, [x29, -52]
	lsl	x0, x0, 2
	ldr	x1, [x29, -80]
	add	x0, x1, x0
	ldr	w1, [x29, -64]
	str	w1, [x0]
.L20:
	ldr	w0, [x29, -52]
	add	w0, w0, 1
	str	w0, [x29, -52]
.L19:
	mov	w0, 10
	ldr	w1, [x29, -52]
	cmp	w1, w0
	blt	.L21
	ldr	x1, [x29, -16]
	ldr	x0, [x29, -32]
	bl	minVal
	str	w0, [x29, -64]
	ldr	w0, [x29, -56]
	add	w0, w0, 1
	str	w0, [x29, -56]
.L18:
	mov	w0, 10
	ldr	w1, [x29, -56]
	cmp	w1, w0
	blt	.L22
	mov	sp, x20
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [x29, -8]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L23
	bl	__stack_chk_fail
.L23:
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE4:
	.size	minSpanTree, .-minSpanTree
	.align	2
	.global	initializeData
	.type	initializeData, %function
initializeData:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 40]
	mov	w0, 10
	sxtw	x0, w0
	sub	x0, x0, #1
	str	x0, [sp, 56]
	mov	w0, 10
	sxtw	x0, w0
	mov	x4, x0
	mov	x5, 0
	lsr	x0, x4, 59
	lsl	x3, x5, 5
	orr	x3, x0, x3
	lsl	x2, x4, 5
	mov	w0, 10
	bl	libmin_srand
	str	wzr, [sp, 48]
	b	.L25
.L32:
	str	wzr, [sp, 52]
	b	.L26
.L31:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	ble	.L27
	ldrsw	x1, [sp, 52]
	mov	w0, 10
	sxtw	x0, w0
	mul	x0, x1, x0
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldrsw	x2, [sp, 48]
	mov	w0, 10
	sxtw	x0, w0
	mul	x0, x2, x0
	lsl	x0, x0, 2
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	ldrsw	x2, [sp, 48]
	ldr	w2, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 52]
	str	w2, [x0, x1, lsl 2]
	b	.L28
.L27:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	bne	.L29
	ldrsw	x1, [sp, 48]
	mov	w0, 10
	sxtw	x0, w0
	mul	x0, x1, x0
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldrsw	x1, [sp, 52]
	str	wzr, [x0, x1, lsl 2]
	b	.L28
.L29:
	bl	libmin_rand
	mov	w1, w0
	mov	w0, 52429
	movk	w0, 0xcccc, lsl 16
	umull	x0, w1, w0
	lsr	x0, x0, 32
	lsr	w19, w0, 2
	mov	w0, w19
	lsl	w0, w0, 2
	add	w0, w0, w19
	sub	w19, w1, w0
	bl	libmin_rand
	mov	w2, w0
	mov	w0, 52429
	movk	w0, 0xcccc, lsl 16
	umull	x0, w2, w0
	lsr	x0, x0, 32
	lsr	w1, w0, 2
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	sub	w1, w2, w0
	cmp	w19, w1
	bne	.L30
	ldrsw	x1, [sp, 48]
	mov	w0, 10
	sxtw	x0, w0
	mul	x0, x1, x0
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldrsw	x1, [sp, 52]
	str	wzr, [x0, x1, lsl 2]
	b	.L28
.L30:
	bl	libmin_rand
	mov	w2, w0
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
	ldrsw	x2, [sp, 48]
	mov	w0, 10
	sxtw	x0, w0
	mul	x0, x2, x0
	lsl	x0, x0, 2
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	mov	w2, w1
	ldrsw	x1, [sp, 52]
	str	w2, [x0, x1, lsl 2]
.L28:
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L26:
	mov	w0, 10
	ldr	w1, [sp, 52]
	cmp	w1, w0
	blt	.L31
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L25:
	mov	w0, 10
	ldr	w1, [sp, 48]
	cmp	w1, w0
	blt	.L32
	nop
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	initializeData, .-initializeData
	.section	.rodata
	.align	3
.LC10:
	.string	"       "
	.align	3
.LC11:
	.string	"%8s"
	.align	3
.LC12:
	.string	"%8d"
	.align	3
.LC13:
	.string	"\n"
	.align	3
.LC14:
	.string	"\n\n"
	.text
	.align	2
	.global	displayGraph
	.type	displayGraph, %function
displayGraph:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 24]
	mov	w0, 10
	sxtw	x0, w0
	sub	x0, x0, #1
	str	x0, [sp, 56]
	mov	w0, 10
	sxtw	x0, w0
	mov	x4, x0
	mov	x5, 0
	lsr	x0, x4, 59
	lsl	x3, x5, 5
	orr	x3, x0, x3
	lsl	x2, x4, 5
	str	wzr, [sp, 44]
	mov	w0, -1
	str	w0, [sp, 48]
	b	.L34
.L41:
	mov	w0, -1
	str	w0, [sp, 52]
	b	.L35
.L40:
	ldr	w0, [sp, 48]
	cmn	w0, #1
	bne	.L36
	ldr	w0, [sp, 52]
	cmn	w0, #1
	bne	.L37
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	libmin_printf
	b	.L38
.L37:
	adrp	x0, vertName
	add	x0, x0, :lo12:vertName
	ldrsw	x1, [sp, 52]
	ldr	x0, [x0, x1, lsl 3]
	mov	x1, x0
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	libmin_printf
	b	.L38
.L36:
	ldr	w0, [sp, 52]
	cmn	w0, #1
	bne	.L39
	adrp	x0, vertName
	add	x0, x0, :lo12:vertName
	ldrsw	x1, [sp, 44]
	ldr	x0, [x0, x1, lsl 3]
	mov	x1, x0
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	libmin_printf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	b	.L38
.L39:
	ldrsw	x1, [sp, 48]
	mov	w0, 10
	sxtw	x0, w0
	mul	x0, x1, x0
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrsw	x1, [sp, 52]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	libmin_printf
.L38:
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L35:
	mov	w0, 10
	ldr	w1, [sp, 52]
	cmp	w1, w0
	blt	.L40
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	libmin_printf
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L34:
	mov	w0, 10
	ldr	w1, [sp, 48]
	cmp	w1, w0
	blt	.L41
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	libmin_printf
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	displayGraph, .-displayGraph
	.section	.rodata
	.align	3
.LC15:
	.string	"%8d / %d"
	.text
	.align	2
	.global	displayGraph1
	.type	displayGraph1, %function
displayGraph1:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	mov	w0, 10
	sxtw	x0, w0
	sub	x0, x0, #1
	str	x0, [sp, 56]
	mov	w0, 10
	sxtw	x0, w0
	mov	x4, x0
	mov	x5, 0
	lsr	x0, x4, 59
	lsl	x3, x5, 5
	orr	x3, x0, x3
	lsl	x2, x4, 5
	str	wzr, [sp, 44]
	mov	w0, -1
	str	w0, [sp, 48]
	b	.L43
.L50:
	mov	w0, -1
	str	w0, [sp, 52]
	b	.L44
.L49:
	ldr	w0, [sp, 48]
	cmn	w0, #1
	bne	.L45
	ldr	w0, [sp, 52]
	cmn	w0, #1
	bne	.L46
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	libmin_printf
	b	.L47
.L46:
	adrp	x0, vertName
	add	x0, x0, :lo12:vertName
	ldrsw	x1, [sp, 52]
	ldr	x0, [x0, x1, lsl 3]
	mov	x1, x0
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	libmin_printf
	b	.L47
.L45:
	ldr	w0, [sp, 52]
	cmn	w0, #1
	bne	.L48
	adrp	x0, vertName
	add	x0, x0, :lo12:vertName
	ldrsw	x1, [sp, 44]
	ldr	x0, [x0, x1, lsl 3]
	mov	x1, x0
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	libmin_printf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	b	.L47
.L48:
	ldrsw	x1, [sp, 48]
	mov	w0, 10
	sxtw	x0, w0
	mul	x0, x1, x0
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrsw	x1, [sp, 52]
	ldr	w3, [x0, x1, lsl 2]
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 2
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	w0, [x0]
	mov	w2, w0
	mov	w1, w3
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	libmin_printf
.L47:
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L44:
	mov	w0, 10
	ldr	w1, [sp, 52]
	cmp	w1, w0
	blt	.L49
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	libmin_printf
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L43:
	mov	w0, 10
	ldr	w1, [sp, 48]
	cmp	w1, w0
	blt	.L50
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	libmin_printf
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	displayGraph1, .-displayGraph1
	.section	.rodata
	.align	3
.LC16:
	.string	"\nSource: %s\tDestination: %s\n\n"
	.align	3
.LC17:
	.string	"Path: %s"
	.align	3
.LC18:
	.string	"-> %s"
	.text
	.align	2
	.global	displayPath
	.type	displayPath, %function
displayPath:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	str	x2, [sp, 16]
	ldr	w0, [sp, 24]
	str	w0, [sp, 44]
	adrp	x0, count.0
	add	x0, x0, :lo12:count.0
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L52
	adrp	x0, vertName
	add	x0, x0, :lo12:vertName
	ldrsw	x1, [sp, 28]
	ldr	x3, [x0, x1, lsl 3]
	adrp	x0, vertName
	add	x0, x0, :lo12:vertName
	ldrsw	x1, [sp, 44]
	ldr	x0, [x0, x1, lsl 3]
	mov	x2, x0
	mov	x1, x3
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	libmin_printf
	adrp	x0, vertName
	add	x0, x0, :lo12:vertName
	ldrsw	x1, [sp, 28]
	ldr	x0, [x0, x1, lsl 3]
	mov	x1, x0
	adrp	x0, .LC17
	add	x0, x0, :lo12:.LC17
	bl	libmin_printf
	adrp	x0, count.0
	add	x0, x0, :lo12:count.0
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, count.0
	add	x0, x0, :lo12:count.0
	str	w1, [x0]
.L52:
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	beq	.L53
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	x2, [sp, 16]
	mov	w1, w0
	ldr	w0, [sp, 28]
	bl	displayPath
.L53:
	adrp	x0, vertName
	add	x0, x0, :lo12:vertName
	ldrsw	x1, [sp, 44]
	ldr	x0, [x0, x1, lsl 3]
	mov	x1, x0
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	bl	libmin_printf
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bne	.L55
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	libmin_printf
.L55:
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	displayPath, .-displayPath
	.section	.rodata
	.align	3
.LC19:
	.string	"minimum spanning tree:\n"
	.align	3
.LC20:
	.string	"  %8s <-%d-> %8s\n"
	.align	3
.LC21:
	.string	"total cost = %d\n"
	.text
	.align	2
	.global	displayTree
	.type	displayTree, %function
displayTree:
.LFB9:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	mov	w0, 10
	sxtw	x0, w0
	sub	x0, x0, #1
	str	x0, [sp, 40]
	mov	w0, 10
	sxtw	x0, w0
	mov	x4, x0
	mov	x5, 0
	lsr	x0, x4, 59
	lsl	x3, x5, 5
	orr	x3, x0, x3
	lsl	x2, x4, 5
	str	wzr, [sp, 32]
	adrp	x0, .LC19
	add	x0, x0, :lo12:.LC19
	bl	libmin_printf
	mov	w0, 1
	str	w0, [sp, 36]
	b	.L57
.L58:
	adrp	x0, vertName
	add	x0, x0, :lo12:vertName
	ldrsw	x1, [sp, 36]
	ldr	x4, [x0, x1, lsl 3]
	ldrsw	x1, [sp, 36]
	mov	w0, 10
	sxtw	x0, w0
	mul	x0, x1, x0
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrsw	x1, [sp, 36]
	lsl	x1, x1, 2
	ldr	x2, [sp, 16]
	add	x1, x2, x1
	ldr	w1, [x1]
	sxtw	x1, w1
	ldr	w2, [x0, x1, lsl 2]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	w1, [x0]
	adrp	x0, vertName
	add	x0, x0, :lo12:vertName
	sxtw	x1, w1
	ldr	x0, [x0, x1, lsl 3]
	mov	x3, x0
	mov	x1, x4
	adrp	x0, .LC20
	add	x0, x0, :lo12:.LC20
	bl	libmin_printf
	ldrsw	x1, [sp, 36]
	mov	w0, 10
	sxtw	x0, w0
	mul	x0, x1, x0
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrsw	x1, [sp, 36]
	lsl	x1, x1, 2
	ldr	x2, [sp, 16]
	add	x1, x2, x1
	ldr	w1, [x1]
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 32]
	add	w0, w1, w0
	str	w0, [sp, 32]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L57:
	mov	w0, 10
	ldr	w1, [sp, 36]
	cmp	w1, w0
	blt	.L58
	ldr	w1, [sp, 32]
	adrp	x0, .LC21
	add	x0, x0, :lo12:.LC21
	bl	libmin_printf
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9:
	.size	displayTree, .-displayTree
	.align	2
	.global	main
	.type	main, %function
main:
.LFB10:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	.cfi_def_cfa_register 29
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	sub	sp, sp, #96
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	adrp	x28, :got:__stack_chk_guard
	ldr	x28, [x28, :got_lo12:__stack_chk_guard]
	ldr	x30, [x28]
	str	x30, [x29, -8]
	mov	x30, 0
	mov	x28, sp
	str	x28, [x29, -72]
	mov	w28, 10
	sxtw	x28, w28
	sub	x28, x28, #1
	str	x28, [x29, -48]
	mov	w28, 10
	sxtw	x28, w28
	mov	x26, x28
	mov	x27, 0
	lsr	x28, x26, 59
	lsl	x17, x27, 5
	orr	x17, x28, x17
	lsl	x16, x26, 5
	mov	w16, 10
	sxtw	x16, w16
	sub	x16, x16, #1
	str	x16, [x29, -40]
	mov	w16, 10
	sxtw	x16, w16
	mov	x6, x16
	mov	x7, 0
	mov	w16, 10
	sxtw	x16, w16
	mov	x4, x16
	mov	x5, 0
	mul	x17, x6, x4
	umulh	x16, x6, x4
	madd	x16, x7, x4, x16
	madd	x16, x6, x5, x16
	mov	x24, x17
	mov	x25, x16
	lsr	x4, x24, 59
	lsl	x15, x25, 5
	orr	x15, x4, x15
	lsl	x14, x24, 5
	mov	w4, 10
	sxtw	x4, w4
	mov	x2, x4
	mov	x3, 0
	mov	w4, 10
	sxtw	x4, w4
	mov	x0, x4
	mov	x1, 0
	mul	x5, x2, x0
	umulh	x4, x2, x0
	madd	x4, x3, x0, x4
	madd	x4, x2, x1, x4
	mov	x22, x5
	mov	x23, x4
	lsr	x0, x22, 59
	lsl	x13, x23, 5
	orr	x13, x0, x13
	lsl	x12, x22, 5
	mov	w0, 10
	sxtw	x1, w0
	mov	w0, 10
	sxtw	x0, w0
	mul	x0, x1, x0
	lsl	x0, x0, 2
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
.L60:
	cmp	sp, x1
	beq	.L61
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L60
.L61:
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L62
	str	xzr, [sp, 1024]
.L62:
	add	x0, sp, 16
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, -32]
	mov	w0, 10
	sxtw	x0, w0
	sub	x0, x0, #1
	str	x0, [x29, -24]
	mov	w0, 10
	sxtw	x0, w0
	mov	x20, x0
	mov	x21, 0
	lsr	x0, x20, 59
	lsl	x11, x21, 5
	orr	x11, x0, x11
	lsl	x10, x20, 5
	mov	w0, 10
	sxtw	x0, w0
	mov	x18, x0
	mov	x19, 0
	lsr	x0, x18, 59
	lsl	x9, x19, 5
	orr	x9, x0, x9
	lsl	x8, x18, 5
	mov	w0, 10
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
.L63:
	cmp	sp, x1
	beq	.L64
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L63
.L64:
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L65
	str	xzr, [sp, 1024]
.L65:
	add	x0, sp, 16
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, -16]
	str	wzr, [x29, -52]
	b	.L66
.L67:
	ldr	x0, [x29, -16]
	ldrsw	x1, [x29, -52]
	mov	w2, -1
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [x29, -52]
	add	w0, w0, 1
	str	w0, [x29, -52]
.L66:
	mov	w0, 10
	ldr	w1, [x29, -52]
	cmp	w1, w0
	blt	.L67
	ldr	x0, [x29, -32]
	bl	initializeData
	ldr	x0, [x29, -32]
	bl	displayGraph
	ldr	x1, [x29, -16]
	ldr	x0, [x29, -32]
	bl	minSpanTree
	ldr	x1, [x29, -16]
	ldr	x0, [x29, -32]
	bl	displayTree
	bl	libmin_success
	mov	w0, 0
	ldr	x1, [x29, -72]
	mov	sp, x1
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [x29, -8]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L69
	bl	__stack_chk_fail
.L69:
	mov	w0, w1
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE10:
	.size	main, .-main
	.local	count.0
	.comm	count.0,4,4
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
