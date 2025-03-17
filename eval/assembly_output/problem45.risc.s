	.file	"problem45.c"
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
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sd	a2,-96(s0)
	sw	a5,-84(s0)
	mv	a5,a4
	sw	a5,-88(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	sw	zero,-72(s0)
	j	.L2
.L3:
	lw	a5,-84(s0)
	mv	a4,a5
	lw	a5,-88(s0)
	remw	a5,a4,a5
	sext.w	a5,a5
	andi	a4,a5,0xff
	lw	a5,-72(s0)
	addiw	a3,a5,1
	sw	a3,-72(s0)
	addiw	a4,a4,48
	andi	a4,a4,0xff
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-48(a5)
	lw	a5,-84(s0)
	mv	a4,a5
	lw	a5,-88(s0)
	divw	a5,a4,a5
	sw	a5,-84(s0)
.L2:
	lw	a5,-84(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L3
	sw	zero,-68(s0)
	j	.L4
.L5:
	lw	a5,-72(s0)
	addiw	a5,a5,-1
	sw	a5,-72(s0)
	lw	a5,-68(s0)
	addiw	a4,a5,1
	sw	a4,-68(s0)
	mv	a4,a5
	ld	a5,-96(s0)
	add	a5,a5,a4
	lw	a4,-72(s0)
	addi	a4,a4,-16
	add	a4,a4,s0
	lbu	a4,-48(a4)
	sb	a4,0(a5)
.L4:
	lw	a5,-72(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L5
	lw	a5,-68(s0)
	ld	a4,-96(s0)
	add	a5,a4,a5
	sb	zero,0(a5)
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L6
	call	__stack_chk_fail@plt
.L6:
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"22"
	.align	3
.LC1:
	.string	"problem45.c"
	.align	3
.LC2:
	.string	"strcmp(buffer, \"22\") == 0"
	.align	3
.LC3:
	.string	"100"
	.align	3
.LC4:
	.string	"strcmp(buffer, \"100\") == 0"
	.align	3
.LC5:
	.string	"11101010"
	.align	3
.LC6:
	.string	"strcmp(buffer, \"11101010\") == 0"
	.align	3
.LC7:
	.string	"10000"
	.align	3
.LC8:
	.string	"strcmp(buffer, \"10000\") == 0"
	.align	3
.LC9:
	.string	"1000"
	.align	3
.LC10:
	.string	"strcmp(buffer, \"1000\") == 0"
	.align	3
.LC11:
	.string	"111"
	.align	3
.LC12:
	.string	"strcmp(buffer, \"111\") == 0"
	.align	3
.LC13:
	.string	"%d"
	.align	3
.LC14:
	.string	"strcmp(buffer, expected) == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sd	ra,104(sp)
	sd	s0,96(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	addi	a5,s0,-104
	mv	a2,a5
	li	a1,3
	li	a0,8
	call	func0
	addi	a5,s0,-104
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,29
	lla	a1,.LC1
	lla	a0,.LC2
	call	__assert_fail@plt
.L8:
	addi	a5,s0,-104
	mv	a2,a5
	li	a1,3
	li	a0,9
	call	func0
	addi	a5,s0,-104
	lla	a1,.LC3
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,32
	lla	a1,.LC1
	lla	a0,.LC4
	call	__assert_fail@plt
.L9:
	addi	a5,s0,-104
	mv	a2,a5
	li	a1,2
	li	a0,234
	call	func0
	addi	a5,s0,-104
	lla	a1,.LC5
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,35
	lla	a1,.LC1
	lla	a0,.LC6
	call	__assert_fail@plt
.L10:
	addi	a5,s0,-104
	mv	a2,a5
	li	a1,2
	li	a0,16
	call	func0
	addi	a5,s0,-104
	lla	a1,.LC7
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,38
	lla	a1,.LC1
	lla	a0,.LC8
	call	__assert_fail@plt
.L11:
	addi	a5,s0,-104
	mv	a2,a5
	li	a1,2
	li	a0,8
	call	func0
	addi	a5,s0,-104
	lla	a1,.LC9
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,41
	lla	a1,.LC1
	lla	a0,.LC10
	call	__assert_fail@plt
.L12:
	addi	a5,s0,-104
	mv	a2,a5
	li	a1,2
	li	a0,7
	call	func0
	addi	a5,s0,-104
	lla	a1,.LC11
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,44
	lla	a1,.LC1
	lla	a0,.LC12
	call	__assert_fail@plt
.L13:
	li	a5,2
	sw	a5,-108(s0)
	j	.L14
.L16:
	lw	a4,-108(s0)
	addi	a5,s0,-64
	mv	a2,a4
	lla	a1,.LC13
	mv	a0,a5
	call	sprintf@plt
	lw	a5,-108(s0)
	addiw	a5,a5,1
	sext.w	a4,a5
	addi	a3,s0,-104
	lw	a5,-108(s0)
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	func0
	addi	a4,s0,-64
	addi	a5,s0,-104
	mv	a1,a4
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,50
	lla	a1,.LC1
	lla	a0,.LC14
	call	__assert_fail@plt
.L15:
	lw	a5,-108(s0)
	addiw	a5,a5,1
	sw	a5,-108(s0)
.L14:
	lw	a5,-108(s0)
	sext.w	a4,a5
	li	a5,7
	ble	a4,a5,.L16
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
	ld	ra,104(sp)
	.cfi_restore 1
	ld	s0,96(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	addi	sp,sp,112
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
