	.file	"problem124.c"
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
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	sw	a5,-36(s0)
	li	a5,10
	sw	a5,-32(s0)
	ld	a5,-56(s0)
	li	a4,1
	sw	a4,0(a5)
	ld	a5,-48(s0)
	li	a4,1
	sw	a4,0(a5)
	j	.L2
.L5:
	lw	a5,-36(s0)
	mv	a4,a5
	sraiw	a5,a4,31
	srliw	a5,a5,31
	addw	a4,a4,a5
	andi	a4,a4,1
	subw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,1
	bne	a4,a5,.L3
	ld	a5,-56(s0)
	lw	a4,0(a5)
	lw	a5,-32(s0)
	sext.w	a5,a5
	bgt	a5,a4,.L4
	lw	a5,-32(s0)
	slliw	a5,a5,1
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	slli	a5,a5,2
	mv	a1,a5
	ld	a0,-48(s0)
	call	realloc@plt
	sd	a0,-48(s0)
.L4:
	ld	a5,-56(s0)
	lw	a5,0(a5)
	addiw	a4,a5,1
	sext.w	a3,a4
	ld	a4,-56(s0)
	sw	a3,0(a4)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a4,-36(s0)
	sw	a4,0(a5)
	lw	a5,-36(s0)
	mv	a4,a5
	mv	a5,a4
	slliw	a5,a5,1
	addw	a5,a5,a4
	sext.w	a5,a5
	addiw	a5,a5,1
	sw	a5,-36(s0)
	j	.L2
.L3:
	lw	a5,-36(s0)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sw	a5,-36(s0)
.L2:
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,1
	bne	a4,a5,.L5
	li	a5,1
	sw	a5,-28(s0)
	j	.L6
.L10:
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-20(s0)
	lw	a5,-28(s0)
	addiw	a5,a5,-1
	sw	a5,-24(s0)
	j	.L7
.L9:
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a4,a4,a5
	lw	a5,-24(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a3,-48(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	addiw	a5,a5,-1
	sw	a5,-24(s0)
.L7:
	lw	a5,-24(s0)
	sext.w	a5,a5
	blt	a5,zero,.L8
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-20(s0)
	sext.w	a5,a5
	blt	a5,a4,.L9
.L8:
	lw	a5,-24(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a4,-20(s0)
	sw	a4,0(a5)
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L6:
	ld	a5,-56(s0)
	lw	a4,0(a5)
	lw	a5,-28(s0)
	sext.w	a5,a5
	blt	a5,a4,.L10
	nop
	nop
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
	beq	a4,a5,.L12
	li	a5,0
	j	.L13
.L12:
	sw	zero,-20(s0)
	j	.L14
.L16:
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
	beq	a4,a5,.L15
	li	a5,0
	j	.L13
.L15:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L14:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L16
	li	a5,1
.L13:
	mv	a0,a5
	ld	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC1:
	.string	"problem124.c"
	.align	3
.LC2:
	.string	"issame(result, size, expected1, 6)"
	.align	3
.LC3:
	.string	"issame(result, size, expected2, 2)"
	.align	3
.LC4:
	.string	"issame(result, size, expected3, 3)"
	.align	3
.LC5:
	.string	"issame(result, size, expected4, 1)"
	.align	3
.LC0:
	.word	1
	.word	5
	.word	7
	.word	11
	.word	13
	.word	17
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
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a4,8(a5)
	sd	a4,-40(s0)
	ld	a5,16(a5)
	sd	a5,-32(s0)
	li	a0,400
	call	malloc@plt
	mv	a5,a0
	sd	a5,-88(s0)
	addi	a5,s0,-92
	mv	a2,a5
	ld	a1,-88(s0)
	li	a0,14
	call	func0
	lw	a5,-92(s0)
	addi	a4,s0,-48
	li	a3,6
	mv	a2,a4
	mv	a1,a5
	ld	a0,-88(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,55
	lla	a1,.LC1
	lla	a0,.LC2
	call	__assert_fail@plt
.L18:
	ld	a0,-88(s0)
	call	free@plt
	li	a5,1
	sw	a5,-72(s0)
	li	a5,5
	sw	a5,-68(s0)
	li	a0,400
	call	malloc@plt
	mv	a5,a0
	sd	a5,-88(s0)
	addi	a5,s0,-92
	mv	a2,a5
	ld	a1,-88(s0)
	li	a0,5
	call	func0
	lw	a5,-92(s0)
	addi	a4,s0,-72
	li	a3,2
	mv	a2,a4
	mv	a1,a5
	ld	a0,-88(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L19
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,62
	lla	a1,.LC1
	lla	a0,.LC3
	call	__assert_fail@plt
.L19:
	ld	a0,-88(s0)
	call	free@plt
	li	a5,1
	sw	a5,-64(s0)
	li	a5,3
	sw	a5,-60(s0)
	li	a5,5
	sw	a5,-56(s0)
	li	a0,400
	call	malloc@plt
	mv	a5,a0
	sd	a5,-88(s0)
	addi	a5,s0,-92
	mv	a2,a5
	ld	a1,-88(s0)
	li	a0,12
	call	func0
	lw	a5,-92(s0)
	addi	a4,s0,-64
	li	a3,3
	mv	a2,a4
	mv	a1,a5
	ld	a0,-88(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L20
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,69
	lla	a1,.LC1
	lla	a0,.LC4
	call	__assert_fail@plt
.L20:
	ld	a0,-88(s0)
	call	free@plt
	li	a5,1
	sw	a5,-80(s0)
	li	a0,400
	call	malloc@plt
	mv	a5,a0
	sd	a5,-88(s0)
	addi	a5,s0,-92
	mv	a2,a5
	ld	a1,-88(s0)
	li	a0,1
	call	func0
	lw	a5,-92(s0)
	addi	a4,s0,-80
	li	a3,1
	mv	a2,a4
	mv	a1,a5
	ld	a0,-88(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L21
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,76
	lla	a1,.LC1
	lla	a0,.LC5
	call	__assert_fail@plt
.L21:
	ld	a0,-88(s0)
	call	free@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L23
	call	__stack_chk_fail@plt
.L23:
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
