	.file	"problem56.c"
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
	addi	sp,sp,-2032
	.cfi_def_cfa_offset 2032
	sd	ra,2024(sp)
	sd	s0,2016(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,2032
	.cfi_def_cfa 8, 0
	addi	sp,sp,-2016
	mv	a4,a0
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a4,76(a5)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	addi	a4,a5,88
	li	a5,4096
	addi	a5,a5,-96
	mv	a2,a5
	li	a1,0
	mv	a0,a4
	call	memset@plt
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	zero,88(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a4,1
	sw	a4,92(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a4,2
	sw	a4,84(a5)
	j	.L2
.L3:
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,84(a5)
	addiw	a5,a5,-1
	sext.w	a5,a5
	li	a4,-4096
	addi	a4,a4,-16
	add	a4,a4,s0
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,88(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,84(a5)
	addiw	a5,a5,-2
	sext.w	a5,a5
	li	a3,-4096
	addi	a3,a3,-16
	add	a3,a3,s0
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,88(a5)
	addw	a5,a4,a5
	sext.w	a4,a5
	li	a5,-4096
	addi	a5,a5,-16
	add	a3,a5,s0
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,84(a5)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,88(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a4,-4096
	addi	a4,a4,-16
	add	a4,a4,s0
	lw	a4,84(a4)
	addiw	a4,a4,1
	sw	a4,84(a5)
.L2:
	li	a5,-4096
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,84(a4)
	lw	a5,76(a5)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L3
	li	a5,-4096
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,76(a5)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,88(a5)
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
	addi	sp,sp,2016
	.cfi_def_cfa 2, 2032
	ld	ra,2024(sp)
	.cfi_restore 1
	ld	s0,2016(sp)
	.cfi_restore 8
	addi	sp,sp,2032
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem56.c"
	.align	3
.LC1:
	.string	"func0(10) == 55"
	.align	3
.LC2:
	.string	"func0(1) == 1"
	.align	3
.LC3:
	.string	"func0(8) == 21"
	.align	3
.LC4:
	.string	"func0(11) == 89"
	.align	3
.LC5:
	.string	"func0(12) == 144"
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
	li	a0,10
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,55
	beq	a4,a5,.L7
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,17
	lla	a1,.LC0
	lla	a0,.LC1
	call	__assert_fail@plt
.L7:
	li	a0,1
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,18
	lla	a1,.LC0
	lla	a0,.LC2
	call	__assert_fail@plt
.L8:
	li	a0,8
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,21
	beq	a4,a5,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,19
	lla	a1,.LC0
	lla	a0,.LC3
	call	__assert_fail@plt
.L9:
	li	a0,11
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,89
	beq	a4,a5,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,20
	lla	a1,.LC0
	lla	a0,.LC4
	call	__assert_fail@plt
.L10:
	li	a0,12
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,144
	beq	a4,a5,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,21
	lla	a1,.LC0
	lla	a0,.LC5
	call	__assert_fail@plt
.L11:
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
