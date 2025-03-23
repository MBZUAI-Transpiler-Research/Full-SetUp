	.file	"problem117.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64
	sd	s0,56(sp)
	addi	s0,sp,64
	sd	a0,-56(s0)
	mv	a5,a1
	sw	a5,-60(s0)
	sw	zero,-28(s0)
	j	.L2
.L11:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
	j	.L3
.L10:
	sw	zero,-40(s0)
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-36(s0)
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-32(s0)
	j	.L4
.L5:
	lw	a5,-36(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	lw	a4,-40(s0)
	addw	a5,a4,a5
	sw	a5,-40(s0)
	lw	a5,-36(s0)
	sraiw	a5,a5,1
	sw	a5,-36(s0)
.L4:
	lw	a5,-36(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L5
	lw	a5,-40(s0)
	sw	a5,-36(s0)
	sw	zero,-40(s0)
	j	.L6
.L7:
	lw	a5,-32(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	lw	a4,-40(s0)
	addw	a5,a4,a5
	sw	a5,-40(s0)
	lw	a5,-32(s0)
	sraiw	a5,a5,1
	sw	a5,-32(s0)
.L6:
	lw	a5,-32(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L7
	lw	a5,-40(s0)
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L8
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bne	a4,a5,.L9
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	bge	a4,a5,.L9
.L8:
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a4,a4,a5
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a3,-56(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a4,-20(s0)
	sw	a4,0(a5)
.L9:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L3:
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L10
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L2:
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L11
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
	beq	a4,a5,.L13
	li	a5,0
	j	.L14
.L13:
	sw	zero,-20(s0)
	j	.L15
.L17:
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
	beq	a4,a5,.L16
	li	a5,0
	j	.L14
.L16:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L15:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L17
	li	a5,1
.L14:
	mv	a0,a5
	ld	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC9:
	.string	"problem117.c"
	.align	3
.LC10:
	.string	"issame(test1, 5, expected1, 5)"
	.align	3
.LC11:
	.string	"issame(test3, 5, expected3, 5)"
	.align	3
.LC12:
	.string	"issame(test4, 11, expected4, 11)"
	.align	3
.LC13:
	.string	"issame(test5, 6, expected5, 6)"
	.align	3
.LC14:
	.string	"issame(test6, 5, expected6, 5)"
	.align	3
.LC15:
	.string	"All tests passed!"
	.align	3
.LC0:
	.word	1
	.word	5
	.word	2
	.word	3
	.word	4
	.align	3
.LC1:
	.word	1
	.word	2
	.word	4
	.word	3
	.word	5
	.align	3
.LC2:
	.word	1
	.word	0
	.word	2
	.word	3
	.word	4
	.align	3
.LC3:
	.word	0
	.word	1
	.word	2
	.word	4
	.word	3
	.align	3
.LC4:
	.word	2
	.word	5
	.word	77
	.word	4
	.word	5
	.word	3
	.word	5
	.word	7
	.word	2
	.word	3
	.word	4
	.align	3
.LC5:
	.word	2
	.word	2
	.word	4
	.word	4
	.word	3
	.word	3
	.word	5
	.word	5
	.word	5
	.word	7
	.word	77
	.align	3
.LC6:
	.word	3
	.word	6
	.word	44
	.word	12
	.word	32
	.word	5
	.align	3
.LC7:
	.word	32
	.word	3
	.word	5
	.word	6
	.word	12
	.word	44
	.align	3
.LC8:
	.word	2
	.word	4
	.word	8
	.word	16
	.word	32
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-320
	sd	ra,312(sp)
	sd	s0,304(sp)
	addi	s0,sp,320
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-312(s0)
	ld	a4,8(a5)
	sd	a4,-304(s0)
	lw	a5,16(a5)
	sw	a5,-296(s0)
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-288(s0)
	ld	a4,8(a5)
	sd	a4,-280(s0)
	lw	a5,16(a5)
	sw	a5,-272(s0)
	addi	a5,s0,-312
	li	a1,5
	mv	a0,a5
	call	func0
	addi	a4,s0,-288
	addi	a5,s0,-312
	li	a3,5
	mv	a2,a4
	li	a1,5
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L19
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,48
	lla	a1,.LC9
	lla	a0,.LC10
	call	__assert_fail@plt
.L19:
	lla	a5,.LC2
	ld	a4,0(a5)
	sd	a4,-264(s0)
	ld	a4,8(a5)
	sd	a4,-256(s0)
	lw	a5,16(a5)
	sw	a5,-248(s0)
	lla	a5,.LC3
	ld	a4,0(a5)
	sd	a4,-240(s0)
	ld	a4,8(a5)
	sd	a4,-232(s0)
	lw	a5,16(a5)
	sw	a5,-224(s0)
	addi	a5,s0,-264
	li	a1,5
	mv	a0,a5
	call	func0
	addi	a4,s0,-240
	addi	a5,s0,-264
	li	a3,5
	mv	a2,a4
	li	a1,5
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L20
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,53
	lla	a1,.LC9
	lla	a0,.LC11
	call	__assert_fail@plt
.L20:
	lla	a5,.LC4
	ld	a0,0(a5)
	ld	a1,8(a5)
	ld	a2,16(a5)
	ld	a3,24(a5)
	ld	a4,32(a5)
	sd	a0,-120(s0)
	sd	a1,-112(s0)
	sd	a2,-104(s0)
	sd	a3,-96(s0)
	sd	a4,-88(s0)
	lw	a5,40(a5)
	sw	a5,-80(s0)
	lla	a5,.LC5
	ld	a0,0(a5)
	ld	a1,8(a5)
	ld	a2,16(a5)
	ld	a3,24(a5)
	ld	a4,32(a5)
	sd	a0,-72(s0)
	sd	a1,-64(s0)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	lw	a5,40(a5)
	sw	a5,-32(s0)
	addi	a5,s0,-120
	li	a1,11
	mv	a0,a5
	call	func0
	addi	a4,s0,-72
	addi	a5,s0,-120
	li	a3,11
	mv	a2,a4
	li	a1,11
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L21
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,58
	lla	a1,.LC9
	lla	a0,.LC12
	call	__assert_fail@plt
.L21:
	lla	a5,.LC6
	ld	a4,0(a5)
	sd	a4,-168(s0)
	ld	a4,8(a5)
	sd	a4,-160(s0)
	ld	a5,16(a5)
	sd	a5,-152(s0)
	lla	a5,.LC7
	ld	a4,0(a5)
	sd	a4,-144(s0)
	ld	a4,8(a5)
	sd	a4,-136(s0)
	ld	a5,16(a5)
	sd	a5,-128(s0)
	addi	a5,s0,-168
	li	a1,6
	mv	a0,a5
	call	func0
	addi	a4,s0,-144
	addi	a5,s0,-168
	li	a3,6
	mv	a2,a4
	li	a1,6
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L22
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,63
	lla	a1,.LC9
	lla	a0,.LC13
	call	__assert_fail@plt
.L22:
	lla	a5,.LC8
	ld	a4,0(a5)
	sd	a4,-216(s0)
	ld	a4,8(a5)
	sd	a4,-208(s0)
	lw	a5,16(a5)
	sw	a5,-200(s0)
	lla	a5,.LC8
	ld	a4,0(a5)
	sd	a4,-192(s0)
	ld	a4,8(a5)
	sd	a4,-184(s0)
	lw	a5,16(a5)
	sw	a5,-176(s0)
	addi	a5,s0,-216
	li	a1,5
	mv	a0,a5
	call	func0
	addi	a4,s0,-192
	addi	a5,s0,-216
	li	a3,5
	mv	a2,a4
	li	a1,5
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L23
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,68
	lla	a1,.LC9
	lla	a0,.LC14
	call	__assert_fail@plt
.L23:
	lla	a0,.LC15
	call	puts@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L25
	call	__stack_chk_fail@plt
.L25:
	mv	a0,a4
	ld	ra,312(sp)
	ld	s0,304(sp)
	addi	sp,sp,320
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
