	.file	"problem35.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-80
	sd	ra,72(sp)
	sd	s0,64(sp)
	addi	s0,sp,80
	sd	a0,-56(s0)
	mv	a5,a1
	sd	a2,-72(s0)
	sw	a5,-60(s0)
	lw	a5,-60(s0)
	slli	a5,a5,2
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	sw	zero,-40(s0)
	sw	zero,-36(s0)
	j	.L2
.L8:
	sw	zero,-44(s0)
	sw	zero,-32(s0)
	j	.L3
.L6:
	lw	a5,-36(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-32(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	bne	a4,a5,.L4
	li	a5,1
	sw	a5,-44(s0)
	j	.L5
.L4:
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L3:
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L6
.L5:
	lw	a5,-44(s0)
	sext.w	a5,a5
	bne	a5,zero,.L7
	lw	a5,-36(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a4,a4,a5
	lw	a5,-40(s0)
	addiw	a3,a5,1
	sw	a3,-40(s0)
	slli	a5,a5,2
	ld	a3,-24(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
.L7:
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L2:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L8
	sw	zero,-36(s0)
	j	.L9
.L13:
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
	j	.L10
.L12:
	lw	a5,-36(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-32(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	ble	a4,a5,.L11
	lw	a5,-36(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-28(s0)
	lw	a5,-32(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a4,a4,a5
	lw	a5,-36(s0)
	slli	a5,a5,2
	ld	a3,-24(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-32(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a4,-28(s0)
	sw	a4,0(a5)
.L11:
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L10:
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L12
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L9:
	lw	a5,-40(s0)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-36(s0)
	sext.w	a5,a5
	blt	a5,a4,.L13
	ld	a5,-72(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
	ld	a5,-24(s0)
	mv	a0,a5
	ld	ra,72(sp)
	ld	s0,64(sp)
	addi	sp,sp,80
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC2:
	.string	"problem35.c"
	.align	3
.LC3:
	.string	"unique_size == sizeof(expected_array) / sizeof(expected_array[0])"
	.align	3
.LC4:
	.string	"unique_array[i] == expected_array[i]"
	.align	3
.LC5:
	.string	"All tests passed!"
	.align	3
.LC0:
	.word	5
	.word	3
	.word	5
	.word	2
	.word	3
	.word	3
	.word	9
	.word	0
	.word	123
	.align	3
.LC1:
	.word	0
	.word	2
	.word	3
	.word	5
	.word	9
	.word	123
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
	lla	a5,.LC0
	ld	a1,0(a5)
	ld	a2,8(a5)
	ld	a3,16(a5)
	ld	a4,24(a5)
	sd	a1,-64(s0)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	lw	a5,32(a5)
	sw	a5,-32(s0)
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-88(s0)
	ld	a4,8(a5)
	sd	a4,-80(s0)
	ld	a5,16(a5)
	sd	a5,-72(s0)
	addi	a4,s0,-104
	addi	a5,s0,-64
	mv	a2,a4
	li	a1,9
	mv	a0,a5
	call	func0
	sd	a0,-96(s0)
	lw	a5,-104(s0)
	mv	a4,a5
	li	a5,6
	beq	a4,a5,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,46
	lla	a1,.LC2
	lla	a0,.LC3
	call	__assert_fail@plt
.L16:
	sw	zero,-100(s0)
	j	.L17
.L19:
	lw	a5,-100(s0)
	slli	a5,a5,2
	ld	a4,-96(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-100(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-72(a5)
	beq	a4,a5,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,48
	lla	a1,.LC2
	lla	a0,.LC4
	call	__assert_fail@plt
.L18:
	lw	a5,-100(s0)
	addiw	a5,a5,1
	sw	a5,-100(s0)
.L17:
	lw	a4,-104(s0)
	lw	a5,-100(s0)
	sext.w	a5,a5
	blt	a5,a4,.L19
	ld	a0,-96(s0)
	call	free@plt
	lla	a0,.LC5
	call	puts@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L21
	call	__stack_chk_fail@plt
.L21:
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
