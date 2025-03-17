	.file	"problem64.c"
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
	addi	sp,sp,-448
	.cfi_def_cfa_offset 448
	sd	ra,440(sp)
	sd	s0,432(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,448
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-436(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	addi	a5,s0,-424
	li	a4,400
	mv	a2,a4
	li	a1,0
	mv	a0,a5
	call	memset@plt
	sw	zero,-420(s0)
	li	a5,1
	sw	a5,-416(s0)
	li	a5,3
	sw	a5,-428(s0)
	j	.L2
.L3:
	lw	a5,-428(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,-408(a5)
	lw	a5,-428(s0)
	addiw	a5,a5,-2
	sext.w	a5,a5
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-408(a5)
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-428(s0)
	addiw	a5,a5,-3
	sext.w	a5,a5
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-408(a5)
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-428(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a4,-408(a5)
	lw	a5,-428(s0)
	addiw	a5,a5,1
	sw	a5,-428(s0)
.L2:
	lw	a5,-428(s0)
	mv	a4,a5
	lw	a5,-436(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L3
	lw	a5,-436(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-408(a5)
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L5
	call	__stack_chk_fail@plt
.L5:
	mv	a0,a4
	ld	ra,440(sp)
	.cfi_restore 1
	ld	s0,432(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 448
	addi	sp,sp,448
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem64.c"
	.align	3
.LC1:
	.string	"func0(2) == 1"
	.align	3
.LC2:
	.string	"func0(1) == 0"
	.align	3
.LC3:
	.string	"func0(5) == 4"
	.align	3
.LC4:
	.string	"func0(8) == 24"
	.align	3
.LC5:
	.string	"func0(10) == 81"
	.align	3
.LC6:
	.string	"func0(12) == 274"
	.align	3
.LC7:
	.string	"func0(14) == 927"
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
	li	a0,2
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L7
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,18
	lla	a1,.LC0
	lla	a0,.LC1
	call	__assert_fail@plt
.L7:
	li	a0,1
	call	func0
	mv	a5,a0
	beq	a5,zero,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,19
	lla	a1,.LC0
	lla	a0,.LC2
	call	__assert_fail@plt
.L8:
	li	a0,5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,4
	beq	a4,a5,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,20
	lla	a1,.LC0
	lla	a0,.LC3
	call	__assert_fail@plt
.L9:
	li	a0,8
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,24
	beq	a4,a5,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,21
	lla	a1,.LC0
	lla	a0,.LC4
	call	__assert_fail@plt
.L10:
	li	a0,10
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,81
	beq	a4,a5,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,22
	lla	a1,.LC0
	lla	a0,.LC5
	call	__assert_fail@plt
.L11:
	li	a0,12
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,274
	beq	a4,a5,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,23
	lla	a1,.LC0
	lla	a0,.LC6
	call	__assert_fail@plt
.L12:
	li	a0,14
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,927
	beq	a4,a5,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,24
	lla	a1,.LC0
	lla	a0,.LC7
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
