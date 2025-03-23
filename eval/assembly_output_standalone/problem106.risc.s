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
	.align	3
.LC1:
	.string	"One"
	.align	3
.LC2:
	.string	"Two"
	.align	3
.LC3:
	.string	"Three"
	.align	3
.LC4:
	.string	"Four"
	.align	3
.LC5:
	.string	"Five"
	.align	3
.LC6:
	.string	"Six"
	.align	3
.LC7:
	.string	"Seven"
	.align	3
.LC8:
	.string	"Eight"
	.align	3
.LC9:
	.string	"Nine"
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
.LFB6:
	.cfi_startproc
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sd	ra,152(sp)
	sd	s0,144(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,160
	.cfi_def_cfa 8, 0
	sd	a0,-136(s0)
	mv	a5,a1
	sd	a2,-152(s0)
	sd	a3,-160(s0)
	sw	a5,-140(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
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
	sd	t3,-104(s0)
	sd	t1,-96(s0)
	sd	a7,-88(s0)
	sd	a6,-80(s0)
	sd	a0,-72(s0)
	sd	a1,-64(s0)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	sd	a5,-32(s0)
	sw	zero,-116(s0)
	j	.L2
.L6:
	sw	zero,-112(s0)
	j	.L3
.L5:
	lw	a5,-112(s0)
	slli	a5,a5,2
	ld	a4,-136(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-112(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-136(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	ble	a4,a5,.L4
	lw	a5,-112(s0)
	slli	a5,a5,2
	ld	a4,-136(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-108(s0)
	lw	a5,-112(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-136(s0)
	add	a4,a4,a5
	lw	a5,-112(s0)
	slli	a5,a5,2
	ld	a3,-136(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-112(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-136(s0)
	add	a5,a4,a5
	lw	a4,-108(s0)
	sw	a4,0(a5)
.L4:
	lw	a5,-112(s0)
	addiw	a5,a5,1
	sw	a5,-112(s0)
.L3:
	lw	a5,-140(s0)
	mv	a4,a5
	lw	a5,-116(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-112(s0)
	sext.w	a5,a5
	blt	a5,a4,.L5
	lw	a5,-116(s0)
	addiw	a5,a5,1
	sw	a5,-116(s0)
.L2:
	lw	a5,-140(s0)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-116(s0)
	sext.w	a5,a5
	blt	a5,a4,.L6
	ld	a5,-160(s0)
	sw	zero,0(a5)
	lw	a5,-140(s0)
	addiw	a5,a5,-1
	sw	a5,-116(s0)
	j	.L7
.L9:
	lw	a5,-116(s0)
	slli	a5,a5,2
	ld	a4,-136(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	ble	a5,zero,.L8
	lw	a5,-116(s0)
	slli	a5,a5,2
	ld	a4,-136(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a5
	li	a5,9
	bgt	a4,a5,.L8
	ld	a5,-160(s0)
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	ld	a5,-160(s0)
	sw	a4,0(a5)
.L8:
	lw	a5,-116(s0)
	addiw	a5,a5,-1
	sw	a5,-116(s0)
.L7:
	lw	a5,-116(s0)
	sext.w	a5,a5
	bge	a5,zero,.L9
	ld	a5,-160(s0)
	lw	a5,0(a5)
	slli	a5,a5,3
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	mv	a4,a5
	ld	a5,-152(s0)
	sd	a4,0(a5)
	lw	a5,-140(s0)
	addiw	a5,a5,-1
	sw	a5,-116(s0)
	sw	zero,-112(s0)
	j	.L10
.L13:
	lw	a5,-116(s0)
	slli	a5,a5,2
	ld	a4,-136(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	ble	a5,zero,.L11
	lw	a5,-116(s0)
	slli	a5,a5,2
	ld	a4,-136(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a5
	li	a5,9
	bgt	a4,a5,.L11
	lw	a5,-116(s0)
	slli	a5,a5,2
	ld	a4,-136(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	ld	a5,-152(s0)
	ld	a4,0(a5)
	lw	a5,-112(s0)
	addiw	a2,a5,1
	sw	a2,-112(s0)
	slli	a5,a5,3
	add	a4,a4,a5
	slli	a5,a3,3
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,-88(a5)
	sd	a5,0(a4)
.L11:
	lw	a5,-116(s0)
	addiw	a5,a5,-1
	sw	a5,-116(s0)
.L10:
	lw	a5,-116(s0)
	sext.w	a5,a5
	blt	a5,zero,.L15
	ld	a5,-160(s0)
	lw	a4,0(a5)
	lw	a5,-112(s0)
	sext.w	a5,a5
	blt	a5,a4,.L13
.L15:
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L14
	call	__stack_chk_fail@plt
.L14:
	ld	ra,152(sp)
	.cfi_restore 1
	ld	s0,144(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 160
	addi	sp,sp,160
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
