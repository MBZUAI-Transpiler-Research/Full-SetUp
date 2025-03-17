	.file	"problem143.c"
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
	sd	a0,-40(s0)
	mv	a5,a1
	sw	a5,-44(s0)
	sw	zero,-24(s0)
	sw	zero,-20(s0)
	j	.L2
.L6:
	lw	a5,-20(s0)
	mv	a4,a5
	li	a5,3
	remw	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L3
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a3,-40(s0)
	add	a5,a3,a5
	lw	a5,0(a5)
	mulw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-24(s0)
	addw	a5,a4,a5
	sw	a5,-24(s0)
	j	.L4
.L3:
	lw	a5,-20(s0)
	andi	a5,a5,3
	sext.w	a5,a5
	bne	a5,zero,.L5
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a3,-40(s0)
	add	a5,a3,a5
	lw	a5,0(a5)
	mulw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a3,-40(s0)
	add	a5,a3,a5
	lw	a5,0(a5)
	mulw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-24(s0)
	addw	a5,a4,a5
	sw	a5,-24(s0)
	j	.L4
.L5:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-24(s0)
	addw	a5,a4,a5
	sw	a5,-24(s0)
.L4:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L6
	lw	a5,-24(s0)
	mv	a0,a5
	ld	s0,40(sp)
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
.LC7:
	.string	"problem143.c"
	.align	3
.LC8:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == 6"
	.align	3
.LC9:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == 14"
	.align	3
.LC10:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == 0"
	.align	3
.LC11:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == 9"
	.align	3
.LC12:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == -3"
	.align	3
.LC13:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == -126"
	.align	3
.LC14:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == 3030"
	.align	3
.LC15:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == -14196"
	.align	3
.LC16:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == -1448"
	.align	3
.LC0:
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.align	3
.LC1:
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.align	3
.LC2:
	.word	-1
	.word	-5
	.word	2
	.word	-1
	.word	-5
	.align	3
.LC3:
	.word	-56
	.word	-99
	.word	1
	.word	0
	.word	-2
	.align	3
.LC4:
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.align	3
.LC5:
	.word	-16
	.word	-9
	.word	-2
	.word	36
	.word	36
	.word	26
	.word	-20
	.word	25
	.word	-40
	.word	20
	.word	-4
	.word	12
	.word	-26
	.word	35
	.word	37
	.align	3
.LC6:
	.word	-1
	.word	-3
	.word	17
	.word	-1
	.word	-15
	.word	13
	.word	-1
	.word	14
	.word	-14
	.word	-12
	.word	-5
	.word	14
	.word	-14
	.word	6
	.word	13
	.word	11
	.word	16
	.word	16
	.word	4
	.word	10
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
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
	li	a5,1
	sw	a5,-104(s0)
	li	a5,2
	sw	a5,-100(s0)
	li	a5,3
	sw	a5,-96(s0)
	addi	a5,s0,-104
	li	a1,3
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,6
	beq	a4,a5,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,20
	lla	a1,.LC7
	lla	a0,.LC8
	call	__assert_fail@plt
.L9:
	li	a5,1
	sw	a5,-104(s0)
	li	a5,4
	sw	a5,-100(s0)
	li	a5,9
	sw	a5,-96(s0)
	addi	a5,s0,-104
	li	a1,3
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,14
	beq	a4,a5,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,24
	lla	a1,.LC7
	lla	a0,.LC9
	call	__assert_fail@plt
.L10:
	addi	a5,s0,-104
	li	a1,0
	mv	a0,a5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,28
	lla	a1,.LC7
	lla	a0,.LC10
	call	__assert_fail@plt
.L11:
	lla	a5,.LC0
	ld	a1,0(a5)
	ld	a2,8(a5)
	ld	a3,16(a5)
	ld	a4,24(a5)
	sd	a1,-104(s0)
	sd	a2,-96(s0)
	sd	a3,-88(s0)
	sd	a4,-80(s0)
	lw	a5,32(a5)
	sw	a5,-72(s0)
	addi	a5,s0,-104
	li	a1,9
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,9
	beq	a4,a5,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,32
	lla	a1,.LC7
	lla	a0,.LC11
	call	__assert_fail@plt
.L12:
	lla	a5,.LC1
	ld	a1,0(a5)
	ld	a2,8(a5)
	ld	a3,16(a5)
	ld	a4,24(a5)
	sd	a1,-104(s0)
	sd	a2,-96(s0)
	sd	a3,-88(s0)
	sd	a4,-80(s0)
	lw	a5,32(a5)
	sw	a5,-72(s0)
	addi	a5,s0,-104
	li	a1,9
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,-3
	beq	a4,a5,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,36
	lla	a1,.LC7
	lla	a0,.LC12
	call	__assert_fail@plt
.L13:
	sw	zero,-104(s0)
	addi	a5,s0,-104
	li	a1,1
	mv	a0,a5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,40
	lla	a1,.LC7
	lla	a0,.LC10
	call	__assert_fail@plt
.L14:
	lla	a5,.LC2
	ld	a4,0(a5)
	sd	a4,-104(s0)
	ld	a4,8(a5)
	sd	a4,-96(s0)
	lw	a5,16(a5)
	sw	a5,-88(s0)
	addi	a5,s0,-104
	li	a1,5
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,-126
	beq	a4,a5,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,44
	lla	a1,.LC7
	lla	a0,.LC13
	call	__assert_fail@plt
.L15:
	lla	a5,.LC3
	ld	a4,0(a5)
	sd	a4,-104(s0)
	ld	a4,8(a5)
	sd	a4,-96(s0)
	lw	a5,16(a5)
	sw	a5,-88(s0)
	addi	a5,s0,-104
	li	a1,5
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,4096
	addi	a5,a5,-1066
	beq	a4,a5,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,48
	lla	a1,.LC7
	lla	a0,.LC14
	call	__assert_fail@plt
.L16:
	lla	a5,.LC4
	ld	a1,0(a5)
	ld	a2,8(a5)
	ld	a3,16(a5)
	ld	a4,24(a5)
	sd	a1,-104(s0)
	sd	a2,-96(s0)
	sd	a3,-88(s0)
	sd	a4,-80(s0)
	lw	a5,32(a5)
	sw	a5,-72(s0)
	addi	a5,s0,-104
	li	a1,9
	mv	a0,a5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,52
	lla	a1,.LC7
	lla	a0,.LC10
	call	__assert_fail@plt
.L17:
	lla	a5,.LC5
	ld	a7,0(a5)
	ld	a6,8(a5)
	ld	a0,16(a5)
	ld	a1,24(a5)
	ld	a2,32(a5)
	ld	a3,40(a5)
	ld	a4,48(a5)
	sd	a7,-104(s0)
	sd	a6,-96(s0)
	sd	a0,-88(s0)
	sd	a1,-80(s0)
	sd	a2,-72(s0)
	sd	a3,-64(s0)
	sd	a4,-56(s0)
	lw	a5,56(a5)
	sw	a5,-48(s0)
	addi	a5,s0,-104
	li	a1,15
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,-12288
	addi	a5,a5,-1908
	beq	a4,a5,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,56
	lla	a1,.LC7
	lla	a0,.LC15
	call	__assert_fail@plt
.L18:
	lla	a5,.LC6
	ld	t3,0(a5)
	ld	t1,8(a5)
	ld	a7,16(a5)
	ld	a6,24(a5)
	ld	a0,32(a5)
	ld	a1,40(a5)
	ld	a2,48(a5)
	ld	a3,56(a5)
	ld	a4,64(a5)
	ld	a5,72(a5)
	sd	t3,-104(s0)
	sd	t1,-96(s0)
	sd	a7,-88(s0)
	sd	a6,-80(s0)
	sd	a0,-72(s0)
	sd	a1,-64(s0)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	sd	a5,-32(s0)
	addi	a5,s0,-104
	li	a1,20
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,-1448
	beq	a4,a5,.L19
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,60
	lla	a1,.LC7
	lla	a0,.LC16
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
	ld	ra,104(sp)
	.cfi_restore 1
	ld	s0,96(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	addi	sp,sp,112
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
