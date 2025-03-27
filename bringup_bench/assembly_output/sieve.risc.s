	.file	"sieve.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.local	L_Prime
	.comm	L_Prime,8,8
	.local	N_Prime
	.comm	N_Prime,8,8
	.local	flags
	.comm	flags,8192,8
	.section	.rodata
	.align	3
.LC0:
	.string	"  %9ld   %8ld     %8ld\n"
	.text
	.align	1
	.type	SIEVE, @function
SIEVE:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	sd	s1,72(sp)
	sd	s2,64(sp)
	sd	s3,56(sp)
	sd	s4,48(sp)
	sd	s5,40(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sd	a0,-88(s0)
	sd	a1,-96(s0)
	li	s2,0
	ld	a5,-88(s0)
	addi	s4,a5,-1
	lla	a5,N_Prime
	sd	zero,0(a5)
	lla	a5,L_Prime
	sd	zero,0(a5)
	sd	zero,-72(s0)
	li	s5,0
	li	s1,0
	j	.L2
.L3:
	mv	a4,s1
	lla	a5,flags
	add	a5,a4,a5
	li	a4,1
	sb	a4,0(a5)
	addi	s1,s1,1
.L2:
	ble	s1,s4,.L3
	li	s1,0
	j	.L4
.L8:
	mv	a4,s1
	lla	a5,flags
	add	a5,a4,a5
	lbu	a5,0(a5)
	beq	a5,zero,.L5
	addi	s5,s5,1
	slli	a5,s1,1
	addi	s2,a5,3
	add	s3,s1,s2
	j	.L6
.L7:
	mv	a4,s3
	lla	a5,flags
	add	a5,a4,a5
	sb	zero,0(a5)
	add	s3,s3,s2
.L6:
	ble	s3,s4,.L7
.L5:
	addi	s1,s1,1
.L4:
	ble	s1,s4,.L8
	ld	a5,-72(s0)
	add	a5,a5,s5
	sd	a5,-72(s0)
	lla	a5,N_Prime
	ld	a4,-72(s0)
	sd	a4,0(a5)
	lla	a5,L_Prime
	sd	s2,0(a5)
	ld	a5,-96(s0)
	beq	a5,zero,.L9
	lla	a5,N_Prime
	ld	a4,0(a5)
	lla	a5,L_Prime
	ld	a5,0(a5)
	mv	a3,a5
	mv	a2,a4
	ld	a1,-88(s0)
	lla	a0,.LC0
	call	libmin_printf@plt
.L9:
	li	a5,0
	mv	a0,a5
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	ld	s1,72(sp)
	.cfi_restore 9
	ld	s2,64(sp)
	.cfi_restore 18
	ld	s3,56(sp)
	.cfi_restore 19
	ld	s4,48(sp)
	.cfi_restore 20
	ld	s5,40(sp)
	.cfi_restore 21
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	SIEVE, .-SIEVE
	.section	.rodata
	.align	3
.LC1:
	.string	"\n   Sieve of Eratosthenes (Scaled to 10 Iterations)\n"
	.align	3
.LC2:
	.string	"   Version 1.2b, 26 Sep 1992\n\n"
	.align	3
.LC3:
	.string	"   Array Size   Number   Last Prime\n"
	.align	3
.LC4:
	.string	"    (Bytes)   of Primes\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	lla	a0,.LC1
	call	libmin_printf@plt
	lla	a0,.LC2
	call	libmin_printf@plt
	lla	a0,.LC3
	call	libmin_printf@plt
	lla	a0,.LC4
	call	libmin_printf@plt
	li	a5,1024
	sd	a5,-32(s0)
	li	a5,1
	sd	a5,-24(s0)
	ld	a1,-24(s0)
	ld	a0,-32(s0)
	call	SIEVE
	call	libmin_success@plt
	li	a5,0
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
