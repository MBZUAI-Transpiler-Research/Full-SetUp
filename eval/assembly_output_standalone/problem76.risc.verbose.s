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
	mv	a5,a0	# tmp77, a
	sw	a5,-36(s0)	# tmp78, a
# eval/problem76//code.c:5:     if (a < 2) return 0;
	lw	a5,-36(s0)		# tmp80, a
	sext.w	a4,a5	# tmp81, tmp79
	li	a5,1		# tmp82,
	bgt	a4,a5,.L2	#, tmp81, tmp82,
# eval/problem76//code.c:5:     if (a < 2) return 0;
	li	a5,0		# _10,
	j	.L3		#
.L2:
# eval/problem76//code.c:6:     int num = 0;
	sw	zero,-24(s0)	#, num
# eval/problem76//code.c:7:     for (int i = 2; i * i <= a; i++) {
	li	a5,2		# tmp83,
	sw	a5,-20(s0)	# tmp83, i
# eval/problem76//code.c:7:     for (int i = 2; i * i <= a; i++) {
	j	.L4		#
.L6:
# eval/problem76//code.c:9:             a = a / i;
	lw	a5,-36(s0)		# tmp87, a
	mv	a4,a5	# tmp86, tmp87
	lw	a5,-20(s0)		# tmp89, i
	divw	a5,a4,a5	# tmp88, tmp85, tmp86
	sw	a5,-36(s0)	# tmp85, a
# eval/problem76//code.c:10:             num++;
	lw	a5,-24(s0)		# tmp92, num
	addiw	a5,a5,1	#, tmp90, tmp91
	sw	a5,-24(s0)	# tmp90, num
.L5:
# eval/problem76//code.c:8:         while (a % i == 0) {
	lw	a5,-36(s0)		# tmp95, a
	mv	a4,a5	# tmp94, tmp95
	lw	a5,-20(s0)		# tmp98, i
	remw	a5,a4,a5	# tmp97, tmp96, tmp94
	sext.w	a5,a5	# _1, tmp96
# eval/problem76//code.c:8:         while (a % i == 0) {
	beq	a5,zero,.L6	#, _1,,
# eval/problem76//code.c:7:     for (int i = 2; i * i <= a; i++) {
	lw	a5,-20(s0)		# tmp101, i
	addiw	a5,a5,1	#, tmp99, tmp100
	sw	a5,-20(s0)	# tmp99, i
.L4:
# eval/problem76//code.c:7:     for (int i = 2; i * i <= a; i++) {
	lw	a5,-20(s0)		# tmp104, i
	mulw	a5,a5,a5	# tmp102, tmp103, tmp103
	sext.w	a4,a5	# _2, tmp102
# eval/problem76//code.c:7:     for (int i = 2; i * i <= a; i++) {
	lw	a5,-36(s0)		# tmp106, a
	sext.w	a5,a5	# tmp107, tmp105
	bge	a5,a4,.L5	#, tmp107, tmp108,
# eval/problem76//code.c:13:     if (a > 1) num++;
	lw	a5,-36(s0)		# tmp110, a
	sext.w	a4,a5	# tmp111, tmp109
	li	a5,1		# tmp112,
	ble	a4,a5,.L8	#, tmp111, tmp112,
# eval/problem76//code.c:13:     if (a > 1) num++;
	lw	a5,-24(s0)		# tmp115, num
	addiw	a5,a5,1	#, tmp113, tmp114
	sw	a5,-24(s0)	# tmp113, num
.L8:
# eval/problem76//code.c:14:     return num == 3;
	lw	a5,-24(s0)		# tmp118, num
	sext.w	a4,a5	# tmp120, tmp117
	li	a5,3		# tmp122,
	sub	a5,a4,a5	# tmp121, tmp120, tmp122
	seqz	a5,a5	# tmp119, tmp121
	andi	a5,a5,0xff	# _3, tmp116
	sext.w	a5,a5	# _10, _3
.L3:
# eval/problem76//code.c:15: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
