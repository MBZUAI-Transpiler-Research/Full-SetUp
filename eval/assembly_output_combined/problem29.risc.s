	.file	"problem29.c"
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
	sd	a0,-56(s0)
	mv	a5,a1
	sw	a5,-60(s0)
	sw	zero,-36(s0)
	sw	zero,-32(s0)
	j	.L2
.L3:
	lw	a5,-32(s0)
	slli	a5,a5,3
	ld	a4,-56(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a0,a5
	call	strlen@plt
	mv	a5,a0
	sext.w	a4,a5
	lw	a5,-36(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,-36(s0)
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L2:
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L3
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	ld	a5,-24(s0)
	bne	a5,zero,.L4
	li	a5,0
	j	.L5
.L4:
	ld	a5,-24(s0)
	sb	zero,0(a5)
	sw	zero,-28(s0)
	j	.L6
.L7:
	lw	a5,-28(s0)
	slli	a5,a5,3
	ld	a4,-56(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a1,a5
	ld	a0,-24(s0)
	call	strcat@plt
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L6:
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L7
	ld	a5,-24(s0)
.L5:
	mv	a0,a5
	ld	ra,56(sp)
	ld	s0,48(sp)
	addi	sp,sp,64
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC6:
	.string	"problem29.c"
	.align	3
.LC7:
	.string	"strcmp(result, \"\") == 0"
	.align	3
.LC0:
	.string	"x"
	.align	3
.LC1:
	.string	"y"
	.align	3
.LC2:
	.string	"z"
	.align	3
.LC8:
	.string	"xyz"
	.align	3
.LC9:
	.string	"strcmp(result, \"xyz\") == 0"
	.align	3
.LC11:
	.string	"xyzwk"
	.align	3
.LC12:
	.string	"strcmp(result, \"xyzwk\") == 0"
	.align	3
.LC3:
	.string	"w"
	.align	3
.LC4:
	.string	"k"
	.data
	.align	3
.LC10:
	.dword	.LC0
	.dword	.LC1
	.dword	.LC2
	.dword	.LC3
	.dword	.LC4
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
	addi	a5,s0,-96
	li	a1,0
	mv	a0,a5
	call	func0
	sd	a0,-104(s0)
	ld	a5,-104(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	beq	a5,zero,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,35
	lla	a1,.LC6
	lla	a0,.LC7
	call	__assert_fail@plt
.L9:
	ld	a0,-104(s0)
	call	free@plt
	lla	a5,.LC0
	sd	a5,-88(s0)
	lla	a5,.LC1
	sd	a5,-80(s0)
	lla	a5,.LC2
	sd	a5,-72(s0)
	addi	a5,s0,-88
	li	a1,3
	mv	a0,a5
	call	func0
	sd	a0,-104(s0)
	lla	a1,.LC8
	ld	a0,-104(s0)
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,40
	lla	a1,.LC6
	lla	a0,.LC9
	call	__assert_fail@plt
.L10:
	ld	a0,-104(s0)
	call	free@plt
	lla	a5,.LC10
	ld	a1,0(a5)
	ld	a2,8(a5)
	ld	a3,16(a5)
	ld	a4,24(a5)
	ld	a5,32(a5)
	sd	a1,-64(s0)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	sd	a5,-32(s0)
	addi	a5,s0,-64
	li	a1,5
	mv	a0,a5
	call	func0
	sd	a0,-104(s0)
	lla	a1,.LC11
	ld	a0,-104(s0)
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,45
	lla	a1,.LC6
	lla	a0,.LC12
	call	__assert_fail@plt
.L11:
	ld	a0,-104(s0)
	call	free@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L13
	call	__stack_chk_fail@plt
.L13:
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
