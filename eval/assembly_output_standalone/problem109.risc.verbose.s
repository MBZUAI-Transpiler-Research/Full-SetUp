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
	sd	a0,-40(s0)	# n, n
	mv	a5,a1	# tmp83, size
	sw	a5,-44(s0)	# tmp84, size
# eval/problem109//code.c:5:     int num = 0;
	sw	zero,-32(s0)	#, num
# eval/problem109//code.c:6:     for (int i = 0; i < size; i++) {
	sw	zero,-28(s0)	#, i
# eval/problem109//code.c:6:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L7:
# eval/problem109//code.c:7:         if (n[i] > 0) {
	lw	a5,-28(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp85, n
	add	a5,a4,a5	# _2, _3, tmp85
	lw	a5,0(a5)		# _4, *_3
# eval/problem109//code.c:7:         if (n[i] > 0) {
	ble	a5,zero,.L3	#, tmp86,,
# eval/problem109//code.c:8:             num += 1;
	lw	a5,-32(s0)		# tmp89, num
	addiw	a5,a5,1	#, tmp87, tmp88
	sw	a5,-32(s0)	# tmp87, num
	j	.L4		#
.L3:
# eval/problem109//code.c:10:             int sum = 0;
	sw	zero,-24(s0)	#, sum
# eval/problem109//code.c:11:             int w = abs(n[i]);
	lw	a5,-28(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-40(s0)		# tmp90, n
	add	a5,a4,a5	# _6, _7, tmp90
	lw	a4,0(a5)		# _8, *_7
# eval/problem109//code.c:11:             int w = abs(n[i]);
	sraiw	a5,a4,31	#, tmp91, _8
	xor	a4,a4,a5	# tmp91, tmp92, _8
	subw	a5,a4,a5	# tmp93, tmp92, tmp91
	sw	a5,-20(s0)	# tmp93, w
# eval/problem109//code.c:12:             while (w >= 10) {
	j	.L5		#
.L6:
# eval/problem109//code.c:13:                 sum += w % 10;
	lw	a5,-20(s0)		# tmp96, w
	mv	a4,a5	# tmp95, tmp96
	li	a5,10		# tmp98,
	remw	a5,a4,a5	# tmp98, tmp97, tmp95
	sext.w	a5,a5	# _9, tmp97
# eval/problem109//code.c:13:                 sum += w % 10;
	lw	a4,-24(s0)		# tmp101, sum
	addw	a5,a4,a5	# _9, tmp99, tmp100
	sw	a5,-24(s0)	# tmp99, sum
# eval/problem109//code.c:14:                 w = w / 10;
	lw	a5,-20(s0)		# tmp104, w
	mv	a4,a5	# tmp103, tmp104
	li	a5,10		# tmp106,
	divw	a5,a4,a5	# tmp106, tmp105, tmp103
	sw	a5,-20(s0)	# tmp105, w
.L5:
# eval/problem109//code.c:12:             while (w >= 10) {
	lw	a5,-20(s0)		# tmp108, w
	sext.w	a4,a5	# tmp109, tmp107
	li	a5,9		# tmp110,
	bgt	a4,a5,.L6	#, tmp109, tmp110,
# eval/problem109//code.c:16:             sum -= w;
	lw	a5,-24(s0)		# tmp113, sum
	mv	a4,a5	# tmp112, tmp113
	lw	a5,-20(s0)		# tmp115, w
	subw	a5,a4,a5	# tmp111, tmp112, tmp114
	sw	a5,-24(s0)	# tmp111, sum
# eval/problem109//code.c:17:             if (sum > 0) num += 1;
	lw	a5,-24(s0)		# tmp117, sum
	sext.w	a5,a5	# tmp118, tmp116
	ble	a5,zero,.L4	#, tmp118,,
# eval/problem109//code.c:17:             if (sum > 0) num += 1;
	lw	a5,-32(s0)		# tmp121, num
	addiw	a5,a5,1	#, tmp119, tmp120
	sw	a5,-32(s0)	# tmp119, num
.L4:
# eval/problem109//code.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp124, i
	addiw	a5,a5,1	#, tmp122, tmp123
	sw	a5,-28(s0)	# tmp122, i
.L2:
# eval/problem109//code.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp126, i
	mv	a4,a5	# tmp125, tmp126
	lw	a5,-44(s0)		# tmp128, size
	sext.w	a4,a4	# tmp129, tmp125
	sext.w	a5,a5	# tmp130, tmp127
	blt	a4,a5,.L7	#, tmp129, tmp130,
# eval/problem109//code.c:20:     return num;
	lw	a5,-32(s0)		# _18, num
# eval/problem109//code.c:21: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
