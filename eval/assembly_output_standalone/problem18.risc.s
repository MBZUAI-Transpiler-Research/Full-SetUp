	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"o"
	.align	3
.LC1:
	.string	"o|"
	.align	3
.LC2:
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
	lla	a1,.LC0
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
	lla	a1,.LC1
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
	lla	a1,.LC2
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
