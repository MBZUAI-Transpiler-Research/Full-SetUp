	.file	"problem162.c"
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
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sw	zero,-32(s0)
	ld	a0,-56(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-20(s0)
	sw	zero,-28(s0)
	j	.L2
.L6:
	call	__ctype_b_loc@plt
	mv	a5,a0
	ld	a4,0(a5)
	lw	a5,-28(s0)
	ld	a3,-56(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,1024
	sext.w	a5,a5
	beq	a5,zero,.L3
	call	__ctype_b_loc@plt
	mv	a5,a0
	ld	a4,0(a5)
	lw	a5,-28(s0)
	ld	a3,-56(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,256
	sext.w	a5,a5
	beq	a5,zero,.L4
	lw	a5,-28(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a0,a5
	call	tolower@plt
	mv	a5,a0
	mv	a3,a5
	lw	a5,-28(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	andi	a4,a3,0xff
	sb	a4,0(a5)
	j	.L5
.L4:
	call	__ctype_b_loc@plt
	mv	a5,a0
	ld	a4,0(a5)
	lw	a5,-28(s0)
	ld	a3,-56(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,512
	sext.w	a5,a5
	beq	a5,zero,.L5
	lw	a5,-28(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a0,a5
	call	toupper@plt
	mv	a5,a0
	mv	a3,a5
	lw	a5,-28(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	andi	a4,a3,0xff
	sb	a4,0(a5)
	j	.L5
.L3:
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L5:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L2:
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L6
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bne	a4,a5,.L7
	sw	zero,-24(s0)
	j	.L8
.L9:
	lw	a5,-24(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-33(s0)
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	addi	a5,a5,-1
	ld	a4,-56(s0)
	add	a4,a4,a5
	lw	a5,-24(s0)
	ld	a3,-56(s0)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	addi	a5,a5,-1
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a4,-33(s0)
	sb	a4,0(a5)
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L8:
	lw	a5,-20(s0)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sext.w	a4,a5
	lw	a5,-24(s0)
	sext.w	a5,a5
	blt	a5,a4,.L9
.L7:
	ld	a5,-56(s0)
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
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"aSdF"
	.align	3
.LC1:
	.string	"problem162.c"
	.align	3
.LC2:
	.string	"strcmp(func0(test1), \"aSdF\") == 0"
	.align	3
.LC3:
	.string	"4321"
	.align	3
.LC4:
	.string	"strcmp(func0(test2), \"4321\") == 0"
	.align	3
.LC5:
	.string	"AB"
	.align	3
.LC6:
	.string	"strcmp(func0(test3), \"AB\") == 0"
	.align	3
.LC7:
	.string	"#A@c"
	.align	3
.LC8:
	.string	"strcmp(func0(test4), \"#A@c\") == 0"
	.align	3
.LC10:
	.string	"#aSDFw^45"
	.align	3
.LC11:
	.string	"strcmp(func0(test5), \"#aSDFw^45\") == 0"
	.align	3
.LC12:
	.string	"2@6#"
	.align	3
.LC13:
	.string	"strcmp(func0(test6), \"2@6#\") == 0"
	.align	3
.LC14:
	.string	"#$A^d"
	.align	3
.LC15:
	.string	"strcmp(func0(test7), \"#$A^d\") == 0"
	.align	3
.LC16:
	.string	"#CCC"
	.align	3
.LC17:
	.string	"strcmp(func0(test8), \"#CCC\") == 0"
	.align	3
.LC9:
	.string	"#AsdfW^45"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
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
	li	a5,1715761152
	addi	a5,a5,833
	sw	a5,-88(s0)
	sb	zero,-84(s0)
	addi	a5,s0,-88
	mv	a0,a5
	call	func0
	mv	a5,a0
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,33
	lla	a1,.LC1
	lla	a0,.LC2
	call	__assert_fail@plt
.L12:
	li	a5,875769856
	addi	a5,a5,561
	sw	a5,-80(s0)
	sb	zero,-76(s0)
	addi	a5,s0,-80
	mv	a0,a5
	call	func0
	mv	a5,a0
	lla	a1,.LC3
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,36
	lla	a1,.LC1
	lla	a0,.LC4
	call	__assert_fail@plt
.L13:
	li	a5,24576
	addi	a5,a5,609
	sh	a5,-96(s0)
	sb	zero,-94(s0)
	addi	a5,s0,-96
	mv	a0,a5
	call	func0
	mv	a5,a0
	lla	a1,.LC5
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,39
	lla	a1,.LC1
	lla	a0,.LC6
	call	__assert_fail@plt
.L14:
	li	a5,1128292352
	addi	a5,a5,291
	sw	a5,-72(s0)
	sb	zero,-68(s0)
	addi	a5,s0,-72
	mv	a0,a5
	call	func0
	mv	a5,a0
	lla	a1,.LC7
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,42
	lla	a1,.LC1
	lla	a0,.LC8
	call	__assert_fail@plt
.L15:
	lla	a5,.LC9
	ld	a4,0(a5)
	sd	a4,-40(s0)
	lhu	a5,8(a5)
	sh	a5,-32(s0)
	addi	a5,s0,-40
	mv	a0,a5
	call	func0
	mv	a5,a0
	lla	a1,.LC10
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,45
	lla	a1,.LC1
	lla	a0,.LC11
	call	__assert_fail@plt
.L16:
	li	a5,843067392
	addi	a5,a5,1571
	sw	a5,-64(s0)
	sb	zero,-60(s0)
	addi	a5,s0,-64
	mv	a0,a5
	call	func0
	mv	a5,a0
	lla	a1,.LC12
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,48
	lla	a1,.LC1
	lla	a0,.LC13
	call	__assert_fail@plt
.L17:
	li	a5,1583423488
	addi	a5,a5,1059
	sw	a5,-48(s0)
	li	a5,68
	sh	a5,-44(s0)
	addi	a5,s0,-48
	mv	a0,a5
	call	func0
	mv	a5,a0
	lla	a1,.LC14
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,51
	lla	a1,.LC1
	lla	a0,.LC15
	call	__assert_fail@plt
.L18:
	li	a5,1667457024
	addi	a5,a5,803
	sw	a5,-56(s0)
	sb	zero,-52(s0)
	addi	a5,s0,-56
	mv	a0,a5
	call	func0
	mv	a5,a0
	lla	a1,.LC16
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L19
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,54
	lla	a1,.LC1
	lla	a0,.LC17
	call	__assert_fail@plt
.L19:
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
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
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
