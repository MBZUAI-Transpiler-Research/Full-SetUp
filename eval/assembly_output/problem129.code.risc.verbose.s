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
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# arr, arr
	mv	a5,a1	# tmp149, arr_size
	sw	a5,-44(s0)	# tmp150, arr_size
# code.c:5:     if (arr_size == 0) return -32768;
	lw	a5,-44(s0)		# tmp152, arr_size
	sext.w	a5,a5	# tmp153, tmp151
	bne	a5,zero,.L2	#, tmp153,,
# code.c:5:     if (arr_size == 0) return -32768;
	li	a5,-32768		# _19,
# code.c:5:     if (arr_size == 0) return -32768;
	j	.L3		#
.L2:
# code.c:6:     int sum = 0, prods = 1, i;
	sw	zero,-28(s0)	#, sum
# code.c:6:     int sum = 0, prods = 1, i;
	li	a5,1		# tmp154,
	sw	a5,-24(s0)	# tmp154, prods
# code.c:7:     for (i = 0; i < arr_size; i++) {
	sw	zero,-20(s0)	#, i
# code.c:7:     for (i = 0; i < arr_size; i++) {
	j	.L4		#
.L7:
# code.c:8:         sum += abs(arr[i]);
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp155, arr
	add	a5,a4,a5	# _2, _3, tmp155
	lw	a4,0(a5)		# _4, *_3
# code.c:8:         sum += abs(arr[i]);
	sraiw	a5,a4,31	#, tmp156, _4
	xor	a4,a4,a5	# tmp156, tmp157, _4
	subw	a5,a4,a5	# tmp158, tmp157, tmp156
	sext.w	a5,a5	# _5, tmp158
# code.c:8:         sum += abs(arr[i]);
	lw	a4,-28(s0)		# tmp161, sum
	addw	a5,a4,a5	# _5, tmp159, tmp160
	sw	a5,-28(s0)	# tmp159, sum
# code.c:9:         if (arr[i] == 0) prods = 0;
	lw	a5,-20(s0)		# _6, i
	slli	a5,a5,2	#, _7, _6
	ld	a4,-40(s0)		# tmp162, arr
	add	a5,a4,a5	# _7, _8, tmp162
	lw	a5,0(a5)		# _9, *_8
# code.c:9:         if (arr[i] == 0) prods = 0;
	bne	a5,zero,.L5	#, _9,,
# code.c:9:         if (arr[i] == 0) prods = 0;
	sw	zero,-24(s0)	#, prods
.L5:
# code.c:10:         if (arr[i] < 0) prods = -prods;
	lw	a5,-20(s0)		# _10, i
	slli	a5,a5,2	#, _11, _10
	ld	a4,-40(s0)		# tmp163, arr
	add	a5,a4,a5	# _11, _12, tmp163
	lw	a5,0(a5)		# _13, *_12
# code.c:10:         if (arr[i] < 0) prods = -prods;
	bge	a5,zero,.L6	#, tmp164,,
# code.c:10:         if (arr[i] < 0) prods = -prods;
	lw	a5,-24(s0)		# tmp167, prods
	negw	a5,a5	# tmp165, tmp166
	sw	a5,-24(s0)	# tmp165, prods
.L6:
# code.c:7:     for (i = 0; i < arr_size; i++) {
	lw	a5,-20(s0)		# tmp170, i
	addiw	a5,a5,1	#, tmp168, tmp169
	sw	a5,-20(s0)	# tmp168, i
.L4:
# code.c:7:     for (i = 0; i < arr_size; i++) {
	lw	a5,-20(s0)		# tmp172, i
	mv	a4,a5	# tmp171, tmp172
	lw	a5,-44(s0)		# tmp174, arr_size
	sext.w	a4,a4	# tmp175, tmp171
	sext.w	a5,a5	# tmp176, tmp173
	blt	a4,a5,.L7	#, tmp175, tmp176,
# code.c:12:     return sum * prods;
	lw	a5,-28(s0)		# tmp179, sum
	mv	a4,a5	# tmp178, tmp179
	lw	a5,-24(s0)		# tmp181, prods
	mulw	a5,a4,a5	# tmp177, tmp178, tmp180
	sext.w	a5,a5	# _19, tmp177
.L3:
# code.c:13: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
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
