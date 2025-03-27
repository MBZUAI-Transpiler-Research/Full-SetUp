	.file	"nr-solver.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	sqrt_value
	.bss
	.align	3
	.type	sqrt_value, @object
	.size	sqrt_value, 8
sqrt_value:
	.zero	8
	.text
	.align	1
	.globl	f
	.type	f, @function
f:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	fsd	fa0,-24(s0)
	fld	fa5,-24(s0)
	fmul.d	fa4,fa5,fa5
	lla	a5,sqrt_value
	fld	fa5,0(a5)
	fsub.d	fa5,fa4,fa5
	fmv.d	fa0,fa5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	f, .-f
	.align	1
	.globl	df
	.type	df, @function
df:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	fsd	fa0,-24(s0)
	fld	fa5,-24(s0)
	fadd.d	fa5,fa5,fa5
	fmv.d	fa0,fa5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	df, .-df
	.align	1
	.globl	myfabs
	.type	myfabs, @function
myfabs:
.LFB5:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	fsd	fa0,-24(s0)
	fld	fa5,-24(s0)
	fmv.d.x	fa4,zero
	flt.d	a5,fa5,fa4
	beq	a5,zero,.L10
	fld	fa5,-24(s0)
	fneg.d	fa5,fa5
	j	.L8
.L10:
	fld	fa5,-24(s0)
.L8:
	fmv.d	fa0,fa5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	myfabs, .-myfabs
	.align	1
	.globl	rn_solver
	.type	rn_solver, @function
rn_solver:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	fsd	fs0,72(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 40, -24
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	fsd	fa0,-64(s0)
	mv	a5,a1
	sd	a2,-80(s0)
	sd	a3,-88(s0)
	sw	a5,-68(s0)
	lla	a5,.LC0
	fld	fa5,0(a5)
	fsd	fa5,-40(s0)
	ld	a5,-56(s0)
	sw	zero,0(a5)
	sw	zero,-44(s0)
	j	.L12
.L15:
	ld	a5,-80(s0)
	fld	fa0,-40(s0)
	jalr	a5
	fmv.x.d	a5,fa0
	fmv.d.x	fa0,a5
	call	myfabs
	fmv.d	fa4,fa0
	fld	fa5,-64(s0)
	fge.d	a5,fa5,fa4
	snez	a5,a5
	andi	a5,a5,0xff
	sext.w	a4,a5
	ld	a5,-56(s0)
	sw	a4,0(a5)
	ld	a5,-56(s0)
	lw	a5,0(a5)
	bne	a5,zero,.L17
	ld	a5,-80(s0)
	fld	fa0,-40(s0)
	jalr	a5
	fmv.d	fs0,fa0
	ld	a5,-88(s0)
	fld	fa0,-40(s0)
	jalr	a5
	fmv.d	fa5,fa0
	fdiv.d	fa5,fs0,fa5
	fld	fa4,-40(s0)
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-40(s0)
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
.L12:
	lw	a5,-44(s0)
	mv	a4,a5
	lw	a5,-68(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bltu	a4,a5,.L15
	j	.L14
.L17:
	nop
.L14:
	fld	fa5,-40(s0)
	fmv.d	fa0,fa5
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	fld	fs0,72(sp)
	.cfi_restore 40
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	rn_solver, .-rn_solver
	.globl	testdata
	.data
	.align	3
	.type	testdata, @object
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
.LC2:
	.string	"sqrt(%lf) == %lf (converged:%c)\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	sw	zero,-36(s0)
	j	.L19
.L22:
	lla	a4,testdata
	lwu	a5,-36(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	fld	fa5,0(a5)
	lla	a5,sqrt_value
	fsd	fa5,0(a5)
	lla	a5,.LC1
	fld	fa5,0(a5)
	addi	a5,s0,-40
	lla	a3,df
	lla	a2,f
	li	a1,20
	fmv.d	fa0,fa5
	mv	a0,a5
	call	rn_solver
	fsd	fa0,-32(s0)
	lla	a5,sqrt_value
	fld	fa5,0(a5)
	lw	a5,-40(s0)
	beq	a5,zero,.L20
	li	a5,116
	j	.L21
.L20:
	li	a5,102
.L21:
	mv	a3,a5
	ld	a2,-32(s0)
	fmv.x.d	a1,fa5
	lla	a0,.LC2
	call	libmin_printf@plt
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L19:
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,49
	bleu	a4,a5,.L22
	call	libmin_success@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L24
	call	__stack_chk_fail@plt
.L24:
	mv	a0,a4
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	1072693248
	.align	3
.LC1:
	.word	-1998362383
	.word	1055193269
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
