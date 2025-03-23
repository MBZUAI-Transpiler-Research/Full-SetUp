	.file	"problem54.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	mv	a5,a0
	mv	a4,a1
	sw	a5,-20(s0)
	mv	a5,a4
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem54.c"
	.align	3
.LC1:
	.string	"func0(0, 1) == 1"
	.align	3
.LC2:
	.string	"func0(1, 0) == 1"
	.align	3
.LC3:
	.string	"func0(2, 3) == 5"
	.align	3
.LC4:
	.string	"func0(5, 7) == 12"
	.align	3
.LC5:
	.string	"func0(7, 5) == 12"
	.align	3
.LC6:
	.string	"func0(x, y) == x + y"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	addi	s0,sp,32
	li	a1,1
	li	a0,0
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L4
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,13
	lla	a1,.LC0
	lla	a0,.LC1
	call	__assert_fail@plt
.L4:
	li	a1,0
	li	a0,1
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L5
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,14
	lla	a1,.LC0
	lla	a0,.LC2
	call	__assert_fail@plt
.L5:
	li	a1,3
	li	a0,2
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,5
	beq	a4,a5,.L6
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,15
	lla	a1,.LC0
	lla	a0,.LC3
	call	__assert_fail@plt
.L6:
	li	a1,7
	li	a0,5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,12
	beq	a4,a5,.L7
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,16
	lla	a1,.LC0
	lla	a0,.LC4
	call	__assert_fail@plt
.L7:
	li	a1,5
	li	a0,7
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,12
	beq	a4,a5,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,17
	lla	a1,.LC0
	lla	a0,.LC5
	call	__assert_fail@plt
.L8:
	sw	zero,-28(s0)
	j	.L9
.L11:
	call	rand@plt
	mv	a5,a0
	mv	a4,a5
	li	a5,1000
	remw	a5,a4,a5
	sw	a5,-24(s0)
	call	rand@plt
	mv	a5,a0
	mv	a4,a5
	li	a5,1000
	remw	a5,a4,a5
	sw	a5,-20(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	mv	a1,a4
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a3,a5
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a3
	beq	a4,a5,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,21
	lla	a1,.LC0
	lla	a0,.LC6
	call	__assert_fail@plt
.L10:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L9:
	lw	a5,-28(s0)
	sext.w	a4,a5
	li	a5,99
	ble	a4,a5,.L11
	li	a5,0
	mv	a0,a5
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
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
