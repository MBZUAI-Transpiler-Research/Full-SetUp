	.file	"problem113.c"
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
	.section	.rodata
	.align	3
.LC2:
	.string	"ae"
	.align	3
.LC3:
	.string	"abcde"
	.align	3
.LC4:
	.string	"bcd"
	.align	3
.LC5:
	.string	"problem113.c"
	.align	3
.LC6:
	.string	"strcmp(result, \"bcd\") == 0 && strcmp(palindrome, \"False\") == 0"
	.align	3
.LC7:
	.string	"b"
	.align	3
.LC8:
	.string	"abcdef"
	.align	3
.LC9:
	.string	"acdef"
	.align	3
.LC10:
	.string	"strcmp(result, \"acdef\") == 0 && strcmp(palindrome, \"False\") == 0"
	.align	3
.LC11:
	.string	"ab"
	.align	3
.LC12:
	.string	"abcdedcba"
	.align	3
.LC13:
	.string	"cdedc"
	.align	3
.LC14:
	.string	"strcmp(result, \"cdedc\") == 0 && strcmp(palindrome, \"True\") == 0"
	.align	3
.LC15:
	.string	"w"
	.align	3
.LC16:
	.string	"dwik"
	.align	3
.LC17:
	.string	"dik"
	.align	3
.LC18:
	.string	"strcmp(result, \"dik\") == 0 && strcmp(palindrome, \"False\") == 0"
	.align	3
.LC19:
	.string	"a"
	.align	3
.LC20:
	.string	"strcmp(result, \"\") == 0 && strcmp(palindrome, \"True\") == 0"
	.align	3
.LC21:
	.string	""
	.align	3
.LC22:
	.string	"strcmp(result, \"abcdedcba\") == 0 && strcmp(palindrome, \"True\") == 0"
	.align	3
.LC23:
	.string	"v"
	.align	3
.LC24:
	.string	"vabba"
	.align	3
.LC25:
	.string	"abba"
	.align	3
.LC26:
	.string	"strcmp(result, \"abba\") == 0 && strcmp(palindrome, \"True\") == 0"
	.align	3
.LC27:
	.string	"mia"
	.align	3
.LC28:
	.string	"mamma"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-144
	sd	ra,136(sp)
	sd	s0,128(sp)
	addi	s0,sp,144
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	addi	a4,s0,-136
	addi	a5,s0,-128
	mv	a3,a4
	mv	a2,a5
	lla	a1,.LC2
	lla	a0,.LC3
	call	func0
	addi	a5,s0,-128
	lla	a1,.LC4
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	bne	a5,zero,.L16
	addi	a5,s0,-136
	lla	a1,.LC1
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L36
.L16:
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,51
	lla	a1,.LC5
	lla	a0,.LC6
	call	__assert_fail@plt
.L36:
	addi	a4,s0,-136
	addi	a5,s0,-128
	mv	a3,a4
	mv	a2,a5
	lla	a1,.LC7
	lla	a0,.LC8
	call	func0
	addi	a5,s0,-128
	lla	a1,.LC9
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	bne	a5,zero,.L18
	addi	a5,s0,-136
	lla	a1,.LC1
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L37
.L18:
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,54
	lla	a1,.LC5
	lla	a0,.LC10
	call	__assert_fail@plt
.L37:
	addi	a4,s0,-136
	addi	a5,s0,-128
	mv	a3,a4
	mv	a2,a5
	lla	a1,.LC11
	lla	a0,.LC12
	call	func0
	addi	a5,s0,-128
	lla	a1,.LC13
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	bne	a5,zero,.L20
	addi	a5,s0,-136
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L38
.L20:
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,57
	lla	a1,.LC5
	lla	a0,.LC14
	call	__assert_fail@plt
.L38:
	addi	a4,s0,-136
	addi	a5,s0,-128
	mv	a3,a4
	mv	a2,a5
	lla	a1,.LC15
	lla	a0,.LC16
	call	func0
	addi	a5,s0,-128
	lla	a1,.LC17
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	bne	a5,zero,.L22
	addi	a5,s0,-136
	lla	a1,.LC1
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L39
.L22:
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,60
	lla	a1,.LC5
	lla	a0,.LC18
	call	__assert_fail@plt
.L39:
	addi	a4,s0,-136
	addi	a5,s0,-128
	mv	a3,a4
	mv	a2,a5
	lla	a1,.LC19
	lla	a0,.LC19
	call	func0
	lbu	a5,-128(s0)
	sext.w	a5,a5
	bne	a5,zero,.L24
	addi	a5,s0,-136
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L40
.L24:
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,63
	lla	a1,.LC5
	lla	a0,.LC20
	call	__assert_fail@plt
.L40:
	addi	a4,s0,-136
	addi	a5,s0,-128
	mv	a3,a4
	mv	a2,a5
	lla	a1,.LC21
	lla	a0,.LC12
	call	func0
	addi	a5,s0,-128
	lla	a1,.LC12
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	bne	a5,zero,.L26
	addi	a5,s0,-136
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L41
.L26:
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,66
	lla	a1,.LC5
	lla	a0,.LC22
	call	__assert_fail@plt
.L41:
	addi	a4,s0,-136
	addi	a5,s0,-128
	mv	a3,a4
	mv	a2,a5
	lla	a1,.LC23
	lla	a0,.LC12
	call	func0
	addi	a5,s0,-128
	lla	a1,.LC12
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	bne	a5,zero,.L28
	addi	a5,s0,-136
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L42
.L28:
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,69
	lla	a1,.LC5
	lla	a0,.LC22
	call	__assert_fail@plt
.L42:
	addi	a4,s0,-136
	addi	a5,s0,-128
	mv	a3,a4
	mv	a2,a5
	lla	a1,.LC23
	lla	a0,.LC24
	call	func0
	addi	a5,s0,-128
	lla	a1,.LC25
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	bne	a5,zero,.L30
	addi	a5,s0,-136
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L43
.L30:
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,72
	lla	a1,.LC5
	lla	a0,.LC26
	call	__assert_fail@plt
.L43:
	addi	a4,s0,-136
	addi	a5,s0,-128
	mv	a3,a4
	mv	a2,a5
	lla	a1,.LC27
	lla	a0,.LC28
	call	func0
	lbu	a5,-128(s0)
	sext.w	a5,a5
	bne	a5,zero,.L32
	addi	a5,s0,-136
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L44
.L32:
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,75
	lla	a1,.LC5
	lla	a0,.LC20
	call	__assert_fail@plt
.L44:
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
	ld	ra,136(sp)
	ld	s0,128(sp)
	addi	sp,sp,144
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
