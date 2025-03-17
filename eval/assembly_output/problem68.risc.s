	.file	"problem68.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sd	ra,104(sp)
	sd	s0,96(sp)
	sd	s1,88(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sd	a0,-104(s0)
	mv	a5,a1
	sw	a5,-108(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -40(s0)
	li	a4, 0
	sd	zero,-72(s0)
	sh	zero,-64(s0)
	sd	zero,-56(s0)
	sh	zero,-48(s0)
	sw	zero,-84(s0)
	sw	zero,-80(s0)
	sw	zero,-76(s0)
	j	.L2
.L6:
	call	__ctype_b_loc@plt
	mv	a5,a0
	ld	a4,0(a5)
	lw	a5,-76(s0)
	ld	a3,-104(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a4,a5
	li	a5,4096
	addi	a5,a5,-2048
	and	a5,a4,a5
	sext.w	a5,a5
	beq	a5,zero,.L3
	lw	a5,-84(s0)
	sext.w	a5,a5
	bne	a5,zero,.L4
	lw	a5,-76(s0)
	ld	a4,-104(s0)
	add	a4,a4,a5
	lw	a5,-80(s0)
	addiw	a3,a5,1
	sw	a3,-80(s0)
	lbu	a4,0(a4)
	addi	a5,a5,-32
	add	a5,a5,s0
	sb	a4,-40(a5)
	j	.L5
.L4:
	lw	a5,-76(s0)
	ld	a4,-104(s0)
	add	a4,a4,a5
	lw	a5,-80(s0)
	addiw	a3,a5,1
	sw	a3,-80(s0)
	lbu	a4,0(a4)
	addi	a5,a5,-32
	add	a5,a5,s0
	sb	a4,-24(a5)
	j	.L5
.L3:
	lw	a5,-84(s0)
	sext.w	a5,a5
	bne	a5,zero,.L5
	lw	a5,-80(s0)
	sext.w	a5,a5
	ble	a5,zero,.L5
	li	a5,1
	sw	a5,-84(s0)
	sw	zero,-80(s0)
.L5:
	lw	a5,-76(s0)
	addiw	a5,a5,1
	sw	a5,-76(s0)
.L2:
	lw	a5,-76(s0)
	ld	a4,-104(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L6
	addi	a5,s0,-72
	mv	a0,a5
	call	atoi@plt
	mv	a5,a0
	lw	a4,-108(s0)
	subw	a5,a4,a5
	sext.w	s1,a5
	addi	a5,s0,-56
	mv	a0,a5
	call	atoi@plt
	mv	a5,a0
	subw	a5,s1,a5
	sext.w	a5,a5
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -40(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L8
	call	__stack_chk_fail@plt
.L8:
	mv	a0,a4
	ld	ra,104(sp)
	.cfi_restore 1
	ld	s0,96(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	ld	s1,88(sp)
	.cfi_restore 9
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"5 apples and 6 oranges"
	.align	3
.LC1:
	.string	"problem68.c"
	.align	3
.LC2:
	.string	"func0(\"5 apples and 6 oranges\", 19) == 8"
	.align	3
.LC3:
	.string	"func0(\"5 apples and 6 oranges\", 21) == 10"
	.align	3
.LC4:
	.string	"0 apples and 1 oranges"
	.align	3
.LC5:
	.string	"func0(\"0 apples and 1 oranges\", 3) == 2"
	.align	3
.LC6:
	.string	"1 apples and 0 oranges"
	.align	3
.LC7:
	.string	"func0(\"1 apples and 0 oranges\", 3) == 2"
	.align	3
.LC8:
	.string	"2 apples and 3 oranges"
	.align	3
.LC9:
	.string	"func0(\"2 apples and 3 oranges\", 100) == 95"
	.align	3
.LC10:
	.string	"func0(\"2 apples and 3 oranges\", 5) == 0"
	.align	3
.LC11:
	.string	"1 apples and 100 oranges"
	.align	3
.LC12:
	.string	"func0(\"1 apples and 100 oranges\", 120) == 19"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	li	a1,19
	lla	a0,.LC0
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,8
	beq	a4,a5,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,32
	lla	a1,.LC1
	lla	a0,.LC2
	call	__assert_fail@plt
.L10:
	li	a1,21
	lla	a0,.LC0
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,10
	beq	a4,a5,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,33
	lla	a1,.LC1
	lla	a0,.LC3
	call	__assert_fail@plt
.L11:
	li	a1,3
	lla	a0,.LC4
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,2
	beq	a4,a5,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,34
	lla	a1,.LC1
	lla	a0,.LC5
	call	__assert_fail@plt
.L12:
	li	a1,3
	lla	a0,.LC6
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,2
	beq	a4,a5,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,35
	lla	a1,.LC1
	lla	a0,.LC7
	call	__assert_fail@plt
.L13:
	li	a1,100
	lla	a0,.LC8
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,95
	beq	a4,a5,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,36
	lla	a1,.LC1
	lla	a0,.LC9
	call	__assert_fail@plt
.L14:
	li	a1,5
	lla	a0,.LC8
	call	func0
	mv	a5,a0
	beq	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,37
	lla	a1,.LC1
	lla	a0,.LC10
	call	__assert_fail@plt
.L15:
	li	a1,120
	lla	a0,.LC11
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,19
	beq	a4,a5,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,38
	lla	a1,.LC1
	lla	a0,.LC12
	call	__assert_fail@plt
.L16:
	li	a5,0
	mv	a0,a5
	ld	ra,8(sp)
	.cfi_restore 1
	ld	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
