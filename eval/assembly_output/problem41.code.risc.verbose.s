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
	sd	a0,-40(s0)	# l, l
	mv	a5,a1	# tmp150, size
	sw	a5,-44(s0)	# tmp151, size
# code.c:5:     for (int i = 0; i < size; i++)
	sw	zero,-28(s0)	#, i
# code.c:5:     for (int i = 0; i < size; i++)
	j	.L2		#
.L9:
# code.c:6:         for (int j = i + 1; j < size; j++)
	lw	a5,-28(s0)		# tmp154, i
	addiw	a5,a5,1	#, tmp152, tmp153
	sw	a5,-24(s0)	# tmp152, j
# code.c:6:         for (int j = i + 1; j < size; j++)
	j	.L3		#
.L8:
# code.c:7:             for (int k = j + 1; k < size; k++)
	lw	a5,-24(s0)		# tmp157, j
	addiw	a5,a5,1	#, tmp155, tmp156
	sw	a5,-20(s0)	# tmp155, k
# code.c:7:             for (int k = j + 1; k < size; k++)
	j	.L4		#
.L7:
# code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	lw	a5,-28(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp158, l
	add	a5,a4,a5	# _2, _3, tmp158
	lw	a4,0(a5)		# _4, *_3
# code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	lw	a5,-24(s0)		# _5, j
	slli	a5,a5,2	#, _6, _5
	ld	a3,-40(s0)		# tmp159, l
	add	a5,a3,a5	# _6, _7, tmp159
	lw	a5,0(a5)		# _8, *_7
# code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	addw	a5,a4,a5	# _8, tmp160, _4
	sext.w	a4,a5	# _9, tmp160
# code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	lw	a5,-20(s0)		# _10, k
	slli	a5,a5,2	#, _11, _10
	ld	a3,-40(s0)		# tmp161, l
	add	a5,a3,a5	# _11, _12, tmp161
	lw	a5,0(a5)		# _13, *_12
# code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	addw	a5,a4,a5	# _13, tmp162, _9
	sext.w	a5,a5	# _14, tmp162
# code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	bne	a5,zero,.L5	#, _14,,
# code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	li	a5,1		# _18,
# code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	j	.L6		#
.L5:
# code.c:7:             for (int k = j + 1; k < size; k++)
	lw	a5,-20(s0)		# tmp165, k
	addiw	a5,a5,1	#, tmp163, tmp164
	sw	a5,-20(s0)	# tmp163, k
.L4:
# code.c:7:             for (int k = j + 1; k < size; k++)
	lw	a5,-20(s0)		# tmp167, k
	mv	a4,a5	# tmp166, tmp167
	lw	a5,-44(s0)		# tmp169, size
	sext.w	a4,a4	# tmp170, tmp166
	sext.w	a5,a5	# tmp171, tmp168
	blt	a4,a5,.L7	#, tmp170, tmp171,
# code.c:6:         for (int j = i + 1; j < size; j++)
	lw	a5,-24(s0)		# tmp174, j
	addiw	a5,a5,1	#, tmp172, tmp173
	sw	a5,-24(s0)	# tmp172, j
.L3:
# code.c:6:         for (int j = i + 1; j < size; j++)
	lw	a5,-24(s0)		# tmp176, j
	mv	a4,a5	# tmp175, tmp176
	lw	a5,-44(s0)		# tmp178, size
	sext.w	a4,a4	# tmp179, tmp175
	sext.w	a5,a5	# tmp180, tmp177
	blt	a4,a5,.L8	#, tmp179, tmp180,
# code.c:5:     for (int i = 0; i < size; i++)
	lw	a5,-28(s0)		# tmp183, i
	addiw	a5,a5,1	#, tmp181, tmp182
	sw	a5,-28(s0)	# tmp181, i
.L2:
# code.c:5:     for (int i = 0; i < size; i++)
	lw	a5,-28(s0)		# tmp185, i
	mv	a4,a5	# tmp184, tmp185
	lw	a5,-44(s0)		# tmp187, size
	sext.w	a4,a4	# tmp188, tmp184
	sext.w	a5,a5	# tmp189, tmp186
	blt	a4,a5,.L9	#, tmp188, tmp189,
# code.c:9:     return false;
	li	a5,0		# _18,
.L6:
# code.c:10: }
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
