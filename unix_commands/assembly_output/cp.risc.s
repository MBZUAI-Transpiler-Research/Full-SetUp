	.file	"cp.c"
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
	.string	"\nUsage: cpcmd source destination"
	.align	3
.LC2:
	.string	"\nError opening file %s errno = %d\n"
	.align	3
.LC3:
	.string	"\nError in writing data to "
	.align	3
.LC4:
	.string	"\nError in closing file"
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
	sd	s1,56(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	li	t0,-8192
	add	sp,sp,t0
	mv	a4,a0
	li	a5,-8192
	addi	a5,a5,-32
	add	a5,a5,s0
	sd	a1,-48(a5)
	li	a5,-8192
	addi	a5,a5,-32
	add	a5,a5,s0
	sw	a4,-36(a5)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -40(s0)
	li	a4, 0
	li	a5,-8192
	addi	a5,a5,-32
	add	a5,a5,s0
	lw	a5,-36(a5)
	sext.w	a4,a5
	li	a5,3
	bne	a4,a5,.L2
	li	a5,-8192
	addi	a5,a5,-32
	add	a5,a5,s0
	ld	a5,-48(a5)
	addi	a5,a5,8
	ld	a4,0(a5)
	lla	a5,.LC0
	bne	a4,a5,.L3
.L2:
	lla	a0,.LC1
	call	puts@plt
	li	a0,1
	call	exit@plt
.L3:
	li	a5,-8192
	addi	a5,a5,-32
	add	a5,a5,s0
	ld	a5,-48(a5)
	addi	a5,a5,8
	ld	a4,0(a5)
	li	a5,-8192
	addi	a5,a5,-32
	add	s1,a5,s0
	li	a1,0
	mv	a0,a4
	call	open@plt
	mv	a5,a0
	sw	a5,-20(s1)
	li	a5,-8192
	addi	a5,a5,-32
	add	a5,a5,s0
	lw	a5,-20(a5)
	sext.w	a4,a5
	li	a5,-1
	bne	a4,a5,.L4
	li	a5,-8192
	addi	a5,a5,-32
	add	a5,a5,s0
	ld	a5,-48(a5)
	addi	a5,a5,8
	ld	s1,0(a5)
	call	__errno_location@plt
	mv	a5,a0
	lw	a5,0(a5)
	mv	a2,a5
	mv	a1,s1
	lla	a0,.LC2
	call	printf@plt
	li	a0,1
	call	exit@plt
.L4:
	li	a5,-8192
	addi	a5,a5,-32
	add	a5,a5,s0
	ld	a5,-48(a5)
	addi	a5,a5,16
	ld	a4,0(a5)
	li	a5,-8192
	addi	a5,a5,-32
	add	s1,a5,s0
	li	a2,438
	li	a1,577
	mv	a0,a4
	call	open@plt
	mv	a5,a0
	sw	a5,-16(s1)
	li	a5,-8192
	addi	a5,a5,-32
	add	a5,a5,s0
	lw	a5,-16(a5)
	sext.w	a4,a5
	li	a5,-1
	bne	a4,a5,.L7
	li	a5,-8192
	addi	a5,a5,-32
	add	a5,a5,s0
	ld	a5,-48(a5)
	addi	a5,a5,16
	ld	s1,0(a5)
	call	__errno_location@plt
	mv	a5,a0
	lw	a5,0(a5)
	mv	a2,a5
	mv	a1,s1
	lla	a0,.LC2
	call	printf@plt
	li	a0,1
	call	exit@plt
.L8:
	li	a5,-8192
	addi	a5,a5,-32
	add	a5,a5,s0
	lw	a3,-12(a5)
	li	a5,-8192
	addi	a5,a5,-8
	addi	a5,a5,-32
	add	a4,a5,s0
	li	a5,-8192
	addi	a5,a5,-32
	add	a5,a5,s0
	lw	a5,-16(a5)
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	write@plt
	mv	a4,a0
	li	a5,-8192
	addi	a5,a5,-32
	add	a5,a5,s0
	lw	a5,-12(a5)
	beq	a4,a5,.L7
	lla	a0,.LC3
	call	puts@plt
.L7:
	li	a5,-8192
	addi	a5,a5,-8
	addi	a5,a5,-32
	add	a4,a5,s0
	li	a5,-8192
	addi	a5,a5,-32
	add	a5,a5,s0
	lw	a5,-20(a5)
	li	a2,1024
	mv	a1,a4
	mv	a0,a5
	call	read@plt
	mv	a4,a0
	li	a5,-8192
	addi	a5,a5,-32
	add	a5,a5,s0
	sw	a4,-12(a5)
	li	a5,-8192
	addi	a5,a5,-32
	add	a5,a5,s0
	lw	a5,-12(a5)
	sext.w	a5,a5
	bgt	a5,zero,.L8
	li	a5,-8192
	addi	a5,a5,-32
	add	a5,a5,s0
	lw	a5,-20(a5)
	mv	a0,a5
	call	close@plt
	mv	a5,a0
	mv	a4,a5
	li	a5,-1
	bne	a4,a5,.L9
	lla	a0,.LC4
	call	puts@plt
.L9:
	li	a5,-8192
	addi	a5,a5,-32
	add	a5,a5,s0
	lw	a5,-16(a5)
	mv	a0,a5
	call	close@plt
	mv	a5,a0
	mv	a4,a5
	li	a5,-1
	bne	a4,a5,.L10
	lla	a0,.LC4
	call	puts@plt
.L10:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -40(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L12
	call	__stack_chk_fail@plt
.L12:
	mv	a0,a4
	li	t0,8192
	add	sp,sp,t0
	.cfi_def_cfa 2, 80
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	ld	s1,56(sp)
	.cfi_restore 9
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
