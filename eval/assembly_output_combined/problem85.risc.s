	.file	"problem85.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-68(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lw	a4,-68(s0)
	addi	a5,s0,-32
	mv	a2,a4
	lla	a1,.LC0
	mv	a0,a5
	call	sprintf@plt
	sw	zero,-56(s0)
	sw	zero,-52(s0)
	j	.L2
.L3:
	lw	a5,-52(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-16(a5)
	sext.w	a5,a5
	addiw	a5,a5,-48
	sext.w	a5,a5
	lw	a4,-56(s0)
	addw	a5,a4,a5
	sw	a5,-56(s0)
	lw	a5,-52(s0)
	addiw	a5,a5,1
	sw	a5,-52(s0)
.L2:
	lw	a5,-52(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-16(a5)
	bne	a5,zero,.L3
	li	a0,33
	call	malloc@plt
	mv	a5,a0
	sd	a5,-40(s0)
	sw	zero,-48(s0)
	lw	a5,-56(s0)
	sext.w	a5,a5
	bne	a5,zero,.L6
	lw	a5,-48(s0)
	addiw	a4,a5,1
	sw	a4,-48(s0)
	mv	a4,a5
	ld	a5,-40(s0)
	add	a5,a5,a4
	li	a4,48
	sb	a4,0(a5)
	j	.L5
.L7:
	lw	a5,-56(s0)
	mv	a4,a5
	sraiw	a5,a4,31
	srliw	a5,a5,31
	addw	a4,a4,a5
	andi	a4,a4,1
	subw	a5,a4,a5
	sext.w	a5,a5
	andi	a4,a5,0xff
	lw	a5,-48(s0)
	addiw	a3,a5,1
	sw	a3,-48(s0)
	mv	a3,a5
	ld	a5,-40(s0)
	add	a5,a5,a3
	addiw	a4,a4,48
	andi	a4,a4,0xff
	sb	a4,0(a5)
	lw	a5,-56(s0)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sw	a5,-56(s0)
.L6:
	lw	a5,-56(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L7
.L5:
	lw	a5,-48(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	sb	zero,0(a5)
	sw	zero,-44(s0)
	j	.L8
.L9:
	lw	a5,-44(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-57(s0)
	lw	a5,-48(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	addi	a5,a5,-1
	ld	a4,-40(s0)
	add	a4,a4,a5
	lw	a5,-44(s0)
	ld	a3,-40(s0)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,-48(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	addi	a5,a5,-1
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a4,-57(s0)
	sb	a4,0(a5)
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
.L8:
	lw	a5,-48(s0)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sext.w	a4,a5
	lw	a5,-44(s0)
	sext.w	a5,a5
	blt	a5,a4,.L9
	ld	a5,-40(s0)
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L11
	call	__stack_chk_fail@plt
.L11:
	mv	a0,a4
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC1:
	.string	"1"
	.align	3
.LC2:
	.string	"problem85.c"
	.align	3
.LC3:
	.string	"strcmp(result, \"1\") == 0"
	.align	3
.LC4:
	.string	"110"
	.align	3
.LC5:
	.string	"strcmp(result, \"110\") == 0"
	.align	3
.LC6:
	.string	"1100"
	.align	3
.LC7:
	.string	"strcmp(result, \"1100\") == 0"
	.align	3
.LC8:
	.string	"1001"
	.align	3
.LC9:
	.string	"strcmp(result, \"1001\") == 0"
	.align	3
.LC10:
	.string	"10010"
	.align	3
.LC11:
	.string	"strcmp(result, \"10010\") == 0"
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
	li	a0,1000
	call	func0
	sd	a0,-24(s0)
	lla	a1,.LC1
	ld	a0,-24(s0)
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,42
	lla	a1,.LC2
	lla	a0,.LC3
	call	__assert_fail@plt
.L13:
	ld	a0,-24(s0)
	call	free@plt
	li	a0,150
	call	func0
	sd	a0,-24(s0)
	lla	a1,.LC4
	ld	a0,-24(s0)
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,46
	lla	a1,.LC2
	lla	a0,.LC5
	call	__assert_fail@plt
.L14:
	ld	a0,-24(s0)
	call	free@plt
	li	a0,147
	call	func0
	sd	a0,-24(s0)
	lla	a1,.LC6
	ld	a0,-24(s0)
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,50
	lla	a1,.LC2
	lla	a0,.LC7
	call	__assert_fail@plt
.L15:
	ld	a0,-24(s0)
	call	free@plt
	li	a0,333
	call	func0
	sd	a0,-24(s0)
	lla	a1,.LC8
	ld	a0,-24(s0)
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,54
	lla	a1,.LC2
	lla	a0,.LC9
	call	__assert_fail@plt
.L16:
	ld	a0,-24(s0)
	call	free@plt
	li	a0,963
	call	func0
	sd	a0,-24(s0)
	lla	a1,.LC10
	ld	a0,-24(s0)
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,58
	lla	a1,.LC2
	lla	a0,.LC11
	call	__assert_fail@plt
.L17:
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
