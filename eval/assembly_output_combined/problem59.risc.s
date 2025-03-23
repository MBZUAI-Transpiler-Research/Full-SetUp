	.file	"problem59.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-80
	sd	ra,72(sp)
	sd	s0,64(sp)
	addi	s0,sp,80
	sd	a0,-56(s0)
	mv	a5,a1
	sd	a2,-72(s0)
	sd	a4,-80(s0)
	sw	a5,-60(s0)
	mv	a5,a3
	sw	a5,-64(s0)
	lw	a5,-60(s0)
	slli	a5,a5,2
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	sw	zero,-48(s0)
	sw	zero,-44(s0)
	j	.L2
.L11:
	sw	zero,-32(s0)
	sw	zero,-36(s0)
	j	.L3
.L6:
	lw	a5,-36(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-44(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	bne	a4,a5,.L4
	li	a5,1
	sw	a5,-32(s0)
	j	.L5
.L4:
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L3:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-48(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L6
.L5:
	lw	a5,-32(s0)
	sext.w	a5,a5
	bne	a5,zero,.L7
	sw	zero,-40(s0)
	j	.L8
.L10:
	lw	a5,-44(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-40(s0)
	slli	a5,a5,2
	ld	a4,-72(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	bne	a4,a5,.L9
	lw	a5,-44(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a4,a4,a5
	lw	a5,-48(s0)
	addiw	a3,a5,1
	sw	a3,-48(s0)
	slli	a5,a5,2
	ld	a3,-24(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	j	.L7
.L9:
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sw	a5,-40(s0)
.L8:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-64(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L10
.L7:
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
.L2:
	lw	a5,-44(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L11
	sw	zero,-44(s0)
	j	.L12
.L16:
	sw	zero,-40(s0)
	j	.L13
.L15:
	lw	a5,-40(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-40(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	ble	a4,a5,.L14
	lw	a5,-40(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-28(s0)
	lw	a5,-40(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a4,a4,a5
	lw	a5,-40(s0)
	slli	a5,a5,2
	ld	a3,-24(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-40(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a4,-28(s0)
	sw	a4,0(a5)
.L14:
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sw	a5,-40(s0)
.L13:
	lw	a5,-48(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-40(s0)
	sext.w	a5,a5
	blt	a5,a4,.L15
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
.L12:
	lw	a5,-48(s0)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-44(s0)
	sext.w	a5,a5
	blt	a5,a4,.L16
	ld	a5,-80(s0)
	lw	a4,-48(s0)
	sw	a4,0(a5)
	ld	a5,-24(s0)
	mv	a0,a5
	ld	ra,72(sp)
	ld	s0,64(sp)
	addi	sp,sp,80
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC4:
	.string	"problem59.c"
	.align	3
.LC5:
	.string	"result1[i] == expected1[i]"
	.align	3
.LC6:
	.string	"result2[i] == expected2[i]"
	.align	3
.LC7:
	.string	"result3[i] == expected3[i]"
	.align	3
.LC8:
	.string	"size == 0"
	.align	3
.LC0:
	.word	1
	.word	4
	.word	3
	.word	34
	.word	653
	.word	2
	.word	5
	.align	3
.LC1:
	.word	5
	.word	7
	.word	1
	.word	5
	.word	9
	.word	653
	.word	121
	.align	3
.LC2:
	.word	5
	.word	3
	.word	2
	.word	8
	.align	3
.LC3:
	.word	4
	.word	3
	.word	2
	.word	8
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-256
	sd	ra,248(sp)
	sd	s0,240(sp)
	addi	s0,sp,256
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC0
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	sd	a2,-88(s0)
	sd	a3,-80(s0)
	sd	a4,-72(s0)
	lw	a5,24(a5)
	sw	a5,-64(s0)
	lla	a5,.LC1
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	lw	a5,24(a5)
	sw	a5,-32(s0)
	li	a5,1
	sw	a5,-184(s0)
	li	a5,5
	sw	a5,-180(s0)
	li	a5,653
	sw	a5,-176(s0)
	addi	a4,s0,-256
	addi	a2,s0,-56
	addi	a5,s0,-88
	li	a3,7
	li	a1,7
	mv	a0,a5
	call	func0
	sd	a0,-240(s0)
	sw	zero,-252(s0)
	j	.L19
.L21:
	lw	a5,-252(s0)
	slli	a5,a5,2
	ld	a4,-240(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-252(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-168(a5)
	beq	a4,a5,.L20
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,54
	lla	a1,.LC4
	lla	a0,.LC5
	call	__assert_fail@plt
.L20:
	lw	a5,-252(s0)
	addiw	a5,a5,1
	sw	a5,-252(s0)
.L19:
	lw	a4,-256(s0)
	lw	a5,-252(s0)
	sext.w	a5,a5
	blt	a5,a4,.L21
	ld	a0,-240(s0)
	call	free@plt
	lla	a5,.LC2
	ld	a4,0(a5)
	sd	a4,-136(s0)
	ld	a5,8(a5)
	sd	a5,-128(s0)
	li	a5,3
	sw	a5,-200(s0)
	li	a5,2
	sw	a5,-196(s0)
	li	a5,2
	sw	a5,-192(s0)
	li	a5,3
	sw	a5,-188(s0)
	addi	a4,s0,-256
	addi	a2,s0,-200
	addi	a5,s0,-136
	li	a3,2
	li	a1,4
	mv	a0,a5
	call	func0
	sd	a0,-232(s0)
	sw	zero,-248(s0)
	j	.L22
.L24:
	lw	a5,-248(s0)
	slli	a5,a5,2
	ld	a4,-232(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-248(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-176(a5)
	beq	a4,a5,.L23
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,63
	lla	a1,.LC4
	lla	a0,.LC6
	call	__assert_fail@plt
.L23:
	lw	a5,-248(s0)
	addiw	a5,a5,1
	sw	a5,-248(s0)
.L22:
	lw	a4,-256(s0)
	lw	a5,-248(s0)
	sext.w	a5,a5
	blt	a5,a4,.L24
	ld	a0,-232(s0)
	call	free@plt
	lla	a5,.LC3
	ld	a4,0(a5)
	sd	a4,-120(s0)
	ld	a5,8(a5)
	sd	a5,-112(s0)
	li	a5,3
	sw	a5,-168(s0)
	li	a5,2
	sw	a5,-164(s0)
	li	a5,4
	sw	a5,-160(s0)
	li	a5,2
	sw	a5,-152(s0)
	li	a5,3
	sw	a5,-148(s0)
	li	a5,4
	sw	a5,-144(s0)
	addi	a4,s0,-256
	addi	a2,s0,-168
	addi	a5,s0,-120
	li	a3,3
	li	a1,4
	mv	a0,a5
	call	func0
	sd	a0,-224(s0)
	sw	zero,-244(s0)
	j	.L25
.L27:
	lw	a5,-244(s0)
	slli	a5,a5,2
	ld	a4,-224(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-244(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-136(a5)
	beq	a4,a5,.L26
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,72
	lla	a1,.LC4
	lla	a0,.LC7
	call	__assert_fail@plt
.L26:
	lw	a5,-244(s0)
	addiw	a5,a5,1
	sw	a5,-244(s0)
.L25:
	lw	a4,-256(s0)
	lw	a5,-244(s0)
	sext.w	a5,a5
	blt	a5,a4,.L27
	ld	a0,-224(s0)
	call	free@plt
	lla	a5,.LC3
	ld	a4,0(a5)
	sd	a4,-104(s0)
	ld	a5,8(a5)
	sd	a5,-96(s0)
	addi	a4,s0,-256
	addi	a2,s0,-208
	addi	a5,s0,-104
	li	a3,0
	li	a1,4
	mv	a0,a5
	call	func0
	sd	a0,-216(s0)
	lw	a5,-256(s0)
	beq	a5,zero,.L28
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,79
	lla	a1,.LC4
	lla	a0,.LC8
	call	__assert_fail@plt
.L28:
	ld	a0,-216(s0)
	call	free@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L30
	call	__stack_chk_fail@plt
.L30:
	mv	a0,a4
	ld	ra,248(sp)
	ld	s0,240(sp)
	addi	sp,sp,256
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
