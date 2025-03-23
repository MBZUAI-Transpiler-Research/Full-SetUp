	.file	"problem8.c"
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
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	mv	a5,a1
	sd	a2,-56(s0)
	sd	a3,-64(s0)
	sw	a5,-44(s0)
	sd	zero,-24(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	j	.L2
.L4:
	lw	a5,-28(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	ld	a1,-56(s0)
	mv	a0,a5
	call	strstr@plt
	mv	a5,a0
	beq	a5,zero,.L3
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	slli	a5,a5,3
	mv	a1,a5
	ld	a0,-24(s0)
	call	realloc@plt
	sd	a0,-24(s0)
	lw	a5,-28(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	a4,a4,a5
	lw	a5,-32(s0)
	slli	a5,a5,3
	ld	a3,-24(s0)
	add	a5,a3,a5
	ld	a4,0(a4)
	sd	a4,0(a5)
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L3:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L2:
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L4
	ld	a5,-64(s0)
	lw	a4,-32(s0)
	sw	a4,0(a5)
	ld	a5,-24(s0)
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	mv	a5,a2
	mv	a4,a3
	sw	a5,-52(s0)
	mv	a5,a4
	sw	a5,-56(s0)
	lw	a5,-52(s0)
	mv	a4,a5
	lw	a5,-56(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	beq	a4,a5,.L7
	li	a5,0
	j	.L8
.L7:
	sw	zero,-20(s0)
	j	.L9
.L11:
	lw	a5,-20(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	a5,a4,a5
	ld	a3,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,3
	ld	a4,-48(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a1,a5
	mv	a0,a3
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L10
	li	a5,0
	j	.L8
.L10:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L9:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L11
	li	a5,1
.L8:
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC14:
	.string	"john"
	.align	3
.LC15:
	.string	"problem8.c"
	.align	3
.LC16:
	.string	"out_size == 0 && result == NULL"
	.align	3
.LC0:
	.string	"xxx"
	.align	3
.LC4:
	.string	"xxxAAA"
	.align	3
.LC18:
	.string	"issame(result, expected1, out_size, 3)"
	.align	3
.LC21:
	.string	"xx"
	.align	3
.LC22:
	.string	"issame(result, expected2, out_size, 4)"
	.align	3
.LC9:
	.string	"grunt"
	.align	3
.LC11:
	.string	"prune"
	.align	3
.LC24:
	.string	"run"
	.align	3
.LC25:
	.string	"issame(result, expected3, out_size, 2)"
	.align	3
.LC1:
	.string	"asd"
	.align	3
.LC2:
	.string	"xxy"
	.align	3
.LC3:
	.string	"john doe"
	.data
	.align	3
.LC17:
	.dword	.LC0
	.dword	.LC1
	.dword	.LC2
	.dword	.LC3
	.dword	.LC4
	.dword	.LC0
	.section	.rodata
	.align	3
.LC6:
	.string	"aaaxxy"
	.data
	.align	3
.LC19:
	.dword	.LC0
	.dword	.LC1
	.dword	.LC6
	.dword	.LC3
	.dword	.LC4
	.dword	.LC0
	.align	3
.LC20:
	.dword	.LC0
	.dword	.LC6
	.dword	.LC4
	.dword	.LC0
	.section	.rodata
	.align	3
.LC10:
	.string	"trumpet"
	.align	3
.LC12:
	.string	"gruesome"
	.data
	.align	3
.LC23:
	.dword	.LC9
	.dword	.LC10
	.dword	.LC11
	.dword	.LC12
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-240
	.cfi_def_cfa_offset 240
	sd	ra,232(sp)
	sd	s0,224(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,240
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	addi	a5,s0,-236
	mv	a3,a5
	lla	a2,.LC14
	li	a1,0
	li	a0,0
	call	func0
	sd	a0,-232(s0)
	lw	a5,-236(s0)
	bne	a5,zero,.L13
	ld	a5,-232(s0)
	beq	a5,zero,.L20
.L13:
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,40
	lla	a1,.LC15
	lla	a0,.LC16
	call	__assert_fail@plt
.L20:
	lla	a5,.LC17
	ld	a0,0(a5)
	ld	a1,8(a5)
	ld	a2,16(a5)
	ld	a3,24(a5)
	ld	a4,32(a5)
	ld	a5,40(a5)
	sd	a0,-120(s0)
	sd	a1,-112(s0)
	sd	a2,-104(s0)
	sd	a3,-96(s0)
	sd	a4,-88(s0)
	sd	a5,-80(s0)
	lla	a5,.LC0
	sd	a5,-208(s0)
	lla	a5,.LC4
	sd	a5,-200(s0)
	lla	a5,.LC0
	sd	a5,-192(s0)
	addi	a4,s0,-236
	addi	a5,s0,-120
	mv	a3,a4
	lla	a2,.LC0
	li	a1,6
	mv	a0,a5
	call	func0
	sd	a0,-232(s0)
	lw	a4,-236(s0)
	addi	a5,s0,-208
	li	a3,3
	mv	a2,a4
	mv	a1,a5
	ld	a0,-232(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,46
	lla	a1,.LC15
	lla	a0,.LC18
	call	__assert_fail@plt
.L15:
	ld	a0,-232(s0)
	call	free@plt
	lla	a5,.LC19
	ld	a0,0(a5)
	ld	a1,8(a5)
	ld	a2,16(a5)
	ld	a3,24(a5)
	ld	a4,32(a5)
	ld	a5,40(a5)
	sd	a0,-72(s0)
	sd	a1,-64(s0)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	sd	a5,-32(s0)
	lla	a5,.LC20
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-184(s0)
	sd	a3,-176(s0)
	sd	a4,-168(s0)
	sd	a5,-160(s0)
	addi	a4,s0,-236
	addi	a5,s0,-72
	mv	a3,a4
	lla	a2,.LC21
	li	a1,6
	mv	a0,a5
	call	func0
	sd	a0,-232(s0)
	lw	a4,-236(s0)
	addi	a5,s0,-184
	li	a3,4
	mv	a2,a4
	mv	a1,a5
	ld	a0,-232(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,53
	lla	a1,.LC15
	lla	a0,.LC22
	call	__assert_fail@plt
.L16:
	ld	a0,-232(s0)
	call	free@plt
	lla	a5,.LC23
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-152(s0)
	sd	a3,-144(s0)
	sd	a4,-136(s0)
	sd	a5,-128(s0)
	lla	a5,.LC9
	sd	a5,-224(s0)
	lla	a5,.LC11
	sd	a5,-216(s0)
	addi	a4,s0,-236
	addi	a5,s0,-152
	mv	a3,a4
	lla	a2,.LC24
	li	a1,4
	mv	a0,a5
	call	func0
	sd	a0,-232(s0)
	lw	a4,-236(s0)
	addi	a5,s0,-224
	li	a3,2
	mv	a2,a4
	mv	a1,a5
	ld	a0,-232(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,60
	lla	a1,.LC15
	lla	a0,.LC25
	call	__assert_fail@plt
.L17:
	ld	a0,-232(s0)
	call	free@plt
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
	ld	ra,232(sp)
	.cfi_restore 1
	ld	s0,224(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 240
	addi	sp,sp,240
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
