	.file	"code.c"
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
