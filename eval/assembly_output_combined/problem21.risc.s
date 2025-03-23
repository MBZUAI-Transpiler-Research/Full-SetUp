	.file	"problem21.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-80
	sd	s0,72(sp)
	addi	s0,sp,80
	sd	a0,-56(s0)
	mv	a5,a1
	sd	a2,-72(s0)
	sw	a5,-60(s0)
	lla	a5,.LC5
	flw	fa5,0(a5)
	fsw	fa5,-36(s0)
	ld	a5,-56(s0)
	flw	fa5,0(a5)
	ld	a5,-72(s0)
	fsw	fa5,0(a5)
	ld	a5,-72(s0)
	addi	a5,a5,4
	ld	a4,-56(s0)
	flw	fa5,4(a4)
	fsw	fa5,0(a5)
	sw	zero,-32(s0)
	j	.L2
.L7:
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
	j	.L3
.L6:
	lw	a5,-32(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	flw	fa4,0(a5)
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fsub.s	fa5,fa4,fa5
	fabs.s	fa5,fa5
	fsw	fa5,-20(s0)
	flw	fa4,-20(s0)
	flw	fa5,-36(s0)
	flt.s	a5,fa4,fa5
	beq	a5,zero,.L4
	flw	fa5,-20(s0)
	fsw	fa5,-36(s0)
	lw	a5,-32(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	ld	a5,-72(s0)
	fsw	fa5,0(a5)
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a4,a4,a5
	ld	a5,-72(s0)
	addi	a5,a5,4
	flw	fa5,0(a4)
	fsw	fa5,0(a5)
.L4:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L3:
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L6
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L2:
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L7
	ld	a5,-72(s0)
	flw	fa4,0(a5)
	ld	a5,-72(s0)
	addi	a5,a5,4
	flw	fa5,0(a5)
	fgt.s	a5,fa4,fa5
	bne	a5,zero,.L11
	j	.L12
.L11:
	ld	a5,-72(s0)
	flw	fa5,0(a5)
	fsw	fa5,-24(s0)
	ld	a5,-72(s0)
	flw	fa5,4(a5)
	ld	a5,-72(s0)
	fsw	fa5,0(a5)
	ld	a5,-72(s0)
	addi	a5,a5,4
	flw	fa5,-24(s0)
	fsw	fa5,0(a5)
.L12:
	nop
	ld	s0,72(sp)
	addi	sp,sp,80
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
	lla	a5,.LC6
	flw	fa5,0(a5)
	fsw	fa5,-20(s0)
	sw	zero,-24(s0)
	j	.L14
.L18:
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
	beq	a5,zero,.L20
	li	a5,0
	j	.L17
.L20:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L14:
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L18
	li	a5,1
.L17:
	mv	a0,a5
	ld	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC9:
	.string	"problem21.c"
	.align	3
.LC10:
	.string	"issame(result, expected1, 2)"
	.align	3
.LC13:
	.string	"issame(result, expected2, 2)"
	.align	3
.LC16:
	.string	"issame(result, expected3, 2)"
	.align	3
.LC17:
	.string	"issame(result, expected4, 2)"
	.align	3
.LC19:
	.string	"issame(result, expected5, 2)"
	.align	3
.LC0:
	.word	1065353216
	.word	1073741824
	.word	1081711002
	.word	1082130432
	.word	1084227584
	.word	1074580685
	.align	3
.LC1:
	.word	1065353216
	.word	1073741824
	.word	1086115021
	.word	1082130432
	.word	1084227584
	.align	3
.LC2:
	.word	1065353216
	.word	1073741824
	.word	1077936128
	.word	1082130432
	.word	1084227584
	.word	1074580685
	.align	3
.LC3:
	.word	1065353216
	.word	1073741824
	.word	1077936128
	.word	1082130432
	.word	1084227584
	.word	1073741824
	.align	3
.LC4:
	.word	1066192077
	.word	1074580685
	.word	1078355558
	.word	1082340147
	.word	1084437299
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-192
	sd	ra,184(sp)
	sd	s0,176(sp)
	addi	s0,sp,192
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-96(s0)
	ld	a4,8(a5)
	sd	a4,-88(s0)
	ld	a5,16(a5)
	sd	a5,-80(s0)
	lla	a5,.LC7
	flw	fa5,0(a5)
	fsw	fa5,-184(s0)
	lla	a5,.LC8
	flw	fa5,0(a5)
	fsw	fa5,-180(s0)
	addi	a4,s0,-192
	addi	a5,s0,-96
	mv	a2,a4
	li	a1,6
	mv	a0,a5
	call	func0
	addi	a4,s0,-184
	addi	a5,s0,-192
	li	a2,2
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L22
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,49
	lla	a1,.LC9
	lla	a0,.LC10
	call	__assert_fail@plt
.L22:
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-144(s0)
	ld	a4,8(a5)
	sd	a4,-136(s0)
	lw	a5,16(a5)
	sw	a5,-128(s0)
	lla	a5,.LC11
	flw	fa5,0(a5)
	fsw	fa5,-176(s0)
	lla	a5,.LC12
	flw	fa5,0(a5)
	fsw	fa5,-172(s0)
	addi	a4,s0,-192
	addi	a5,s0,-144
	mv	a2,a4
	li	a1,5
	mv	a0,a5
	call	func0
	addi	a4,s0,-176
	addi	a5,s0,-192
	li	a2,2
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L23
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,54
	lla	a1,.LC9
	lla	a0,.LC13
	call	__assert_fail@plt
.L23:
	lla	a5,.LC2
	ld	a4,0(a5)
	sd	a4,-72(s0)
	ld	a4,8(a5)
	sd	a4,-64(s0)
	ld	a5,16(a5)
	sd	a5,-56(s0)
	lla	a5,.LC14
	flw	fa5,0(a5)
	fsw	fa5,-168(s0)
	lla	a5,.LC15
	flw	fa5,0(a5)
	fsw	fa5,-164(s0)
	addi	a4,s0,-192
	addi	a5,s0,-72
	mv	a2,a4
	li	a1,6
	mv	a0,a5
	call	func0
	addi	a4,s0,-168
	addi	a5,s0,-192
	li	a2,2
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L24
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,59
	lla	a1,.LC9
	lla	a0,.LC16
	call	__assert_fail@plt
.L24:
	lla	a5,.LC3
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a4,8(a5)
	sd	a4,-40(s0)
	ld	a5,16(a5)
	sd	a5,-32(s0)
	lla	a5,.LC14
	flw	fa5,0(a5)
	fsw	fa5,-160(s0)
	lla	a5,.LC14
	flw	fa5,0(a5)
	fsw	fa5,-156(s0)
	addi	a4,s0,-192
	addi	a5,s0,-48
	mv	a2,a4
	li	a1,6
	mv	a0,a5
	call	func0
	addi	a4,s0,-160
	addi	a5,s0,-192
	li	a2,2
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L25
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,64
	lla	a1,.LC9
	lla	a0,.LC17
	call	__assert_fail@plt
.L25:
	lla	a5,.LC4
	ld	a4,0(a5)
	sd	a4,-120(s0)
	ld	a4,8(a5)
	sd	a4,-112(s0)
	lw	a5,16(a5)
	sw	a5,-104(s0)
	lla	a5,.LC15
	flw	fa5,0(a5)
	fsw	fa5,-152(s0)
	lla	a5,.LC18
	flw	fa5,0(a5)
	fsw	fa5,-148(s0)
	addi	a4,s0,-192
	addi	a5,s0,-120
	mv	a2,a4
	li	a1,5
	mv	a0,a5
	call	func0
	addi	a4,s0,-152
	addi	a5,s0,-192
	li	a2,2
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L26
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,69
	lla	a1,.LC9
	lla	a0,.LC19
	call	__assert_fail@plt
.L26:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L28
	call	__stack_chk_fail@plt
.L28:
	mv	a0,a4
	ld	ra,184(sp)
	ld	s0,176(sp)
	addi	sp,sp,192
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
	.word	2139095039
	.align	2
.LC6:
	.word	953267991
	.align	2
.LC7:
	.word	1081711002
	.align	2
.LC8:
	.word	1082130432
	.align	2
.LC11:
	.word	1084227584
	.align	2
.LC12:
	.word	1086115021
	.align	2
.LC14:
	.word	1073741824
	.align	2
.LC15:
	.word	1074580685
	.align	2
.LC18:
	.word	1078355558
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
