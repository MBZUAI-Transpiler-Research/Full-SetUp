	.file	"problem18.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC4:
	.string	"o"
	.align	3
.LC5:
	.string	"o|"
	.align	3
.LC6:
	.string	".|"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sd	a0,-88(s0)
	sd	a1,-96(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	sd	zero,-56(s0)
	sw	zero,-72(s0)
	sw	zero,-68(s0)
	sh	zero,-32(s0)
	sb	zero,-30(s0)
	ld	a0,-88(s0)
	call	strlen@plt
	mv	a5,a0
	sext.w	a5,a5
	addiw	a5,a5,1
	sext.w	a5,a5
	sw	a5,-60(s0)
	lw	a5,-60(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-48(s0)
	ld	a1,-88(s0)
	ld	a0,-48(s0)
	call	strcpy@plt
	ld	a0,-48(s0)
	call	strlen@plt
	mv	a5,a0
	mv	a4,a5
	ld	a5,-48(s0)
	add	a5,a5,a4
	li	a4,32
	sb	a4,0(a5)
	sb	zero,1(a5)
	sw	zero,-64(s0)
	j	.L2
.L17:
	lw	a5,-64(s0)
	ld	a4,-48(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,32
	bne	a4,a5,.L3
	addi	a5,s0,-32
	lla	a1,.LC4
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	bne	a5,zero,.L4
	lw	a5,-72(s0)
	mv	a4,a5
	lw	a5,-68(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bne	a4,a5,.L5
	lw	a5,-68(s0)
	sext.w	a5,a5
	ble	a5,zero,.L6
	lw	a5,-68(s0)
	slliw	a5,a5,1
	sext.w	a5,a5
	j	.L7
.L6:
	li	a5,4
.L7:
	sw	a5,-68(s0)
	lw	a5,-68(s0)
	slli	a5,a5,2
	mv	a1,a5
	ld	a0,-56(s0)
	call	realloc@plt
	sd	a0,-56(s0)
.L5:
	lw	a5,-72(s0)
	addiw	a4,a5,1
	sw	a4,-72(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	li	a4,4
	sw	a4,0(a5)
.L4:
	addi	a5,s0,-32
	lla	a1,.LC5
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	bne	a5,zero,.L8
	lw	a5,-72(s0)
	mv	a4,a5
	lw	a5,-68(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bne	a4,a5,.L9
	lw	a5,-68(s0)
	sext.w	a5,a5
	ble	a5,zero,.L10
	lw	a5,-68(s0)
	slliw	a5,a5,1
	sext.w	a5,a5
	j	.L11
.L10:
	li	a5,4
.L11:
	sw	a5,-68(s0)
	lw	a5,-68(s0)
	slli	a5,a5,2
	mv	a1,a5
	ld	a0,-56(s0)
	call	realloc@plt
	sd	a0,-56(s0)
.L9:
	lw	a5,-72(s0)
	addiw	a4,a5,1
	sw	a4,-72(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	li	a4,2
	sw	a4,0(a5)
.L8:
	addi	a5,s0,-32
	lla	a1,.LC6
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	bne	a5,zero,.L12
	lw	a5,-72(s0)
	mv	a4,a5
	lw	a5,-68(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bne	a4,a5,.L13
	lw	a5,-68(s0)
	sext.w	a5,a5
	ble	a5,zero,.L14
	lw	a5,-68(s0)
	slliw	a5,a5,1
	sext.w	a5,a5
	j	.L15
.L14:
	li	a5,4
.L15:
	sw	a5,-68(s0)
	lw	a5,-68(s0)
	slli	a5,a5,2
	mv	a1,a5
	ld	a0,-56(s0)
	call	realloc@plt
	sd	a0,-56(s0)
.L13:
	lw	a5,-72(s0)
	addiw	a4,a5,1
	sw	a4,-72(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	li	a4,1
	sw	a4,0(a5)
.L12:
	sb	zero,-32(s0)
	j	.L16
.L3:
	addi	a5,s0,-32
	mv	a0,a5
	call	strlen@plt
	sd	a0,-40(s0)
	ld	a4,-40(s0)
	li	a5,1
	bgtu	a4,a5,.L16
	lw	a5,-64(s0)
	ld	a4,-48(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	ld	a5,-40(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-16(a5)
	ld	a5,-40(s0)
	addi	a5,a5,1
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	zero,-16(a5)
.L16:
	lw	a5,-64(s0)
	addiw	a5,a5,1
	sw	a5,-64(s0)
.L2:
	lw	a5,-64(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L17
	ld	a0,-48(s0)
	call	free@plt
	ld	a5,-96(s0)
	lw	a4,-72(s0)
	sw	a4,0(a5)
	ld	a5,-56(s0)
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
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
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
	beq	a4,a5,.L21
	li	a5,0
	j	.L22
.L21:
	sw	zero,-20(s0)
	j	.L23
.L25:
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
	beq	a4,a5,.L24
	li	a5,0
	j	.L22
.L24:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L23:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L25
	li	a5,1
.L22:
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
.LC7:
	.string	""
	.align	3
.LC8:
	.string	"problem18.c"
	.align	3
.LC9:
	.string	"issame(result, count, (int[]){}, 0)"
	.align	3
.LC10:
	.string	"o o o o"
	.align	3
.LC11:
	.string	"issame(result, count, (int[]){4, 4, 4, 4}, 4)"
	.align	3
.LC12:
	.string	".| .| .| .|"
	.align	3
.LC13:
	.string	"issame(result, count, (int[]){1, 1, 1, 1}, 4)"
	.align	3
.LC14:
	.string	"o| o| .| .| o o o o"
	.align	3
.LC15:
	.string	"issame(result, count, (int[]){2, 2, 1, 1, 4, 4, 4, 4}, 8)"
	.align	3
.LC16:
	.string	"o| .| o| .| o o| o o|"
	.align	3
.LC17:
	.string	"issame(result, count, (int[]){2, 1, 2, 1, 4, 2, 4, 2}, 8)"
	.align	3
.LC0:
	.word	4
	.word	4
	.word	4
	.word	4
	.align	3
.LC1:
	.word	1
	.word	1
	.word	1
	.word	1
	.align	3
.LC2:
	.word	2
	.word	2
	.word	1
	.word	1
	.word	4
	.word	4
	.word	4
	.word	4
	.align	3
.LC3:
	.word	2
	.word	1
	.word	2
	.word	1
	.word	4
	.word	2
	.word	4
	.word	2
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	addi	a5,s0,-68
	mv	a1,a5
	lla	a0,.LC7
	call	func0
	sd	a0,-64(s0)
	lw	a5,-68(s0)
	addi	a4,s0,-56
	li	a3,0
	mv	a2,a4
	mv	a1,a5
	ld	a0,-64(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L27
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,71
	lla	a1,.LC8
	lla	a0,.LC9
	call	__assert_fail@plt
.L27:
	ld	a0,-64(s0)
	call	free@plt
	addi	a5,s0,-68
	mv	a1,a5
	lla	a0,.LC10
	call	func0
	sd	a0,-64(s0)
	lw	a1,-68(s0)
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-56(s0)
	ld	a5,8(a5)
	sd	a5,-48(s0)
	addi	a5,s0,-56
	li	a3,4
	mv	a2,a5
	ld	a0,-64(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L28
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,75
	lla	a1,.LC8
	lla	a0,.LC11
	call	__assert_fail@plt
.L28:
	ld	a0,-64(s0)
	call	free@plt
	addi	a5,s0,-68
	mv	a1,a5
	lla	a0,.LC12
	call	func0
	sd	a0,-64(s0)
	lw	a1,-68(s0)
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-56(s0)
	ld	a5,8(a5)
	sd	a5,-48(s0)
	addi	a5,s0,-56
	li	a3,4
	mv	a2,a5
	ld	a0,-64(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L29
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,79
	lla	a1,.LC8
	lla	a0,.LC13
	call	__assert_fail@plt
.L29:
	ld	a0,-64(s0)
	call	free@plt
	addi	a5,s0,-68
	mv	a1,a5
	lla	a0,.LC14
	call	func0
	sd	a0,-64(s0)
	lw	a1,-68(s0)
	lla	a5,.LC2
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	sd	a5,-32(s0)
	addi	a5,s0,-56
	li	a3,8
	mv	a2,a5
	ld	a0,-64(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L30
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,83
	lla	a1,.LC8
	lla	a0,.LC15
	call	__assert_fail@plt
.L30:
	ld	a0,-64(s0)
	call	free@plt
	addi	a5,s0,-68
	mv	a1,a5
	lla	a0,.LC16
	call	func0
	sd	a0,-64(s0)
	lw	a1,-68(s0)
	lla	a5,.LC3
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	sd	a5,-32(s0)
	addi	a5,s0,-56
	li	a3,8
	mv	a2,a5
	ld	a0,-64(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L31
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,87
	lla	a1,.LC8
	lla	a0,.LC17
	call	__assert_fail@plt
.L31:
	ld	a0,-64(s0)
	call	free@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L33
	call	__stack_chk_fail@plt
.L33:
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
