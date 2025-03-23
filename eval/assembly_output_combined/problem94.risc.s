	.file	"problem94.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"aeiouAEIOU"
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
	sd	a1,-64(s0)
	lla	a5,.LC0
	sd	a5,-24(s0)
	sw	zero,-32(s0)
	j	.L2
.L10:
	lw	a5,-32(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-33(s0)
	call	__ctype_b_loc@plt
	mv	a5,a0
	ld	a4,0(a5)
	lbu	a5,-33(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,512
	sext.w	a5,a5
	beq	a5,zero,.L3
	lbu	a5,-33(s0)
	sext.w	a5,a5
	mv	a0,a5
	call	toupper@plt
	mv	a5,a0
	sb	a5,-33(s0)
	j	.L4
.L3:
	call	__ctype_b_loc@plt
	mv	a5,a0
	ld	a4,0(a5)
	lbu	a5,-33(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,256
	sext.w	a5,a5
	beq	a5,zero,.L4
	lbu	a5,-33(s0)
	sext.w	a5,a5
	mv	a0,a5
	call	tolower@plt
	mv	a5,a0
	sb	a5,-33(s0)
.L4:
	sw	zero,-28(s0)
	j	.L5
.L9:
	lw	a5,-28(s0)
	ld	a4,-24(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	lbu	a5,-33(s0)
	andi	a5,a5,0xff
	bne	a5,a4,.L6
	lw	a5,-28(s0)
	sext.w	a4,a5
	li	a5,9
	bgt	a4,a5,.L11
	lbu	a5,-33(s0)
	addiw	a5,a5,2
	sb	a5,-33(s0)
	j	.L11
.L6:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L5:
	lw	a5,-28(s0)
	ld	a4,-24(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L9
	j	.L8
.L11:
	nop
.L8:
	lw	a5,-32(s0)
	ld	a4,-64(s0)
	add	a5,a4,a5
	lbu	a4,-33(s0)
	sb	a4,0(a5)
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L2:
	lw	a5,-32(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L10
	lw	a5,-32(s0)
	ld	a4,-64(s0)
	add	a5,a4,a5
	sb	zero,0(a5)
	nop
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
.LC1:
	.string	"TEST"
	.align	3
.LC2:
	.string	"tgst"
	.align	3
.LC3:
	.string	"problem94.c"
	.align	3
.LC4:
	.string	"strcmp(output, \"tgst\") == 0"
	.align	3
.LC5:
	.string	"Mudasir"
	.align	3
.LC6:
	.string	"mWDCSKR"
	.align	3
.LC7:
	.string	"strcmp(output, \"mWDCSKR\") == 0"
	.align	3
.LC8:
	.string	"YES"
	.align	3
.LC9:
	.string	"ygs"
	.align	3
.LC10:
	.string	"strcmp(output, \"ygs\") == 0"
	.align	3
.LC11:
	.string	"This is a message"
	.align	3
.LC12:
	.string	"tHKS KS C MGSSCGG"
	.align	3
.LC13:
	.string	"strcmp(output, \"tHKS KS C MGSSCGG\") == 0"
	.align	3
.LC14:
	.string	"I DoNt KnOw WhAt tO WrItE"
	.align	3
.LC15:
	.string	"k dQnT kNqW wHcT Tq wRkTg"
	.align	3
.LC16:
	.string	"strcmp(output, \"k dQnT kNqW wHcT Tq wRkTg\") == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sd	ra,120(sp)
	sd	s0,112(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	addi	a5,s0,-128
	mv	a1,a5
	lla	a0,.LC1
	call	func0
	addi	a5,s0,-128
	lla	a1,.LC2
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,39
	lla	a1,.LC3
	lla	a0,.LC4
	call	__assert_fail@plt
.L13:
	addi	a5,s0,-128
	mv	a1,a5
	lla	a0,.LC5
	call	func0
	addi	a5,s0,-128
	lla	a1,.LC6
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,42
	lla	a1,.LC3
	lla	a0,.LC7
	call	__assert_fail@plt
.L14:
	addi	a5,s0,-128
	mv	a1,a5
	lla	a0,.LC8
	call	func0
	addi	a5,s0,-128
	lla	a1,.LC9
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,45
	lla	a1,.LC3
	lla	a0,.LC10
	call	__assert_fail@plt
.L15:
	addi	a5,s0,-128
	mv	a1,a5
	lla	a0,.LC11
	call	func0
	addi	a5,s0,-128
	lla	a1,.LC12
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,48
	lla	a1,.LC3
	lla	a0,.LC13
	call	__assert_fail@plt
.L16:
	addi	a5,s0,-128
	mv	a1,a5
	lla	a0,.LC14
	call	func0
	addi	a5,s0,-128
	lla	a1,.LC15
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,51
	lla	a1,.LC3
	lla	a0,.LC16
	call	__assert_fail@plt
.L17:
	li	a5,0
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
	ld	ra,120(sp)
	.cfi_restore 1
	ld	s0,112(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128
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
