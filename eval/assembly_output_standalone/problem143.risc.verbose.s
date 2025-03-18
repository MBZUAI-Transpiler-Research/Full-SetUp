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
	mv	a5,a1	# tmp166, size
	sw	a5,-44(s0)	# tmp167, size
# eval/problem143//code.c:4:     int sum = 0;
	sw	zero,-24(s0)	#, sum
# eval/problem143//code.c:5:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# eval/problem143//code.c:5:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L6:
# eval/problem143//code.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	lw	a5,-20(s0)		# tmp170, i
	mv	a4,a5	# tmp169, tmp170
	li	a5,3		# tmp172,
	remw	a5,a4,a5	# tmp172, tmp171, tmp169
	sext.w	a5,a5	# _1, tmp171
# eval/problem143//code.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	bne	a5,zero,.L3	#, _1,,
# eval/problem143//code.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	lw	a5,-20(s0)		# _2, i
	slli	a5,a5,2	#, _3, _2
	ld	a4,-40(s0)		# tmp173, lst
	add	a5,a4,a5	# _3, _4, tmp173
	lw	a4,0(a5)		# _5, *_4
# eval/problem143//code.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	lw	a5,-20(s0)		# _6, i
	slli	a5,a5,2	#, _7, _6
	ld	a3,-40(s0)		# tmp174, lst
	add	a5,a3,a5	# _7, _8, tmp174
	lw	a5,0(a5)		# _9, *_8
# eval/problem143//code.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	mulw	a5,a4,a5	# tmp175, _5, _9
	sext.w	a5,a5	# _10, tmp175
# eval/problem143//code.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	lw	a4,-24(s0)		# tmp178, sum
	addw	a5,a4,a5	# _10, tmp176, tmp177
	sw	a5,-24(s0)	# tmp176, sum
	j	.L4		#
.L3:
# eval/problem143//code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	lw	a5,-20(s0)		# i.0_11, i
	andi	a5,a5,3	#, tmp180, tmp179
	sext.w	a5,a5	# _12, tmp180
# eval/problem143//code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	bne	a5,zero,.L5	#, _12,,
# eval/problem143//code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	lw	a5,-20(s0)		# _13, i
	slli	a5,a5,2	#, _14, _13
	ld	a4,-40(s0)		# tmp181, lst
	add	a5,a4,a5	# _14, _15, tmp181
	lw	a4,0(a5)		# _16, *_15
# eval/problem143//code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	lw	a5,-20(s0)		# _17, i
	slli	a5,a5,2	#, _18, _17
	ld	a3,-40(s0)		# tmp182, lst
	add	a5,a3,a5	# _18, _19, tmp182
	lw	a5,0(a5)		# _20, *_19
# eval/problem143//code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	mulw	a5,a4,a5	# tmp183, _16, _20
	sext.w	a4,a5	# _21, tmp183
# eval/problem143//code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	lw	a5,-20(s0)		# _22, i
	slli	a5,a5,2	#, _23, _22
	ld	a3,-40(s0)		# tmp184, lst
	add	a5,a3,a5	# _23, _24, tmp184
	lw	a5,0(a5)		# _25, *_24
# eval/problem143//code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	mulw	a5,a4,a5	# tmp185, _21, _25
	sext.w	a5,a5	# _26, tmp185
# eval/problem143//code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	lw	a4,-24(s0)		# tmp188, sum
	addw	a5,a4,a5	# _26, tmp186, tmp187
	sw	a5,-24(s0)	# tmp186, sum
	j	.L4		#
.L5:
# eval/problem143//code.c:8:         else sum += lst[i];
	lw	a5,-20(s0)		# _27, i
	slli	a5,a5,2	#, _28, _27
	ld	a4,-40(s0)		# tmp189, lst
	add	a5,a4,a5	# _28, _29, tmp189
	lw	a5,0(a5)		# _30, *_29
# eval/problem143//code.c:8:         else sum += lst[i];
	lw	a4,-24(s0)		# tmp192, sum
	addw	a5,a4,a5	# _30, tmp190, tmp191
	sw	a5,-24(s0)	# tmp190, sum
.L4:
# eval/problem143//code.c:5:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp195, i
	addiw	a5,a5,1	#, tmp193, tmp194
	sw	a5,-20(s0)	# tmp193, i
.L2:
# eval/problem143//code.c:5:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp197, i
	mv	a4,a5	# tmp196, tmp197
	lw	a5,-44(s0)		# tmp199, size
	sext.w	a4,a4	# tmp200, tmp196
	sext.w	a5,a5	# tmp201, tmp198
	blt	a4,a5,.L6	#, tmp200, tmp201,
# eval/problem143//code.c:10:     return sum;
	lw	a5,-24(s0)		# _37, sum
# eval/problem143//code.c:11: }
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
