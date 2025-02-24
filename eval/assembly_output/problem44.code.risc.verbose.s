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
	mv	a5,a1	# tmp145, size
	sw	a5,-44(s0)	# tmp146, size
# code.c:5:     for (int i = 0; i < size; i++)
	sw	zero,-24(s0)	#, i
# code.c:5:     for (int i = 0; i < size; i++)
	j	.L2		#
.L7:
# code.c:6:         for (int j = i + 1; j < size; j++)
	lw	a5,-24(s0)		# tmp149, i
	addiw	a5,a5,1	#, tmp147, tmp148
	sw	a5,-20(s0)	# tmp147, j
# code.c:6:         for (int j = i + 1; j < size; j++)
	j	.L3		#
.L6:
# code.c:7:             if (l[i] + l[j] == 0) return true;
	lw	a5,-24(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp150, l
	add	a5,a4,a5	# _2, _3, tmp150
	lw	a4,0(a5)		# _4, *_3
# code.c:7:             if (l[i] + l[j] == 0) return true;
	lw	a5,-20(s0)		# _5, j
	slli	a5,a5,2	#, _6, _5
	ld	a3,-40(s0)		# tmp151, l
	add	a5,a3,a5	# _6, _7, tmp151
	lw	a5,0(a5)		# _8, *_7
# code.c:7:             if (l[i] + l[j] == 0) return true;
	addw	a5,a4,a5	# _8, tmp152, _4
	sext.w	a5,a5	# _9, tmp152
# code.c:7:             if (l[i] + l[j] == 0) return true;
	bne	a5,zero,.L4	#, _9,,
# code.c:7:             if (l[i] + l[j] == 0) return true;
	li	a5,1		# _12,
# code.c:7:             if (l[i] + l[j] == 0) return true;
	j	.L5		#
.L4:
# code.c:6:         for (int j = i + 1; j < size; j++)
	lw	a5,-20(s0)		# tmp155, j
	addiw	a5,a5,1	#, tmp153, tmp154
	sw	a5,-20(s0)	# tmp153, j
.L3:
# code.c:6:         for (int j = i + 1; j < size; j++)
	lw	a5,-20(s0)		# tmp157, j
	mv	a4,a5	# tmp156, tmp157
	lw	a5,-44(s0)		# tmp159, size
	sext.w	a4,a4	# tmp160, tmp156
	sext.w	a5,a5	# tmp161, tmp158
	blt	a4,a5,.L6	#, tmp160, tmp161,
# code.c:5:     for (int i = 0; i < size; i++)
	lw	a5,-24(s0)		# tmp164, i
	addiw	a5,a5,1	#, tmp162, tmp163
	sw	a5,-24(s0)	# tmp162, i
.L2:
# code.c:5:     for (int i = 0; i < size; i++)
	lw	a5,-24(s0)		# tmp166, i
	mv	a4,a5	# tmp165, tmp166
	lw	a5,-44(s0)		# tmp168, size
	sext.w	a4,a4	# tmp169, tmp165
	sext.w	a5,a5	# tmp170, tmp167
	blt	a4,a5,.L7	#, tmp169, tmp170,
# code.c:8:     return false;
	li	a5,0		# _12,
.L5:
# code.c:9: }
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
