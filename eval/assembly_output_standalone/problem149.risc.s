	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"Mercury"
	.align	3
.LC1:
	.string	"Venus"
	.align	3
.LC2:
	.string	"Earth"
	.align	3
.LC3:
	.string	"Mars"
	.align	3
.LC4:
	.string	"Jupiter"
	.align	3
.LC5:
	.string	"Saturn"
	.align	3
.LC6:
	.string	"Uranus"
	.align	3
.LC7:
	.string	"Neptune"
	.data
	.align	3
.LC9:
	.dword	.LC0
	.dword	.LC1
	.dword	.LC2
	.dword	.LC3
	.dword	.LC4
	.dword	.LC5
	.dword	.LC6
	.dword	.LC7
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sd	ra,136(sp)
	sd	s0,128(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,144
	.cfi_def_cfa 8, 0
	sd	a0,-120(s0)
	sd	a1,-128(s0)
	sd	a2,-136(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC9
	ld	a7,0(a5)
	ld	a6,8(a5)
	ld	a0,16(a5)
	ld	a1,24(a5)
	ld	a2,32(a5)
	ld	a3,40(a5)
	ld	a4,48(a5)
	ld	a5,56(a5)
	sd	a7,-88(s0)
	sd	a6,-80(s0)
	sd	a0,-72(s0)
	sd	a1,-64(s0)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	sd	a5,-32(s0)
	li	a5,-1
	sw	a5,-112(s0)
	li	a5,-1
	sw	a5,-108(s0)
	sw	zero,-104(s0)
	j	.L2
.L5:
	lw	a5,-104(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,-72(a5)
	ld	a1,-120(s0)
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	bne	a5,zero,.L3
	lw	a5,-104(s0)
	sw	a5,-112(s0)
.L3:
	lw	a5,-104(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,-72(a5)
	ld	a1,-128(s0)
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	bne	a5,zero,.L4
	lw	a5,-104(s0)
	sw	a5,-108(s0)
.L4:
	lw	a5,-104(s0)
	addiw	a5,a5,1
	sw	a5,-104(s0)
.L2:
	lw	a5,-104(s0)
	sext.w	a4,a5
	li	a5,7
	ble	a4,a5,.L5
	lw	a5,-112(s0)
	sext.w	a4,a5
	li	a5,-1
	beq	a4,a5,.L6
	lw	a5,-108(s0)
	sext.w	a4,a5
	li	a5,-1
	beq	a4,a5,.L6
	lw	a5,-112(s0)
	mv	a4,a5
	lw	a5,-108(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bne	a4,a5,.L7
.L6:
	ld	a5,-136(s0)
	sw	zero,0(a5)
	li	a5,0
	j	.L13
.L7:
	lw	a5,-112(s0)
	mv	a4,a5
	lw	a5,-108(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L9
	lw	a5,-112(s0)
	sw	a5,-100(s0)
	lw	a5,-108(s0)
	sw	a5,-112(s0)
	lw	a5,-100(s0)
	sw	a5,-108(s0)
.L9:
	lw	a5,-108(s0)
	mv	a4,a5
	lw	a5,-112(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	addiw	a5,a5,-1
	sext.w	a4,a5
	ld	a5,-136(s0)
	sw	a4,0(a5)
	ld	a5,-136(s0)
	lw	a5,0(a5)
	bgt	a5,zero,.L10
	ld	a5,-136(s0)
	sw	zero,0(a5)
	li	a5,0
	j	.L13
.L10:
	ld	a5,-136(s0)
	lw	a5,0(a5)
	slli	a5,a5,3
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-96(s0)
	lw	a5,-112(s0)
	addiw	a5,a5,1
	sw	a5,-104(s0)
	j	.L11
.L12:
	lw	a5,-104(s0)
	mv	a4,a5
	lw	a5,-112(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	slli	a5,a5,3
	addi	a5,a5,-8
	ld	a4,-96(s0)
	add	a4,a4,a5
	lw	a5,-104(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,-72(a5)
	sd	a5,0(a4)
	lw	a5,-104(s0)
	addiw	a5,a5,1
	sw	a5,-104(s0)
.L11:
	lw	a5,-104(s0)
	mv	a4,a5
	lw	a5,-108(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L12
	ld	a5,-96(s0)
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
	ld	ra,136(sp)
	.cfi_restore 1
	ld	s0,128(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 144
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
