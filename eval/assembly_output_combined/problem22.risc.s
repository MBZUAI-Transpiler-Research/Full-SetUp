	.file	"problem22.c"
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
	ld	a5,-40(s0)
	flw	fa5,0(a5)
	fsw	fa5,-32(s0)
	ld	a5,-40(s0)
	flw	fa5,0(a5)
	fsw	fa5,-28(s0)
	li	a5,1
	sw	a5,-24(s0)
	j	.L2
.L7:
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	flw	fa4,-32(s0)
	fgt.s	a5,fa4,fa5
	beq	a5,zero,.L3
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fsw	fa5,-32(s0)
.L3:
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	flw	fa4,-28(s0)
	flt.s	a5,fa4,fa5
	beq	a5,zero,.L5
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fsw	fa5,-28(s0)
.L5:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L2:
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L7
	sw	zero,-20(s0)
	j	.L8
.L9:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa4,0(a5)
	flw	fa5,-32(s0)
	fsub.s	fa4,fa4,fa5
	flw	fa3,-28(s0)
	flw	fa5,-32(s0)
	fsub.s	fa5,fa3,fa5
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	fdiv.s	fa5,fa4,fa5
	fsw	fa5,0(a5)
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L8:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L9
	nop
	nop
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
	addi	sp,sp,-64
	sd	s0,56(sp)
	addi	s0,sp,64
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	mv	a5,a2
	sw	a5,-52(s0)
	lla	a5,.LC5
	flw	fa5,0(a5)
	fsw	fa5,-20(s0)
	sw	zero,-24(s0)
	j	.L13
.L17:
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fsub.s	fa5,fa4,fa5
	fabs.s	fa5,fa5
	flw	fa4,-20(s0)
	flt.s	a5,fa4,fa5
	beq	a5,zero,.L19
	li	a5,0
	j	.L16
.L19:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L13:
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L17
	li	a5,1
.L16:
	mv	a0,a5
	ld	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC9:
	.string	"problem22.c"
	.align	3
.LC10:
	.string	"issame(test1, expected1, 2)"
	.align	3
.LC12:
	.string	"issame(test2, expected2, 2)"
	.align	3
.LC13:
	.string	"issame(test3, expected3, 5)"
	.align	3
.LC14:
	.string	"issame(test4, expected4, 5)"
	.align	3
.LC15:
	.string	"issame(test5, expected5, 5)"
	.align	3
.LC0:
	.word	1065353216
	.word	1073741824
	.word	1077936128
	.word	1082130432
	.word	1084227584
	.align	3
.LC1:
	.word	0
	.word	1048576000
	.word	1056964608
	.word	1061158912
	.word	1065353216
	.align	3
.LC2:
	.word	1073741824
	.word	1065353216
	.word	1084227584
	.word	1077936128
	.word	1082130432
	.align	3
.LC3:
	.word	1048576000
	.word	0
	.word	1065353216
	.word	1056964608
	.word	1061158912
	.align	3
.LC4:
	.word	1094713344
	.word	1093664768
	.word	1097859072
	.word	1095761920
	.word	1096810496
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-208
	sd	ra,200(sp)
	sd	s0,192(sp)
	addi	s0,sp,208
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC6
	flw	fa5,0(a5)
	fsw	fa5,-200(s0)
	lla	a5,.LC7
	flw	fa5,0(a5)
	fsw	fa5,-196(s0)
	sw	zero,-192(s0)
	lla	a5,.LC8
	flw	fa5,0(a5)
	fsw	fa5,-188(s0)
	addi	a5,s0,-200
	li	a1,2
	mv	a0,a5
	call	func0
	addi	a4,s0,-192
	addi	a5,s0,-200
	li	a2,2
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L21
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,32
	lla	a1,.LC9
	lla	a0,.LC10
	call	__assert_fail@plt
.L21:
	lla	a5,.LC11
	flw	fa5,0(a5)
	fsw	fa5,-184(s0)
	lla	a5,.LC7
	flw	fa5,0(a5)
	fsw	fa5,-180(s0)
	lla	a5,.LC8
	flw	fa5,0(a5)
	fsw	fa5,-176(s0)
	sw	zero,-172(s0)
	addi	a5,s0,-184
	li	a1,2
	mv	a0,a5
	call	func0
	addi	a4,s0,-176
	addi	a5,s0,-184
	li	a2,2
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L22
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,37
	lla	a1,.LC9
	lla	a0,.LC12
	call	__assert_fail@plt
.L22:
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-168(s0)
	ld	a4,8(a5)
	sd	a4,-160(s0)
	lw	a5,16(a5)
	sw	a5,-152(s0)
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-144(s0)
	ld	a4,8(a5)
	sd	a4,-136(s0)
	lw	a5,16(a5)
	sw	a5,-128(s0)
	addi	a5,s0,-168
	li	a1,5
	mv	a0,a5
	call	func0
	addi	a4,s0,-144
	addi	a5,s0,-168
	li	a2,5
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L23
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,42
	lla	a1,.LC9
	lla	a0,.LC13
	call	__assert_fail@plt
.L23:
	lla	a5,.LC2
	ld	a4,0(a5)
	sd	a4,-120(s0)
	ld	a4,8(a5)
	sd	a4,-112(s0)
	lw	a5,16(a5)
	sw	a5,-104(s0)
	lla	a5,.LC3
	ld	a4,0(a5)
	sd	a4,-96(s0)
	ld	a4,8(a5)
	sd	a4,-88(s0)
	lw	a5,16(a5)
	sw	a5,-80(s0)
	addi	a5,s0,-120
	li	a1,5
	mv	a0,a5
	call	func0
	addi	a4,s0,-96
	addi	a5,s0,-120
	li	a2,5
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L24
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,47
	lla	a1,.LC9
	lla	a0,.LC14
	call	__assert_fail@plt
.L24:
	lla	a5,.LC4
	ld	a4,0(a5)
	sd	a4,-72(s0)
	ld	a4,8(a5)
	sd	a4,-64(s0)
	lw	a5,16(a5)
	sw	a5,-56(s0)
	lla	a5,.LC3
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a4,8(a5)
	sd	a4,-40(s0)
	lw	a5,16(a5)
	sw	a5,-32(s0)
	addi	a5,s0,-72
	li	a1,5
	mv	a0,a5
	call	func0
	addi	a4,s0,-48
	addi	a5,s0,-72
	li	a2,5
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L25
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,52
	lla	a1,.LC9
	lla	a0,.LC15
	call	__assert_fail@plt
.L25:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L27
	call	__stack_chk_fail@plt
.L27:
	mv	a0,a4
	ld	ra,200(sp)
	ld	s0,192(sp)
	addi	sp,sp,208
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align	2
.LC5:
	.word	953267991
	.align	2
.LC6:
	.word	1073741824
	.align	2
.LC7:
	.word	1111988634
	.align	2
.LC8:
	.word	1065353216
	.align	2
.LC11:
	.word	1120403456
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
