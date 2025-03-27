	.file	"libmin_strcspn.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.type	__strchrnul, @function
__strchrnul:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	mv	a5,a1
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	andi	a5,a5,0xff
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	sext.w	a5,a5
	bne	a5,zero,.L4
	ld	a0,-40(s0)
	call	libmin_strlen@plt
	mv	a4,a0
	ld	a5,-40(s0)
	add	a5,a5,a4
	j	.L3
.L7:
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	beq	a5,zero,.L5
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	sext.w	a4,a5
	lw	a5,-44(s0)
	sext.w	a5,a5
	bne	a5,a4,.L6
.L5:
	ld	a5,-40(s0)
	j	.L3
.L6:
	ld	a5,-40(s0)
	addi	a5,a5,1
	sd	a5,-40(s0)
.L4:
	ld	a5,-40(s0)
	andi	a5,a5,7
	bne	a5,zero,.L7
	lw	a4,-44(s0)
	lla	a5,.LC0
	ld	a5,0(a5)
	mul	a5,a4,a5
	sd	a5,-24(s0)
	ld	a5,-40(s0)
	sd	a5,-32(s0)
	j	.L8
.L10:
	ld	a5,-32(s0)
	addi	a5,a5,8
	sd	a5,-32(s0)
.L8:
	ld	a5,-32(s0)
	ld	a4,0(a5)
	lla	a5,.LC1
	ld	a5,0(a5)
	add	a4,a4,a5
	ld	a5,-32(s0)
	ld	a5,0(a5)
	not	a5,a5
	and	a4,a4,a5
	lla	a5,.LC2
	ld	a5,0(a5)
	and	a5,a4,a5
	bne	a5,zero,.L9
	ld	a5,-32(s0)
	ld	a4,0(a5)
	ld	a5,-24(s0)
	xor	a4,a4,a5
	lla	a5,.LC1
	ld	a5,0(a5)
	add	a4,a4,a5
	ld	a5,-32(s0)
	ld	a3,0(a5)
	ld	a5,-24(s0)
	xor	a5,a3,a5
	not	a5,a5
	and	a4,a4,a5
	lla	a5,.LC2
	ld	a5,0(a5)
	and	a5,a4,a5
	beq	a5,zero,.L10
.L9:
	ld	a5,-32(s0)
	sd	a5,-40(s0)
	j	.L11
.L13:
	ld	a5,-40(s0)
	addi	a5,a5,1
	sd	a5,-40(s0)
.L11:
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	beq	a5,zero,.L12
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	sext.w	a4,a5
	lw	a5,-44(s0)
	sext.w	a5,a5
	bne	a5,a4,.L13
.L12:
	ld	a5,-40(s0)
.L3:
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
.LFE3:
	.size	__strchrnul, .-__strchrnul
	.align	1
	.globl	libmin_strcspn
	.type	libmin_strcspn, @function
libmin_strcspn:
.LFB4:
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
	ld	a5,-80(s0)
	lbu	a5,0(a5)
	beq	a5,zero,.L15
	ld	a5,-80(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	bne	a5,zero,.L16
.L15:
	ld	a5,-80(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a1,a5
	ld	a0,-72(s0)
	call	__strchrnul
	mv	a4,a0
	ld	a5,-64(s0)
	sub	a5,a4,a5
	j	.L24
.L16:
	addi	a5,s0,-56
	li	a2,32
	li	a1,0
	mv	a0,a5
	call	libmin_memset@plt
	j	.L18
.L20:
	ld	a5,-80(s0)
	addi	a5,a5,1
	sd	a5,-80(s0)
.L18:
	ld	a5,-80(s0)
	lbu	a5,0(a5)
	beq	a5,zero,.L21
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
	bne	a5,zero,.L20
	j	.L21
.L23:
	ld	a5,-72(s0)
	addi	a5,a5,1
	sd	a5,-72(s0)
.L21:
	ld	a5,-72(s0)
	lbu	a5,0(a5)
	beq	a5,zero,.L22
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
	beq	a5,zero,.L23
.L22:
	ld	a4,-72(s0)
	ld	a5,-64(s0)
	sub	a5,a4,a5
.L24:
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L25
	call	__stack_chk_fail@plt
.L25:
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
.LFE4:
	.size	libmin_strcspn, .-libmin_strcspn
	.section	.rodata
	.align	3
.LC0:
	.dword	72340172838076673
	.align	3
.LC1:
	.dword	-72340172838076673
	.align	3
.LC2:
	.dword	-9187201950435737472
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
