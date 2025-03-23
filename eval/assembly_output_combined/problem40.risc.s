	.file	"problem40.c"
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
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-52(s0)
	li	a5,1
	sw	a5,-40(s0)
	li	a5,2
	sw	a5,-36(s0)
	sw	zero,-32(s0)
	j	.L2
.L9:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	addw	a5,a4,a5
	sw	a5,-40(s0)
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	lw	a5,-36(s0)
	sw	a5,-40(s0)
	lw	a5,-20(s0)
	sw	a5,-36(s0)
	li	a5,1
	sw	a5,-28(s0)
	li	a5,2
	sw	a5,-24(s0)
	j	.L3
.L6:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	remw	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L4
	sw	zero,-28(s0)
	j	.L5
.L4:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L3:
	lw	a5,-24(s0)
	mulw	a5,a5,a5
	sext.w	a4,a5
	lw	a5,-40(s0)
	sext.w	a5,a5
	bge	a5,a4,.L6
.L5:
	lw	a5,-28(s0)
	sext.w	a5,a5
	beq	a5,zero,.L7
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L7:
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bne	a4,a5,.L2
	lw	a5,-40(s0)
	j	.L8
.L2:
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L9
	li	a5,0
.L8:
	mv	a0,a5
	ld	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem40.c"
	.align	3
.LC1:
	.string	"func0(1) == 2"
	.align	3
.LC2:
	.string	"func0(2) == 3"
	.align	3
.LC3:
	.string	"func0(3) == 5"
	.align	3
.LC4:
	.string	"func0(4) == 13"
	.align	3
.LC5:
	.string	"func0(5) == 89"
	.align	3
.LC6:
	.string	"func0(6) == 233"
	.align	3
.LC7:
	.string	"func0(7) == 1597"
	.align	3
.LC8:
	.string	"func0(8) == 28657"
	.align	3
.LC9:
	.string	"func0(9) == 514229"
	.align	3
.LC10:
	.string	"func0(10) == 433494437"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	li	a0,1
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,2
	beq	a4,a5,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,27
	lla	a1,.LC0
	lla	a0,.LC1
	call	__assert_fail@plt
.L11:
	li	a0,2
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,3
	beq	a4,a5,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,28
	lla	a1,.LC0
	lla	a0,.LC2
	call	__assert_fail@plt
.L12:
	li	a0,3
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,5
	beq	a4,a5,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,29
	lla	a1,.LC0
	lla	a0,.LC3
	call	__assert_fail@plt
.L13:
	li	a0,4
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,13
	beq	a4,a5,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,30
	lla	a1,.LC0
	lla	a0,.LC4
	call	__assert_fail@plt
.L14:
	li	a0,5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,89
	beq	a4,a5,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,31
	lla	a1,.LC0
	lla	a0,.LC5
	call	__assert_fail@plt
.L15:
	li	a0,6
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,233
	beq	a4,a5,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,32
	lla	a1,.LC0
	lla	a0,.LC6
	call	__assert_fail@plt
.L16:
	li	a0,7
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1597
	beq	a4,a5,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,33
	lla	a1,.LC0
	lla	a0,.LC7
	call	__assert_fail@plt
.L17:
	li	a0,8
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,28672
	addi	a5,a5,-15
	beq	a4,a5,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,34
	lla	a1,.LC0
	lla	a0,.LC8
	call	__assert_fail@plt
.L18:
	li	a0,9
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,516096
	addi	a5,a5,-1867
	beq	a4,a5,.L19
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,35
	lla	a1,.LC0
	lla	a0,.LC9
	call	__assert_fail@plt
.L19:
	li	a0,10
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,433496064
	addi	a5,a5,-1627
	beq	a4,a5,.L20
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,36
	lla	a1,.LC0
	lla	a0,.LC10
	call	__assert_fail@plt
.L20:
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
