	.file	"code.c"
	.option pic
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"True"
	.align	3
.LC1:
	.string	"False"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-96
	sd	ra,88(sp)
	sd	s0,80(sp)
	addi	s0,sp,96
	sd	a0,-72(s0)
	sd	a1,-80(s0)
	sd	a2,-88(s0)
	sd	a3,-96(s0)
	ld	a0,-72(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-40(s0)
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	sw	zero,-52(s0)
	sw	zero,-48(s0)
	j	.L2
.L8:
	ld	a5,-80(s0)
	sd	a5,-32(s0)
	sb	zero,-54(s0)
	j	.L3
.L6:
	lw	a5,-48(s0)
	ld	a4,-72(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	bne	a4,a5,.L4
	li	a5,1
	sb	a5,-54(s0)
	j	.L5
.L4:
	ld	a5,-32(s0)
	addi	a5,a5,1
	sd	a5,-32(s0)
.L3:
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L6
.L5:
	lbu	a5,-54(s0)
	xori	a5,a5,1
	andi	a5,a5,0xff
	beq	a5,zero,.L7
	lw	a5,-48(s0)
	ld	a4,-72(s0)
	add	a4,a4,a5
	lw	a5,-52(s0)
	addiw	a3,a5,1
	sw	a3,-52(s0)
	mv	a3,a5
	ld	a5,-24(s0)
	add	a5,a5,a3
	lbu	a4,0(a4)
	sb	a4,0(a5)
.L7:
	lw	a5,-48(s0)
	addiw	a5,a5,1
	sw	a5,-48(s0)
.L2:
	lw	a5,-48(s0)
	ld	a4,-72(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L8
	lw	a5,-52(s0)
	ld	a4,-24(s0)
	add	a5,a4,a5
	sb	zero,0(a5)
	ld	a0,-24(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-36(s0)
	li	a5,1
	sb	a5,-53(s0)
	sw	zero,-44(s0)
	j	.L9
.L12:
	lw	a5,-44(s0)
	ld	a4,-24(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	lw	a5,-36(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	lw	a3,-44(s0)
	subw	a5,a5,a3
	sext.w	a5,a5
	mv	a3,a5
	ld	a5,-24(s0)
	add	a5,a5,a3
	lbu	a5,0(a5)
	beq	a4,a5,.L10
	sb	zero,-53(s0)
	j	.L11
.L10:
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
.L9:
	lw	a5,-36(s0)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sext.w	a4,a5
	lw	a5,-44(s0)
	sext.w	a5,a5
	blt	a5,a4,.L12
.L11:
	ld	a1,-24(s0)
	ld	a0,-88(s0)
	call	strcpy@plt
	lbu	a5,-53(s0)
	andi	a5,a5,0xff
	beq	a5,zero,.L13
	lla	a5,.LC0
	j	.L14
.L13:
	lla	a5,.LC1
.L14:
	mv	a1,a5
	ld	a0,-96(s0)
	call	strcpy@plt
	ld	a0,-24(s0)
	call	free@plt
	nop
	ld	ra,88(sp)
	ld	s0,80(sp)
	addi	sp,sp,96
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
