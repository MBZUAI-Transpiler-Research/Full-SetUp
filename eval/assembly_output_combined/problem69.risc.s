	.file	"problem69.c"
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
	sd	s0,56(sp)
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	mv	a5,a1
	sd	a2,-56(s0)
	sw	a5,-44(s0)
	li	a5,-2147483648
	addi	a5,a5,-1
	sw	a5,-28(s0)
	li	a5,-1
	sw	a5,-24(s0)
	sw	zero,-20(s0)
	j	.L2
.L5:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	bne	a5,zero,.L3
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-28(s0)
	sext.w	a5,a5
	bgt	a5,a4,.L4
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,-1
	bne	a4,a5,.L3
.L4:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-28(s0)
	lw	a5,-20(s0)
	sw	a5,-24(s0)
.L3:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L5
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,-1
	bne	a4,a5,.L6
	li	a5,0
	j	.L7
.L6:
	ld	a5,-56(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	ld	a5,-56(s0)
	addi	a5,a5,4
	lw	a4,-24(s0)
	sw	a4,0(a5)
	ld	a5,-56(s0)
.L7:
	mv	a0,a5
	ld	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)
	.cfi_offset 8, -8
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
	beq	a4,a5,.L9
	li	a5,0
	j	.L10
.L9:
	sw	zero,-20(s0)
	j	.L11
.L13:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	beq	a4,a5,.L12
	li	a5,0
	j	.L10
.L12:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L11:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L13
	li	a5,1
.L10:
	mv	a0,a5
	ld	s0,56(sp)
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
.LC5:
	.string	"problem69.c"
	.align	3
.LC6:
	.string	"issame(result, expect1, 2, 2)"
	.align	3
.LC7:
	.string	"issame(result, expect2, 2, 2)"
	.align	3
.LC8:
	.string	"result == NULL"
	.align	3
.LC9:
	.string	"issame(result, expect4, 2, 2)"
	.align	3
.LC10:
	.string	"issame(result, expect5, 2, 2)"
	.align	3
.LC11:
	.string	"issame(result, expect6, 2, 2)"
	.align	3
.LC12:
	.string	"issame(result, expect7, 2, 2)"
	.align	3
.LC0:
	.word	5
	.word	0
	.word	3
	.word	0
	.word	4
	.word	2
	.align	3
.LC1:
	.word	1
	.word	2
	.word	3
	.word	0
	.word	5
	.word	3
	.align	3
.LC2:
	.word	5
	.word	4
	.word	8
	.word	4
	.word	8
	.align	3
.LC3:
	.word	7
	.word	6
	.word	7
	.word	1
	.align	3
.LC4:
	.word	7
	.word	9
	.word	7
	.word	1
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
	li	a5,4
	sw	a5,-160(s0)
	li	a5,2
	sw	a5,-156(s0)
	li	a5,3
	sw	a5,-152(s0)
	li	a5,2
	sw	a5,-208(s0)
	li	a5,1
	sw	a5,-204(s0)
	addi	a4,s0,-216
	addi	a5,s0,-160
	mv	a2,a4
	li	a1,3
	mv	a0,a5
	call	func0
	sd	a0,-232(s0)
	addi	a5,s0,-208
	li	a3,2
	li	a2,2
	mv	a1,a5
	ld	a0,-232(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,45
	lla	a1,.LC5
	lla	a0,.LC6
	call	__assert_fail@plt
.L15:
	li	a5,1
	sw	a5,-144(s0)
	li	a5,2
	sw	a5,-140(s0)
	li	a5,3
	sw	a5,-136(s0)
	li	a5,2
	sw	a5,-200(s0)
	li	a5,1
	sw	a5,-196(s0)
	addi	a4,s0,-216
	addi	a5,s0,-144
	mv	a2,a4
	li	a1,3
	mv	a0,a5
	call	func0
	sd	a0,-232(s0)
	addi	a5,s0,-200
	li	a3,2
	li	a2,2
	mv	a1,a5
	ld	a0,-232(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,50
	lla	a1,.LC5
	lla	a0,.LC7
	call	__assert_fail@plt
.L16:
	addi	a4,s0,-216
	addi	a5,s0,-224
	mv	a2,a4
	li	a1,0
	mv	a0,a5
	call	func0
	sd	a0,-232(s0)
	ld	a5,-232(s0)
	beq	a5,zero,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,54
	lla	a1,.LC5
	lla	a0,.LC8
	call	__assert_fail@plt
.L17:
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-72(s0)
	ld	a4,8(a5)
	sd	a4,-64(s0)
	ld	a5,16(a5)
	sd	a5,-56(s0)
	sw	zero,-192(s0)
	li	a5,1
	sw	a5,-188(s0)
	addi	a4,s0,-216
	addi	a5,s0,-72
	mv	a2,a4
	li	a1,6
	mv	a0,a5
	call	func0
	sd	a0,-232(s0)
	addi	a5,s0,-192
	li	a3,2
	li	a2,2
	mv	a1,a5
	ld	a0,-232(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,59
	lla	a1,.LC5
	lla	a0,.LC9
	call	__assert_fail@plt
.L18:
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a4,8(a5)
	sd	a4,-40(s0)
	ld	a5,16(a5)
	sd	a5,-32(s0)
	sw	zero,-184(s0)
	li	a5,3
	sw	a5,-180(s0)
	addi	a4,s0,-216
	addi	a5,s0,-48
	mv	a2,a4
	li	a1,6
	mv	a0,a5
	call	func0
	sd	a0,-232(s0)
	addi	a5,s0,-184
	li	a3,2
	li	a2,2
	mv	a1,a5
	ld	a0,-232(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L19
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,64
	lla	a1,.LC5
	lla	a0,.LC10
	call	__assert_fail@plt
.L19:
	lla	a5,.LC2
	ld	a4,0(a5)
	sd	a4,-96(s0)
	ld	a4,8(a5)
	sd	a4,-88(s0)
	lw	a5,16(a5)
	sw	a5,-80(s0)
	li	a5,4
	sw	a5,-176(s0)
	li	a5,1
	sw	a5,-172(s0)
	addi	a4,s0,-216
	addi	a5,s0,-96
	mv	a2,a4
	li	a1,5
	mv	a0,a5
	call	func0
	sd	a0,-232(s0)
	addi	a5,s0,-176
	li	a3,2
	li	a2,2
	mv	a1,a5
	ld	a0,-232(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L20
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,69
	lla	a1,.LC5
	lla	a0,.LC11
	call	__assert_fail@plt
.L20:
	lla	a5,.LC3
	ld	a4,0(a5)
	sd	a4,-128(s0)
	ld	a5,8(a5)
	sd	a5,-120(s0)
	li	a5,6
	sw	a5,-168(s0)
	li	a5,1
	sw	a5,-164(s0)
	addi	a4,s0,-216
	addi	a5,s0,-128
	mv	a2,a4
	li	a1,4
	mv	a0,a5
	call	func0
	sd	a0,-232(s0)
	addi	a5,s0,-168
	li	a3,2
	li	a2,2
	mv	a1,a5
	ld	a0,-232(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L21
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,74
	lla	a1,.LC5
	lla	a0,.LC12
	call	__assert_fail@plt
.L21:
	lla	a5,.LC4
	ld	a4,0(a5)
	sd	a4,-112(s0)
	ld	a5,8(a5)
	sd	a5,-104(s0)
	addi	a4,s0,-216
	addi	a5,s0,-112
	mv	a2,a4
	li	a1,4
	mv	a0,a5
	call	func0
	sd	a0,-232(s0)
	ld	a5,-232(s0)
	beq	a5,zero,.L22
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,78
	lla	a1,.LC5
	lla	a0,.LC8
	call	__assert_fail@plt
.L22:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L24
	call	__stack_chk_fail@plt
.L24:
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
