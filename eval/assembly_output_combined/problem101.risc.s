	.file	"problem101.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	addi	s0,sp,48
	mv	a5,a0
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	slli	a5,a5,2
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	ld	a5,-24(s0)
	lw	a4,-36(s0)
	sw	a4,0(a5)
	li	a5,1
	sw	a5,-28(s0)
	j	.L2
.L3:
	lw	a5,-28(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a3,-24(s0)
	add	a5,a3,a5
	addiw	a4,a4,2
	sext.w	a4,a4
	sw	a4,0(a5)
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L2:
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L3
	ld	a5,-24(s0)
	mv	a0,a5
	ld	ra,40(sp)
	ld	s0,32(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC4:
	.string	"problem101.c"
	.align	3
.LC5:
	.string	"result[i] == test1[i]"
	.align	3
.LC6:
	.string	"result[i] == test2[i]"
	.align	3
.LC7:
	.string	"result[i] == test3[i]"
	.align	3
.LC8:
	.string	"result[i] == test4[i]"
	.align	3
.LC9:
	.string	"result[i] == test5[i]"
	.align	3
.LC0:
	.word	4
	.word	6
	.word	8
	.word	10
	.align	3
.LC1:
	.word	5
	.word	7
	.word	9
	.word	11
	.word	13
	.align	3
.LC2:
	.word	6
	.word	8
	.word	10
	.word	12
	.word	14
	.word	16
	.align	3
.LC3:
	.word	8
	.word	10
	.word	12
	.word	14
	.word	16
	.word	18
	.word	20
	.word	22
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-176
	sd	ra,168(sp)
	sd	s0,160(sp)
	addi	s0,sp,176
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	li	a5,3
	sw	a5,-136(s0)
	li	a5,5
	sw	a5,-132(s0)
	li	a5,7
	sw	a5,-128(s0)
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-120(s0)
	ld	a5,8(a5)
	sd	a5,-112(s0)
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-104(s0)
	ld	a4,8(a5)
	sd	a4,-96(s0)
	lw	a5,16(a5)
	sw	a5,-88(s0)
	lla	a5,.LC2
	ld	a4,0(a5)
	sd	a4,-80(s0)
	ld	a4,8(a5)
	sd	a4,-72(s0)
	ld	a5,16(a5)
	sd	a5,-64(s0)
	lla	a5,.LC3
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	sd	a5,-32(s0)
	li	a0,3
	call	func0
	sd	a0,-144(s0)
	sw	zero,-164(s0)
	j	.L6
.L8:
	lw	a5,-164(s0)
	slli	a5,a5,2
	ld	a4,-144(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-164(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-120(a5)
	beq	a4,a5,.L7
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,27
	lla	a1,.LC4
	lla	a0,.LC5
	call	__assert_fail@plt
.L7:
	lw	a5,-164(s0)
	addiw	a5,a5,1
	sw	a5,-164(s0)
.L6:
	lw	a5,-164(s0)
	sext.w	a4,a5
	li	a5,2
	ble	a4,a5,.L8
	ld	a0,-144(s0)
	call	free@plt
	li	a0,4
	call	func0
	sd	a0,-144(s0)
	sw	zero,-160(s0)
	j	.L9
.L11:
	lw	a5,-160(s0)
	slli	a5,a5,2
	ld	a4,-144(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-160(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-104(a5)
	beq	a4,a5,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,31
	lla	a1,.LC4
	lla	a0,.LC6
	call	__assert_fail@plt
.L10:
	lw	a5,-160(s0)
	addiw	a5,a5,1
	sw	a5,-160(s0)
.L9:
	lw	a5,-160(s0)
	sext.w	a4,a5
	li	a5,3
	ble	a4,a5,.L11
	ld	a0,-144(s0)
	call	free@plt
	li	a0,5
	call	func0
	sd	a0,-144(s0)
	sw	zero,-156(s0)
	j	.L12
.L14:
	lw	a5,-156(s0)
	slli	a5,a5,2
	ld	a4,-144(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-156(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-88(a5)
	beq	a4,a5,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,35
	lla	a1,.LC4
	lla	a0,.LC7
	call	__assert_fail@plt
.L13:
	lw	a5,-156(s0)
	addiw	a5,a5,1
	sw	a5,-156(s0)
.L12:
	lw	a5,-156(s0)
	sext.w	a4,a5
	li	a5,4
	ble	a4,a5,.L14
	ld	a0,-144(s0)
	call	free@plt
	li	a0,6
	call	func0
	sd	a0,-144(s0)
	sw	zero,-152(s0)
	j	.L15
.L17:
	lw	a5,-152(s0)
	slli	a5,a5,2
	ld	a4,-144(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-152(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-64(a5)
	beq	a4,a5,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,39
	lla	a1,.LC4
	lla	a0,.LC8
	call	__assert_fail@plt
.L16:
	lw	a5,-152(s0)
	addiw	a5,a5,1
	sw	a5,-152(s0)
.L15:
	lw	a5,-152(s0)
	sext.w	a4,a5
	li	a5,5
	ble	a4,a5,.L17
	ld	a0,-144(s0)
	call	free@plt
	li	a0,8
	call	func0
	sd	a0,-144(s0)
	sw	zero,-148(s0)
	j	.L18
.L20:
	lw	a5,-148(s0)
	slli	a5,a5,2
	ld	a4,-144(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-148(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-40(a5)
	beq	a4,a5,.L19
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,43
	lla	a1,.LC4
	lla	a0,.LC9
	call	__assert_fail@plt
.L19:
	lw	a5,-148(s0)
	addiw	a5,a5,1
	sw	a5,-148(s0)
.L18:
	lw	a5,-148(s0)
	sext.w	a4,a5
	li	a5,7
	ble	a4,a5,.L20
	ld	a0,-144(s0)
	call	free@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L22
	call	__stack_chk_fail@plt
.L22:
	mv	a0,a4
	ld	ra,168(sp)
	ld	s0,160(sp)
	addi	sp,sp,176
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
