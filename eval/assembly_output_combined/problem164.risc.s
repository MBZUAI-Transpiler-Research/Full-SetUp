	.file	"problem164.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64
	sd	s0,56(sp)
	addi	s0,sp,64
	mv	a5,a0
	mv	a4,a1
	sd	a2,-48(s0)
	sd	a3,-56(s0)
	sw	a5,-36(s0)
	mv	a5,a4
	sw	a5,-40(s0)
	ld	a5,-56(s0)
	sw	zero,0(a5)
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bge	a4,a5,.L2
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	lw	a5,-40(s0)
	sw	a5,-36(s0)
	lw	a5,-20(s0)
	sw	a5,-40(s0)
.L2:
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	j	.L3
.L5:
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,9
	bgt	a4,a5,.L4
	lw	a5,-24(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	bne	a5,zero,.L4
	ld	a5,-56(s0)
	lw	a5,0(a5)
	addiw	a4,a5,1
	sext.w	a3,a4
	ld	a4,-56(s0)
	sw	a3,0(a4)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a4,-24(s0)
	sw	a4,0(a5)
.L4:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L3:
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L5
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
	beq	a4,a5,.L7
	li	a5,0
	j	.L8
.L7:
	sw	zero,-20(s0)
	j	.L9
.L11:
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
	beq	a4,a5,.L10
	li	a5,0
	j	.L8
.L10:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L9:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L11
	li	a5,1
.L8:
	mv	a0,a5
	ld	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC1:
	.string	"problem164.c"
	.align	3
.LC2:
	.string	"issame(result, size, expected1, 4)"
	.align	3
.LC3:
	.string	"issame(result, size, expected2, 4)"
	.align	3
.LC4:
	.string	"issame(result, size, expected3, 4)"
	.align	3
.LC5:
	.string	"issame(result, size, expected4, 0)"
	.align	3
.LC6:
	.string	"All tests passed."
	.align	3
.LC0:
	.word	2
	.word	4
	.word	6
	.word	8
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
	sd	a4,-112(s0)
	ld	a5,8(a5)
	sd	a5,-104(s0)
	addi	a4,s0,-124
	addi	a5,s0,-64
	mv	a3,a4
	mv	a2,a5
	li	a1,10
	li	a0,2
	call	func0
	lw	a4,-124(s0)
	addi	a2,s0,-112
	addi	a5,s0,-64
	li	a3,4
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,37
	lla	a1,.LC1
	lla	a0,.LC2
	call	__assert_fail@plt
.L13:
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-96(s0)
	ld	a5,8(a5)
	sd	a5,-88(s0)
	addi	a4,s0,-124
	addi	a5,s0,-64
	mv	a3,a4
	mv	a2,a5
	li	a1,2
	li	a0,10
	call	func0
	lw	a4,-124(s0)
	addi	a2,s0,-96
	addi	a5,s0,-64
	li	a3,4
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,41
	lla	a1,.LC1
	lla	a0,.LC3
	call	__assert_fail@plt
.L14:
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-80(s0)
	ld	a5,8(a5)
	sd	a5,-72(s0)
	addi	a4,s0,-124
	addi	a5,s0,-64
	mv	a3,a4
	mv	a2,a5
	li	a1,2
	li	a0,132
	call	func0
	lw	a4,-124(s0)
	addi	a2,s0,-80
	addi	a5,s0,-64
	li	a3,4
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,45
	lla	a1,.LC1
	lla	a0,.LC4
	call	__assert_fail@plt
.L15:
	addi	a4,s0,-124
	addi	a5,s0,-64
	mv	a3,a4
	mv	a2,a5
	li	a1,89
	li	a0,17
	call	func0
	lw	a4,-124(s0)
	addi	a2,s0,-120
	addi	a5,s0,-64
	li	a3,0
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,49
	lla	a1,.LC1
	lla	a0,.LC5
	call	__assert_fail@plt
.L16:
	lla	a0,.LC6
	call	puts@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L18
	call	__stack_chk_fail@plt
.L18:
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
