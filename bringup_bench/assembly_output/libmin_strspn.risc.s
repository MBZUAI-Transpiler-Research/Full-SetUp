	.file	"libmin_strspn.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	libmin_strspn
	.type	libmin_strspn, @function
libmin_strspn:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)
	sd	a1,-80(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	ld	a5,-72(s0)
	sd	a5,-64(s0)
	sd	zero,-56(s0)
	sd	zero,-48(s0)
	sd	zero,-40(s0)
	sd	zero,-32(s0)
	ld	a5,-80(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L2
	li	a5,0
	j	.L13
.L2:
	ld	a5,-80(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	bne	a5,zero,.L7
	j	.L5
.L6:
	ld	a5,-72(s0)
	addi	a5,a5,1
	sd	a5,-72(s0)
.L5:
	ld	a5,-72(s0)
	lbu	a4,0(a5)
	ld	a5,-80(s0)
	lbu	a5,0(a5)
	beq	a4,a5,.L6
	ld	a4,-72(s0)
	ld	a5,-64(s0)
	sub	a5,a4,a5
	j	.L13
.L9:
	ld	a5,-80(s0)
	addi	a5,a5,1
	sd	a5,-80(s0)
.L7:
	ld	a5,-80(s0)
	lbu	a5,0(a5)
	beq	a5,zero,.L10
	ld	a5,-80(s0)
	lbu	a5,0(a5)
	srliw	a5,a5,6
	andi	a4,a5,0xff
	mv	a5,a4
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a3,-40(a5)
	ld	a5,-80(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,63
	sext.w	a5,a5
	mv	a2,a5
	li	a5,1
	sll	a5,a5,a2
	or	a3,a3,a5
	slli	a5,a4,3
	addi	a5,a5,-16
	add	a5,a5,s0
	sd	a3,-40(a5)
	slli	a5,a4,3
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,-40(a5)
	bne	a5,zero,.L9
	j	.L10
.L12:
	ld	a5,-72(s0)
	addi	a5,a5,1
	sd	a5,-72(s0)
.L10:
	ld	a5,-72(s0)
	lbu	a5,0(a5)
	beq	a5,zero,.L11
	ld	a5,-72(s0)
	lbu	a5,0(a5)
	srliw	a5,a5,6
	andi	a5,a5,0xff
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,-40(a5)
	ld	a4,-72(s0)
	lbu	a4,0(a4)
	sext.w	a4,a4
	andi	a4,a4,63
	sext.w	a4,a4
	srl	a5,a5,a4
	andi	a5,a5,1
	bne	a5,zero,.L12
.L11:
	ld	a4,-72(s0)
	ld	a5,-64(s0)
	sub	a5,a4,a5
.L13:
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L14
	call	__stack_chk_fail@plt
.L14:
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
.LFE3:
	.size	libmin_strspn, .-libmin_strspn
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
