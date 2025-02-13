	.file	"mkdir.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"--help"
	.align	3
.LC1:
	.string	"\nusage: rm FileTodelete"
	.align	3
.LC2:
	.string	"mkdir"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sd	a1,-80(s0)
	sw	a5,-68(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lw	a5,-68(s0)
	sext.w	a4,a5
	li	a5,2
	bne	a4,a5,.L2
	ld	a5,-80(s0)
	addi	a5,a5,8
	ld	a4,0(a5)
	lla	a5,.LC0
	bne	a4,a5,.L3
.L2:
	lla	a0,.LC1
	call	puts@plt
.L3:
	lla	a5,.LC2
	sd	a5,-56(s0)
	lla	a5,.LC2
	sd	a5,-48(s0)
	ld	a5,-80(s0)
	ld	a5,8(a5)
	sd	a5,-40(s0)
	sd	zero,-32(s0)
	ld	a1,-80(s0)
	ld	a0,-56(s0)
	call	execvp@plt
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L4
	call	__stack_chk_fail@plt
.L4:
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
