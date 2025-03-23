	.file	"problem79.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"2357BD"
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
	sd	s1,40(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	lla	a5,.LC0
	sd	a5,-40(s0)
	sw	zero,-48(s0)
	sw	zero,-44(s0)
	j	.L2
.L4:
	lw	a5,-44(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a1,a5
	ld	a0,-40(s0)
	call	strchr@plt
	mv	a5,a0
	beq	a5,zero,.L3
	lw	a5,-48(s0)
	addiw	a5,a5,1
	sw	a5,-48(s0)
.L3:
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
.L2:
	lw	s1,-44(s0)
	ld	a0,-56(s0)
	call	strlen@plt
	mv	a5,a0
	bltu	s1,a5,.L4
	lw	a5,-48(s0)
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	ld	s1,40(sp)
	.cfi_restore 9
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC1:
	.string	"AB"
	.align	3
.LC2:
	.string	"problem79.c"
	.align	3
.LC3:
	.string	"func0(\"AB\") == 1"
	.align	3
.LC4:
	.string	"1077E"
	.align	3
.LC5:
	.string	"func0(\"1077E\") == 2"
	.align	3
.LC6:
	.string	"ABED1A33"
	.align	3
.LC7:
	.string	"func0(\"ABED1A33\") == 4"
	.align	3
.LC8:
	.string	"2020"
	.align	3
.LC9:
	.string	"func0(\"2020\") == 2"
	.align	3
.LC10:
	.string	"123456789ABCDEF0"
	.align	3
.LC11:
	.string	"func0(\"123456789ABCDEF0\") == 6"
	.align	3
.LC12:
	.string	"112233445566778899AABBCCDDEEFF00"
	.align	3
.LC13:
	.string	"func0(\"112233445566778899AABBCCDDEEFF00\") == 12"
	.align	3
.LC14:
	.string	""
	.align	3
.LC15:
	.string	"func0(\"\") == 0"
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
	lla	a0,.LC1
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L7
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,18
	lla	a1,.LC2
	lla	a0,.LC3
	call	__assert_fail@plt
.L7:
	lla	a0,.LC4
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,2
	beq	a4,a5,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,19
	lla	a1,.LC2
	lla	a0,.LC5
	call	__assert_fail@plt
.L8:
	lla	a0,.LC6
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,4
	beq	a4,a5,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,20
	lla	a1,.LC2
	lla	a0,.LC7
	call	__assert_fail@plt
.L9:
	lla	a0,.LC8
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,2
	beq	a4,a5,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,21
	lla	a1,.LC2
	lla	a0,.LC9
	call	__assert_fail@plt
.L10:
	lla	a0,.LC10
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,6
	beq	a4,a5,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,22
	lla	a1,.LC2
	lla	a0,.LC11
	call	__assert_fail@plt
.L11:
	lla	a0,.LC12
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,12
	beq	a4,a5,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,23
	lla	a1,.LC2
	lla	a0,.LC13
	call	__assert_fail@plt
.L12:
	lla	a0,.LC14
	call	func0
	mv	a5,a0
	beq	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,24
	lla	a1,.LC2
	lla	a0,.LC15
	call	__assert_fail@plt
.L13:
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
