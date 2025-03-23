	.file	"problem97.c"
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
	mv	a5,a0
	sd	a1,-64(s0)
	sw	a5,-52(s0)
	lw	a5,-52(s0)
	slli	a5,a5,2
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	ld	a5,-64(s0)
	sw	zero,0(a5)
	li	a5,2
	sw	a5,-40(s0)
	j	.L2
.L9:
	li	a5,1
	sw	a5,-32(s0)
	sw	zero,-36(s0)
	j	.L3
.L7:
	lw	a5,-36(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	mulw	a5,a5,a5
	sext.w	a4,a5
	lw	a5,-40(s0)
	sext.w	a5,a5
	blt	a5,a4,.L11
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	remw	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L6
	sw	zero,-32(s0)
	j	.L5
.L6:
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L3:
	ld	a5,-64(s0)
	lw	a4,0(a5)
	lw	a5,-36(s0)
	sext.w	a5,a5
	blt	a5,a4,.L7
	j	.L5
.L11:
	nop
.L5:
	lw	a5,-32(s0)
	sext.w	a5,a5
	beq	a5,zero,.L8
	ld	a5,-64(s0)
	lw	a5,0(a5)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a4,-40(s0)
	sw	a4,0(a5)
	ld	a5,-64(s0)
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	ld	a5,-64(s0)
	sw	a4,0(a5)
.L8:
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sw	a5,-40(s0)
.L2:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L9
	ld	a5,-24(s0)
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
	sd	s0,56(sp)
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
	beq	a4,a5,.L13
	li	a5,0
	j	.L14
.L13:
	sw	zero,-20(s0)
	j	.L15
.L17:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	beq	a4,a5,.L16
	li	a5,0
	j	.L14
.L16:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L15:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L17
	li	a5,1
.L14:
	mv	a0,a5
	ld	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC5:
	.string	"problem97.c"
	.align	3
.LC6:
	.string	"issame(result, count, (int[]){2, 3}, 2)"
	.align	3
.LC7:
	.string	"issame(result, count, (int[]){2, 3, 5}, 3)"
	.align	3
.LC8:
	.string	"issame(result, count, (int[]){2, 3, 5, 7}, 4)"
	.align	3
.LC9:
	.string	"count == 0"
	.align	3
.LC10:
	.string	"issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17, 19}, 8)"
	.align	3
.LC11:
	.string	"issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17}, 7)"
	.align	3
.LC12:
	.string	"issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43}, 14)"
	.align	3
.LC13:
	.string	"issame(result, count, expected, 25)"
	.align	3
.LC0:
	.word	2
	.word	3
	.word	5
	.word	7
	.word	11
	.word	13
	.word	17
	.word	19
	.word	23
	.word	29
	.word	31
	.word	37
	.word	41
	.word	43
	.word	47
	.word	53
	.word	59
	.word	61
	.word	67
	.word	71
	.word	73
	.word	79
	.word	83
	.word	89
	.word	97
	.align	3
.LC1:
	.word	2
	.word	3
	.word	5
	.word	7
	.align	3
.LC2:
	.word	2
	.word	3
	.word	5
	.word	7
	.word	11
	.word	13
	.word	17
	.word	19
	.align	3
.LC3:
	.word	2
	.word	3
	.word	5
	.word	7
	.word	11
	.word	13
	.word	17
	.align	3
.LC4:
	.word	2
	.word	3
	.word	5
	.word	7
	.word	11
	.word	13
	.word	17
	.word	19
	.word	23
	.word	29
	.word	31
	.word	37
	.word	41
	.word	43
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-208
	sd	ra,200(sp)
	sd	s0,192(sp)
	addi	s0,sp,208
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a4,.LC0
	addi	a5,s0,-128
	mv	a3,a4
	li	a4,100
	mv	a2,a4
	mv	a1,a3
	mv	a0,a5
	call	memcpy@plt
	addi	a5,s0,-196
	mv	a1,a5
	li	a0,5
	call	func0
	sd	a0,-192(s0)
	lw	a4,-196(s0)
	li	a5,2
	sw	a5,-184(s0)
	li	a5,3
	sw	a5,-180(s0)
	addi	a5,s0,-184
	li	a3,2
	mv	a2,a5
	mv	a1,a4
	ld	a0,-192(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L19
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,46
	lla	a1,.LC5
	lla	a0,.LC6
	call	__assert_fail@plt
.L19:
	ld	a0,-192(s0)
	call	free@plt
	addi	a5,s0,-196
	mv	a1,a5
	li	a0,6
	call	func0
	sd	a0,-192(s0)
	lw	a4,-196(s0)
	li	a5,2
	sw	a5,-184(s0)
	li	a5,3
	sw	a5,-180(s0)
	li	a5,5
	sw	a5,-176(s0)
	addi	a5,s0,-184
	li	a3,3
	mv	a2,a5
	mv	a1,a4
	ld	a0,-192(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L20
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,50
	lla	a1,.LC5
	lla	a0,.LC7
	call	__assert_fail@plt
.L20:
	ld	a0,-192(s0)
	call	free@plt
	addi	a5,s0,-196
	mv	a1,a5
	li	a0,7
	call	func0
	sd	a0,-192(s0)
	lw	a4,-196(s0)
	li	a5,2
	sw	a5,-184(s0)
	li	a5,3
	sw	a5,-180(s0)
	li	a5,5
	sw	a5,-176(s0)
	addi	a5,s0,-184
	li	a3,3
	mv	a2,a5
	mv	a1,a4
	ld	a0,-192(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L21
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,54
	lla	a1,.LC5
	lla	a0,.LC7
	call	__assert_fail@plt
.L21:
	ld	a0,-192(s0)
	call	free@plt
	addi	a5,s0,-196
	mv	a1,a5
	li	a0,10
	call	func0
	sd	a0,-192(s0)
	lw	a1,-196(s0)
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-184(s0)
	ld	a5,8(a5)
	sd	a5,-176(s0)
	addi	a5,s0,-184
	li	a3,4
	mv	a2,a5
	ld	a0,-192(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L22
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,58
	lla	a1,.LC5
	lla	a0,.LC8
	call	__assert_fail@plt
.L22:
	ld	a0,-192(s0)
	call	free@plt
	addi	a5,s0,-196
	mv	a1,a5
	li	a0,0
	call	func0
	sd	a0,-192(s0)
	lw	a5,-196(s0)
	beq	a5,zero,.L23
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,62
	lla	a1,.LC5
	lla	a0,.LC9
	call	__assert_fail@plt
.L23:
	ld	a0,-192(s0)
	call	free@plt
	addi	a5,s0,-196
	mv	a1,a5
	li	a0,22
	call	func0
	sd	a0,-192(s0)
	lw	a1,-196(s0)
	lla	a5,.LC2
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-184(s0)
	sd	a3,-176(s0)
	sd	a4,-168(s0)
	sd	a5,-160(s0)
	addi	a5,s0,-184
	li	a3,8
	mv	a2,a5
	ld	a0,-192(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L24
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,66
	lla	a1,.LC5
	lla	a0,.LC10
	call	__assert_fail@plt
.L24:
	ld	a0,-192(s0)
	call	free@plt
	addi	a5,s0,-196
	mv	a1,a5
	li	a0,1
	call	func0
	sd	a0,-192(s0)
	lw	a5,-196(s0)
	beq	a5,zero,.L25
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,70
	lla	a1,.LC5
	lla	a0,.LC9
	call	__assert_fail@plt
.L25:
	ld	a0,-192(s0)
	call	free@plt
	addi	a5,s0,-196
	mv	a1,a5
	li	a0,18
	call	func0
	sd	a0,-192(s0)
	lw	a1,-196(s0)
	lla	a5,.LC3
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	sd	a2,-184(s0)
	sd	a3,-176(s0)
	sd	a4,-168(s0)
	lw	a5,24(a5)
	sw	a5,-160(s0)
	addi	a5,s0,-184
	li	a3,7
	mv	a2,a5
	ld	a0,-192(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L26
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,74
	lla	a1,.LC5
	lla	a0,.LC11
	call	__assert_fail@plt
.L26:
	ld	a0,-192(s0)
	call	free@plt
	addi	a5,s0,-196
	mv	a1,a5
	li	a0,47
	call	func0
	sd	a0,-192(s0)
	lw	a7,-196(s0)
	lla	a5,.LC4
	ld	a6,0(a5)
	ld	a0,8(a5)
	ld	a1,16(a5)
	ld	a2,24(a5)
	ld	a3,32(a5)
	ld	a4,40(a5)
	ld	a5,48(a5)
	sd	a6,-184(s0)
	sd	a0,-176(s0)
	sd	a1,-168(s0)
	sd	a2,-160(s0)
	sd	a3,-152(s0)
	sd	a4,-144(s0)
	sd	a5,-136(s0)
	addi	a5,s0,-184
	li	a3,14
	mv	a2,a5
	mv	a1,a7
	ld	a0,-192(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L27
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,78
	lla	a1,.LC5
	lla	a0,.LC12
	call	__assert_fail@plt
.L27:
	ld	a0,-192(s0)
	call	free@plt
	addi	a5,s0,-196
	mv	a1,a5
	li	a0,101
	call	func0
	sd	a0,-192(s0)
	lw	a5,-196(s0)
	addi	a4,s0,-128
	li	a3,25
	mv	a2,a4
	mv	a1,a5
	ld	a0,-192(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L28
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,82
	lla	a1,.LC5
	lla	a0,.LC13
	call	__assert_fail@plt
.L28:
	ld	a0,-192(s0)
	call	free@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L30
	call	__stack_chk_fail@plt
.L30:
	mv	a0,a4
	ld	ra,200(sp)
	ld	s0,192(sp)
	addi	sp,sp,208
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
