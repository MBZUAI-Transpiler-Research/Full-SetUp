	.file	"problem91.c"
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
	lw	a5,-44(s0)
	sext.w	a4,a5
	li	a5,1
	bgt	a4,a5,.L2
	li	a5,-1
	j	.L3
.L2:
	li	a5,-2147483648
	xori	a5,a5,-1
	sw	a5,-28(s0)
	li	a5,-2147483648
	xori	a5,a5,-1
	sw	a5,-24(s0)
	sw	zero,-20(s0)
	j	.L4
.L7:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-28(s0)
	sext.w	a5,a5
	ble	a5,a4,.L5
	lw	a5,-28(s0)
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-28(s0)
	j	.L6
.L5:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-24(s0)
	sext.w	a5,a5
	ble	a5,a4,.L6
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-28(s0)
	sext.w	a5,a5
	beq	a5,a4,.L6
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-24(s0)
.L6:
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
	sext.w	a4,a5
	li	a5,-2147483648
	xori	a5,a5,-1
	bne	a4,a5,.L8
	li	a5,-1
	j	.L3
.L8:
	lw	a5,-24(s0)
.L3:
	mv	a0,a5
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC4:
	.string	"problem91.c"
	.align	3
.LC5:
	.string	"func0(test1, 5) == 2"
	.align	3
.LC6:
	.string	"func0(test2, 5) == 2"
	.align	3
.LC7:
	.string	"func0((int[]){}, 0) == -1"
	.align	3
.LC8:
	.string	"func0(test4, 2) == -1"
	.align	3
.LC9:
	.string	"func0(test5, 5) == 1"
	.align	3
.LC10:
	.string	"func0(test6, 4) == -35"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.align	3
.LC1:
	.word	5
	.word	1
	.word	4
	.word	3
	.word	2
	.align	3
.LC2:
	.word	1
	.word	1
	.word	1
	.word	1
	.word	0
	.align	3
.LC3:
	.word	-35
	.word	34
	.word	12
	.word	-45
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
	sd	a4,-96(s0)
	ld	a4,8(a5)
	sd	a4,-88(s0)
	lw	a5,16(a5)
	sw	a5,-80(s0)
	addi	a5,s0,-96
	li	a1,5
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,2
	beq	a4,a5,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,27
	lla	a1,.LC4
	lla	a0,.LC5
	call	__assert_fail@plt
.L10:
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-72(s0)
	ld	a4,8(a5)
	sd	a4,-64(s0)
	lw	a5,16(a5)
	sw	a5,-56(s0)
	addi	a5,s0,-72
	li	a1,5
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,2
	beq	a4,a5,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,30
	lla	a1,.LC4
	lla	a0,.LC6
	call	__assert_fail@plt
.L11:
	addi	a5,s0,-48
	li	a1,0
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,-1
	beq	a4,a5,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,32
	lla	a1,.LC4
	lla	a0,.LC7
	call	__assert_fail@plt
.L12:
	li	a5,1
	sw	a5,-120(s0)
	li	a5,1
	sw	a5,-116(s0)
	addi	a5,s0,-120
	li	a1,2
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,-1
	beq	a4,a5,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,35
	lla	a1,.LC4
	lla	a0,.LC8
	call	__assert_fail@plt
.L13:
	lla	a5,.LC2
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a4,8(a5)
	sd	a4,-40(s0)
	lw	a5,16(a5)
	sw	a5,-32(s0)
	addi	a5,s0,-48
	li	a1,5
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,38
	lla	a1,.LC4
	lla	a0,.LC9
	call	__assert_fail@plt
.L14:
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
	mv	a4,a5
	li	a5,-35
	beq	a4,a5,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,41
	lla	a1,.LC4
	lla	a0,.LC10
	call	__assert_fail@plt
.L15:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L17
	call	__stack_chk_fail@plt
.L17:
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
