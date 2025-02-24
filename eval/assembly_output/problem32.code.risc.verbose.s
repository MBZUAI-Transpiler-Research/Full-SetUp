	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -O0 -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# n, n
# code.c:4:     if (n < 2) return false;
	ld	a4,-40(s0)		# tmp138, n
	li	a5,1		# tmp139,
	bgt	a4,a5,.L2	#, tmp138, tmp139,
# code.c:4:     if (n < 2) return false;
	li	a5,0		# _4,
# code.c:4:     if (n < 2) return false;
	j	.L3		#
.L2:
# code.c:5:     for (long long i = 2; i * i <= n; i++)
	li	a5,2		# tmp140,
	sd	a5,-24(s0)	# tmp140, i
# code.c:5:     for (long long i = 2; i * i <= n; i++)
	j	.L4		#
.L6:
# code.c:6:         if (n % i == 0) return false;
	ld	a4,-40(s0)		# tmp141, n
	ld	a5,-24(s0)		# tmp142, i
	rem	a5,a4,a5	# tmp142, _1, tmp141
# code.c:6:         if (n % i == 0) return false;
	bne	a5,zero,.L5	#, _1,,
# code.c:6:         if (n % i == 0) return false;
	li	a5,0		# _4,
# code.c:6:         if (n % i == 0) return false;
	j	.L3		#
.L5:
# code.c:5:     for (long long i = 2; i * i <= n; i++)
	ld	a5,-24(s0)		# tmp144, i
	addi	a5,a5,1	#, tmp143, tmp144
	sd	a5,-24(s0)	# tmp143, i
.L4:
# code.c:5:     for (long long i = 2; i * i <= n; i++)
	ld	a5,-24(s0)		# tmp145, i
	mul	a5,a5,a5	# _2, tmp145, tmp145
# code.c:5:     for (long long i = 2; i * i <= n; i++)
	ld	a4,-40(s0)		# tmp146, n
	bge	a4,a5,.L6	#, tmp146, _2,
# code.c:7:     return true;
	li	a5,1		# _4,
.L3:
# code.c:8: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
