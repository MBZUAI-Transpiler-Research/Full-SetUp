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
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	s0,72(sp)
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	mv	a5,a1
	sd	a2,-72(s0)
	sw	a5,-60(s0)
	lla	a5,.LC0
	flw	fa5,0(a5)
	fsw	fa5,-36(s0)
	ld	a5,-56(s0)
	flw	fa5,0(a5)
	ld	a5,-72(s0)
	fsw	fa5,0(a5)
	ld	a5,-72(s0)
	addi	a5,a5,4
	ld	a4,-56(s0)
	flw	fa5,4(a4)
	fsw	fa5,0(a5)
	sw	zero,-32(s0)
	j	.L2
.L7:
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
	j	.L3
.L6:
	lw	a5,-32(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	flw	fa4,0(a5)
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fsub.s	fa5,fa4,fa5
	fabs.s	fa5,fa5
	fsw	fa5,-20(s0)
	flw	fa4,-20(s0)
	flw	fa5,-36(s0)
	flt.s	a5,fa4,fa5
	beq	a5,zero,.L4
	flw	fa5,-20(s0)
	fsw	fa5,-36(s0)
	lw	a5,-32(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	ld	a5,-72(s0)
	fsw	fa5,0(a5)
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a4,a4,a5
	ld	a5,-72(s0)
	addi	a5,a5,4
	flw	fa5,0(a4)
	fsw	fa5,0(a5)
.L4:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L3:
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L6
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L2:
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L7
	ld	a5,-72(s0)
	flw	fa4,0(a5)
	ld	a5,-72(s0)
	addi	a5,a5,4
	flw	fa5,0(a5)
	fgt.s	a5,fa4,fa5
	bne	a5,zero,.L11
	j	.L12
.L11:
	ld	a5,-72(s0)
	flw	fa5,0(a5)
	fsw	fa5,-24(s0)
	ld	a5,-72(s0)
	flw	fa5,4(a5)
	ld	a5,-72(s0)
	fsw	fa5,0(a5)
	ld	a5,-72(s0)
	addi	a5,a5,4
	flw	fa5,-24(s0)
	fsw	fa5,0(a5)
.L12:
	nop
	ld	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	2
.LC0:
	.word	2139095039
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
