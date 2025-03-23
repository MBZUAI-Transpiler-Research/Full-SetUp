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
	sd	s0,56(sp)	#,
	addi	s0,sp,64	#,,
	mv	a5,a0	# tmp76, n
	sw	a5,-52(s0)	# tmp77, n
# eval/problem40//code.c:4:     int f1 = 1, f2 = 2, m;
	li	a5,1		# tmp78,
	sw	a5,-40(s0)	# tmp78, f1
# eval/problem40//code.c:4:     int f1 = 1, f2 = 2, m;
	li	a5,2		# tmp79,
	sw	a5,-36(s0)	# tmp79, f2
# eval/problem40//code.c:5:     int count = 0;
	sw	zero,-32(s0)	#, count
# eval/problem40//code.c:6:     while (count < n) {
	j	.L2		#
.L9:
# eval/problem40//code.c:7:         f1 = f1 + f2;
	lw	a5,-40(s0)		# tmp82, f1
	mv	a4,a5	# tmp81, tmp82
	lw	a5,-36(s0)		# tmp84, f2
	addw	a5,a4,a5	# tmp83, tmp80, tmp81
	sw	a5,-40(s0)	# tmp80, f1
# eval/problem40//code.c:8:         m = f1; f1 = f2; f2 = m;
	lw	a5,-40(s0)		# tmp85, f1
	sw	a5,-20(s0)	# tmp85, m
# eval/problem40//code.c:8:         m = f1; f1 = f2; f2 = m;
	lw	a5,-36(s0)		# tmp86, f2
	sw	a5,-40(s0)	# tmp86, f1
# eval/problem40//code.c:8:         m = f1; f1 = f2; f2 = m;
	lw	a5,-20(s0)		# tmp87, m
	sw	a5,-36(s0)	# tmp87, f2
# eval/problem40//code.c:9:         int isprime = 1;
	li	a5,1		# tmp88,
	sw	a5,-28(s0)	# tmp88, isprime
# eval/problem40//code.c:10:         for (int w = 2; w * w <= f1; w++) {
	li	a5,2		# tmp89,
	sw	a5,-24(s0)	# tmp89, w
# eval/problem40//code.c:10:         for (int w = 2; w * w <= f1; w++) {
	j	.L3		#
.L6:
# eval/problem40//code.c:11:             if (f1 % w == 0) {
	lw	a5,-40(s0)		# tmp92, f1
	mv	a4,a5	# tmp91, tmp92
	lw	a5,-24(s0)		# tmp95, w
	remw	a5,a4,a5	# tmp94, tmp93, tmp91
	sext.w	a5,a5	# _1, tmp93
# eval/problem40//code.c:11:             if (f1 % w == 0) {
	bne	a5,zero,.L4	#, _1,,
# eval/problem40//code.c:12:                 isprime = 0; break;
	sw	zero,-28(s0)	#, isprime
# eval/problem40//code.c:12:                 isprime = 0; break;
	j	.L5		#
.L4:
# eval/problem40//code.c:10:         for (int w = 2; w * w <= f1; w++) {
	lw	a5,-24(s0)		# tmp98, w
	addiw	a5,a5,1	#, tmp96, tmp97
	sw	a5,-24(s0)	# tmp96, w
.L3:
# eval/problem40//code.c:10:         for (int w = 2; w * w <= f1; w++) {
	lw	a5,-24(s0)		# tmp101, w
	mulw	a5,a5,a5	# tmp99, tmp100, tmp100
	sext.w	a4,a5	# _2, tmp99
# eval/problem40//code.c:10:         for (int w = 2; w * w <= f1; w++) {
	lw	a5,-40(s0)		# tmp103, f1
	sext.w	a5,a5	# tmp104, tmp102
	bge	a5,a4,.L6	#, tmp104, tmp105,
.L5:
# eval/problem40//code.c:15:         if (isprime) count += 1;
	lw	a5,-28(s0)		# tmp107, isprime
	sext.w	a5,a5	# tmp108, tmp106
	beq	a5,zero,.L7	#, tmp108,,
# eval/problem40//code.c:15:         if (isprime) count += 1;
	lw	a5,-32(s0)		# tmp111, count
	addiw	a5,a5,1	#, tmp109, tmp110
	sw	a5,-32(s0)	# tmp109, count
.L7:
# eval/problem40//code.c:16:         if (count == n) return f1;
	lw	a5,-32(s0)		# tmp113, count
	mv	a4,a5	# tmp112, tmp113
	lw	a5,-52(s0)		# tmp115, n
	sext.w	a4,a4	# tmp116, tmp112
	sext.w	a5,a5	# tmp117, tmp114
	bne	a4,a5,.L2	#, tmp116, tmp117,
# eval/problem40//code.c:16:         if (count == n) return f1;
	lw	a5,-40(s0)		# _9, f1
	j	.L8		#
.L2:
# eval/problem40//code.c:6:     while (count < n) {
	lw	a5,-32(s0)		# tmp119, count
	mv	a4,a5	# tmp118, tmp119
	lw	a5,-52(s0)		# tmp121, n
	sext.w	a4,a4	# tmp122, tmp118
	sext.w	a5,a5	# tmp123, tmp120
	blt	a4,a5,.L9	#, tmp122, tmp123,
# eval/problem40//code.c:18:     return 0;
	li	a5,0		# _9,
.L8:
# eval/problem40//code.c:19: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
