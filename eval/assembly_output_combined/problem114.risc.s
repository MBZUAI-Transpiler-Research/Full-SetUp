	.file	"problem114.c"
	.option pic
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"the number of odd elements %d in the string %d of the %d input."
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
	mv	a5,a1
	sw	a5,-76(s0)
	lw	a5,-76(s0)
	slli	a5,a5,3
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-40(s0)
	sw	zero,-52(s0)
	j	.L2
.L6:
	sw	zero,-48(s0)
	sw	zero,-44(s0)
	j	.L3
.L5:
	lw	a5,-52(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-44(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,47
	bleu	a4,a5,.L4
	lw	a5,-52(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-44(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,57
	bgtu	a4,a5,.L4
	lw	a5,-52(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-44(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	addiw	a5,a5,-48
	sext.w	a5,a5
	mv	a4,a5
	sraiw	a5,a4,31
	srliw	a5,a5,31
	addw	a4,a4,a5
	andi	a4,a4,1
	subw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,1
	bne	a4,a5,.L4
	lw	a5,-48(s0)
	addiw	a5,a5,1
	sw	a5,-48(s0)
.L4:
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
.L3:
	lw	a5,-52(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-44(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L5
	lw	a5,-52(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	s1,a4,a5
	li	a0,100
	call	malloc@plt
	mv	a5,a0
	sd	a5,0(s1)
	lw	a5,-52(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	lw	a4,-48(s0)
	lw	a3,-48(s0)
	lw	a2,-48(s0)
	lla	a1,.LC0
	mv	a0,a5
	call	sprintf@plt
	lw	a5,-52(s0)
	addiw	a5,a5,1
	sw	a5,-52(s0)
.L2:
	lw	a5,-52(s0)
	mv	a4,a5
	lw	a5,-76(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L6
	ld	a5,-40(s0)
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
	sd	a1,-48(s0)
	mv	a5,a2
	sw	a5,-52(s0)
	sw	zero,-20(s0)
	j	.L9
.L12:
	lw	a5,-20(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	a5,a4,a5
	ld	a3,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,3
	ld	a4,-48(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a1,a5
	mv	a0,a3
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L10
	li	a5,0
	j	.L11
.L10:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L9:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L12
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
.LC1:
	.string	"1234567"
	.align	3
.LC2:
	.string	"the number of odd elements 4 in the string 4 of the 4 input."
	.align	3
.LC3:
	.string	"problem114.c"
	.align	3
.LC4:
	.string	"issame(result1, expected1, 1)"
	.align	3
.LC5:
	.string	"3"
	.align	3
.LC6:
	.string	"11111111"
	.align	3
.LC7:
	.string	"the number of odd elements 1 in the string 1 of the 1 input."
	.align	3
.LC8:
	.string	"the number of odd elements 8 in the string 8 of the 8 input."
	.align	3
.LC9:
	.string	"issame(result2, expected2, 2)"
	.align	3
.LC10:
	.string	"271"
	.align	3
.LC11:
	.string	"137"
	.align	3
.LC12:
	.string	"314"
	.align	3
.LC13:
	.string	"the number of odd elements 2 in the string 2 of the 2 input."
	.align	3
.LC14:
	.string	"the number of odd elements 3 in the string 3 of the 3 input."
	.align	3
.LC15:
	.string	"issame(result3, expected3, 3)"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-160
	sd	ra,152(sp)
	sd	s0,144(sp)
	addi	s0,sp,160
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC1
	sd	a5,-120(s0)
	lla	a5,.LC2
	sd	a5,-112(s0)
	addi	a5,s0,-120
	li	a1,1
	mv	a0,a5
	call	func0
	sd	a0,-144(s0)
	addi	a5,s0,-112
	li	a2,1
	mv	a1,a5
	ld	a0,-144(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,38
	lla	a1,.LC3
	lla	a0,.LC4
	call	__assert_fail@plt
.L14:
	lla	a5,.LC5
	sd	a5,-104(s0)
	lla	a5,.LC6
	sd	a5,-96(s0)
	lla	a5,.LC7
	sd	a5,-88(s0)
	lla	a5,.LC8
	sd	a5,-80(s0)
	addi	a5,s0,-104
	li	a1,2
	mv	a0,a5
	call	func0
	sd	a0,-136(s0)
	addi	a5,s0,-88
	li	a2,2
	mv	a1,a5
	ld	a0,-136(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,46
	lla	a1,.LC3
	lla	a0,.LC9
	call	__assert_fail@plt
.L15:
	lla	a5,.LC10
	sd	a5,-72(s0)
	lla	a5,.LC11
	sd	a5,-64(s0)
	lla	a5,.LC12
	sd	a5,-56(s0)
	lla	a5,.LC13
	sd	a5,-48(s0)
	lla	a5,.LC14
	sd	a5,-40(s0)
	lla	a5,.LC13
	sd	a5,-32(s0)
	addi	a5,s0,-72
	li	a1,3
	mv	a0,a5
	call	func0
	sd	a0,-128(s0)
	addi	a5,s0,-48
	li	a2,3
	mv	a1,a5
	ld	a0,-128(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,55
	lla	a1,.LC3
	lla	a0,.LC15
	call	__assert_fail@plt
.L16:
	sw	zero,-156(s0)
	j	.L17
.L18:
	lw	a5,-156(s0)
	slli	a5,a5,3
	ld	a4,-144(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a0,a5
	call	free@plt
	lw	a5,-156(s0)
	addiw	a5,a5,1
	sw	a5,-156(s0)
.L17:
	lw	a5,-156(s0)
	sext.w	a5,a5
	ble	a5,zero,.L18
	ld	a0,-144(s0)
	call	free@plt
	sw	zero,-152(s0)
	j	.L19
.L20:
	lw	a5,-152(s0)
	slli	a5,a5,3
	ld	a4,-136(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a0,a5
	call	free@plt
	lw	a5,-152(s0)
	addiw	a5,a5,1
	sw	a5,-152(s0)
.L19:
	lw	a5,-152(s0)
	sext.w	a4,a5
	li	a5,1
	ble	a4,a5,.L20
	ld	a0,-136(s0)
	call	free@plt
	sw	zero,-148(s0)
	j	.L21
.L22:
	lw	a5,-148(s0)
	slli	a5,a5,3
	ld	a4,-128(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a0,a5
	call	free@plt
	lw	a5,-148(s0)
	addiw	a5,a5,1
	sw	a5,-148(s0)
.L21:
	lw	a5,-148(s0)
	sext.w	a4,a5
	li	a5,2
	ble	a4,a5,.L22
	ld	a0,-128(s0)
	call	free@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L24
	call	__stack_chk_fail@plt
.L24:
	mv	a0,a4
	ld	ra,152(sp)
	ld	s0,144(sp)
	addi	sp,sp,160
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
