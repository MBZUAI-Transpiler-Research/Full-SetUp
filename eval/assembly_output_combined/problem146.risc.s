	.file	"problem146.c"
	.option pic
	.text
	.section	.rodata
	.align	3
.LC10:
	.string	"%d"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-96
	sd	ra,88(sp)
	sd	s0,80(sp)
	addi	s0,sp,96
	sd	a0,-88(s0)
	mv	a5,a1
	sw	a5,-92(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lw	a5,-92(s0)
	slli	a5,a5,2
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-48(s0)
	sw	zero,-76(s0)
	j	.L2
.L7:
	lw	a5,-76(s0)
	slli	a5,a5,2
	ld	a4,-88(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	sraiw	a5,a4,31
	xor	a4,a4,a5
	subw	a5,a4,a5
	sext.w	a4,a5
	addi	a5,s0,-40
	mv	a2,a4
	lla	a1,.LC10
	mv	a0,a5
	call	sprintf@plt
	sw	zero,-72(s0)
	addi	a5,s0,-40
	mv	a0,a5
	call	strlen@plt
	mv	a5,a0
	sw	a5,-52(s0)
	li	a5,1
	sw	a5,-68(s0)
	j	.L3
.L4:
	lw	a5,-68(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-24(a5)
	sext.w	a5,a5
	addiw	a5,a5,-48
	sext.w	a5,a5
	lw	a4,-72(s0)
	addw	a5,a4,a5
	sw	a5,-72(s0)
	lw	a5,-68(s0)
	addiw	a5,a5,1
	sw	a5,-68(s0)
.L3:
	lw	a5,-68(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L4
	lw	a5,-76(s0)
	slli	a5,a5,2
	ld	a4,-88(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	ble	a5,zero,.L5
	lbu	a5,-40(s0)
	sext.w	a5,a5
	addiw	a5,a5,-48
	sext.w	a5,a5
	lw	a4,-72(s0)
	addw	a5,a4,a5
	sw	a5,-72(s0)
	j	.L6
.L5:
	lbu	a5,-40(s0)
	sext.w	a5,a5
	addiw	a5,a5,-48
	sext.w	a5,a5
	lw	a4,-72(s0)
	subw	a5,a4,a5
	sw	a5,-72(s0)
.L6:
	lw	a5,-76(s0)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a4,-72(s0)
	sw	a4,0(a5)
	lw	a5,-76(s0)
	addiw	a5,a5,1
	sw	a5,-76(s0)
.L2:
	lw	a5,-76(s0)
	mv	a4,a5
	lw	a5,-92(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L7
	sw	zero,-64(s0)
	j	.L8
.L12:
	li	a5,1
	sw	a5,-60(s0)
	j	.L9
.L11:
	lw	a5,-60(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-60(s0)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	ble	a4,a5,.L10
	lw	a5,-60(s0)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-56(s0)
	lw	a5,-60(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a4,-48(s0)
	add	a4,a4,a5
	lw	a5,-60(s0)
	slli	a5,a5,2
	ld	a3,-48(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-60(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a4,-56(s0)
	sw	a4,0(a5)
	lw	a5,-60(s0)
	slli	a5,a5,2
	ld	a4,-88(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-56(s0)
	lw	a5,-60(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a4,-88(s0)
	add	a4,a4,a5
	lw	a5,-60(s0)
	slli	a5,a5,2
	ld	a3,-88(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-60(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a4,-88(s0)
	add	a5,a4,a5
	lw	a4,-56(s0)
	sw	a4,0(a5)
.L10:
	lw	a5,-60(s0)
	addiw	a5,a5,1
	sw	a5,-60(s0)
.L9:
	lw	a5,-60(s0)
	mv	a4,a5
	lw	a5,-92(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L11
	lw	a5,-64(s0)
	addiw	a5,a5,1
	sw	a5,-64(s0)
.L8:
	lw	a5,-64(s0)
	mv	a4,a5
	lw	a5,-92(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L12
	ld	a0,-48(s0)
	call	free@plt
	ld	a5,-88(s0)
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L14
	call	__stack_chk_fail@plt
.L14:
	mv	a0,a4
	ld	ra,88(sp)
	ld	s0,80(sp)
	addi	sp,sp,96
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
	beq	a4,a5,.L16
	li	a5,0
	j	.L17
.L16:
	sw	zero,-20(s0)
	j	.L18
.L20:
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
	beq	a4,a5,.L19
	li	a5,0
	j	.L17
.L19:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L18:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L20
	li	a5,1
.L17:
	mv	a0,a5
	ld	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC11:
	.string	"problem146.c"
	.align	3
.LC12:
	.string	"issame(func0(test1, 5), expected1, 5, 5)"
	.align	3
.LC13:
	.string	"issame(func0(test2, 15), expected2, 15, 15)"
	.align	3
.LC14:
	.string	"issame(func0(test3, 0), expected3, 0, 0)"
	.align	3
.LC15:
	.string	"issame(func0(test4, 8), expected4, 8, 8)"
	.align	3
.LC16:
	.string	"issame(func0(test5, 11), expected5, 11, 11)"
	.align	3
.LC17:
	.string	"issame(func0(test6, 7), expected6, 7, 7)"
	.align	3
.LC18:
	.string	"All tests passed!"
	.align	3
.LC0:
	.word	1
	.word	11
	.word	-1
	.word	-11
	.word	-12
	.align	3
.LC1:
	.word	-1
	.word	-11
	.word	1
	.word	-12
	.word	11
	.align	3
.LC2:
	.word	1234
	.word	423
	.word	463
	.word	145
	.word	2
	.word	423
	.word	423
	.word	53
	.word	6
	.word	37
	.word	3457
	.word	3
	.word	56
	.word	0
	.word	46
	.align	3
.LC3:
	.word	0
	.word	2
	.word	3
	.word	6
	.word	53
	.word	423
	.word	423
	.word	423
	.word	1234
	.word	145
	.word	37
	.word	46
	.word	56
	.word	463
	.word	3457
	.align	3
.LC4:
	.word	1
	.word	-11
	.word	-32
	.word	43
	.word	54
	.word	-98
	.word	2
	.word	-3
	.align	3
.LC5:
	.word	-3
	.word	-32
	.word	-98
	.word	-11
	.word	1
	.word	2
	.word	43
	.word	54
	.align	3
.LC6:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.align	3
.LC7:
	.word	1
	.word	10
	.word	2
	.word	11
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.align	3
.LC8:
	.word	0
	.word	6
	.word	6
	.word	-76
	.word	-21
	.word	23
	.word	4
	.align	3
.LC9:
	.word	-76
	.word	-21
	.word	0
	.word	4
	.word	23
	.word	6
	.word	6
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-448
	sd	ra,440(sp)
	sd	s0,432(sp)
	addi	s0,sp,448
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-424(s0)
	ld	a4,8(a5)
	sd	a4,-416(s0)
	lw	a5,16(a5)
	sw	a5,-408(s0)
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-400(s0)
	ld	a4,8(a5)
	sd	a4,-392(s0)
	lw	a5,16(a5)
	sw	a5,-384(s0)
	addi	a5,s0,-424
	li	a1,5
	mv	a0,a5
	call	func0
	mv	a4,a0
	addi	a5,s0,-400
	li	a3,5
	li	a2,5
	mv	a1,a5
	mv	a0,a4
	call	issame
	mv	a5,a0
	bne	a5,zero,.L22
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,45
	lla	a1,.LC11
	lla	a0,.LC12
	call	__assert_fail@plt
.L22:
	lla	a5,.LC2
	ld	a7,0(a5)
	ld	a6,8(a5)
	ld	a0,16(a5)
	ld	a1,24(a5)
	ld	a2,32(a5)
	ld	a3,40(a5)
	ld	a4,48(a5)
	sd	a7,-152(s0)
	sd	a6,-144(s0)
	sd	a0,-136(s0)
	sd	a1,-128(s0)
	sd	a2,-120(s0)
	sd	a3,-112(s0)
	sd	a4,-104(s0)
	lw	a5,56(a5)
	sw	a5,-96(s0)
	lla	a5,.LC3
	ld	a7,0(a5)
	ld	a6,8(a5)
	ld	a0,16(a5)
	ld	a1,24(a5)
	ld	a2,32(a5)
	ld	a3,40(a5)
	ld	a4,48(a5)
	sd	a7,-88(s0)
	sd	a6,-80(s0)
	sd	a0,-72(s0)
	sd	a1,-64(s0)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	lw	a5,56(a5)
	sw	a5,-32(s0)
	addi	a5,s0,-152
	li	a1,15
	mv	a0,a5
	call	func0
	mv	a4,a0
	addi	a5,s0,-88
	li	a3,15
	li	a2,15
	mv	a1,a5
	mv	a0,a4
	call	issame
	mv	a5,a0
	bne	a5,zero,.L23
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,49
	lla	a1,.LC11
	lla	a0,.LC13
	call	__assert_fail@plt
.L23:
	addi	a5,s0,-440
	li	a1,0
	mv	a0,a5
	call	func0
	mv	a4,a0
	addi	a5,s0,-432
	li	a3,0
	li	a2,0
	mv	a1,a5
	mv	a0,a4
	call	issame
	mv	a5,a0
	bne	a5,zero,.L24
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,53
	lla	a1,.LC11
	lla	a0,.LC14
	call	__assert_fail@plt
.L24:
	lla	a5,.LC4
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-312(s0)
	sd	a3,-304(s0)
	sd	a4,-296(s0)
	sd	a5,-288(s0)
	lla	a5,.LC5
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-280(s0)
	sd	a3,-272(s0)
	sd	a4,-264(s0)
	sd	a5,-256(s0)
	addi	a5,s0,-312
	li	a1,8
	mv	a0,a5
	call	func0
	mv	a4,a0
	addi	a5,s0,-280
	li	a3,8
	li	a2,8
	mv	a1,a5
	mv	a0,a4
	call	issame
	mv	a5,a0
	bne	a5,zero,.L25
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,57
	lla	a1,.LC11
	lla	a0,.LC15
	call	__assert_fail@plt
.L25:
	lla	a5,.LC6
	ld	a0,0(a5)
	ld	a1,8(a5)
	ld	a2,16(a5)
	ld	a3,24(a5)
	ld	a4,32(a5)
	sd	a0,-248(s0)
	sd	a1,-240(s0)
	sd	a2,-232(s0)
	sd	a3,-224(s0)
	sd	a4,-216(s0)
	lw	a5,40(a5)
	sw	a5,-208(s0)
	lla	a5,.LC7
	ld	a0,0(a5)
	ld	a1,8(a5)
	ld	a2,16(a5)
	ld	a3,24(a5)
	ld	a4,32(a5)
	sd	a0,-200(s0)
	sd	a1,-192(s0)
	sd	a2,-184(s0)
	sd	a3,-176(s0)
	sd	a4,-168(s0)
	lw	a5,40(a5)
	sw	a5,-160(s0)
	addi	a5,s0,-248
	li	a1,11
	mv	a0,a5
	call	func0
	mv	a4,a0
	addi	a5,s0,-200
	li	a3,11
	li	a2,11
	mv	a1,a5
	mv	a0,a4
	call	issame
	mv	a5,a0
	bne	a5,zero,.L26
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,61
	lla	a1,.LC11
	lla	a0,.LC16
	call	__assert_fail@plt
.L26:
	lla	a5,.LC8
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	sd	a2,-376(s0)
	sd	a3,-368(s0)
	sd	a4,-360(s0)
	lw	a5,24(a5)
	sw	a5,-352(s0)
	lla	a5,.LC9
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	sd	a2,-344(s0)
	sd	a3,-336(s0)
	sd	a4,-328(s0)
	lw	a5,24(a5)
	sw	a5,-320(s0)
	addi	a5,s0,-376
	li	a1,7
	mv	a0,a5
	call	func0
	mv	a4,a0
	addi	a5,s0,-344
	li	a3,7
	li	a2,7
	mv	a1,a5
	mv	a0,a4
	call	issame
	mv	a5,a0
	bne	a5,zero,.L27
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,65
	lla	a1,.LC11
	lla	a0,.LC17
	call	__assert_fail@plt
.L27:
	lla	a0,.LC18
	call	puts@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L29
	call	__stack_chk_fail@plt
.L29:
	mv	a0,a4
	ld	ra,440(sp)
	ld	s0,432(sp)
	addi	sp,sp,448
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
