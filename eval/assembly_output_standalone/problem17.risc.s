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
.LFB0:
	.cfi_startproc
	addi	sp,sp,-1088
	.cfi_def_cfa_offset 1088
	sd	ra,1080(sp)
	sd	s0,1072(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,1088
	.cfi_def_cfa 8, 0
	sd	a0,-1080(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	sw	zero,-1056(s0)
	addi	a5,s0,-1048
	li	a4,1024
	mv	a2,a4
	li	a1,0
	mv	a0,a5
	call	memset@plt
	sw	zero,-1052(s0)
	j	.L2
.L4:
	lw	a5,-1052(s0)
	ld	a4,-1080(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a0,a5
	call	tolower@plt
	mv	a5,a0
	sb	a5,-1057(s0)
	lbu	a5,-1057(s0)
	sext.w	a5,a5
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1032(a5)
	bne	a5,zero,.L3
	call	__ctype_b_loc@plt
	mv	a5,a0
	ld	a4,0(a5)
	lbu	a5,-1057(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,1024
	sext.w	a5,a5
	beq	a5,zero,.L3
	lbu	a5,-1057(s0)
	sext.w	a5,a5
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a4,1
	sw	a4,-1032(a5)
	lw	a5,-1056(s0)
	addiw	a5,a5,1
	sw	a5,-1056(s0)
.L3:
	lw	a5,-1052(s0)
	addiw	a5,a5,1
	sw	a5,-1052(s0)
.L2:
	lw	a5,-1052(s0)
	ld	a4,-1080(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L4
	lw	a5,-1056(s0)
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L6
	call	__stack_chk_fail@plt
.L6:
	mv	a0,a4
	ld	ra,1080(sp)
	.cfi_restore 1
	ld	s0,1072(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 1088
	addi	sp,sp,1088
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
