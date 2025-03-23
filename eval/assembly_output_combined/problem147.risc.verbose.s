	.file	"problem147.c"
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
# problem147.c:5:     int num = 0;
	sw	zero,-36(s0)	#, num
# problem147.c:6:     for (int i = 0; i < size; i++) {
	sw	zero,-32(s0)	#, i
# problem147.c:6:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L6:
# problem147.c:7:         if (nums[i] > 10) {
	lw	a5,-32(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-56(s0)		# tmp89, nums
	add	a5,a4,a5	# _2, _3, tmp89
	lw	a5,0(a5)		# _4, *_3
# problem147.c:7:         if (nums[i] > 10) {
	mv	a4,a5	# tmp90, _4
	li	a5,10		# tmp91,
	ble	a4,a5,.L3	#, tmp90, tmp91,
# problem147.c:9:             last = nums[i] % 10;
	lw	a5,-32(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp92, nums
	add	a5,a4,a5	# _6, _7, tmp92
	lw	a5,0(a5)		# _8, *_7
# problem147.c:9:             last = nums[i] % 10;
	mv	a4,a5	# tmp93, _8
	li	a5,10		# tmp95,
	remw	a5,a4,a5	# tmp95, tmp94, tmp93
	sw	a5,-24(s0)	# tmp94, last
# problem147.c:10:             int n = nums[i];
	lw	a5,-32(s0)		# _9, i
	slli	a5,a5,2	#, _10, _9
	ld	a4,-56(s0)		# tmp96, nums
	add	a5,a4,a5	# _10, _11, tmp96
# problem147.c:10:             int n = nums[i];
	lw	a5,0(a5)		# tmp97, *_11
	sw	a5,-28(s0)	# tmp97, n
# problem147.c:11:             while (n >= 10) {
	j	.L4		#
.L5:
# problem147.c:12:                 n /= 10;
	lw	a5,-28(s0)		# tmp100, n
	mv	a4,a5	# tmp99, tmp100
	li	a5,10		# tmp102,
	divw	a5,a4,a5	# tmp102, tmp101, tmp99
	sw	a5,-28(s0)	# tmp101, n
.L4:
# problem147.c:11:             while (n >= 10) {
	lw	a5,-28(s0)		# tmp104, n
	sext.w	a4,a5	# tmp105, tmp103
	li	a5,9		# tmp106,
	bgt	a4,a5,.L5	#, tmp105, tmp106,
# problem147.c:14:             first = n;
	lw	a5,-28(s0)		# tmp107, n
	sw	a5,-20(s0)	# tmp107, first
# problem147.c:15:             if (first % 2 == 1 && last % 2 == 1) {
	lw	a5,-20(s0)		# tmp110, first
	mv	a4,a5	# tmp109, tmp110
	sraiw	a5,a4,31	#, tmp111, tmp109
	srliw	a5,a5,31	#, tmp112, tmp111
	addw	a4,a4,a5	# tmp112, tmp113, tmp109
	andi	a4,a4,1	#, tmp114, tmp113
	subw	a5,a4,a5	# tmp115, tmp114, tmp112
	sext.w	a5,a5	# _12, tmp115
# problem147.c:15:             if (first % 2 == 1 && last % 2 == 1) {
	mv	a4,a5	# tmp116, _12
	li	a5,1		# tmp117,
	bne	a4,a5,.L3	#, tmp116, tmp117,
# problem147.c:15:             if (first % 2 == 1 && last % 2 == 1) {
	lw	a5,-24(s0)		# tmp120, last
	mv	a4,a5	# tmp119, tmp120
	sraiw	a5,a4,31	#, tmp121, tmp119
	srliw	a5,a5,31	#, tmp122, tmp121
	addw	a4,a4,a5	# tmp122, tmp123, tmp119
	andi	a4,a4,1	#, tmp124, tmp123
	subw	a5,a4,a5	# tmp125, tmp124, tmp122
	sext.w	a5,a5	# _13, tmp125
# problem147.c:15:             if (first % 2 == 1 && last % 2 == 1) {
	mv	a4,a5	# tmp126, _13
	li	a5,1		# tmp127,
	bne	a4,a5,.L3	#, tmp126, tmp127,
# problem147.c:16:                 num += 1;
	lw	a5,-36(s0)		# tmp130, num
	addiw	a5,a5,1	#, tmp128, tmp129
	sw	a5,-36(s0)	# tmp128, num
.L3:
# problem147.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-32(s0)		# tmp133, i
	addiw	a5,a5,1	#, tmp131, tmp132
	sw	a5,-32(s0)	# tmp131, i
.L2:
# problem147.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-32(s0)		# tmp135, i
	mv	a4,a5	# tmp134, tmp135
	lw	a5,-60(s0)		# tmp137, size
	sext.w	a4,a4	# tmp138, tmp134
	sext.w	a5,a5	# tmp139, tmp136
	blt	a4,a5,.L6	#, tmp138, tmp139,
# problem147.c:20:     return num;
	lw	a5,-36(s0)		# _21, num
# problem147.c:21: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC5:
	.string	"problem147.c"
	.align	3
.LC6:
	.string	"func0(nums, sizeof(nums) / sizeof(nums[0])) == 0"
	.align	3
.LC7:
	.string	"func0(nums, sizeof(nums) / sizeof(nums[0])) == 1"
	.align	3
.LC8:
	.string	"func0(nums, sizeof(nums) / sizeof(nums[0])) == 2"
	.align	3
.LC9:
	.string	"func0(nums, sizeof(nums) / sizeof(nums[0])) == 4"
	.align	3
.LC10:
	.string	"func0(nums, sizeof(nums) / sizeof(nums[0])) == 3"
	.align	3
.LC0:
	.word	5
	.word	-2
	.word	1
	.word	-5
	.align	3
.LC1:
	.word	15
	.word	-73
	.word	14
	.word	-15
	.align	3
.LC2:
	.word	33
	.word	-2
	.word	-3
	.word	45
	.word	21
	.word	109
	.align	3
.LC3:
	.word	43
	.word	-12
	.word	93
	.word	125
	.word	121
	.word	109
	.align	3
.LC4:
	.word	71
	.word	-2
	.word	-33
	.word	75
	.word	21
	.word	19
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-48	#,,
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
# problem147.c:27: int main() {
	la	a5,__stack_chk_guard		# tmp81,
	ld	a4, 0(a5)	# tmp126, __stack_chk_guard
	sd	a4, -24(s0)	# tmp126, D.2489
	li	a4, 0	# tmp126
# problem147.c:29:         int nums[] = {5, -2, 1, -5};
	lla	a5,.LC0	# tmp82,
	ld	a4,0(a5)		# tmp83,
	sd	a4,-48(s0)	# tmp83, MEM[(int[4] *)_39]
	ld	a5,8(a5)		# tmp84,
	sd	a5,-40(s0)	# tmp84, MEM[(int[4] *)_39]
# problem147.c:30:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 0);
	addi	a5,s0,-48	#, tmp85,
	li	a1,4		#,
	mv	a0,a5	#, tmp85
	call	func0		#
	mv	a5,a0	# tmp86,
	beq	a5,zero,.L9	#, _1,,
# problem147.c:30:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC5	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L9:
# problem147.c:34:         int nums[] = {15, -73, 14, -15};
	lla	a5,.LC1	# tmp87,
	ld	a4,0(a5)		# tmp88,
	sd	a4,-48(s0)	# tmp88, MEM[(int[4] *)_39]
	ld	a5,8(a5)		# tmp89,
	sd	a5,-40(s0)	# tmp89, MEM[(int[4] *)_39]
# problem147.c:35:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 1);
	addi	a5,s0,-48	#, tmp90,
	li	a1,4		#,
	mv	a0,a5	#, tmp90
	call	func0		#
	mv	a5,a0	# tmp91,
	mv	a4,a5	# tmp92, _2
	li	a5,1		# tmp93,
	beq	a4,a5,.L10	#, tmp92, tmp93,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC5	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L10:
# problem147.c:39:         int nums[] = {33, -2, -3, 45, 21, 109};
	lla	a5,.LC2	# tmp94,
	ld	a4,0(a5)		# tmp95,
	sd	a4,-48(s0)	# tmp95, MEM[(int[6] *)_39]
	ld	a4,8(a5)		# tmp96,
	sd	a4,-40(s0)	# tmp96, MEM[(int[6] *)_39]
	ld	a5,16(a5)		# tmp97,
	sd	a5,-32(s0)	# tmp97, MEM[(int[6] *)_39]
# problem147.c:40:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 2);
	addi	a5,s0,-48	#, tmp98,
	li	a1,6		#,
	mv	a0,a5	#, tmp98
	call	func0		#
	mv	a5,a0	# tmp99,
	mv	a4,a5	# tmp100, _3
	li	a5,2		# tmp101,
	beq	a4,a5,.L11	#, tmp100, tmp101,
# problem147.c:40:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 2);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,40		#,
	lla	a1,.LC5	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L11:
# problem147.c:44:         int nums[] = {43, -12, 93, 125, 121, 109};
	lla	a5,.LC3	# tmp102,
	ld	a4,0(a5)		# tmp103,
	sd	a4,-48(s0)	# tmp103, MEM[(int[6] *)_39]
	ld	a4,8(a5)		# tmp104,
	sd	a4,-40(s0)	# tmp104, MEM[(int[6] *)_39]
	ld	a5,16(a5)		# tmp105,
	sd	a5,-32(s0)	# tmp105, MEM[(int[6] *)_39]
# problem147.c:45:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 4);
	addi	a5,s0,-48	#, tmp106,
	li	a1,6		#,
	mv	a0,a5	#, tmp106
	call	func0		#
	mv	a5,a0	# tmp107,
	mv	a4,a5	# tmp108, _4
	li	a5,4		# tmp109,
	beq	a4,a5,.L12	#, tmp108, tmp109,
# problem147.c:45:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 4);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,45		#,
	lla	a1,.LC5	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L12:
# problem147.c:49:         int nums[] = {71, -2, -33, 75, 21, 19};
	lla	a5,.LC4	# tmp110,
	ld	a4,0(a5)		# tmp111,
	sd	a4,-48(s0)	# tmp111, MEM[(int[6] *)_39]
	ld	a4,8(a5)		# tmp112,
	sd	a4,-40(s0)	# tmp112, MEM[(int[6] *)_39]
	ld	a5,16(a5)		# tmp113,
	sd	a5,-32(s0)	# tmp113, MEM[(int[6] *)_39]
# problem147.c:50:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 3);
	addi	a5,s0,-48	#, tmp114,
	li	a1,6		#,
	mv	a0,a5	#, tmp114
	call	func0		#
	mv	a5,a0	# tmp115,
	mv	a4,a5	# tmp116, _5
	li	a5,3		# tmp117,
	beq	a4,a5,.L13	#, tmp116, tmp117,
# problem147.c:50:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 3);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,50		#,
	lla	a1,.LC5	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L13:
# problem147.c:54:         int nums[] = {1};
	li	a5,1		# tmp118,
	sw	a5,-48(s0)	# tmp118, MEM[(int[1] *)_39][0]
# problem147.c:55:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 0);
	addi	a5,s0,-48	#, tmp119,
	li	a1,1		#,
	mv	a0,a5	#, tmp119
	call	func0		#
	mv	a5,a0	# tmp120,
	beq	a5,zero,.L14	#, _6,,
# problem147.c:55:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,55		#,
	lla	a1,.LC5	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L14:
# problem147.c:60:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 0);
	addi	a5,s0,-48	#, tmp121,
	li	a1,0		#,
	mv	a0,a5	#, tmp121
	call	func0		#
	mv	a5,a0	# tmp122,
	beq	a5,zero,.L15	#, _7,,
# problem147.c:60:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,60		#,
	lla	a1,.LC5	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L15:
# problem147.c:63:     return 0;
	li	a5,0		# _37,
# problem147.c:64: }
	mv	a4,a5	# <retval>, _37
	la	a5,__stack_chk_guard		# tmp124,
	ld	a3, -24(s0)	# tmp127, D.2489
	ld	a5, 0(a5)	# tmp125, __stack_chk_guard
	xor	a5, a3, a5	# tmp125, tmp127
	li	a3, 0	# tmp127
	beq	a5,zero,.L17	#, tmp125,,
# problem147.c:64: }
	call	__stack_chk_fail@plt	#
.L17:
	mv	a0,a4	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
