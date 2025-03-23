	.file	"problem36.c"
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
	lla	a5,.LC1
	flw	fa5,0(a5)
	fsw	fa5,-24(s0)
	sw	zero,-20(s0)
	j	.L2
.L5:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	flw	fa4,-24(s0)
	flt.s	a5,fa4,fa5
	beq	a5,zero,.L3
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fsw	fa5,-24(s0)
.L3:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L5
	flw	fa5,-24(s0)
	fmv.s	fa0,fa5
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC6:
	.string	"problem36.c"
	.align	3
.LC7:
	.string	"fabs(func0(list1, 3) - 3) < 1e-4"
	.align	3
.LC9:
	.string	"fabs(func0(list2, 11) - 124) < 1e-4"
	.align	3
.LC0:
	.word	1084227584
	.word	1077936128
	.word	-1063256064
	.word	1073741824
	.word	-1069547520
	.word	1077936128
	.word	1091567616
	.word	0
	.word	1123549184
	.word	1065353216
	.word	-1054867456
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-96
	sd	ra,88(sp)
	sd	s0,80(sp)
	addi	s0,sp,96
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC2
	flw	fa5,0(a5)
	fsw	fa5,-88(s0)
	lla	a5,.LC3
	flw	fa5,0(a5)
	fsw	fa5,-84(s0)
	lla	a5,.LC4
	flw	fa5,0(a5)
	fsw	fa5,-80(s0)
	addi	a5,s0,-88
	li	a1,3
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
	bne	a5,zero,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,18
	lla	a1,.LC6
	lla	a0,.LC7
	call	__assert_fail@plt
.L9:
	lla	a5,.LC0
	ld	a0,0(a5)
	ld	a1,8(a5)
	ld	a2,16(a5)
	ld	a3,24(a5)
	ld	a4,32(a5)
	sd	a0,-72(s0)
	sd	a1,-64(s0)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	lw	a5,40(a5)
	sw	a5,-32(s0)
	addi	a5,s0,-72
	li	a1,11
	mv	a0,a5
	call	func0
	fmv.s	fa4,fa0
	lla	a5,.LC8
	flw	fa5,0(a5)
	fsub.s	fa5,fa4,fa5
	fabs.s	fa5,fa5
	fcvt.d.s	fa4,fa5
	lla	a5,.LC5
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,21
	lla	a1,.LC6
	lla	a0,.LC9
	call	__assert_fail@plt
.L10:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L12
	call	__stack_chk_fail@plt
.L12:
	mv	a0,a4
	ld	ra,88(sp)
	ld	s0,80(sp)
	addi	sp,sp,96
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align	2
.LC1:
	.word	-971227136
	.align	2
.LC2:
	.word	1065353216
	.align	2
.LC3:
	.word	1073741824
	.align	2
.LC4:
	.word	1077936128
	.align	3
.LC5:
	.word	-350469331
	.word	1058682594
	.align	2
.LC8:
	.word	1123549184
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
