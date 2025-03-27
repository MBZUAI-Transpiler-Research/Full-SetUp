	.arch armv8-a
	.file	"libmin_getopt.c"
	.text
	.global	optarg
	.bss
	.align	3
	.type	optarg, %object
	.size	optarg, 8
optarg:
	.zero	8
	.global	optind
	.data
	.align	2
	.type	optind, %object
	.size	optind, 4
optind:
	.word	1
	.global	opterr
	.align	2
	.type	opterr, %object
	.size	opterr, 4
opterr:
	.word	1
	.global	optopt
	.bss
	.align	2
	.type	optopt, %object
	.size	optopt, 4
optopt:
	.zero	4
	.global	optpos
	.align	2
	.type	optpos, %object
	.size	optpos, 4
optpos:
	.zero	4
	.global	optreset
	.align	2
	.type	optreset, %object
	.size	optreset, 4
optreset:
	.zero	4
	.section	.rodata
	.align	3
.LC0:
	.string	"%s: unrecognized option: %c\n"
	.text
	.align	2
	.global	libmin_getopt
	.type	libmin_getopt, %function
libmin_getopt:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	w0, [sp, 44]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	adrp	x0, optind
	add	x0, x0, :lo12:optind
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L2
	adrp	x0, optreset
	add	x0, x0, :lo12:optreset
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L3
.L2:
	adrp	x0, optreset
	add	x0, x0, :lo12:optreset
	str	wzr, [x0]
	adrp	x0, optpos
	add	x0, x0, :lo12:optpos
	str	wzr, [x0]
	adrp	x0, optind
	add	x0, x0, :lo12:optind
	mov	w1, 1
	str	w1, [x0]
.L3:
	adrp	x0, optind
	add	x0, x0, :lo12:optind
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L4
	adrp	x0, optind
	add	x0, x0, :lo12:optind
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	x0, [x0]
	cmp	x0, 0
	bne	.L5
.L4:
	mov	w0, -1
	b	.L6
.L5:
	adrp	x0, optind
	add	x0, x0, :lo12:optind
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldrb	w0, [x0]
	cmp	w0, 45
	beq	.L7
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 45
	bne	.L8
	adrp	x0, optind
	add	x0, x0, :lo12:optind
	ldr	w0, [x0]
	add	w2, w0, 1
	adrp	x1, optind
	add	x1, x1, :lo12:optind
	str	w2, [x1]
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	x1, [x0]
	adrp	x0, optarg
	add	x0, x0, :lo12:optarg
	str	x1, [x0]
	mov	w0, 1
	b	.L6
.L8:
	mov	w0, -1
	b	.L6
.L7:
	adrp	x0, optind
	add	x0, x0, :lo12:optind
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	x0, [x0]
	add	x0, x0, 1
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L9
	mov	w0, -1
	b	.L6
.L9:
	adrp	x0, optind
	add	x0, x0, :lo12:optind
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	x0, [x0]
	add	x0, x0, 1
	ldrb	w0, [x0]
	cmp	w0, 45
	bne	.L10
	adrp	x0, optind
	add	x0, x0, :lo12:optind
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	x0, [x0]
	add	x0, x0, 2
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L10
	adrp	x0, optind
	add	x0, x0, :lo12:optind
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, optind
	add	x0, x0, :lo12:optind
	str	w1, [x0]
	mov	w0, -1
	b	.L6
.L10:
	adrp	x0, optpos
	add	x0, x0, :lo12:optpos
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L11
	adrp	x0, optpos
	add	x0, x0, :lo12:optpos
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, optpos
	add	x0, x0, :lo12:optpos
	str	w1, [x0]
.L11:
	adrp	x0, optind
	add	x0, x0, :lo12:optind
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	x1, [x0]
	adrp	x0, optpos
	add	x0, x0, :lo12:optpos
	ldr	w0, [x0]
	sxtw	x0, w0
	add	x0, x1, x0
	ldrb	w0, [x0]
	str	w0, [sp, 56]
	mov	w0, 1
	str	w0, [sp, 60]
	adrp	x0, optind
	add	x0, x0, :lo12:optind
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	x1, [x0]
	adrp	x0, optpos
	add	x0, x0, :lo12:optpos
	ldr	w0, [x0]
	sxtw	x0, w0
	add	x0, x1, x0
	str	x0, [sp, 72]
	adrp	x0, optopt
	add	x0, x0, :lo12:optopt
	ldr	w1, [sp, 56]
	str	w1, [x0]
	adrp	x0, optpos
	add	x0, x0, :lo12:optpos
	ldr	w1, [x0]
	ldr	w0, [sp, 60]
	add	w1, w1, w0
	adrp	x0, optpos
	add	x0, x0, :lo12:optpos
	str	w1, [x0]
	adrp	x0, optind
	add	x0, x0, :lo12:optind
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	x1, [x0]
	adrp	x0, optpos
	add	x0, x0, :lo12:optpos
	ldr	w0, [x0]
	sxtw	x0, w0
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L12
	adrp	x0, optind
	add	x0, x0, :lo12:optind
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, optind
	add	x0, x0, :lo12:optind
	str	w1, [x0]
	adrp	x0, optpos
	add	x0, x0, :lo12:optpos
	str	wzr, [x0]
.L12:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 45
	beq	.L13
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 43
	bne	.L14
.L13:
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
.L14:
	str	wzr, [sp, 52]
	str	wzr, [sp, 64]
.L18:
	ldrsw	x0, [sp, 52]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	str	w0, [sp, 64]
	mov	w0, 1
	str	w0, [sp, 68]
	ldr	w0, [sp, 68]
	cmp	w0, 0
	ble	.L15
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 68]
	add	w0, w1, w0
	str	w0, [sp, 52]
	b	.L16
.L15:
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L16:
	ldr	w0, [sp, 68]
	cmp	w0, 0
	beq	.L17
	ldr	w1, [sp, 64]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	bne	.L18
.L17:
	ldr	w1, [sp, 64]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	beq	.L19
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 58
	beq	.L20
	adrp	x0, opterr
	add	x0, x0, :lo12:opterr
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L20
	ldr	x0, [sp, 32]
	ldr	x0, [x0]
	ldr	x2, [sp, 72]
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	libmin_printf
.L20:
	mov	w0, 63
	b	.L6
.L19:
	ldrsw	x0, [sp, 52]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 58
	bne	.L21
	ldrsw	x0, [sp, 52]
	add	x0, x0, 1
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 58
	bne	.L22
	adrp	x0, optarg
	add	x0, x0, :lo12:optarg
	str	xzr, [x0]
	b	.L23
.L22:
	adrp	x0, optind
	add	x0, x0, :lo12:optind
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	bgt	.L23
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 58
	bne	.L24
	mov	w0, 58
	b	.L6
.L24:
	adrp	x0, opterr
	add	x0, x0, :lo12:opterr
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L25
	ldr	x0, [sp, 32]
	ldr	x0, [x0]
	ldr	x2, [sp, 72]
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	libmin_printf
.L25:
	mov	w0, 63
	b	.L6
.L23:
	ldrsw	x0, [sp, 52]
	add	x0, x0, 1
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 58
	bne	.L26
	adrp	x0, optpos
	add	x0, x0, :lo12:optpos
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L21
.L26:
	adrp	x0, optind
	add	x0, x0, :lo12:optind
	ldr	w0, [x0]
	add	w2, w0, 1
	adrp	x1, optind
	add	x1, x1, :lo12:optind
	str	w2, [x1]
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	x1, [x0]
	adrp	x0, optpos
	add	x0, x0, :lo12:optpos
	ldr	w0, [x0]
	sxtw	x0, w0
	add	x1, x1, x0
	adrp	x0, optarg
	add	x0, x0, :lo12:optarg
	str	x1, [x0]
	adrp	x0, optpos
	add	x0, x0, :lo12:optpos
	str	wzr, [x0]
.L21:
	ldr	w0, [sp, 56]
.L6:
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_getopt, .-libmin_getopt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
