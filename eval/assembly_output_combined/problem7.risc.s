	.file	"problem7.c"
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
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	sd	zero,-24(s0)
	sw	zero,-40(s0)
	sw	zero,-36(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	sw	zero,-32(s0)
	j	.L2
.L5:
	lw	a5,-32(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-41(s0)
	lbu	a5,-41(s0)
	andi	a4,a5,0xff
	li	a5,40
	bne	a4,a5,.L3
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sw	a5,-40(s0)
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L4
	lw	a5,-40(s0)
	sw	a5,-36(s0)
	j	.L4
.L3:
	lbu	a5,-41(s0)
	andi	a4,a5,0xff
	li	a5,41
	bne	a4,a5,.L4
	lw	a5,-40(s0)
	addiw	a5,a5,-1
	sw	a5,-40(s0)
	lw	a5,-40(s0)
	sext.w	a5,a5
	bne	a5,zero,.L4
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	slli	a5,a5,2
	mv	a1,a5
	ld	a0,-24(s0)
	call	realloc@plt
	sd	a0,-24(s0)
	lw	a5,-28(s0)
	addiw	a4,a5,1
	sw	a4,-28(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a4,-36(s0)
	sw	a4,0(a5)
	sw	zero,-36(s0)
.L4:
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L2:
	lw	a5,-32(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L5
	ld	a5,-64(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	ld	a5,-24(s0)
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
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
	mv	a4,a3
	sw	a5,-52(s0)
	mv	a5,a4
	sw	a5,-56(s0)
	lw	a5,-52(s0)
	mv	a4,a5
	lw	a5,-56(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	beq	a4,a5,.L8
	li	a5,0
	j	.L9
.L8:
	sw	zero,-20(s0)
	j	.L10
.L12:
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
	beq	a4,a5,.L11
	li	a5,0
	j	.L9
.L11:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L10:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L12
	li	a5,1
.L9:
	mv	a0,a5
	ld	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC2:
	.string	"(()()) ((())) () ((())()())"
	.align	3
.LC3:
	.string	"problem7.c"
	.align	3
.LC4:
	.string	"issame(result, (const int[]){2, 3, 1, 3}, returnSize, 4)"
	.align	3
.LC5:
	.string	"() (()) ((())) (((())))"
	.align	3
.LC6:
	.string	"issame(result, (const int[]){1, 2, 3, 4}, returnSize, 4)"
	.align	3
.LC7:
	.string	"(()(())((())))"
	.align	3
.LC8:
	.string	"issame(result, (const int[]){4}, returnSize, 1)"
	.align	3
.LC0:
	.word	2
	.word	3
	.word	1
	.word	3
	.align	3
.LC1:
	.word	1
	.word	2
	.word	3
	.word	4
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	addi	a5,s0,-52
	mv	a1,a5
	lla	a0,.LC2
	call	func0
	sd	a0,-48(s0)
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-40(s0)
	ld	a5,8(a5)
	sd	a5,-32(s0)
	lw	a4,-52(s0)
	addi	a5,s0,-40
	li	a3,4
	mv	a2,a4
	mv	a1,a5
	ld	a0,-48(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,45
	lla	a1,.LC3
	lla	a0,.LC4
	call	__assert_fail@plt
.L14:
	ld	a0,-48(s0)
	call	free@plt
	addi	a5,s0,-52
	mv	a1,a5
	lla	a0,.LC5
	call	func0
	sd	a0,-48(s0)
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-40(s0)
	ld	a5,8(a5)
	sd	a5,-32(s0)
	lw	a4,-52(s0)
	addi	a5,s0,-40
	li	a3,4
	mv	a2,a4
	mv	a1,a5
	ld	a0,-48(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,49
	lla	a1,.LC3
	lla	a0,.LC6
	call	__assert_fail@plt
.L15:
	ld	a0,-48(s0)
	call	free@plt
	addi	a5,s0,-52
	mv	a1,a5
	lla	a0,.LC7
	call	func0
	sd	a0,-48(s0)
	li	a5,4
	sw	a5,-40(s0)
	lw	a4,-52(s0)
	addi	a5,s0,-40
	li	a3,1
	mv	a2,a4
	mv	a1,a5
	ld	a0,-48(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,53
	lla	a1,.LC3
	lla	a0,.LC8
	call	__assert_fail@plt
.L16:
	ld	a0,-48(s0)
	call	free@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L18
	call	__stack_chk_fail@plt
.L18:
	mv	a0,a4
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
