	.file	"problem52.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"AEIOUaeiou"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
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
	lla	a5,.LC0
	sd	a5,-24(s0)
	ld	a5,-40(s0)
	sd	a5,-32(s0)
	j	.L2
.L4:
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a1,a5
	ld	a0,-24(s0)
	call	strchr@plt
	mv	a5,a0
	bne	a5,zero,.L3
	ld	a5,-32(s0)
	addi	a4,a5,1
	sd	a4,-32(s0)
	ld	a4,-40(s0)
	lbu	a4,0(a4)
	sb	a4,0(a5)
.L3:
	ld	a5,-40(s0)
	addi	a5,a5,1
	sd	a5,-40(s0)
.L2:
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L4
	ld	a5,-32(s0)
	sb	zero,0(a5)
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
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC1:
	.string	"problem52.c"
	.align	3
.LC2:
	.string	"strcmp(test1, \"\") == 0"
	.align	3
.LC4:
	.string	"bcdf\nghjklm"
	.align	3
.LC5:
	.string	"strcmp(test2, \"bcdf\\nghjklm\") == 0"
	.align	3
.LC6:
	.string	"fdcb"
	.align	3
.LC7:
	.string	"strcmp(test3, \"fdcb\") == 0"
	.align	3
.LC8:
	.string	"strcmp(test4, \"\") == 0"
	.align	3
.LC9:
	.string	"cB"
	.align	3
.LC10:
	.string	"strcmp(test5, \"cB\") == 0"
	.align	3
.LC11:
	.string	"strcmp(test6, \"cB\") == 0"
	.align	3
.LC12:
	.string	"ybcd"
	.align	3
.LC13:
	.string	"strcmp(test7, \"ybcd\") == 0"
	.align	3
.LC3:
	.string	"abcdef\nghijklm"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB7:
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
	sb	zero,-88(s0)
	addi	a5,s0,-88
	mv	a0,a5
	call	func0
	lbu	a5,-88(s0)
	sext.w	a5,a5
	beq	a5,zero,.L6
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,26
	lla	a1,.LC1
	lla	a0,.LC2
	call	__assert_fail@plt
.L6:
	lla	a5,.LC3
	ld	a4,0(a5)
	sd	a4,-40(s0)
	lw	a4,8(a5)
	sw	a4,-32(s0)
	lhu	a4,12(a5)
	sh	a4,-28(s0)
	lbu	a5,14(a5)
	sb	a5,-26(s0)
	addi	a5,s0,-40
	mv	a0,a5
	call	func0
	addi	a5,s0,-40
	lla	a1,.LC4
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L7
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,30
	lla	a1,.LC1
	lla	a0,.LC5
	call	__assert_fail@plt
.L7:
	li	a5,1667522560
	addi	a5,a5,1382
	sw	a5,-48(s0)
	li	a5,24576
	addi	a5,a5,354
	sh	a5,-44(s0)
	sb	zero,-42(s0)
	addi	a5,s0,-48
	mv	a0,a5
	call	func0
	addi	a5,s0,-48
	lla	a1,.LC6
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,34
	lla	a1,.LC1
	lla	a0,.LC7
	call	__assert_fail@plt
.L8:
	li	a5,1701142528
	addi	a5,a5,1381
	sw	a5,-72(s0)
	li	a5,101
	sh	a5,-68(s0)
	addi	a5,s0,-72
	mv	a0,a5
	call	func0
	lbu	a5,-72(s0)
	sext.w	a5,a5
	beq	a5,zero,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,38
	lla	a1,.LC1
	lla	a0,.LC8
	call	__assert_fail@plt
.L9:
	li	a5,1094868992
	addi	a5,a5,865
	sw	a5,-64(s0)
	li	a5,65
	sh	a5,-60(s0)
	addi	a5,s0,-64
	mv	a0,a5
	call	func0
	addi	a5,s0,-64
	lla	a1,.LC9
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,42
	lla	a1,.LC1
	lla	a0,.LC10
	call	__assert_fail@plt
.L10:
	li	a5,1329750016
	addi	a5,a5,837
	sw	a5,-56(s0)
	li	a5,79
	sh	a5,-52(s0)
	addi	a5,s0,-56
	mv	a0,a5
	call	func0
	addi	a5,s0,-56
	lla	a1,.LC9
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,46
	lla	a1,.LC1
	lla	a0,.LC11
	call	__assert_fail@plt
.L11:
	li	a5,1684234240
	addi	a5,a5,633
	sw	a5,-80(s0)
	sb	zero,-76(s0)
	addi	a5,s0,-80
	mv	a0,a5
	call	func0
	addi	a5,s0,-80
	lla	a1,.LC12
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,50
	lla	a1,.LC1
	lla	a0,.LC13
	call	__assert_fail@plt
.L12:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L14
	call	__stack_chk_fail@plt
.L14:
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
