	.file	"problem27.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-128
	sd	ra,120(sp)
	sd	s0,112(sp)
	addi	s0,sp,128
	sd	a0,-104(s0)
	mv	a5,a1
	sd	a2,-120(s0)
	sw	a5,-108(s0)
	lw	a5,-108(s0)
	slli	a5,a5,2
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-40(s0)
	lw	a5,-108(s0)
	li	a1,4
	mv	a0,a5
	call	calloc@plt
	mv	a5,a0
	sd	a5,-32(s0)
	lw	a5,-108(s0)
	li	a1,4
	mv	a0,a5
	call	calloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	sw	zero,-92(s0)
	sw	zero,-88(s0)
	sw	zero,-84(s0)
	sw	zero,-80(s0)
	j	.L2
.L14:
	lw	a5,-80(s0)
	slli	a5,a5,2
	ld	a4,-104(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-44(s0)
	sw	zero,-76(s0)
	sw	zero,-72(s0)
	j	.L3
.L6:
	lw	a5,-72(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-44(s0)
	sext.w	a5,a5
	bne	a5,a4,.L4
	li	a5,1
	sw	a5,-76(s0)
	j	.L5
.L4:
	lw	a5,-72(s0)
	addiw	a5,a5,1
	sw	a5,-72(s0)
.L3:
	lw	a5,-72(s0)
	mv	a4,a5
	lw	a5,-88(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L6
.L5:
	lw	a5,-76(s0)
	sext.w	a5,a5
	bne	a5,zero,.L23
	sw	zero,-68(s0)
	sw	zero,-64(s0)
	j	.L9
.L12:
	lw	a5,-64(s0)
	slli	a5,a5,2
	ld	a4,-32(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-44(s0)
	sext.w	a5,a5
	bne	a5,a4,.L10
	li	a5,1
	sw	a5,-68(s0)
	j	.L11
.L10:
	lw	a5,-64(s0)
	addiw	a5,a5,1
	sw	a5,-64(s0)
.L9:
	lw	a5,-64(s0)
	mv	a4,a5
	lw	a5,-92(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L12
.L11:
	lw	a5,-68(s0)
	sext.w	a5,a5
	beq	a5,zero,.L13
	lw	a5,-88(s0)
	addiw	a4,a5,1
	sw	a4,-88(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a4,-44(s0)
	sw	a4,0(a5)
	j	.L8
.L13:
	lw	a5,-92(s0)
	addiw	a4,a5,1
	sw	a4,-92(s0)
	slli	a5,a5,2
	ld	a4,-32(s0)
	add	a5,a4,a5
	lw	a4,-44(s0)
	sw	a4,0(a5)
	j	.L8
.L23:
	nop
.L8:
	lw	a5,-80(s0)
	addiw	a5,a5,1
	sw	a5,-80(s0)
.L2:
	lw	a5,-80(s0)
	mv	a4,a5
	lw	a5,-108(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L14
	sw	zero,-60(s0)
	j	.L15
.L21:
	lw	a5,-60(s0)
	slli	a5,a5,2
	ld	a4,-104(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-48(s0)
	sw	zero,-56(s0)
	sw	zero,-52(s0)
	j	.L16
.L19:
	lw	a5,-52(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-48(s0)
	sext.w	a5,a5
	bne	a5,a4,.L17
	li	a5,1
	sw	a5,-56(s0)
	j	.L18
.L17:
	lw	a5,-52(s0)
	addiw	a5,a5,1
	sw	a5,-52(s0)
.L16:
	lw	a5,-52(s0)
	mv	a4,a5
	lw	a5,-88(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L19
.L18:
	lw	a5,-56(s0)
	sext.w	a5,a5
	bne	a5,zero,.L20
	lw	a5,-84(s0)
	addiw	a4,a5,1
	sw	a4,-84(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,-48(s0)
	sw	a4,0(a5)
.L20:
	lw	a5,-60(s0)
	addiw	a5,a5,1
	sw	a5,-60(s0)
.L15:
	lw	a5,-60(s0)
	mv	a4,a5
	lw	a5,-108(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L21
	ld	a5,-120(s0)
	lw	a4,-84(s0)
	sw	a4,0(a5)
	ld	a0,-32(s0)
	call	free@plt
	ld	a0,-24(s0)
	call	free@plt
	ld	a5,-40(s0)
	mv	a0,a5
	ld	ra,120(sp)
	ld	s0,112(sp)
	addi	sp,sp,128
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
	beq	a4,a5,.L25
	li	a5,0
	j	.L26
.L25:
	sw	zero,-20(s0)
	j	.L27
.L29:
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
	beq	a4,a5,.L28
	li	a5,0
	j	.L26
.L28:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L27:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L29
	li	a5,1
.L26:
	mv	a0,a5
	ld	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC2:
	.string	"problem27.c"
	.align	3
.LC3:
	.string	"issame(result, new_size, (int[]){}, 0)"
	.align	3
.LC4:
	.string	"issame(result, new_size, (int[]){1, 2, 3, 4}, 4)"
	.align	3
.LC5:
	.string	"issame(result, new_size, (int[]){1, 4, 5}, 3)"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.align	3
.LC1:
	.word	1
	.word	2
	.word	3
	.word	2
	.word	4
	.word	3
	.word	5
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-112
	sd	ra,104(sp)
	sd	s0,96(sp)
	addi	s0,sp,112
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	addi	a4,s0,-108
	addi	a5,s0,-96
	mv	a2,a4
	li	a1,0
	mv	a0,a5
	call	func0
	sd	a0,-104(s0)
	lw	a5,-108(s0)
	addi	a4,s0,-56
	li	a3,0
	mv	a2,a4
	mv	a1,a5
	ld	a0,-104(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L31
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,77
	lla	a1,.LC2
	lla	a0,.LC3
	call	__assert_fail@plt
.L31:
	ld	a0,-104(s0)
	call	free@plt
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-72(s0)
	ld	a5,8(a5)
	sd	a5,-64(s0)
	addi	a4,s0,-108
	addi	a5,s0,-72
	mv	a2,a4
	li	a1,4
	mv	a0,a5
	call	func0
	sd	a0,-104(s0)
	lw	a1,-108(s0)
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-56(s0)
	ld	a5,8(a5)
	sd	a5,-48(s0)
	addi	a5,s0,-56
	li	a3,4
	mv	a2,a5
	ld	a0,-104(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L32
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,81
	lla	a1,.LC2
	lla	a0,.LC4
	call	__assert_fail@plt
.L32:
	ld	a0,-104(s0)
	call	free@plt
	lla	a5,.LC1
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	lw	a5,24(a5)
	sw	a5,-32(s0)
	addi	a4,s0,-108
	addi	a5,s0,-56
	mv	a2,a4
	li	a1,7
	mv	a0,a5
	call	func0
	sd	a0,-104(s0)
	lw	a4,-108(s0)
	li	a5,1
	sw	a5,-88(s0)
	li	a5,4
	sw	a5,-84(s0)
	li	a5,5
	sw	a5,-80(s0)
	addi	a5,s0,-88
	li	a3,3
	mv	a2,a5
	mv	a1,a4
	ld	a0,-104(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L33
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,85
	lla	a1,.LC2
	lla	a0,.LC5
	call	__assert_fail@plt
.L33:
	ld	a0,-104(s0)
	call	free@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L35
	call	__stack_chk_fail@plt
.L35:
	mv	a0,a4
	ld	ra,104(sp)
	ld	s0,96(sp)
	addi	sp,sp,112
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
