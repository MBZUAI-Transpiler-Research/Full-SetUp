	.file	"problem122.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	mv	a5,a1
	sw	a5,-44(s0)
	sw	zero,-24(s0)
	sw	zero,-20(s0)
	j	.L2
.L4:
	lw	a5,-20(s0)
	slliw	a5,a5,1
	sext.w	a5,a5
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a5
	sraiw	a5,a4,31
	srliw	a5,a5,31
	addw	a4,a4,a5
	andi	a4,a4,1
	subw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,1
	bne	a4,a5,.L3
	lw	a5,-20(s0)
	slliw	a5,a5,1
	sext.w	a5,a5
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-24(s0)
	addw	a5,a4,a5
	sw	a5,-24(s0)
.L3:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a5,-20(s0)
	slliw	a5,a5,1
	sext.w	a4,a5
	lw	a5,-44(s0)
	sext.w	a5,a5
	bgt	a5,a4,.L4
	lw	a5,-24(s0)
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC5:
	.string	"problem122.c"
	.align	3
.LC6:
	.string	"func0(test1, 4) == 12"
	.align	3
.LC7:
	.string	"func0(test2, 5) == 9"
	.align	3
.LC8:
	.string	"func0(test3, 4) == 0"
	.align	3
.LC9:
	.string	"func0(test4, 2) == 5"
	.align	3
.LC10:
	.string	"func0(test5, 3) == 0"
	.align	3
.LC11:
	.string	"func0(test6, 4) == 23"
	.align	3
.LC12:
	.string	"func0(test7, 4) == 3"
	.align	3
.LC0:
	.word	5
	.word	8
	.word	7
	.word	1
	.align	3
.LC1:
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.align	3
.LC2:
	.word	30
	.word	13
	.word	24
	.word	321
	.align	3
.LC3:
	.word	30
	.word	13
	.word	23
	.word	32
	.align	3
.LC4:
	.word	3
	.word	13
	.word	2
	.word	9
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sd	ra,136(sp)
	sd	s0,128(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,144
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-112(s0)
	ld	a5,8(a5)
	sd	a5,-104(s0)
	addi	a5,s0,-112
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,12
	beq	a4,a5,.L7
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,16
	lla	a1,.LC5
	lla	a0,.LC6
	call	__assert_fail@plt
.L7:
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a4,8(a5)
	sd	a4,-40(s0)
	lw	a5,16(a5)
	sw	a5,-32(s0)
	addi	a5,s0,-48
	li	a1,5
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,9
	beq	a4,a5,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,19
	lla	a1,.LC5
	lla	a0,.LC7
	call	__assert_fail@plt
.L8:
	lla	a5,.LC2
	ld	a4,0(a5)
	sd	a4,-96(s0)
	ld	a5,8(a5)
	sd	a5,-88(s0)
	addi	a5,s0,-96
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,22
	lla	a1,.LC5
	lla	a0,.LC8
	call	__assert_fail@plt
.L9:
	li	a5,5
	sw	a5,-136(s0)
	li	a5,9
	sw	a5,-132(s0)
	addi	a5,s0,-136
	li	a1,2
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,5
	beq	a4,a5,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,25
	lla	a1,.LC5
	lla	a0,.LC9
	call	__assert_fail@plt
.L10:
	li	a5,2
	sw	a5,-128(s0)
	li	a5,4
	sw	a5,-124(s0)
	li	a5,8
	sw	a5,-120(s0)
	addi	a5,s0,-128
	li	a1,3
	mv	a0,a5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,28
	lla	a1,.LC5
	lla	a0,.LC10
	call	__assert_fail@plt
.L11:
	lla	a5,.LC3
	ld	a4,0(a5)
	sd	a4,-80(s0)
	ld	a5,8(a5)
	sd	a5,-72(s0)
	addi	a5,s0,-80
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,23
	beq	a4,a5,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,31
	lla	a1,.LC5
	lla	a0,.LC11
	call	__assert_fail@plt
.L12:
	lla	a5,.LC4
	ld	a4,0(a5)
	sd	a4,-64(s0)
	ld	a5,8(a5)
	sd	a5,-56(s0)
	addi	a5,s0,-64
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,3
	beq	a4,a5,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,34
	lla	a1,.LC5
	lla	a0,.LC12
	call	__assert_fail@plt
.L13:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L15
	call	__stack_chk_fail@plt
.L15:
	mv	a0,a4
	ld	ra,136(sp)
	.cfi_restore 1
	ld	s0,128(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 144
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
