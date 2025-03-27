	.arch armv8-a
	.file	"parrondo.c"
	.text
	.align	2
	.global	cointoss
	.type	cointoss, %function
cointoss:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	d0, [sp, 24]
	bl	libmin_rand
	ucvtf	d0, w0
	mov	x0, 281474972516352
	movk	x0, 0x41df, lsl 48
	fmov	d1, x0
	fdiv	d0, d0, d1
	str	d0, [sp, 40]
	ldr	d1, [sp, 40]
	ldr	d0, [sp, 24]
	fcmpe	d1, d0
	bge	.L6
	b	.L7
.L6:
	mov	w0, -1
	b	.L5
.L7:
	mov	w0, 1
.L5:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	cointoss, .-cointoss
	.align	2
	.global	play_s
	.type	play_s, %function
play_s:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	adrp	x0, .LC0
	ldr	d0, [x0, #:lo12:.LC0]
	bl	cointoss
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	play_s, .-play_s
	.align	2
	.global	play_c
	.type	play_c, %function
play_c:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	w0, [sp, 28]
	ldr	w2, [sp, 28]
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sub	w1, w2, w0
	cmp	w1, 0
	beq	.L11
	adrp	x0, .LC1
	ldr	d0, [x0, #:lo12:.LC1]
	bl	cointoss
	b	.L12
.L11:
	adrp	x0, .LC2
	ldr	d0, [x0, #:lo12:.LC2]
	bl	cointoss
.L12:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	play_c, .-play_c
	.global	argc
	.data
	.align	2
	.type	argc, %object
	.size	argc, 4
argc:
	.word	6
	.global	argv
	.section	.rodata
	.align	3
.LC3:
	.string	"parrondo"
	.align	3
.LC4:
	.string	"-2"
	.align	3
.LC5:
	.string	"-t"
	.align	3
.LC6:
	.string	"10"
	.align	3
.LC7:
	.string	"-S"
	.align	3
.LC8:
	.string	"1"
	.section	.data.rel.local,"aw"
	.align	3
	.type	argv, %object
	.size	argv, 48
argv:
	.xword	.LC3
	.xword	.LC4
	.xword	.LC5
	.xword	.LC6
	.xword	.LC7
	.xword	.LC8
	.section	.rodata
	.align	3
.LC9:
	.string	"parrondo [ -s number -t number -m number -1 -2 -h -v]"
	.align	3
.LC10:
	.string	"%s\n"
	.align	3
.LC11:
	.string	"1.1"
	.align	3
.LC12:
	.ascii	"parrondo [ -s number -t number -m number -1 -2 ]\n\nPrint in"
	.ascii	"formation on simulations of Parrondo's paradoxical game.\n\n"
	.ascii	"-s: Use next argument as RNG seed. (otherwise use system tim"
	.ascii	"e as seed.)\n-t: Use next argument"
	.string	" as number of trials. Default 10000.\n-m: Use number as max fortune (win), -number as min fortune(loss). Default 50. \n-v: Print version number and exit. \n-h: Print this helpful information. \n-1: Simulate simple game alone.\n-2: Simulate complex game alone.\n\n"
	.align	3
.LC13:
	.string	"parrondo: unkown option %s\n"
	.align	3
.LC14:
	.string	"Using seed = %d\n"
	.align	3
.LC15:
	.string	"Simulating %d trials ...\n"
	.align	3
.LC16:
	.string	"%d wins, %d losses, %d draws\n"
	.align	3
.LC17:
	.string	"(Win/loss = %d/-%d, draw = no win/loss in %ld plays.)\n"
	.align	3
.LC18:
	.string	"Average trial length = %lf\n"
	.align	3
.LC19:
	.string	"Site occupancy: 0 mod 3: %lf%%, 1 mod 3: %lf%%, 2 mod 3: %lf%%\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, 112]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 112
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 104]
	mov	x1, 0
	str	xzr, [sp, 40]
	str	xzr, [sp, 48]
	mov	w0, 1000
	str	w0, [sp, 8]
	str	wzr, [sp, 12]
	str	wzr, [sp, 16]
	str	wzr, [sp, 20]
	str	wzr, [sp, 24]
	str	wzr, [sp, 28]
	mov	w0, 50
	str	w0, [sp, 32]
	fmov	d0, 5.0e-1
	str	d0, [sp, 56]
	str	xzr, [sp, 64]
	b	.L14
.L30:
	adrp	x0, argv
	add	x0, x0, :lo12:argv
	ldrsw	x1, [sp, 16]
	ldr	x0, [x0, x1, lsl 3]
	ldrb	w0, [x0]
	cmp	w0, 45
	bne	.L15
	adrp	x0, argv
	add	x0, x0, :lo12:argv
	ldrsw	x1, [sp, 16]
	ldr	x0, [x0, x1, lsl 3]
	add	x0, x0, 1
	ldrb	w0, [x0]
	sub	w0, w0, #49
	cmp	w0, 69
	bhi	.L16
	adrp	x1, .L18
	add	x1, x1, :lo12:.L18
	ldr	w0, [x1,w0,uxtw #2]
	adr	x1, .Lrtx18
	add	x0, x1, w0, sxtw #2
	br	x0
.Lrtx18:
	.section	.rodata
	.align	0
	.align	2
.L18:
	.word	(.L24 - .Lrtx18) / 4
	.word	(.L23 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L22 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L22 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L21 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L20 - .Lrtx18) / 4
	.word	(.L19 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L17 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L22 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L21 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L20 - .Lrtx18) / 4
	.word	(.L19 - .Lrtx18) / 4
	.word	(.L16 - .Lrtx18) / 4
	.word	(.L17 - .Lrtx18) / 4
	.text
.L20:
	ldr	w0, [sp, 16]
	add	w1, w0, 1
	adrp	x0, argc
	add	x0, x0, :lo12:argc
	ldr	w0, [x0]
	cmp	w1, w0
	blt	.L25
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	libmin_printf
	mov	w0, 1
	bl	libmin_fail
.L25:
	ldr	w0, [sp, 16]
	add	w1, w0, 1
	adrp	x0, argv
	add	x0, x0, :lo12:argv
	sxtw	x1, w1
	ldr	x0, [x0, x1, lsl 3]
	bl	libmin_atol
	str	x0, [sp, 64]
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 16]
	b	.L14
.L19:
	ldr	w0, [sp, 16]
	add	w1, w0, 1
	adrp	x0, argc
	add	x0, x0, :lo12:argc
	ldr	w0, [x0]
	cmp	w1, w0
	blt	.L27
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	libmin_printf
	mov	w0, 1
	bl	libmin_fail
.L27:
	ldr	w0, [sp, 16]
	add	w1, w0, 1
	adrp	x0, argv
	add	x0, x0, :lo12:argv
	sxtw	x1, w1
	ldr	x0, [x0, x1, lsl 3]
	bl	libmin_atoi
	str	w0, [sp, 8]
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 16]
	b	.L14
.L21:
	ldr	w0, [sp, 16]
	add	w1, w0, 1
	adrp	x0, argc
	add	x0, x0, :lo12:argc
	ldr	w0, [x0]
	cmp	w1, w0
	blt	.L28
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	libmin_printf
	mov	w0, 1
	bl	libmin_fail
.L28:
	ldr	w0, [sp, 16]
	add	w1, w0, 1
	adrp	x0, argv
	add	x0, x0, :lo12:argv
	sxtw	x1, w1
	ldr	x0, [x0, x1, lsl 3]
	bl	libmin_atoi
	str	w0, [sp, 32]
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 16]
	b	.L14
.L17:
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	libmin_printf
	bl	libmin_success
.L22:
	adrp	x0, .LC12
	add	x1, x0, :lo12:.LC12
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	libmin_printf
	bl	libmin_success
.L24:
	str	xzr, [sp, 56]
	b	.L14
.L23:
	fmov	d0, 1.0e+0
	str	d0, [sp, 56]
	b	.L14
.L16:
	adrp	x0, argv
	add	x0, x0, :lo12:argv
	ldrsw	x1, [sp, 16]
	ldr	x0, [x0, x1, lsl 3]
	mov	x1, x0
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	libmin_printf
	mov	w0, 1
	bl	libmin_fail
	b	.L14
.L15:
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	libmin_printf
	mov	w0, 1
	bl	libmin_fail
.L14:
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 16]
	adrp	x0, argc
	add	x0, x0, :lo12:argc
	ldr	w0, [x0]
	ldr	w1, [sp, 16]
	cmp	w1, w0
	blt	.L30
	ldr	x0, [sp, 64]
	cmp	x0, 0
	bne	.L31
	mov	x0, 3445
	str	x0, [sp, 64]
	mov	w1, 3445
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	libmin_printf
.L31:
	ldr	x0, [sp, 64]
	bl	libmin_srand
	str	wzr, [sp, 12]
	b	.L32
.L33:
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 3
	add	x1, sp, 80
	str	xzr, [x1, x0]
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	str	w0, [sp, 12]
.L32:
	ldr	w0, [sp, 12]
	cmp	w0, 2
	ble	.L33
	str	wzr, [sp, 12]
	ldr	w1, [sp, 8]
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	libmin_printf
	b	.L34
.L42:
	bl	libmin_rand
	uxtw	x0, w0
	str	x0, [sp, 64]
	ldr	x0, [sp, 64]
	bl	libmin_srand
	str	wzr, [sp, 28]
	b	.L35
.L39:
	ldr	d0, [sp, 56]
	bl	cointoss
	cmp	w0, 1
	bne	.L36
	ldr	w0, [sp, 28]
	bl	play_c
	mov	w1, w0
	ldr	w0, [sp, 28]
	add	w0, w0, w1
	str	w0, [sp, 28]
	b	.L37
.L36:
	bl	play_s
	mov	w1, w0
	ldr	w0, [sp, 28]
	add	w0, w0, w1
	str	w0, [sp, 28]
.L37:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	bge	.L38
	ldr	w0, [sp, 32]
	neg	w0, w0
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L38
	ldr	w0, [sp, 28]
	cmp	w0, 0
	csneg	w0, w0, w0, ge
	str	w0, [sp, 36]
	ldr	w1, [sp, 36]
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w1, w0
	lsr	x2, x0, 32
	asr	w0, w1, 31
	sub	w2, w2, w0
	mov	w0, w2
	lsl	w0, w0, 1
	add	w0, w0, w2
	sub	w2, w1, w0
	sxtw	x0, w2
	lsl	x0, x0, 3
	add	x1, sp, 80
	ldr	x0, [x1, x0]
	add	x3, x0, 1
	sxtw	x0, w2
	lsl	x0, x0, 3
	add	x1, sp, 80
	str	x3, [x1, x0]
.L35:
	ldr	x0, [sp, 40]
	add	x1, x0, 1
	str	x1, [sp, 40]
	mov	x1, 16959
	movk	x1, 0xf, lsl 16
	cmp	x0, x1
	ble	.L39
.L38:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	bne	.L40
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
	b	.L41
.L40:
	ldr	w0, [sp, 32]
	neg	w0, w0
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bne	.L41
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L41:
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	str	w0, [sp, 12]
	ldr	d0, [sp, 40]
	scvtf	d0, d0
	ldr	d1, [sp, 48]
	fadd	d0, d1, d0
	str	d0, [sp, 48]
	str	xzr, [sp, 40]
.L34:
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	blt	.L42
	ldr	w0, [sp, 12]
	scvtf	d0, w0
	ldr	d1, [sp, 48]
	fdiv	d0, d1, d0
	str	d0, [sp, 72]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	ldr	w1, [sp, 12]
	sub	w0, w1, w0
	mov	w3, w0
	ldr	w2, [sp, 24]
	ldr	w1, [sp, 20]
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	libmin_printf
	mov	x3, 16960
	movk	x3, 0xf, lsl 16
	ldr	w2, [sp, 32]
	ldr	w1, [sp, 32]
	adrp	x0, .LC17
	add	x0, x0, :lo12:.LC17
	bl	libmin_printf
	ldr	d0, [sp, 72]
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	bl	libmin_printf
	ldr	d0, [sp, 80]
	scvtf	d0, d0
	mov	x0, 4636737291354636288
	fmov	d1, x0
	fmul	d1, d0, d1
	ldr	d0, [sp, 48]
	fdiv	d3, d1, d0
	ldr	d0, [sp, 88]
	scvtf	d0, d0
	mov	x0, 4636737291354636288
	fmov	d1, x0
	fmul	d1, d0, d1
	ldr	d0, [sp, 48]
	fdiv	d4, d1, d0
	ldr	d0, [sp, 96]
	scvtf	d0, d0
	mov	x0, 4636737291354636288
	fmov	d1, x0
	fmul	d1, d0, d1
	ldr	d0, [sp, 48]
	fdiv	d0, d1, d0
	fmov	d2, d0
	fmov	d1, d4
	fmov	d0, d3
	adrp	x0, .LC19
	add	x0, x0, :lo12:.LC19
	bl	libmin_printf
	bl	libmin_success
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 104]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L44
	bl	__stack_chk_fail
.L44:
	mov	w0, w1
	ldp	x29, x30, [sp, 112]
	add	sp, sp, 128
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	2061584302
	.word	1071623700
	.align	3
.LC1:
	.word	1030792151
	.word	1072158474
	.align	3
.LC2:
	.word	-2061584302
	.word	1069044203
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
