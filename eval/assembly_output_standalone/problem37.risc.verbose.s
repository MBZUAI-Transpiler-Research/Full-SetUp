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
	mv	a5,a0	# tmp77, n
	sw	a5,-36(s0)	# tmp78, n
# eval/problem37//code.c:4:     int count = 0;
	sw	zero,-28(s0)	#, count
# eval/problem37//code.c:5:     for (int i = 0; i < n; i++)
	sw	zero,-24(s0)	#, i
# eval/problem37//code.c:5:     for (int i = 0; i < n; i++)
	j	.L2		#
.L8:
# eval/problem37//code.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	lw	a5,-24(s0)		# tmp81, i
	mv	a4,a5	# tmp80, tmp81
	li	a5,11		# tmp83,
	remw	a5,a4,a5	# tmp83, tmp82, tmp80
	sext.w	a5,a5	# _1, tmp82
# eval/problem37//code.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	beq	a5,zero,.L3	#, _1,,
# eval/problem37//code.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	lw	a5,-24(s0)		# tmp86, i
	mv	a4,a5	# tmp85, tmp86
	li	a5,13		# tmp88,
	remw	a5,a4,a5	# tmp88, tmp87, tmp85
	sext.w	a5,a5	# _2, tmp87
# eval/problem37//code.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	bne	a5,zero,.L4	#, _2,,
.L3:
# eval/problem37//code.c:7:             int q = i;
	lw	a5,-24(s0)		# tmp89, i
	sw	a5,-20(s0)	# tmp89, q
# eval/problem37//code.c:8:             while (q > 0) {
	j	.L5		#
.L7:
# eval/problem37//code.c:9:                 if (q % 10 == 7) count += 1;
	lw	a5,-20(s0)		# tmp92, q
	mv	a4,a5	# tmp91, tmp92
	li	a5,10		# tmp94,
	remw	a5,a4,a5	# tmp94, tmp93, tmp91
	sext.w	a5,a5	# _3, tmp93
# eval/problem37//code.c:9:                 if (q % 10 == 7) count += 1;
	mv	a4,a5	# tmp95, _3
	li	a5,7		# tmp96,
	bne	a4,a5,.L6	#, tmp95, tmp96,
# eval/problem37//code.c:9:                 if (q % 10 == 7) count += 1;
	lw	a5,-28(s0)		# tmp99, count
	addiw	a5,a5,1	#, tmp97, tmp98
	sw	a5,-28(s0)	# tmp97, count
.L6:
# eval/problem37//code.c:10:                 q = q / 10;
	lw	a5,-20(s0)		# tmp102, q
	mv	a4,a5	# tmp101, tmp102
	li	a5,10		# tmp104,
	divw	a5,a4,a5	# tmp104, tmp103, tmp101
	sw	a5,-20(s0)	# tmp103, q
.L5:
# eval/problem37//code.c:8:             while (q > 0) {
	lw	a5,-20(s0)		# tmp106, q
	sext.w	a5,a5	# tmp107, tmp105
	bgt	a5,zero,.L7	#, tmp107,,
.L4:
# eval/problem37//code.c:5:     for (int i = 0; i < n; i++)
	lw	a5,-24(s0)		# tmp110, i
	addiw	a5,a5,1	#, tmp108, tmp109
	sw	a5,-24(s0)	# tmp108, i
.L2:
# eval/problem37//code.c:5:     for (int i = 0; i < n; i++)
	lw	a5,-24(s0)		# tmp112, i
	mv	a4,a5	# tmp111, tmp112
	lw	a5,-36(s0)		# tmp114, n
	sext.w	a4,a4	# tmp115, tmp111
	sext.w	a5,a5	# tmp116, tmp113
	blt	a4,a5,.L8	#, tmp115, tmp116,
# eval/problem37//code.c:13:     return count;
	lw	a5,-28(s0)		# _13, count
# eval/problem37//code.c:14: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
