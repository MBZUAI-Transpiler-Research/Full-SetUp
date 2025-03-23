	.file	"problem9.c"
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
	sd	a0,-40(s0)
	mv	a5,a1
	sd	a2,-56(s0)
	sw	a5,-44(s0)
	sw	zero,-28(s0)
	li	a5,1
	sw	a5,-24(s0)
	sw	zero,-20(s0)
	j	.L2
.L3:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-28(s0)
	addw	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-24(s0)
	mulw	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L3
	ld	a5,-56(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	ld	a5,-56(s0)
	addi	a5,a5,4
	lw	a4,-24(s0)
	sw	a4,0(a5)
	nop
	ld	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
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
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	mv	a5,a2
	sw	a5,-52(s0)
	sw	zero,-20(s0)
	j	.L5
.L8:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	beq	a4,a5,.L6
	li	a5,0
	j	.L7
.L6:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L5:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L8
	li	a5,1
.L7:
	mv	a0,a5
	ld	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC0:
	.string	"problem9.c"
	.align	3
.LC1:
	.string	"issame(result, (const int[]){0, 1}, 2)"
	.align	3
.LC2:
	.string	"issame(result, (const int[]){3, 1}, 2)"
	.align	3
.LC3:
	.string	"issame(result, (const int[]){100, 0}, 2)"
	.align	3
.LC4:
	.string	"issame(result, (const int[]){3 + 5 + 7, 3 * 5 * 7}, 2)"
	.align	3
.LC5:
	.string	"issame(result, (const int[]){10, 10}, 2)"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	addi	a4,s0,-80
	addi	a5,s0,-96
	mv	a2,a4
	li	a1,0
	mv	a0,a5
	call	func0
	sw	zero,-40(s0)
	li	a5,1
	sw	a5,-36(s0)
	addi	a4,s0,-40
	addi	a5,s0,-80
	li	a2,2
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,29
	lla	a1,.LC0
	lla	a0,.LC1
	call	__assert_fail@plt
.L10:
	li	a5,1
	sw	a5,-56(s0)
	li	a5,1
	sw	a5,-52(s0)
	li	a5,1
	sw	a5,-48(s0)
	addi	a4,s0,-80
	addi	a5,s0,-56
	mv	a2,a4
	li	a1,3
	mv	a0,a5
	call	func0
	li	a5,3
	sw	a5,-40(s0)
	li	a5,1
	sw	a5,-36(s0)
	addi	a4,s0,-40
	addi	a5,s0,-80
	li	a2,2
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,33
	lla	a1,.LC0
	lla	a0,.LC2
	call	__assert_fail@plt
.L11:
	li	a5,100
	sw	a5,-72(s0)
	sw	zero,-68(s0)
	addi	a4,s0,-80
	addi	a5,s0,-72
	mv	a2,a4
	li	a1,2
	mv	a0,a5
	call	func0
	li	a5,100
	sw	a5,-40(s0)
	sw	zero,-36(s0)
	addi	a4,s0,-40
	addi	a5,s0,-80
	li	a2,2
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,37
	lla	a1,.LC0
	lla	a0,.LC3
	call	__assert_fail@plt
.L12:
	li	a5,3
	sw	a5,-40(s0)
	li	a5,5
	sw	a5,-36(s0)
	li	a5,7
	sw	a5,-32(s0)
	addi	a4,s0,-80
	addi	a5,s0,-40
	mv	a2,a4
	li	a1,3
	mv	a0,a5
	call	func0
	li	a5,15
	sw	a5,-64(s0)
	li	a5,105
	sw	a5,-60(s0)
	addi	a4,s0,-64
	addi	a5,s0,-80
	li	a2,2
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,41
	lla	a1,.LC0
	lla	a0,.LC4
	call	__assert_fail@plt
.L13:
	li	a5,10
	sw	a5,-88(s0)
	addi	a4,s0,-80
	addi	a5,s0,-88
	mv	a2,a4
	li	a1,1
	mv	a0,a5
	call	func0
	li	a5,10
	sw	a5,-64(s0)
	li	a5,10
	sw	a5,-60(s0)
	addi	a4,s0,-64
	addi	a5,s0,-80
	li	a2,2
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,45
	lla	a1,.LC0
	lla	a0,.LC5
	call	__assert_fail@plt
.L14:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L16
	call	__stack_chk_fail@plt
.L16:
	mv	a0,a4
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
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
