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
	sd	a0,-56(s0)	# lst, lst
	mv	a5,a1	# tmp80, size
	sw	a5,-60(s0)	# tmp81, size
# eval/problem95//code.c:4:     int largest = 0, sum = 0, num, temp;
	sw	zero,-40(s0)	#, largest
# eval/problem95//code.c:4:     int largest = 0, sum = 0, num, temp;
	sw	zero,-36(s0)	#, sum
# eval/problem95//code.c:6:     for (int i = 0; i < size; ++i) {
	sw	zero,-32(s0)	#, i
# eval/problem95//code.c:6:     for (int i = 0; i < size; ++i) {
	j	.L2		#
.L9:
# eval/problem95//code.c:7:         num = lst[i];
	lw	a5,-32(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-56(s0)		# tmp82, lst
	add	a5,a4,a5	# _2, _3, tmp82
# eval/problem95//code.c:7:         num = lst[i];
	lw	a5,0(a5)		# tmp83, *_3
	sw	a5,-20(s0)	# tmp83, num
# eval/problem95//code.c:8:         if (num > 1) {
	lw	a5,-20(s0)		# tmp85, num
	sext.w	a4,a5	# tmp86, tmp84
	li	a5,1		# tmp87,
	ble	a4,a5,.L3	#, tmp86, tmp87,
# eval/problem95//code.c:9:             int prime = 1;
	li	a5,1		# tmp88,
	sw	a5,-28(s0)	# tmp88, prime
# eval/problem95//code.c:10:             for (int j = 2; j * j <= num; ++j) {
	li	a5,2		# tmp89,
	sw	a5,-24(s0)	# tmp89, j
# eval/problem95//code.c:10:             for (int j = 2; j * j <= num; ++j) {
	j	.L4		#
.L7:
# eval/problem95//code.c:11:                 if (num % j == 0) {
	lw	a5,-20(s0)		# tmp92, num
	mv	a4,a5	# tmp91, tmp92
	lw	a5,-24(s0)		# tmp95, j
	remw	a5,a4,a5	# tmp94, tmp93, tmp91
	sext.w	a5,a5	# _4, tmp93
# eval/problem95//code.c:11:                 if (num % j == 0) {
	bne	a5,zero,.L5	#, _4,,
# eval/problem95//code.c:12:                     prime = 0;
	sw	zero,-28(s0)	#, prime
# eval/problem95//code.c:13:                     break;
	j	.L6		#
.L5:
# eval/problem95//code.c:10:             for (int j = 2; j * j <= num; ++j) {
	lw	a5,-24(s0)		# tmp98, j
	addiw	a5,a5,1	#, tmp96, tmp97
	sw	a5,-24(s0)	# tmp96, j
.L4:
# eval/problem95//code.c:10:             for (int j = 2; j * j <= num; ++j) {
	lw	a5,-24(s0)		# tmp101, j
	mulw	a5,a5,a5	# tmp99, tmp100, tmp100
	sext.w	a4,a5	# _5, tmp99
# eval/problem95//code.c:10:             for (int j = 2; j * j <= num; ++j) {
	lw	a5,-20(s0)		# tmp103, num
	sext.w	a5,a5	# tmp104, tmp102
	bge	a5,a4,.L7	#, tmp104, tmp105,
.L6:
# eval/problem95//code.c:16:             if (prime) {
	lw	a5,-28(s0)		# tmp107, prime
	sext.w	a5,a5	# tmp108, tmp106
	beq	a5,zero,.L3	#, tmp108,,
# eval/problem95//code.c:17:                 largest = num > largest ? num : largest;
	lw	a5,-20(s0)		# tmp111, num
	mv	a2,a5	# tmp110, tmp111
	lw	a5,-40(s0)		# tmp112, largest
	sext.w	a3,a5	# tmp113, tmp109
	sext.w	a4,a2	# tmp114, tmp110
	bge	a3,a4,.L8	#, tmp113, tmp114,
	mv	a5,a2	# tmp109, tmp110
.L8:
	sw	a5,-40(s0)	# tmp109, largest
.L3:
# eval/problem95//code.c:6:     for (int i = 0; i < size; ++i) {
	lw	a5,-32(s0)		# tmp117, i
	addiw	a5,a5,1	#, tmp115, tmp116
	sw	a5,-32(s0)	# tmp115, i
.L2:
# eval/problem95//code.c:6:     for (int i = 0; i < size; ++i) {
	lw	a5,-32(s0)		# tmp119, i
	mv	a4,a5	# tmp118, tmp119
	lw	a5,-60(s0)		# tmp121, size
	sext.w	a4,a4	# tmp122, tmp118
	sext.w	a5,a5	# tmp123, tmp120
	blt	a4,a5,.L9	#, tmp122, tmp123,
# eval/problem95//code.c:22:     while (largest > 0) {
	j	.L10		#
.L11:
# eval/problem95//code.c:23:         sum += largest % 10;
	lw	a5,-40(s0)		# tmp126, largest
	mv	a4,a5	# tmp125, tmp126
	li	a5,10		# tmp128,
	remw	a5,a4,a5	# tmp128, tmp127, tmp125
	sext.w	a5,a5	# _6, tmp127
# eval/problem95//code.c:23:         sum += largest % 10;
	lw	a4,-36(s0)		# tmp131, sum
	addw	a5,a4,a5	# _6, tmp129, tmp130
	sw	a5,-36(s0)	# tmp129, sum
# eval/problem95//code.c:24:         largest /= 10;
	lw	a5,-40(s0)		# tmp134, largest
	mv	a4,a5	# tmp133, tmp134
	li	a5,10		# tmp136,
	divw	a5,a4,a5	# tmp136, tmp135, tmp133
	sw	a5,-40(s0)	# tmp135, largest
.L10:
# eval/problem95//code.c:22:     while (largest > 0) {
	lw	a5,-40(s0)		# tmp138, largest
	sext.w	a5,a5	# tmp139, tmp137
	bgt	a5,zero,.L11	#, tmp139,,
# eval/problem95//code.c:27:     return sum;
	lw	a5,-36(s0)		# _18, sum
# eval/problem95//code.c:28: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
