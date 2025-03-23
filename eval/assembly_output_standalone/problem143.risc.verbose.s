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
	sd	a0,-40(s0)	# lst, lst
	mv	a5,a1	# tmp104, size
	sw	a5,-44(s0)	# tmp105, size
# eval/problem143//code.c:4:     int sum = 0;
	sw	zero,-24(s0)	#, sum
# eval/problem143//code.c:5:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# eval/problem143//code.c:5:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L6:
# eval/problem143//code.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	lw	a5,-20(s0)		# tmp108, i
	mv	a4,a5	# tmp107, tmp108
	li	a5,3		# tmp110,
	remw	a5,a4,a5	# tmp110, tmp109, tmp107
	sext.w	a5,a5	# _1, tmp109
# eval/problem143//code.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	bne	a5,zero,.L3	#, _1,,
# eval/problem143//code.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	lw	a5,-20(s0)		# _2, i
	slli	a5,a5,2	#, _3, _2
	ld	a4,-40(s0)		# tmp111, lst
	add	a5,a4,a5	# _3, _4, tmp111
	lw	a4,0(a5)		# _5, *_4
# eval/problem143//code.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	lw	a5,-20(s0)		# _6, i
	slli	a5,a5,2	#, _7, _6
	ld	a3,-40(s0)		# tmp112, lst
	add	a5,a3,a5	# _7, _8, tmp112
	lw	a5,0(a5)		# _9, *_8
# eval/problem143//code.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	mulw	a5,a4,a5	# tmp113, _5, _9
	sext.w	a5,a5	# _10, tmp113
# eval/problem143//code.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	lw	a4,-24(s0)		# tmp116, sum
	addw	a5,a4,a5	# _10, tmp114, tmp115
	sw	a5,-24(s0)	# tmp114, sum
	j	.L4		#
.L3:
# eval/problem143//code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	lw	a5,-20(s0)		# i.0_11, i
	andi	a5,a5,3	#, tmp118, tmp117
	sext.w	a5,a5	# _12, tmp118
# eval/problem143//code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	bne	a5,zero,.L5	#, _12,,
# eval/problem143//code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	lw	a5,-20(s0)		# _13, i
	slli	a5,a5,2	#, _14, _13
	ld	a4,-40(s0)		# tmp119, lst
	add	a5,a4,a5	# _14, _15, tmp119
	lw	a4,0(a5)		# _16, *_15
# eval/problem143//code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	lw	a5,-20(s0)		# _17, i
	slli	a5,a5,2	#, _18, _17
	ld	a3,-40(s0)		# tmp120, lst
	add	a5,a3,a5	# _18, _19, tmp120
	lw	a5,0(a5)		# _20, *_19
# eval/problem143//code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	mulw	a5,a4,a5	# tmp121, _16, _20
	sext.w	a4,a5	# _21, tmp121
# eval/problem143//code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	lw	a5,-20(s0)		# _22, i
	slli	a5,a5,2	#, _23, _22
	ld	a3,-40(s0)		# tmp122, lst
	add	a5,a3,a5	# _23, _24, tmp122
	lw	a5,0(a5)		# _25, *_24
# eval/problem143//code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	mulw	a5,a4,a5	# tmp123, _21, _25
	sext.w	a5,a5	# _26, tmp123
# eval/problem143//code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	lw	a4,-24(s0)		# tmp126, sum
	addw	a5,a4,a5	# _26, tmp124, tmp125
	sw	a5,-24(s0)	# tmp124, sum
	j	.L4		#
.L5:
# eval/problem143//code.c:8:         else sum += lst[i];
	lw	a5,-20(s0)		# _27, i
	slli	a5,a5,2	#, _28, _27
	ld	a4,-40(s0)		# tmp127, lst
	add	a5,a4,a5	# _28, _29, tmp127
	lw	a5,0(a5)		# _30, *_29
# eval/problem143//code.c:8:         else sum += lst[i];
	lw	a4,-24(s0)		# tmp130, sum
	addw	a5,a4,a5	# _30, tmp128, tmp129
	sw	a5,-24(s0)	# tmp128, sum
.L4:
# eval/problem143//code.c:5:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp133, i
	addiw	a5,a5,1	#, tmp131, tmp132
	sw	a5,-20(s0)	# tmp131, i
.L2:
# eval/problem143//code.c:5:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp135, i
	mv	a4,a5	# tmp134, tmp135
	lw	a5,-44(s0)		# tmp137, size
	sext.w	a4,a4	# tmp138, tmp134
	sext.w	a5,a5	# tmp139, tmp136
	blt	a4,a5,.L6	#, tmp138, tmp139,
# eval/problem143//code.c:10:     return sum;
	lw	a5,-24(s0)		# _37, sum
# eval/problem143//code.c:11: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
