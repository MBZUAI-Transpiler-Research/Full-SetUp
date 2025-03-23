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
	sd	a0,-40(s0)	# numbers, numbers
	mv	a5,a1	# tmp148, size
	sw	a5,-44(s0)	# tmp149, size
# eval/problem5//code.c:5:     float sum = 0;
	fmv.s.x	fa5,zero	# tmp150,
	fsw	fa5,-32(s0)	# tmp150, sum
# eval/problem5//code.c:7:     int i = 0;
	sw	zero,-24(s0)	#, i
# eval/problem5//code.c:9:     for (i = 0; i < size; i++)
	sw	zero,-24(s0)	#, i
# eval/problem5//code.c:9:     for (i = 0; i < size; i++)
	j	.L2		#
.L3:
# eval/problem5//code.c:10:         sum += numbers[i];
	lw	a5,-24(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp151, numbers
	add	a5,a4,a5	# _2, _3, tmp151
	flw	fa5,0(a5)	# _4, *_3
# eval/problem5//code.c:10:         sum += numbers[i];
	flw	fa4,-32(s0)	# tmp153, sum
	fadd.s	fa5,fa4,fa5	# tmp152, tmp153, _4
	fsw	fa5,-32(s0)	# tmp152, sum
# eval/problem5//code.c:9:     for (i = 0; i < size; i++)
	lw	a5,-24(s0)		# tmp156, i
	addiw	a5,a5,1	#, tmp154, tmp155
	sw	a5,-24(s0)	# tmp154, i
.L2:
# eval/problem5//code.c:9:     for (i = 0; i < size; i++)
	lw	a5,-24(s0)		# tmp158, i
	mv	a4,a5	# tmp157, tmp158
	lw	a5,-44(s0)		# tmp160, size
	sext.w	a4,a4	# tmp161, tmp157
	sext.w	a5,a5	# tmp162, tmp159
	blt	a4,a5,.L3	#, tmp161, tmp162,
# eval/problem5//code.c:12:     avg = sum / size;
	lw	a5,-44(s0)		# tmp164, size
	fcvt.s.w	fa5,a5	# _5, tmp163
# eval/problem5//code.c:12:     avg = sum / size;
	flw	fa4,-32(s0)	# tmp166, sum
	fdiv.s	fa5,fa4,fa5	# tmp165, tmp166, _5
	fsw	fa5,-20(s0)	# tmp165, avg
# eval/problem5//code.c:13:     msum = 0;
	fmv.s.x	fa5,zero	# tmp167,
	fsw	fa5,-28(s0)	# tmp167, msum
# eval/problem5//code.c:15:     for (i = 0; i < size; i++)
	sw	zero,-24(s0)	#, i
# eval/problem5//code.c:15:     for (i = 0; i < size; i++)
	j	.L4		#
.L5:
# eval/problem5//code.c:16:         msum += fabs(numbers[i] - avg);
	lw	a5,-24(s0)		# _6, i
	slli	a5,a5,2	#, _7, _6
	ld	a4,-40(s0)		# tmp168, numbers
	add	a5,a4,a5	# _7, _8, tmp168
	flw	fa4,0(a5)	# _9, *_8
# eval/problem5//code.c:16:         msum += fabs(numbers[i] - avg);
	flw	fa5,-20(s0)	# tmp169, avg
	fsub.s	fa5,fa4,fa5	# _10, _9, tmp169
# eval/problem5//code.c:16:         msum += fabs(numbers[i] - avg);
	fabs.s	fa5,fa5	# _11, _10
# eval/problem5//code.c:16:         msum += fabs(numbers[i] - avg);
	flw	fa4,-28(s0)	# tmp171, msum
	fadd.s	fa5,fa4,fa5	# tmp170, tmp171, _11
	fsw	fa5,-28(s0)	# tmp170, msum
# eval/problem5//code.c:15:     for (i = 0; i < size; i++)
	lw	a5,-24(s0)		# tmp174, i
	addiw	a5,a5,1	#, tmp172, tmp173
	sw	a5,-24(s0)	# tmp172, i
.L4:
# eval/problem5//code.c:15:     for (i = 0; i < size; i++)
	lw	a5,-24(s0)		# tmp176, i
	mv	a4,a5	# tmp175, tmp176
	lw	a5,-44(s0)		# tmp178, size
	sext.w	a4,a4	# tmp179, tmp175
	sext.w	a5,a5	# tmp180, tmp177
	blt	a4,a5,.L5	#, tmp179, tmp180,
# eval/problem5//code.c:18:     return msum / size;
	lw	a5,-44(s0)		# tmp182, size
	fcvt.s.w	fa5,a5	# _12, tmp181
	flw	fa4,-28(s0)	# tmp183, msum
	fdiv.s	fa5,fa4,fa5	# _24, tmp183, _12
# eval/problem5//code.c:19: }
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
