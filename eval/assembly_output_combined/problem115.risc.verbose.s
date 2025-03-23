	.file	"problem115.c"
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
	mv	a5,a1	# tmp82, size
	sw	a5,-60(s0)	# tmp83, size
# problem115.c:4:     long long current = nums[0];
	ld	a5,-56(s0)		# tmp84, nums
	ld	a5,0(a5)		# tmp85, *nums_14(D)
	sd	a5,-32(s0)	# tmp85, current
# problem115.c:5:     long long min = nums[0];
	ld	a5,-56(s0)		# tmp86, nums
	ld	a5,0(a5)		# tmp87, *nums_14(D)
	sd	a5,-24(s0)	# tmp87, min
# problem115.c:6:     for (int i = 1; i < size; i++) {
	li	a5,1		# tmp88,
	sw	a5,-36(s0)	# tmp88, i
# problem115.c:6:     for (int i = 1; i < size; i++) {
	j	.L2		#
.L6:
# problem115.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	ld	a5,-32(s0)		# tmp89, current
	bge	a5,zero,.L3	#, tmp89,,
# problem115.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	lw	a5,-36(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-56(s0)		# tmp90, nums
	add	a5,a4,a5	# _2, _3, tmp90
	ld	a4,0(a5)		# _4, *_3
# problem115.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	ld	a5,-32(s0)		# tmp91, current
	add	a5,a4,a5	# tmp91, iftmp.0_12, _4
	j	.L4		#
.L3:
# problem115.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	lw	a5,-36(s0)		# _5, i
	slli	a5,a5,3	#, _6, _5
	ld	a4,-56(s0)		# tmp92, nums
	add	a5,a4,a5	# _6, _7, tmp92
# problem115.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	ld	a5,0(a5)		# iftmp.0_12, *_7
.L4:
# problem115.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	sd	a5,-32(s0)	# iftmp.0_12, current
# problem115.c:8:         if (current < min) min = current;
	ld	a4,-32(s0)		# tmp93, current
	ld	a5,-24(s0)		# tmp94, min
	bge	a4,a5,.L5	#, tmp93, tmp94,
# problem115.c:8:         if (current < min) min = current;
	ld	a5,-32(s0)		# tmp95, current
	sd	a5,-24(s0)	# tmp95, min
.L5:
# problem115.c:6:     for (int i = 1; i < size; i++) {
	lw	a5,-36(s0)		# tmp98, i
	addiw	a5,a5,1	#, tmp96, tmp97
	sw	a5,-36(s0)	# tmp96, i
.L2:
# problem115.c:6:     for (int i = 1; i < size; i++) {
	lw	a5,-36(s0)		# tmp100, i
	mv	a4,a5	# tmp99, tmp100
	lw	a5,-60(s0)		# tmp102, size
	sext.w	a4,a4	# tmp103, tmp99
	sext.w	a5,a5	# tmp104, tmp101
	blt	a4,a5,.L6	#, tmp103, tmp104,
# problem115.c:10:     return min;
	ld	a5,-24(s0)		# _19, min
# problem115.c:11: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC7:
	.string	"problem115.c"
	.align	3
.LC8:
	.string	"func0(nums1, 6) == 1"
	.align	3
.LC9:
	.string	"func0(nums2, 3) == -6"
	.align	3
.LC10:
	.string	"func0(nums3, 5) == -14"
	.align	3
.LC12:
	.string	"func0(nums4, 1) == -9999999999999999"
	.align	3
.LC13:
	.string	"func0(nums5, 4) == 0"
	.align	3
.LC14:
	.string	"func0(nums6, 5) == -6"
	.align	3
.LC15:
	.string	"func0(nums7, 6) == -6"
	.align	3
.LC16:
	.string	"func0(nums8, 6) == 3"
	.align	3
.LC17:
	.string	"func0(nums9, 6) == -33"
	.align	3
.LC18:
	.string	"func0(nums10, 1) == -10"
	.align	3
.LC19:
	.string	"func0(nums11, 1) == 7"
	.align	3
.LC20:
	.string	"func0(nums12, 2) == -1"
	.align	3
.LC0:
	.dword	2
	.dword	3
	.dword	4
	.dword	1
	.dword	2
	.dword	4
	.align	3
.LC1:
	.dword	-1
	.dword	-2
	.dword	-3
	.dword	2
	.dword	-10
	.align	3
.LC2:
	.dword	0
	.dword	10
	.dword	20
	.dword	1000000
	.align	3
.LC3:
	.dword	-1
	.dword	-2
	.dword	-3
	.dword	10
	.dword	-5
	.align	3
.LC4:
	.dword	100
	.dword	-1
	.dword	-2
	.dword	-3
	.dword	10
	.dword	-5
	.align	3
.LC5:
	.dword	10
	.dword	11
	.dword	13
	.dword	8
	.dword	3
	.dword	4
	.align	3
.LC6:
	.dword	100
	.dword	-33
	.dword	32
	.dword	-1
	.dword	0
	.dword	-2
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-400	#,,
	sd	ra,392(sp)	#,
	sd	s0,384(sp)	#,
	addi	s0,sp,400	#,,
# problem115.c:17: int main() {
	la	a5,__stack_chk_guard		# tmp86,
	ld	a4, 0(a5)	# tmp168, __stack_chk_guard
	sd	a4, -24(s0)	# tmp168, D.1989
	li	a4, 0	# tmp168
# problem115.c:18:     long long nums1[] = {2, 3, 4, 1, 2, 4};
	lla	a5,.LC0	# tmp87,
	ld	a0,0(a5)		# tmp88,
	ld	a1,8(a5)		# tmp89,
	ld	a2,16(a5)		# tmp90,
	ld	a3,24(a5)		# tmp91,
	ld	a4,32(a5)		# tmp92,
	ld	a5,40(a5)		# tmp93,
	sd	a0,-216(s0)	# tmp88, nums1
	sd	a1,-208(s0)	# tmp89, nums1
	sd	a2,-200(s0)	# tmp90, nums1
	sd	a3,-192(s0)	# tmp91, nums1
	sd	a4,-184(s0)	# tmp92, nums1
	sd	a5,-176(s0)	# tmp93, nums1
# problem115.c:19:     assert(func0(nums1, 6) == 1);
	addi	a5,s0,-216	#, tmp94,
	li	a1,6		#,
	mv	a0,a5	#, tmp94
	call	func0		#
	mv	a4,a0	# _1,
	li	a5,1		# tmp95,
	beq	a4,a5,.L9	#, _1, tmp95,
# problem115.c:19:     assert(func0(nums1, 6) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC7	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L9:
# problem115.c:21:     long long nums2[] = {-1, -2, -3};
	li	a5,-1		# tmp96,
	sd	a5,-352(s0)	# tmp96, nums2[0]
	li	a5,-2		# tmp97,
	sd	a5,-344(s0)	# tmp97, nums2[1]
	li	a5,-3		# tmp98,
	sd	a5,-336(s0)	# tmp98, nums2[2]
# problem115.c:22:     assert(func0(nums2, 3) == -6);
	addi	a5,s0,-352	#, tmp99,
	li	a1,3		#,
	mv	a0,a5	#, tmp99
	call	func0		#
	mv	a4,a0	# _2,
	li	a5,-6		# tmp100,
	beq	a4,a5,.L10	#, _2, tmp100,
# problem115.c:22:     assert(func0(nums2, 3) == -6);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC7	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L10:
# problem115.c:24:     long long nums3[] = {-1, -2, -3, 2, -10};
	lla	a5,.LC1	# tmp101,
	ld	a1,0(a5)		# tmp102,
	ld	a2,8(a5)		# tmp103,
	ld	a3,16(a5)		# tmp104,
	ld	a4,24(a5)		# tmp105,
	ld	a5,32(a5)		# tmp106,
	sd	a1,-296(s0)	# tmp102, nums3
	sd	a2,-288(s0)	# tmp103, nums3
	sd	a3,-280(s0)	# tmp104, nums3
	sd	a4,-272(s0)	# tmp105, nums3
	sd	a5,-264(s0)	# tmp106, nums3
# problem115.c:25:     assert(func0(nums3, 5) == -14);
	addi	a5,s0,-296	#, tmp107,
	li	a1,5		#,
	mv	a0,a5	#, tmp107
	call	func0		#
	mv	a4,a0	# _3,
	li	a5,-14		# tmp108,
	beq	a4,a5,.L11	#, _3, tmp108,
# problem115.c:25:     assert(func0(nums3, 5) == -14);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC7	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L11:
# problem115.c:27:     long long nums4[] = {-9999999999999999};
	lla	a5,.LC11	# tmp109,
	ld	a5,0(a5)		# tmp110,
	sd	a5,-392(s0)	# tmp110, nums4[0]
# problem115.c:28:     assert(func0(nums4, 1) == -9999999999999999);
	addi	a5,s0,-392	#, tmp111,
	li	a1,1		#,
	mv	a0,a5	#, tmp111
	call	func0		#
	mv	a4,a0	# _4,
	lla	a5,.LC11	# tmp113,
	ld	a5,0(a5)		# tmp112,
	beq	a4,a5,.L12	#, _4, tmp112,
# problem115.c:28:     assert(func0(nums4, 1) == -9999999999999999);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC7	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L12:
# problem115.c:30:     long long nums5[] = {0, 10, 20, 1000000};
	lla	a5,.LC2	# tmp114,
	ld	a2,0(a5)		# tmp115,
	ld	a3,8(a5)		# tmp116,
	ld	a4,16(a5)		# tmp117,
	ld	a5,24(a5)		# tmp118,
	sd	a2,-328(s0)	# tmp115, nums5
	sd	a3,-320(s0)	# tmp116, nums5
	sd	a4,-312(s0)	# tmp117, nums5
	sd	a5,-304(s0)	# tmp118, nums5
# problem115.c:31:     assert(func0(nums5, 4) == 0);
	addi	a5,s0,-328	#, tmp119,
	li	a1,4		#,
	mv	a0,a5	#, tmp119
	call	func0		#
	mv	a5,a0	# _5,
	beq	a5,zero,.L13	#, _5,,
# problem115.c:31:     assert(func0(nums5, 4) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC7	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L13:
# problem115.c:33:     long long nums6[] = {-1, -2, -3, 10, -5};
	lla	a5,.LC3	# tmp120,
	ld	a1,0(a5)		# tmp121,
	ld	a2,8(a5)		# tmp122,
	ld	a3,16(a5)		# tmp123,
	ld	a4,24(a5)		# tmp124,
	ld	a5,32(a5)		# tmp125,
	sd	a1,-256(s0)	# tmp121, nums6
	sd	a2,-248(s0)	# tmp122, nums6
	sd	a3,-240(s0)	# tmp123, nums6
	sd	a4,-232(s0)	# tmp124, nums6
	sd	a5,-224(s0)	# tmp125, nums6
# problem115.c:34:     assert(func0(nums6, 5) == -6);
	addi	a5,s0,-256	#, tmp126,
	li	a1,5		#,
	mv	a0,a5	#, tmp126
	call	func0		#
	mv	a4,a0	# _6,
	li	a5,-6		# tmp127,
	beq	a4,a5,.L14	#, _6, tmp127,
# problem115.c:34:     assert(func0(nums6, 5) == -6);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC7	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L14:
# problem115.c:36:     long long nums7[] = {100, -1, -2, -3, 10, -5};
	lla	a5,.LC4	# tmp128,
	ld	a0,0(a5)		# tmp129,
	ld	a1,8(a5)		# tmp130,
	ld	a2,16(a5)		# tmp131,
	ld	a3,24(a5)		# tmp132,
	ld	a4,32(a5)		# tmp133,
	ld	a5,40(a5)		# tmp134,
	sd	a0,-168(s0)	# tmp129, nums7
	sd	a1,-160(s0)	# tmp130, nums7
	sd	a2,-152(s0)	# tmp131, nums7
	sd	a3,-144(s0)	# tmp132, nums7
	sd	a4,-136(s0)	# tmp133, nums7
	sd	a5,-128(s0)	# tmp134, nums7
# problem115.c:37:     assert(func0(nums7, 6) == -6);
	addi	a5,s0,-168	#, tmp135,
	li	a1,6		#,
	mv	a0,a5	#, tmp135
	call	func0		#
	mv	a4,a0	# _7,
	li	a5,-6		# tmp136,
	beq	a4,a5,.L15	#, _7, tmp136,
# problem115.c:37:     assert(func0(nums7, 6) == -6);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,37		#,
	lla	a1,.LC7	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L15:
# problem115.c:39:     long long nums8[] = {10, 11, 13, 8, 3, 4};
	lla	a5,.LC5	# tmp137,
	ld	a0,0(a5)		# tmp138,
	ld	a1,8(a5)		# tmp139,
	ld	a2,16(a5)		# tmp140,
	ld	a3,24(a5)		# tmp141,
	ld	a4,32(a5)		# tmp142,
	ld	a5,40(a5)		# tmp143,
	sd	a0,-120(s0)	# tmp138, nums8
	sd	a1,-112(s0)	# tmp139, nums8
	sd	a2,-104(s0)	# tmp140, nums8
	sd	a3,-96(s0)	# tmp141, nums8
	sd	a4,-88(s0)	# tmp142, nums8
	sd	a5,-80(s0)	# tmp143, nums8
# problem115.c:40:     assert(func0(nums8, 6) == 3);
	addi	a5,s0,-120	#, tmp144,
	li	a1,6		#,
	mv	a0,a5	#, tmp144
	call	func0		#
	mv	a4,a0	# _8,
	li	a5,3		# tmp145,
	beq	a4,a5,.L16	#, _8, tmp145,
# problem115.c:40:     assert(func0(nums8, 6) == 3);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,40		#,
	lla	a1,.LC7	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L16:
# problem115.c:42:     long long nums9[] = {100, -33, 32, -1, 0, -2};
	lla	a5,.LC6	# tmp146,
	ld	a0,0(a5)		# tmp147,
	ld	a1,8(a5)		# tmp148,
	ld	a2,16(a5)		# tmp149,
	ld	a3,24(a5)		# tmp150,
	ld	a4,32(a5)		# tmp151,
	ld	a5,40(a5)		# tmp152,
	sd	a0,-72(s0)	# tmp147, nums9
	sd	a1,-64(s0)	# tmp148, nums9
	sd	a2,-56(s0)	# tmp149, nums9
	sd	a3,-48(s0)	# tmp150, nums9
	sd	a4,-40(s0)	# tmp151, nums9
	sd	a5,-32(s0)	# tmp152, nums9
# problem115.c:43:     assert(func0(nums9, 6) == -33);
	addi	a5,s0,-72	#, tmp153,
	li	a1,6		#,
	mv	a0,a5	#, tmp153
	call	func0		#
	mv	a4,a0	# _9,
	li	a5,-33		# tmp154,
	beq	a4,a5,.L17	#, _9, tmp154,
# problem115.c:43:     assert(func0(nums9, 6) == -33);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,43		#,
	lla	a1,.LC7	#,
	lla	a0,.LC17	#,
	call	__assert_fail@plt	#
.L17:
# problem115.c:45:     long long nums10[] = {-10};
	li	a5,-10		# tmp155,
	sd	a5,-384(s0)	# tmp155, nums10[0]
# problem115.c:46:     assert(func0(nums10, 1) == -10);
	addi	a5,s0,-384	#, tmp156,
	li	a1,1		#,
	mv	a0,a5	#, tmp156
	call	func0		#
	mv	a4,a0	# _10,
	li	a5,-10		# tmp157,
	beq	a4,a5,.L18	#, _10, tmp157,
# problem115.c:46:     assert(func0(nums10, 1) == -10);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,46		#,
	lla	a1,.LC7	#,
	lla	a0,.LC18	#,
	call	__assert_fail@plt	#
.L18:
# problem115.c:48:     long long nums11[] = {7};
	li	a5,7		# tmp158,
	sd	a5,-376(s0)	# tmp158, nums11[0]
# problem115.c:49:     assert(func0(nums11, 1) == 7);
	addi	a5,s0,-376	#, tmp159,
	li	a1,1		#,
	mv	a0,a5	#, tmp159
	call	func0		#
	mv	a4,a0	# _11,
	li	a5,7		# tmp160,
	beq	a4,a5,.L19	#, _11, tmp160,
# problem115.c:49:     assert(func0(nums11, 1) == 7);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,49		#,
	lla	a1,.LC7	#,
	lla	a0,.LC19	#,
	call	__assert_fail@plt	#
.L19:
# problem115.c:51:     long long nums12[] = {1, -1};
	li	a5,1		# tmp161,
	sd	a5,-368(s0)	# tmp161, nums12[0]
	li	a5,-1		# tmp162,
	sd	a5,-360(s0)	# tmp162, nums12[1]
# problem115.c:52:     assert(func0(nums12, 2) == -1);
	addi	a5,s0,-368	#, tmp163,
	li	a1,2		#,
	mv	a0,a5	#, tmp163
	call	func0		#
	mv	a4,a0	# _12,
	li	a5,-1		# tmp164,
	beq	a4,a5,.L20	#, _12, tmp164,
# problem115.c:52:     assert(func0(nums12, 2) == -1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,52		#,
	lla	a1,.LC7	#,
	lla	a0,.LC20	#,
	call	__assert_fail@plt	#
.L20:
# problem115.c:54:     return 0;
	li	a5,0		# _53,
# problem115.c:55: }
	mv	a4,a5	# <retval>, _53
	la	a5,__stack_chk_guard		# tmp166,
	ld	a3, -24(s0)	# tmp169, D.1989
	ld	a5, 0(a5)	# tmp167, __stack_chk_guard
	xor	a5, a3, a5	# tmp167, tmp169
	li	a3, 0	# tmp169
	beq	a5,zero,.L22	#, tmp167,,
	call	__stack_chk_fail@plt	#
.L22:
	mv	a0,a4	#, <retval>
	ld	ra,392(sp)		#,
	ld	s0,384(sp)		#,
	addi	sp,sp,400	#,,
	jr	ra		#
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align	3
.LC11:
	.dword	-9999999999999999
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
