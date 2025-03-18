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
	sd	a0,-40(s0)	# lst, lst
	mv	a5,a1	# tmp148, size
	sw	a5,-44(s0)	# tmp149, size
# eval/problem122//code.c:4:     int sum = 0;
	sw	zero,-24(s0)	#, sum
# eval/problem122//code.c:5:     for (int i = 0; i * 2 < size; i++)
	sw	zero,-20(s0)	#, i
# eval/problem122//code.c:5:     for (int i = 0; i * 2 < size; i++)
	j	.L2		#
.L4:
# eval/problem122//code.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	lw	a5,-20(s0)		# tmp152, i
	slliw	a5,a5,1	#, tmp150, tmp151
	sext.w	a5,a5	# _1, tmp150
# eval/problem122//code.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	slli	a5,a5,2	#, _3, _2
	ld	a4,-40(s0)		# tmp153, lst
	add	a5,a4,a5	# _3, _4, tmp153
	lw	a5,0(a5)		# _5, *_4
# eval/problem122//code.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	mv	a4,a5	# tmp155, _5
	sraiw	a5,a4,31	#, tmp156, tmp155
	srliw	a5,a5,31	#, tmp157, tmp156
	addw	a4,a4,a5	# tmp157, tmp158, tmp155
	andi	a4,a4,1	#, tmp159, tmp158
	subw	a5,a4,a5	# tmp160, tmp159, tmp157
	sext.w	a5,a5	# _6, tmp160
# eval/problem122//code.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	mv	a4,a5	# tmp161, _6
	li	a5,1		# tmp162,
	bne	a4,a5,.L3	#, tmp161, tmp162,
# eval/problem122//code.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	lw	a5,-20(s0)		# tmp165, i
	slliw	a5,a5,1	#, tmp163, tmp164
	sext.w	a5,a5	# _7, tmp163
# eval/problem122//code.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	slli	a5,a5,2	#, _9, _8
	ld	a4,-40(s0)		# tmp166, lst
	add	a5,a4,a5	# _9, _10, tmp166
	lw	a5,0(a5)		# _11, *_10
# eval/problem122//code.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	lw	a4,-24(s0)		# tmp169, sum
	addw	a5,a4,a5	# _11, tmp167, tmp168
	sw	a5,-24(s0)	# tmp167, sum
.L3:
# eval/problem122//code.c:5:     for (int i = 0; i * 2 < size; i++)
	lw	a5,-20(s0)		# tmp172, i
	addiw	a5,a5,1	#, tmp170, tmp171
	sw	a5,-20(s0)	# tmp170, i
.L2:
# eval/problem122//code.c:5:     for (int i = 0; i * 2 < size; i++)
	lw	a5,-20(s0)		# tmp175, i
	slliw	a5,a5,1	#, tmp173, tmp174
	sext.w	a4,a5	# _12, tmp173
# eval/problem122//code.c:5:     for (int i = 0; i * 2 < size; i++)
	lw	a5,-44(s0)		# tmp177, size
	sext.w	a5,a5	# tmp178, tmp176
	bgt	a5,a4,.L4	#, tmp178, tmp179,
# eval/problem122//code.c:7:     return sum;
	lw	a5,-24(s0)		# _19, sum
# eval/problem122//code.c:8: }
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
