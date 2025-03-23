	.file	"problem83.c"
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
	sext.w	a4,a5
	li	a5,1
	bgt	a4,a5,.L2
	li	a5,0
	j	.L3
.L2:
	li	a5,2
	sw	a5,-24(s0)
	j	.L4
.L6:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	remw	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L5
	li	a5,0
	j	.L3
.L5:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L4:
	lw	a5,-24(s0)
	mulw	a5,a5,a5
	sext.w	a4,a5
	lw	a5,-20(s0)
	sext.w	a5,a5
	bge	a5,a4,.L6
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
	.string	"Hello"
	.align	3
.LC1:
	.string	"problem83.c"
	.align	3
.LC2:
	.string	"func0(\"Hello\") == true"
	.align	3
.LC3:
	.string	"abcdcba"
	.align	3
.LC4:
	.string	"func0(\"abcdcba\") == true"
	.align	3
.LC5:
	.string	"kittens"
	.align	3
.LC6:
	.string	"func0(\"kittens\") == true"
	.align	3
.LC7:
	.string	"orange"
	.align	3
.LC8:
	.string	"func0(\"orange\") == false"
	.align	3
.LC9:
	.string	"wow"
	.align	3
.LC10:
	.string	"func0(\"wow\") == true"
	.align	3
.LC11:
	.string	"world"
	.align	3
.LC12:
	.string	"func0(\"world\") == true"
	.align	3
.LC13:
	.string	"MadaM"
	.align	3
.LC14:
	.string	"func0(\"MadaM\") == true"
	.align	3
.LC15:
	.string	"Wow"
	.align	3
.LC16:
	.string	"func0(\"Wow\") == true"
	.align	3
.LC17:
	.string	""
	.align	3
.LC18:
	.string	"func0(\"\") == false"
	.align	3
.LC19:
	.string	"HI"
	.align	3
.LC20:
	.string	"func0(\"HI\") == true"
	.align	3
.LC21:
	.string	"go"
	.align	3
.LC22:
	.string	"func0(\"go\") == true"
	.align	3
.LC23:
	.string	"gogo"
	.align	3
.LC24:
	.string	"func0(\"gogo\") == false"
	.align	3
.LC25:
	.string	"aaaaaaaaaaaaaaa"
	.align	3
.LC26:
	.string	"func0(\"aaaaaaaaaaaaaaa\") == false"
	.align	3
.LC27:
	.string	"Madam"
	.align	3
.LC28:
	.string	"func0(\"Madam\") == true"
	.align	3
.LC29:
	.string	"M"
	.align	3
.LC30:
	.string	"func0(\"M\") == false"
	.align	3
.LC31:
	.string	"0"
	.align	3
.LC32:
	.string	"func0(\"0\") == false"
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
	bne	a5,zero,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,20
	lla	a1,.LC1
	lla	a0,.LC2
	call	__assert_fail@plt
.L8:
	lla	a0,.LC3
	call	func0
	mv	a5,a0
	bne	a5,zero,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,21
	lla	a1,.LC1
	lla	a0,.LC4
	call	__assert_fail@plt
.L9:
	lla	a0,.LC5
	call	func0
	mv	a5,a0
	bne	a5,zero,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,22
	lla	a1,.LC1
	lla	a0,.LC6
	call	__assert_fail@plt
.L10:
	lla	a0,.LC7
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,23
	lla	a1,.LC1
	lla	a0,.LC8
	call	__assert_fail@plt
.L11:
	lla	a0,.LC9
	call	func0
	mv	a5,a0
	bne	a5,zero,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,24
	lla	a1,.LC1
	lla	a0,.LC10
	call	__assert_fail@plt
.L12:
	lla	a0,.LC11
	call	func0
	mv	a5,a0
	bne	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,25
	lla	a1,.LC1
	lla	a0,.LC12
	call	__assert_fail@plt
.L13:
	lla	a0,.LC13
	call	func0
	mv	a5,a0
	bne	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,26
	lla	a1,.LC1
	lla	a0,.LC14
	call	__assert_fail@plt
.L14:
	lla	a0,.LC15
	call	func0
	mv	a5,a0
	bne	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,27
	lla	a1,.LC1
	lla	a0,.LC16
	call	__assert_fail@plt
.L15:
	lla	a0,.LC17
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,28
	lla	a1,.LC1
	lla	a0,.LC18
	call	__assert_fail@plt
.L16:
	lla	a0,.LC19
	call	func0
	mv	a5,a0
	bne	a5,zero,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,29
	lla	a1,.LC1
	lla	a0,.LC20
	call	__assert_fail@plt
.L17:
	lla	a0,.LC21
	call	func0
	mv	a5,a0
	bne	a5,zero,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,30
	lla	a1,.LC1
	lla	a0,.LC22
	call	__assert_fail@plt
.L18:
	lla	a0,.LC23
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L19
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,31
	lla	a1,.LC1
	lla	a0,.LC24
	call	__assert_fail@plt
.L19:
	lla	a0,.LC25
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L20
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,32
	lla	a1,.LC1
	lla	a0,.LC26
	call	__assert_fail@plt
.L20:
	lla	a0,.LC27
	call	func0
	mv	a5,a0
	bne	a5,zero,.L21
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,33
	lla	a1,.LC1
	lla	a0,.LC28
	call	__assert_fail@plt
.L21:
	lla	a0,.LC29
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L22
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,34
	lla	a1,.LC1
	lla	a0,.LC30
	call	__assert_fail@plt
.L22:
	lla	a0,.LC31
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L23
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,35
	lla	a1,.LC1
	lla	a0,.LC32
	call	__assert_fail@plt
.L23:
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
