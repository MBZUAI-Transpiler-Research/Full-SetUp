	.file	"code.c"
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
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	sw	zero,-48(s0)
	ld	a5,-56(s0)
	sd	a5,-32(s0)
	j	.L2
.L5:
	ld	a5,-32(s0)
	addi	a5,a5,1
	sd	a5,-32(s0)
.L3:
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	beq	a5,zero,.L4
	call	__ctype_b_loc@plt
	mv	a5,a0
	ld	a4,0(a5)
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a4,a5
	li	a5,4096
	addi	a5,a5,-2048
	and	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L4
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,45
	bne	a4,a5,.L5
.L4:
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	beq	a5,zero,.L16
	addi	a5,s0,-40
	li	a2,10
	mv	a1,a5
	ld	a0,-32(s0)
	call	strtol@plt
	mv	a5,a0
	sw	a5,-44(s0)
	ld	a5,-40(s0)
	ld	a4,-32(s0)
	beq	a4,a5,.L11
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,44
	beq	a4,a5,.L9
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L11
.L9:
	lw	a5,-48(s0)
	addiw	a4,a5,1
	sw	a4,-48(s0)
	lla	a4,out.0
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-44(s0)
	sw	a4,0(a5)
	j	.L10
.L12:
	ld	a5,-40(s0)
	addi	a5,a5,1
	sd	a5,-40(s0)
.L11:
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	beq	a5,zero,.L10
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,44
	bne	a4,a5,.L12
.L10:
	ld	a5,-40(s0)
	sd	a5,-32(s0)
.L2:
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L3
	j	.L7
.L16:
	nop
.L7:
	ld	a5,-64(s0)
	lw	a4,-48(s0)
	sw	a4,0(a5)
	lla	a5,out.0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L15
	call	__stack_chk_fail@plt
.L15:
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
.LFE6:
	.size	func0, .-func0
	.local	out.0
	.comm	out.0,1024,8
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
