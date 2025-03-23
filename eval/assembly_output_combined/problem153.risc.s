	.file	"problem153.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64
	sd	s0,56(sp)
	addi	s0,sp,64
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	mv	a5,a3
	sw	a5,-60(s0)
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
	ld	a3,-48(s0)
	add	a5,a3,a5
	lw	a5,0(a5)
	subw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a3,-56(s0)
	add	a3,a3,a5
	sraiw	a5,a4,31
	xor	a4,a4,a5
	subw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,0(a3)
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L3
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
	sd	a1,-48(s0)
	mv	a5,a2
	sw	a5,-52(s0)
	sw	zero,-20(s0)
	j	.L5
.L8:
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
	beq	a4,a5,.L6
	li	a5,0
	j	.L7
.L6:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L5:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L8
	li	a5,1
.L7:
	mv	a0,a5
	ld	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC9:
	.string	"problem153.c"
	.align	3
.LC10:
	.string	"issame(result, (int[]){0,0,0,0,3,3}, 6)"
	.align	3
.LC11:
	.string	"issame(result, (int[]){4,4,1,0,0,6}, 6)"
	.align	3
.LC12:
	.string	"issame(result, (int[]){0,0,0,0,0,0}, 6)"
	.align	3
.LC13:
	.string	"issame(result, (int[]){2,4,6}, 3)"
	.align	3
.LC14:
	.string	"issame(result, (int[]){2,0,0,1}, 4)"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	1
	.align	3
.LC1:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	2
	.word	-2
	.align	3
.LC2:
	.word	0
	.word	0
	.word	0
	.word	0
	.word	3
	.word	3
	.align	3
.LC3:
	.word	0
	.word	5
	.word	0
	.word	0
	.word	0
	.word	4
	.align	3
.LC4:
	.word	4
	.word	1
	.word	1
	.word	0
	.word	0
	.word	-2
	.align	3
.LC5:
	.word	4
	.word	4
	.word	1
	.word	0
	.word	0
	.word	6
	.align	3
.LC6:
	.word	1
	.word	2
	.word	3
	.word	5
	.align	3
.LC7:
	.word	-1
	.word	2
	.word	3
	.word	4
	.align	3
.LC8:
	.word	2
	.word	0
	.word	0
	.word	1
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-336
	sd	ra,328(sp)
	sd	s0,320(sp)
	addi	s0,sp,336
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-240(s0)
	ld	a4,8(a5)
	sd	a4,-232(s0)
	ld	a5,16(a5)
	sd	a5,-224(s0)
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-216(s0)
	ld	a4,8(a5)
	sd	a4,-208(s0)
	ld	a5,16(a5)
	sd	a5,-200(s0)
	addi	a2,s0,-264
	addi	a4,s0,-216
	addi	a5,s0,-240
	li	a3,6
	mv	a1,a4
	mv	a0,a5
	call	func0
	lla	a5,.LC2
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a4,8(a5)
	sd	a4,-40(s0)
	ld	a5,16(a5)
	sd	a5,-32(s0)
	addi	a4,s0,-48
	addi	a5,s0,-264
	li	a2,6
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,26
	lla	a1,.LC9
	lla	a0,.LC10
	call	__assert_fail@plt
.L10:
	lla	a5,.LC3
	ld	a4,0(a5)
	sd	a4,-192(s0)
	ld	a4,8(a5)
	sd	a4,-184(s0)
	ld	a5,16(a5)
	sd	a5,-176(s0)
	lla	a5,.LC4
	ld	a4,0(a5)
	sd	a4,-168(s0)
	ld	a4,8(a5)
	sd	a4,-160(s0)
	ld	a5,16(a5)
	sd	a5,-152(s0)
	addi	a2,s0,-264
	addi	a4,s0,-168
	addi	a5,s0,-192
	li	a3,6
	mv	a1,a4
	mv	a0,a5
	call	func0
	lla	a5,.LC5
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a4,8(a5)
	sd	a4,-40(s0)
	ld	a5,16(a5)
	sd	a5,-32(s0)
	addi	a4,s0,-48
	addi	a5,s0,-264
	li	a2,6
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,29
	lla	a1,.LC9
	lla	a0,.LC11
	call	__assert_fail@plt
.L11:
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-144(s0)
	ld	a4,8(a5)
	sd	a4,-136(s0)
	ld	a5,16(a5)
	sd	a5,-128(s0)
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-120(s0)
	ld	a4,8(a5)
	sd	a4,-112(s0)
	ld	a5,16(a5)
	sd	a5,-104(s0)
	addi	a2,s0,-264
	addi	a4,s0,-120
	addi	a5,s0,-144
	li	a3,6
	mv	a1,a4
	mv	a0,a5
	call	func0
	lla	a5,.LC2
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a4,8(a5)
	sd	a4,-40(s0)
	ld	a5,16(a5)
	sd	a5,-32(s0)
	addi	a4,s0,-48
	addi	a5,s0,-264
	li	a2,6
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,32
	lla	a1,.LC9
	lla	a0,.LC10
	call	__assert_fail@plt
.L12:
	sw	zero,-96(s0)
	sw	zero,-92(s0)
	sw	zero,-88(s0)
	sw	zero,-84(s0)
	sw	zero,-80(s0)
	sw	zero,-76(s0)
	sw	zero,-72(s0)
	sw	zero,-68(s0)
	sw	zero,-64(s0)
	sw	zero,-60(s0)
	sw	zero,-56(s0)
	sw	zero,-52(s0)
	addi	a2,s0,-264
	addi	a4,s0,-72
	addi	a5,s0,-96
	li	a3,6
	mv	a1,a4
	mv	a0,a5
	call	func0
	sw	zero,-48(s0)
	sw	zero,-44(s0)
	sw	zero,-40(s0)
	sw	zero,-36(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	addi	a4,s0,-48
	addi	a5,s0,-264
	li	a2,6
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,35
	lla	a1,.LC9
	lla	a0,.LC12
	call	__assert_fail@plt
.L13:
	li	a5,1
	sw	a5,-328(s0)
	li	a5,2
	sw	a5,-324(s0)
	li	a5,3
	sw	a5,-320(s0)
	li	a5,-1
	sw	a5,-312(s0)
	li	a5,-2
	sw	a5,-308(s0)
	li	a5,-3
	sw	a5,-304(s0)
	addi	a2,s0,-264
	addi	a4,s0,-312
	addi	a5,s0,-328
	li	a3,3
	mv	a1,a4
	mv	a0,a5
	call	func0
	li	a5,2
	sw	a5,-48(s0)
	li	a5,4
	sw	a5,-44(s0)
	li	a5,6
	sw	a5,-40(s0)
	addi	a4,s0,-48
	addi	a5,s0,-264
	li	a2,3
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,38
	lla	a1,.LC9
	lla	a0,.LC13
	call	__assert_fail@plt
.L14:
	lla	a5,.LC6
	ld	a4,0(a5)
	sd	a4,-296(s0)
	ld	a5,8(a5)
	sd	a5,-288(s0)
	lla	a5,.LC7
	ld	a4,0(a5)
	sd	a4,-280(s0)
	ld	a5,8(a5)
	sd	a5,-272(s0)
	addi	a2,s0,-264
	addi	a4,s0,-280
	addi	a5,s0,-296
	li	a3,4
	mv	a1,a4
	mv	a0,a5
	call	func0
	lla	a5,.LC8
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a5,8(a5)
	sd	a5,-40(s0)
	addi	a4,s0,-48
	addi	a5,s0,-264
	li	a2,4
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,41
	lla	a1,.LC9
	lla	a0,.LC14
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
	ld	ra,328(sp)
	ld	s0,320(sp)
	addi	sp,sp,336
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
