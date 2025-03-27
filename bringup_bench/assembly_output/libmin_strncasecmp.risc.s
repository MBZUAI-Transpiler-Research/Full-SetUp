	.file	"libmin_strncasecmp.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	libmin_strncasecmp
	.type	libmin_strncasecmp, @function
libmin_strncasecmp:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	ld	a5,-40(s0)
	sd	a5,-32(s0)
	ld	a5,-48(s0)
	sd	a5,-24(s0)
	ld	a5,-56(s0)
	addi	a4,a5,-1
	sd	a4,-56(s0)
	bne	a5,zero,.L4
	li	a5,0
	j	.L3
.L6:
	ld	a5,-32(s0)
	addi	a5,a5,1
	sd	a5,-32(s0)
	ld	a5,-24(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
	ld	a5,-56(s0)
	addi	a5,a5,-1
	sd	a5,-56(s0)
.L4:
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	beq	a5,zero,.L5
	ld	a5,-24(s0)
	lbu	a5,0(a5)
	beq	a5,zero,.L5
	ld	a5,-56(s0)
	beq	a5,zero,.L5
	ld	a5,-32(s0)
	lbu	a4,0(a5)
	ld	a5,-24(s0)
	lbu	a5,0(a5)
	beq	a4,a5,.L6
	la	a5,_pctype
	ld	a4,0(a5)
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L7
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	addiw	a5,a5,32
	sext.w	a4,a5
	j	.L8
.L7:
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	sext.w	a4,a5
.L8:
	la	a5,_pctype
	ld	a3,0(a5)
	ld	a5,-24(s0)
	lbu	a5,0(a5)
	slli	a5,a5,1
	add	a5,a3,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L9
	ld	a5,-24(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	addiw	a5,a5,32
	sext.w	a5,a5
	j	.L10
.L9:
	ld	a5,-24(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
.L10:
	beq	a4,a5,.L6
.L5:
	la	a5,_pctype
	ld	a4,0(a5)
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L11
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	addiw	a5,a5,32
	sext.w	a4,a5
	j	.L12
.L11:
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	sext.w	a4,a5
.L12:
	la	a5,_pctype
	ld	a3,0(a5)
	ld	a5,-24(s0)
	lbu	a5,0(a5)
	slli	a5,a5,1
	add	a5,a3,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L13
	ld	a5,-24(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	addiw	a5,a5,32
	sext.w	a5,a5
	j	.L14
.L13:
	ld	a5,-24(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
.L14:
	subw	a5,a4,a5
	sext.w	a5,a5
.L3:
	mv	a0,a5
	ld	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	libmin_strncasecmp, .-libmin_strncasecmp
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
