	.file	"problem15.c"
	.option pic
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
	sd	a1,-80(s0)
	ld	a0,-72(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-60(s0)
	lw	a5,-60(s0)
	slli	a5,a5,3
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-48(s0)
	lw	a5,-60(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-56(s0)
	ld	a5,-56(s0)
	sb	zero,0(a5)
	sw	zero,-64(s0)
	j	.L2
.L3:
	ld	a0,-56(s0)
	call	strlen@plt
	sd	a0,-40(s0)
	ld	a5,-40(s0)
	addi	a5,a5,2
	mv	a1,a5
	ld	a0,-56(s0)
	call	realloc@plt
	sd	a0,-56(s0)
	lw	a5,-64(s0)
	ld	a4,-72(s0)
	add	a4,a4,a5
	ld	a3,-56(s0)
	ld	a5,-40(s0)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
	ld	a5,-40(s0)
	addi	a5,a5,1
	ld	a4,-56(s0)
	add	a5,a4,a5
	sb	zero,0(a5)
	ld	a0,-56(s0)
	call	strlen@plt
	mv	a5,a0
	addi	a3,a5,1
	lw	a5,-64(s0)
	slli	a5,a5,3
	ld	a4,-48(s0)
	add	s1,a4,a5
	mv	a0,a3
	call	malloc@plt
	mv	a5,a0
	sd	a5,0(s1)
	lw	a5,-64(s0)
	slli	a5,a5,3
	ld	a4,-48(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	ld	a1,-56(s0)
	mv	a0,a5
	call	strcpy@plt
	lw	a5,-64(s0)
	addiw	a5,a5,1
	sw	a5,-64(s0)
.L2:
	lw	a5,-64(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L3
	ld	a0,-56(s0)
	call	free@plt
	ld	a5,-80(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
	ld	a5,-48(s0)
	mv	a0,a5
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	addi	sp,sp,80
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
	beq	a4,a5,.L6
	li	a5,0
	j	.L7
.L6:
	sw	zero,-20(s0)
	j	.L8
.L10:
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
	beq	a5,zero,.L9
	li	a5,0
	j	.L7
.L9:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L8:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L10
	li	a5,1
.L7:
	mv	a0,a5
	ld	ra,56(sp)
	ld	s0,48(sp)
	addi	sp,sp,64
	jr	ra
	.size	issame, .-issame
	.align	1
	.globl	free_prefixes
	.type	free_prefixes, @function
free_prefixes:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	addi	s0,sp,48
	sd	a0,-40(s0)
	mv	a5,a1
	sw	a5,-44(s0)
	sw	zero,-20(s0)
	j	.L12
.L13:
	lw	a5,-20(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a0,a5
	call	free@plt
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L12:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L13
	ld	a0,-40(s0)
	call	free@plt
	nop
	ld	ra,40(sp)
	ld	s0,32(sp)
	addi	sp,sp,48
	jr	ra
	.size	free_prefixes, .-free_prefixes
	.section	.rodata
	.align	3
.LC7:
	.string	""
	.align	3
.LC8:
	.string	"problem15.c"
	.align	3
.LC9:
	.string	"issame(result, 0, NULL, 0)"
	.align	3
.LC5:
	.string	"asdfgh"
	.align	3
.LC11:
	.string	"issame(result, count, expected1, 6)"
	.align	3
.LC12:
	.string	"W"
	.align	3
.LC13:
	.string	"WW"
	.align	3
.LC14:
	.string	"WWW"
	.align	3
.LC15:
	.string	"issame(result, count, expected2, 3)"
	.align	3
.LC0:
	.string	"a"
	.align	3
.LC1:
	.string	"as"
	.align	3
.LC2:
	.string	"asd"
	.align	3
.LC3:
	.string	"asdf"
	.align	3
.LC4:
	.string	"asdfg"
	.data
	.align	3
.LC10:
	.dword	.LC0
	.dword	.LC1
	.dword	.LC2
	.dword	.LC3
	.dword	.LC4
	.dword	.LC5
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
	addi	a5,s0,-108
	mv	a1,a5
	lla	a0,.LC7
	call	func0
	sd	a0,-104(s0)
	li	a3,0
	li	a2,0
	li	a1,0
	ld	a0,-104(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,53
	lla	a1,.LC8
	lla	a0,.LC9
	call	__assert_fail@plt
.L15:
	lw	a5,-108(s0)
	mv	a1,a5
	ld	a0,-104(s0)
	call	free_prefixes
	lla	a5,.LC10
	ld	a0,0(a5)
	ld	a1,8(a5)
	ld	a2,16(a5)
	ld	a3,24(a5)
	ld	a4,32(a5)
	ld	a5,40(a5)
	sd	a0,-72(s0)
	sd	a1,-64(s0)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	sd	a5,-32(s0)
	addi	a5,s0,-108
	mv	a1,a5
	lla	a0,.LC5
	call	func0
	sd	a0,-104(s0)
	lw	a5,-108(s0)
	addi	a4,s0,-72
	li	a3,6
	mv	a2,a4
	mv	a1,a5
	ld	a0,-104(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,58
	lla	a1,.LC8
	lla	a0,.LC11
	call	__assert_fail@plt
.L16:
	lw	a5,-108(s0)
	mv	a1,a5
	ld	a0,-104(s0)
	call	free_prefixes
	lla	a5,.LC12
	sd	a5,-96(s0)
	lla	a5,.LC13
	sd	a5,-88(s0)
	lla	a5,.LC14
	sd	a5,-80(s0)
	addi	a5,s0,-108
	mv	a1,a5
	lla	a0,.LC14
	call	func0
	sd	a0,-104(s0)
	lw	a5,-108(s0)
	addi	a4,s0,-96
	li	a3,3
	mv	a2,a4
	mv	a1,a5
	ld	a0,-104(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,63
	lla	a1,.LC8
	lla	a0,.LC15
	call	__assert_fail@plt
.L17:
	lw	a5,-108(s0)
	mv	a1,a5
	ld	a0,-104(s0)
	call	free_prefixes
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L19
	call	__stack_chk_fail@plt
.L19:
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
