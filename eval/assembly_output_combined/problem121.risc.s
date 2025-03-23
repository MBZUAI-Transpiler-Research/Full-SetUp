	.file	"problem121.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64
	sd	s0,56(sp)
	addi	s0,sp,64
	sd	a0,-40(s0)
	mv	a5,a1
	mv	a4,a2
	sd	a3,-56(s0)
	sw	a5,-44(s0)
	mv	a5,a4
	sw	a5,-48(s0)
	sw	zero,-32(s0)
	j	.L2
.L6:
	sw	zero,-28(s0)
	j	.L3
.L5:
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-28(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	ble	a4,a5,.L4
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-20(s0)
	lw	a5,-28(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a4,a4,a5
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a3,-40(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-28(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,-20(s0)
	sw	a4,0(a5)
.L4:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L3:
	lw	a5,-44(s0)
	mv	a4,a5
	lw	a5,-32(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-28(s0)
	sext.w	a5,a5
	blt	a5,a4,.L5
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L2:
	lw	a5,-44(s0)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-32(s0)
	sext.w	a5,a5
	blt	a5,a4,.L6
	sw	zero,-24(s0)
	j	.L7
.L8:
	lw	a5,-44(s0)
	mv	a4,a5
	lw	a5,-48(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-24(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a4,a4,a5
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a3,-56(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L7:
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-48(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L8
	nop
	nop
	ld	s0,56(sp)
	addi	sp,sp,64
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
	sw	zero,-20(s0)
	j	.L10
.L13:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	beq	a4,a5,.L11
	li	a5,0
	j	.L12
.L11:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L10:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L13
	li	a5,1
.L12:
	mv	a0,a5
	ld	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC9:
	.string	"problem121.c"
	.align	3
.LC10:
	.string	"issame(out1, expected1, 3)"
	.align	3
.LC11:
	.string	"issame(out2, expected2, 2)"
	.align	3
.LC12:
	.string	"issame(out3, expected3, 1)"
	.align	3
.LC13:
	.string	"issame(out4, expected4, 3)"
	.align	3
.LC14:
	.string	"issame(out5, expected5, 4)"
	.align	3
.LC15:
	.string	"issame(out6, expected6, 7)"
	.align	3
.LC16:
	.string	"issame(out7, expected7, 2)"
	.align	3
.LC17:
	.string	"issame(out8, expected8, 1)"
	.align	3
.LC18:
	.string	"issame(out9, expected9, 2)"
	.align	3
.LC19:
	.string	"issame(out10, expected10, 2)"
	.align	3
.LC20:
	.string	"issame(out11, expected11, 0)"
	.align	3
.LC0:
	.word	-3
	.word	2
	.word	1
	.word	2
	.word	-1
	.word	-2
	.word	1
	.align	3
.LC1:
	.word	123
	.word	-123
	.word	20
	.word	0
	.word	1
	.word	2
	.word	-3
	.align	3
.LC2:
	.word	-123
	.word	20
	.word	0
	.word	1
	.word	2
	.word	-3
	.align	3
.LC3:
	.word	0
	.word	1
	.word	2
	.word	20
	.align	3
.LC4:
	.word	5
	.word	15
	.word	0
	.word	3
	.word	-13
	.word	-8
	.word	0
	.align	3
.LC5:
	.word	-13
	.word	-8
	.word	0
	.word	0
	.word	3
	.word	5
	.word	15
	.align	3
.LC6:
	.word	-1
	.word	0
	.word	2
	.word	5
	.word	3
	.word	-10
	.align	3
.LC7:
	.word	1
	.word	0
	.word	5
	.word	-7
	.align	3
.LC8:
	.word	1
	.word	2
	.word	3
	.word	-23
	.word	243
	.word	-400
	.word	0
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-544
	sd	ra,536(sp)
	sd	s0,528(sp)
	addi	s0,sp,544
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	li	a5,-3
	sw	a5,-408(s0)
	li	a5,-4
	sw	a5,-404(s0)
	li	a5,5
	sw	a5,-400(s0)
	addi	a4,s0,-392
	addi	a5,s0,-408
	mv	a3,a4
	li	a2,3
	li	a1,3
	mv	a0,a5
	call	func0
	li	a5,-4
	sw	a5,-376(s0)
	li	a5,-3
	sw	a5,-372(s0)
	li	a5,5
	sw	a5,-368(s0)
	addi	a4,s0,-376
	addi	a5,s0,-392
	li	a2,3
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,38
	lla	a1,.LC9
	lla	a0,.LC10
	call	__assert_fail@plt
.L15:
	li	a5,4
	sw	a5,-360(s0)
	li	a5,-4
	sw	a5,-356(s0)
	li	a5,4
	sw	a5,-352(s0)
	addi	a4,s0,-488
	addi	a5,s0,-360
	mv	a3,a4
	li	a2,2
	li	a1,3
	mv	a0,a5
	call	func0
	li	a5,4
	sw	a5,-480(s0)
	li	a5,4
	sw	a5,-476(s0)
	addi	a4,s0,-480
	addi	a5,s0,-488
	li	a2,2
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,44
	lla	a1,.LC9
	lla	a0,.LC11
	call	__assert_fail@plt
.L16:
	lla	a5,.LC0
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	sd	a2,-216(s0)
	sd	a3,-208(s0)
	sd	a4,-200(s0)
	lw	a5,24(a5)
	sw	a5,-192(s0)
	addi	a4,s0,-520
	addi	a5,s0,-216
	mv	a3,a4
	li	a2,1
	li	a1,7
	mv	a0,a5
	call	func0
	li	a5,2
	sw	a5,-512(s0)
	addi	a4,s0,-512
	addi	a5,s0,-520
	li	a2,1
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,50
	lla	a1,.LC9
	lla	a0,.LC12
	call	__assert_fail@plt
.L17:
	lla	a5,.LC1
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	sd	a2,-184(s0)
	sd	a3,-176(s0)
	sd	a4,-168(s0)
	lw	a5,24(a5)
	sw	a5,-160(s0)
	addi	a4,s0,-344
	addi	a5,s0,-184
	mv	a3,a4
	li	a2,3
	li	a1,7
	mv	a0,a5
	call	func0
	li	a5,2
	sw	a5,-328(s0)
	li	a5,20
	sw	a5,-324(s0)
	li	a5,123
	sw	a5,-320(s0)
	addi	a4,s0,-328
	addi	a5,s0,-344
	li	a2,3
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,56
	lla	a1,.LC9
	lla	a0,.LC13
	call	__assert_fail@plt
.L18:
	lla	a5,.LC2
	ld	a4,0(a5)
	sd	a4,-264(s0)
	ld	a4,8(a5)
	sd	a4,-256(s0)
	ld	a5,16(a5)
	sd	a5,-248(s0)
	addi	a4,s0,-312
	addi	a5,s0,-264
	mv	a3,a4
	li	a2,4
	li	a1,6
	mv	a0,a5
	call	func0
	lla	a5,.LC3
	ld	a4,0(a5)
	sd	a4,-296(s0)
	ld	a5,8(a5)
	sd	a5,-288(s0)
	addi	a4,s0,-296
	addi	a5,s0,-312
	li	a2,4
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L19
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,62
	lla	a1,.LC9
	lla	a0,.LC14
	call	__assert_fail@plt
.L19:
	lla	a5,.LC4
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	sd	a2,-152(s0)
	sd	a3,-144(s0)
	sd	a4,-136(s0)
	lw	a5,24(a5)
	sw	a5,-128(s0)
	addi	a4,s0,-120
	addi	a5,s0,-152
	mv	a3,a4
	li	a2,7
	li	a1,7
	mv	a0,a5
	call	func0
	lla	a5,.LC5
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	sd	a2,-88(s0)
	sd	a3,-80(s0)
	sd	a4,-72(s0)
	lw	a5,24(a5)
	sw	a5,-64(s0)
	addi	a4,s0,-88
	addi	a5,s0,-120
	li	a2,7
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L20
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,68
	lla	a1,.LC9
	lla	a0,.LC15
	call	__assert_fail@plt
.L20:
	lla	a5,.LC6
	ld	a4,0(a5)
	sd	a4,-240(s0)
	ld	a4,8(a5)
	sd	a4,-232(s0)
	ld	a5,16(a5)
	sd	a5,-224(s0)
	addi	a4,s0,-472
	addi	a5,s0,-240
	mv	a3,a4
	li	a2,2
	li	a1,6
	mv	a0,a5
	call	func0
	li	a5,3
	sw	a5,-464(s0)
	li	a5,5
	sw	a5,-460(s0)
	addi	a4,s0,-464
	addi	a5,s0,-472
	li	a2,2
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L21
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,74
	lla	a1,.LC9
	lla	a0,.LC16
	call	__assert_fail@plt
.L21:
	lla	a5,.LC7
	ld	a4,0(a5)
	sd	a4,-280(s0)
	ld	a5,8(a5)
	sd	a5,-272(s0)
	addi	a4,s0,-504
	addi	a5,s0,-280
	mv	a3,a4
	li	a2,1
	li	a1,4
	mv	a0,a5
	call	func0
	li	a5,5
	sw	a5,-496(s0)
	addi	a4,s0,-496
	addi	a5,s0,-504
	li	a2,1
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L22
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,80
	lla	a1,.LC9
	lla	a0,.LC17
	call	__assert_fail@plt
.L22:
	li	a5,4
	sw	a5,-456(s0)
	li	a5,-4
	sw	a5,-452(s0)
	addi	a4,s0,-448
	addi	a5,s0,-456
	mv	a3,a4
	li	a2,2
	li	a1,2
	mv	a0,a5
	call	func0
	li	a5,-4
	sw	a5,-440(s0)
	li	a5,4
	sw	a5,-436(s0)
	addi	a4,s0,-440
	addi	a5,s0,-448
	li	a2,2
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L23
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,86
	lla	a1,.LC9
	lla	a0,.LC18
	call	__assert_fail@plt
.L23:
	li	a5,-10
	sw	a5,-432(s0)
	li	a5,10
	sw	a5,-428(s0)
	addi	a4,s0,-424
	addi	a5,s0,-432
	mv	a3,a4
	li	a2,2
	li	a1,2
	mv	a0,a5
	call	func0
	li	a5,-10
	sw	a5,-416(s0)
	li	a5,10
	sw	a5,-412(s0)
	addi	a4,s0,-416
	addi	a5,s0,-424
	li	a2,2
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L24
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,92
	lla	a1,.LC9
	lla	a0,.LC19
	call	__assert_fail@plt
.L24:
	lla	a5,.LC8
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	lw	a5,24(a5)
	sw	a5,-32(s0)
	addi	a4,s0,-536
	addi	a5,s0,-56
	mv	a3,a4
	li	a2,0
	li	a1,7
	mv	a0,a5
	call	func0
	addi	a4,s0,-528
	addi	a5,s0,-536
	li	a2,0
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L25
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,98
	lla	a1,.LC9
	lla	a0,.LC20
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
	ld	ra,536(sp)
	ld	s0,528(sp)
	addi	sp,sp,544
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
