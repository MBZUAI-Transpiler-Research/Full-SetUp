	.file	"problem156.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-48
	sd	s0,40(sp)
	addi	s0,sp,48
	mv	a5,a0
	sd	a1,-48(s0)
	sw	a5,-36(s0)
	sw	zero,-28(s0)
	sw	zero,-24(s0)
	lw	a5,-36(s0)
	sraiw	a5,a5,31
	lw	a4,-36(s0)
	xor	a4,a5,a4
	subw	a5,a4,a5
	sw	a5,-36(s0)
.L4:
	lw	a5,-36(s0)
	mv	a4,a5
	li	a5,10
	remw	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	bne	a5,zero,.L2
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
	j	.L3
.L2:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L3:
	lw	a5,-36(s0)
	mv	a4,a5
	li	a5,10
	divw	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L4
	ld	a5,-48(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	ld	a5,-48(s0)
	addi	a5,a5,4
	lw	a4,-24(s0)
	sw	a4,0(a5)
	nop
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	addi	s0,sp,48
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	mv	a5,a2
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	slli	a5,a5,2
	mv	a2,a5
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	memcmp@plt
	mv	a5,a0
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,40(sp)
	ld	s0,32(sp)
	addi	sp,sp,48
	jr	ra
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC0:
	.string	"problem156.c"
	.align	3
.LC1:
	.string	"issame(result, (int[]){0, 1}, 2)"
	.align	3
.LC2:
	.string	"issame(result, (int[]){1, 1}, 2)"
	.align	3
.LC3:
	.string	"issame(result, (int[]){2, 2}, 2)"
	.align	3
.LC4:
	.string	"issame(result, (int[]){3, 3}, 2)"
	.align	3
.LC5:
	.string	"issame(result, (int[]){1, 0}, 2)"
	.align	3
.LC6:
	.string	"issame(result, (int[]){2, 3}, 2)"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	addi	s0,sp,48
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	addi	a5,s0,-40
	mv	a1,a5
	li	a0,7
	call	func0
	sw	zero,-32(s0)
	li	a5,1
	sw	a5,-28(s0)
	addi	a4,s0,-32
	addi	a5,s0,-40
	li	a2,2
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,35
	lla	a1,.LC0
	lla	a0,.LC1
	call	__assert_fail@plt
.L8:
	addi	a5,s0,-40
	mv	a1,a5
	li	a0,-78
	call	func0
	li	a5,1
	sw	a5,-32(s0)
	li	a5,1
	sw	a5,-28(s0)
	addi	a4,s0,-32
	addi	a5,s0,-40
	li	a2,2
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,38
	lla	a1,.LC0
	lla	a0,.LC2
	call	__assert_fail@plt
.L9:
	addi	a5,s0,-40
	mv	a1,a5
	li	a5,4096
	addi	a0,a5,-644
	call	func0
	li	a5,2
	sw	a5,-32(s0)
	li	a5,2
	sw	a5,-28(s0)
	addi	a4,s0,-32
	addi	a5,s0,-40
	li	a2,2
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,41
	lla	a1,.LC0
	lla	a0,.LC3
	call	__assert_fail@plt
.L10:
	addi	a5,s0,-40
	mv	a1,a5
	li	a5,348160
	addi	a0,a5,-1949
	call	func0
	li	a5,3
	sw	a5,-32(s0)
	li	a5,3
	sw	a5,-28(s0)
	addi	a4,s0,-32
	addi	a5,s0,-40
	li	a2,2
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,44
	lla	a1,.LC0
	lla	a0,.LC4
	call	__assert_fail@plt
.L11:
	addi	a5,s0,-40
	mv	a1,a5
	li	a5,-344064
	addi	a0,a5,-1757
	call	func0
	li	a5,3
	sw	a5,-32(s0)
	li	a5,3
	sw	a5,-28(s0)
	addi	a4,s0,-32
	addi	a5,s0,-40
	li	a2,2
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,47
	lla	a1,.LC0
	lla	a0,.LC4
	call	__assert_fail@plt
.L12:
	addi	a5,s0,-40
	mv	a1,a5
	li	a0,-2
	call	func0
	li	a5,1
	sw	a5,-32(s0)
	sw	zero,-28(s0)
	addi	a4,s0,-32
	addi	a5,s0,-40
	li	a2,2
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,50
	lla	a1,.LC0
	lla	a0,.LC5
	call	__assert_fail@plt
.L13:
	addi	a5,s0,-40
	mv	a1,a5
	li	a5,-45056
	addi	a0,a5,-291
	call	func0
	li	a5,2
	sw	a5,-32(s0)
	li	a5,3
	sw	a5,-28(s0)
	addi	a4,s0,-32
	addi	a5,s0,-40
	li	a2,2
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,53
	lla	a1,.LC0
	lla	a0,.LC6
	call	__assert_fail@plt
.L14:
	addi	a5,s0,-40
	mv	a1,a5
	li	a0,0
	call	func0
	li	a5,1
	sw	a5,-32(s0)
	sw	zero,-28(s0)
	addi	a4,s0,-32
	addi	a5,s0,-40
	li	a2,2
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,56
	lla	a1,.LC0
	lla	a0,.LC5
	call	__assert_fail@plt
.L15:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L17
	call	__stack_chk_fail@plt
.L17:
	mv	a0,a4
	ld	ra,40(sp)
	ld	s0,32(sp)
	addi	sp,sp,48
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
