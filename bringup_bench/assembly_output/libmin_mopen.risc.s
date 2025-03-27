	.file	"libmin_mopen.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"r"
	.align	3
.LC1:
	.string	"ERROR: libmin only support file reads\n"
	.text
	.align	1
	.globl	libmin_mopen
	.type	libmin_mopen, @function
libmin_mopen:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	lla	a1,.LC0
	ld	a0,-32(s0)
	call	libmin_strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L2
	lla	a0,.LC1
	call	libmin_printf@plt
	li	a0,1
	call	libmin_fail@plt
.L2:
	ld	a5,-24(s0)
	sw	zero,24(a5)
	nop
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	libmin_mopen, .-libmin_mopen
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
