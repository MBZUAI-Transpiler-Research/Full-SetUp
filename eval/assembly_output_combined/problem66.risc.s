	.file	"problem66.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
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
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a5,-100(s0)
	mv	a5,a4
	sw	a5,-104(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lw	a5,-100(s0)
	mv	a2,a5
	lla	a1,.LC0
	lla	a0,xs.1
	call	sprintf@plt
	lla	a0,xs.1
	call	strlen@plt
	mv	a5,a0
	sw	a5,-84(s0)
	lw	a5,-84(s0)
	mv	a4,a5
	lw	a5,-104(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bge	a4,a5,.L2
	sw	zero,-88(s0)
	j	.L3
.L4:
	lla	a4,xs.1
	lw	a5,-88(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-89(s0)
	lw	a5,-84(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	lw	a4,-88(s0)
	subw	a5,a5,a4
	sext.w	a5,a5
	lla	a4,xs.1
	add	a5,a4,a5
	lbu	a4,0(a5)
	lla	a3,xs.1
	lw	a5,-88(s0)
	add	a5,a3,a5
	sb	a4,0(a5)
	lw	a5,-84(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	lw	a4,-88(s0)
	subw	a5,a5,a4
	sext.w	a5,a5
	lla	a4,xs.1
	add	a5,a4,a5
	lbu	a4,-89(s0)
	sb	a4,0(a5)
	lw	a5,-88(s0)
	addiw	a5,a5,1
	sw	a5,-88(s0)
.L3:
	lw	a5,-84(s0)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sext.w	a4,a5
	lw	a5,-88(s0)
	sext.w	a5,a5
	blt	a5,a4,.L4
	j	.L5
.L2:
	lw	a4,-84(s0)
	lw	a5,-104(s0)
	sub	a4,a4,a5
	lla	a5,xs.1
	add	a4,a4,a5
	addi	a5,s0,-80
	mv	a1,a4
	mv	a0,a5
	call	strcpy@plt
	lw	a5,-104(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	zero,-64(a5)
	lw	a5,-84(s0)
	mv	a4,a5
	lw	a5,-104(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	addi	a5,s0,-80
	mv	a2,a4
	lla	a1,xs.1
	mv	a0,a5
	call	strncat@plt
	addi	a5,s0,-80
	mv	a1,a5
	lla	a0,xs.1
	call	strcpy@plt
.L5:
	lla	a5,xs.1
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L7
	call	__stack_chk_fail@plt
.L7:
	mv	a0,a4
	ld	ra,104(sp)
	.cfi_restore 1
	ld	s0,96(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC1:
	.string	"001"
	.align	3
.LC2:
	.string	"problem66.c"
	.align	3
.LC3:
	.string	"strcmp(func0(100, 2), \"001\") == 0"
	.align	3
.LC4:
	.string	"12"
	.align	3
.LC5:
	.string	"strcmp(func0(12, 2), \"12\") == 0"
	.align	3
.LC6:
	.string	"79"
	.align	3
.LC7:
	.string	"strcmp(func0(97, 8), \"79\") == 0"
	.align	3
.LC8:
	.string	"21"
	.align	3
.LC9:
	.string	"strcmp(func0(12, 1), \"21\") == 0"
	.align	3
.LC10:
	.string	"11"
	.align	3
.LC11:
	.string	"strcmp(func0(11, 101), \"11\") == 0"
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
	li	a1,2
	li	a0,100
	call	func0
	mv	a5,a0
	lla	a1,.LC1
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,33
	lla	a1,.LC2
	lla	a0,.LC3
	call	__assert_fail@plt
.L9:
	li	a1,2
	li	a0,12
	call	func0
	mv	a5,a0
	lla	a1,.LC4
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,34
	lla	a1,.LC2
	lla	a0,.LC5
	call	__assert_fail@plt
.L10:
	li	a1,8
	li	a0,97
	call	func0
	mv	a5,a0
	lla	a1,.LC6
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,35
	lla	a1,.LC2
	lla	a0,.LC7
	call	__assert_fail@plt
.L11:
	li	a1,1
	li	a0,12
	call	func0
	mv	a5,a0
	lla	a1,.LC8
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,36
	lla	a1,.LC2
	lla	a0,.LC9
	call	__assert_fail@plt
.L12:
	li	a1,101
	li	a0,11
	call	func0
	mv	a5,a0
	lla	a1,.LC10
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,37
	lla	a1,.LC2
	lla	a0,.LC11
	call	__assert_fail@plt
.L13:
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
	.local	xs.1
	.comm	xs.1,50,8
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
