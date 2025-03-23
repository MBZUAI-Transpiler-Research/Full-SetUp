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
	mv	a5,a1	# tmp101, lst_size
	sw	a5,-44(s0)	# tmp102, lst_size
# eval/problem127//code.c:5:     if (lst_size == 0) return true;
	lw	a5,-44(s0)		# tmp104, lst_size
	sext.w	a5,a5	# tmp105, tmp103
	bne	a5,zero,.L2	#, tmp105,,
# eval/problem127//code.c:5:     if (lst_size == 0) return true;
	li	a5,1		# _29,
	j	.L3		#
.L2:
# eval/problem127//code.c:7:     for (int i = 1; i < lst_size; i++) {
	li	a5,1		# tmp106,
	sw	a5,-20(s0)	# tmp106, i
# eval/problem127//code.c:7:     for (int i = 1; i < lst_size; i++) {
	j	.L4		#
.L7:
# eval/problem127//code.c:8:         if (lst[i] < lst[i - 1]) return false;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp107, lst
	add	a5,a4,a5	# _2, _3, tmp107
	lw	a3,0(a5)		# _4, *_3
# eval/problem127//code.c:8:         if (lst[i] < lst[i - 1]) return false;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	addi	a5,a5,-4	#, _7, _6
	ld	a4,-40(s0)		# tmp108, lst
	add	a5,a4,a5	# _7, _8, tmp108
	lw	a5,0(a5)		# _9, *_8
# eval/problem127//code.c:8:         if (lst[i] < lst[i - 1]) return false;
	mv	a4,a3	# tmp109, _4
	bge	a4,a5,.L5	#, tmp109, tmp110,
# eval/problem127//code.c:8:         if (lst[i] < lst[i - 1]) return false;
	li	a5,0		# _29,
	j	.L3		#
.L5:
# eval/problem127//code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	lw	a5,-20(s0)		# tmp112, i
	sext.w	a4,a5	# tmp113, tmp111
	li	a5,1		# tmp114,
	ble	a4,a5,.L6	#, tmp113, tmp114,
# eval/problem127//code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	lw	a5,-20(s0)		# _10, i
	slli	a5,a5,2	#, _11, _10
	ld	a4,-40(s0)		# tmp115, lst
	add	a5,a4,a5	# _11, _12, tmp115
	lw	a3,0(a5)		# _13, *_12
# eval/problem127//code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	lw	a5,-20(s0)		# _14, i
	slli	a5,a5,2	#, _15, _14
	addi	a5,a5,-4	#, _16, _15
	ld	a4,-40(s0)		# tmp116, lst
	add	a5,a4,a5	# _16, _17, tmp116
	lw	a5,0(a5)		# _18, *_17
# eval/problem127//code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	mv	a4,a3	# tmp117, _13
	bne	a4,a5,.L6	#, tmp117, tmp118,
# eval/problem127//code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	lw	a5,-20(s0)		# _19, i
	slli	a5,a5,2	#, _20, _19
	ld	a4,-40(s0)		# tmp119, lst
	add	a5,a4,a5	# _20, _21, tmp119
	lw	a3,0(a5)		# _22, *_21
# eval/problem127//code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	lw	a5,-20(s0)		# _23, i
	slli	a5,a5,2	#, _24, _23
	addi	a5,a5,-8	#, _25, _24
	ld	a4,-40(s0)		# tmp120, lst
	add	a5,a4,a5	# _25, _26, tmp120
	lw	a5,0(a5)		# _27, *_26
# eval/problem127//code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	mv	a4,a3	# tmp121, _22
	bne	a4,a5,.L6	#, tmp121, tmp122,
# eval/problem127//code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	li	a5,0		# _29,
	j	.L3		#
.L6:
# eval/problem127//code.c:7:     for (int i = 1; i < lst_size; i++) {
	lw	a5,-20(s0)		# tmp125, i
	addiw	a5,a5,1	#, tmp123, tmp124
	sw	a5,-20(s0)	# tmp123, i
.L4:
# eval/problem127//code.c:7:     for (int i = 1; i < lst_size; i++) {
	lw	a5,-20(s0)		# tmp127, i
	mv	a4,a5	# tmp126, tmp127
	lw	a5,-44(s0)		# tmp129, lst_size
	sext.w	a4,a4	# tmp130, tmp126
	sext.w	a5,a5	# tmp131, tmp128
	blt	a4,a5,.L7	#, tmp130, tmp131,
# eval/problem127//code.c:11:     return true;
	li	a5,1		# _29,
.L3:
# eval/problem127//code.c:12: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
