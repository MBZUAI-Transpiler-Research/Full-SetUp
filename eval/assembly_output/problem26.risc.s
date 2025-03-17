	.file	"problem26.c"
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
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sd	a1,-48(s0)
	sw	a5,-36(s0)
	li	a0,256
	call	malloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	ld	a5,-48(s0)
	sw	zero,0(a5)
	li	a5,2
	sw	a5,-28(s0)
	j	.L2
.L4:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	divw	a5,a4,a5
	sw	a5,-36(s0)
	ld	a5,-48(s0)
	lw	a5,0(a5)
	addiw	a4,a5,1
	sext.w	a3,a4
	ld	a4,-48(s0)
	sw	a3,0(a4)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a4,-28(s0)
	sw	a4,0(a5)
.L3:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	remw	a5,a4,a5
	sext.w	a5,a5
	beq	a5,zero,.L4
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L2:
	lw	a5,-28(s0)
	mulw	a5,a5,a5
	sext.w	a4,a5
	lw	a5,-36(s0)
	sext.w	a5,a5
	bge	a5,a4,.L3
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,1
	ble	a4,a5,.L6
	ld	a5,-48(s0)
	lw	a5,0(a5)
	addiw	a4,a5,1
	sext.w	a3,a4
	ld	a4,-48(s0)
	sw	a3,0(a4)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a4,-36(s0)
	sw	a4,0(a5)
.L6:
	ld	a5,-24(s0)
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
	ld	a4,-56(s0)
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
	lw	a5,-44(s0)
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
.LC3:
	.string	"problem26.c"
	.align	3
.LC4:
	.string	"issame(result, size, (int[]){2}, 1)"
	.align	3
.LC5:
	.string	"issame(result, size, (int[]){2, 2}, 2)"
	.align	3
.LC6:
	.string	"issame(result, size, (int[]){2, 2, 2}, 3)"
	.align	3
.LC7:
	.string	"issame(result, size, (int[]){3, 19}, 2)"
	.align	3
.LC8:
	.string	"issame(result, size, (int[]){3, 3, 19, 19}, 4)"
	.align	3
.LC9:
	.string	"issame(result, size, (int[]){3, 3, 3, 19, 19, 19}, 6)"
	.align	3
.LC10:
	.string	"issame(result, size, (int[]){3, 19, 19, 19}, 4)"
	.align	3
.LC11:
	.string	"issame(result, size, (int[]){2, 3, 3}, 3)"
	.align	3
.LC0:
	.word	3
	.word	3
	.word	19
	.word	19
	.align	3
.LC1:
	.word	3
	.word	3
	.word	3
	.word	19
	.word	19
	.word	19
	.align	3
.LC2:
	.word	3
	.word	19
	.word	19
	.word	19
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	addi	a5,s0,-60
	mv	a1,a5
	li	a0,2
	call	func0
	sd	a0,-56(s0)
	lw	a4,-60(s0)
	li	a5,2
	sw	a5,-48(s0)
	addi	a5,s0,-48
	li	a3,1
	mv	a2,a5
	mv	a1,a4
	ld	a0,-56(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,38
	lla	a1,.LC3
	lla	a0,.LC4
	call	__assert_fail@plt
.L15:
	ld	a0,-56(s0)
	call	free@plt
	addi	a5,s0,-60
	mv	a1,a5
	li	a0,4
	call	func0
	sd	a0,-56(s0)
	lw	a4,-60(s0)
	li	a5,2
	sw	a5,-48(s0)
	li	a5,2
	sw	a5,-44(s0)
	addi	a5,s0,-48
	li	a3,2
	mv	a2,a5
	mv	a1,a4
	ld	a0,-56(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,42
	lla	a1,.LC3
	lla	a0,.LC5
	call	__assert_fail@plt
.L16:
	ld	a0,-56(s0)
	call	free@plt
	addi	a5,s0,-60
	mv	a1,a5
	li	a0,8
	call	func0
	sd	a0,-56(s0)
	lw	a4,-60(s0)
	li	a5,2
	sw	a5,-48(s0)
	li	a5,2
	sw	a5,-44(s0)
	li	a5,2
	sw	a5,-40(s0)
	addi	a5,s0,-48
	li	a3,3
	mv	a2,a5
	mv	a1,a4
	ld	a0,-56(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,46
	lla	a1,.LC3
	lla	a0,.LC6
	call	__assert_fail@plt
.L17:
	ld	a0,-56(s0)
	call	free@plt
	addi	a5,s0,-60
	mv	a1,a5
	li	a0,57
	call	func0
	sd	a0,-56(s0)
	lw	a4,-60(s0)
	li	a5,3
	sw	a5,-48(s0)
	li	a5,19
	sw	a5,-44(s0)
	addi	a5,s0,-48
	li	a3,2
	mv	a2,a5
	mv	a1,a4
	ld	a0,-56(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,50
	lla	a1,.LC3
	lla	a0,.LC7
	call	__assert_fail@plt
.L18:
	ld	a0,-56(s0)
	call	free@plt
	addi	a5,s0,-60
	mv	a1,a5
	li	a5,4096
	addi	a0,a5,-847
	call	func0
	sd	a0,-56(s0)
	lw	a1,-60(s0)
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a5,8(a5)
	sd	a5,-40(s0)
	addi	a5,s0,-48
	li	a3,4
	mv	a2,a5
	ld	a0,-56(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L19
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,54
	lla	a1,.LC3
	lla	a0,.LC8
	call	__assert_fail@plt
.L19:
	ld	a0,-56(s0)
	call	free@plt
	addi	a5,s0,-60
	mv	a1,a5
	li	a5,184320
	addi	a0,a5,873
	call	func0
	sd	a0,-56(s0)
	lw	a1,-60(s0)
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a4,8(a5)
	sd	a4,-40(s0)
	ld	a5,16(a5)
	sd	a5,-32(s0)
	addi	a5,s0,-48
	li	a3,6
	mv	a2,a5
	ld	a0,-56(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L20
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,58
	lla	a1,.LC3
	lla	a0,.LC9
	call	__assert_fail@plt
.L20:
	ld	a0,-56(s0)
	call	free@plt
	addi	a5,s0,-60
	mv	a1,a5
	li	a5,20480
	addi	a0,a5,97
	call	func0
	sd	a0,-56(s0)
	lw	a1,-60(s0)
	lla	a5,.LC2
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a5,8(a5)
	sd	a5,-40(s0)
	addi	a5,s0,-48
	li	a3,4
	mv	a2,a5
	ld	a0,-56(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L21
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,62
	lla	a1,.LC3
	lla	a0,.LC10
	call	__assert_fail@plt
.L21:
	ld	a0,-56(s0)
	call	free@plt
	addi	a5,s0,-60
	mv	a1,a5
	li	a0,18
	call	func0
	sd	a0,-56(s0)
	lw	a4,-60(s0)
	li	a5,2
	sw	a5,-48(s0)
	li	a5,3
	sw	a5,-44(s0)
	li	a5,3
	sw	a5,-40(s0)
	addi	a5,s0,-48
	li	a3,3
	mv	a2,a5
	mv	a1,a4
	ld	a0,-56(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L22
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,66
	lla	a1,.LC3
	lla	a0,.LC11
	call	__assert_fail@plt
.L22:
	ld	a0,-56(s0)
	call	free@plt
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
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
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
