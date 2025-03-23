	.file	"code.c"
	.option pic
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"No"
	.align	3
.LC1:
	.string	".txt"
	.align	3
.LC2:
	.string	".exe"
	.align	3
.LC3:
	.string	".dll"
	.align	3
.LC4:
	.string	"Yes"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64
	sd	ra,56(sp)
	sd	s0,48(sp)
	addi	s0,sp,64
	sd	a0,-56(s0)
	sw	zero,-40(s0)
	sw	zero,-36(s0)
	ld	a0,-56(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	sext.w	a4,a5
	li	a5,4
	bgt	a4,a5,.L2
	lla	a5,.LC0
	j	.L3
.L2:
	ld	a5,-56(s0)
	lbu	a5,0(a5)
	sb	a5,-41(s0)
	lbu	a5,-41(s0)
	andi	a4,a5,0xff
	li	a5,64
	bleu	a4,a5,.L4
	lbu	a5,-41(s0)
	andi	a4,a5,0xff
	li	a5,90
	bleu	a4,a5,.L5
	lbu	a5,-41(s0)
	andi	a4,a5,0xff
	li	a5,96
	bleu	a4,a5,.L4
.L5:
	lbu	a5,-41(s0)
	andi	a4,a5,0xff
	li	a5,122
	bleu	a4,a5,.L6
.L4:
	lla	a5,.LC0
	j	.L3
.L6:
	lw	a5,-28(s0)
	addi	a5,a5,-4
	ld	a4,-56(s0)
	add	a5,a4,a5
	sd	a5,-24(s0)
	lla	a1,.LC1
	ld	a0,-24(s0)
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L7
	lla	a1,.LC2
	ld	a0,-24(s0)
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L7
	lla	a1,.LC3
	ld	a0,-24(s0)
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L7
	lla	a5,.LC0
	j	.L3
.L7:
	sw	zero,-32(s0)
	j	.L8
.L11:
	lw	a5,-32(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,47
	bleu	a4,a5,.L9
	lw	a5,-32(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,57
	bgtu	a4,a5,.L9
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sw	a5,-40(s0)
.L9:
	lw	a5,-32(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,46
	bne	a4,a5,.L10
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L10:
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L8:
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L11
	lw	a5,-40(s0)
	sext.w	a4,a5
	li	a5,3
	bgt	a4,a5,.L12
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,1
	beq	a4,a5,.L13
.L12:
	lla	a5,.LC0
	j	.L3
.L13:
	lla	a5,.LC4
.L3:
	mv	a0,a5
	ld	ra,56(sp)
	ld	s0,48(sp)
	addi	sp,sp,64
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
