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
	mv	a5,a0	# tmp137, n
	mv	a4,a1	# tmp139, p
	sw	a5,-36(s0)	# tmp138, n
	mv	a5,a4	# tmp140, tmp139
	sw	a5,-40(s0)	# tmp140, p
# eval/problem50//code.c:4:     int out = 1;
	li	a5,1		# tmp141,
	sw	a5,-24(s0)	# tmp141, out
# eval/problem50//code.c:5:     for (int i = 0; i < n; i++)
	sw	zero,-20(s0)	#, i
# eval/problem50//code.c:5:     for (int i = 0; i < n; i++)
	j	.L2		#
.L3:
# eval/problem50//code.c:6:         out = (out * 2) % p;
	lw	a5,-24(s0)		# tmp144, out
	slliw	a5,a5,1	#, tmp142, tmp143
	sext.w	a5,a5	# _1, tmp142
# eval/problem50//code.c:6:         out = (out * 2) % p;
	mv	a4,a5	# tmp146, _1
	lw	a5,-40(s0)		# tmp149, p
	remw	a5,a4,a5	# tmp148, tmp147, tmp146
	sw	a5,-24(s0)	# tmp147, out
# eval/problem50//code.c:5:     for (int i = 0; i < n; i++)
	lw	a5,-20(s0)		# tmp152, i
	addiw	a5,a5,1	#, tmp150, tmp151
	sw	a5,-20(s0)	# tmp150, i
.L2:
# eval/problem50//code.c:5:     for (int i = 0; i < n; i++)
	lw	a5,-20(s0)		# tmp154, i
	mv	a4,a5	# tmp153, tmp154
	lw	a5,-36(s0)		# tmp156, n
	sext.w	a4,a4	# tmp157, tmp153
	sext.w	a5,a5	# tmp158, tmp155
	blt	a4,a5,.L3	#, tmp157, tmp158,
# eval/problem50//code.c:7:     return out;
	lw	a5,-24(s0)		# _7, out
# eval/problem50//code.c:8: }
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
