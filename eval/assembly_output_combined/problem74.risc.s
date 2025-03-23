	.file	"problem74.c"
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
	sw	zero,-24(s0)
	sw	zero,-20(s0)
	j	.L2
.L4:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-44(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	lw	a4,-20(s0)
	subw	a5,a5,a4
	sext.w	a5,a5
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	beq	a4,a5,.L3
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L3:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a5,-44(s0)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sext.w	a4,a5
	lw	a5,-20(s0)
	sext.w	a5,a5
	blt	a5,a4,.L4
	lw	a5,-24(s0)
	mv	a0,a5
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC5:
	.string	"problem74.c"
	.align	3
.LC6:
	.string	"func0(test1, 8) == 4"
	.align	3
.LC7:
	.string	"func0(test2, 7) == 1"
	.align	3
.LC8:
	.string	"func0(test3, 3) == 1"
	.align	3
.LC9:
	.string	"func0(test4, 4) == 1"
	.align	3
.LC10:
	.string	"func0(test5, 5) == 0"
	.align	3
.LC11:
	.string	"func0(test6, 4) == 0"
	.align	3
.LC12:
	.string	"func0(test7, 1) == 0"
	.align	3
.LC13:
	.string	"func0(test8, 2) == 1"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	3
	.word	5
	.word	4
	.word	7
	.word	9
	.word	6
	.align	3
.LC1:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	3
	.word	2
	.word	2
	.align	3
.LC2:
	.word	1
	.word	4
	.word	4
	.word	2
	.align	3
.LC3:
	.word	1
	.word	2
	.word	3
	.word	2
	.word	1
	.align	3
.LC4:
	.word	3
	.word	1
	.word	1
	.word	3
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
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	sd	a5,-32(s0)
	addi	a5,s0,-56
	li	a1,8
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,4
	beq	a4,a5,.L7
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,20
	lla	a1,.LC5
	lla	a0,.LC6
	call	__assert_fail@plt
.L7:
	lla	a5,.LC1
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	sd	a2,-88(s0)
	sd	a3,-80(s0)
	sd	a4,-72(s0)
	lw	a5,24(a5)
	sw	a5,-64(s0)
	addi	a5,s0,-88
	li	a1,7
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,23
	lla	a1,.LC5
	lla	a0,.LC7
	call	__assert_fail@plt
.L8:
	li	a5,1
	sw	a5,-160(s0)
	li	a5,4
	sw	a5,-156(s0)
	li	a5,2
	sw	a5,-152(s0)
	addi	a5,s0,-160
	li	a1,3
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,26
	lla	a1,.LC5
	lla	a0,.LC8
	call	__assert_fail@plt
.L9:
	lla	a5,.LC2
	ld	a4,0(a5)
	sd	a4,-144(s0)
	ld	a5,8(a5)
	sd	a5,-136(s0)
	addi	a5,s0,-144
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,29
	lla	a1,.LC5
	lla	a0,.LC9
	call	__assert_fail@plt
.L10:
	lla	a5,.LC3
	ld	a4,0(a5)
	sd	a4,-112(s0)
	ld	a4,8(a5)
	sd	a4,-104(s0)
	lw	a5,16(a5)
	sw	a5,-96(s0)
	addi	a5,s0,-112
	li	a1,5
	mv	a0,a5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,32
	lla	a1,.LC5
	lla	a0,.LC10
	call	__assert_fail@plt
.L11:
	lla	a5,.LC4
	ld	a4,0(a5)
	sd	a4,-128(s0)
	ld	a5,8(a5)
	sd	a5,-120(s0)
	addi	a5,s0,-128
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,35
	lla	a1,.LC5
	lla	a0,.LC11
	call	__assert_fail@plt
.L12:
	li	a5,1
	sw	a5,-176(s0)
	addi	a5,s0,-176
	li	a1,1
	mv	a0,a5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,38
	lla	a1,.LC5
	lla	a0,.LC12
	call	__assert_fail@plt
.L13:
	sw	zero,-168(s0)
	li	a5,1
	sw	a5,-164(s0)
	addi	a5,s0,-168
	li	a1,2
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,41
	lla	a1,.LC5
	lla	a0,.LC13
	call	__assert_fail@plt
.L14:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L16
	call	__stack_chk_fail@plt
.L16:
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
