	.file	"problem48.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-48
	sd	s0,40(sp)
	addi	s0,sp,48
	sd	a0,-40(s0)
	mv	a5,a1
	sw	a5,-44(s0)
	sw	zero,-28(s0)
	j	.L2
.L7:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
	j	.L3
.L6:
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fgt.s	a5,fa4,fa5
	beq	a5,zero,.L4
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fsw	fa5,-20(s0)
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a4,a4,a5
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a3,-40(s0)
	add	a5,a3,a5
	flw	fa5,0(a4)
	fsw	fa5,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,-20(s0)
	fsw	fa5,0(a5)
.L4:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L3:
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L6
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L2:
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L7
	lw	a5,-44(s0)
	mv	a4,a5
	sraiw	a5,a4,31
	srliw	a5,a5,31
	addw	a4,a4,a5
	andi	a4,a4,1
	subw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,1
	bne	a4,a5,.L8
	lw	a5,-44(s0)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sext.w	a5,a5
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	j	.L9
.L8:
	lw	a5,-44(s0)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sext.w	a5,a5
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa4,0(a5)
	lw	a5,-44(s0)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sext.w	a5,a5
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fadd.s	fa4,fa4,fa5
	lla	a5,.LC3
	flw	fa5,0(a5)
	fmul.s	fa5,fa4,fa5
.L9:
	fmv.s	fa0,fa5
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC6:
	.string	"problem48.c"
	.align	3
.LC7:
	.string	"fabs(func0(list1, 5) - 3) < 1e-4"
	.align	3
.LC9:
	.string	"fabs(func0(list2, 6) - 8.0) < 1e-4"
	.align	3
.LC11:
	.string	"fabs(func0(list3, 1) - 5) < 1e-4"
	.align	3
.LC14:
	.string	"fabs(func0(list4, 2) - 5.5) < 1e-4"
	.align	3
.LC16:
	.string	"fabs(func0(list5, 7) - 7) < 1e-4"
	.align	3
.LC0:
	.word	1077936128
	.word	1065353216
	.word	1073741824
	.word	1082130432
	.word	1084227584
	.align	3
.LC1:
	.word	-1054867456
	.word	1082130432
	.word	1086324736
	.word	1148846080
	.word	1092616192
	.word	1101004800
	.align	3
.LC2:
	.word	1090519040
	.word	1065353216
	.word	1077936128
	.word	1091567616
	.word	1091567616
	.word	1073741824
	.word	1088421888
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-128
	sd	ra,120(sp)
	sd	s0,112(sp)
	addi	s0,sp,128
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-104(s0)
	ld	a4,8(a5)
	sd	a4,-96(s0)
	lw	a5,16(a5)
	sw	a5,-88(s0)
	addi	a5,s0,-104
	li	a1,5
	mv	a0,a5
	call	func0
	fmv.s	fa4,fa0
	lla	a5,.LC4
	flw	fa5,0(a5)
	fsub.s	fa5,fa4,fa5
	fabs.s	fa5,fa5
	fcvt.d.s	fa4,fa5
	lla	a5,.LC5
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,27
	lla	a1,.LC6
	lla	a0,.LC7
	call	__assert_fail@plt
.L12:
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-80(s0)
	ld	a4,8(a5)
	sd	a4,-72(s0)
	ld	a5,16(a5)
	sd	a5,-64(s0)
	addi	a5,s0,-80
	li	a1,6
	mv	a0,a5
	call	func0
	fmv.s	fa5,fa0
	fcvt.d.s	fa4,fa5
	lla	a5,.LC8
	fld	fa5,0(a5)
	fsub.d	fa5,fa4,fa5
	fabs.d	fa4,fa5
	lla	a5,.LC5
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,30
	lla	a1,.LC6
	lla	a0,.LC9
	call	__assert_fail@plt
.L13:
	lla	a5,.LC10
	flw	fa5,0(a5)
	fsw	fa5,-120(s0)
	addi	a5,s0,-120
	li	a1,1
	mv	a0,a5
	call	func0
	fmv.s	fa4,fa0
	lla	a5,.LC10
	flw	fa5,0(a5)
	fsub.s	fa5,fa4,fa5
	fabs.s	fa5,fa5
	fcvt.d.s	fa4,fa5
	lla	a5,.LC5
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,33
	lla	a1,.LC6
	lla	a0,.LC11
	call	__assert_fail@plt
.L14:
	lla	a5,.LC12
	flw	fa5,0(a5)
	fsw	fa5,-112(s0)
	lla	a5,.LC10
	flw	fa5,0(a5)
	fsw	fa5,-108(s0)
	addi	a5,s0,-112
	li	a1,2
	mv	a0,a5
	call	func0
	fmv.s	fa5,fa0
	fcvt.d.s	fa4,fa5
	lla	a5,.LC13
	fld	fa5,0(a5)
	fsub.d	fa5,fa4,fa5
	fabs.d	fa4,fa5
	lla	a5,.LC5
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,36
	lla	a1,.LC6
	lla	a0,.LC14
	call	__assert_fail@plt
.L15:
	lla	a5,.LC2
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	lw	a5,24(a5)
	sw	a5,-32(s0)
	addi	a5,s0,-56
	li	a1,7
	mv	a0,a5
	call	func0
	fmv.s	fa4,fa0
	lla	a5,.LC15
	flw	fa5,0(a5)
	fsub.s	fa5,fa4,fa5
	fabs.s	fa5,fa5
	fcvt.d.s	fa4,fa5
	lla	a5,.LC5
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,39
	lla	a1,.LC6
	lla	a0,.LC16
	call	__assert_fail@plt
.L16:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L18
	call	__stack_chk_fail@plt
.L18:
	mv	a0,a4
	ld	ra,120(sp)
	ld	s0,112(sp)
	addi	sp,sp,128
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align	2
.LC3:
	.word	1056964608
	.align	2
.LC4:
	.word	1077936128
	.align	3
.LC5:
	.word	-350469331
	.word	1058682594
	.align	3
.LC8:
	.word	0
	.word	1075838976
	.align	2
.LC10:
	.word	1084227584
	.align	2
.LC12:
	.word	1086324736
	.align	3
.LC13:
	.word	0
	.word	1075183616
	.align	2
.LC15:
	.word	1088421888
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
