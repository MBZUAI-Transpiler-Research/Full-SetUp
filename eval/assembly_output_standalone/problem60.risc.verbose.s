	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
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
# eval/problem60//code.c:4:     for (int i = 2; i * i <= n; i++)
	li	a5,2		# tmp140,
	sw	a5,-20(s0)	# tmp140, i
# eval/problem60//code.c:4:     for (int i = 2; i * i <= n; i++)
	j	.L2		#
.L5:
# eval/problem60//code.c:5:         while (n % i == 0 && n > i) n = n / i;
	lw	a5,-36(s0)		# tmp144, n
	mv	a4,a5	# tmp143, tmp144
	lw	a5,-20(s0)		# tmp146, i
	divw	a5,a4,a5	# tmp145, tmp142, tmp143
	sw	a5,-36(s0)	# tmp142, n
.L3:
# eval/problem60//code.c:5:         while (n % i == 0 && n > i) n = n / i;
	lw	a5,-36(s0)		# tmp149, n
	mv	a4,a5	# tmp148, tmp149
	lw	a5,-20(s0)		# tmp152, i
	remw	a5,a4,a5	# tmp151, tmp150, tmp148
	sext.w	a5,a5	# _1, tmp150
# eval/problem60//code.c:5:         while (n % i == 0 && n > i) n = n / i;
	bne	a5,zero,.L4	#, _1,,
# eval/problem60//code.c:5:         while (n % i == 0 && n > i) n = n / i;
	lw	a5,-36(s0)		# tmp154, n
	mv	a4,a5	# tmp153, tmp154
	lw	a5,-20(s0)		# tmp156, i
	sext.w	a4,a4	# tmp157, tmp153
	sext.w	a5,a5	# tmp158, tmp155
	bgt	a4,a5,.L5	#, tmp157, tmp158,
.L4:
# eval/problem60//code.c:4:     for (int i = 2; i * i <= n; i++)
	lw	a5,-20(s0)		# tmp161, i
	addiw	a5,a5,1	#, tmp159, tmp160
	sw	a5,-20(s0)	# tmp159, i
.L2:
# eval/problem60//code.c:4:     for (int i = 2; i * i <= n; i++)
	lw	a5,-20(s0)		# tmp164, i
	mulw	a5,a5,a5	# tmp162, tmp163, tmp163
	sext.w	a4,a5	# _2, tmp162
# eval/problem60//code.c:4:     for (int i = 2; i * i <= n; i++)
	lw	a5,-36(s0)		# tmp166, n
	sext.w	a5,a5	# tmp167, tmp165
	bge	a5,a4,.L3	#, tmp167, tmp168,
# eval/problem60//code.c:6:     return n;
	lw	a5,-36(s0)		# _8, n
# eval/problem60//code.c:7: }
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
