	.file	"problem135.c"
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
	ld	a0,-40(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	sext.w	a5,a5
	bne	a5,zero,.L2
	li	a5,0
	j	.L3
.L2:
	lw	a5,-20(s0)
	addi	a5,a5,-1
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-22(s0)
	call	__ctype_b_loc@plt
	mv	a5,a0
	ld	a4,0(a5)
	lbu	a5,-22(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,1024
	sext.w	a5,a5
	bne	a5,zero,.L4
	li	a5,0
	j	.L3
.L4:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,1
	bne	a4,a5,.L5
	li	a5,1
	j	.L3
.L5:
	lw	a5,-20(s0)
	addi	a5,a5,-2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-21(s0)
	call	__ctype_b_loc@plt
	mv	a5,a0
	ld	a4,0(a5)
	lbu	a5,-21(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,1024
	sext.w	a5,a5
	beq	a5,zero,.L6
	li	a5,0
	j	.L3
.L6:
	li	a5,1
.L3:
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
	.string	"apple"
	.align	3
.LC1:
	.string	"problem135.c"
	.align	3
.LC2:
	.string	"func0(\"apple\") == 0"
	.align	3
.LC3:
	.string	"apple pi e"
	.align	3
.LC4:
	.string	"func0(\"apple pi e\") == 1"
	.align	3
.LC5:
	.string	"eeeee"
	.align	3
.LC6:
	.string	"func0(\"eeeee\") == 0"
	.align	3
.LC7:
	.string	"A"
	.align	3
.LC8:
	.string	"func0(\"A\") == 1"
	.align	3
.LC9:
	.string	"Pumpkin pie "
	.align	3
.LC10:
	.string	"func0(\"Pumpkin pie \") == 0"
	.align	3
.LC11:
	.string	"Pumpkin pie 1"
	.align	3
.LC12:
	.string	"func0(\"Pumpkin pie 1\") == 0"
	.align	3
.LC13:
	.string	""
	.align	3
.LC14:
	.string	"func0(\"\") == 0"
	.align	3
.LC15:
	.string	"eeeee e "
	.align	3
.LC16:
	.string	"func0(\"eeeee e \") == 0"
	.align	3
.LC17:
	.string	"apple pie"
	.align	3
.LC18:
	.string	"func0(\"apple pie\") == 0"
	.align	3
.LC19:
	.string	"apple pi e "
	.align	3
.LC20:
	.string	"func0(\"apple pi e \") == 0"
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
	beq	a5,zero,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,21
	lla	a1,.LC1
	lla	a0,.LC2
	call	__assert_fail@plt
.L8:
	lla	a0,.LC3
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,22
	lla	a1,.LC1
	lla	a0,.LC4
	call	__assert_fail@plt
.L9:
	lla	a0,.LC5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,23
	lla	a1,.LC1
	lla	a0,.LC6
	call	__assert_fail@plt
.L10:
	lla	a0,.LC7
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,24
	lla	a1,.LC1
	lla	a0,.LC8
	call	__assert_fail@plt
.L11:
	lla	a0,.LC9
	call	func0
	mv	a5,a0
	beq	a5,zero,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,25
	lla	a1,.LC1
	lla	a0,.LC10
	call	__assert_fail@plt
.L12:
	lla	a0,.LC11
	call	func0
	mv	a5,a0
	beq	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,26
	lla	a1,.LC1
	lla	a0,.LC12
	call	__assert_fail@plt
.L13:
	lla	a0,.LC13
	call	func0
	mv	a5,a0
	beq	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,27
	lla	a1,.LC1
	lla	a0,.LC14
	call	__assert_fail@plt
.L14:
	lla	a0,.LC15
	call	func0
	mv	a5,a0
	beq	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,28
	lla	a1,.LC1
	lla	a0,.LC16
	call	__assert_fail@plt
.L15:
	lla	a0,.LC17
	call	func0
	mv	a5,a0
	beq	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,29
	lla	a1,.LC1
	lla	a0,.LC18
	call	__assert_fail@plt
.L16:
	lla	a0,.LC19
	call	func0
	mv	a5,a0
	beq	a5,zero,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,30
	lla	a1,.LC1
	lla	a0,.LC20
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
