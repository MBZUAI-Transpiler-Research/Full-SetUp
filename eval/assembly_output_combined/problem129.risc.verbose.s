	.file	"problem129.c"
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
	sd	a0,-40(s0)	# arr, arr
	mv	a5,a1	# tmp87, arr_size
	sw	a5,-44(s0)	# tmp88, arr_size
# problem129.c:5:     if (arr_size == 0) return -32768;
	lw	a5,-44(s0)		# tmp90, arr_size
	sext.w	a5,a5	# tmp91, tmp89
	bne	a5,zero,.L2	#, tmp91,,
# problem129.c:5:     if (arr_size == 0) return -32768;
	li	a5,-32768		# _19,
	j	.L3		#
.L2:
# problem129.c:6:     int sum = 0, prods = 1, i;
	sw	zero,-28(s0)	#, sum
# problem129.c:6:     int sum = 0, prods = 1, i;
	li	a5,1		# tmp92,
	sw	a5,-24(s0)	# tmp92, prods
# problem129.c:7:     for (i = 0; i < arr_size; i++) {
	sw	zero,-20(s0)	#, i
# problem129.c:7:     for (i = 0; i < arr_size; i++) {
	j	.L4		#
.L7:
# problem129.c:8:         sum += abs(arr[i]);
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp93, arr
	add	a5,a4,a5	# _2, _3, tmp93
	lw	a4,0(a5)		# _4, *_3
# problem129.c:8:         sum += abs(arr[i]);
	sraiw	a5,a4,31	#, tmp94, _4
	xor	a4,a4,a5	# tmp94, tmp95, _4
	subw	a5,a4,a5	# tmp96, tmp95, tmp94
	sext.w	a5,a5	# _5, tmp96
# problem129.c:8:         sum += abs(arr[i]);
	lw	a4,-28(s0)		# tmp99, sum
	addw	a5,a4,a5	# _5, tmp97, tmp98
	sw	a5,-28(s0)	# tmp97, sum
# problem129.c:9:         if (arr[i] == 0) prods = 0;
	lw	a5,-20(s0)		# _6, i
	slli	a5,a5,2	#, _7, _6
	ld	a4,-40(s0)		# tmp100, arr
	add	a5,a4,a5	# _7, _8, tmp100
	lw	a5,0(a5)		# _9, *_8
# problem129.c:9:         if (arr[i] == 0) prods = 0;
	bne	a5,zero,.L5	#, _9,,
# problem129.c:9:         if (arr[i] == 0) prods = 0;
	sw	zero,-24(s0)	#, prods
.L5:
# problem129.c:10:         if (arr[i] < 0) prods = -prods;
	lw	a5,-20(s0)		# _10, i
	slli	a5,a5,2	#, _11, _10
	ld	a4,-40(s0)		# tmp101, arr
	add	a5,a4,a5	# _11, _12, tmp101
	lw	a5,0(a5)		# _13, *_12
# problem129.c:10:         if (arr[i] < 0) prods = -prods;
	bge	a5,zero,.L6	#, tmp102,,
# problem129.c:10:         if (arr[i] < 0) prods = -prods;
	lw	a5,-24(s0)		# tmp105, prods
	negw	a5,a5	# tmp103, tmp104
	sw	a5,-24(s0)	# tmp103, prods
.L6:
# problem129.c:7:     for (i = 0; i < arr_size; i++) {
	lw	a5,-20(s0)		# tmp108, i
	addiw	a5,a5,1	#, tmp106, tmp107
	sw	a5,-20(s0)	# tmp106, i
.L4:
# problem129.c:7:     for (i = 0; i < arr_size; i++) {
	lw	a5,-20(s0)		# tmp110, i
	mv	a4,a5	# tmp109, tmp110
	lw	a5,-44(s0)		# tmp112, arr_size
	sext.w	a4,a4	# tmp113, tmp109
	sext.w	a5,a5	# tmp114, tmp111
	blt	a4,a5,.L7	#, tmp113, tmp114,
# problem129.c:12:     return sum * prods;
	lw	a5,-28(s0)		# tmp117, sum
	mv	a4,a5	# tmp116, tmp117
	lw	a5,-24(s0)		# tmp119, prods
	mulw	a5,a4,a5	# tmp115, tmp116, tmp118
	sext.w	a5,a5	# _19, tmp115
.L3:
# problem129.c:13: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC6:
	.string	"problem129.c"
	.align	3
.LC7:
	.string	"func0(arr1, 4) == -9"
	.align	3
.LC8:
	.string	"func0(arr2, 2) == 0"
	.align	3
.LC9:
	.string	"func0(arr3, 7) == -10"
	.align	3
.LC10:
	.string	"func0(NULL, 0) == -32768"
	.align	3
.LC11:
	.string	"func0(arr5, 7) == 20"
	.align	3
.LC12:
	.string	"func0(arr6, 4) == 4"
	.align	3
.LC13:
	.string	"func0(arr7, 4) == -4"
	.align	3
.LC14:
	.string	"func0(arr8, 4) == 0"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	2
	.word	-4
	.align	3
.LC1:
	.word	1
	.word	1
	.word	1
	.word	2
	.word	3
	.word	-1
	.word	1
	.align	3
.LC2:
	.word	2
	.word	4
	.word	1
	.word	2
	.word	-1
	.word	-1
	.word	9
	.align	3
.LC3:
	.word	-1
	.word	1
	.word	-1
	.word	1
	.align	3
.LC4:
	.word	-1
	.word	1
	.word	1
	.word	1
	.align	3
.LC5:
	.word	-1
	.word	1
	.word	1
	.word	0
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-160	#,,
	sd	ra,152(sp)	#,
	sd	s0,144(sp)	#,
	addi	s0,sp,160	#,,
# problem129.c:20: int main() {
	la	a5,__stack_chk_guard		# tmp82,
	ld	a4, 0(a5)	# tmp136, __stack_chk_guard
	sd	a4, -24(s0)	# tmp136, D.2488
	li	a4, 0	# tmp136
# problem129.c:21:     int arr1[] = {1, 2, 2, -4};
	lla	a5,.LC0	# tmp83,
	ld	a4,0(a5)		# tmp84,
	sd	a4,-152(s0)	# tmp84, arr1
	ld	a5,8(a5)		# tmp85,
	sd	a5,-144(s0)	# tmp85, arr1
# problem129.c:22:     assert(func0(arr1, 4) == -9);
	addi	a5,s0,-152	#, tmp86,
	li	a1,4		#,
	mv	a0,a5	#, tmp86
	call	func0		#
	mv	a5,a0	# tmp87,
	mv	a4,a5	# tmp88, _1
	li	a5,-9		# tmp89,
	beq	a4,a5,.L9	#, tmp88, tmp89,
# problem129.c:22:     assert(func0(arr1, 4) == -9);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC6	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L9:
# problem129.c:24:     int arr2[] = {0, 1};
	sw	zero,-160(s0)	#, arr2[0]
	li	a5,1		# tmp90,
	sw	a5,-156(s0)	# tmp90, arr2[1]
# problem129.c:25:     assert(func0(arr2, 2) == 0);
	addi	a5,s0,-160	#, tmp91,
	li	a1,2		#,
	mv	a0,a5	#, tmp91
	call	func0		#
	mv	a5,a0	# tmp92,
	beq	a5,zero,.L10	#, _2,,
# problem129.c:25:     assert(func0(arr2, 2) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC6	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L10:
# problem129.c:27:     int arr3[] = {1, 1, 1, 2, 3, -1, 1};
	lla	a5,.LC1	# tmp93,
	ld	a2,0(a5)		# tmp94,
	ld	a3,8(a5)		# tmp95,
	ld	a4,16(a5)		# tmp96,
	sd	a2,-88(s0)	# tmp94, arr3
	sd	a3,-80(s0)	# tmp95, arr3
	sd	a4,-72(s0)	# tmp96, arr3
	lw	a5,24(a5)		# tmp97,
	sw	a5,-64(s0)	# tmp97, arr3
# problem129.c:28:     assert(func0(arr3, 7) == -10);
	addi	a5,s0,-88	#, tmp98,
	li	a1,7		#,
	mv	a0,a5	#, tmp98
	call	func0		#
	mv	a5,a0	# tmp99,
	mv	a4,a5	# tmp100, _3
	li	a5,-10		# tmp101,
	beq	a4,a5,.L11	#, tmp100, tmp101,
# problem129.c:28:     assert(func0(arr3, 7) == -10);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC6	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L11:
# problem129.c:30:     assert(func0(NULL, 0) == -32768);
	li	a1,0		#,
	li	a0,0		#,
	call	func0		#
	mv	a5,a0	# tmp102,
	mv	a4,a5	# tmp103, _4
	li	a5,-32768		# tmp104,
	beq	a4,a5,.L12	#, tmp103, tmp104,
# problem129.c:30:     assert(func0(NULL, 0) == -32768);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC6	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L12:
# problem129.c:32:     int arr5[] = {2, 4, 1, 2, -1, -1, 9};
	lla	a5,.LC2	# tmp105,
	ld	a2,0(a5)		# tmp106,
	ld	a3,8(a5)		# tmp107,
	ld	a4,16(a5)		# tmp108,
	sd	a2,-56(s0)	# tmp106, arr5
	sd	a3,-48(s0)	# tmp107, arr5
	sd	a4,-40(s0)	# tmp108, arr5
	lw	a5,24(a5)		# tmp109,
	sw	a5,-32(s0)	# tmp109, arr5
# problem129.c:33:     assert(func0(arr5, 7) == 20);
	addi	a5,s0,-56	#, tmp110,
	li	a1,7		#,
	mv	a0,a5	#, tmp110
	call	func0		#
	mv	a5,a0	# tmp111,
	mv	a4,a5	# tmp112, _5
	li	a5,20		# tmp113,
	beq	a4,a5,.L13	#, tmp112, tmp113,
# problem129.c:33:     assert(func0(arr5, 7) == 20);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,33		#,
	lla	a1,.LC6	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L13:
# problem129.c:35:     int arr6[] = {-1, 1, -1, 1};
	lla	a5,.LC3	# tmp114,
	ld	a4,0(a5)		# tmp115,
	sd	a4,-136(s0)	# tmp115, arr6
	ld	a5,8(a5)		# tmp116,
	sd	a5,-128(s0)	# tmp116, arr6
# problem129.c:36:     assert(func0(arr6, 4) == 4);
	addi	a5,s0,-136	#, tmp117,
	li	a1,4		#,
	mv	a0,a5	#, tmp117
	call	func0		#
	mv	a5,a0	# tmp118,
	mv	a4,a5	# tmp119, _6
	li	a5,4		# tmp120,
	beq	a4,a5,.L14	#, tmp119, tmp120,
# problem129.c:36:     assert(func0(arr6, 4) == 4);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,36		#,
	lla	a1,.LC6	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L14:
# problem129.c:38:     int arr7[] = {-1, 1, 1, 1};
	lla	a5,.LC4	# tmp121,
	ld	a4,0(a5)		# tmp122,
	sd	a4,-120(s0)	# tmp122, arr7
	ld	a5,8(a5)		# tmp123,
	sd	a5,-112(s0)	# tmp123, arr7
# problem129.c:39:     assert(func0(arr7, 4) == -4);
	addi	a5,s0,-120	#, tmp124,
	li	a1,4		#,
	mv	a0,a5	#, tmp124
	call	func0		#
	mv	a5,a0	# tmp125,
	mv	a4,a5	# tmp126, _7
	li	a5,-4		# tmp127,
	beq	a4,a5,.L15	#, tmp126, tmp127,
# problem129.c:39:     assert(func0(arr7, 4) == -4);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,39		#,
	lla	a1,.LC6	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L15:
# problem129.c:41:     int arr8[] = {-1, 1, 1, 0};
	lla	a5,.LC5	# tmp128,
	ld	a4,0(a5)		# tmp129,
	sd	a4,-104(s0)	# tmp129, arr8
	ld	a5,8(a5)		# tmp130,
	sd	a5,-96(s0)	# tmp130, arr8
# problem129.c:42:     assert(func0(arr8, 4) == 0);
	addi	a5,s0,-104	#, tmp131,
	li	a1,4		#,
	mv	a0,a5	#, tmp131
	call	func0		#
	mv	a5,a0	# tmp132,
	beq	a5,zero,.L16	#, _8,,
# problem129.c:42:     assert(func0(arr8, 4) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,42		#,
	lla	a1,.LC6	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L16:
# problem129.c:44:     return 0;
	li	a5,0		# _34,
# problem129.c:45: }
	mv	a4,a5	# <retval>, _34
	la	a5,__stack_chk_guard		# tmp134,
	ld	a3, -24(s0)	# tmp137, D.2488
	ld	a5, 0(a5)	# tmp135, __stack_chk_guard
	xor	a5, a3, a5	# tmp135, tmp137
	li	a3, 0	# tmp137
	beq	a5,zero,.L18	#, tmp135,,
	call	__stack_chk_fail@plt	#
.L18:
	mv	a0,a4	#, <retval>
	ld	ra,152(sp)		#,
	ld	s0,144(sp)		#,
	addi	sp,sp,160	#,,
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
