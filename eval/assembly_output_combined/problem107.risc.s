	.file	"problem107.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64
	sd	ra,56(sp)
	sd	s0,48(sp)
	addi	s0,sp,64
	mv	a5,a0
	sw	a5,-52(s0)
	lw	a5,-52(s0)
	slli	a5,a5,2
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	sw	zero,-36(s0)
	li	a5,1
	sw	a5,-32(s0)
	li	a5,1
	sw	a5,-28(s0)
	j	.L2
.L5:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	addw	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	mulw	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-28(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	bne	a5,zero,.L3
	lw	a5,-28(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a4,-32(s0)
	sw	a4,0(a5)
	j	.L4
.L3:
	lw	a5,-28(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a4,-36(s0)
	sw	a4,0(a5)
.L4:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L2:
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L5
	ld	a5,-24(s0)
	mv	a0,a5
	ld	ra,56(sp)
	ld	s0,48(sp)
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
	mv	a5,a1
	sd	a2,-56(s0)
	mv	a4,a3
	sw	a5,-44(s0)
	mv	a5,a4
	sw	a5,-48(s0)
	lw	a5,-44(s0)
	mv	a4,a5
	lw	a5,-48(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	beq	a4,a5,.L8
	li	a5,0
	j	.L9
.L8:
	sw	zero,-20(s0)
	j	.L10
.L12:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	beq	a4,a5,.L11
	li	a5,0
	j	.L9
.L11:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L10:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L12
	li	a5,1
.L9:
	mv	a0,a5
	ld	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC2:
	.string	"problem107.c"
	.align	3
.LC3:
	.string	"issame(result, 5, expected1, 5)"
	.align	3
.LC4:
	.string	"issame(result, 7, expected2, 7)"
	.align	3
.LC5:
	.string	"issame(result, 1, expected3, 1)"
	.align	3
.LC6:
	.string	"issame(result, 3, expected4, 3)"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	6
	.word	24
	.word	15
	.align	3
.LC1:
	.word	1
	.word	2
	.word	6
	.word	24
	.word	15
	.word	720
	.word	28
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-112
	sd	ra,104(sp)
	sd	s0,96(sp)
	addi	s0,sp,112
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-80(s0)
	ld	a4,8(a5)
	sd	a4,-72(s0)
	lw	a5,16(a5)
	sw	a5,-64(s0)
	li	a0,5
	call	func0
	sd	a0,-112(s0)
	addi	a5,s0,-80
	li	a3,5
	mv	a2,a5
	li	a1,5
	ld	a0,-112(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,34
	lla	a1,.LC2
	lla	a0,.LC3
	call	__assert_fail@plt
.L14:
	ld	a0,-112(s0)
	call	free@plt
	lla	a5,.LC1
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	lw	a5,24(a5)
	sw	a5,-32(s0)
	li	a0,7
	call	func0
	sd	a0,-112(s0)
	addi	a5,s0,-56
	li	a3,7
	mv	a2,a5
	li	a1,7
	ld	a0,-112(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,39
	lla	a1,.LC2
	lla	a0,.LC4
	call	__assert_fail@plt
.L15:
	ld	a0,-112(s0)
	call	free@plt
	li	a5,1
	sw	a5,-104(s0)
	li	a0,1
	call	func0
	sd	a0,-112(s0)
	addi	a5,s0,-104
	li	a3,1
	mv	a2,a5
	li	a1,1
	ld	a0,-112(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,44
	lla	a1,.LC2
	lla	a0,.LC5
	call	__assert_fail@plt
.L16:
	ld	a0,-112(s0)
	call	free@plt
	li	a5,1
	sw	a5,-96(s0)
	li	a5,2
	sw	a5,-92(s0)
	li	a5,6
	sw	a5,-88(s0)
	li	a0,3
	call	func0
	sd	a0,-112(s0)
	addi	a5,s0,-96
	li	a3,3
	mv	a2,a5
	li	a1,3
	ld	a0,-112(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,49
	lla	a1,.LC2
	lla	a0,.LC6
	call	__assert_fail@plt
.L17:
	ld	a0,-112(s0)
	call	free@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L19
	call	__stack_chk_fail@plt
.L19:
	mv	a0,a4
	ld	ra,104(sp)
	ld	s0,96(sp)
	addi	sp,sp,112
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
