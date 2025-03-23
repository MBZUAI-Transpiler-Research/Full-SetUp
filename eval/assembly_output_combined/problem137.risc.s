	.file	"problem137.c"
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
	mv	a5,a1
	sd	a2,-56(s0)
	sw	a5,-44(s0)
	sw	zero,-28(s0)
	sw	zero,-24(s0)
	sw	zero,-20(s0)
	j	.L2
.L7:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	bge	a5,zero,.L3
	lw	a5,-28(s0)
	sext.w	a5,a5
	beq	a5,zero,.L4
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-28(s0)
	sext.w	a5,a5
	bge	a5,a4,.L3
.L4:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-28(s0)
.L3:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	ble	a5,zero,.L5
	lw	a5,-24(s0)
	sext.w	a5,a5
	beq	a5,zero,.L6
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-24(s0)
	sext.w	a5,a5
	ble	a5,a4,.L5
.L6:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-24(s0)
.L5:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L7
	ld	a5,-56(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	ld	a5,-56(s0)
	addi	a5,a5,4
	lw	a4,-24(s0)
	sw	a4,0(a5)
	nop
	ld	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	ld	a5,-24(s0)
	lw	a4,0(a5)
	ld	a5,-32(s0)
	lw	a5,0(a5)
	bne	a4,a5,.L9
	ld	a5,-24(s0)
	addi	a5,a5,4
	lw	a4,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	bne	a4,a5,.L9
	li	a5,1
	j	.L10
.L9:
	li	a5,0
.L10:
	mv	a0,a5
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC9:
	.string	"problem137.c"
	.align	3
.LC10:
	.string	"issame(result, (int[]){0, 1})"
	.align	3
.LC11:
	.string	"issame(result, (int[]){-2, 1})"
	.align	3
.LC12:
	.string	"issame(result, (int[]){-7, 2})"
	.align	3
.LC13:
	.string	"issame(result, (int[]){-9, 2})"
	.align	3
.LC14:
	.string	"issame(result, (int[]){0, 0})"
	.align	3
.LC15:
	.string	"issame(result, (int[]){-1, 0})"
	.align	3
.LC16:
	.string	"issame(result, (int[]){-3, 1})"
	.align	3
.LC0:
	.word	2
	.word	4
	.word	1
	.word	3
	.word	5
	.word	7
	.align	3
.LC1:
	.word	2
	.word	4
	.word	1
	.word	3
	.word	5
	.word	7
	.word	0
	.align	3
.LC2:
	.word	1
	.word	3
	.word	2
	.word	4
	.word	5
	.word	6
	.word	-2
	.align	3
.LC3:
	.word	4
	.word	5
	.word	3
	.word	6
	.word	2
	.word	7
	.word	-7
	.align	3
.LC4:
	.word	7
	.word	3
	.word	8
	.word	4
	.word	9
	.word	2
	.word	5
	.word	-9
	.align	3
.LC5:
	.word	-1
	.word	-3
	.word	-5
	.word	-6
	.align	3
.LC6:
	.word	-1
	.word	-3
	.word	-5
	.word	-6
	.word	0
	.align	3
.LC7:
	.word	-6
	.word	-4
	.word	-4
	.word	-3
	.word	1
	.align	3
.LC8:
	.word	-6
	.word	-4
	.word	-4
	.word	-3
	.word	-100
	.word	1
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-304
	sd	ra,296(sp)
	sd	s0,288(sp)
	addi	s0,sp,304
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-200(s0)
	ld	a4,8(a5)
	sd	a4,-192(s0)
	ld	a5,16(a5)
	sd	a5,-184(s0)
	addi	a4,s0,-280
	addi	a5,s0,-200
	mv	a2,a4
	li	a1,6
	mv	a0,a5
	call	func0
	sw	zero,-56(s0)
	li	a5,1
	sw	a5,-52(s0)
	addi	a4,s0,-56
	addi	a5,s0,-280
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,26
	lla	a1,.LC9
	lla	a0,.LC10
	call	__assert_fail@plt
.L13:
	lla	a5,.LC1
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	sd	a2,-152(s0)
	sd	a3,-144(s0)
	sd	a4,-136(s0)
	lw	a5,24(a5)
	sw	a5,-128(s0)
	addi	a4,s0,-280
	addi	a5,s0,-152
	mv	a2,a4
	li	a1,7
	mv	a0,a5
	call	func0
	sw	zero,-56(s0)
	li	a5,1
	sw	a5,-52(s0)
	addi	a4,s0,-56
	addi	a5,s0,-280
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,29
	lla	a1,.LC9
	lla	a0,.LC10
	call	__assert_fail@plt
.L14:
	lla	a5,.LC2
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	sd	a2,-120(s0)
	sd	a3,-112(s0)
	sd	a4,-104(s0)
	lw	a5,24(a5)
	sw	a5,-96(s0)
	addi	a4,s0,-280
	addi	a5,s0,-120
	mv	a2,a4
	li	a1,7
	mv	a0,a5
	call	func0
	li	a5,-2
	sw	a5,-56(s0)
	li	a5,1
	sw	a5,-52(s0)
	addi	a4,s0,-56
	addi	a5,s0,-280
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,32
	lla	a1,.LC9
	lla	a0,.LC11
	call	__assert_fail@plt
.L15:
	lla	a5,.LC3
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	sd	a2,-88(s0)
	sd	a3,-80(s0)
	sd	a4,-72(s0)
	lw	a5,24(a5)
	sw	a5,-64(s0)
	addi	a4,s0,-280
	addi	a5,s0,-88
	mv	a2,a4
	li	a1,7
	mv	a0,a5
	call	func0
	li	a5,-7
	sw	a5,-56(s0)
	li	a5,2
	sw	a5,-52(s0)
	addi	a4,s0,-56
	addi	a5,s0,-280
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,35
	lla	a1,.LC9
	lla	a0,.LC12
	call	__assert_fail@plt
.L16:
	lla	a5,.LC4
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	sd	a5,-32(s0)
	addi	a4,s0,-280
	addi	a5,s0,-56
	mv	a2,a4
	li	a1,8
	mv	a0,a5
	call	func0
	li	a5,-9
	sw	a5,-176(s0)
	li	a5,2
	sw	a5,-172(s0)
	addi	a4,s0,-176
	addi	a5,s0,-280
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,38
	lla	a1,.LC9
	lla	a0,.LC13
	call	__assert_fail@plt
.L17:
	addi	a4,s0,-280
	addi	a5,s0,-296
	mv	a2,a4
	li	a1,0
	mv	a0,a5
	call	func0
	sw	zero,-176(s0)
	sw	zero,-172(s0)
	addi	a4,s0,-176
	addi	a5,s0,-280
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,41
	lla	a1,.LC9
	lla	a0,.LC14
	call	__assert_fail@plt
.L18:
	sw	zero,-288(s0)
	addi	a4,s0,-280
	addi	a5,s0,-288
	mv	a2,a4
	li	a1,1
	mv	a0,a5
	call	func0
	sw	zero,-176(s0)
	sw	zero,-172(s0)
	addi	a4,s0,-176
	addi	a5,s0,-280
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L19
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,44
	lla	a1,.LC9
	lla	a0,.LC14
	call	__assert_fail@plt
.L19:
	lla	a5,.LC5
	ld	a4,0(a5)
	sd	a4,-264(s0)
	ld	a5,8(a5)
	sd	a5,-256(s0)
	addi	a4,s0,-280
	addi	a5,s0,-264
	mv	a2,a4
	li	a1,4
	mv	a0,a5
	call	func0
	li	a5,-1
	sw	a5,-176(s0)
	sw	zero,-172(s0)
	addi	a4,s0,-176
	addi	a5,s0,-280
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L20
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,47
	lla	a1,.LC9
	lla	a0,.LC15
	call	__assert_fail@plt
.L20:
	lla	a5,.LC6
	ld	a4,0(a5)
	sd	a4,-248(s0)
	ld	a4,8(a5)
	sd	a4,-240(s0)
	lw	a5,16(a5)
	sw	a5,-232(s0)
	addi	a4,s0,-280
	addi	a5,s0,-248
	mv	a2,a4
	li	a1,5
	mv	a0,a5
	call	func0
	li	a5,-1
	sw	a5,-176(s0)
	sw	zero,-172(s0)
	addi	a4,s0,-176
	addi	a5,s0,-280
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L21
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,50
	lla	a1,.LC9
	lla	a0,.LC15
	call	__assert_fail@plt
.L21:
	lla	a5,.LC7
	ld	a4,0(a5)
	sd	a4,-224(s0)
	ld	a4,8(a5)
	sd	a4,-216(s0)
	lw	a5,16(a5)
	sw	a5,-208(s0)
	addi	a4,s0,-280
	addi	a5,s0,-224
	mv	a2,a4
	li	a1,5
	mv	a0,a5
	call	func0
	li	a5,-3
	sw	a5,-176(s0)
	li	a5,1
	sw	a5,-172(s0)
	addi	a4,s0,-176
	addi	a5,s0,-280
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L22
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,53
	lla	a1,.LC9
	lla	a0,.LC16
	call	__assert_fail@plt
.L22:
	lla	a5,.LC8
	ld	a4,0(a5)
	sd	a4,-176(s0)
	ld	a4,8(a5)
	sd	a4,-168(s0)
	ld	a5,16(a5)
	sd	a5,-160(s0)
	addi	a4,s0,-280
	addi	a5,s0,-176
	mv	a2,a4
	li	a1,6
	mv	a0,a5
	call	func0
	li	a5,-3
	sw	a5,-272(s0)
	li	a5,1
	sw	a5,-268(s0)
	addi	a4,s0,-272
	addi	a5,s0,-280
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L23
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,56
	lla	a1,.LC9
	lla	a0,.LC16
	call	__assert_fail@plt
.L23:
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
	ld	ra,296(sp)
	ld	s0,288(sp)
	addi	sp,sp,304
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
