	.file	"problem20.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB26:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	sw	zero,-52(s0)
	addi	a5,s0,-40
	mv	a0,a5
	call	__gmpz_init@plt
	addi	a5,s0,-40
	li	a1,100
	mv	a0,a5
	call	__gmpz_fac_ui@plt
	addi	a5,s0,-40
	mv	a2,a5
	li	a1,10
	li	a0,0
	call	__gmpz_get_str@plt
	sd	a0,-48(s0)
	sw	zero,-56(s0)
	j	.L2
.L3:
	lw	a5,-56(s0)
	ld	a4,-48(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	addiw	a5,a5,-48
	sext.w	a5,a5
	lw	a4,-52(s0)
	addw	a5,a4,a5
	sw	a5,-52(s0)
	lw	a5,-56(s0)
	addiw	a5,a5,1
	sw	a5,-56(s0)
.L2:
	lw	a5,-56(s0)
	ld	a4,-48(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L3
	lw	a5,-52(s0)
	mv	a1,a5
	lla	a0,.LC0
	call	printf@plt
	ld	a0,-48(s0)
	call	free@plt
	addi	a5,s0,-40
	mv	a0,a5
	call	__gmpz_clear@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L5
	call	__stack_chk_fail@plt
.L5:
	mv	a0,a4
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE26:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
