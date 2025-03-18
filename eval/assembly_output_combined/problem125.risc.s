	.file	"problem125.c"
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
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	ld	a0,-72(s0)
	call	strlen@plt
	mv	a4,a0
	li	a5,10
	beq	a4,a5,.L2
	li	a5,0
	j	.L18
.L2:
	sw	zero,-64(s0)
	j	.L4
.L10:
	lw	a5,-64(s0)
	sext.w	a4,a5
	li	a5,2
	beq	a4,a5,.L5
	lw	a5,-64(s0)
	sext.w	a4,a5
	li	a5,5
	bne	a4,a5,.L6
.L5:
	lw	a5,-64(s0)
	ld	a4,-72(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,45
	beq	a4,a5,.L8
	li	a5,0
	j	.L18
.L6:
	lw	a5,-64(s0)
	ld	a4,-72(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,47
	bleu	a4,a5,.L9
	lw	a5,-64(s0)
	ld	a4,-72(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,57
	bleu	a4,a5,.L8
.L9:
	li	a5,0
	j	.L18
.L8:
	lw	a5,-64(s0)
	addiw	a5,a5,1
	sw	a5,-64(s0)
.L4:
	lw	a5,-64(s0)
	sext.w	a4,a5
	li	a5,9
	ble	a4,a5,.L10
	ld	a5,-72(s0)
	lbu	a5,0(a5)
	sb	a5,-48(s0)
	ld	a5,-72(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	sb	a5,-47(s0)
	sb	zero,-46(s0)
	ld	a5,-72(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	sb	a5,-40(s0)
	ld	a5,-72(s0)
	addi	a5,a5,4
	lbu	a5,0(a5)
	sb	a5,-39(s0)
	sb	zero,-38(s0)
	ld	a5,-72(s0)
	addi	a5,a5,6
	lbu	a5,0(a5)
	sb	a5,-32(s0)
	ld	a5,-72(s0)
	addi	a5,a5,7
	lbu	a5,0(a5)
	sb	a5,-31(s0)
	ld	a5,-72(s0)
	addi	a5,a5,8
	lbu	a5,0(a5)
	sb	a5,-30(s0)
	ld	a5,-72(s0)
	addi	a5,a5,9
	lbu	a5,0(a5)
	sb	a5,-29(s0)
	sb	zero,-28(s0)
	addi	a5,s0,-48
	mv	a0,a5
	call	atoi@plt
	mv	a5,a0
	sw	a5,-60(s0)
	addi	a5,s0,-40
	mv	a0,a5
	call	atoi@plt
	mv	a5,a0
	sw	a5,-56(s0)
	addi	a5,s0,-32
	mv	a0,a5
	call	atoi@plt
	mv	a5,a0
	sw	a5,-52(s0)
	lw	a5,-60(s0)
	sext.w	a5,a5
	ble	a5,zero,.L11
	lw	a5,-60(s0)
	sext.w	a4,a5
	li	a5,12
	ble	a4,a5,.L12
.L11:
	li	a5,0
	j	.L18
.L12:
	lw	a5,-56(s0)
	sext.w	a5,a5
	ble	a5,zero,.L13
	lw	a5,-56(s0)
	sext.w	a4,a5
	li	a5,31
	ble	a4,a5,.L14
.L13:
	li	a5,0
	j	.L18
.L14:
	lw	a5,-60(s0)
	sext.w	a4,a5
	li	a5,4
	beq	a4,a5,.L15
	lw	a5,-60(s0)
	sext.w	a4,a5
	li	a5,6
	beq	a4,a5,.L15
	lw	a5,-60(s0)
	sext.w	a4,a5
	li	a5,9
	beq	a4,a5,.L15
	lw	a5,-60(s0)
	sext.w	a4,a5
	li	a5,11
	bne	a4,a5,.L16
.L15:
	lw	a5,-56(s0)
	sext.w	a4,a5
	li	a5,31
	bne	a4,a5,.L16
	li	a5,0
	j	.L18
.L16:
	lw	a5,-60(s0)
	sext.w	a4,a5
	li	a5,2
	bne	a4,a5,.L17
	lw	a5,-56(s0)
	sext.w	a4,a5
	li	a5,29
	ble	a4,a5,.L17
	li	a5,0
	j	.L18
.L17:
	li	a5,1
.L18:
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L19
	call	__stack_chk_fail@plt
.L19:
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
.LC0:
	.string	"03-11-2000"
	.align	3
.LC1:
	.string	"problem125.c"
	.align	3
.LC2:
	.string	"func0(\"03-11-2000\") == 1"
	.align	3
.LC3:
	.string	"15-01-2012"
	.align	3
.LC4:
	.string	"func0(\"15-01-2012\") == 0"
	.align	3
.LC5:
	.string	"04-0-2040"
	.align	3
.LC6:
	.string	"func0(\"04-0-2040\") == 0"
	.align	3
.LC7:
	.string	"06-04-2020"
	.align	3
.LC8:
	.string	"func0(\"06-04-2020\") == 1"
	.align	3
.LC9:
	.string	"01-01-2007"
	.align	3
.LC10:
	.string	"func0(\"01-01-2007\") == 1"
	.align	3
.LC11:
	.string	"03-32-2011"
	.align	3
.LC12:
	.string	"func0(\"03-32-2011\") == 0"
	.align	3
.LC13:
	.string	""
	.align	3
.LC14:
	.string	"func0(\"\") == 0"
	.align	3
.LC15:
	.string	"04-31-3000"
	.align	3
.LC16:
	.string	"func0(\"04-31-3000\") == 0"
	.align	3
.LC17:
	.string	"06-06-2005"
	.align	3
.LC18:
	.string	"func0(\"06-06-2005\") == 1"
	.align	3
.LC19:
	.string	"21-31-2000"
	.align	3
.LC20:
	.string	"func0(\"21-31-2000\") == 0"
	.align	3
.LC21:
	.string	"04-12-2003"
	.align	3
.LC22:
	.string	"func0(\"04-12-2003\") == 1"
	.align	3
.LC23:
	.string	"04122003"
	.align	3
.LC24:
	.string	"func0(\"04122003\") == 0"
	.align	3
.LC25:
	.string	"20030412"
	.align	3
.LC26:
	.string	"func0(\"20030412\") == 0"
	.align	3
.LC27:
	.string	"2003-04"
	.align	3
.LC28:
	.string	"func0(\"2003-04\") == 0"
	.align	3
.LC29:
	.string	"2003-04-12"
	.align	3
.LC30:
	.string	"func0(\"2003-04-12\") == 0"
	.align	3
.LC31:
	.string	"04-2003"
	.align	3
.LC32:
	.string	"func0(\"04-2003\") == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB7:
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
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L21
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,38
	lla	a1,.LC1
	lla	a0,.LC2
	call	__assert_fail@plt
.L21:
	lla	a0,.LC3
	call	func0
	mv	a5,a0
	beq	a5,zero,.L22
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,39
	lla	a1,.LC1
	lla	a0,.LC4
	call	__assert_fail@plt
.L22:
	lla	a0,.LC5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L23
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,40
	lla	a1,.LC1
	lla	a0,.LC6
	call	__assert_fail@plt
.L23:
	lla	a0,.LC7
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L24
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,41
	lla	a1,.LC1
	lla	a0,.LC8
	call	__assert_fail@plt
.L24:
	lla	a0,.LC9
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L25
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,42
	lla	a1,.LC1
	lla	a0,.LC10
	call	__assert_fail@plt
.L25:
	lla	a0,.LC11
	call	func0
	mv	a5,a0
	beq	a5,zero,.L26
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,43
	lla	a1,.LC1
	lla	a0,.LC12
	call	__assert_fail@plt
.L26:
	lla	a0,.LC13
	call	func0
	mv	a5,a0
	beq	a5,zero,.L27
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,44
	lla	a1,.LC1
	lla	a0,.LC14
	call	__assert_fail@plt
.L27:
	lla	a0,.LC15
	call	func0
	mv	a5,a0
	beq	a5,zero,.L28
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,45
	lla	a1,.LC1
	lla	a0,.LC16
	call	__assert_fail@plt
.L28:
	lla	a0,.LC17
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L29
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,46
	lla	a1,.LC1
	lla	a0,.LC18
	call	__assert_fail@plt
.L29:
	lla	a0,.LC19
	call	func0
	mv	a5,a0
	beq	a5,zero,.L30
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,47
	lla	a1,.LC1
	lla	a0,.LC20
	call	__assert_fail@plt
.L30:
	lla	a0,.LC21
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L31
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,48
	lla	a1,.LC1
	lla	a0,.LC22
	call	__assert_fail@plt
.L31:
	lla	a0,.LC23
	call	func0
	mv	a5,a0
	beq	a5,zero,.L32
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,49
	lla	a1,.LC1
	lla	a0,.LC24
	call	__assert_fail@plt
.L32:
	lla	a0,.LC25
	call	func0
	mv	a5,a0
	beq	a5,zero,.L33
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,50
	lla	a1,.LC1
	lla	a0,.LC26
	call	__assert_fail@plt
.L33:
	lla	a0,.LC27
	call	func0
	mv	a5,a0
	beq	a5,zero,.L34
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,51
	lla	a1,.LC1
	lla	a0,.LC28
	call	__assert_fail@plt
.L34:
	lla	a0,.LC29
	call	func0
	mv	a5,a0
	beq	a5,zero,.L35
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,52
	lla	a1,.LC1
	lla	a0,.LC30
	call	__assert_fail@plt
.L35:
	lla	a0,.LC31
	call	func0
	mv	a5,a0
	beq	a5,zero,.L36
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,53
	lla	a1,.LC1
	lla	a0,.LC32
	call	__assert_fail@plt
.L36:
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
