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
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp138, x
	mv	a4,a1	# tmp140, y
	sw	a5,-20(s0)	# tmp139, x
	mv	a5,a4	# tmp141, tmp140
	sw	a5,-24(s0)	# tmp141, y
# code.c:4:     if (y < x) return -1;
	lw	a5,-24(s0)		# tmp143, y
	mv	a4,a5	# tmp142, tmp143
	lw	a5,-20(s0)		# tmp145, x
	sext.w	a4,a4	# tmp146, tmp142
	sext.w	a5,a5	# tmp147, tmp144
	bge	a4,a5,.L2	#, tmp146, tmp147,
# code.c:4:     if (y < x) return -1;
	li	a5,-1		# _3,
# code.c:4:     if (y < x) return -1;
	j	.L3		#
.L2:
# code.c:5:     if (y == x && y % 2 == 1) return -1;
	lw	a5,-24(s0)		# tmp149, y
	mv	a4,a5	# tmp148, tmp149
	lw	a5,-20(s0)		# tmp151, x
	sext.w	a4,a4	# tmp152, tmp148
	sext.w	a5,a5	# tmp153, tmp150
	bne	a4,a5,.L4	#, tmp152, tmp153,
# code.c:5:     if (y == x && y % 2 == 1) return -1;
	lw	a5,-24(s0)		# tmp156, y
	mv	a4,a5	# tmp155, tmp156
	sraiw	a5,a4,31	#, tmp157, tmp155
	srliw	a5,a5,31	#, tmp158, tmp157
	addw	a4,a4,a5	# tmp158, tmp159, tmp155
	andi	a4,a4,1	#, tmp160, tmp159
	subw	a5,a4,a5	# tmp161, tmp160, tmp158
	sext.w	a5,a5	# _1, tmp161
# code.c:5:     if (y == x && y % 2 == 1) return -1;
	mv	a4,a5	# tmp162, _1
	li	a5,1		# tmp163,
	bne	a4,a5,.L4	#, tmp162, tmp163,
# code.c:5:     if (y == x && y % 2 == 1) return -1;
	li	a5,-1		# _3,
# code.c:5:     if (y == x && y % 2 == 1) return -1;
	j	.L3		#
.L4:
# code.c:6:     if (y % 2 == 1) return y - 1;
	lw	a5,-24(s0)		# tmp166, y
	mv	a4,a5	# tmp165, tmp166
	sraiw	a5,a4,31	#, tmp167, tmp165
	srliw	a5,a5,31	#, tmp168, tmp167
	addw	a4,a4,a5	# tmp168, tmp169, tmp165
	andi	a4,a4,1	#, tmp170, tmp169
	subw	a5,a4,a5	# tmp171, tmp170, tmp168
	sext.w	a5,a5	# _2, tmp171
# code.c:6:     if (y % 2 == 1) return y - 1;
	mv	a4,a5	# tmp172, _2
	li	a5,1		# tmp173,
	bne	a4,a5,.L5	#, tmp172, tmp173,
# code.c:6:     if (y % 2 == 1) return y - 1;
	lw	a5,-24(s0)		# tmp176, y
	addiw	a5,a5,-1	#, tmp174, tmp175
	sext.w	a5,a5	# _3, tmp174
# code.c:6:     if (y % 2 == 1) return y - 1;
	j	.L3		#
.L5:
# code.c:7:     return y;
	lw	a5,-24(s0)		# _3, y
.L3:
# code.c:8: }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
