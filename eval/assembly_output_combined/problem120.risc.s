	.file	"problem120.c"
	.option pic
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"Yes"
	.align	3
.LC1:
	.string	"No"
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
	sd	a1,-64(s0)
	sw	zero,-36(s0)
	ld	a0,-56(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-24(s0)
	ld	a0,-64(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-20(s0)
	li	a5,1
	sw	a5,-28(s0)
	sw	zero,-32(s0)
	j	.L2
.L6:
	lw	a5,-32(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,40
	bne	a4,a5,.L3
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L3:
	lw	a5,-32(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,41
	bne	a4,a5,.L4
	lw	a5,-36(s0)
	addiw	a5,a5,-1
	sw	a5,-36(s0)
.L4:
	lw	a5,-36(s0)
	sext.w	a5,a5
	bge	a5,zero,.L5
	sw	zero,-28(s0)
.L5:
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L2:
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L6
	sw	zero,-32(s0)
	j	.L7
.L11:
	lw	a5,-32(s0)
	ld	a4,-64(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,40
	bne	a4,a5,.L8
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L8:
	lw	a5,-32(s0)
	ld	a4,-64(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,41
	bne	a4,a5,.L9
	lw	a5,-36(s0)
	addiw	a5,a5,-1
	sw	a5,-36(s0)
.L9:
	lw	a5,-36(s0)
	sext.w	a5,a5
	bge	a5,zero,.L10
	sw	zero,-28(s0)
.L10:
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L7:
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L11
	lw	a5,-36(s0)
	sext.w	a5,a5
	bne	a5,zero,.L12
	lw	a5,-28(s0)
	sext.w	a5,a5
	beq	a5,zero,.L12
	lla	a5,.LC0
	j	.L13
.L12:
	sw	zero,-36(s0)
	li	a5,1
	sw	a5,-28(s0)
	sw	zero,-32(s0)
	j	.L14
.L18:
	lw	a5,-32(s0)
	ld	a4,-64(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,40
	bne	a4,a5,.L15
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L15:
	lw	a5,-32(s0)
	ld	a4,-64(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,41
	bne	a4,a5,.L16
	lw	a5,-36(s0)
	addiw	a5,a5,-1
	sw	a5,-36(s0)
.L16:
	lw	a5,-36(s0)
	sext.w	a5,a5
	bge	a5,zero,.L17
	sw	zero,-28(s0)
.L17:
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L14:
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L18
	sw	zero,-32(s0)
	j	.L19
.L23:
	lw	a5,-32(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,40
	bne	a4,a5,.L20
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L20:
	lw	a5,-32(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,41
	bne	a4,a5,.L21
	lw	a5,-36(s0)
	addiw	a5,a5,-1
	sw	a5,-36(s0)
.L21:
	lw	a5,-36(s0)
	sext.w	a5,a5
	bge	a5,zero,.L22
	sw	zero,-28(s0)
.L22:
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L19:
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L23
	lw	a5,-36(s0)
	sext.w	a5,a5
	bne	a5,zero,.L24
	lw	a5,-28(s0)
	sext.w	a5,a5
	beq	a5,zero,.L24
	lla	a5,.LC0
	j	.L13
.L24:
	lla	a5,.LC1
.L13:
	mv	a0,a5
	ld	ra,56(sp)
	ld	s0,48(sp)
	addi	sp,sp,64
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC2:
	.string	")"
	.align	3
.LC3:
	.string	"()("
	.align	3
.LC4:
	.string	"problem120.c"
	.align	3
.LC5:
	.string	"strcmp(func0(\"()(\", \")\"), \"Yes\") == 0"
	.align	3
.LC6:
	.string	"strcmp(func0(\")\", \")\"), \"No\") == 0"
	.align	3
.LC7:
	.string	"())())"
	.align	3
.LC8:
	.string	"(()(())"
	.align	3
.LC9:
	.string	"strcmp(func0(\"(()(())\", \"())())\"), \"No\") == 0"
	.align	3
.LC10:
	.string	"(()()("
	.align	3
.LC11:
	.string	")())"
	.align	3
.LC12:
	.string	"strcmp(func0(\")())\", \"(()()(\"), \"Yes\") == 0"
	.align	3
.LC13:
	.string	"(()())(("
	.align	3
.LC14:
	.string	"(())))"
	.align	3
.LC15:
	.string	"strcmp(func0(\"(())))\", \"(()())((\"), \"Yes\") == 0"
	.align	3
.LC16:
	.string	"())"
	.align	3
.LC17:
	.string	"()"
	.align	3
.LC18:
	.string	"strcmp(func0(\"()\", \"())\"), \"No\") == 0"
	.align	3
.LC19:
	.string	"()))()"
	.align	3
.LC20:
	.string	"(()("
	.align	3
.LC21:
	.string	"strcmp(func0(\"(()(\", \"()))()\"), \"Yes\") == 0"
	.align	3
.LC22:
	.string	"((())"
	.align	3
.LC23:
	.string	"(((("
	.align	3
.LC24:
	.string	"strcmp(func0(\"((((\", \"((())\"), \"No\") == 0"
	.align	3
.LC25:
	.string	")(()"
	.align	3
.LC26:
	.string	"strcmp(func0(\")(()\", \"(()(\"), \"No\") == 0"
	.align	3
.LC27:
	.string	")("
	.align	3
.LC28:
	.string	"strcmp(func0(\")(\", \")(\"), \"No\") == 0"
	.align	3
.LC29:
	.string	"("
	.align	3
.LC30:
	.string	"strcmp(func0(\"(\", \")\"), \"Yes\") == 0"
	.align	3
.LC31:
	.string	"strcmp(func0(\")\", \"(\"), \"Yes\") == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	addi	s0,sp,16
	lla	a1,.LC2
	lla	a0,.LC3
	call	func0
	mv	a5,a0
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L26
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,48
	lla	a1,.LC4
	lla	a0,.LC5
	call	__assert_fail@plt
.L26:
	lla	a1,.LC2
	lla	a0,.LC2
	call	func0
	mv	a5,a0
	lla	a1,.LC1
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L27
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,49
	lla	a1,.LC4
	lla	a0,.LC6
	call	__assert_fail@plt
.L27:
	lla	a1,.LC7
	lla	a0,.LC8
	call	func0
	mv	a5,a0
	lla	a1,.LC1
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L28
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,50
	lla	a1,.LC4
	lla	a0,.LC9
	call	__assert_fail@plt
.L28:
	lla	a1,.LC10
	lla	a0,.LC11
	call	func0
	mv	a5,a0
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L29
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,51
	lla	a1,.LC4
	lla	a0,.LC12
	call	__assert_fail@plt
.L29:
	lla	a1,.LC13
	lla	a0,.LC14
	call	func0
	mv	a5,a0
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L30
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,52
	lla	a1,.LC4
	lla	a0,.LC15
	call	__assert_fail@plt
.L30:
	lla	a1,.LC16
	lla	a0,.LC17
	call	func0
	mv	a5,a0
	lla	a1,.LC1
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L31
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,53
	lla	a1,.LC4
	lla	a0,.LC18
	call	__assert_fail@plt
.L31:
	lla	a1,.LC19
	lla	a0,.LC20
	call	func0
	mv	a5,a0
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L32
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,54
	lla	a1,.LC4
	lla	a0,.LC21
	call	__assert_fail@plt
.L32:
	lla	a1,.LC22
	lla	a0,.LC23
	call	func0
	mv	a5,a0
	lla	a1,.LC1
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L33
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,55
	lla	a1,.LC4
	lla	a0,.LC24
	call	__assert_fail@plt
.L33:
	lla	a1,.LC20
	lla	a0,.LC25
	call	func0
	mv	a5,a0
	lla	a1,.LC1
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L34
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,56
	lla	a1,.LC4
	lla	a0,.LC26
	call	__assert_fail@plt
.L34:
	lla	a1,.LC27
	lla	a0,.LC27
	call	func0
	mv	a5,a0
	lla	a1,.LC1
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L35
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,57
	lla	a1,.LC4
	lla	a0,.LC28
	call	__assert_fail@plt
.L35:
	lla	a1,.LC2
	lla	a0,.LC29
	call	func0
	mv	a5,a0
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L36
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,58
	lla	a1,.LC4
	lla	a0,.LC30
	call	__assert_fail@plt
.L36:
	lla	a1,.LC29
	lla	a0,.LC2
	call	func0
	mv	a5,a0
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L37
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,59
	lla	a1,.LC4
	lla	a0,.LC31
	call	__assert_fail@plt
.L37:
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
