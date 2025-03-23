	.file	"problem160.c"
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
	mv	a4,a2
	sd	a3,-40(s0)
	sw	a5,-20(s0)
	mv	a5,a1
	sw	a5,-24(s0)
	mv	a5,a4
	sw	a5,-28(s0)
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L2
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	addw	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-40(s0)
	sw	a4,0(a5)
	ld	a5,-40(s0)
	addi	a5,a5,4
	sw	zero,0(a5)
	j	.L4
.L2:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	addw	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-40(s0)
	sw	a4,0(a5)
	ld	a5,-40(s0)
	addi	a5,a5,4
	lw	a4,-28(s0)
	mv	a3,a4
	lw	a4,-24(s0)
	subw	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
.L4:
	nop
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	ld	a5,-24(s0)
	lw	a4,0(a5)
	ld	a5,-32(s0)
	lw	a5,0(a5)
	bne	a4,a5,.L6
	ld	a5,-24(s0)
	addi	a5,a5,4
	lw	a4,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	bne	a4,a5,.L6
	li	a5,1
	j	.L7
.L6:
	li	a5,0
.L7:
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC0:
	.string	"problem160.c"
	.align	3
.LC1:
	.string	"issame(result, (int[]){11, 4})"
	.align	3
.LC2:
	.string	"issame(result, (int[]){12, 1})"
	.align	3
.LC3:
	.string	"issame(result, (int[]){11, 0})"
	.align	3
.LC4:
	.string	"issame(result, (int[]){7, 0})"
	.align	3
.LC5:
	.string	"issame(result, (int[]){9, 2})"
	.align	3
.LC6:
	.string	"issame(result, (int[]){5, 0})"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	addi	a5,s0,-40
	mv	a3,a5
	li	a2,10
	li	a1,6
	li	a0,5
	call	func0
	li	a5,11
	sw	a5,-32(s0)
	li	a5,4
	sw	a5,-28(s0)
	addi	a4,s0,-32
	addi	a5,s0,-40
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,25
	lla	a1,.LC0
	lla	a0,.LC1
	call	__assert_fail@plt
.L10:
	addi	a5,s0,-40
	mv	a3,a5
	li	a2,9
	li	a1,8
	li	a0,4
	call	func0
	li	a5,12
	sw	a5,-32(s0)
	li	a5,1
	sw	a5,-28(s0)
	addi	a4,s0,-32
	addi	a5,s0,-40
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,28
	lla	a1,.LC0
	lla	a0,.LC2
	call	__assert_fail@plt
.L11:
	addi	a5,s0,-40
	mv	a3,a5
	li	a2,10
	li	a1,10
	li	a0,1
	call	func0
	li	a5,11
	sw	a5,-32(s0)
	sw	zero,-28(s0)
	addi	a4,s0,-32
	addi	a5,s0,-40
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,31
	lla	a1,.LC0
	lla	a0,.LC3
	call	__assert_fail@plt
.L12:
	addi	a5,s0,-40
	mv	a3,a5
	li	a2,5
	li	a1,11
	li	a0,2
	call	func0
	li	a5,7
	sw	a5,-32(s0)
	sw	zero,-28(s0)
	addi	a4,s0,-32
	addi	a5,s0,-40
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,34
	lla	a1,.LC0
	lla	a0,.LC4
	call	__assert_fail@plt
.L13:
	addi	a5,s0,-40
	mv	a3,a5
	li	a2,7
	li	a1,5
	li	a0,4
	call	func0
	li	a5,9
	sw	a5,-32(s0)
	li	a5,2
	sw	a5,-28(s0)
	addi	a4,s0,-32
	addi	a5,s0,-40
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,37
	lla	a1,.LC0
	lla	a0,.LC5
	call	__assert_fail@plt
.L14:
	addi	a5,s0,-40
	mv	a3,a5
	li	a2,1
	li	a1,5
	li	a0,4
	call	func0
	li	a5,5
	sw	a5,-32(s0)
	sw	zero,-28(s0)
	addi	a4,s0,-32
	addi	a5,s0,-40
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,40
	lla	a1,.LC0
	lla	a0,.LC6
	call	__assert_fail@plt
.L15:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L17
	call	__stack_chk_fail@plt
.L17:
	mv	a0,a4
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
