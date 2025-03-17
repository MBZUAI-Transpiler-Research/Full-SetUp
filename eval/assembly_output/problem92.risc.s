	.file	"problem92.c"
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
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	li	a5,1
	sw	a5,-32(s0)
	sw	zero,-28(s0)
	sw	zero,-24(s0)
	sw	zero,-20(s0)
	j	.L2
.L9:
	call	__ctype_b_loc@plt
	mv	a5,a0
	ld	a4,0(a5)
	lw	a5,-20(s0)
	ld	a3,-40(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a4,a5
	li	a5,8192
	and	a5,a4,a5
	sext.w	a5,a5
	beq	a5,zero,.L3
	lw	a5,-28(s0)
	sext.w	a5,a5
	beq	a5,zero,.L3
	sw	zero,-28(s0)
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L3:
	lw	a5,-20(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,73
	bne	a4,a5,.L4
	lw	a5,-32(s0)
	sext.w	a5,a5
	beq	a5,zero,.L4
	li	a5,1
	sw	a5,-28(s0)
	j	.L5
.L4:
	call	__ctype_b_loc@plt
	mv	a5,a0
	ld	a4,0(a5)
	lw	a5,-20(s0)
	ld	a3,-40(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a4,a5
	li	a5,8192
	and	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L5
	sw	zero,-28(s0)
.L5:
	call	__ctype_b_loc@plt
	mv	a5,a0
	ld	a4,0(a5)
	lw	a5,-20(s0)
	ld	a3,-40(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a4,a5
	li	a5,8192
	and	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L6
	sw	zero,-32(s0)
.L6:
	lw	a5,-20(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,46
	beq	a4,a5,.L7
	lw	a5,-20(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,63
	beq	a4,a5,.L7
	lw	a5,-20(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,33
	bne	a4,a5,.L8
.L7:
	li	a5,1
	sw	a5,-32(s0)
.L8:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a5,-20(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L9
	lw	a5,-24(s0)
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
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
	.string	"Hello world"
	.align	3
.LC1:
	.string	"problem92.c"
	.align	3
.LC2:
	.string	"func0(\"Hello world\") == 0"
	.align	3
.LC3:
	.string	"Is the sky blue?"
	.align	3
.LC4:
	.string	"func0(\"Is the sky blue?\") == 0"
	.align	3
.LC5:
	.string	"I love It !"
	.align	3
.LC6:
	.string	"func0(\"I love It !\") == 1"
	.align	3
.LC7:
	.string	"bIt"
	.align	3
.LC8:
	.string	"func0(\"bIt\") == 0"
	.align	3
.LC9:
	.string	"I feel good today. I will be productive. will kill It"
	.align	3
.LC10:
	.string	"func0(\"I feel good today. I will be productive. will kill It\") == 2"
	.align	3
.LC11:
	.string	"You and I are going for a walk"
	.align	3
.LC12:
	.string	"func0(\"You and I are going for a walk\") == 0"
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
	lla	a0,.LC0
	call	func0
	mv	a5,a0
	beq	a5,zero,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,34
	lla	a1,.LC1
	lla	a0,.LC2
	call	__assert_fail@plt
.L12:
	lla	a0,.LC3
	call	func0
	mv	a5,a0
	beq	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,35
	lla	a1,.LC1
	lla	a0,.LC4
	call	__assert_fail@plt
.L13:
	lla	a0,.LC5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,36
	lla	a1,.LC1
	lla	a0,.LC6
	call	__assert_fail@plt
.L14:
	lla	a0,.LC7
	call	func0
	mv	a5,a0
	beq	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,37
	lla	a1,.LC1
	lla	a0,.LC8
	call	__assert_fail@plt
.L15:
	lla	a0,.LC9
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,2
	beq	a4,a5,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,38
	lla	a1,.LC1
	lla	a0,.LC10
	call	__assert_fail@plt
.L16:
	lla	a0,.LC11
	call	func0
	mv	a5,a0
	beq	a5,zero,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,39
	lla	a1,.LC1
	lla	a0,.LC12
	call	__assert_fail@plt
.L17:
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
