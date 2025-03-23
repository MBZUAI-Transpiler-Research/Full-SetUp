	.file	"problem131.c"
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
	mv	a5,a0
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	slli	a5,a5,2
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	ld	a5,-24(s0)
	li	a4,1
	sw	a4,0(a5)
	lw	a5,-36(s0)
	sext.w	a5,a5
	bne	a5,zero,.L2
	ld	a5,-24(s0)
	j	.L3
.L2:
	ld	a5,-24(s0)
	addi	a5,a5,4
	li	a4,3
	sw	a4,0(a5)
	li	a5,2
	sw	a5,-28(s0)
	j	.L4
.L7:
	lw	a5,-28(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	bne	a5,zero,.L5
	lw	a5,-28(s0)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sext.w	a4,a5
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a3,-24(s0)
	add	a5,a3,a5
	addiw	a4,a4,1
	sext.w	a4,a4
	sw	a4,0(a5)
	j	.L6
.L5:
	lw	a5,-28(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-28(s0)
	slli	a5,a5,2
	addi	a5,a5,-8
	ld	a3,-24(s0)
	add	a5,a3,a5
	lw	a5,0(a5)
	addw	a5,a4,a5
	sext.w	a5,a5
	addiw	a5,a5,1
	sext.w	a3,a5
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sext.w	a4,a5
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a2,-24(s0)
	add	a5,a2,a5
	addw	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
.L6:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L4:
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L7
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
.LC8:
	.string	"problem131.c"
	.align	3
.LC9:
	.string	"issame(out3, tri_3, size)"
	.align	3
.LC10:
	.string	"issame(out4, tri_4, size)"
	.align	3
.LC11:
	.string	"issame(out5, tri_5, size)"
	.align	3
.LC12:
	.string	"issame(out6, tri_6, size)"
	.align	3
.LC13:
	.string	"issame(out7, tri_7, size)"
	.align	3
.LC14:
	.string	"issame(out8, tri_8, size)"
	.align	3
.LC15:
	.string	"issame(out9, tri_9, size)"
	.align	3
.LC16:
	.string	"issame(out20, tri_20, size)"
	.align	3
.LC17:
	.string	"issame(out0, tri_0, size)"
	.align	3
.LC18:
	.string	"issame(out1, tri_1, size)"
	.align	3
.LC0:
	.word	1
	.word	3
	.word	2
	.word	8
	.align	3
.LC1:
	.word	1
	.word	3
	.word	2
	.word	8
	.word	3
	.align	3
.LC2:
	.word	1
	.word	3
	.word	2
	.word	8
	.word	3
	.word	15
	.align	3
.LC3:
	.word	1
	.word	3
	.word	2
	.word	8
	.word	3
	.word	15
	.word	4
	.align	3
.LC4:
	.word	1
	.word	3
	.word	2
	.word	8
	.word	3
	.word	15
	.word	4
	.word	24
	.align	3
.LC5:
	.word	1
	.word	3
	.word	2
	.word	8
	.word	3
	.word	15
	.word	4
	.word	24
	.word	5
	.align	3
.LC6:
	.word	1
	.word	3
	.word	2
	.word	8
	.word	3
	.word	15
	.word	4
	.word	24
	.word	5
	.word	35
	.align	3
.LC7:
	.word	1
	.word	3
	.word	2
	.word	8
	.word	3
	.word	15
	.word	4
	.word	24
	.word	5
	.word	35
	.word	6
	.word	48
	.word	7
	.word	63
	.word	8
	.word	80
	.word	9
	.word	99
	.word	10
	.word	120
	.word	11
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-432
	sd	ra,424(sp)
	sd	s0,416(sp)
	addi	s0,sp,432
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-320(s0)
	ld	a5,8(a5)
	sd	a5,-312(s0)
	li	a5,4
	sw	a5,-420(s0)
	li	a0,3
	call	func0
	sd	a0,-416(s0)
	lw	a4,-420(s0)
	addi	a5,s0,-320
	mv	a2,a4
	mv	a1,a5
	ld	a0,-416(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,35
	lla	a1,.LC8
	lla	a0,.LC9
	call	__assert_fail@plt
.L14:
	ld	a0,-416(s0)
	call	free@plt
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-304(s0)
	ld	a4,8(a5)
	sd	a4,-296(s0)
	lw	a5,16(a5)
	sw	a5,-288(s0)
	li	a5,5
	sw	a5,-420(s0)
	li	a0,4
	call	func0
	sd	a0,-408(s0)
	lw	a4,-420(s0)
	addi	a5,s0,-304
	mv	a2,a4
	mv	a1,a5
	ld	a0,-408(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,41
	lla	a1,.LC8
	lla	a0,.LC10
	call	__assert_fail@plt
.L15:
	ld	a0,-408(s0)
	call	free@plt
	lla	a5,.LC2
	ld	a4,0(a5)
	sd	a4,-280(s0)
	ld	a4,8(a5)
	sd	a4,-272(s0)
	ld	a5,16(a5)
	sd	a5,-264(s0)
	li	a5,6
	sw	a5,-420(s0)
	li	a0,5
	call	func0
	sd	a0,-400(s0)
	lw	a4,-420(s0)
	addi	a5,s0,-280
	mv	a2,a4
	mv	a1,a5
	ld	a0,-400(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,47
	lla	a1,.LC8
	lla	a0,.LC11
	call	__assert_fail@plt
.L16:
	ld	a0,-400(s0)
	call	free@plt
	lla	a5,.LC3
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	sd	a2,-256(s0)
	sd	a3,-248(s0)
	sd	a4,-240(s0)
	lw	a5,24(a5)
	sw	a5,-232(s0)
	li	a5,7
	sw	a5,-420(s0)
	li	a0,6
	call	func0
	sd	a0,-392(s0)
	lw	a4,-420(s0)
	addi	a5,s0,-256
	mv	a2,a4
	mv	a1,a5
	ld	a0,-392(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,53
	lla	a1,.LC8
	lla	a0,.LC12
	call	__assert_fail@plt
.L17:
	ld	a0,-392(s0)
	call	free@plt
	lla	a5,.LC4
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-224(s0)
	sd	a3,-216(s0)
	sd	a4,-208(s0)
	sd	a5,-200(s0)
	li	a5,8
	sw	a5,-420(s0)
	li	a0,7
	call	func0
	sd	a0,-384(s0)
	lw	a4,-420(s0)
	addi	a5,s0,-224
	mv	a2,a4
	mv	a1,a5
	ld	a0,-384(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,59
	lla	a1,.LC8
	lla	a0,.LC13
	call	__assert_fail@plt
.L18:
	ld	a0,-384(s0)
	call	free@plt
	lla	a5,.LC5
	ld	a1,0(a5)
	ld	a2,8(a5)
	ld	a3,16(a5)
	ld	a4,24(a5)
	sd	a1,-192(s0)
	sd	a2,-184(s0)
	sd	a3,-176(s0)
	sd	a4,-168(s0)
	lw	a5,32(a5)
	sw	a5,-160(s0)
	li	a5,9
	sw	a5,-420(s0)
	li	a0,8
	call	func0
	sd	a0,-376(s0)
	lw	a4,-420(s0)
	addi	a5,s0,-192
	mv	a2,a4
	mv	a1,a5
	ld	a0,-376(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L19
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,65
	lla	a1,.LC8
	lla	a0,.LC14
	call	__assert_fail@plt
.L19:
	ld	a0,-376(s0)
	call	free@plt
	lla	a5,.LC6
	ld	a1,0(a5)
	ld	a2,8(a5)
	ld	a3,16(a5)
	ld	a4,24(a5)
	ld	a5,32(a5)
	sd	a1,-152(s0)
	sd	a2,-144(s0)
	sd	a3,-136(s0)
	sd	a4,-128(s0)
	sd	a5,-120(s0)
	li	a5,10
	sw	a5,-420(s0)
	li	a0,9
	call	func0
	sd	a0,-368(s0)
	lw	a4,-420(s0)
	addi	a5,s0,-152
	mv	a2,a4
	mv	a1,a5
	ld	a0,-368(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L20
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,71
	lla	a1,.LC8
	lla	a0,.LC15
	call	__assert_fail@plt
.L20:
	ld	a0,-368(s0)
	call	free@plt
	lla	a5,.LC7
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
	lw	a5,80(a5)
	sw	a5,-32(s0)
	li	a5,21
	sw	a5,-420(s0)
	li	a0,20
	call	func0
	sd	a0,-360(s0)
	lw	a4,-420(s0)
	addi	a5,s0,-112
	mv	a2,a4
	mv	a1,a5
	ld	a0,-360(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L21
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,77
	lla	a1,.LC8
	lla	a0,.LC16
	call	__assert_fail@plt
.L21:
	ld	a0,-360(s0)
	call	free@plt
	li	a5,1
	sw	a5,-336(s0)
	li	a5,1
	sw	a5,-420(s0)
	li	a0,0
	call	func0
	sd	a0,-352(s0)
	lw	a4,-420(s0)
	addi	a5,s0,-336
	mv	a2,a4
	mv	a1,a5
	ld	a0,-352(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L22
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,83
	lla	a1,.LC8
	lla	a0,.LC17
	call	__assert_fail@plt
.L22:
	ld	a0,-352(s0)
	call	free@plt
	li	a5,1
	sw	a5,-328(s0)
	li	a5,3
	sw	a5,-324(s0)
	li	a5,2
	sw	a5,-420(s0)
	li	a0,1
	call	func0
	sd	a0,-344(s0)
	lw	a4,-420(s0)
	addi	a5,s0,-328
	mv	a2,a4
	mv	a1,a5
	ld	a0,-344(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L23
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,89
	lla	a1,.LC8
	lla	a0,.LC18
	call	__assert_fail@plt
.L23:
	ld	a0,-344(s0)
	call	free@plt
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
	ld	ra,424(sp)
	ld	s0,416(sp)
	addi	sp,sp,432
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
