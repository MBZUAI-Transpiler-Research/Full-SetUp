	.file	"problem88.c"
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
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	sd	s1,72(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)
	mv	a5,a1
	sd	a2,-88(s0)
	sd	a4,-96(s0)
	sw	a5,-76(s0)
	mv	a5,a3
	sw	a5,-80(s0)
	li	a0,800
	call	malloc@plt
	mv	a5,a0
	sd	a5,-40(s0)
	sw	zero,-52(s0)
	sw	zero,-48(s0)
	j	.L2
.L6:
	lw	a5,-48(s0)
	slli	a5,a5,2
	ld	a4,-88(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	addiw	a5,a5,-1
	sw	a5,-44(s0)
	j	.L3
.L5:
	lw	a5,-48(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-44(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-80(s0)
	sext.w	a5,a5
	bne	a5,a4,.L4
	lw	a5,-52(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	s1,a4,a5
	li	a0,8
	call	malloc@plt
	mv	a5,a0
	sd	a5,0(s1)
	lw	a5,-52(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	lw	a4,-48(s0)
	sw	a4,0(a5)
	lw	a5,-52(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	addi	a5,a5,4
	lw	a4,-44(s0)
	sw	a4,0(a5)
	lw	a5,-52(s0)
	addiw	a5,a5,1
	sw	a5,-52(s0)
.L4:
	lw	a5,-44(s0)
	addiw	a5,a5,-1
	sw	a5,-44(s0)
.L3:
	lw	a5,-44(s0)
	sext.w	a5,a5
	bge	a5,zero,.L5
	lw	a5,-48(s0)
	addiw	a5,a5,1
	sw	a5,-48(s0)
.L2:
	lw	a5,-48(s0)
	mv	a4,a5
	lw	a5,-76(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L6
	ld	a5,-96(s0)
	lw	a4,-52(s0)
	sw	a4,0(a5)
	ld	a5,-40(s0)
	mv	a0,a5
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	ld	s1,72(sp)
	.cfi_restore 9
	addi	sp,sp,96
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
	mv	a5,a1
	sd	a2,-56(s0)
	mv	a4,a3
	sw	a5,-44(s0)
	mv	a5,a4
	sw	a5,-48(s0)
	lw	a5,-44(s0)
	mv	a4,a5
	lw	a5,-48(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	beq	a4,a5,.L9
	li	a5,0
	j	.L10
.L9:
	sw	zero,-20(s0)
	j	.L11
.L14:
	lw	a5,-20(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	lw	a3,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,3
	ld	a4,-56(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	lw	a5,0(a5)
	mv	a4,a3
	bne	a4,a5,.L12
	lw	a5,-20(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	addi	a5,a5,4
	lw	a3,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,3
	ld	a4,-56(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	addi	a5,a5,4
	lw	a5,0(a5)
	mv	a4,a3
	beq	a4,a5,.L13
.L12:
	li	a5,0
	j	.L10
.L13:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L11:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L14
	li	a5,1
.L10:
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
	.align	1
	.globl	free_result
	.type	free_result, @function
free_result:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	mv	a5,a1
	sw	a5,-44(s0)
	sw	zero,-20(s0)
	j	.L16
.L17:
	lw	a5,-20(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a0,a5
	call	free@plt
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L16:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L17
	ld	a0,-40(s0)
	call	free@plt
	nop
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	free_result, .-free_result
	.section	.rodata
	.align	3
.LC3:
	.string	"problem88.c"
	.align	3
.LC4:
	.string	"issame(result, returnSize, expected1, 5)"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.align	3
.LC1:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	1
	.word	6
	.align	3
.LC2:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	1
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB9:
	.cfi_startproc
	addi	sp,sp,-240
	.cfi_def_cfa_offset 240
	sd	ra,232(sp)
	sd	s0,224(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,240
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	li	a5,3
	sw	a5,-228(s0)
	li	a5,6
	sw	a5,-176(s0)
	li	a5,6
	sw	a5,-172(s0)
	li	a5,6
	sw	a5,-168(s0)
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-136(s0)
	ld	a4,8(a5)
	sd	a4,-128(s0)
	ld	a5,16(a5)
	sd	a5,-120(s0)
	addi	a5,s0,-136
	sd	a5,-160(s0)
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-112(s0)
	ld	a4,8(a5)
	sd	a4,-104(s0)
	ld	a5,16(a5)
	sd	a5,-96(s0)
	addi	a5,s0,-112
	sd	a5,-152(s0)
	lla	a5,.LC2
	ld	a4,0(a5)
	sd	a4,-88(s0)
	ld	a4,8(a5)
	sd	a4,-80(s0)
	ld	a5,16(a5)
	sd	a5,-72(s0)
	addi	a5,s0,-88
	sd	a5,-144(s0)
	sw	zero,-216(s0)
	sw	zero,-212(s0)
	addi	a5,s0,-216
	sd	a5,-64(s0)
	li	a5,1
	sw	a5,-208(s0)
	li	a5,4
	sw	a5,-204(s0)
	addi	a5,s0,-208
	sd	a5,-56(s0)
	li	a5,1
	sw	a5,-200(s0)
	sw	zero,-196(s0)
	addi	a5,s0,-200
	sd	a5,-48(s0)
	li	a5,2
	sw	a5,-192(s0)
	li	a5,5
	sw	a5,-188(s0)
	addi	a5,s0,-192
	sd	a5,-40(s0)
	li	a5,2
	sw	a5,-184(s0)
	sw	zero,-180(s0)
	addi	a5,s0,-184
	sd	a5,-32(s0)
	addi	a4,s0,-232
	addi	a2,s0,-176
	lw	a1,-228(s0)
	addi	a5,s0,-160
	li	a3,1
	mv	a0,a5
	call	func0
	sd	a0,-224(s0)
	lw	a5,-232(s0)
	addi	a4,s0,-64
	li	a3,5
	mv	a2,a4
	mv	a1,a5
	ld	a0,-224(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L19
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,53
	lla	a1,.LC3
	lla	a0,.LC4
	call	__assert_fail@plt
.L19:
	lw	a5,-232(s0)
	mv	a1,a5
	ld	a0,-224(s0)
	call	free_result
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L21
	call	__stack_chk_fail@plt
.L21:
	mv	a0,a4
	ld	ra,232(sp)
	.cfi_restore 1
	ld	s0,224(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 240
	addi	sp,sp,240
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
