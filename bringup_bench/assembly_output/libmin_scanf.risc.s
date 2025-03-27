	.file	"libmin_scanf.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	libmin_sscanf
	.type	libmin_sscanf, @function
libmin_sscanf:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sd	ra,88(sp)
	sd	s0,80(sp)
	.cfi_offset 1, -56
	.cfi_offset 8, -64
	addi	s0,sp,96
	.cfi_def_cfa 8, 48
	sd	a0,-72(s0)
	sd	a1,-80(s0)
	sd	a2,0(s0)
	sd	a3,8(s0)
	sd	a4,16(s0)
	sd	a5,24(s0)
	sd	a6,32(s0)
	sd	a7,40(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	sw	zero,-48(s0)
	sw	zero,-44(s0)
	addi	a5,s0,48
	sd	a5,-88(s0)
	ld	a5,-88(s0)
	addi	a5,a5,-48
	sd	a5,-40(s0)
	sw	zero,-52(s0)
	j	.L2
.L10:
	lw	a5,-52(s0)
	ld	a4,-80(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,37
	bne	a4,a5,.L3
	lw	a5,-52(s0)
	addiw	a5,a5,1
	sw	a5,-52(s0)
	lw	a5,-52(s0)
	ld	a4,-80(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a3,a5
	li	a4,120
	beq	a3,a4,.L4
	mv	a3,a5
	li	a4,120
	bgt	a3,a4,.L8
	mv	a3,a5
	li	a4,99
	beq	a3,a4,.L6
	mv	a4,a5
	li	a5,100
	beq	a4,a5,.L7
	j	.L8
.L6:
	lw	a5,-48(s0)
	ld	a4,-72(s0)
	add	a4,a4,a5
	ld	a5,-40(s0)
	addi	a3,a5,8
	sd	a3,-40(s0)
	ld	a5,0(a5)
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,-48(s0)
	addiw	a5,a5,1
	sw	a5,-48(s0)
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
	j	.L8
.L7:
	lw	a5,-48(s0)
	ld	a4,-72(s0)
	add	a5,a4,a5
	addi	a4,s0,-32
	li	a2,10
	mv	a1,a4
	mv	a0,a5
	call	libmin_strtol@plt
	mv	a3,a0
	ld	a5,-40(s0)
	addi	a4,a5,8
	sd	a4,-40(s0)
	ld	a5,0(a5)
	sext.w	a4,a3
	sw	a4,0(a5)
	ld	a4,-32(s0)
	lw	a5,-48(s0)
	ld	a3,-72(s0)
	add	a5,a3,a5
	sub	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-48(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,-48(s0)
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
	j	.L8
.L4:
	lw	a5,-48(s0)
	ld	a4,-72(s0)
	add	a5,a4,a5
	addi	a4,s0,-32
	li	a2,16
	mv	a1,a4
	mv	a0,a5
	call	libmin_strtol@plt
	mv	a3,a0
	ld	a5,-40(s0)
	addi	a4,a5,8
	sd	a4,-40(s0)
	ld	a5,0(a5)
	sext.w	a4,a3
	sw	a4,0(a5)
	ld	a4,-32(s0)
	lw	a5,-48(s0)
	ld	a3,-72(s0)
	add	a5,a3,a5
	sub	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-48(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,-48(s0)
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
	j	.L8
.L3:
	lw	a5,-48(s0)
	addiw	a5,a5,1
	sw	a5,-48(s0)
.L8:
	lw	a5,-52(s0)
	addiw	a5,a5,1
	sw	a5,-52(s0)
.L2:
	ld	a5,-80(s0)
	beq	a5,zero,.L9
	lw	a5,-52(s0)
	ld	a4,-80(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	beq	a5,zero,.L9
	lw	a5,-48(s0)
	ld	a4,-72(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L10
.L9:
	lw	a5,-44(s0)
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L12
	call	__stack_chk_fail@plt
.L12:
	mv	a0,a4
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 144
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	libmin_sscanf, .-libmin_sscanf
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
