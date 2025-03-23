	.file	"problem95.c"
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
	sw	zero,-40(s0)
	sw	zero,-36(s0)
	sw	zero,-32(s0)
	j	.L2
.L9:
	lw	a5,-32(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,1
	ble	a4,a5,.L3
	li	a5,1
	sw	a5,-28(s0)
	li	a5,2
	sw	a5,-24(s0)
	j	.L4
.L7:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	remw	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L5
	sw	zero,-28(s0)
	j	.L6
.L5:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L4:
	lw	a5,-24(s0)
	mulw	a5,a5,a5
	sext.w	a4,a5
	lw	a5,-20(s0)
	sext.w	a5,a5
	bge	a5,a4,.L7
.L6:
	lw	a5,-28(s0)
	sext.w	a5,a5
	beq	a5,zero,.L3
	lw	a5,-20(s0)
	mv	a2,a5
	lw	a5,-40(s0)
	sext.w	a3,a5
	sext.w	a4,a2
	bge	a3,a4,.L8
	mv	a5,a2
.L8:
	sw	a5,-40(s0)
.L3:
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L2:
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L9
	j	.L10
.L11:
	lw	a5,-40(s0)
	mv	a4,a5
	li	a5,10
	remw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-36(s0)
	addw	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-40(s0)
	mv	a4,a5
	li	a5,10
	divw	a5,a4,a5
	sw	a5,-40(s0)
.L10:
	lw	a5,-40(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L11
	lw	a5,-36(s0)
	mv	a0,a5
	ld	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC7:
	.string	"problem95.c"
	.align	3
.LC8:
	.string	"func0(lst1, sizeof(lst1)/sizeof(lst1[0])) == 10"
	.align	3
.LC9:
	.string	"func0(lst2, sizeof(lst2)/sizeof(lst2[0])) == 25"
	.align	3
.LC10:
	.string	"func0(lst3, sizeof(lst3)/sizeof(lst3[0])) == 13"
	.align	3
.LC11:
	.string	"func0(lst4, sizeof(lst4)/sizeof(lst4[0])) == 11"
	.align	3
.LC12:
	.string	"func0(lst5, sizeof(lst5)/sizeof(lst5[0])) == 3"
	.align	3
.LC13:
	.string	"func0(lst6, sizeof(lst6)/sizeof(lst6[0])) == 7"
	.align	3
.LC14:
	.string	"func0(lst7, sizeof(lst7)/sizeof(lst7[0])) == 19"
	.align	3
.LC15:
	.string	"func0(lst8, sizeof(lst8)/sizeof(lst8[0])) == 19"
	.align	3
.LC16:
	.string	"func0(lst9, sizeof(lst9)/sizeof(lst9[0])) == 10"
	.align	3
.LC0:
	.word	0
	.word	3
	.word	2
	.word	1
	.word	3
	.word	5
	.word	7
	.word	4
	.word	5
	.word	5
	.word	5
	.word	2
	.word	181
	.word	32
	.word	4
	.word	32
	.word	3
	.word	2
	.word	32
	.word	324
	.word	4
	.word	3
	.align	3
.LC1:
	.word	1
	.word	0
	.word	1
	.word	8
	.word	2
	.word	4597
	.word	2
	.word	1
	.word	3
	.word	40
	.word	1
	.word	2
	.word	1
	.word	2
	.word	4
	.word	2
	.word	5
	.word	1
	.align	3
.LC2:
	.word	1
	.word	3
	.word	1
	.word	32
	.word	5107
	.word	34
	.word	83278
	.word	109
	.word	163
	.word	23
	.word	2323
	.word	32
	.word	30
	.word	1
	.word	9
	.word	3
	.align	3
.LC3:
	.word	0
	.word	724
	.word	32
	.word	71
	.word	99
	.word	32
	.word	6
	.word	0
	.word	5
	.word	91
	.word	83
	.word	0
	.word	5
	.word	6
	.align	3
.LC4:
	.word	0
	.word	81
	.word	12
	.word	3
	.word	1
	.word	21
	.align	3
.LC5:
	.word	0
	.word	8
	.word	1
	.word	2
	.word	1
	.word	7
	.align	3
.LC6:
	.word	8191
	.word	123456
	.word	127
	.word	7
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-400
	sd	ra,392(sp)
	sd	s0,384(sp)
	addi	s0,sp,400
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC0
	ld	t4,0(a5)
	ld	t3,8(a5)
	ld	t1,16(a5)
	ld	a7,24(a5)
	ld	a6,32(a5)
	ld	a0,40(a5)
	ld	a1,48(a5)
	ld	a2,56(a5)
	ld	a3,64(a5)
	ld	a4,72(a5)
	ld	a5,80(a5)
	sd	t4,-112(s0)
	sd	t3,-104(s0)
	sd	t1,-96(s0)
	sd	a7,-88(s0)
	sd	a6,-80(s0)
	sd	a0,-72(s0)
	sd	a1,-64(s0)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	sd	a5,-32(s0)
	addi	a5,s0,-112
	li	a1,22
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,10
	beq	a4,a5,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,36
	lla	a1,.LC7
	lla	a0,.LC8
	call	__assert_fail@plt
.L14:
	lla	a5,.LC1
	ld	t1,0(a5)
	ld	a7,8(a5)
	ld	a6,16(a5)
	ld	a0,24(a5)
	ld	a1,32(a5)
	ld	a2,40(a5)
	ld	a3,48(a5)
	ld	a4,56(a5)
	ld	a5,64(a5)
	sd	t1,-184(s0)
	sd	a7,-176(s0)
	sd	a6,-168(s0)
	sd	a0,-160(s0)
	sd	a1,-152(s0)
	sd	a2,-144(s0)
	sd	a3,-136(s0)
	sd	a4,-128(s0)
	sd	a5,-120(s0)
	addi	a5,s0,-184
	li	a1,18
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,25
	beq	a4,a5,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,39
	lla	a1,.LC7
	lla	a0,.LC9
	call	__assert_fail@plt
.L15:
	lla	a5,.LC2
	ld	a7,0(a5)
	ld	a6,8(a5)
	ld	a0,16(a5)
	ld	a1,24(a5)
	ld	a2,32(a5)
	ld	a3,40(a5)
	ld	a4,48(a5)
	ld	a5,56(a5)
	sd	a7,-248(s0)
	sd	a6,-240(s0)
	sd	a0,-232(s0)
	sd	a1,-224(s0)
	sd	a2,-216(s0)
	sd	a3,-208(s0)
	sd	a4,-200(s0)
	sd	a5,-192(s0)
	addi	a5,s0,-248
	li	a1,16
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,13
	beq	a4,a5,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,42
	lla	a1,.LC7
	lla	a0,.LC10
	call	__assert_fail@plt
.L16:
	lla	a5,.LC3
	ld	a6,0(a5)
	ld	a0,8(a5)
	ld	a1,16(a5)
	ld	a2,24(a5)
	ld	a3,32(a5)
	ld	a4,40(a5)
	ld	a5,48(a5)
	sd	a6,-304(s0)
	sd	a0,-296(s0)
	sd	a1,-288(s0)
	sd	a2,-280(s0)
	sd	a3,-272(s0)
	sd	a4,-264(s0)
	sd	a5,-256(s0)
	addi	a5,s0,-304
	li	a1,14
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,11
	beq	a4,a5,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,45
	lla	a1,.LC7
	lla	a0,.LC11
	call	__assert_fail@plt
.L17:
	lla	a5,.LC4
	ld	a4,0(a5)
	sd	a4,-352(s0)
	ld	a4,8(a5)
	sd	a4,-344(s0)
	ld	a5,16(a5)
	sd	a5,-336(s0)
	addi	a5,s0,-352
	li	a1,6
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,3
	beq	a4,a5,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,48
	lla	a1,.LC7
	lla	a0,.LC12
	call	__assert_fail@plt
.L18:
	lla	a5,.LC5
	ld	a4,0(a5)
	sd	a4,-328(s0)
	ld	a4,8(a5)
	sd	a4,-320(s0)
	ld	a5,16(a5)
	sd	a5,-312(s0)
	addi	a5,s0,-328
	li	a1,6
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,7
	beq	a4,a5,.L19
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,51
	lla	a1,.LC7
	lla	a0,.LC13
	call	__assert_fail@plt
.L19:
	li	a5,8192
	addi	a5,a5,-1
	sw	a5,-392(s0)
	addi	a5,s0,-392
	li	a1,1
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,19
	beq	a4,a5,.L20
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,54
	lla	a1,.LC7
	lla	a0,.LC14
	call	__assert_fail@plt
.L20:
	lla	a5,.LC6
	ld	a4,0(a5)
	sd	a4,-368(s0)
	ld	a5,8(a5)
	sd	a5,-360(s0)
	addi	a5,s0,-368
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,19
	beq	a4,a5,.L21
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,57
	lla	a1,.LC7
	lla	a0,.LC15
	call	__assert_fail@plt
.L21:
	li	a5,127
	sw	a5,-384(s0)
	li	a5,97
	sw	a5,-380(s0)
	li	a5,8192
	sw	a5,-376(s0)
	addi	a5,s0,-384
	li	a1,3
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,10
	beq	a4,a5,.L22
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,60
	lla	a1,.LC7
	lla	a0,.LC16
	call	__assert_fail@plt
.L22:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L24
	call	__stack_chk_fail@plt
.L24:
	mv	a0,a4
	ld	ra,392(sp)
	ld	s0,384(sp)
	addi	sp,sp,400
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
