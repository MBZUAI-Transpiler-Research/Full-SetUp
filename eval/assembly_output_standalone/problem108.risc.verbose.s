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
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
	mv	a5,a0	# tmp84, n
	sw	a5,-52(s0)	# tmp85, n
# eval/problem108//code.c:5:     int* counts = (int*)malloc(2 * sizeof(int));
	li	a0,8		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp86,
	sd	a5,-24(s0)	# tmp86, counts
# eval/problem108//code.c:6:     counts[0] = 0;
	ld	a5,-24(s0)		# tmp87, counts
	sw	zero,0(a5)	#, *counts_18
# eval/problem108//code.c:7:     counts[1] = 0;
	ld	a5,-24(s0)		# tmp88, counts
	addi	a5,a5,4	#, _1, tmp88
# eval/problem108//code.c:7:     counts[1] = 0;
	sw	zero,0(a5)	#, *_1
# eval/problem108//code.c:9:     for (int i = 1; i <= n; i++) {
	li	a5,1		# tmp89,
	sw	a5,-40(s0)	# tmp89, i
# eval/problem108//code.c:9:     for (int i = 1; i <= n; i++) {
	j	.L2		#
.L7:
# eval/problem108//code.c:10:         int reversed = 0, original = i;
	sw	zero,-36(s0)	#, reversed
# eval/problem108//code.c:10:         int reversed = 0, original = i;
	lw	a5,-40(s0)		# tmp90, i
	sw	a5,-28(s0)	# tmp90, original
# eval/problem108//code.c:12:         int number = i;
	lw	a5,-40(s0)		# tmp91, i
	sw	a5,-32(s0)	# tmp91, number
# eval/problem108//code.c:13:         while (number != 0) {
	j	.L3		#
.L4:
# eval/problem108//code.c:14:             reversed = reversed * 10 + number % 10;
	lw	a5,-36(s0)		# tmp93, reversed
	mv	a4,a5	# tmp92, tmp93
	mv	a5,a4	# tmp94, tmp92
	slliw	a5,a5,2	#, tmp95, tmp94
	addw	a5,a5,a4	# tmp92, tmp94, tmp94
	slliw	a5,a5,1	#, tmp96, tmp94
	sext.w	a4,a5	# _2, tmp94
# eval/problem108//code.c:14:             reversed = reversed * 10 + number % 10;
	lw	a5,-32(s0)		# tmp99, number
	mv	a3,a5	# tmp98, tmp99
	li	a5,10		# tmp101,
	remw	a5,a3,a5	# tmp101, tmp100, tmp98
	sext.w	a5,a5	# _3, tmp100
# eval/problem108//code.c:14:             reversed = reversed * 10 + number % 10;
	addw	a5,a4,a5	# _3, tmp102, _2
	sw	a5,-36(s0)	# tmp102, reversed
# eval/problem108//code.c:15:             number /= 10;
	lw	a5,-32(s0)		# tmp105, number
	mv	a4,a5	# tmp104, tmp105
	li	a5,10		# tmp107,
	divw	a5,a4,a5	# tmp107, tmp106, tmp104
	sw	a5,-32(s0)	# tmp106, number
.L3:
# eval/problem108//code.c:13:         while (number != 0) {
	lw	a5,-32(s0)		# tmp109, number
	sext.w	a5,a5	# tmp110, tmp108
	bne	a5,zero,.L4	#, tmp110,,
# eval/problem108//code.c:18:         if (original == reversed) {
	lw	a5,-28(s0)		# tmp112, original
	mv	a4,a5	# tmp111, tmp112
	lw	a5,-36(s0)		# tmp114, reversed
	sext.w	a4,a4	# tmp115, tmp111
	sext.w	a5,a5	# tmp116, tmp113
	bne	a4,a5,.L5	#, tmp115, tmp116,
# eval/problem108//code.c:19:             if (original % 2 == 0) counts[0]++;
	lw	a5,-28(s0)		# original.0_4, original
	andi	a5,a5,1	#, tmp118, tmp117
	sext.w	a5,a5	# _5, tmp118
# eval/problem108//code.c:19:             if (original % 2 == 0) counts[0]++;
	bne	a5,zero,.L6	#, _5,,
# eval/problem108//code.c:19:             if (original % 2 == 0) counts[0]++;
	ld	a5,-24(s0)		# tmp119, counts
	lw	a5,0(a5)		# _6, *counts_18
# eval/problem108//code.c:19:             if (original % 2 == 0) counts[0]++;
	addiw	a5,a5,1	#, tmp120, _6
	sext.w	a4,a5	# _7, tmp120
	ld	a5,-24(s0)		# tmp121, counts
	sw	a4,0(a5)	# _7, *counts_18
	j	.L5		#
.L6:
# eval/problem108//code.c:20:             else counts[1]++;
	ld	a5,-24(s0)		# tmp122, counts
	addi	a5,a5,4	#, _8, tmp122
	lw	a4,0(a5)		# _9, *_8
# eval/problem108//code.c:20:             else counts[1]++;
	addiw	a4,a4,1	#, tmp123, _9
	sext.w	a4,a4	# _10, tmp123
	sw	a4,0(a5)	# _10, *_8
.L5:
# eval/problem108//code.c:9:     for (int i = 1; i <= n; i++) {
	lw	a5,-40(s0)		# tmp126, i
	addiw	a5,a5,1	#, tmp124, tmp125
	sw	a5,-40(s0)	# tmp124, i
.L2:
# eval/problem108//code.c:9:     for (int i = 1; i <= n; i++) {
	lw	a5,-40(s0)		# tmp128, i
	mv	a4,a5	# tmp127, tmp128
	lw	a5,-52(s0)		# tmp130, n
	sext.w	a4,a4	# tmp131, tmp127
	sext.w	a5,a5	# tmp132, tmp129
	ble	a4,a5,.L7	#, tmp131, tmp132,
# eval/problem108//code.c:24:     return counts;
	ld	a5,-24(s0)		# _23, counts
# eval/problem108//code.c:25: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
