	.file	"tiny-NN.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	g_deriv
	.type	g_deriv, @function
g_deriv:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	fsd	fa0,-40(s0)
	fld	fa5,-40(s0)
	fneg.d	fa5,fa5
	fmv.d	fa0,fa5
	call	libmin_exp@plt
	fmv.d	fa4,fa0
	lla	a5,.LC0
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	lla	a5,.LC0
	fld	fa4,0(a5)
	fdiv.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	lla	a5,.LC0
	fld	fa4,0(a5)
	fld	fa5,-24(s0)
	fsub.d	fa4,fa4,fa5
	fld	fa5,-24(s0)
	fmul.d	fa5,fa4,fa5
	fmv.d	fa0,fa5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	g_deriv, .-g_deriv
	.align	1
	.globl	g
	.type	g, @function
g:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	fsd	fa0,-24(s0)
	fld	fa5,-24(s0)
	fneg.d	fa5,fa5
	fmv.d	fa0,fa5
	call	libmin_exp@plt
	fmv.d	fa4,fa0
	lla	a5,.LC0
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	lla	a5,.LC0
	fld	fa4,0(a5)
	fdiv.d	fa5,fa4,fa5
	fmv.d	fa0,fa5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	g, .-g
	.align	1
	.globl	sampleSine
	.type	sampleSine, @function
sampleSine:
.LFB5:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	sd	s1,72(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	fsd	fa0,-72(s0)
	fsd	fa1,-80(s0)
	mv	a5,a2
	sw	a5,-84(s0)
	fld	fa4,-80(s0)
	fld	fa5,-72(s0)
	fsub.d	fa4,fa4,fa5
	lw	a5,-84(s0)
	fcvt.d.wu	fa5,a5
	fdiv.d	fa5,fa4,fa5
	fsd	fa5,-40(s0)
	sw	zero,-44(s0)
	j	.L6
.L7:
	lw	a5,-44(s0)
	fcvt.d.wu	fa4,a5
	fld	fa5,-40(s0)
	fmul.d	fa4,fa4,fa5
	lwu	a5,-44(s0)
	slli	a5,a5,3
	ld	a4,-56(s0)
	add	a5,a4,a5
	fld	fa5,-72(s0)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,0(a5)
	lwu	a5,-44(s0)
	slli	a5,a5,3
	ld	a4,-56(s0)
	add	a5,a4,a5
	fld	fa5,0(a5)
	lwu	a5,-44(s0)
	slli	a5,a5,3
	ld	a4,-64(s0)
	add	s1,a4,a5
	fmv.d	fa0,fa5
	call	libmin_sin@plt
	fmv.d	fa5,fa0
	fsd	fa5,0(s1)
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
.L6:
	lw	a5,-44(s0)
	mv	a4,a5
	lw	a5,-84(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bltu	a4,a5,.L7
	nop
	nop
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	ld	s1,72(sp)
	.cfi_restore 9
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	sampleSine, .-sampleSine
	.align	1
	.globl	fillArrayRand
	.type	fillArrayRand, @function
fillArrayRand:
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
	sd	a0,-40(s0)
	mv	a5,a1
	sw	a5,-44(s0)
	sw	zero,-20(s0)
	j	.L9
.L10:
	call	libmin_rand@plt
	mv	a5,a0
	sext.w	a5,a5
	fcvt.d.wu	fa4,a5
	lla	a5,.LC1
	fld	fa5,0(a5)
	fdiv.d	fa4,fa4,fa5
	lwu	a5,-20(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	a5,a4,a5
	lla	a4,.LC2
	fld	fa5,0(a4)
	fsub.d	fa5,fa4,fa5
	fsd	fa5,0(a5)
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L9:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bltu	a4,a5,.L10
	nop
	nop
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
	.size	fillArrayRand, .-fillArrayRand
	.align	1
	.globl	fillArrayNull
	.type	fillArrayNull, @function
fillArrayNull:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	mv	a5,a1
	sw	a5,-44(s0)
	sw	zero,-20(s0)
	j	.L12
.L13:
	lwu	a5,-20(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	a5,a4,a5
	fmv.d.x	fa5,zero
	fsd	fa5,0(a5)
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L12:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bltu	a4,a5,.L13
	nop
	nop
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	fillArrayNull, .-fillArrayNull
	.section	.rodata
	.align	3
.LC4:
	.string	"iteration %d Total error %f\n"
	.text
	.align	1
	.globl	train
	.type	train, @function
train:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-1728
	.cfi_def_cfa_offset 1728
	sd	ra,1720(sp)
	sd	s0,1712(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,1728
	.cfi_def_cfa 8, 0
	fsd	fa0,-1704(s0)
	fsd	fa1,-1712(s0)
	fsd	fa2,-1720(s0)
	fsd	fa3,-1728(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	fld	fa4,-1712(s0)
	lla	a5,.LC0
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-1680(s0)
	fmv.d.x	fa5,zero
	fsd	fa5,-1672(s0)
	addi	a5,s0,-664
	li	a1,40
	mv	a0,a5
	call	fillArrayRand
	addi	a5,s0,-1304
	li	a1,20
	mv	a0,a5
	call	fillArrayRand
	addi	a5,s0,-344
	li	a1,40
	mv	a0,a5
	call	fillArrayNull
	addi	a5,s0,-1144
	li	a1,20
	mv	a0,a5
	call	fillArrayNull
	lla	a5,.LC3
	fld	fa5,0(a5)
	addi	a4,s0,-1464
	addi	a5,s0,-1624
	li	a2,20
	fmv.d	fa1,fa5
	fmv.d.x	fa0,zero
	mv	a1,a4
	mv	a0,a5
	call	sampleSine
	sw	zero,-1692(s0)
	j	.L15
.L24:
	fmv.d.x	fa5,zero
	fsd	fa5,-1680(s0)
	sw	zero,-1688(s0)
	j	.L16
.L21:
	sw	zero,-1684(s0)
	j	.L17
.L18:
	lwu	a5,-1688(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	fld	fa4,-1608(a5)
	lw	a5,-1684(s0)
	slliw	a5,a5,1
	sext.w	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	fld	fa5,-648(a5)
	fmul.d	fa4,fa4,fa5
	lw	a5,-1684(s0)
	slliw	a5,a5,1
	sext.w	a5,a5
	addiw	a5,a5,1
	sext.w	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	fld	fa3,-648(a5)
	fld	fa5,-1720(s0)
	fmul.d	fa5,fa3,fa5
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-1632(s0)
	fld	fa0,-1632(s0)
	call	g
	fmv.d	fa5,fa0
	lwu	a5,-1684(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	fsd	fa5,-968(a5)
	fld	fa0,-1632(s0)
	call	g_deriv
	fmv.d	fa5,fa0
	lwu	a5,-1684(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	fsd	fa5,-808(a5)
	lwu	a5,-1684(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	fld	fa4,-1288(a5)
	lwu	a5,-1684(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	fld	fa5,-968(a5)
	fmul.d	fa5,fa4,fa5
	fld	fa4,-1672(s0)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-1672(s0)
	lw	a5,-1684(s0)
	addiw	a5,a5,1
	sw	a5,-1684(s0)
.L17:
	lw	a5,-1684(s0)
	sext.w	a4,a5
	li	a5,19
	bleu	a4,a5,.L18
	lwu	a5,-1688(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	fld	fa5,-1448(a5)
	fld	fa4,-1672(s0)
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-1664(s0)
	fld	fa5,-1664(s0)
	fmul.d	fa5,fa5,fa5
	fld	fa4,-1680(s0)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-1680(s0)
	sw	zero,-1684(s0)
	j	.L19
.L20:
	lwu	a5,-1684(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	fld	fa4,-808(a5)
	lwu	a5,-1684(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	fld	fa5,-1288(a5)
	fmul.d	fa5,fa4,fa5
	fld	fa4,-1664(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-1656(s0)
	lwu	a5,-1684(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	fld	fa5,-968(a5)
	fld	fa4,-1664(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-1648(s0)
	lwu	a5,-1684(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	fld	fa4,-1288(a5)
	fld	fa3,-1648(s0)
	fld	fa5,-1704(s0)
	fmul.d	fa3,fa3,fa5
	lwu	a5,-1684(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	fld	fa2,-1128(a5)
	fld	fa5,-1728(s0)
	fmul.d	fa5,fa2,fa5
	fadd.d	fa5,fa3,fa5
	fsub.d	fa5,fa4,fa5
	lwu	a5,-1684(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	fsd	fa5,-1288(a5)
	fld	fa4,-1648(s0)
	fld	fa5,-1704(s0)
	fmul.d	fa4,fa4,fa5
	lwu	a5,-1684(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	fld	fa3,-1128(a5)
	fld	fa5,-1728(s0)
	fmul.d	fa5,fa3,fa5
	fadd.d	fa5,fa4,fa5
	lwu	a5,-1684(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	fsd	fa5,-1128(a5)
	lwu	a5,-1688(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	fld	fa5,-1608(a5)
	fld	fa4,-1656(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-1640(s0)
	lw	a5,-1684(s0)
	slliw	a5,a5,1
	sext.w	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	fld	fa4,-648(a5)
	fld	fa3,-1640(s0)
	fld	fa5,-1704(s0)
	fmul.d	fa3,fa3,fa5
	lw	a5,-1684(s0)
	slliw	a5,a5,1
	sext.w	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	fld	fa2,-328(a5)
	fld	fa5,-1728(s0)
	fmul.d	fa5,fa2,fa5
	fadd.d	fa5,fa3,fa5
	lw	a5,-1684(s0)
	slliw	a5,a5,1
	sext.w	a5,a5
	fsub.d	fa5,fa4,fa5
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	fsd	fa5,-648(a5)
	fld	fa4,-1640(s0)
	fld	fa5,-1704(s0)
	fmul.d	fa4,fa4,fa5
	lw	a5,-1684(s0)
	slliw	a5,a5,1
	sext.w	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	fld	fa3,-328(a5)
	fld	fa5,-1728(s0)
	fmul.d	fa5,fa3,fa5
	lw	a5,-1684(s0)
	slliw	a5,a5,1
	sext.w	a5,a5
	fadd.d	fa5,fa4,fa5
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	fsd	fa5,-328(a5)
	fld	fa4,-1656(s0)
	fld	fa5,-1720(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-1640(s0)
	lw	a5,-1684(s0)
	slliw	a5,a5,1
	sext.w	a5,a5
	addiw	a5,a5,1
	sext.w	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	fld	fa4,-648(a5)
	fld	fa3,-1640(s0)
	fld	fa5,-1704(s0)
	fmul.d	fa3,fa3,fa5
	lw	a5,-1684(s0)
	slliw	a5,a5,1
	sext.w	a5,a5
	addiw	a5,a5,1
	sext.w	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	fld	fa2,-328(a5)
	fld	fa5,-1728(s0)
	fmul.d	fa5,fa2,fa5
	fadd.d	fa5,fa3,fa5
	lw	a5,-1684(s0)
	slliw	a5,a5,1
	sext.w	a5,a5
	addiw	a5,a5,1
	sext.w	a5,a5
	fsub.d	fa5,fa4,fa5
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	fsd	fa5,-648(a5)
	fld	fa4,-1640(s0)
	fld	fa5,-1704(s0)
	fmul.d	fa4,fa4,fa5
	lw	a5,-1684(s0)
	slliw	a5,a5,1
	sext.w	a5,a5
	addiw	a5,a5,1
	sext.w	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	fld	fa3,-328(a5)
	fld	fa5,-1728(s0)
	fmul.d	fa5,fa3,fa5
	lw	a5,-1684(s0)
	slliw	a5,a5,1
	sext.w	a5,a5
	addiw	a5,a5,1
	sext.w	a5,a5
	fadd.d	fa5,fa4,fa5
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	fsd	fa5,-328(a5)
	lw	a5,-1684(s0)
	addiw	a5,a5,1
	sw	a5,-1684(s0)
.L19:
	lw	a5,-1684(s0)
	sext.w	a4,a5
	li	a5,19
	bleu	a4,a5,.L20
	fmv.d.x	fa5,zero
	fsd	fa5,-1672(s0)
	lw	a5,-1688(s0)
	addiw	a5,a5,1
	sw	a5,-1688(s0)
.L16:
	lw	a5,-1688(s0)
	sext.w	a4,a5
	li	a5,19
	bleu	a4,a5,.L21
	lw	a5,-1692(s0)
	addiw	a5,a5,1
	sw	a5,-1692(s0)
	addi	a5,s0,-344
	li	a1,40
	mv	a0,a5
	call	fillArrayNull
	addi	a5,s0,-1144
	li	a1,20
	mv	a0,a5
	call	fillArrayNull
	lw	a5,-1692(s0)
	ld	a2,-1680(s0)
	mv	a1,a5
	lla	a0,.LC4
	call	libmin_printf@plt
.L15:
	fld	fa4,-1680(s0)
	fld	fa5,-1712(s0)
	fgt.d	a5,fa4,fa5
	beq	a5,zero,.L22
	lw	a5,-1692(s0)
	sext.w	a4,a5
	li	a5,9
	bleu	a4,a5,.L24
.L22:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L26
	call	__stack_chk_fail@plt
.L26:
	mv	a0,a4
	ld	ra,1720(sp)
	.cfi_restore 1
	ld	s0,1712(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 1728
	addi	sp,sp,1728
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	train, .-train
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB9:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	li	a0,42
	call	libmin_srand@plt
	lla	a5,.LC5
	fld	fa3,0(a5)
	lla	a5,.LC0
	fld	fa2,0(a5)
	lla	a5,.LC6
	fld	fa4,0(a5)
	lla	a5,.LC7
	fld	fa5,0(a5)
	fmv.d	fa1,fa4
	fmv.d	fa0,fa5
	call	train
	call	libmin_success@plt
	li	a5,0
	mv	a0,a5
	ld	ra,8(sp)
	.cfi_restore 1
	ld	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	1072693248
	.align	3
.LC1:
	.word	-4194304
	.word	1105199103
	.align	3
.LC2:
	.word	0
	.word	1071644672
	.align	3
.LC3:
	.word	1374389535
	.word	1074339512
	.align	3
.LC5:
	.word	-1717986918
	.word	1071225241
	.align	3
.LC6:
	.word	1202590843
	.word	1065646817
	.align	3
.LC7:
	.word	1202590843
	.word	1064598241
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
