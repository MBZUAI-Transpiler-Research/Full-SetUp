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
	mv	a5,a0	# tmp138, n
	sw	a5,-36(s0)	# tmp139, n
# code.c:4:     for (int i = 2; i * i <= n; i++)
	li	a5,2		# tmp140,
	sw	a5,-20(s0)	# tmp140, i
# code.c:4:     for (int i = 2; i * i <= n; i++)
	j	.L2		#
.L5:
# code.c:5:         if (n % i == 0) return n / i;
	lw	a5,-36(s0)		# tmp143, n
	mv	a4,a5	# tmp142, tmp143
	lw	a5,-20(s0)		# tmp146, i
	remw	a5,a4,a5	# tmp145, tmp144, tmp142
	sext.w	a5,a5	# _1, tmp144
# code.c:5:         if (n % i == 0) return n / i;
	bne	a5,zero,.L3	#, _1,,
# code.c:5:         if (n % i == 0) return n / i;
	lw	a5,-36(s0)		# tmp150, n
	mv	a4,a5	# tmp149, tmp150
	lw	a5,-20(s0)		# tmp152, i
	divw	a5,a4,a5	# tmp151, tmp148, tmp149
	sext.w	a5,a5	# _4, tmp148
# code.c:5:         if (n % i == 0) return n / i;
	j	.L4		#
.L3:
# code.c:4:     for (int i = 2; i * i <= n; i++)
	lw	a5,-20(s0)		# tmp155, i
	addiw	a5,a5,1	#, tmp153, tmp154
	sw	a5,-20(s0)	# tmp153, i
.L2:
# code.c:4:     for (int i = 2; i * i <= n; i++)
	lw	a5,-20(s0)		# tmp158, i
	mulw	a5,a5,a5	# tmp156, tmp157, tmp157
	sext.w	a4,a5	# _2, tmp156
# code.c:4:     for (int i = 2; i * i <= n; i++)
	lw	a5,-36(s0)		# tmp160, n
	sext.w	a5,a5	# tmp161, tmp159
	bge	a5,a4,.L5	#, tmp161, tmp162,
# code.c:6:     return 1;
	li	a5,1		# _4,
.L4:
# code.c:7: }
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
