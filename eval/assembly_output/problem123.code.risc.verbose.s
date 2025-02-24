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
	sd	a0,-40(s0)	# arr, arr
	mv	a5,a1	# tmp148, k
	sw	a5,-44(s0)	# tmp149, k
# code.c:4:     int sum = 0;
	sw	zero,-24(s0)	#, sum
# code.c:5:     for (int i = 0; i < k; i++)
	sw	zero,-20(s0)	#, i
# code.c:5:     for (int i = 0; i < k; i++)
	j	.L2		#
.L4:
# code.c:6:         if (arr[i] >= -99 && arr[i] <= 99)
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp150, arr
	add	a5,a4,a5	# _2, _3, tmp150
	lw	a5,0(a5)		# _4, *_3
# code.c:6:         if (arr[i] >= -99 && arr[i] <= 99)
	mv	a4,a5	# tmp151, _4
	li	a5,-99		# tmp152,
	blt	a4,a5,.L3	#, tmp151, tmp152,
# code.c:6:         if (arr[i] >= -99 && arr[i] <= 99)
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-40(s0)		# tmp153, arr
	add	a5,a4,a5	# _6, _7, tmp153
	lw	a5,0(a5)		# _8, *_7
# code.c:6:         if (arr[i] >= -99 && arr[i] <= 99)
	mv	a4,a5	# tmp154, _8
	li	a5,99		# tmp155,
	bgt	a4,a5,.L3	#, tmp154, tmp155,
# code.c:7:             sum += arr[i];
	lw	a5,-20(s0)		# _9, i
	slli	a5,a5,2	#, _10, _9
	ld	a4,-40(s0)		# tmp156, arr
	add	a5,a4,a5	# _10, _11, tmp156
	lw	a5,0(a5)		# _12, *_11
# code.c:7:             sum += arr[i];
	lw	a4,-24(s0)		# tmp159, sum
	addw	a5,a4,a5	# _12, tmp157, tmp158
	sw	a5,-24(s0)	# tmp157, sum
.L3:
# code.c:5:     for (int i = 0; i < k; i++)
	lw	a5,-20(s0)		# tmp162, i
	addiw	a5,a5,1	#, tmp160, tmp161
	sw	a5,-20(s0)	# tmp160, i
.L2:
# code.c:5:     for (int i = 0; i < k; i++)
	lw	a5,-20(s0)		# tmp164, i
	mv	a4,a5	# tmp163, tmp164
	lw	a5,-44(s0)		# tmp166, k
	sext.w	a4,a4	# tmp167, tmp163
	sext.w	a5,a5	# tmp168, tmp165
	blt	a4,a5,.L4	#, tmp167, tmp168,
# code.c:8:     return sum;
	lw	a5,-24(s0)		# _19, sum
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
