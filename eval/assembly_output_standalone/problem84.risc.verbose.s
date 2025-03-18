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
	mv	a5,a0	# tmp136, n
	sw	a5,-36(s0)	# tmp137, n
# eval/problem84//code.c:4:     if (n < 1) return 0;
	lw	a5,-36(s0)		# tmp139, n
	sext.w	a5,a5	# tmp140, tmp138
	bgt	a5,zero,.L2	#, tmp140,,
# eval/problem84//code.c:4:     if (n < 1) return 0;
	li	a5,0		# _3,
# eval/problem84//code.c:4:     if (n < 1) return 0;
	j	.L3		#
.L2:
# eval/problem84//code.c:5:     if (n == 1) return 1;
	lw	a5,-36(s0)		# tmp142, n
	sext.w	a4,a5	# tmp143, tmp141
	li	a5,1		# tmp144,
	bne	a4,a5,.L4	#, tmp143, tmp144,
# eval/problem84//code.c:5:     if (n == 1) return 1;
	li	a5,1		# _3,
# eval/problem84//code.c:5:     if (n == 1) return 1;
	j	.L3		#
.L4:
# eval/problem84//code.c:6:     int out = 18;
	li	a5,18		# tmp145,
	sw	a5,-24(s0)	# tmp145, out
# eval/problem84//code.c:7:     for (int i = 2; i < n; i++)
	li	a5,2		# tmp146,
	sw	a5,-20(s0)	# tmp146, i
# eval/problem84//code.c:7:     for (int i = 2; i < n; i++)
	j	.L5		#
.L6:
# eval/problem84//code.c:8:         out = out * 10;
	lw	a5,-24(s0)		# tmp148, out
	mv	a4,a5	# tmp147, tmp148
	mv	a5,a4	# tmp149, tmp147
	slliw	a5,a5,2	#, tmp150, tmp149
	addw	a5,a5,a4	# tmp147, tmp149, tmp149
	slliw	a5,a5,1	#, tmp151, tmp149
	sw	a5,-24(s0)	# tmp149, out
# eval/problem84//code.c:7:     for (int i = 2; i < n; i++)
	lw	a5,-20(s0)		# tmp154, i
	addiw	a5,a5,1	#, tmp152, tmp153
	sw	a5,-20(s0)	# tmp152, i
.L5:
# eval/problem84//code.c:7:     for (int i = 2; i < n; i++)
	lw	a5,-20(s0)		# tmp156, i
	mv	a4,a5	# tmp155, tmp156
	lw	a5,-36(s0)		# tmp158, n
	sext.w	a4,a4	# tmp159, tmp155
	sext.w	a5,a5	# tmp160, tmp157
	blt	a4,a5,.L6	#, tmp159, tmp160,
# eval/problem84//code.c:9:     return out;
	lw	a5,-24(s0)		# _3, out
.L3:
# eval/problem84//code.c:10: }
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
