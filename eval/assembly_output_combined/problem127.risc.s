	.file	"problem127.c"
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
	lw	a5,-44(s0)
	sext.w	a5,a5
	bne	a5,zero,.L2
	li	a5,1
	j	.L3
.L2:
	li	a5,1
	sw	a5,-20(s0)
	j	.L4
.L7:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	bge	a4,a5,.L5
	li	a5,0
	j	.L3
.L5:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,1
	ble	a4,a5,.L6
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	bne	a4,a5,.L6
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	addi	a5,a5,-8
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	bne	a4,a5,.L6
	li	a5,0
	j	.L3
.L6:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L4:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L7
	li	a5,1
.L3:
	mv	a0,a5
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC9:
	.string	"problem127.c"
	.align	3
.LC10:
	.string	"func0(list1, 1) == true"
	.align	3
.LC11:
	.string	"func0(list2, 5) == true"
	.align	3
.LC12:
	.string	"func0(list3, 5) == false"
	.align	3
.LC13:
	.string	"func0(list4, 6) == true"
	.align	3
.LC14:
	.string	"func0(list5, 7) == true"
	.align	3
.LC15:
	.string	"func0(list6, 7) == false"
	.align	3
.LC16:
	.string	"func0(NULL, 0) == true"
	.align	3
.LC17:
	.string	"func0(list7, 1) == true"
	.align	3
.LC18:
	.string	"func0(list8, 3) == false"
	.align	3
.LC19:
	.string	"func0(list9, 6) == false"
	.align	3
.LC20:
	.string	"func0(list10, 6) == false"
	.align	3
.LC21:
	.string	"func0(list11, 6) == true"
	.align	3
.LC22:
	.string	"func0(list12, 4) == true"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.align	3
.LC1:
	.word	1
	.word	3
	.word	2
	.word	4
	.word	5
	.align	3
.LC2:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.align	3
.LC3:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.align	3
.LC4:
	.word	1
	.word	3
	.word	2
	.word	4
	.word	5
	.word	6
	.word	7
	.align	3
.LC5:
	.word	1
	.word	2
	.word	2
	.word	2
	.word	3
	.word	4
	.align	3
.LC6:
	.word	1
	.word	2
	.word	3
	.word	3
	.word	3
	.word	4
	.align	3
.LC7:
	.word	1
	.word	2
	.word	2
	.word	3
	.word	3
	.word	4
	.align	3
.LC8:
	.word	1
	.word	2
	.word	3
	.word	4
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-288
	sd	ra,280(sp)
	sd	s0,272(sp)
	addi	s0,sp,288
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	li	a5,5
	sw	a5,-280(s0)
	addi	a5,s0,-280
	li	a1,1
	mv	a0,a5
	call	func0
	mv	a5,a0
	bne	a5,zero,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,22
	lla	a1,.LC9
	lla	a0,.LC10
	call	__assert_fail@plt
.L9:
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-232(s0)
	ld	a4,8(a5)
	sd	a4,-224(s0)
	lw	a5,16(a5)
	sw	a5,-216(s0)
	addi	a5,s0,-232
	li	a1,5
	mv	a0,a5
	call	func0
	mv	a5,a0
	bne	a5,zero,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,25
	lla	a1,.LC9
	lla	a0,.LC11
	call	__assert_fail@plt
.L10:
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-208(s0)
	ld	a4,8(a5)
	sd	a4,-200(s0)
	lw	a5,16(a5)
	sw	a5,-192(s0)
	addi	a5,s0,-208
	li	a1,5
	mv	a0,a5
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,28
	lla	a1,.LC9
	lla	a0,.LC12
	call	__assert_fail@plt
.L11:
	lla	a5,.LC2
	ld	a4,0(a5)
	sd	a4,-184(s0)
	ld	a4,8(a5)
	sd	a4,-176(s0)
	ld	a5,16(a5)
	sd	a5,-168(s0)
	addi	a5,s0,-184
	li	a1,6
	mv	a0,a5
	call	func0
	mv	a5,a0
	bne	a5,zero,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,31
	lla	a1,.LC9
	lla	a0,.LC13
	call	__assert_fail@plt
.L12:
	lla	a5,.LC3
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	sd	a2,-88(s0)
	sd	a3,-80(s0)
	sd	a4,-72(s0)
	lw	a5,24(a5)
	sw	a5,-64(s0)
	addi	a5,s0,-88
	li	a1,7
	mv	a0,a5
	call	func0
	mv	a5,a0
	bne	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,34
	lla	a1,.LC9
	lla	a0,.LC14
	call	__assert_fail@plt
.L13:
	lla	a5,.LC4
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	lw	a5,24(a5)
	sw	a5,-32(s0)
	addi	a5,s0,-56
	li	a1,7
	mv	a0,a5
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,37
	lla	a1,.LC9
	lla	a0,.LC15
	call	__assert_fail@plt
.L14:
	li	a1,0
	li	a0,0
	call	func0
	mv	a5,a0
	bne	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,39
	lla	a1,.LC9
	lla	a0,.LC16
	call	__assert_fail@plt
.L15:
	li	a5,1
	sw	a5,-272(s0)
	addi	a5,s0,-272
	li	a1,1
	mv	a0,a5
	call	func0
	mv	a5,a0
	bne	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,42
	lla	a1,.LC9
	lla	a0,.LC17
	call	__assert_fail@plt
.L16:
	li	a5,3
	sw	a5,-264(s0)
	li	a5,2
	sw	a5,-260(s0)
	li	a5,1
	sw	a5,-256(s0)
	addi	a5,s0,-264
	li	a1,3
	mv	a0,a5
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,45
	lla	a1,.LC9
	lla	a0,.LC18
	call	__assert_fail@plt
.L17:
	lla	a5,.LC5
	ld	a4,0(a5)
	sd	a4,-160(s0)
	ld	a4,8(a5)
	sd	a4,-152(s0)
	ld	a5,16(a5)
	sd	a5,-144(s0)
	addi	a5,s0,-160
	li	a1,6
	mv	a0,a5
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,48
	lla	a1,.LC9
	lla	a0,.LC19
	call	__assert_fail@plt
.L18:
	lla	a5,.LC6
	ld	a4,0(a5)
	sd	a4,-136(s0)
	ld	a4,8(a5)
	sd	a4,-128(s0)
	ld	a5,16(a5)
	sd	a5,-120(s0)
	addi	a5,s0,-136
	li	a1,6
	mv	a0,a5
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L19
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,51
	lla	a1,.LC9
	lla	a0,.LC20
	call	__assert_fail@plt
.L19:
	lla	a5,.LC7
	ld	a4,0(a5)
	sd	a4,-112(s0)
	ld	a4,8(a5)
	sd	a4,-104(s0)
	ld	a5,16(a5)
	sd	a5,-96(s0)
	addi	a5,s0,-112
	li	a1,6
	mv	a0,a5
	call	func0
	mv	a5,a0
	bne	a5,zero,.L20
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,54
	lla	a1,.LC9
	lla	a0,.LC21
	call	__assert_fail@plt
.L20:
	lla	a5,.LC8
	ld	a4,0(a5)
	sd	a4,-248(s0)
	ld	a5,8(a5)
	sd	a5,-240(s0)
	addi	a5,s0,-248
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	bne	a5,zero,.L21
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,57
	lla	a1,.LC9
	lla	a0,.LC22
	call	__assert_fail@plt
.L21:
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
	ld	ra,280(sp)
	ld	s0,272(sp)
	addi	sp,sp,288
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
