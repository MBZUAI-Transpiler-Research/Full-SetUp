	.file	"problem11.c"
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
	ld	a0,-56(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	slliw	a5,a5,1
	sext.w	a5,a5
	addiw	a5,a5,1
	sext.w	a5,a5
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	ld	a5,-24(s0)
	bne	a5,zero,.L2
	li	a5,0
	j	.L3
.L2:
	sw	zero,-40(s0)
	j	.L4
.L12:
	li	a5,1
	sw	a5,-32(s0)
	sw	zero,-36(s0)
	j	.L5
.L8:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,-56(s0)
	add	a5,a5,a4
	lbu	a4,0(a5)
	lw	a5,-28(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	lw	a3,-36(s0)
	subw	a5,a5,a3
	sext.w	a5,a5
	mv	a3,a5
	ld	a5,-56(s0)
	add	a5,a5,a3
	lbu	a5,0(a5)
	beq	a4,a5,.L6
	sw	zero,-32(s0)
	j	.L7
.L6:
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L5:
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sext.w	a4,a5
	lw	a5,-36(s0)
	sext.w	a5,a5
	blt	a5,a4,.L8
.L7:
	lw	a5,-32(s0)
	sext.w	a5,a5
	beq	a5,zero,.L9
	lw	a5,-28(s0)
	mv	a2,a5
	ld	a1,-56(s0)
	ld	a0,-24(s0)
	call	strncpy@plt
	sw	zero,-36(s0)
	j	.L10
.L11:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	addi	a5,a5,-1
	ld	a4,-56(s0)
	add	a4,a4,a5
	lw	a5,-28(s0)
	mv	a3,a5
	lw	a5,-36(s0)
	addw	a5,a3,a5
	sext.w	a5,a5
	mv	a3,a5
	ld	a5,-24(s0)
	add	a5,a5,a3
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L10:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L11
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,-24(s0)
	add	a5,a5,a4
	sb	zero,0(a5)
	ld	a5,-24(s0)
	j	.L3
.L9:
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sw	a5,-40(s0)
.L4:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L12
	lw	a5,-28(s0)
	mv	a2,a5
	ld	a1,-56(s0)
	ld	a0,-24(s0)
	call	strncpy@plt
	sw	zero,-36(s0)
	j	.L13
.L14:
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	addi	a5,a5,-1
	ld	a4,-56(s0)
	add	a4,a4,a5
	lw	a5,-28(s0)
	mv	a3,a5
	lw	a5,-36(s0)
	addw	a5,a3,a5
	sext.w	a5,a5
	mv	a3,a5
	ld	a5,-24(s0)
	add	a5,a5,a3
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L13:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L14
	lw	a5,-28(s0)
	slliw	a5,a5,1
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,-24(s0)
	add	a5,a5,a4
	sb	zero,0(a5)
	ld	a5,-24(s0)
.L3:
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
	.section	.rodata
	.align	3
.LC0:
	.string	""
	.align	3
.LC1:
	.string	"problem11.c"
	.align	3
.LC2:
	.string	"strcmp(palindrome, \"\") == 0"
	.align	3
.LC3:
	.string	"x"
	.align	3
.LC4:
	.string	"strcmp(palindrome, \"x\") == 0"
	.align	3
.LC5:
	.string	"xyz"
	.align	3
.LC6:
	.string	"xyzyx"
	.align	3
.LC7:
	.string	"strcmp(palindrome, \"xyzyx\") == 0"
	.align	3
.LC8:
	.string	"xyx"
	.align	3
.LC9:
	.string	"strcmp(palindrome, \"xyx\") == 0"
	.align	3
.LC10:
	.string	"jerry"
	.align	3
.LC11:
	.string	"jerryrrej"
	.align	3
.LC12:
	.string	"strcmp(palindrome, \"jerryrrej\") == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	lla	a0,.LC0
	call	func0
	sd	a0,-24(s0)
	ld	a5,-24(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	beq	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,49
	lla	a1,.LC1
	lla	a0,.LC2
	call	__assert_fail@plt
.L16:
	ld	a0,-24(s0)
	call	free@plt
	lla	a0,.LC3
	call	func0
	sd	a0,-24(s0)
	lla	a1,.LC3
	ld	a0,-24(s0)
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,54
	lla	a1,.LC1
	lla	a0,.LC4
	call	__assert_fail@plt
.L17:
	ld	a0,-24(s0)
	call	free@plt
	lla	a0,.LC5
	call	func0
	sd	a0,-24(s0)
	lla	a1,.LC6
	ld	a0,-24(s0)
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,59
	lla	a1,.LC1
	lla	a0,.LC7
	call	__assert_fail@plt
.L18:
	ld	a0,-24(s0)
	call	free@plt
	lla	a0,.LC8
	call	func0
	sd	a0,-24(s0)
	lla	a1,.LC8
	ld	a0,-24(s0)
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L19
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,64
	lla	a1,.LC1
	lla	a0,.LC9
	call	__assert_fail@plt
.L19:
	ld	a0,-24(s0)
	call	free@plt
	lla	a0,.LC10
	call	func0
	sd	a0,-24(s0)
	lla	a1,.LC11
	ld	a0,-24(s0)
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L20
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,69
	lla	a1,.LC1
	lla	a0,.LC12
	call	__assert_fail@plt
.L20:
	ld	a0,-24(s0)
	call	free@plt
	li	a5,0
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
