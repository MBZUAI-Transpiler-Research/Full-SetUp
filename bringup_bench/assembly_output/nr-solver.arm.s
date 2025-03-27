	.arch armv8-a
	.file	"nr-solver.c"
	.text
	.global	sqrt_value
	.bss
	.align	3
	.type	sqrt_value, %object
	.size	sqrt_value, 8
sqrt_value:
	.zero	8
	.text
	.align	2
	.global	f
	.type	f, %function
f:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	d0, [sp, 8]
	ldr	d0, [sp, 8]
	fmul	d1, d0, d0
	adrp	x0, sqrt_value
	add	x0, x0, :lo12:sqrt_value
	ldr	d0, [x0]
	fsub	d0, d1, d0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	f, .-f
	.align	2
	.global	df
	.type	df, %function
df:
.LFB4:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	d0, [sp, 8]
	ldr	d0, [sp, 8]
	fadd	d0, d0, d0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	df, .-df
	.align	2
	.global	myfabs
	.type	myfabs, %function
myfabs:
.LFB5:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	d0, [sp, 8]
	ldr	d0, [sp, 8]
	fcmpe	d0, #0.0
	bmi	.L9
	b	.L10
.L9:
	ldr	d0, [sp, 8]
	fneg	d0, d0
	b	.L8
.L10:
	ldr	d0, [sp, 8]
.L8:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	myfabs, .-myfabs
	.align	2
	.global	rn_solver
	.type	rn_solver, %function
rn_solver:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	d8, [sp, 16]
	.cfi_offset 72, -80
	str	x0, [sp, 72]
	str	d0, [sp, 64]
	str	w1, [sp, 60]
	str	x2, [sp, 48]
	str	x3, [sp, 40]
	fmov	d0, 1.0e+0
	str	d0, [sp, 88]
	ldr	x0, [sp, 72]
	str	wzr, [x0]
	str	wzr, [sp, 84]
	b	.L12
.L15:
	ldr	x0, [sp, 48]
	ldr	d0, [sp, 88]
	blr	x0
	bl	myfabs
	fmov	d1, d0
	ldr	d0, [sp, 64]
	fcmpe	d0, d1
	cset	w0, ge
	and	w0, w0, 255
	mov	w1, w0
	ldr	x0, [sp, 72]
	str	w1, [x0]
	ldr	x0, [sp, 72]
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L17
	ldr	x0, [sp, 48]
	ldr	d0, [sp, 88]
	blr	x0
	fmov	d8, d0
	ldr	x0, [sp, 40]
	ldr	d0, [sp, 88]
	blr	x0
	fdiv	d0, d8, d0
	ldr	d1, [sp, 88]
	fsub	d0, d1, d0
	str	d0, [sp, 88]
	ldr	w0, [sp, 84]
	add	w0, w0, 1
	str	w0, [sp, 84]
.L12:
	ldr	w1, [sp, 84]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	bcc	.L15
	b	.L14
.L17:
	nop
.L14:
	ldr	d0, [sp, 88]
	ldr	d8, [sp, 16]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 72
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	rn_solver, .-rn_solver
	.global	testdata
	.data
	.align	3
	.type	testdata, %object
	.size	testdata, 400
testdata:
	.word	209675665
	.word	1092102467
	.word	957656417
	.word	1091600267
	.word	2133207778
	.word	1093432535
	.word	-1550516265
	.word	1093329661
	.word	1954909959
	.word	1089549456
	.word	-1645708632
	.word	1092731823
	.word	920418638
	.word	1088563460
	.word	1071258130
	.word	1092783493
	.word	-1885879595
	.word	1091835367
	.word	-1717080921
	.word	1089678384
	.word	-816451465
	.word	1091819332
	.word	101956768
	.word	1092865000
	.word	1081351647
	.word	1093057580
	.word	-642368709
	.word	1091361977
	.word	-1885233632
	.word	1086121405
	.word	1362190281
	.word	1093514052
	.word	1359636837
	.word	1093260645
	.word	-1181063092
	.word	1093176673
	.word	-381427284
	.word	1093176801
	.word	174325851
	.word	1091787049
	.word	1768303233
	.word	1092645872
	.word	754660114
	.word	1091722262
	.word	391010
	.word	1093185069
	.word	785946545
	.word	1092113599
	.word	-1788507533
	.word	1093061350
	.word	723810652
	.word	1093021589
	.word	-1175427546
	.word	1089860449
	.word	732492928
	.word	1090690051
	.word	-2033905643
	.word	1093509683
	.word	-455531103
	.word	1093266868
	.word	-645727717
	.word	1093235676
	.word	-1046502111
	.word	1091448312
	.word	-1256665426
	.word	1093293895
	.word	392593512
	.word	1092588015
	.word	1990223077
	.word	1093164717
	.word	-778638401
	.word	1091939842
	.word	788367979
	.word	1086598534
	.word	1564709328
	.word	1091742256
	.word	-1427592669
	.word	1093483859
	.word	1727482576
	.word	1090032528
	.word	892468177
	.word	1092648412
	.word	-980049689
	.word	1091965029
	.word	177634178
	.word	1092710260
	.word	-1990958891
	.word	1091226727
	.word	-27505383
	.word	1084876728
	.word	1345512905
	.word	1102139309
	.word	-421678687
	.word	1092438309
	.word	839500321
	.word	1091748373
	.word	-1732829363
	.word	1089570653
	.word	-1304263456
	.word	1093307777
	.section	.rodata
	.align	3
.LC0:
	.string	"sqrt(%lf) == %lf (converged:%c)\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
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
	str	wzr, [sp, 12]
	b	.L19
.L22:
	adrp	x0, testdata
	add	x0, x0, :lo12:testdata
	ldr	w1, [sp, 12]
	ldr	d0, [x0, x1, lsl 3]
	adrp	x0, sqrt_value
	add	x0, x0, :lo12:sqrt_value
	str	d0, [x0]
	add	x4, sp, 8
	adrp	x0, df
	add	x3, x0, :lo12:df
	adrp	x0, f
	add	x2, x0, :lo12:f
	mov	w1, 20
	adrp	x0, .LC1
	ldr	d0, [x0, #:lo12:.LC1]
	mov	x0, x4
	bl	rn_solver
	str	d0, [sp, 16]
	adrp	x0, sqrt_value
	add	x0, x0, :lo12:sqrt_value
	ldr	d0, [x0]
	ldr	w0, [sp, 8]
	cmp	w0, 0
	beq	.L20
	mov	w0, 116
	b	.L21
.L20:
	mov	w0, 102
.L21:
	mov	w1, w0
	ldr	d1, [sp, 16]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	libmin_printf
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	str	w0, [sp, 12]
.L19:
	ldr	w0, [sp, 12]
	cmp	w0, 49
	bls	.L22
	bl	libmin_success
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 24]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L24
	bl	__stack_chk_fail
.L24:
	mov	w0, w1
	ldp	x29, x30, [sp, 32]
	add	sp, sp, 48
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC1:
	.word	-1998362383
	.word	1055193269
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
