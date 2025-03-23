	.file	"problem118.c"
	.option pic
	.text
	.section	.rodata
	.align	3
.LC5:
	.string	"aeiouAEIOU"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-112
	sd	ra,104(sp)
	sd	s0,96(sp)
	sd	s1,88(sp)
	addi	s0,sp,112
	sd	a0,-88(s0)
	mv	a5,a1
	sd	a2,-104(s0)
	sw	a5,-92(s0)
	lla	a5,.LC5
	sd	a5,-56(s0)
	sd	zero,-64(s0)
	sw	zero,-80(s0)
	sw	zero,-76(s0)
	sw	zero,-72(s0)
	ld	a0,-88(s0)
	call	strlen@plt
	sd	a0,-48(s0)
	ld	a5,-48(s0)
	addi	a5,a5,1
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-40(s0)
	sw	zero,-68(s0)
	j	.L2
.L7:
	call	__ctype_b_loc@plt
	mv	a5,a0
	ld	a4,0(a5)
	lw	a5,-68(s0)
	ld	a3,-88(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a4,a5
	li	a5,8192
	and	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L3
	lw	a5,-68(s0)
	ld	a4,-88(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L4
.L3:
	lw	a5,-80(s0)
	mv	a4,a5
	lw	a5,-92(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bne	a4,a5,.L5
	lw	a5,-68(s0)
	mv	a4,a5
	lw	a5,-72(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,-40(s0)
	add	a5,a5,a4
	sb	zero,0(a5)
	lw	a5,-76(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	slli	a5,a5,3
	mv	a1,a5
	ld	a0,-64(s0)
	call	realloc@plt
	sd	a0,-64(s0)
	ld	a0,-40(s0)
	call	strlen@plt
	mv	a5,a0
	addi	a3,a5,1
	lw	a5,-76(s0)
	slli	a5,a5,3
	ld	a4,-64(s0)
	add	s1,a4,a5
	mv	a0,a3
	call	malloc@plt
	mv	a5,a0
	sd	a5,0(s1)
	lw	a5,-76(s0)
	slli	a5,a5,3
	ld	a4,-64(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	ld	a1,-40(s0)
	mv	a0,a5
	call	strcpy@plt
	lw	a5,-76(s0)
	addiw	a5,a5,1
	sw	a5,-76(s0)
.L5:
	lw	a5,-68(s0)
	addiw	a5,a5,1
	sw	a5,-72(s0)
	sw	zero,-80(s0)
	j	.L6
.L4:
	lw	a5,-68(s0)
	ld	a4,-88(s0)
	add	a4,a4,a5
	lw	a5,-68(s0)
	mv	a3,a5
	lw	a5,-72(s0)
	subw	a5,a3,a5
	sext.w	a5,a5
	mv	a3,a5
	ld	a5,-40(s0)
	add	a5,a5,a3
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,-68(s0)
	ld	a4,-88(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a1,a5
	ld	a0,-56(s0)
	call	strchr@plt
	mv	a5,a0
	bne	a5,zero,.L6
	call	__ctype_b_loc@plt
	mv	a5,a0
	ld	a4,0(a5)
	lw	a5,-68(s0)
	ld	a3,-88(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,1024
	sext.w	a5,a5
	beq	a5,zero,.L6
	lw	a5,-80(s0)
	addiw	a5,a5,1
	sw	a5,-80(s0)
.L6:
	lw	a5,-68(s0)
	addiw	a5,a5,1
	sw	a5,-68(s0)
.L2:
	lw	a5,-68(s0)
	ld	a4,-48(s0)
	bgeu	a4,a5,.L7
	ld	a0,-40(s0)
	call	free@plt
	ld	a5,-104(s0)
	lw	a4,-76(s0)
	sw	a4,0(a5)
	ld	a5,-64(s0)
	mv	a0,a5
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	addi	sp,sp,112
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
	.align	1
	.globl	free_words
	.type	free_words, @function
free_words:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	addi	s0,sp,48
	sd	a0,-40(s0)
	mv	a5,a1
	sw	a5,-44(s0)
	sw	zero,-20(s0)
	j	.L16
.L17:
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
.L16:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L17
	ld	a0,-40(s0)
	call	free@plt
	nop
	ld	ra,40(sp)
	ld	s0,32(sp)
	addi	sp,sp,48
	jr	ra
	.size	free_words, .-free_words
	.section	.rodata
	.align	3
.LC6:
	.string	"Mary had a little lamb"
	.align	3
.LC7:
	.string	"little"
	.align	3
.LC8:
	.string	"problem118.c"
	.align	3
.LC9:
	.string	"issame(words, size, expected1, 1)"
	.align	3
.LC10:
	.string	"Mary"
	.align	3
.LC11:
	.string	"lamb"
	.align	3
.LC12:
	.string	"issame(words, size, expected2, 2)"
	.align	3
.LC13:
	.string	"simple white space"
	.align	3
.LC14:
	.string	"size == 0"
	.align	3
.LC15:
	.string	"Hello world"
	.align	3
.LC16:
	.string	"world"
	.align	3
.LC17:
	.string	"issame(words, size, expected3, 1)"
	.align	3
.LC18:
	.string	"Uncle sam"
	.align	3
.LC19:
	.string	"Uncle"
	.align	3
.LC20:
	.string	"issame(words, size, expected4, 1)"
	.align	3
.LC21:
	.string	""
	.align	3
.LC22:
	.string	"a b c d e f"
	.align	3
.LC24:
	.string	"issame(words, size, expected5, 4)"
	.align	3
.LC0:
	.string	"b"
	.align	3
.LC1:
	.string	"c"
	.align	3
.LC2:
	.string	"d"
	.align	3
.LC3:
	.string	"f"
	.data
	.align	3
.LC23:
	.dword	.LC0
	.dword	.LC1
	.dword	.LC2
	.dword	.LC3
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
	mv	a2,a5
	li	a1,4
	lla	a0,.LC6
	call	func0
	sd	a0,-104(s0)
	lla	a5,.LC7
	sd	a5,-96(s0)
	lw	a5,-108(s0)
	addi	a4,s0,-96
	li	a3,1
	mv	a2,a4
	mv	a1,a5
	ld	a0,-104(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L19
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,65
	lla	a1,.LC8
	lla	a0,.LC9
	call	__assert_fail@plt
.L19:
	lw	a5,-108(s0)
	mv	a1,a5
	ld	a0,-104(s0)
	call	free_words
	addi	a5,s0,-108
	mv	a2,a5
	li	a1,3
	lla	a0,.LC6
	call	func0
	sd	a0,-104(s0)
	lla	a5,.LC10
	sd	a5,-72(s0)
	lla	a5,.LC11
	sd	a5,-64(s0)
	lw	a5,-108(s0)
	addi	a4,s0,-72
	li	a3,2
	mv	a2,a4
	mv	a1,a5
	ld	a0,-104(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L20
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,70
	lla	a1,.LC8
	lla	a0,.LC12
	call	__assert_fail@plt
.L20:
	lw	a5,-108(s0)
	mv	a1,a5
	ld	a0,-104(s0)
	call	free_words
	addi	a5,s0,-108
	mv	a2,a5
	li	a1,2
	lla	a0,.LC13
	call	func0
	sd	a0,-104(s0)
	lw	a5,-108(s0)
	beq	a5,zero,.L21
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,74
	lla	a1,.LC8
	lla	a0,.LC14
	call	__assert_fail@plt
.L21:
	lw	a5,-108(s0)
	mv	a1,a5
	ld	a0,-104(s0)
	call	free_words
	addi	a5,s0,-108
	mv	a2,a5
	li	a1,4
	lla	a0,.LC15
	call	func0
	sd	a0,-104(s0)
	lla	a5,.LC16
	sd	a5,-88(s0)
	lw	a5,-108(s0)
	addi	a4,s0,-88
	li	a3,1
	mv	a2,a4
	mv	a1,a5
	ld	a0,-104(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L22
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,79
	lla	a1,.LC8
	lla	a0,.LC17
	call	__assert_fail@plt
.L22:
	lw	a5,-108(s0)
	mv	a1,a5
	ld	a0,-104(s0)
	call	free_words
	addi	a5,s0,-108
	mv	a2,a5
	li	a1,3
	lla	a0,.LC18
	call	func0
	sd	a0,-104(s0)
	lla	a5,.LC19
	sd	a5,-80(s0)
	lw	a5,-108(s0)
	addi	a4,s0,-80
	li	a3,1
	mv	a2,a4
	mv	a1,a5
	ld	a0,-104(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L23
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,84
	lla	a1,.LC8
	lla	a0,.LC20
	call	__assert_fail@plt
.L23:
	lw	a5,-108(s0)
	mv	a1,a5
	ld	a0,-104(s0)
	call	free_words
	addi	a5,s0,-108
	mv	a2,a5
	li	a1,4
	lla	a0,.LC21
	call	func0
	sd	a0,-104(s0)
	lw	a5,-108(s0)
	beq	a5,zero,.L24
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,88
	lla	a1,.LC8
	lla	a0,.LC14
	call	__assert_fail@plt
.L24:
	lw	a5,-108(s0)
	mv	a1,a5
	ld	a0,-104(s0)
	call	free_words
	addi	a5,s0,-108
	mv	a2,a5
	li	a1,1
	lla	a0,.LC22
	call	func0
	sd	a0,-104(s0)
	lla	a5,.LC23
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	sd	a5,-32(s0)
	lw	a5,-108(s0)
	addi	a4,s0,-56
	li	a3,4
	mv	a2,a4
	mv	a1,a5
	ld	a0,-104(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L25
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,93
	lla	a1,.LC8
	lla	a0,.LC24
	call	__assert_fail@plt
.L25:
	lw	a5,-108(s0)
	mv	a1,a5
	ld	a0,-104(s0)
	call	free_words
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L27
	call	__stack_chk_fail@plt
.L27:
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
