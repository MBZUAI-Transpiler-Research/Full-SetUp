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
	mv	a5,a1	# tmp92, size
	sw	a5,-44(s0)	# tmp93, size
# eval/problem91//code.c:5:     if (size < 2) return -1;
	lw	a5,-44(s0)		# tmp95, size
	sext.w	a4,a5	# tmp96, tmp94
	li	a5,1		# tmp97,
	bgt	a4,a5,.L2	#, tmp96, tmp97,
# eval/problem91//code.c:5:     if (size < 2) return -1;
	li	a5,-1		# _24,
	j	.L3		#
.L2:
# eval/problem91//code.c:7:     int first = INT_MAX, second = INT_MAX;
	li	a5,-2147483648		# tmp99,
	xori	a5,a5,-1	#, tmp98, tmp99
	sw	a5,-28(s0)	# tmp98, first
# eval/problem91//code.c:7:     int first = INT_MAX, second = INT_MAX;
	li	a5,-2147483648		# tmp101,
	xori	a5,a5,-1	#, tmp100, tmp101
	sw	a5,-24(s0)	# tmp100, second
# eval/problem91//code.c:8:     for (int i = 0; i < size; ++i) {
	sw	zero,-20(s0)	#, i
# eval/problem91//code.c:8:     for (int i = 0; i < size; ++i) {
	j	.L4		#
.L7:
# eval/problem91//code.c:9:         if (lst[i] < first) {
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp102, lst
	add	a5,a4,a5	# _2, _3, tmp102
	lw	a4,0(a5)		# _4, *_3
# eval/problem91//code.c:9:         if (lst[i] < first) {
	lw	a5,-28(s0)		# tmp104, first
	sext.w	a5,a5	# tmp105, tmp103
	ble	a5,a4,.L5	#, tmp105, tmp106,
# eval/problem91//code.c:10:             second = first;
	lw	a5,-28(s0)		# tmp107, first
	sw	a5,-24(s0)	# tmp107, second
# eval/problem91//code.c:11:             first = lst[i];
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-40(s0)		# tmp108, lst
	add	a5,a4,a5	# _6, _7, tmp108
# eval/problem91//code.c:11:             first = lst[i];
	lw	a5,0(a5)		# tmp109, *_7
	sw	a5,-28(s0)	# tmp109, first
	j	.L6		#
.L5:
# eval/problem91//code.c:12:         } else if (lst[i] < second && lst[i] != first) {
	lw	a5,-20(s0)		# _8, i
	slli	a5,a5,2	#, _9, _8
	ld	a4,-40(s0)		# tmp110, lst
	add	a5,a4,a5	# _9, _10, tmp110
	lw	a4,0(a5)		# _11, *_10
# eval/problem91//code.c:12:         } else if (lst[i] < second && lst[i] != first) {
	lw	a5,-24(s0)		# tmp112, second
	sext.w	a5,a5	# tmp113, tmp111
	ble	a5,a4,.L6	#, tmp113, tmp114,
# eval/problem91//code.c:12:         } else if (lst[i] < second && lst[i] != first) {
	lw	a5,-20(s0)		# _12, i
	slli	a5,a5,2	#, _13, _12
	ld	a4,-40(s0)		# tmp115, lst
	add	a5,a4,a5	# _13, _14, tmp115
	lw	a4,0(a5)		# _15, *_14
# eval/problem91//code.c:12:         } else if (lst[i] < second && lst[i] != first) {
	lw	a5,-28(s0)		# tmp117, first
	sext.w	a5,a5	# tmp118, tmp116
	beq	a5,a4,.L6	#, tmp118, tmp119,
# eval/problem91//code.c:13:             second = lst[i];
	lw	a5,-20(s0)		# _16, i
	slli	a5,a5,2	#, _17, _16
	ld	a4,-40(s0)		# tmp120, lst
	add	a5,a4,a5	# _17, _18, tmp120
# eval/problem91//code.c:13:             second = lst[i];
	lw	a5,0(a5)		# tmp121, *_18
	sw	a5,-24(s0)	# tmp121, second
.L6:
# eval/problem91//code.c:8:     for (int i = 0; i < size; ++i) {
	lw	a5,-20(s0)		# tmp124, i
	addiw	a5,a5,1	#, tmp122, tmp123
	sw	a5,-20(s0)	# tmp122, i
.L4:
# eval/problem91//code.c:8:     for (int i = 0; i < size; ++i) {
	lw	a5,-20(s0)		# tmp126, i
	mv	a4,a5	# tmp125, tmp126
	lw	a5,-44(s0)		# tmp128, size
	sext.w	a4,a4	# tmp129, tmp125
	sext.w	a5,a5	# tmp130, tmp127
	blt	a4,a5,.L7	#, tmp129, tmp130,
# eval/problem91//code.c:17:     if (second == INT_MAX) return -1;
	lw	a5,-24(s0)		# tmp132, second
	sext.w	a4,a5	# tmp133, tmp131
	li	a5,-2147483648		# tmp135,
	xori	a5,a5,-1	#, tmp134, tmp135
	bne	a4,a5,.L8	#, tmp133, tmp134,
# eval/problem91//code.c:17:     if (second == INT_MAX) return -1;
	li	a5,-1		# _24,
	j	.L3		#
.L8:
# eval/problem91//code.c:18:     return second;
	lw	a5,-24(s0)		# _24, second
.L3:
# eval/problem91//code.c:19: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
