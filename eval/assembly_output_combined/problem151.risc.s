	.file	"problem151.c"
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
	mv	a5,a0
	mv	a3,a1
	mv	a4,a2
	sw	a5,-36(s0)
	mv	a5,a3
	sw	a5,-40(s0)
	mv	a5,a4
	sw	a5,-44(s0)
	li	a5,1
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,1
	bgt	a4,a5,.L2
	sw	zero,-24(s0)
.L2:
	li	a5,2
	sw	a5,-20(s0)
	j	.L3
.L5:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	remw	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L4
	sw	zero,-24(s0)
.L4:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L3:
	lw	a5,-20(s0)
	mulw	a5,a5,a5
	sext.w	a4,a5
	lw	a5,-36(s0)
	sext.w	a5,a5
	bge	a5,a4,.L5
	lw	a5,-24(s0)
	sext.w	a5,a5
	beq	a5,zero,.L6
	lw	a5,-40(s0)
	j	.L7
.L6:
	lw	a5,-44(s0)
.L7:
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
.LC0:
	.string	"problem151.c"
	.align	3
.LC1:
	.string	"func0(7, 34, 12) == 34"
	.align	3
.LC2:
	.string	"func0(15, 8, 5) == 5"
	.align	3
.LC3:
	.string	"func0(3, 33, 5212) == 33"
	.align	3
.LC4:
	.string	"func0(1259, 3, 52) == 3"
	.align	3
.LC5:
	.string	"func0(7919, -1, 12) == -1"
	.align	3
.LC6:
	.string	"func0(3609, 1245, 583) == 583"
	.align	3
.LC7:
	.string	"func0(91, 56, 129) == 129"
	.align	3
.LC8:
	.string	"func0(6, 34, 1234) == 1234"
	.align	3
.LC9:
	.string	"func0(1, 2, 0) == 0"
	.align	3
.LC10:
	.string	"func0(2, 2, 0) == 2"
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
	li	a2,12
	li	a1,34
	li	a0,7
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,34
	beq	a4,a5,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,18
	lla	a1,.LC0
	lla	a0,.LC1
	call	__assert_fail@plt
.L9:
	li	a2,5
	li	a1,8
	li	a0,15
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,5
	beq	a4,a5,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,19
	lla	a1,.LC0
	lla	a0,.LC2
	call	__assert_fail@plt
.L10:
	li	a5,4096
	addi	a2,a5,1116
	li	a1,33
	li	a0,3
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,33
	beq	a4,a5,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,20
	lla	a1,.LC0
	lla	a0,.LC3
	call	__assert_fail@plt
.L11:
	li	a2,52
	li	a1,3
	li	a0,1259
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,3
	beq	a4,a5,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,21
	lla	a1,.LC0
	lla	a0,.LC4
	call	__assert_fail@plt
.L12:
	li	a2,12
	li	a1,-1
	li	a5,8192
	addi	a0,a5,-273
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,-1
	beq	a4,a5,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,22
	lla	a1,.LC0
	lla	a0,.LC5
	call	__assert_fail@plt
.L13:
	li	a2,583
	li	a1,1245
	li	a5,4096
	addi	a0,a5,-487
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,583
	beq	a4,a5,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,23
	lla	a1,.LC0
	lla	a0,.LC6
	call	__assert_fail@plt
.L14:
	li	a2,129
	li	a1,56
	li	a0,91
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,129
	beq	a4,a5,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,24
	lla	a1,.LC0
	lla	a0,.LC7
	call	__assert_fail@plt
.L15:
	li	a2,1234
	li	a1,34
	li	a0,6
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1234
	beq	a4,a5,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,25
	lla	a1,.LC0
	lla	a0,.LC8
	call	__assert_fail@plt
.L16:
	li	a2,0
	li	a1,2
	li	a0,1
	call	func0
	mv	a5,a0
	beq	a5,zero,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,26
	lla	a1,.LC0
	lla	a0,.LC9
	call	__assert_fail@plt
.L17:
	li	a2,0
	li	a1,2
	li	a0,2
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,2
	beq	a4,a5,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,27
	lla	a1,.LC0
	lla	a0,.LC10
	call	__assert_fail@plt
.L18:
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
