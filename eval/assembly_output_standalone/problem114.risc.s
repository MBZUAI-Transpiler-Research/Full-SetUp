	.file	"code.c"
	.option pic
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"the number of odd elements %d in the string %d of the %d input."
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-80
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	addi	s0,sp,80
	sd	a0,-72(s0)
	mv	a5,a1
	sw	a5,-76(s0)
	lw	a5,-76(s0)
	slli	a5,a5,3
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-40(s0)
	sw	zero,-52(s0)
	j	.L2
.L6:
	sw	zero,-48(s0)
	sw	zero,-44(s0)
	j	.L3
.L5:
	lw	a5,-52(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-44(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,47
	bleu	a4,a5,.L4
	lw	a5,-52(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-44(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,57
	bgtu	a4,a5,.L4
	lw	a5,-52(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-44(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	addiw	a5,a5,-48
	sext.w	a5,a5
	mv	a4,a5
	sraiw	a5,a4,31
	srliw	a5,a5,31
	addw	a4,a4,a5
	andi	a4,a4,1
	subw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,1
	bne	a4,a5,.L4
	lw	a5,-48(s0)
	addiw	a5,a5,1
	sw	a5,-48(s0)
.L4:
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
.L3:
	lw	a5,-52(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-44(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L5
	lw	a5,-52(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	s1,a4,a5
	li	a0,100
	call	malloc@plt
	mv	a5,a0
	sd	a5,0(s1)
	lw	a5,-52(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	lw	a4,-48(s0)
	lw	a3,-48(s0)
	lw	a2,-48(s0)
	lla	a1,.LC0
	mv	a0,a5
	call	sprintf@plt
	lw	a5,-52(s0)
	addiw	a5,a5,1
	sw	a5,-52(s0)
.L2:
	lw	a5,-52(s0)
	mv	a4,a5
	lw	a5,-76(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L6
	ld	a5,-40(s0)
	mv	a0,a5
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	addi	sp,sp,80
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
