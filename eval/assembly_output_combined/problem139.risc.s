	.file	"problem139.c"
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
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	bne	a5,zero,.L2
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,7
	ble	a4,a5,.L2
	li	a5,1
	j	.L3
.L2:
	li	a5,0
.L3:
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem139.c"
	.align	3
.LC1:
	.string	"func0(4) == 0"
	.align	3
.LC2:
	.string	"func0(6) == 0"
	.align	3
.LC3:
	.string	"func0(8) == 1"
	.align	3
.LC4:
	.string	"func0(10) == 1"
	.align	3
.LC5:
	.string	"func0(11) == 0"
	.align	3
.LC6:
	.string	"func0(12) == 1"
	.align	3
.LC7:
	.string	"func0(13) == 0"
	.align	3
.LC8:
	.string	"func0(16) == 1"
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
	li	a0,4
	call	func0
	mv	a5,a0
	beq	a5,zero,.L5
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,13
	lla	a1,.LC0
	lla	a0,.LC1
	call	__assert_fail@plt
.L5:
	li	a0,6
	call	func0
	mv	a5,a0
	beq	a5,zero,.L6
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,14
	lla	a1,.LC0
	lla	a0,.LC2
	call	__assert_fail@plt
.L6:
	li	a0,8
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L7
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,15
	lla	a1,.LC0
	lla	a0,.LC3
	call	__assert_fail@plt
.L7:
	li	a0,10
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,16
	lla	a1,.LC0
	lla	a0,.LC4
	call	__assert_fail@plt
.L8:
	li	a0,11
	call	func0
	mv	a5,a0
	beq	a5,zero,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,17
	lla	a1,.LC0
	lla	a0,.LC5
	call	__assert_fail@plt
.L9:
	li	a0,12
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,18
	lla	a1,.LC0
	lla	a0,.LC6
	call	__assert_fail@plt
.L10:
	li	a0,13
	call	func0
	mv	a5,a0
	beq	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,19
	lla	a1,.LC0
	lla	a0,.LC7
	call	__assert_fail@plt
.L11:
	li	a0,16
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,20
	lla	a1,.LC0
	lla	a0,.LC8
	call	__assert_fail@plt
.L12:
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
