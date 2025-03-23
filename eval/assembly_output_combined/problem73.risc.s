	.file	"problem73.c"
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
	mv	a4,a2
	sw	a5,-44(s0)
	mv	a5,a4
	sw	a5,-48(s0)
	sw	zero,-24(s0)
	sw	zero,-20(s0)
	j	.L2
.L5:
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
	li	a5,0
	j	.L4
.L3:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-44(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	lw	a3,-20(s0)
	subw	a5,a5,a3
	sext.w	a5,a5
	slli	a5,a5,2
	ld	a3,-40(s0)
	add	a5,a3,a5
	lw	a5,0(a5)
	addw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-24(s0)
	addw	a5,a4,a5
	sw	a5,-24(s0)
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
	blt	a5,a4,.L5
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
	bne	a4,a5,.L6
	lw	a5,-44(s0)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sext.w	a5,a5
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-24(s0)
	addw	a5,a4,a5
	sw	a5,-24(s0)
.L6:
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-48(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	sgt	a5,a4,a5
	xori	a5,a5,1
	andi	a5,a5,0xff
.L4:
	mv	a0,a5
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem73.c"
	.align	3
.LC1:
	.string	"func0(test1, 3, 9) == true"
	.align	3
.LC2:
	.string	"func0(test2, 2, 5) == false"
	.align	3
.LC3:
	.string	"func0(test3, 1, 5) == true"
	.align	3
.LC4:
	.string	"func0(test4, 3, 1) == false"
	.align	3
.LC5:
	.string	"func0(test5, 3, 6) == false"
	.align	3
.LC6:
	.string	"func0(test6, 1, 5) == true"
	.align	3
.LC7:
	.string	"All tests passed."
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
	li	a5,3
	sw	a5,-72(s0)
	li	a5,2
	sw	a5,-68(s0)
	li	a5,3
	sw	a5,-64(s0)
	addi	a5,s0,-72
	li	a2,9
	li	a1,3
	mv	a0,a5
	call	func0
	mv	a5,a0
	bne	a5,zero,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,22
	lla	a1,.LC0
	lla	a0,.LC1
	call	__assert_fail@plt
.L8:
	li	a5,1
	sw	a5,-80(s0)
	li	a5,2
	sw	a5,-76(s0)
	addi	a5,s0,-80
	li	a2,5
	li	a1,2
	mv	a0,a5
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,25
	lla	a1,.LC0
	lla	a0,.LC2
	call	__assert_fail@plt
.L9:
	li	a5,3
	sw	a5,-96(s0)
	addi	a5,s0,-96
	li	a2,5
	li	a1,1
	mv	a0,a5
	call	func0
	mv	a5,a0
	bne	a5,zero,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,28
	lla	a1,.LC0
	lla	a0,.LC3
	call	__assert_fail@plt
.L10:
	li	a5,3
	sw	a5,-56(s0)
	li	a5,2
	sw	a5,-52(s0)
	li	a5,3
	sw	a5,-48(s0)
	addi	a5,s0,-56
	li	a2,1
	li	a1,3
	mv	a0,a5
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,31
	lla	a1,.LC0
	lla	a0,.LC4
	call	__assert_fail@plt
.L11:
	li	a5,1
	sw	a5,-40(s0)
	li	a5,2
	sw	a5,-36(s0)
	li	a5,3
	sw	a5,-32(s0)
	addi	a5,s0,-40
	li	a2,6
	li	a1,3
	mv	a0,a5
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,34
	lla	a1,.LC0
	lla	a0,.LC5
	call	__assert_fail@plt
.L12:
	li	a5,5
	sw	a5,-88(s0)
	addi	a5,s0,-88
	li	a2,5
	li	a1,1
	mv	a0,a5
	call	func0
	mv	a5,a0
	bne	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,37
	lla	a1,.LC0
	lla	a0,.LC6
	call	__assert_fail@plt
.L13:
	lla	a0,.LC7
	call	puts@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L15
	call	__stack_chk_fail@plt
.L15:
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
