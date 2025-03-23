	.file	"problem161.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC1:
	.string	"**"
	.align	3
.LC2:
	.string	"*"
	.align	3
.LC3:
	.string	"//"
	.align	3
.LC4:
	.string	"+"
	.align	3
.LC5:
	.string	"-"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)
	sd	a1,-80(s0)
	mv	a5,a2
	mv	a4,a3
	sw	a5,-84(s0)
	mv	a5,a4
	sw	a5,-88(s0)
	lw	a5,-88(s0)
	slli	a5,a5,2
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-32(s0)
	lw	a5,-88(s0)
	slli	a5,a5,2
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	sw	zero,-52(s0)
	j	.L2
.L3:
	lw	a5,-52(s0)
	slli	a5,a5,2
	ld	a4,-80(s0)
	add	a4,a4,a5
	lw	a5,-52(s0)
	slli	a5,a5,2
	ld	a3,-32(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-52(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a4,-52(s0)
	sw	a4,0(a5)
	lw	a5,-52(s0)
	addiw	a5,a5,1
	sw	a5,-52(s0)
.L2:
	lw	a5,-52(s0)
	mv	a4,a5
	lw	a5,-88(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L3
	sw	zero,-48(s0)
	j	.L4
.L10:
	lw	a5,-48(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	lla	a1,.LC1
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	bne	a5,zero,.L5
	j	.L6
.L7:
	lw	a5,-48(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a4,a4,a5
	lw	a5,-48(s0)
	slli	a5,a5,2
	ld	a3,-24(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
.L6:
	lw	a5,-48(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-48(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	bne	a4,a5,.L7
	j	.L8
.L9:
	lw	a5,-48(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a4,a4,a5
	lw	a5,-48(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a3,-24(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
.L8:
	lw	a5,-48(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-48(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	bne	a4,a5,.L9
	lw	a5,-48(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	slli	a5,a5,2
	ld	a4,-32(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	fcvt.d.w	fa5,a5
	lw	a5,-48(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	slli	a5,a5,2
	ld	a4,-32(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	fcvt.d.w	fa4,a5
	fmv.d	fa1,fa4
	fmv.d	fa0,fa5
	call	pow@plt
	fmv.d	fa5,fa0
	lw	a5,-48(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	slli	a5,a5,2
	ld	a4,-32(s0)
	add	a5,a4,a5
	fcvt.w.d a4,fa5,rtz
	sext.w	a4,a4
	sw	a4,0(a5)
	lw	a5,-48(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a4,a4,a5
	lw	a5,-48(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a3,-24(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
.L5:
	lw	a5,-48(s0)
	addiw	a5,a5,1
	sw	a5,-48(s0)
.L4:
	lw	a5,-48(s0)
	mv	a4,a5
	lw	a5,-84(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L10
	sw	zero,-44(s0)
	j	.L11
.L20:
	lw	a5,-44(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	lla	a1,.LC2
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L14
	lw	a5,-44(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	lla	a1,.LC3
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	bne	a5,zero,.L13
	j	.L14
.L15:
	lw	a5,-44(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a4,a4,a5
	lw	a5,-44(s0)
	slli	a5,a5,2
	ld	a3,-24(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
.L14:
	lw	a5,-44(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-44(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	bne	a4,a5,.L15
	j	.L16
.L17:
	lw	a5,-44(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a4,a4,a5
	lw	a5,-44(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a3,-24(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
.L16:
	lw	a5,-44(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-44(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	bne	a4,a5,.L17
	lw	a5,-44(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	lla	a1,.LC2
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	bne	a5,zero,.L18
	lw	a5,-44(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	slli	a5,a5,2
	ld	a4,-32(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-44(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	slli	a5,a5,2
	ld	a4,-32(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-44(s0)
	slli	a5,a5,2
	ld	a2,-24(s0)
	add	a5,a2,a5
	lw	a5,0(a5)
	slli	a5,a5,2
	ld	a2,-32(s0)
	add	a5,a2,a5
	mulw	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
	j	.L19
.L18:
	lw	a5,-44(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	slli	a5,a5,2
	ld	a4,-32(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-44(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	slli	a5,a5,2
	ld	a4,-32(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-44(s0)
	slli	a5,a5,2
	ld	a2,-24(s0)
	add	a5,a2,a5
	lw	a5,0(a5)
	slli	a5,a5,2
	ld	a2,-32(s0)
	add	a5,a2,a5
	divw	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
.L19:
	lw	a5,-44(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a4,a4,a5
	lw	a5,-44(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a3,-24(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
.L13:
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
.L11:
	lw	a5,-44(s0)
	mv	a4,a5
	lw	a5,-84(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L20
	sw	zero,-40(s0)
	j	.L21
.L30:
	lw	a5,-40(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	lla	a1,.LC4
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L24
	lw	a5,-40(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	lla	a1,.LC5
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	bne	a5,zero,.L23
	j	.L24
.L25:
	lw	a5,-40(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a4,a4,a5
	lw	a5,-40(s0)
	slli	a5,a5,2
	ld	a3,-24(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
.L24:
	lw	a5,-40(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-40(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	bne	a4,a5,.L25
	j	.L26
.L27:
	lw	a5,-40(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a4,a4,a5
	lw	a5,-40(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a3,-24(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
.L26:
	lw	a5,-40(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-40(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	bne	a4,a5,.L27
	lw	a5,-40(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	lla	a1,.LC4
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	bne	a5,zero,.L28
	lw	a5,-40(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	slli	a5,a5,2
	ld	a4,-32(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-40(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	slli	a5,a5,2
	ld	a4,-32(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-40(s0)
	slli	a5,a5,2
	ld	a2,-24(s0)
	add	a5,a2,a5
	lw	a5,0(a5)
	slli	a5,a5,2
	ld	a2,-32(s0)
	add	a5,a2,a5
	addw	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
	j	.L29
.L28:
	lw	a5,-40(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	slli	a5,a5,2
	ld	a4,-32(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-40(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	slli	a5,a5,2
	ld	a4,-32(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-40(s0)
	slli	a5,a5,2
	ld	a2,-24(s0)
	add	a5,a2,a5
	lw	a5,0(a5)
	slli	a5,a5,2
	ld	a2,-32(s0)
	add	a5,a2,a5
	subw	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
.L29:
	lw	a5,-40(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a4,a4,a5
	lw	a5,-40(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a3,-24(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
.L23:
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sw	a5,-40(s0)
.L21:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-84(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L30
	ld	a5,-32(s0)
	lw	a5,0(a5)
	sw	a5,-36(s0)
	ld	a0,-32(s0)
	call	free@plt
	ld	a0,-24(s0)
	call	free@plt
	lw	a5,-36(s0)
	mv	a0,a5
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC6:
	.string	"problem161.c"
	.align	3
.LC7:
	.string	"func0(operators1, operands1, 3, 4) == 37"
	.align	3
.LC8:
	.string	"func0(operators2, operands2, 3, 4) == 9"
	.align	3
.LC9:
	.string	"func0(operators3, operands3, 2, 3) == 8"
	.align	3
.LC0:
	.word	2
	.word	3
	.word	4
	.word	5
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sd	ra,136(sp)
	sd	s0,128(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,144
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC1
	sd	a5,-72(s0)
	lla	a5,.LC2
	sd	a5,-64(s0)
	lla	a5,.LC4
	sd	a5,-56(s0)
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-120(s0)
	ld	a5,8(a5)
	sd	a5,-112(s0)
	addi	a4,s0,-120
	addi	a5,s0,-72
	li	a3,4
	li	a2,3
	mv	a1,a4
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,37
	beq	a4,a5,.L33
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,56
	lla	a1,.LC6
	lla	a0,.LC7
	call	__assert_fail@plt
.L33:
	lla	a5,.LC4
	sd	a5,-48(s0)
	lla	a5,.LC2
	sd	a5,-40(s0)
	lla	a5,.LC5
	sd	a5,-32(s0)
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-104(s0)
	ld	a5,8(a5)
	sd	a5,-96(s0)
	addi	a4,s0,-104
	addi	a5,s0,-48
	li	a3,4
	li	a2,3
	mv	a1,a4
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,9
	beq	a4,a5,.L34
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,60
	lla	a1,.LC6
	lla	a0,.LC8
	call	__assert_fail@plt
.L34:
	lla	a5,.LC3
	sd	a5,-88(s0)
	lla	a5,.LC2
	sd	a5,-80(s0)
	li	a5,7
	sw	a5,-136(s0)
	li	a5,3
	sw	a5,-132(s0)
	li	a5,4
	sw	a5,-128(s0)
	addi	a4,s0,-136
	addi	a5,s0,-88
	li	a3,3
	li	a2,2
	mv	a1,a4
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,8
	beq	a4,a5,.L35
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,64
	lla	a1,.LC6
	lla	a0,.LC9
	call	__assert_fail@plt
.L35:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L37
	call	__stack_chk_fail@plt
.L37:
	mv	a0,a4
	ld	ra,136(sp)
	.cfi_restore 1
	ld	s0,128(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 144
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
