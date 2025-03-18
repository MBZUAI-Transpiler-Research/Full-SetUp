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
	sd	a0,-40(s0)	# arr, arr
	mv	a5,a1	# tmp151, size
	sw	a5,-44(s0)	# tmp152, size
# eval/problem110//code.c:5:     int num = 0;
	sw	zero,-24(s0)	#, num
# eval/problem110//code.c:6:     if (size == 0) return true;
	lw	a5,-44(s0)		# tmp154, size
	sext.w	a5,a5	# tmp155, tmp153
	bne	a5,zero,.L2	#, tmp155,,
# eval/problem110//code.c:6:     if (size == 0) return true;
	li	a5,1		# _20,
# eval/problem110//code.c:6:     if (size == 0) return true;
	j	.L3		#
.L2:
# eval/problem110//code.c:7:     for (int i = 1; i < size; i++)
	li	a5,1		# tmp156,
	sw	a5,-20(s0)	# tmp156, i
# eval/problem110//code.c:7:     for (int i = 1; i < size; i++)
	j	.L4		#
.L6:
# eval/problem110//code.c:8:         if (arr[i] < arr[i - 1]) num += 1;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp157, arr
	add	a5,a4,a5	# _2, _3, tmp157
	lw	a3,0(a5)		# _4, *_3
# eval/problem110//code.c:8:         if (arr[i] < arr[i - 1]) num += 1;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	addi	a5,a5,-4	#, _7, _6
	ld	a4,-40(s0)		# tmp158, arr
	add	a5,a4,a5	# _7, _8, tmp158
	lw	a5,0(a5)		# _9, *_8
# eval/problem110//code.c:8:         if (arr[i] < arr[i - 1]) num += 1;
	mv	a4,a3	# tmp159, _4
	bge	a4,a5,.L5	#, tmp159, tmp160,
# eval/problem110//code.c:8:         if (arr[i] < arr[i - 1]) num += 1;
	lw	a5,-24(s0)		# tmp163, num
	addiw	a5,a5,1	#, tmp161, tmp162
	sw	a5,-24(s0)	# tmp161, num
.L5:
# eval/problem110//code.c:7:     for (int i = 1; i < size; i++)
	lw	a5,-20(s0)		# tmp166, i
	addiw	a5,a5,1	#, tmp164, tmp165
	sw	a5,-20(s0)	# tmp164, i
.L4:
# eval/problem110//code.c:7:     for (int i = 1; i < size; i++)
	lw	a5,-20(s0)		# tmp168, i
	mv	a4,a5	# tmp167, tmp168
	lw	a5,-44(s0)		# tmp170, size
	sext.w	a4,a4	# tmp171, tmp167
	sext.w	a5,a5	# tmp172, tmp169
	blt	a4,a5,.L6	#, tmp171, tmp172,
# eval/problem110//code.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	lw	a5,-44(s0)		# _10, size
	slli	a5,a5,2	#, _11, _10
	addi	a5,a5,-4	#, _12, _11
	ld	a4,-40(s0)		# tmp173, arr
	add	a5,a4,a5	# _12, _13, tmp173
	lw	a4,0(a5)		# _14, *_13
# eval/problem110//code.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	ld	a5,-40(s0)		# tmp174, arr
	lw	a5,0(a5)		# _15, *arr_24(D)
# eval/problem110//code.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	ble	a4,a5,.L7	#, tmp175, tmp176,
# eval/problem110//code.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	lw	a5,-24(s0)		# tmp179, num
	addiw	a5,a5,1	#, tmp177, tmp178
	sw	a5,-24(s0)	# tmp177, num
.L7:
# eval/problem110//code.c:10:     if (num < 2) return true;
	lw	a5,-24(s0)		# tmp181, num
	sext.w	a4,a5	# tmp182, tmp180
	li	a5,1		# tmp183,
	bgt	a4,a5,.L8	#, tmp182, tmp183,
# eval/problem110//code.c:10:     if (num < 2) return true;
	li	a5,1		# _20,
# eval/problem110//code.c:10:     if (num < 2) return true;
	j	.L3		#
.L8:
# eval/problem110//code.c:11:     return false;
	li	a5,0		# _20,
.L3:
# eval/problem110//code.c:12: }
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
