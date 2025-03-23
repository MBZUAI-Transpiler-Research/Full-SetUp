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
	sd	a0,-40(s0)	# l, l
	mv	a5,a1	# tmp143, size
	sw	a5,-44(s0)	# tmp144, size
# eval/problem36//code.c:4:     float max = -10000;
	lla	a5,.LC0	# tmp145,
	flw	fa5,0(a5)	# tmp146,
	fsw	fa5,-24(s0)	# tmp146, max
# eval/problem36//code.c:5:     for (int i = 0; i < size; i++)
	sw	zero,-20(s0)	#, i
# eval/problem36//code.c:5:     for (int i = 0; i < size; i++)
	j	.L2		#
.L5:
# eval/problem36//code.c:6:         if (max < l[i]) max = l[i];
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp147, l
	add	a5,a4,a5	# _2, _3, tmp147
	flw	fa5,0(a5)	# _4, *_3
# eval/problem36//code.c:6:         if (max < l[i]) max = l[i];
	flw	fa4,-24(s0)	# tmp148, max
	flt.s	a5,fa4,fa5	#, tmp149, tmp148, _4
	beq	a5,zero,.L3	#, tmp149,,
# eval/problem36//code.c:6:         if (max < l[i]) max = l[i];
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-40(s0)		# tmp150, l
	add	a5,a4,a5	# _6, _7, tmp150
# eval/problem36//code.c:6:         if (max < l[i]) max = l[i];
	flw	fa5,0(a5)	# tmp151, *_7
	fsw	fa5,-24(s0)	# tmp151, max
.L3:
# eval/problem36//code.c:5:     for (int i = 0; i < size; i++)
	lw	a5,-20(s0)		# tmp154, i
	addiw	a5,a5,1	#, tmp152, tmp153
	sw	a5,-20(s0)	# tmp152, i
.L2:
# eval/problem36//code.c:5:     for (int i = 0; i < size; i++)
	lw	a5,-20(s0)		# tmp156, i
	mv	a4,a5	# tmp155, tmp156
	lw	a5,-44(s0)		# tmp158, size
	sext.w	a4,a4	# tmp159, tmp155
	sext.w	a5,a5	# tmp160, tmp157
	blt	a4,a5,.L5	#, tmp159, tmp160,
# eval/problem36//code.c:7:     return max;
	flw	fa5,-24(s0)	# _14, max
# eval/problem36//code.c:8: }
	fmv.s	fa0,fa5	#, <retval>
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	2
.LC0:
	.word	-971227136
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
