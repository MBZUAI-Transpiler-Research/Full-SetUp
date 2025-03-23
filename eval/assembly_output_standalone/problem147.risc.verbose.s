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
	sd	a0,-56(s0)	# nums, nums
	mv	a5,a1	# tmp87, size
	sw	a5,-60(s0)	# tmp88, size
# eval/problem147//code.c:5:     int num = 0;
	sw	zero,-36(s0)	#, num
# eval/problem147//code.c:6:     for (int i = 0; i < size; i++) {
	sw	zero,-32(s0)	#, i
# eval/problem147//code.c:6:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L6:
# eval/problem147//code.c:7:         if (nums[i] > 10) {
	lw	a5,-32(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-56(s0)		# tmp89, nums
	add	a5,a4,a5	# _2, _3, tmp89
	lw	a5,0(a5)		# _4, *_3
# eval/problem147//code.c:7:         if (nums[i] > 10) {
	mv	a4,a5	# tmp90, _4
	li	a5,10		# tmp91,
	ble	a4,a5,.L3	#, tmp90, tmp91,
# eval/problem147//code.c:9:             last = nums[i] % 10;
	lw	a5,-32(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp92, nums
	add	a5,a4,a5	# _6, _7, tmp92
	lw	a5,0(a5)		# _8, *_7
# eval/problem147//code.c:9:             last = nums[i] % 10;
	mv	a4,a5	# tmp93, _8
	li	a5,10		# tmp95,
	remw	a5,a4,a5	# tmp95, tmp94, tmp93
	sw	a5,-24(s0)	# tmp94, last
# eval/problem147//code.c:10:             int n = nums[i];
	lw	a5,-32(s0)		# _9, i
	slli	a5,a5,2	#, _10, _9
	ld	a4,-56(s0)		# tmp96, nums
	add	a5,a4,a5	# _10, _11, tmp96
# eval/problem147//code.c:10:             int n = nums[i];
	lw	a5,0(a5)		# tmp97, *_11
	sw	a5,-28(s0)	# tmp97, n
# eval/problem147//code.c:11:             while (n >= 10) {
	j	.L4		#
.L5:
# eval/problem147//code.c:12:                 n /= 10;
	lw	a5,-28(s0)		# tmp100, n
	mv	a4,a5	# tmp99, tmp100
	li	a5,10		# tmp102,
	divw	a5,a4,a5	# tmp102, tmp101, tmp99
	sw	a5,-28(s0)	# tmp101, n
.L4:
# eval/problem147//code.c:11:             while (n >= 10) {
	lw	a5,-28(s0)		# tmp104, n
	sext.w	a4,a5	# tmp105, tmp103
	li	a5,9		# tmp106,
	bgt	a4,a5,.L5	#, tmp105, tmp106,
# eval/problem147//code.c:14:             first = n;
	lw	a5,-28(s0)		# tmp107, n
	sw	a5,-20(s0)	# tmp107, first
# eval/problem147//code.c:15:             if (first % 2 == 1 && last % 2 == 1) {
	lw	a5,-20(s0)		# tmp110, first
	mv	a4,a5	# tmp109, tmp110
	sraiw	a5,a4,31	#, tmp111, tmp109
	srliw	a5,a5,31	#, tmp112, tmp111
	addw	a4,a4,a5	# tmp112, tmp113, tmp109
	andi	a4,a4,1	#, tmp114, tmp113
	subw	a5,a4,a5	# tmp115, tmp114, tmp112
	sext.w	a5,a5	# _12, tmp115
# eval/problem147//code.c:15:             if (first % 2 == 1 && last % 2 == 1) {
	mv	a4,a5	# tmp116, _12
	li	a5,1		# tmp117,
	bne	a4,a5,.L3	#, tmp116, tmp117,
# eval/problem147//code.c:15:             if (first % 2 == 1 && last % 2 == 1) {
	lw	a5,-24(s0)		# tmp120, last
	mv	a4,a5	# tmp119, tmp120
	sraiw	a5,a4,31	#, tmp121, tmp119
	srliw	a5,a5,31	#, tmp122, tmp121
	addw	a4,a4,a5	# tmp122, tmp123, tmp119
	andi	a4,a4,1	#, tmp124, tmp123
	subw	a5,a4,a5	# tmp125, tmp124, tmp122
	sext.w	a5,a5	# _13, tmp125
# eval/problem147//code.c:15:             if (first % 2 == 1 && last % 2 == 1) {
	mv	a4,a5	# tmp126, _13
	li	a5,1		# tmp127,
	bne	a4,a5,.L3	#, tmp126, tmp127,
# eval/problem147//code.c:16:                 num += 1;
	lw	a5,-36(s0)		# tmp130, num
	addiw	a5,a5,1	#, tmp128, tmp129
	sw	a5,-36(s0)	# tmp128, num
.L3:
# eval/problem147//code.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-32(s0)		# tmp133, i
	addiw	a5,a5,1	#, tmp131, tmp132
	sw	a5,-32(s0)	# tmp131, i
.L2:
# eval/problem147//code.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-32(s0)		# tmp135, i
	mv	a4,a5	# tmp134, tmp135
	lw	a5,-60(s0)		# tmp137, size
	sext.w	a4,a4	# tmp138, tmp134
	sext.w	a5,a5	# tmp139, tmp136
	blt	a4,a5,.L6	#, tmp138, tmp139,
# eval/problem147//code.c:20:     return num;
	lw	a5,-36(s0)		# _21, num
# eval/problem147//code.c:21: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
