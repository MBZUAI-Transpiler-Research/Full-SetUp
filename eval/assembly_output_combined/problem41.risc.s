	.file	"problem41.c"
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
.L9:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
	j	.L3
.L8:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
	j	.L4
.L7:
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a3,-40(s0)
	add	a5,a3,a5
	lw	a5,0(a5)
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a3,-40(s0)
	add	a5,a3,a5
	lw	a5,0(a5)
	addw	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L5
	li	a5,1
	j	.L6
.L5:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L4:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L7
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L3:
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L8
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L2:
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L9
	li	a5,0
.L6:
	mv	a0,a5
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC8:
	.string	"problem41.c"
	.align	3
.LC9:
	.string	"func0(test1, 4) == false"
	.align	3
.LC10:
	.string	"func0(test2, 4) == false"
	.align	3
.LC11:
	.string	"func0(test3, 4) == true"
	.align	3
.LC12:
	.string	"func0(test4, 4) == false"
	.align	3
.LC13:
	.string	"func0(test5, 4) == false"
	.align	3
.LC14:
	.string	"func0(test6, 6) == true"
	.align	3
.LC15:
	.string	"func0(test7, 1) == false"
	.align	3
.LC16:
	.string	"func0(test8, 4) == false"
	.align	3
.LC17:
	.string	"func0(test9, 4) == false"
	.align	3
.LC0:
	.word	1
	.word	3
	.word	5
	.word	0
	.align	3
.LC1:
	.word	1
	.word	3
	.word	5
	.word	-1
	.align	3
.LC2:
	.word	1
	.word	3
	.word	-2
	.word	1
	.align	3
.LC3:
	.word	1
	.word	2
	.word	3
	.word	7
	.align	3
.LC4:
	.word	1
	.word	2
	.word	5
	.word	7
	.align	3
.LC5:
	.word	2
	.word	4
	.word	-5
	.word	3
	.word	9
	.word	7
	.align	3
.LC6:
	.word	1
	.word	3
	.word	5
	.word	-100
	.align	3
.LC7:
	.word	100
	.word	3
	.word	5
	.word	-100
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-176
	sd	ra,168(sp)
	sd	s0,160(sp)
	addi	s0,sp,176
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-160(s0)
	ld	a5,8(a5)
	sd	a5,-152(s0)
	addi	a5,s0,-160
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,20
	lla	a1,.LC8
	lla	a0,.LC9
	call	__assert_fail@plt
.L11:
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-144(s0)
	ld	a5,8(a5)
	sd	a5,-136(s0)
	addi	a5,s0,-144
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,23
	lla	a1,.LC8
	lla	a0,.LC10
	call	__assert_fail@plt
.L12:
	lla	a5,.LC2
	ld	a4,0(a5)
	sd	a4,-128(s0)
	ld	a5,8(a5)
	sd	a5,-120(s0)
	addi	a5,s0,-128
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	bne	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,26
	lla	a1,.LC8
	lla	a0,.LC11
	call	__assert_fail@plt
.L13:
	lla	a5,.LC3
	ld	a4,0(a5)
	sd	a4,-112(s0)
	ld	a5,8(a5)
	sd	a5,-104(s0)
	addi	a5,s0,-112
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,29
	lla	a1,.LC8
	lla	a0,.LC12
	call	__assert_fail@plt
.L14:
	lla	a5,.LC4
	ld	a4,0(a5)
	sd	a4,-96(s0)
	ld	a5,8(a5)
	sd	a5,-88(s0)
	addi	a5,s0,-96
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,32
	lla	a1,.LC8
	lla	a0,.LC13
	call	__assert_fail@plt
.L15:
	lla	a5,.LC5
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a4,8(a5)
	sd	a4,-40(s0)
	ld	a5,16(a5)
	sd	a5,-32(s0)
	addi	a5,s0,-48
	li	a1,6
	mv	a0,a5
	call	func0
	mv	a5,a0
	bne	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,35
	lla	a1,.LC8
	lla	a0,.LC14
	call	__assert_fail@plt
.L16:
	li	a5,1
	sw	a5,-168(s0)
	addi	a5,s0,-168
	li	a1,1
	mv	a0,a5
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,38
	lla	a1,.LC8
	lla	a0,.LC15
	call	__assert_fail@plt
.L17:
	lla	a5,.LC6
	ld	a4,0(a5)
	sd	a4,-80(s0)
	ld	a5,8(a5)
	sd	a5,-72(s0)
	addi	a5,s0,-80
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,41
	lla	a1,.LC8
	lla	a0,.LC16
	call	__assert_fail@plt
.L18:
	lla	a5,.LC7
	ld	a4,0(a5)
	sd	a4,-64(s0)
	ld	a5,8(a5)
	sd	a5,-56(s0)
	addi	a5,s0,-64
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L19
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,44
	lla	a1,.LC8
	lla	a0,.LC17
	call	__assert_fail@plt
.L19:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L21
	call	__stack_chk_fail@plt
.L21:
	mv	a0,a4
	ld	ra,168(sp)
	ld	s0,160(sp)
	addi	sp,sp,176
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
