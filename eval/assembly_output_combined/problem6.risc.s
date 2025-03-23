	.file	"problem6.c"
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
	sd	a0,-40(s0)
	mv	a5,a1
	mv	a4,a2
	sd	a3,-56(s0)
	sw	a5,-44(s0)
	mv	a5,a4
	sw	a5,-48(s0)
	lw	a5,-44(s0)
	sext.w	a5,a5
	ble	a5,zero,.L2
	lw	a5,-44(s0)
	slliw	a5,a5,1
	sext.w	a5,a5
	addiw	a5,a5,-1
	sext.w	a5,a5
	j	.L3
.L2:
	li	a5,0
.L3:
	ld	a4,-56(s0)
	sw	a5,0(a4)
	ld	a5,-56(s0)
	lw	a5,0(a5)
	slli	a5,a5,2
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	lw	a5,-44(s0)
	sext.w	a5,a5
	ble	a5,zero,.L4
	ld	a5,-40(s0)
	lw	a4,0(a5)
	ld	a5,-24(s0)
	sw	a4,0(a5)
.L4:
	li	a5,1
	sw	a5,-32(s0)
	li	a5,1
	sw	a5,-28(s0)
	j	.L5
.L6:
	lw	a5,-28(s0)
	addiw	a4,a5,1
	sw	a4,-28(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a4,-48(s0)
	sw	a4,0(a5)
	lw	a5,-32(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a4,a4,a5
	lw	a5,-28(s0)
	addiw	a3,a5,1
	sw	a3,-28(s0)
	slli	a5,a5,2
	ld	a3,-24(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L5:
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L6
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
	sd	a1,-48(s0)
	mv	a5,a2
	mv	a4,a3
	sw	a5,-52(s0)
	mv	a5,a4
	sw	a5,-56(s0)
	lw	a5,-52(s0)
	mv	a4,a5
	lw	a5,-56(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	beq	a4,a5,.L9
	li	a5,0
	j	.L10
.L9:
	sw	zero,-20(s0)
	j	.L11
.L13:
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
	beq	a4,a5,.L12
	li	a5,0
	j	.L10
.L12:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L11:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L13
	li	a5,1
.L10:
	mv	a0,a5
	ld	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC3:
	.string	"problem6.c"
	.align	3
.LC4:
	.string	"issame(result_empty, (const int[]){}, out_size, 0)"
	.align	3
.LC5:
	.string	"issame(result1, result_expected1, out_size, 7)"
	.align	3
.LC6:
	.string	"issame(result2, result_expected2, out_size, 5)"
	.align	3
.LC0:
	.word	5
	.word	8
	.word	6
	.word	8
	.word	3
	.word	8
	.word	2
	.align	3
.LC1:
	.word	5
	.word	6
	.word	3
	.word	2
	.align	3
.LC2:
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
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
	addi	a4,s0,-148
	addi	a5,s0,-120
	mv	a3,a4
	li	a2,7
	li	a1,0
	mv	a0,a5
	call	func0
	sd	a0,-144(s0)
	lw	a4,-148(s0)
	addi	a5,s0,-56
	li	a3,0
	mv	a2,a4
	mv	a1,a5
	ld	a0,-144(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,34
	lla	a1,.LC3
	lla	a0,.LC4
	call	__assert_fail@plt
.L15:
	ld	a0,-144(s0)
	call	free@plt
	lla	a5,.LC0
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	lw	a5,24(a5)
	sw	a5,-32(s0)
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-96(s0)
	ld	a5,8(a5)
	sd	a5,-88(s0)
	addi	a4,s0,-148
	addi	a5,s0,-96
	mv	a3,a4
	li	a2,8
	li	a1,4
	mv	a0,a5
	call	func0
	sd	a0,-136(s0)
	lw	a4,-148(s0)
	addi	a5,s0,-56
	li	a3,7
	mv	a2,a4
	mv	a1,a5
	ld	a0,-136(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,40
	lla	a1,.LC3
	lla	a0,.LC5
	call	__assert_fail@plt
.L16:
	ld	a0,-136(s0)
	call	free@plt
	lla	a5,.LC2
	ld	a4,0(a5)
	sd	a4,-80(s0)
	ld	a4,8(a5)
	sd	a4,-72(s0)
	lw	a5,16(a5)
	sw	a5,-64(s0)
	li	a5,2
	sw	a5,-112(s0)
	li	a5,2
	sw	a5,-108(s0)
	li	a5,2
	sw	a5,-104(s0)
	addi	a4,s0,-148
	addi	a5,s0,-112
	mv	a3,a4
	li	a2,2
	li	a1,3
	mv	a0,a5
	call	func0
	sd	a0,-128(s0)
	lw	a4,-148(s0)
	addi	a5,s0,-80
	li	a3,5
	mv	a2,a4
	mv	a1,a5
	ld	a0,-128(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,46
	lla	a1,.LC3
	lla	a0,.LC6
	call	__assert_fail@plt
.L17:
	ld	a0,-128(s0)
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
