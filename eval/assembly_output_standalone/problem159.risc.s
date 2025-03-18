	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	""
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-336
	.cfi_def_cfa_offset 336
	sd	ra,328(sp)
	sd	s0,320(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,336
	.cfi_def_cfa 8, 0
	sd	a0,-328(s0)
	mv	a5,a1
	sw	a5,-332(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC0
	sd	a5,-288(s0)
	sw	zero,-308(s0)
	sw	zero,-304(s0)
	j	.L2
.L8:
	addi	a5,s0,-280
	li	a4,256
	mv	a2,a4
	li	a1,0
	mv	a0,a5
	call	memset@plt
	sw	zero,-300(s0)
	sw	zero,-296(s0)
	j	.L3
.L5:
	lw	a5,-304(s0)
	slli	a5,a5,3
	ld	a4,-328(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-296(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a4,a5
	addi	a5,s0,-280
	mv	a1,a4
	mv	a0,a5
	call	strchr@plt
	mv	a5,a0
	bne	a5,zero,.L4
	addi	a5,s0,-280
	mv	a0,a5
	call	strlen@plt
	mv	a5,a0
	sw	a5,-292(s0)
	lw	a5,-304(s0)
	slli	a5,a5,3
	ld	a4,-328(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-296(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	lw	a5,-292(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-264(a5)
	lw	a5,-292(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	zero,-264(a5)
	lw	a5,-300(s0)
	addiw	a5,a5,1
	sw	a5,-300(s0)
.L4:
	lw	a5,-296(s0)
	addiw	a5,a5,1
	sw	a5,-296(s0)
.L3:
	lw	a5,-304(s0)
	slli	a5,a5,3
	ld	a4,-328(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-296(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L5
	lw	a5,-300(s0)
	mv	a4,a5
	lw	a5,-308(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bgt	a4,a5,.L6
	lw	a5,-300(s0)
	mv	a4,a5
	lw	a5,-308(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bne	a4,a5,.L7
	lw	a5,-304(s0)
	slli	a5,a5,3
	ld	a4,-328(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	ld	a1,-288(s0)
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	bge	a5,zero,.L7
.L6:
	lw	a5,-304(s0)
	slli	a5,a5,3
	ld	a4,-328(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	sd	a5,-288(s0)
	lw	a5,-300(s0)
	sw	a5,-308(s0)
.L7:
	lw	a5,-304(s0)
	addiw	a5,a5,1
	sw	a5,-304(s0)
.L2:
	lw	a5,-304(s0)
	mv	a4,a5
	lw	a5,-332(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L8
	ld	a5,-288(s0)
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L10
	call	__stack_chk_fail@plt
.L10:
	mv	a0,a4
	ld	ra,328(sp)
	.cfi_restore 1
	ld	s0,320(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 336
	addi	sp,sp,336
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
