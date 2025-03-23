	.file	"code.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-48	#,,
	sd	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-40(s0)	# q, q
	mv	a5,a1	# tmp102, size
	mv	a4,a2	# tmp104, w
	sw	a5,-44(s0)	# tmp103, size
	mv	a5,a4	# tmp105, tmp104
	sw	a5,-48(s0)	# tmp105, w
# eval/problem73//code.c:5:     int sum = 0;
	sw	zero,-24(s0)	#, sum
# eval/problem73//code.c:6:     for (int i = 0; i < size / 2; i++) {
	sw	zero,-20(s0)	#, i
# eval/problem73//code.c:6:     for (int i = 0; i < size / 2; i++) {
	j	.L2		#
.L5:
# eval/problem73//code.c:7:         if (q[i] != q[size - 1 - i]) return false;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp106, q
	add	a5,a4,a5	# _2, _3, tmp106
	lw	a3,0(a5)		# _4, *_3
# eval/problem73//code.c:7:         if (q[i] != q[size - 1 - i]) return false;
	lw	a5,-44(s0)		# tmp109, size
	addiw	a5,a5,-1	#, tmp107, tmp108
	sext.w	a5,a5	# _5, tmp107
# eval/problem73//code.c:7:         if (q[i] != q[size - 1 - i]) return false;
	lw	a4,-20(s0)		# tmp112, i
	subw	a5,a5,a4	# tmp110, _5, tmp111
	sext.w	a5,a5	# _6, tmp110
# eval/problem73//code.c:7:         if (q[i] != q[size - 1 - i]) return false;
	slli	a5,a5,2	#, _8, _7
	ld	a4,-40(s0)		# tmp113, q
	add	a5,a4,a5	# _8, _9, tmp113
	lw	a5,0(a5)		# _10, *_9
# eval/problem73//code.c:7:         if (q[i] != q[size - 1 - i]) return false;
	mv	a4,a3	# tmp114, _4
	beq	a4,a5,.L3	#, tmp114, tmp115,
# eval/problem73//code.c:7:         if (q[i] != q[size - 1 - i]) return false;
	li	a5,0		# _32,
	j	.L4		#
.L3:
# eval/problem73//code.c:8:         sum += q[i] + q[size - 1 - i];
	lw	a5,-20(s0)		# _11, i
	slli	a5,a5,2	#, _12, _11
	ld	a4,-40(s0)		# tmp116, q
	add	a5,a4,a5	# _12, _13, tmp116
	lw	a4,0(a5)		# _14, *_13
# eval/problem73//code.c:8:         sum += q[i] + q[size - 1 - i];
	lw	a5,-44(s0)		# tmp119, size
	addiw	a5,a5,-1	#, tmp117, tmp118
	sext.w	a5,a5	# _15, tmp117
# eval/problem73//code.c:8:         sum += q[i] + q[size - 1 - i];
	lw	a3,-20(s0)		# tmp122, i
	subw	a5,a5,a3	# tmp120, _15, tmp121
	sext.w	a5,a5	# _16, tmp120
# eval/problem73//code.c:8:         sum += q[i] + q[size - 1 - i];
	slli	a5,a5,2	#, _18, _17
	ld	a3,-40(s0)		# tmp123, q
	add	a5,a3,a5	# _18, _19, tmp123
	lw	a5,0(a5)		# _20, *_19
# eval/problem73//code.c:8:         sum += q[i] + q[size - 1 - i];
	addw	a5,a4,a5	# _20, tmp124, _14
	sext.w	a5,a5	# _21, tmp124
# eval/problem73//code.c:8:         sum += q[i] + q[size - 1 - i];
	lw	a4,-24(s0)		# tmp127, sum
	addw	a5,a4,a5	# _21, tmp125, tmp126
	sw	a5,-24(s0)	# tmp125, sum
# eval/problem73//code.c:6:     for (int i = 0; i < size / 2; i++) {
	lw	a5,-20(s0)		# tmp130, i
	addiw	a5,a5,1	#, tmp128, tmp129
	sw	a5,-20(s0)	# tmp128, i
.L2:
# eval/problem73//code.c:6:     for (int i = 0; i < size / 2; i++) {
	lw	a5,-44(s0)		# tmp133, size
	srliw	a4,a5,31	#, tmp134, tmp132
	addw	a5,a4,a5	# tmp132, tmp135, tmp134
	sraiw	a5,a5,1	#, tmp136, tmp135
	sext.w	a4,a5	# _22, tmp136
# eval/problem73//code.c:6:     for (int i = 0; i < size / 2; i++) {
	lw	a5,-20(s0)		# tmp138, i
	sext.w	a5,a5	# tmp139, tmp137
	blt	a5,a4,.L5	#, tmp139, tmp140,
# eval/problem73//code.c:10:     if (size % 2 == 1) sum += q[size / 2];
	lw	a5,-44(s0)		# tmp143, size
	mv	a4,a5	# tmp142, tmp143
	sraiw	a5,a4,31	#, tmp144, tmp142
	srliw	a5,a5,31	#, tmp145, tmp144
	addw	a4,a4,a5	# tmp145, tmp146, tmp142
	andi	a4,a4,1	#, tmp147, tmp146
	subw	a5,a4,a5	# tmp148, tmp147, tmp145
	sext.w	a5,a5	# _23, tmp148
# eval/problem73//code.c:10:     if (size % 2 == 1) sum += q[size / 2];
	mv	a4,a5	# tmp149, _23
	li	a5,1		# tmp150,
	bne	a4,a5,.L6	#, tmp149, tmp150,
# eval/problem73//code.c:10:     if (size % 2 == 1) sum += q[size / 2];
	lw	a5,-44(s0)		# tmp153, size
	srliw	a4,a5,31	#, tmp154, tmp152
	addw	a5,a4,a5	# tmp152, tmp155, tmp154
	sraiw	a5,a5,1	#, tmp156, tmp155
	sext.w	a5,a5	# _24, tmp156
# eval/problem73//code.c:10:     if (size % 2 == 1) sum += q[size / 2];
	slli	a5,a5,2	#, _26, _25
	ld	a4,-40(s0)		# tmp157, q
	add	a5,a4,a5	# _26, _27, tmp157
	lw	a5,0(a5)		# _28, *_27
# eval/problem73//code.c:10:     if (size % 2 == 1) sum += q[size / 2];
	lw	a4,-24(s0)		# tmp160, sum
	addw	a5,a4,a5	# _28, tmp158, tmp159
	sw	a5,-24(s0)	# tmp158, sum
.L6:
# eval/problem73//code.c:11:     return sum <= w;
	lw	a5,-24(s0)		# tmp163, sum
	mv	a4,a5	# tmp162, tmp163
	lw	a5,-48(s0)		# tmp165, w
	sext.w	a4,a4	# tmp167, tmp162
	sext.w	a5,a5	# tmp168, tmp164
	sgt	a5,a4,a5	# tmp169, tmp167, tmp168
	xori	a5,a5,1	#, tmp166, tmp169
	andi	a5,a5,0xff	# _32, tmp161
.L4:
# eval/problem73//code.c:12: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
