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
	sw	zero,-20(s0)
	sw	zero,-36(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	j	.L2
.L13:
	lw	a5,-28(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,32
	beq	a4,a5,.L3
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
	j	.L4
.L3:
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,1
	ble	a4,a5,.L5
	li	a5,1
	sb	a5,-37(s0)
	li	a5,2
	sw	a5,-24(s0)
	j	.L6
.L9:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	remw	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L7
	sb	zero,-37(s0)
	j	.L10
.L7:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L6:
	lw	a5,-24(s0)
	mulw	a5,a5,a5
	sext.w	a4,a5
	lw	a5,-36(s0)
	sext.w	a5,a5
	bge	a5,a4,.L9
	j	.L10
.L5:
	sb	zero,-37(s0)
.L10:
	lbu	a5,-37(s0)
	andi	a5,a5,0xff
	beq	a5,zero,.L11
	lw	a5,-32(s0)
	sext.w	a5,a5
	ble	a5,zero,.L12
	lw	a5,-32(s0)
	addiw	a4,a5,1
	sw	a4,-32(s0)
	mv	a4,a5
	ld	a5,-64(s0)
	add	a5,a5,a4
	li	a4,32
	sb	a4,0(a5)
.L12:
	lw	a5,-32(s0)
	ld	a4,-64(s0)
	add	a3,a4,a5
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	sub	a5,a4,a5
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a4,-36(s0)
	mv	a2,a4
	mv	a1,a5
	mv	a0,a3
	call	memcpy@plt
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	addw	a5,a4,a5
	sw	a5,-32(s0)
.L11:
	sw	zero,-36(s0)
.L4:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L2:
	lw	a5,-28(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L13
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,1
	ble	a4,a5,.L14
	li	a5,1
	sb	a5,-37(s0)
	li	a5,2
	sw	a5,-24(s0)
	j	.L15
.L18:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	remw	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L16
	sb	zero,-37(s0)
	j	.L19
.L16:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L15:
	lw	a5,-24(s0)
	mulw	a5,a5,a5
	sext.w	a4,a5
	lw	a5,-36(s0)
	sext.w	a5,a5
	bge	a5,a4,.L18
	j	.L19
.L14:
	sb	zero,-37(s0)
.L19:
	lbu	a5,-37(s0)
	andi	a5,a5,0xff
	beq	a5,zero,.L20
	lw	a5,-32(s0)
	sext.w	a5,a5
	ble	a5,zero,.L21
	lw	a5,-32(s0)
	addiw	a4,a5,1
	sw	a4,-32(s0)
	mv	a4,a5
	ld	a5,-64(s0)
	add	a5,a5,a4
	li	a4,32
	sb	a4,0(a5)
.L21:
	lw	a5,-32(s0)
	ld	a4,-64(s0)
	add	a3,a4,a5
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	sub	a5,a4,a5
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a4,-36(s0)
	mv	a2,a4
	mv	a1,a5
	mv	a0,a3
	call	memcpy@plt
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	addw	a5,a4,a5
	sw	a5,-32(s0)
.L20:
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
