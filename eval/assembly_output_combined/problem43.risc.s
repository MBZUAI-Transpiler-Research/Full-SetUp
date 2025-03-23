	.file	"problem43.c"
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
	sw	zero,-20(s0)
	j	.L2
.L3:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a3,-40(s0)
	add	a5,a3,a5
	addiw	a4,a4,1
	sext.w	a4,a4
	sw	a4,0(a5)
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L3
	nop
	nop
	ld	s0,40(sp)
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
	beq	a4,a5,.L5
	li	a5,0
	j	.L6
.L5:
	sw	zero,-20(s0)
	j	.L7
.L9:
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
	beq	a4,a5,.L8
	li	a5,0
	j	.L6
.L8:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L7:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L9
	li	a5,1
.L6:
	mv	a0,a5
	ld	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC2:
	.string	"problem43.c"
	.align	3
.LC3:
	.string	"issame(list1, 0, result1, 0)"
	.align	3
.LC4:
	.string	"issame(list2, 3, result2, 3)"
	.align	3
.LC5:
	.string	"issame(list3, 9, result3, 9)"
	.align	3
.LC0:
	.word	5
	.word	2
	.word	5
	.word	2
	.word	3
	.word	3
	.word	9
	.word	0
	.word	123
	.align	3
.LC1:
	.word	6
	.word	3
	.word	6
	.word	3
	.word	4
	.word	4
	.word	10
	.word	1
	.word	124
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-160
	sd	ra,152(sp)
	sd	s0,144(sp)
	addi	s0,sp,160
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	addi	a5,s0,-152
	li	a1,0
	mv	a0,a5
	call	func0
	addi	a4,s0,-144
	addi	a5,s0,-152
	li	a3,0
	mv	a2,a4
	li	a1,0
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,25
	lla	a1,.LC2
	lla	a0,.LC3
	call	__assert_fail@plt
.L11:
	li	a5,3
	sw	a5,-136(s0)
	li	a5,2
	sw	a5,-132(s0)
	li	a5,1
	sw	a5,-128(s0)
	li	a5,4
	sw	a5,-120(s0)
	li	a5,3
	sw	a5,-116(s0)
	li	a5,2
	sw	a5,-112(s0)
	addi	a5,s0,-136
	li	a1,3
	mv	a0,a5
	call	func0
	addi	a4,s0,-120
	addi	a5,s0,-136
	li	a3,3
	mv	a2,a4
	li	a1,3
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,30
	lla	a1,.LC2
	lla	a0,.LC4
	call	__assert_fail@plt
.L12:
	lla	a5,.LC0
	ld	a1,0(a5)
	ld	a2,8(a5)
	ld	a3,16(a5)
	ld	a4,24(a5)
	sd	a1,-104(s0)
	sd	a2,-96(s0)
	sd	a3,-88(s0)
	sd	a4,-80(s0)
	lw	a5,32(a5)
	sw	a5,-72(s0)
	lla	a5,.LC1
	ld	a1,0(a5)
	ld	a2,8(a5)
	ld	a3,16(a5)
	ld	a4,24(a5)
	sd	a1,-64(s0)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	lw	a5,32(a5)
	sw	a5,-32(s0)
	addi	a5,s0,-104
	li	a1,9
	mv	a0,a5
	call	func0
	addi	a4,s0,-64
	addi	a5,s0,-104
	li	a3,9
	mv	a2,a4
	li	a1,9
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,35
	lla	a1,.LC2
	lla	a0,.LC5
	call	__assert_fail@plt
.L13:
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
	ld	ra,152(sp)
	ld	s0,144(sp)
	addi	sp,sp,160
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
