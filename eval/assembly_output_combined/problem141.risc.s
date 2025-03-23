	.file	"problem141.c"
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
	sd	a1,-64(s0)
	sw	zero,-44(s0)
	sw	zero,-40(s0)
	sw	zero,-36(s0)
	j	.L2
.L8:
	lw	a5,-36(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,32
	bne	a4,a5,.L3
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
	j	.L4
.L3:
	lw	a5,-44(s0)
	sext.w	a4,a5
	li	a5,1
	bne	a4,a5,.L5
	lw	a5,-40(s0)
	addiw	a4,a5,1
	sw	a4,-40(s0)
	mv	a4,a5
	ld	a5,-64(s0)
	add	a5,a5,a4
	li	a4,95
	sb	a4,0(a5)
.L5:
	lw	a5,-44(s0)
	sext.w	a4,a5
	li	a5,2
	bne	a4,a5,.L6
	lw	a5,-40(s0)
	addiw	a4,a5,1
	sw	a4,-40(s0)
	mv	a4,a5
	ld	a5,-64(s0)
	add	a5,a5,a4
	li	a4,95
	sb	a4,0(a5)
	lw	a5,-40(s0)
	addiw	a4,a5,1
	sw	a4,-40(s0)
	mv	a4,a5
	ld	a5,-64(s0)
	add	a5,a5,a4
	li	a4,95
	sb	a4,0(a5)
.L6:
	lw	a5,-44(s0)
	sext.w	a4,a5
	li	a5,2
	ble	a4,a5,.L7
	lw	a5,-40(s0)
	addiw	a4,a5,1
	sw	a4,-40(s0)
	mv	a4,a5
	ld	a5,-64(s0)
	add	a5,a5,a4
	li	a4,45
	sb	a4,0(a5)
.L7:
	sw	zero,-44(s0)
	lw	a5,-36(s0)
	ld	a4,-56(s0)
	add	a4,a4,a5
	lw	a5,-40(s0)
	addiw	a3,a5,1
	sw	a3,-40(s0)
	mv	a3,a5
	ld	a5,-64(s0)
	add	a5,a5,a3
	lbu	a4,0(a4)
	sb	a4,0(a5)
.L4:
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L2:
	lw	s1,-36(s0)
	ld	a0,-56(s0)
	call	strlen@plt
	mv	a5,a0
	bltu	s1,a5,.L8
	lw	a5,-44(s0)
	sext.w	a4,a5
	li	a5,1
	bne	a4,a5,.L9
	lw	a5,-40(s0)
	addiw	a4,a5,1
	sw	a4,-40(s0)
	mv	a4,a5
	ld	a5,-64(s0)
	add	a5,a5,a4
	li	a4,95
	sb	a4,0(a5)
.L9:
	lw	a5,-44(s0)
	sext.w	a4,a5
	li	a5,2
	bne	a4,a5,.L10
	lw	a5,-40(s0)
	addiw	a4,a5,1
	sw	a4,-40(s0)
	mv	a4,a5
	ld	a5,-64(s0)
	add	a5,a5,a4
	li	a4,95
	sb	a4,0(a5)
	lw	a5,-40(s0)
	addiw	a4,a5,1
	sw	a4,-40(s0)
	mv	a4,a5
	ld	a5,-64(s0)
	add	a5,a5,a4
	li	a4,95
	sb	a4,0(a5)
.L10:
	lw	a5,-44(s0)
	sext.w	a4,a5
	li	a5,2
	ble	a4,a5,.L11
	lw	a5,-40(s0)
	addiw	a4,a5,1
	sw	a4,-40(s0)
	mv	a4,a5
	ld	a5,-64(s0)
	add	a5,a5,a4
	li	a4,45
	sb	a4,0(a5)
.L11:
	lw	a5,-40(s0)
	ld	a4,-64(s0)
	add	a5,a4,a5
	sb	zero,0(a5)
	nop
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
.LC0:
	.string	"Example"
	.align	3
.LC1:
	.string	"problem141.c"
	.align	3
.LC2:
	.string	"strcmp(output, \"Example\") == 0"
	.align	3
.LC3:
	.string	"Mudasir Hanif "
	.align	3
.LC4:
	.string	"Mudasir_Hanif_"
	.align	3
.LC5:
	.string	"strcmp(output, \"Mudasir_Hanif_\") == 0"
	.align	3
.LC6:
	.string	"Yellow Yellow  Dirty  Fellow"
	.align	3
.LC7:
	.string	"Yellow_Yellow__Dirty__Fellow"
	.align	3
.LC8:
	.string	"strcmp(output, \"Yellow_Yellow__Dirty__Fellow\") == 0"
	.align	3
.LC9:
	.string	"Exa   mple"
	.align	3
.LC10:
	.string	"Exa-mple"
	.align	3
.LC11:
	.string	"strcmp(output, \"Exa-mple\") == 0"
	.align	3
.LC12:
	.string	"   Exa 1 2 2 mple"
	.align	3
.LC13:
	.string	"-Exa_1_2_2_mple"
	.align	3
.LC14:
	.string	"strcmp(output, \"-Exa_1_2_2_mple\") == 0"
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
	lla	a0,.LC0
	call	func0
	addi	a5,s0,-128
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,33
	lla	a1,.LC1
	lla	a0,.LC2
	call	__assert_fail@plt
.L13:
	addi	a5,s0,-128
	mv	a1,a5
	lla	a0,.LC3
	call	func0
	addi	a5,s0,-128
	lla	a1,.LC4
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,36
	lla	a1,.LC1
	lla	a0,.LC5
	call	__assert_fail@plt
.L14:
	addi	a5,s0,-128
	mv	a1,a5
	lla	a0,.LC6
	call	func0
	addi	a5,s0,-128
	lla	a1,.LC7
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,39
	lla	a1,.LC1
	lla	a0,.LC8
	call	__assert_fail@plt
.L15:
	addi	a5,s0,-128
	mv	a1,a5
	lla	a0,.LC9
	call	func0
	addi	a5,s0,-128
	lla	a1,.LC10
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,42
	lla	a1,.LC1
	lla	a0,.LC11
	call	__assert_fail@plt
.L16:
	addi	a5,s0,-128
	mv	a1,a5
	lla	a0,.LC12
	call	func0
	addi	a5,s0,-128
	lla	a1,.LC13
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,45
	lla	a1,.LC1
	lla	a0,.LC14
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
