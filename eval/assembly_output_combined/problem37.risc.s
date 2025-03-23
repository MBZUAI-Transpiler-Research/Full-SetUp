	.file	"problem37.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-48
	sd	s0,40(sp)
	addi	s0,sp,48
	mv	a5,a0
	sw	a5,-36(s0)
	sw	zero,-28(s0)
	sw	zero,-24(s0)
	j	.L2
.L8:
	lw	a5,-24(s0)
	mv	a4,a5
	li	a5,11
	remw	a5,a4,a5
	sext.w	a5,a5
	beq	a5,zero,.L3
	lw	a5,-24(s0)
	mv	a4,a5
	li	a5,13
	remw	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L4
.L3:
	lw	a5,-24(s0)
	sw	a5,-20(s0)
	j	.L5
.L7:
	lw	a5,-20(s0)
	mv	a4,a5
	li	a5,10
	remw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,7
	bne	a4,a5,.L6
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L6:
	lw	a5,-20(s0)
	mv	a4,a5
	li	a5,10
	divw	a5,a4,a5
	sw	a5,-20(s0)
.L5:
	lw	a5,-20(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L7
.L4:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L2:
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L8
	lw	a5,-28(s0)
	mv	a0,a5
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem37.c"
	.align	3
.LC1:
	.string	"func0(50) == 0"
	.align	3
.LC2:
	.string	"func0(78) == 2"
	.align	3
.LC3:
	.string	"func0(79) == 3"
	.align	3
.LC4:
	.string	"func0(100) == 3"
	.align	3
.LC5:
	.string	"func0(200) == 6"
	.align	3
.LC6:
	.string	"func0(4000) == 192"
	.align	3
.LC7:
	.string	"func0(10000) == 639"
	.align	3
.LC8:
	.string	"func0(100000) == 8026"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	addi	s0,sp,16
	li	a0,50
	call	func0
	mv	a5,a0
	beq	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,22
	lla	a1,.LC0
	lla	a0,.LC1
	call	__assert_fail@plt
.L11:
	li	a0,78
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,2
	beq	a4,a5,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,23
	lla	a1,.LC0
	lla	a0,.LC2
	call	__assert_fail@plt
.L12:
	li	a0,79
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,3
	beq	a4,a5,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,24
	lla	a1,.LC0
	lla	a0,.LC3
	call	__assert_fail@plt
.L13:
	li	a0,100
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,3
	beq	a4,a5,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,25
	lla	a1,.LC0
	lla	a0,.LC4
	call	__assert_fail@plt
.L14:
	li	a0,200
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,6
	beq	a4,a5,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,26
	lla	a1,.LC0
	lla	a0,.LC5
	call	__assert_fail@plt
.L15:
	li	a5,4096
	addi	a0,a5,-96
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,192
	beq	a4,a5,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,27
	lla	a1,.LC0
	lla	a0,.LC6
	call	__assert_fail@plt
.L16:
	li	a5,8192
	addi	a0,a5,1808
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,639
	beq	a4,a5,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,28
	lla	a1,.LC0
	lla	a0,.LC7
	call	__assert_fail@plt
.L17:
	li	a5,98304
	addi	a0,a5,1696
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,8192
	addi	a5,a5,-166
	beq	a4,a5,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,29
	lla	a1,.LC0
	lla	a0,.LC8
	call	__assert_fail@plt
.L18:
	li	a5,0
	mv	a0,a5
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
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
