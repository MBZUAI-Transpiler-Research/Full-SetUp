	.file	"problem77.c"
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
	mv	a4,a1
	sw	a5,-36(s0)
	mv	a5,a4
	sw	a5,-40(s0)
	li	a5,1
	sw	a5,-24(s0)
	sw	zero,-20(s0)
	j	.L2
.L6:
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bne	a4,a5,.L3
	li	a5,1
	j	.L4
.L3:
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	mulw	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bgt	a4,a5,.L5
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,99
	ble	a4,a5,.L6
.L5:
	li	a5,0
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
.LC0:
	.string	"problem77.c"
	.align	3
.LC1:
	.string	"func0(1, 4) == 1"
	.align	3
.LC2:
	.string	"func0(2, 2) == 1"
	.align	3
.LC3:
	.string	"func0(8, 2) == 1"
	.align	3
.LC4:
	.string	"func0(3, 2) == 0"
	.align	3
.LC5:
	.string	"func0(3, 1) == 0"
	.align	3
.LC6:
	.string	"func0(5, 3) == 0"
	.align	3
.LC7:
	.string	"func0(16, 2) == 1"
	.align	3
.LC8:
	.string	"func0(143214, 16) == 0"
	.align	3
.LC9:
	.string	"func0(4, 2) == 1"
	.align	3
.LC10:
	.string	"func0(9, 3) == 1"
	.align	3
.LC11:
	.string	"func0(16, 4) == 1"
	.align	3
.LC12:
	.string	"func0(24, 2) == 0"
	.align	3
.LC13:
	.string	"func0(128, 4) == 0"
	.align	3
.LC14:
	.string	"func0(12, 6) == 0"
	.align	3
.LC15:
	.string	"func0(1, 1) == 1"
	.align	3
.LC16:
	.string	"func0(1, 12) == 1"
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
	li	a1,4
	li	a0,1
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,17
	lla	a1,.LC0
	lla	a0,.LC1
	call	__assert_fail@plt
.L8:
	li	a1,2
	li	a0,2
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,18
	lla	a1,.LC0
	lla	a0,.LC2
	call	__assert_fail@plt
.L9:
	li	a1,2
	li	a0,8
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,19
	lla	a1,.LC0
	lla	a0,.LC3
	call	__assert_fail@plt
.L10:
	li	a1,2
	li	a0,3
	call	func0
	mv	a5,a0
	beq	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,20
	lla	a1,.LC0
	lla	a0,.LC4
	call	__assert_fail@plt
.L11:
	li	a1,1
	li	a0,3
	call	func0
	mv	a5,a0
	beq	a5,zero,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,21
	lla	a1,.LC0
	lla	a0,.LC5
	call	__assert_fail@plt
.L12:
	li	a1,3
	li	a0,5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,22
	lla	a1,.LC0
	lla	a0,.LC6
	call	__assert_fail@plt
.L13:
	li	a1,2
	li	a0,16
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,23
	lla	a1,.LC0
	lla	a0,.LC7
	call	__assert_fail@plt
.L14:
	li	a1,16
	li	a5,143360
	addi	a0,a5,-146
	call	func0
	mv	a5,a0
	beq	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,24
	lla	a1,.LC0
	lla	a0,.LC8
	call	__assert_fail@plt
.L15:
	li	a1,2
	li	a0,4
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,25
	lla	a1,.LC0
	lla	a0,.LC9
	call	__assert_fail@plt
.L16:
	li	a1,3
	li	a0,9
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,26
	lla	a1,.LC0
	lla	a0,.LC10
	call	__assert_fail@plt
.L17:
	li	a1,4
	li	a0,16
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,27
	lla	a1,.LC0
	lla	a0,.LC11
	call	__assert_fail@plt
.L18:
	li	a1,2
	li	a0,24
	call	func0
	mv	a5,a0
	beq	a5,zero,.L19
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,28
	lla	a1,.LC0
	lla	a0,.LC12
	call	__assert_fail@plt
.L19:
	li	a1,4
	li	a0,128
	call	func0
	mv	a5,a0
	beq	a5,zero,.L20
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,29
	lla	a1,.LC0
	lla	a0,.LC13
	call	__assert_fail@plt
.L20:
	li	a1,6
	li	a0,12
	call	func0
	mv	a5,a0
	beq	a5,zero,.L21
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,30
	lla	a1,.LC0
	lla	a0,.LC14
	call	__assert_fail@plt
.L21:
	li	a1,1
	li	a0,1
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L22
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,31
	lla	a1,.LC0
	lla	a0,.LC15
	call	__assert_fail@plt
.L22:
	li	a1,12
	li	a0,1
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L23
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,32
	lla	a1,.LC0
	lla	a0,.LC16
	call	__assert_fail@plt
.L23:
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
