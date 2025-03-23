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
	addi	sp,sp,-272
	.cfi_def_cfa_offset 272
	sd	ra,264(sp)
	sd	s0,256(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,272
	.cfi_def_cfa 8, 0
	sd	a0,-264(s0)
	sd	a1,-272(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	sw	zero,-256(s0)
	j	.L2
.L3:
	lw	a5,-256(s0)
	ld	a4,-264(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	lw	a5,-256(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-216(a5)
	lw	a5,-256(s0)
	addiw	a5,a5,1
	sw	a5,-256(s0)
.L2:
	lw	a5,-256(s0)
	ld	a4,-264(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,47
	bne	a4,a5,.L3
	lw	a5,-256(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	zero,-216(a5)
	addi	a5,s0,-232
	mv	a0,a5
	call	atoi@plt
	mv	a5,a0
	sw	a5,-248(s0)
	sw	zero,-252(s0)
	lw	a5,-256(s0)
	addiw	a5,a5,1
	sw	a5,-256(s0)
	j	.L4
.L5:
	lw	a5,-256(s0)
	ld	a4,-264(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	lw	a5,-252(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-112(a5)
	lw	a5,-256(s0)
	addiw	a5,a5,1
	sw	a5,-256(s0)
	lw	a5,-252(s0)
	addiw	a5,a5,1
	sw	a5,-252(s0)
.L4:
	lw	a5,-256(s0)
	ld	a4,-264(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L5
	lw	a5,-252(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	zero,-112(a5)
	addi	a5,s0,-128
	mv	a0,a5
	call	atoi@plt
	mv	a5,a0
	sw	a5,-244(s0)
	sw	zero,-256(s0)
	j	.L6
.L7:
	lw	a5,-256(s0)
	ld	a4,-272(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	lw	a5,-256(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-216(a5)
	lw	a5,-256(s0)
	addiw	a5,a5,1
	sw	a5,-256(s0)
.L6:
	lw	a5,-256(s0)
	ld	a4,-272(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,47
	bne	a4,a5,.L7
	lw	a5,-256(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	zero,-216(a5)
	addi	a5,s0,-232
	mv	a0,a5
	call	atoi@plt
	mv	a5,a0
	sw	a5,-240(s0)
	sw	zero,-252(s0)
	lw	a5,-256(s0)
	addiw	a5,a5,1
	sw	a5,-256(s0)
	j	.L8
.L9:
	lw	a5,-256(s0)
	ld	a4,-272(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	lw	a5,-252(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-112(a5)
	lw	a5,-256(s0)
	addiw	a5,a5,1
	sw	a5,-256(s0)
	lw	a5,-252(s0)
	addiw	a5,a5,1
	sw	a5,-252(s0)
.L8:
	lw	a5,-256(s0)
	ld	a4,-272(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L9
	lw	a5,-252(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	zero,-112(a5)
	addi	a5,s0,-128
	mv	a0,a5
	call	atoi@plt
	mv	a5,a0
	sw	a5,-236(s0)
	lw	a5,-248(s0)
	mv	a4,a5
	lw	a5,-240(s0)
	mulw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-244(s0)
	mv	a3,a5
	lw	a5,-236(s0)
	mulw	a5,a3,a5
	sext.w	a5,a5
	remw	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L10
	li	a5,1
	j	.L12
.L10:
	li	a5,0
.L12:
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L13
	call	__stack_chk_fail@plt
.L13:
	mv	a0,a4
	ld	ra,264(sp)
	.cfi_restore 1
	ld	s0,256(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 272
	addi	sp,sp,272
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
