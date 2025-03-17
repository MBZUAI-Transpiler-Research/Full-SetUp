	.file	"problem89.c"
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
	sd	a0,-56(s0)
	mv	a5,a1
	sd	a2,-72(s0)
	sd	a3,-80(s0)
	sw	a5,-60(s0)
	ld	a5,-80(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
	lw	a5,-60(s0)
	sext.w	a5,a5
	bne	a5,zero,.L2
	ld	a5,-72(s0)
	sd	zero,0(a5)
	j	.L1
.L2:
	lw	a5,-60(s0)
	slli	a5,a5,2
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	mv	a4,a5
	ld	a5,-72(s0)
	sd	a4,0(a5)
	ld	a5,-72(s0)
	ld	a5,0(a5)
	bne	a5,zero,.L4
	li	a0,1
	call	exit@plt
.L4:
	sw	zero,-40(s0)
	j	.L5
.L6:
	lw	a5,-40(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a4,a4,a5
	ld	a5,-72(s0)
	ld	a3,0(a5)
	lw	a5,-40(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sw	a5,-40(s0)
.L5:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L6
	ld	a5,-56(s0)
	lw	a4,0(a5)
	lw	a5,-60(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a3,-56(s0)
	add	a5,a3,a5
	lw	a5,0(a5)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	sraiw	a5,a4,31
	srliw	a5,a5,31
	addw	a4,a4,a5
	andi	a4,a4,1
	subw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,1
	sub	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sw	a5,-28(s0)
	sw	zero,-36(s0)
	j	.L7
.L12:
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
	j	.L8
.L11:
	lw	a5,-28(s0)
	sext.w	a5,a5
	beq	a5,zero,.L9
	ld	a5,-72(s0)
	ld	a4,0(a5)
	lw	a5,-36(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a3,0(a5)
	ld	a5,-72(s0)
	ld	a4,0(a5)
	lw	a5,-32(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	ble	a4,a5,.L10
	ld	a5,-72(s0)
	ld	a4,0(a5)
	lw	a5,-36(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-20(s0)
	ld	a5,-72(s0)
	ld	a4,0(a5)
	lw	a5,-32(s0)
	slli	a5,a5,2
	add	a4,a4,a5
	ld	a5,-72(s0)
	ld	a3,0(a5)
	lw	a5,-36(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	ld	a5,-72(s0)
	ld	a4,0(a5)
	lw	a5,-32(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-20(s0)
	sw	a4,0(a5)
	j	.L10
.L9:
	ld	a5,-72(s0)
	ld	a4,0(a5)
	lw	a5,-36(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a3,0(a5)
	ld	a5,-72(s0)
	ld	a4,0(a5)
	lw	a5,-32(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	bge	a4,a5,.L10
	ld	a5,-72(s0)
	ld	a4,0(a5)
	lw	a5,-36(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-24(s0)
	ld	a5,-72(s0)
	ld	a4,0(a5)
	lw	a5,-32(s0)
	slli	a5,a5,2
	add	a4,a4,a5
	ld	a5,-72(s0)
	ld	a3,0(a5)
	lw	a5,-36(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	ld	a5,-72(s0)
	ld	a4,0(a5)
	lw	a5,-32(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-24(s0)
	sw	a4,0(a5)
.L10:
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L8:
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L11
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L7:
	lw	a5,-60(s0)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-36(s0)
	sext.w	a5,a5
	blt	a5,a4,.L12
.L1:
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
	mv	a5,a1
	sd	a2,-56(s0)
	mv	a4,a3
	sw	a5,-44(s0)
	mv	a5,a4
	sw	a5,-48(s0)
	lw	a5,-44(s0)
	mv	a4,a5
	lw	a5,-48(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	beq	a4,a5,.L14
	li	a5,0
	j	.L15
.L14:
	sw	zero,-20(s0)
	j	.L16
.L18:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	beq	a4,a5,.L17
	li	a5,0
	j	.L15
.L17:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L16:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L18
	li	a5,1
.L15:
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
.LC8:
	.string	"problem89.c"
	.align	3
.LC9:
	.string	"issame(result, result_size, (int[]){}, 0)"
	.align	3
.LC10:
	.string	"issame(result, result_size, (int[]){5}, 1)"
	.align	3
.LC11:
	.string	"issame(result, result_size, (int[]){0, 1, 2, 3, 4, 5}, 6)"
	.align	3
.LC12:
	.string	"issame(result, result_size, (int[]){6, 5, 4, 3, 2, 1, 0}, 7)"
	.align	3
.LC13:
	.string	"issame(result, result_size, (int[]){1, 2}, 2)"
	.align	3
.LC14:
	.string	"issame(result, result_size, (int[]){0, 11, 15, 32, 42, 87}, 6)"
	.align	3
.LC15:
	.string	"issame(result, result_size, (int[]){23, 21, 14, 11}, 4)"
	.align	3
.LC0:
	.word	2
	.word	4
	.word	3
	.word	0
	.word	1
	.word	5
	.align	3
.LC1:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.align	3
.LC2:
	.word	2
	.word	4
	.word	3
	.word	0
	.word	1
	.word	5
	.word	6
	.align	3
.LC3:
	.word	6
	.word	5
	.word	4
	.word	3
	.word	2
	.word	1
	.word	0
	.align	3
.LC4:
	.word	15
	.word	42
	.word	87
	.word	32
	.word	11
	.word	0
	.align	3
.LC5:
	.word	0
	.word	11
	.word	15
	.word	32
	.word	42
	.word	87
	.align	3
.LC6:
	.word	21
	.word	14
	.word	23
	.word	11
	.align	3
.LC7:
	.word	23
	.word	21
	.word	14
	.word	11
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-192
	.cfi_def_cfa_offset 192
	sd	ra,184(sp)
	sd	s0,176(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,192
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	addi	a3,s0,-188
	addi	a4,s0,-184
	addi	a5,s0,-176
	mv	a2,a4
	li	a1,0
	mv	a0,a5
	call	func0
	ld	a5,-184(s0)
	lw	a4,-188(s0)
	addi	a2,s0,-56
	li	a3,0
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L20
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,59
	lla	a1,.LC8
	lla	a0,.LC9
	call	__assert_fail@plt
.L20:
	ld	a5,-184(s0)
	mv	a0,a5
	call	free@plt
	li	a5,5
	sw	a5,-168(s0)
	addi	a3,s0,-188
	addi	a4,s0,-184
	addi	a5,s0,-168
	mv	a2,a4
	li	a1,1
	mv	a0,a5
	call	func0
	ld	a4,-184(s0)
	lw	a1,-188(s0)
	li	a5,5
	sw	a5,-56(s0)
	addi	a5,s0,-56
	li	a3,1
	mv	a2,a5
	mv	a0,a4
	call	issame
	mv	a5,a0
	bne	a5,zero,.L21
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,63
	lla	a1,.LC8
	lla	a0,.LC10
	call	__assert_fail@plt
.L21:
	ld	a5,-184(s0)
	mv	a0,a5
	call	free@plt
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-136(s0)
	ld	a4,8(a5)
	sd	a4,-128(s0)
	ld	a5,16(a5)
	sd	a5,-120(s0)
	addi	a3,s0,-188
	addi	a4,s0,-184
	addi	a5,s0,-136
	mv	a2,a4
	li	a1,6
	mv	a0,a5
	call	func0
	ld	a0,-184(s0)
	lw	a1,-188(s0)
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-56(s0)
	ld	a4,8(a5)
	sd	a4,-48(s0)
	ld	a5,16(a5)
	sd	a5,-40(s0)
	addi	a5,s0,-56
	li	a3,6
	mv	a2,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L22
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,67
	lla	a1,.LC8
	lla	a0,.LC11
	call	__assert_fail@plt
.L22:
	ld	a5,-184(s0)
	mv	a0,a5
	call	free@plt
	lla	a5,.LC2
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	sd	a2,-88(s0)
	sd	a3,-80(s0)
	sd	a4,-72(s0)
	lw	a5,24(a5)
	sw	a5,-64(s0)
	addi	a3,s0,-188
	addi	a4,s0,-184
	addi	a5,s0,-88
	mv	a2,a4
	li	a1,7
	mv	a0,a5
	call	func0
	ld	a0,-184(s0)
	lw	a1,-188(s0)
	lla	a5,.LC3
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	lw	a5,24(a5)
	sw	a5,-32(s0)
	addi	a5,s0,-56
	li	a3,7
	mv	a2,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L23
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,71
	lla	a1,.LC8
	lla	a0,.LC12
	call	__assert_fail@plt
.L23:
	ld	a5,-184(s0)
	mv	a0,a5
	call	free@plt
	li	a5,2
	sw	a5,-160(s0)
	li	a5,1
	sw	a5,-156(s0)
	addi	a3,s0,-188
	addi	a4,s0,-184
	addi	a5,s0,-160
	mv	a2,a4
	li	a1,2
	mv	a0,a5
	call	func0
	ld	a4,-184(s0)
	lw	a1,-188(s0)
	li	a5,1
	sw	a5,-56(s0)
	li	a5,2
	sw	a5,-52(s0)
	addi	a5,s0,-56
	li	a3,2
	mv	a2,a5
	mv	a0,a4
	call	issame
	mv	a5,a0
	bne	a5,zero,.L24
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,75
	lla	a1,.LC8
	lla	a0,.LC13
	call	__assert_fail@plt
.L24:
	ld	a5,-184(s0)
	mv	a0,a5
	call	free@plt
	lla	a5,.LC4
	ld	a4,0(a5)
	sd	a4,-112(s0)
	ld	a4,8(a5)
	sd	a4,-104(s0)
	ld	a5,16(a5)
	sd	a5,-96(s0)
	addi	a3,s0,-188
	addi	a4,s0,-184
	addi	a5,s0,-112
	mv	a2,a4
	li	a1,6
	mv	a0,a5
	call	func0
	ld	a0,-184(s0)
	lw	a1,-188(s0)
	lla	a5,.LC5
	ld	a4,0(a5)
	sd	a4,-56(s0)
	ld	a4,8(a5)
	sd	a4,-48(s0)
	ld	a5,16(a5)
	sd	a5,-40(s0)
	addi	a5,s0,-56
	li	a3,6
	mv	a2,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L25
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,79
	lla	a1,.LC8
	lla	a0,.LC14
	call	__assert_fail@plt
.L25:
	ld	a5,-184(s0)
	mv	a0,a5
	call	free@plt
	lla	a5,.LC6
	ld	a4,0(a5)
	sd	a4,-152(s0)
	ld	a5,8(a5)
	sd	a5,-144(s0)
	addi	a3,s0,-188
	addi	a4,s0,-184
	addi	a5,s0,-152
	mv	a2,a4
	li	a1,4
	mv	a0,a5
	call	func0
	ld	a0,-184(s0)
	lw	a1,-188(s0)
	lla	a5,.LC7
	ld	a4,0(a5)
	sd	a4,-56(s0)
	ld	a5,8(a5)
	sd	a5,-48(s0)
	addi	a5,s0,-56
	li	a3,4
	mv	a2,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L26
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,83
	lla	a1,.LC8
	lla	a0,.LC15
	call	__assert_fail@plt
.L26:
	ld	a5,-184(s0)
	mv	a0,a5
	call	free@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L28
	call	__stack_chk_fail@plt
.L28:
	mv	a0,a4
	ld	ra,184(sp)
	.cfi_restore 1
	ld	s0,176(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 192
	addi	sp,sp,192
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
