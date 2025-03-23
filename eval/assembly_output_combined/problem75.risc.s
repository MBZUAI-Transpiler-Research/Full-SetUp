	.file	"problem75.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64
	sd	ra,56(sp)
	sd	s0,48(sp)
	addi	s0,sp,64
	sd	a0,-40(s0)
	mv	a5,a1
	sd	a2,-56(s0)
	mv	a4,a3
	sw	a5,-44(s0)
	mv	a5,a4
	sw	a5,-48(s0)
	sw	zero,-24(s0)
	sw	zero,-20(s0)
	sw	zero,-28(s0)
	j	.L2
.L3:
	lw	a5,-28(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a0,a5
	call	strlen@plt
	mv	a5,a0
	sext.w	a4,a5
	lw	a5,-24(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L2:
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L3
	sw	zero,-28(s0)
	j	.L4
.L5:
	lw	a5,-28(s0)
	slli	a5,a5,3
	ld	a4,-56(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a0,a5
	call	strlen@plt
	mv	a5,a0
	sext.w	a4,a5
	lw	a5,-20(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,-20(s0)
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L4:
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-48(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L5
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bge	a4,a5,.L6
	ld	a5,-40(s0)
	j	.L7
.L6:
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L8
	ld	a5,-56(s0)
	j	.L7
.L8:
	ld	a5,-40(s0)
.L7:
	mv	a0,a5
	ld	ra,56(sp)
	ld	s0,48(sp)
	addi	sp,sp,64
	jr	ra
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
	addi	sp,sp,-64
	sd	ra,56(sp)
	sd	s0,48(sp)
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
	beq	a4,a5,.L10
	li	a5,0
	j	.L11
.L10:
	sw	zero,-20(s0)
	j	.L12
.L14:
	lw	a5,-20(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	a5,a4,a5
	ld	a3,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,3
	ld	a4,-56(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a1,a5
	mv	a0,a3
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L13
	li	a5,0
	j	.L11
.L13:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L12:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L14
	li	a5,1
.L11:
	mv	a0,a5
	ld	ra,56(sp)
	ld	s0,48(sp)
	addi	sp,sp,64
	jr	ra
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC0:
	.string	"hi"
	.align	3
.LC1:
	.string	"admin"
	.align	3
.LC2:
	.string	"project"
	.data
	.align	3
.LC4:
	.dword	.LC0
	.dword	.LC0
	.dword	.LC1
	.dword	.LC2
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-128
	sd	ra,120(sp)
	sd	s0,112(sp)
	addi	s0,sp,128
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	sw	zero,-128(s0)
	sw	zero,-124(s0)
	lw	a3,-124(s0)
	addi	a2,s0,-112
	lw	a4,-128(s0)
	addi	a5,s0,-120
	mv	a1,a4
	mv	a0,a5
	call	func0
	lw	a3,-124(s0)
	addi	a4,s0,-112
	lw	a5,-128(s0)
	mv	a2,a4
	mv	a1,a5
	call	issame
	lla	a5,.LC0
	sd	a5,-104(s0)
	lla	a5,.LC1
	sd	a5,-96(s0)
	lla	a5,.LC0
	sd	a5,-88(s0)
	lla	a5,.LC0
	sd	a5,-80(s0)
	li	a5,2
	sw	a5,-128(s0)
	li	a5,2
	sw	a5,-124(s0)
	lw	a3,-124(s0)
	addi	a2,s0,-88
	lw	a4,-128(s0)
	addi	a5,s0,-104
	mv	a1,a4
	mv	a0,a5
	call	func0
	lw	a3,-124(s0)
	addi	a4,s0,-88
	lw	a5,-128(s0)
	mv	a2,a4
	mv	a1,a5
	call	issame
	lla	a5,.LC0
	sd	a5,-72(s0)
	lla	a5,.LC1
	sd	a5,-64(s0)
	lla	a5,.LC4
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	sd	a5,-32(s0)
	li	a5,2
	sw	a5,-128(s0)
	li	a5,4
	sw	a5,-124(s0)
	lw	a3,-124(s0)
	addi	a2,s0,-56
	lw	a4,-128(s0)
	addi	a5,s0,-72
	mv	a1,a4
	mv	a0,a5
	call	func0
	lw	a3,-128(s0)
	addi	a4,s0,-72
	lw	a5,-128(s0)
	mv	a2,a4
	mv	a1,a5
	call	issame
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
	ld	ra,120(sp)
	ld	s0,112(sp)
	addi	sp,sp,128
	jr	ra
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
