	.file	"problem62.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	addi	s0,sp,64
	sd	a0,-56(s0)
	sw	zero,-40(s0)
	sw	zero,-36(s0)
	j	.L2
.L7:
	lw	a5,-36(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,40
	bne	a4,a5,.L3
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sw	a5,-40(s0)
.L3:
	lw	a5,-36(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,41
	bne	a4,a5,.L4
	lw	a5,-40(s0)
	addiw	a5,a5,-1
	sw	a5,-40(s0)
.L4:
	lw	a5,-40(s0)
	sext.w	a5,a5
	bge	a5,zero,.L5
	li	a5,0
	j	.L6
.L5:
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L2:
	lw	s1,-36(s0)
	ld	a0,-56(s0)
	call	strlen@plt
	mv	a5,a0
	bltu	s1,a5,.L7
	lw	a5,-40(s0)
	sext.w	a5,a5
	seqz	a5,a5
	andi	a5,a5,0xff
.L6:
	mv	a0,a5
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	addi	sp,sp,64
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"()"
	.align	3
.LC1:
	.string	"problem62.c"
	.align	3
.LC2:
	.string	"func0(\"()\")"
	.align	3
.LC3:
	.string	"(()())"
	.align	3
.LC4:
	.string	"func0(\"(()())\")"
	.align	3
.LC5:
	.string	"()()(()())()"
	.align	3
.LC6:
	.string	"func0(\"()()(()())()\")"
	.align	3
.LC7:
	.string	"()()((()()())())(()()(()))"
	.align	3
.LC8:
	.string	"func0(\"()()((()()())())(()()(()))\")"
	.align	3
.LC9:
	.string	"((()())))"
	.align	3
.LC10:
	.string	"!func0(\"((()())))\")"
	.align	3
.LC11:
	.string	")(()"
	.align	3
.LC12:
	.string	"!func0(\")(()\")"
	.align	3
.LC13:
	.string	"("
	.align	3
.LC14:
	.string	"!func0(\"(\")"
	.align	3
.LC15:
	.string	"(((("
	.align	3
.LC16:
	.string	"!func0(\"((((\")"
	.align	3
.LC17:
	.string	")"
	.align	3
.LC18:
	.string	"!func0(\")\")"
	.align	3
.LC19:
	.string	"(()"
	.align	3
.LC20:
	.string	"!func0(\"(()\")"
	.align	3
.LC21:
	.string	"()()(()())())(()"
	.align	3
.LC22:
	.string	"!func0(\"()()(()())())(()\")"
	.align	3
.LC23:
	.string	"()()(()())()))()"
	.align	3
.LC24:
	.string	"!func0(\"()()(()())()))()\")"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	addi	s0,sp,16
	lla	a0,.LC0
	call	func0
	mv	a5,a0
	bne	a5,zero,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,21
	lla	a1,.LC1
	lla	a0,.LC2
	call	__assert_fail@plt
.L9:
	lla	a0,.LC3
	call	func0
	mv	a5,a0
	bne	a5,zero,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,22
	lla	a1,.LC1
	lla	a0,.LC4
	call	__assert_fail@plt
.L10:
	lla	a0,.LC5
	call	func0
	mv	a5,a0
	bne	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,23
	lla	a1,.LC1
	lla	a0,.LC6
	call	__assert_fail@plt
.L11:
	lla	a0,.LC7
	call	func0
	mv	a5,a0
	bne	a5,zero,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,24
	lla	a1,.LC1
	lla	a0,.LC8
	call	__assert_fail@plt
.L12:
	lla	a0,.LC9
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,25
	lla	a1,.LC1
	lla	a0,.LC10
	call	__assert_fail@plt
.L13:
	lla	a0,.LC11
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,26
	lla	a1,.LC1
	lla	a0,.LC12
	call	__assert_fail@plt
.L14:
	lla	a0,.LC13
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,27
	lla	a1,.LC1
	lla	a0,.LC14
	call	__assert_fail@plt
.L15:
	lla	a0,.LC15
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,28
	lla	a1,.LC1
	lla	a0,.LC16
	call	__assert_fail@plt
.L16:
	lla	a0,.LC17
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,29
	lla	a1,.LC1
	lla	a0,.LC18
	call	__assert_fail@plt
.L17:
	lla	a0,.LC19
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,30
	lla	a1,.LC1
	lla	a0,.LC20
	call	__assert_fail@plt
.L18:
	lla	a0,.LC21
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L19
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,31
	lla	a1,.LC1
	lla	a0,.LC22
	call	__assert_fail@plt
.L19:
	lla	a0,.LC23
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L20
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,32
	lla	a1,.LC1
	lla	a0,.LC24
	call	__assert_fail@plt
.L20:
	li	a5,0
	mv	a0,a5
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
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
