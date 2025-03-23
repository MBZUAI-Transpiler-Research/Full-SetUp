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
	mv	a5,a1	# tmp152, size
	sw	a5,-44(s0)	# tmp153, size
# eval/problem86//code.c:4:     int sum = 0;
	sw	zero,-24(s0)	#, sum
# eval/problem86//code.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	sw	zero,-20(s0)	#, i
# eval/problem86//code.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	j	.L2		#
.L4:
# eval/problem86//code.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	lw	a5,-20(s0)		# tmp156, i
	slliw	a5,a5,1	#, tmp154, tmp155
	sext.w	a5,a5	# _1, tmp154
# eval/problem86//code.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	addi	a5,a5,1	#, _3, _2
	slli	a5,a5,2	#, _4, _3
	ld	a4,-40(s0)		# tmp157, lst
	add	a5,a4,a5	# _4, _5, tmp157
	lw	a5,0(a5)		# _6, *_5
# eval/problem86//code.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	sext.w	a5,a5	# _7, _6
	andi	a5,a5,1	#, tmp159, tmp158
	sext.w	a5,a5	# _8, tmp159
# eval/problem86//code.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	bne	a5,zero,.L3	#, _8,,
# eval/problem86//code.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	lw	a5,-20(s0)		# tmp162, i
	slliw	a5,a5,1	#, tmp160, tmp161
	sext.w	a5,a5	# _9, tmp160
# eval/problem86//code.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	addi	a5,a5,1	#, _11, _10
	slli	a5,a5,2	#, _12, _11
	ld	a4,-40(s0)		# tmp163, lst
	add	a5,a4,a5	# _12, _13, tmp163
	lw	a5,0(a5)		# _14, *_13
# eval/problem86//code.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	lw	a4,-24(s0)		# tmp166, sum
	addw	a5,a4,a5	# _14, tmp164, tmp165
	sw	a5,-24(s0)	# tmp164, sum
.L3:
# eval/problem86//code.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	lw	a5,-20(s0)		# tmp169, i
	addiw	a5,a5,1	#, tmp167, tmp168
	sw	a5,-20(s0)	# tmp167, i
.L2:
# eval/problem86//code.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	lw	a5,-20(s0)		# tmp172, i
	slliw	a5,a5,1	#, tmp170, tmp171
	sext.w	a5,a5	# _15, tmp170
# eval/problem86//code.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	addiw	a5,a5,1	#, tmp173, _15
	sext.w	a4,a5	# _16, tmp173
# eval/problem86//code.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	lw	a5,-44(s0)		# tmp175, size
	sext.w	a5,a5	# tmp176, tmp174
	bgt	a5,a4,.L4	#, tmp176, tmp177,
# eval/problem86//code.c:7:     return sum;
	lw	a5,-24(s0)		# _23, sum
# eval/problem86//code.c:8: }
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
