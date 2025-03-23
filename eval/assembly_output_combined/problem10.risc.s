	.file	"problem10.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	addi	s0,sp,48
	sd	a0,-40(s0)
	mv	a5,a1
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L2
	li	a5,0
	j	.L3
.L2:
	lw	a5,-44(s0)
	slli	a5,a5,2
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	ld	a5,-24(s0)
	bne	a5,zero,.L4
	li	a5,0
	j	.L3
.L4:
	ld	a5,-40(s0)
	lw	a5,0(a5)
	sw	a5,-32(s0)
	sw	zero,-28(s0)
	j	.L5
.L7:
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-32(s0)
	sext.w	a5,a5
	bge	a5,a4,.L6
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-32(s0)
.L6:
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a4,-32(s0)
	sw	a4,0(a5)
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L5:
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L7
	ld	a5,-24(s0)
.L3:
	mv	a0,a5
	ld	ra,40(sp)
	ld	s0,32(sp)
	addi	sp,sp,48
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
	j	.L9
.L12:
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
	beq	a4,a5,.L10
	li	a5,0
	j	.L11
.L10:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L9:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L12
	li	a5,1
.L11:
	mv	a0,a5
	ld	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC5:
	.string	"problem10.c"
	.align	3
.LC6:
	.string	"result == NULL"
	.align	3
.LC7:
	.string	"issame(result, (int[]){1, 2, 3, 4}, 4)"
	.align	3
.LC8:
	.string	"issame(result, (int[]){4, 4, 4, 4}, 4)"
	.align	3
.LC9:
	.string	"issame(result, (int[]){3, 3, 3, 100, 100}, 5)"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.align	3
.LC1:
	.word	4
	.word	3
	.word	2
	.word	1
	.align	3
.LC2:
	.word	4
	.word	4
	.word	4
	.word	4
	.align	3
.LC3:
	.word	3
	.word	2
	.word	3
	.word	100
	.word	3
	.align	3
.LC4:
	.word	3
	.word	3
	.word	3
	.word	100
	.word	100
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
	addi	a5,s0,-112
	li	a1,0
	mv	a0,a5
	call	func0
	sd	a0,-120(s0)
	ld	a5,-120(s0)
	beq	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,40
	lla	a1,.LC5
	lla	a0,.LC6
	call	__assert_fail@plt
.L14:
	ld	a0,-120(s0)
	call	free@plt
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-104(s0)
	ld	a5,8(a5)
	sd	a5,-96(s0)
	addi	a5,s0,-104
	li	a1,4
	mv	a0,a5
	call	func0
	sd	a0,-120(s0)
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a5,8(a5)
	sd	a5,-40(s0)
	addi	a5,s0,-48
	li	a2,4
	mv	a1,a5
	ld	a0,-120(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,46
	lla	a1,.LC5
	lla	a0,.LC7
	call	__assert_fail@plt
.L15:
	ld	a0,-120(s0)
	call	free@plt
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-88(s0)
	ld	a5,8(a5)
	sd	a5,-80(s0)
	addi	a5,s0,-88
	li	a1,4
	mv	a0,a5
	call	func0
	sd	a0,-120(s0)
	lla	a5,.LC2
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a5,8(a5)
	sd	a5,-40(s0)
	addi	a5,s0,-48
	li	a2,4
	mv	a1,a5
	ld	a0,-120(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,52
	lla	a1,.LC5
	lla	a0,.LC8
	call	__assert_fail@plt
.L16:
	ld	a0,-120(s0)
	call	free@plt
	lla	a5,.LC3
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
	sd	a0,-120(s0)
	lla	a5,.LC4
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a4,8(a5)
	sd	a4,-40(s0)
	lw	a5,16(a5)
	sw	a5,-32(s0)
	addi	a5,s0,-48
	li	a2,5
	mv	a1,a5
	ld	a0,-120(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,58
	lla	a1,.LC5
	lla	a0,.LC9
	call	__assert_fail@plt
.L17:
	ld	a0,-120(s0)
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
