	.file	"grad-descent.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	L
	.data
	.align	3
	.type	L, @object
	.size	L, 8
L:
	.word	-755914244
	.word	1062232653
	.globl	Y
	.align	3
	.type	Y, @object
	.size	Y, 400
Y:
	.word	0
	.word	1078722560
	.word	0
	.word	1077149696
	.word	0
	.word	1083357184
	.word	0
	.word	1075970048
	.word	0
	.word	1077805056
	.word	0
	.word	1077018624
	.word	0
	.word	1076232192
	.word	0
	.word	1078591488
	.word	0
	.word	1083621376
	.word	0
	.word	1075838976
	.word	0
	.word	1076363264
	.word	0
	.word	1079083008
	.word	0
	.word	1079050240
	.word	0
	.word	1077018624
	.word	0
	.word	1088483008
	.word	0
	.word	0
	.word	0
	.word	1078558720
	.word	0
	.word	1080516608
	.word	0
	.word	1080401920
	.word	0
	.word	1081479168
	.word	0
	.word	1086881152
	.word	0
	.word	1081016320
	.word	0
	.word	1080631296
	.word	0
	.word	1076953088
	.word	0
	.word	1077608448
	.word	0
	.word	1075052544
	.word	0
	.word	1077149696
	.word	0
	.word	1076756480
	.word	0
	.word	1083787264
	.word	0
	.word	1083963392
	.word	0
	.word	1081888768
	.word	0
	.word	1084431360
	.word	0
	.word	1078231040
	.word	0
	.word	1074266112
	.word	0
	.word	1077411840
	.word	0
	.word	1078034432
	.word	0
	.word	1077411840
	.word	0
	.word	1080279040
	.word	0
	.word	1077739520
	.word	0
	.word	1085509888
	.word	0
	.word	1079328768
	.word	0
	.word	1085559040
	.word	0
	.word	1075576832
	.word	0
	.word	0
	.word	0
	.word	1084762624
	.word	0
	.word	1077215232
	.word	0
	.word	1075314688
	.word	0
	.word	1081741312
	.word	0
	.word	1083236352
	.word	0
	.word	1076232192
	.globl	X
	.align	3
	.type	X, @object
	.size	X, 400
X:
	.word	858993459
	.word	1075917619
	.word	1717986918
	.word	1075734118
	.word	1717986918
	.word	1076127334
	.word	0
	.word	1076428800
	.word	0
	.word	1076756480
	.word	1717986918
	.word	1077831270
	.word	0
	.word	1074528256
	.word	858993459
	.word	1075131187
	.word	0
	.word	1071644672
	.word	858993459
	.word	1075786547
	.word	858993459
	.word	1075655475
	.word	858993459
	.word	1076966195
	.word	0
	.word	1076101120
	.word	-858993459
	.word	1076972748
	.word	0
	.word	1075838976
	.word	1717986918
	.word	1073112678
	.word	-858993459
	.word	1075367116
	.word	858993459
	.word	1074869043
	.word	-858993459
	.word	1077857484
	.word	1717986918
	.word	1076192870
	.word	-1717986918
	.word	1075288473
	.word	1717986918
	.word	1073112678
	.word	-858993459
	.word	1076088012
	.word	858993459
	.word	1077261107
	.word	858993459
	.word	1075000115
	.word	858993459
	.word	1078080307
	.word	-858993459
	.word	1076907212
	.word	0
	.word	1076363264
	.word	1717986918
	.word	1075078758
	.word	-858993459
	.word	1073007820
	.word	0
	.word	1074528256
	.word	858993459
	.word	1075262259
	.word	-858993459
	.word	1075367116
	.word	1717986918
	.word	1075996262
	.word	1717986918
	.word	1078371942
	.word	858993459
	.word	1075655475
	.word	-858993459
	.word	1077824716
	.word	0
	.word	1077313536
	.word	858993459
	.word	1076507443
	.word	858993459
	.word	1076704051
	.word	-858993459
	.word	1075367116
	.word	0
	.word	1075183616
	.word	-858993459
	.word	1077824716
	.word	-858993459
	.word	1074842828
	.word	858993459
	.word	1075917619
	.word	858993459
	.word	1075655475
	.word	-858993459
	.word	1076350156
	.word	858993459
	.word	1075852083
	.word	858993459
	.word	1071854387
	.word	0
	.word	1076297728
	.text
	.align	1
	.globl	derivateWRTWeight
	.type	derivateWRTWeight, @function
derivateWRTWeight:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	fsd	fa0,-40(s0)
	fsd	fa1,-48(s0)
	fmv.d.x	fa5,zero
	fsd	fa5,-24(s0)
	sw	zero,-28(s0)
	j	.L2
.L3:
	lla	a4,X
	lw	a5,-28(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	fld	fa4,0(a5)
	lla	a4,Y
	lw	a5,-28(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	fld	fa3,0(a5)
	lla	a4,X
	lw	a5,-28(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	fld	fa2,0(a5)
	fld	fa5,-40(s0)
	fmul.d	fa2,fa2,fa5
	fld	fa5,-48(s0)
	fadd.d	fa5,fa2,fa5
	fsub.d	fa5,fa3,fa5
	fmul.d	fa5,fa4,fa5
	fld	fa4,-24(s0)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L2:
	lw	a5,-28(s0)
	sext.w	a4,a5
	li	a5,49
	ble	a4,a5,.L3
	fld	fa4,-24(s0)
	lla	a5,.LC0
	fld	fa5,0(a5)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC1
	fld	fa5,0(a5)
	fdiv.d	fa5,fa4,fa5
	fmv.d	fa0,fa5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	derivateWRTWeight, .-derivateWRTWeight
	.align	1
	.globl	derivateWRTBias
	.type	derivateWRTBias, @function
derivateWRTBias:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	fsd	fa0,-40(s0)
	fsd	fa1,-48(s0)
	fmv.d.x	fa5,zero
	fsd	fa5,-24(s0)
	sw	zero,-28(s0)
	j	.L6
.L7:
	lla	a4,Y
	lw	a5,-28(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	fld	fa4,0(a5)
	lla	a4,X
	lw	a5,-28(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	fld	fa3,0(a5)
	fld	fa5,-40(s0)
	fmul.d	fa3,fa3,fa5
	fld	fa5,-48(s0)
	fadd.d	fa5,fa3,fa5
	fsub.d	fa5,fa4,fa5
	fld	fa4,-24(s0)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L6:
	lw	a5,-28(s0)
	sext.w	a4,a5
	li	a5,49
	ble	a4,a5,.L7
	fld	fa4,-24(s0)
	lla	a5,.LC0
	fld	fa5,0(a5)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC1
	fld	fa5,0(a5)
	fdiv.d	fa5,fa4,fa5
	fmv.d	fa0,fa5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	derivateWRTBias, .-derivateWRTBias
	.align	1
	.globl	gradientDescent
	.type	gradientDescent, @function
gradientDescent:
.LFB5:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	fsd	fs0,40(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 40, -24
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	sw	zero,-36(s0)
	j	.L10
.L11:
	ld	a5,-56(s0)
	fld	fs0,0(a5)
	ld	a5,-56(s0)
	fld	fa5,0(a5)
	ld	a5,-64(s0)
	fld	fa4,0(a5)
	fmv.d	fa1,fa4
	fmv.d	fa0,fa5
	call	derivateWRTWeight
	fmv.d	fa4,fa0
	lla	a5,L
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	fsub.d	fa5,fs0,fa5
	ld	a5,-56(s0)
	fsd	fa5,0(a5)
	ld	a5,-64(s0)
	fld	fs0,0(a5)
	ld	a5,-56(s0)
	fld	fa5,0(a5)
	ld	a5,-64(s0)
	fld	fa4,0(a5)
	fmv.d	fa1,fa4
	fmv.d	fa0,fa5
	call	derivateWRTBias
	fmv.d	fa4,fa0
	lla	a5,L
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	fsub.d	fa5,fs0,fa5
	ld	a5,-64(s0)
	fsd	fa5,0(a5)
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L10:
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,199
	bleu	a4,a5,.L11
	nop
	nop
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	fld	fs0,40(sp)
	.cfi_restore 40
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	gradientDescent, .-gradientDescent
	.section	.rodata
	.align	3
.LC2:
	.string	"The function is: %.4lfx + %.4lf\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB6:
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
	fmv.d.x	fa5,zero
	fsd	fa5,-40(s0)
	fmv.d.x	fa5,zero
	fsd	fa5,-32(s0)
	addi	a4,s0,-32
	addi	a5,s0,-40
	mv	a1,a4
	mv	a0,a5
	call	gradientDescent
	fld	fa5,-40(s0)
	fld	fa4,-32(s0)
	fmv.x.d	a2,fa4
	fmv.x.d	a1,fa5
	lla	a0,.LC2
	call	libmin_printf@plt
	call	libmin_success@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L14
	call	__stack_chk_fail@plt
.L14:
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
.LFE6:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	-1073741824
	.align	3
.LC1:
	.word	0
	.word	1078525952
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
