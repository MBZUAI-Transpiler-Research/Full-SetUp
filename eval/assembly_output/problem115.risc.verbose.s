	.file	"problem115.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)	# nums, nums
	mv	a5,a1	# tmp144, size
	sw	a5,-60(s0)	# tmp145, size
# problem115.c:4:     long long current = nums[0];
	ld	a5,-56(s0)		# tmp146, nums
	ld	a5,0(a5)		# tmp147, *nums_14(D)
	sd	a5,-32(s0)	# tmp147, current
# problem115.c:5:     long long min = nums[0];
	ld	a5,-56(s0)		# tmp148, nums
	ld	a5,0(a5)		# tmp149, *nums_14(D)
	sd	a5,-24(s0)	# tmp149, min
# problem115.c:6:     for (int i = 1; i < size; i++) {
	li	a5,1		# tmp150,
	sw	a5,-36(s0)	# tmp150, i
# problem115.c:6:     for (int i = 1; i < size; i++) {
	j	.L2		#
.L6:
# problem115.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	ld	a5,-32(s0)		# tmp151, current
	bge	a5,zero,.L3	#, tmp151,,
# problem115.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	lw	a5,-36(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-56(s0)		# tmp152, nums
	add	a5,a4,a5	# _2, _3, tmp152
	ld	a4,0(a5)		# _4, *_3
# problem115.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	ld	a5,-32(s0)		# tmp153, current
	add	a5,a4,a5	# tmp153, iftmp.0_12, _4
	j	.L4		#
.L3:
# problem115.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	lw	a5,-36(s0)		# _5, i
	slli	a5,a5,3	#, _6, _5
	ld	a4,-56(s0)		# tmp154, nums
	add	a5,a4,a5	# _6, _7, tmp154
# problem115.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	ld	a5,0(a5)		# iftmp.0_12, *_7
.L4:
# problem115.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	sd	a5,-32(s0)	# iftmp.0_12, current
# problem115.c:8:         if (current < min) min = current;
	ld	a4,-32(s0)		# tmp155, current
	ld	a5,-24(s0)		# tmp156, min
	bge	a4,a5,.L5	#, tmp155, tmp156,
# problem115.c:8:         if (current < min) min = current;
	ld	a5,-32(s0)		# tmp157, current
	sd	a5,-24(s0)	# tmp157, min
.L5:
# problem115.c:6:     for (int i = 1; i < size; i++) {
	lw	a5,-36(s0)		# tmp160, i
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-36(s0)	# tmp158, i
.L2:
# problem115.c:6:     for (int i = 1; i < size; i++) {
	lw	a5,-36(s0)		# tmp162, i
	mv	a4,a5	# tmp161, tmp162
	lw	a5,-60(s0)		# tmp164, size
	sext.w	a4,a4	# tmp165, tmp161
	sext.w	a5,a5	# tmp166, tmp163
	blt	a4,a5,.L6	#, tmp165, tmp166,
# problem115.c:10:     return min;
	ld	a5,-24(s0)		# _19, min
# problem115.c:11: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
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
.LFB1:
	.cfi_startproc
	addi	sp,sp,-400	#,,
	.cfi_def_cfa_offset 400
	sd	ra,392(sp)	#,
	sd	s0,384(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,400	#,,
	.cfi_def_cfa 8, 0
# problem115.c:17: int main() {
	la	a5,__stack_chk_guard		# tmp148,
	ld	a4, 0(a5)	# tmp230, __stack_chk_guard
	sd	a4, -24(s0)	# tmp230, D.2807
	li	a4, 0	# tmp230
# problem115.c:18:     long long nums1[] = {2, 3, 4, 1, 2, 4};
	lla	a5,.LC0	# tmp149,
	ld	a0,0(a5)		# tmp150,
	ld	a1,8(a5)		# tmp151,
	ld	a2,16(a5)		# tmp152,
	ld	a3,24(a5)		# tmp153,
	ld	a4,32(a5)		# tmp154,
	ld	a5,40(a5)		# tmp155,
	sd	a0,-216(s0)	# tmp150, nums1
	sd	a1,-208(s0)	# tmp151, nums1
	sd	a2,-200(s0)	# tmp152, nums1
	sd	a3,-192(s0)	# tmp153, nums1
	sd	a4,-184(s0)	# tmp154, nums1
	sd	a5,-176(s0)	# tmp155, nums1
# problem115.c:19:     assert(func0(nums1, 6) == 1);
	addi	a5,s0,-216	#, tmp156,
	li	a1,6		#,
	mv	a0,a5	#, tmp156
	call	func0		#
	mv	a4,a0	# _1,
# problem115.c:19:     assert(func0(nums1, 6) == 1);
	li	a5,1		# tmp157,
	beq	a4,a5,.L9	#, _1, tmp157,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC7	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L9:
# problem115.c:21:     long long nums2[] = {-1, -2, -3};
	li	a5,-1		# tmp158,
	sd	a5,-352(s0)	# tmp158, nums2[0]
	li	a5,-2		# tmp159,
	sd	a5,-344(s0)	# tmp159, nums2[1]
	li	a5,-3		# tmp160,
	sd	a5,-336(s0)	# tmp160, nums2[2]
# problem115.c:22:     assert(func0(nums2, 3) == -6);
	addi	a5,s0,-352	#, tmp161,
	li	a1,3		#,
	mv	a0,a5	#, tmp161
	call	func0		#
	mv	a4,a0	# _2,
# problem115.c:22:     assert(func0(nums2, 3) == -6);
	li	a5,-6		# tmp162,
	beq	a4,a5,.L10	#, _2, tmp162,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC7	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L10:
# problem115.c:24:     long long nums3[] = {-1, -2, -3, 2, -10};
	lla	a5,.LC1	# tmp163,
	ld	a1,0(a5)		# tmp164,
	ld	a2,8(a5)		# tmp165,
	ld	a3,16(a5)		# tmp166,
	ld	a4,24(a5)		# tmp167,
	ld	a5,32(a5)		# tmp168,
	sd	a1,-296(s0)	# tmp164, nums3
	sd	a2,-288(s0)	# tmp165, nums3
	sd	a3,-280(s0)	# tmp166, nums3
	sd	a4,-272(s0)	# tmp167, nums3
	sd	a5,-264(s0)	# tmp168, nums3
# problem115.c:25:     assert(func0(nums3, 5) == -14);
	addi	a5,s0,-296	#, tmp169,
	li	a1,5		#,
	mv	a0,a5	#, tmp169
	call	func0		#
	mv	a4,a0	# _3,
# problem115.c:25:     assert(func0(nums3, 5) == -14);
	li	a5,-14		# tmp170,
	beq	a4,a5,.L11	#, _3, tmp170,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC7	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L11:
# problem115.c:27:     long long nums4[] = {-9999999999999999};
	lla	a5,.LC11	# tmp171,
	ld	a5,0(a5)		# tmp172,
	sd	a5,-392(s0)	# tmp172, nums4[0]
# problem115.c:28:     assert(func0(nums4, 1) == -9999999999999999);
	addi	a5,s0,-392	#, tmp173,
	li	a1,1		#,
	mv	a0,a5	#, tmp173
	call	func0		#
	mv	a4,a0	# _4,
# problem115.c:28:     assert(func0(nums4, 1) == -9999999999999999);
	lla	a5,.LC11	# tmp175,
	ld	a5,0(a5)		# tmp174,
	beq	a4,a5,.L12	#, _4, tmp174,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC7	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L12:
# problem115.c:30:     long long nums5[] = {0, 10, 20, 1000000};
	lla	a5,.LC2	# tmp176,
	ld	a2,0(a5)		# tmp177,
	ld	a3,8(a5)		# tmp178,
	ld	a4,16(a5)		# tmp179,
	ld	a5,24(a5)		# tmp180,
	sd	a2,-328(s0)	# tmp177, nums5
	sd	a3,-320(s0)	# tmp178, nums5
	sd	a4,-312(s0)	# tmp179, nums5
	sd	a5,-304(s0)	# tmp180, nums5
# problem115.c:31:     assert(func0(nums5, 4) == 0);
	addi	a5,s0,-328	#, tmp181,
	li	a1,4		#,
	mv	a0,a5	#, tmp181
	call	func0		#
	mv	a5,a0	# _5,
# problem115.c:31:     assert(func0(nums5, 4) == 0);
	beq	a5,zero,.L13	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC7	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L13:
# problem115.c:33:     long long nums6[] = {-1, -2, -3, 10, -5};
	lla	a5,.LC3	# tmp182,
	ld	a1,0(a5)		# tmp183,
	ld	a2,8(a5)		# tmp184,
	ld	a3,16(a5)		# tmp185,
	ld	a4,24(a5)		# tmp186,
	ld	a5,32(a5)		# tmp187,
	sd	a1,-256(s0)	# tmp183, nums6
	sd	a2,-248(s0)	# tmp184, nums6
	sd	a3,-240(s0)	# tmp185, nums6
	sd	a4,-232(s0)	# tmp186, nums6
	sd	a5,-224(s0)	# tmp187, nums6
# problem115.c:34:     assert(func0(nums6, 5) == -6);
	addi	a5,s0,-256	#, tmp188,
	li	a1,5		#,
	mv	a0,a5	#, tmp188
	call	func0		#
	mv	a4,a0	# _6,
# problem115.c:34:     assert(func0(nums6, 5) == -6);
	li	a5,-6		# tmp189,
	beq	a4,a5,.L14	#, _6, tmp189,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC7	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L14:
# problem115.c:36:     long long nums7[] = {100, -1, -2, -3, 10, -5};
	lla	a5,.LC4	# tmp190,
	ld	a0,0(a5)		# tmp191,
	ld	a1,8(a5)		# tmp192,
	ld	a2,16(a5)		# tmp193,
	ld	a3,24(a5)		# tmp194,
	ld	a4,32(a5)		# tmp195,
	ld	a5,40(a5)		# tmp196,
	sd	a0,-168(s0)	# tmp191, nums7
	sd	a1,-160(s0)	# tmp192, nums7
	sd	a2,-152(s0)	# tmp193, nums7
	sd	a3,-144(s0)	# tmp194, nums7
	sd	a4,-136(s0)	# tmp195, nums7
	sd	a5,-128(s0)	# tmp196, nums7
# problem115.c:37:     assert(func0(nums7, 6) == -6);
	addi	a5,s0,-168	#, tmp197,
	li	a1,6		#,
	mv	a0,a5	#, tmp197
	call	func0		#
	mv	a4,a0	# _7,
# problem115.c:37:     assert(func0(nums7, 6) == -6);
	li	a5,-6		# tmp198,
	beq	a4,a5,.L15	#, _7, tmp198,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,37		#,
	lla	a1,.LC7	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L15:
# problem115.c:39:     long long nums8[] = {10, 11, 13, 8, 3, 4};
	lla	a5,.LC5	# tmp199,
	ld	a0,0(a5)		# tmp200,
	ld	a1,8(a5)		# tmp201,
	ld	a2,16(a5)		# tmp202,
	ld	a3,24(a5)		# tmp203,
	ld	a4,32(a5)		# tmp204,
	ld	a5,40(a5)		# tmp205,
	sd	a0,-120(s0)	# tmp200, nums8
	sd	a1,-112(s0)	# tmp201, nums8
	sd	a2,-104(s0)	# tmp202, nums8
	sd	a3,-96(s0)	# tmp203, nums8
	sd	a4,-88(s0)	# tmp204, nums8
	sd	a5,-80(s0)	# tmp205, nums8
# problem115.c:40:     assert(func0(nums8, 6) == 3);
	addi	a5,s0,-120	#, tmp206,
	li	a1,6		#,
	mv	a0,a5	#, tmp206
	call	func0		#
	mv	a4,a0	# _8,
# problem115.c:40:     assert(func0(nums8, 6) == 3);
	li	a5,3		# tmp207,
	beq	a4,a5,.L16	#, _8, tmp207,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,40		#,
	lla	a1,.LC7	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L16:
# problem115.c:42:     long long nums9[] = {100, -33, 32, -1, 0, -2};
	lla	a5,.LC6	# tmp208,
	ld	a0,0(a5)		# tmp209,
	ld	a1,8(a5)		# tmp210,
	ld	a2,16(a5)		# tmp211,
	ld	a3,24(a5)		# tmp212,
	ld	a4,32(a5)		# tmp213,
	ld	a5,40(a5)		# tmp214,
	sd	a0,-72(s0)	# tmp209, nums9
	sd	a1,-64(s0)	# tmp210, nums9
	sd	a2,-56(s0)	# tmp211, nums9
	sd	a3,-48(s0)	# tmp212, nums9
	sd	a4,-40(s0)	# tmp213, nums9
	sd	a5,-32(s0)	# tmp214, nums9
# problem115.c:43:     assert(func0(nums9, 6) == -33);
	addi	a5,s0,-72	#, tmp215,
	li	a1,6		#,
	mv	a0,a5	#, tmp215
	call	func0		#
	mv	a4,a0	# _9,
# problem115.c:43:     assert(func0(nums9, 6) == -33);
	li	a5,-33		# tmp216,
	beq	a4,a5,.L17	#, _9, tmp216,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,43		#,
	lla	a1,.LC7	#,
	lla	a0,.LC17	#,
	call	__assert_fail@plt	#
.L17:
# problem115.c:45:     long long nums10[] = {-10};
	li	a5,-10		# tmp217,
	sd	a5,-384(s0)	# tmp217, nums10[0]
# problem115.c:46:     assert(func0(nums10, 1) == -10);
	addi	a5,s0,-384	#, tmp218,
	li	a1,1		#,
	mv	a0,a5	#, tmp218
	call	func0		#
	mv	a4,a0	# _10,
# problem115.c:46:     assert(func0(nums10, 1) == -10);
	li	a5,-10		# tmp219,
	beq	a4,a5,.L18	#, _10, tmp219,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,46		#,
	lla	a1,.LC7	#,
	lla	a0,.LC18	#,
	call	__assert_fail@plt	#
.L18:
# problem115.c:48:     long long nums11[] = {7};
	li	a5,7		# tmp220,
	sd	a5,-376(s0)	# tmp220, nums11[0]
# problem115.c:49:     assert(func0(nums11, 1) == 7);
	addi	a5,s0,-376	#, tmp221,
	li	a1,1		#,
	mv	a0,a5	#, tmp221
	call	func0		#
	mv	a4,a0	# _11,
# problem115.c:49:     assert(func0(nums11, 1) == 7);
	li	a5,7		# tmp222,
	beq	a4,a5,.L19	#, _11, tmp222,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,49		#,
	lla	a1,.LC7	#,
	lla	a0,.LC19	#,
	call	__assert_fail@plt	#
.L19:
# problem115.c:51:     long long nums12[] = {1, -1};
	li	a5,1		# tmp223,
	sd	a5,-368(s0)	# tmp223, nums12[0]
	li	a5,-1		# tmp224,
	sd	a5,-360(s0)	# tmp224, nums12[1]
# problem115.c:52:     assert(func0(nums12, 2) == -1);
	addi	a5,s0,-368	#, tmp225,
	li	a1,2		#,
	mv	a0,a5	#, tmp225
	call	func0		#
	mv	a4,a0	# _12,
# problem115.c:52:     assert(func0(nums12, 2) == -1);
	li	a5,-1		# tmp226,
	beq	a4,a5,.L20	#, _12, tmp226,
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
	la	a5,__stack_chk_guard		# tmp228,
	ld	a3, -24(s0)	# tmp231, D.2807
	ld	a5, 0(a5)	# tmp229, __stack_chk_guard
	xor	a5, a3, a5	# tmp229, tmp231
	li	a3, 0	# tmp231
	beq	a5,zero,.L22	#, tmp229,,
	call	__stack_chk_fail@plt	#
.L22:
	mv	a0,a4	#, <retval>
	ld	ra,392(sp)		#,
	.cfi_restore 1
	ld	s0,384(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 400
	addi	sp,sp,400	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
