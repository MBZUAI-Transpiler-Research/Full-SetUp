	.file	"problem155.c"
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
	sd	a1,-64(s0)
	ld	a0,-56(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-32(s0)
	ld	a0,-64(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	slliw	a5,a5,1
	sext.w	a5,a5
	addiw	a5,a5,1
	sext.w	a5,a5
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	sw	zero,-36(s0)
	j	.L2
.L5:
	lw	a5,-36(s0)
	ld	a4,-64(s0)
	add	a5,a4,a5
	lw	a4,-28(s0)
	mv	a3,a4
	lw	a4,-36(s0)
	subw	a4,a3,a4
	sext.w	a4,a4
	mv	a2,a4
	mv	a1,a5
	ld	a0,-24(s0)
	call	strncpy@plt
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	sub	a5,a4,a5
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a4,-36(s0)
	mv	a2,a4
	ld	a1,-64(s0)
	mv	a0,a5
	call	strncpy@plt
	lw	a5,-28(s0)
	ld	a4,-24(s0)
	add	a5,a4,a5
	sb	zero,0(a5)
	ld	a1,-24(s0)
	ld	a0,-56(s0)
	call	strstr@plt
	mv	a5,a0
	beq	a5,zero,.L3
	ld	a0,-24(s0)
	call	free@plt
	li	a5,1
	j	.L4
.L3:
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L2:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L5
	ld	a0,-24(s0)
	call	free@plt
	li	a5,0
.L4:
	mv	a0,a5
	ld	ra,56(sp)
	ld	s0,48(sp)
	addi	sp,sp,64
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"xyw"
	.align	3
.LC1:
	.string	"xyzw"
	.align	3
.LC2:
	.string	"problem155.c"
	.align	3
.LC3:
	.string	"func0(\"xyzw\", \"xyw\") == false"
	.align	3
.LC4:
	.string	"ell"
	.align	3
.LC5:
	.string	"yello"
	.align	3
.LC6:
	.string	"func0(\"yello\", \"ell\") == true"
	.align	3
.LC7:
	.string	"ptut"
	.align	3
.LC8:
	.string	"whattup"
	.align	3
.LC9:
	.string	"func0(\"whattup\", \"ptut\") == false"
	.align	3
.LC10:
	.string	"fee"
	.align	3
.LC11:
	.string	"efef"
	.align	3
.LC12:
	.string	"func0(\"efef\", \"fee\") == true"
	.align	3
.LC13:
	.string	"aabb"
	.align	3
.LC14:
	.string	"abab"
	.align	3
.LC15:
	.string	"func0(\"abab\", \"aabb\") == false"
	.align	3
.LC16:
	.string	"tinem"
	.align	3
.LC17:
	.string	"winemtt"
	.align	3
.LC18:
	.string	"func0(\"winemtt\", \"tinem\") == true"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	addi	s0,sp,16
	lla	a1,.LC0
	lla	a0,.LC1
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L7
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,31
	lla	a1,.LC2
	lla	a0,.LC3
	call	__assert_fail@plt
.L7:
	lla	a1,.LC4
	lla	a0,.LC5
	call	func0
	mv	a5,a0
	bne	a5,zero,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,32
	lla	a1,.LC2
	lla	a0,.LC6
	call	__assert_fail@plt
.L8:
	lla	a1,.LC7
	lla	a0,.LC8
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,33
	lla	a1,.LC2
	lla	a0,.LC9
	call	__assert_fail@plt
.L9:
	lla	a1,.LC10
	lla	a0,.LC11
	call	func0
	mv	a5,a0
	bne	a5,zero,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,34
	lla	a1,.LC2
	lla	a0,.LC12
	call	__assert_fail@plt
.L10:
	lla	a1,.LC13
	lla	a0,.LC14
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,35
	lla	a1,.LC2
	lla	a0,.LC15
	call	__assert_fail@plt
.L11:
	lla	a1,.LC16
	lla	a0,.LC17
	call	func0
	mv	a5,a0
	bne	a5,zero,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,36
	lla	a1,.LC2
	lla	a0,.LC18
	call	__assert_fail@plt
.L12:
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
