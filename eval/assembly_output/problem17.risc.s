	.file	"problem17.c"
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
	addi	sp,sp,-1088
	.cfi_def_cfa_offset 1088
	sd	ra,1080(sp)
	sd	s0,1072(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,1088
	.cfi_def_cfa 8, 0
	sd	a0,-1080(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	sw	zero,-1056(s0)
	addi	a5,s0,-1048
	li	a4,1024
	mv	a2,a4
	li	a1,0
	mv	a0,a5
	call	memset@plt
	sw	zero,-1052(s0)
	j	.L2
.L4:
	lw	a5,-1052(s0)
	ld	a4,-1080(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a0,a5
	call	tolower@plt
	mv	a5,a0
	sb	a5,-1057(s0)
	lbu	a5,-1057(s0)
	sext.w	a5,a5
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1032(a5)
	bne	a5,zero,.L3
	call	__ctype_b_loc@plt
	mv	a5,a0
	ld	a4,0(a5)
	lbu	a5,-1057(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,1024
	sext.w	a5,a5
	beq	a5,zero,.L3
	lbu	a5,-1057(s0)
	sext.w	a5,a5
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a4,1
	sw	a4,-1032(a5)
	lw	a5,-1056(s0)
	addiw	a5,a5,1
	sw	a5,-1056(s0)
.L3:
	lw	a5,-1052(s0)
	addiw	a5,a5,1
	sw	a5,-1052(s0)
.L2:
	lw	a5,-1052(s0)
	ld	a4,-1080(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L4
	lw	a5,-1056(s0)
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L6
	call	__stack_chk_fail@plt
.L6:
	mv	a0,a4
	ld	ra,1080(sp)
	.cfi_restore 1
	ld	s0,1072(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 1088
	addi	sp,sp,1088
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	""
	.align	3
.LC1:
	.string	"problem17.c"
	.align	3
.LC2:
	.string	"func0(\"\") == 0"
	.align	3
.LC3:
	.string	"abcde"
	.align	3
.LC4:
	.string	"func0(\"abcde\") == 5"
	.align	3
.LC5:
	.string	"abcdecadeCADE"
	.align	3
.LC6:
	.string	"func0(\"abcdecadeCADE\") == 5"
	.align	3
.LC7:
	.string	"aaaaAAAAaaaa"
	.align	3
.LC8:
	.string	"func0(\"aaaaAAAAaaaa\") == 1"
	.align	3
.LC9:
	.string	"Jerry jERRY JeRRRY"
	.align	3
.LC10:
	.string	"func0(\"Jerry jERRY JeRRRY\") == 4"
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
	li	a2,26
	lla	a1,.LC1
	lla	a0,.LC2
	call	__assert_fail@plt
.L8:
	lla	a0,.LC3
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,5
	beq	a4,a5,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,27
	lla	a1,.LC1
	lla	a0,.LC4
	call	__assert_fail@plt
.L9:
	lla	a0,.LC5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,5
	beq	a4,a5,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,28
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
	li	a2,29
	lla	a1,.LC1
	lla	a0,.LC8
	call	__assert_fail@plt
.L11:
	lla	a0,.LC9
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,4
	beq	a4,a5,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,30
	lla	a1,.LC1
	lla	a0,.LC10
	call	__assert_fail@plt
.L12:
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
