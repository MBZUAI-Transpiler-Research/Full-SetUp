	.file	"problem53.c"
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
	mv	a4,a2
	sw	a5,-44(s0)
	mv	a5,a4
	sw	a5,-48(s0)
	sw	zero,-20(s0)
	j	.L2
.L5:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-48(s0)
	sext.w	a5,a5
	bgt	a5,a4,.L3
	li	a5,0
	j	.L4
.L3:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L5
	li	a5,1
.L4:
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
.LC3:
	.string	"problem53.c"
	.align	3
.LC4:
	.string	"func0(list1, 4, 100)"
	.align	3
.LC5:
	.string	"!func0(list2, 4, 5)"
	.align	3
.LC6:
	.string	"func0(list3, 4, 21)"
	.align	3
.LC7:
	.string	"func0(list4, 4, 22)"
	.align	3
.LC8:
	.string	"func0(list5, 4, 11)"
	.align	3
.LC9:
	.string	"!func0(list6, 4, 10)"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	4
	.word	10
	.align	3
.LC1:
	.word	1
	.word	20
	.word	4
	.word	10
	.align	3
.LC2:
	.word	1
	.word	8
	.word	4
	.word	10
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sd	ra,120(sp)
	sd	s0,112(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-120(s0)
	ld	a5,8(a5)
	sd	a5,-112(s0)
	addi	a5,s0,-120
	li	a2,100
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	bne	a5,zero,.L7
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,17
	lla	a1,.LC3
	lla	a0,.LC4
	call	__assert_fail@plt
.L7:
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-104(s0)
	ld	a5,8(a5)
	sd	a5,-96(s0)
	addi	a5,s0,-104
	li	a2,5
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,20
	lla	a1,.LC3
	lla	a0,.LC5
	call	__assert_fail@plt
.L8:
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-88(s0)
	ld	a5,8(a5)
	sd	a5,-80(s0)
	addi	a5,s0,-88
	li	a2,21
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	bne	a5,zero,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,23
	lla	a1,.LC3
	lla	a0,.LC6
	call	__assert_fail@plt
.L9:
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-72(s0)
	ld	a5,8(a5)
	sd	a5,-64(s0)
	addi	a5,s0,-72
	li	a2,22
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	bne	a5,zero,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,26
	lla	a1,.LC3
	lla	a0,.LC7
	call	__assert_fail@plt
.L10:
	lla	a5,.LC2
	ld	a4,0(a5)
	sd	a4,-56(s0)
	ld	a5,8(a5)
	sd	a5,-48(s0)
	addi	a5,s0,-56
	li	a2,11
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	bne	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,29
	lla	a1,.LC3
	lla	a0,.LC8
	call	__assert_fail@plt
.L11:
	lla	a5,.LC2
	ld	a4,0(a5)
	sd	a4,-40(s0)
	ld	a5,8(a5)
	sd	a5,-32(s0)
	addi	a5,s0,-40
	li	a2,10
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,32
	lla	a1,.LC3
	lla	a0,.LC9
	call	__assert_fail@plt
.L12:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L14
	call	__stack_chk_fail@plt
.L14:
	mv	a0,a4
	ld	ra,120(sp)
	.cfi_restore 1
	ld	s0,112(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128
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
