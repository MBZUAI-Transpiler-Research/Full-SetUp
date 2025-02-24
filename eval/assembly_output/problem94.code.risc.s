	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"aeiouAEIOU"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
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
	lla	a5,.LC0
	sd	a5,-24(s0)
	sw	zero,-32(s0)
	j	.L2
.L10:
	lw	a5,-32(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-33(s0)
	call	__ctype_b_loc@plt
	mv	a5,a0
	ld	a4,0(a5)
	lbu	a5,-33(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,512
	sext.w	a5,a5
	beq	a5,zero,.L3
	lbu	a5,-33(s0)
	sext.w	a5,a5
	mv	a0,a5
	call	toupper@plt
	mv	a5,a0
	sb	a5,-33(s0)
	j	.L4
.L3:
	call	__ctype_b_loc@plt
	mv	a5,a0
	ld	a4,0(a5)
	lbu	a5,-33(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,256
	sext.w	a5,a5
	beq	a5,zero,.L4
	lbu	a5,-33(s0)
	sext.w	a5,a5
	mv	a0,a5
	call	tolower@plt
	mv	a5,a0
	sb	a5,-33(s0)
.L4:
	sw	zero,-28(s0)
	j	.L5
.L9:
	lw	a5,-28(s0)
	ld	a4,-24(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	lbu	a5,-33(s0)
	andi	a5,a5,0xff
	bne	a5,a4,.L6
	lw	a5,-28(s0)
	sext.w	a4,a5
	li	a5,9
	bgt	a4,a5,.L11
	lbu	a5,-33(s0)
	addiw	a5,a5,2
	sb	a5,-33(s0)
	j	.L11
.L6:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L5:
	lw	a5,-28(s0)
	ld	a4,-24(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L9
	j	.L8
.L11:
	nop
.L8:
	lw	a5,-32(s0)
	ld	a4,-64(s0)
	add	a5,a4,a5
	lbu	a4,-33(s0)
	sb	a4,0(a5)
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L2:
	lw	a5,-32(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L10
	lw	a5,-32(s0)
	ld	a4,-64(s0)
	add	a5,a4,a5
	sb	zero,0(a5)
	nop
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
