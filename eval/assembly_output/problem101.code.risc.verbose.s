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
.LFB6:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp147, n
	sw	a5,-36(s0)	# tmp148, n
# code.c:5:     int* out = (int*)malloc(n * sizeof(int));
	lw	a5,-36(s0)		# _1, n
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp149,
	sd	a5,-24(s0)	# tmp149, out
# code.c:6:     *out = n;
	ld	a5,-24(s0)		# tmp150, out
	lw	a4,-36(s0)		# tmp151, n
	sw	a4,0(a5)	# tmp151, *out_17
# code.c:7:     for (int i = 1; i < n; i++)
	li	a5,1		# tmp152,
	sw	a5,-28(s0)	# tmp152, i
# code.c:7:     for (int i = 1; i < n; i++)
	j	.L2		#
.L3:
# code.c:8:         *(out + i) = *(out + i - 1) + 2;
	lw	a5,-28(s0)		# _3, i
	slli	a5,a5,2	#, _4, _3
# code.c:8:         *(out + i) = *(out + i - 1) + 2;
	addi	a5,a5,-4	#, _5, _4
	ld	a4,-24(s0)		# tmp153, out
	add	a5,a4,a5	# _5, _6, tmp153
# code.c:8:         *(out + i) = *(out + i - 1) + 2;
	lw	a4,0(a5)		# _7, *_6
# code.c:8:         *(out + i) = *(out + i - 1) + 2;
	lw	a5,-28(s0)		# _8, i
	slli	a5,a5,2	#, _9, _8
	ld	a3,-24(s0)		# tmp154, out
	add	a5,a3,a5	# _9, _10, tmp154
# code.c:8:         *(out + i) = *(out + i - 1) + 2;
	addiw	a4,a4,2	#, tmp155, _7
	sext.w	a4,a4	# _11, tmp155
# code.c:8:         *(out + i) = *(out + i - 1) + 2;
	sw	a4,0(a5)	# _11, *_10
# code.c:7:     for (int i = 1; i < n; i++)
	lw	a5,-28(s0)		# tmp158, i
	addiw	a5,a5,1	#, tmp156, tmp157
	sw	a5,-28(s0)	# tmp156, i
.L2:
# code.c:7:     for (int i = 1; i < n; i++)
	lw	a5,-28(s0)		# tmp160, i
	mv	a4,a5	# tmp159, tmp160
	lw	a5,-36(s0)		# tmp162, n
	sext.w	a4,a4	# tmp163, tmp159
	sext.w	a5,a5	# tmp164, tmp161
	blt	a4,a5,.L3	#, tmp163, tmp164,
# code.c:9:     return out;
	ld	a5,-24(s0)		# _20, out
# code.c:10: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
