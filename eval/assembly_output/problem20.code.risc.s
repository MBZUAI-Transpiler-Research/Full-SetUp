	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"zero"
	.align	3
.LC1:
	.string	"one"
	.align	3
.LC2:
	.string	"two"
	.align	3
.LC3:
	.string	"three"
	.align	3
.LC4:
	.string	"four"
	.align	3
.LC5:
	.string	"five"
	.align	3
.LC6:
	.string	"six"
	.align	3
.LC7:
	.string	"seven"
	.align	3
.LC8:
	.string	"eight"
	.align	3
.LC9:
	.string	"nine"
	.data
	.align	3
.LC11:
	.dword	.LC0
	.dword	.LC1
	.dword	.LC2
	.dword	.LC3
	.dword	.LC4
	.dword	.LC5
	.dword	.LC6
	.dword	.LC7
	.dword	.LC8
	.dword	.LC9
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-192
	.cfi_def_cfa_offset 192
	sd	ra,184(sp)
	sd	s0,176(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,192
	.cfi_def_cfa 8, 0
	sd	a0,-184(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	sd	zero,-152(s0)
	sd	zero,-144(s0)
	sd	zero,-136(s0)
	sd	zero,-128(s0)
	sd	zero,-120(s0)
	lla	a5,.LC11
	ld	t3,0(a5)
	ld	t1,8(a5)
	ld	a7,16(a5)
	ld	a6,24(a5)
	ld	a0,32(a5)
	ld	a1,40(a5)
	ld	a2,48(a5)
	ld	a3,56(a5)
	ld	a4,64(a5)
	ld	a5,72(a5)
	sd	t3,-112(s0)
	sd	t1,-104(s0)
	sd	a7,-96(s0)
	sd	a6,-88(s0)
	sd	a0,-80(s0)
	sd	a1,-72(s0)
	sd	a2,-64(s0)
	sd	a3,-56(s0)
	sd	a4,-48(s0)
	sd	a5,-40(s0)
	sw	zero,-168(s0)
	ld	a5,-184(s0)
	lbu	a5,0(a5)
	beq	a5,zero,.L2
.L10:
	sw	zero,-164(s0)
	j	.L3
.L5:
	lw	a5,-164(s0)
	ld	a4,-184(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	lw	a5,-164(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-16(a5)
	lw	a5,-164(s0)
	addiw	a5,a5,1
	sw	a5,-164(s0)
.L3:
	lw	a5,-164(s0)
	ld	a4,-184(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,32
	beq	a4,a5,.L4
	lw	a5,-164(s0)
	ld	a4,-184(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L5
.L4:
	lw	a5,-164(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	zero,-16(a5)
	sw	zero,-160(s0)
	j	.L6
.L9:
	lw	a5,-160(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a4,-96(a5)
	addi	a5,s0,-32
	mv	a1,a4
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	bne	a5,zero,.L7
	lw	a5,-160(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-136(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	lw	a5,-160(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a4,-136(a5)
	j	.L8
.L7:
	lw	a5,-160(s0)
	addiw	a5,a5,1
	sw	a5,-160(s0)
.L6:
	lw	a5,-160(s0)
	sext.w	a4,a5
	li	a5,9
	ble	a4,a5,.L9
.L8:
	lw	a5,-164(s0)
	addi	a5,a5,1
	ld	a4,-184(s0)
	add	a5,a4,a5
	sd	a5,-184(s0)
	ld	a5,-184(s0)
	addi	a5,a5,-1
	lbu	a5,0(a5)
	bne	a5,zero,.L10
.L2:
	sw	zero,-164(s0)
	j	.L11
.L16:
	sw	zero,-160(s0)
	j	.L12
.L15:
	sw	zero,-156(s0)
	j	.L13
.L14:
	lw	a5,-164(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a4,-96(a5)
	lw	a5,-156(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	lla	a3,out.0
	lw	a5,-168(s0)
	add	a5,a3,a5
	sb	a4,0(a5)
	lw	a5,-156(s0)
	addiw	a5,a5,1
	sw	a5,-156(s0)
	lw	a5,-168(s0)
	addiw	a5,a5,1
	sw	a5,-168(s0)
.L13:
	lw	a5,-164(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a4,-96(a5)
	lw	a5,-156(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L14
	lw	a5,-168(s0)
	addiw	a4,a5,1
	sw	a4,-168(s0)
	lla	a4,out.0
	add	a5,a4,a5
	li	a4,32
	sb	a4,0(a5)
	lw	a5,-160(s0)
	addiw	a5,a5,1
	sw	a5,-160(s0)
.L12:
	lw	a5,-164(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,-136(a5)
	lw	a5,-160(s0)
	sext.w	a5,a5
	blt	a5,a4,.L15
	lw	a5,-164(s0)
	addiw	a5,a5,1
	sw	a5,-164(s0)
.L11:
	lw	a5,-164(s0)
	sext.w	a4,a5
	li	a5,9
	ble	a4,a5,.L16
	lw	a5,-168(s0)
	sext.w	a5,a5
	ble	a5,zero,.L17
	lw	a5,-168(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	lla	a4,out.0
	add	a5,a4,a5
	sb	zero,0(a5)
	j	.L18
.L17:
	lla	a5,out.0
	sb	zero,0(a5)
.L18:
	lla	a5,out.0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L20
	call	__stack_chk_fail@plt
.L20:
	mv	a0,a4
	ld	ra,184(sp)
	.cfi_restore 1
	ld	s0,176(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 192
	addi	sp,sp,192
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.local	out.0
	.comm	out.0,1000,8
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
