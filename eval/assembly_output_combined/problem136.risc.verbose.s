	.file	"problem136.c"
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
	mv	a5,a1	# tmp83, size
	sw	a5,-44(s0)	# tmp84, size
# problem136.c:4:     int max = -1;
	li	a5,-1		# tmp85,
	sw	a5,-24(s0)	# tmp85, max
# problem136.c:5:     for (int i = 1; i < size; ++i) {
	li	a5,1		# tmp86,
	sw	a5,-20(s0)	# tmp86, i
# problem136.c:5:     for (int i = 1; i < size; ++i) {
	j	.L2		#
.L4:
# problem136.c:6:         if (arr[i] < arr[i - 1]) max = i;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp87, arr
	add	a5,a4,a5	# _2, _3, tmp87
	lw	a3,0(a5)		# _4, *_3
# problem136.c:6:         if (arr[i] < arr[i - 1]) max = i;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	addi	a5,a5,-4	#, _7, _6
	ld	a4,-40(s0)		# tmp88, arr
	add	a5,a4,a5	# _7, _8, tmp88
	lw	a5,0(a5)		# _9, *_8
# problem136.c:6:         if (arr[i] < arr[i - 1]) max = i;
	mv	a4,a3	# tmp89, _4
	bge	a4,a5,.L3	#, tmp89, tmp90,
# problem136.c:6:         if (arr[i] < arr[i - 1]) max = i;
	lw	a5,-20(s0)		# tmp91, i
	sw	a5,-24(s0)	# tmp91, max
.L3:
# problem136.c:5:     for (int i = 1; i < size; ++i) {
	lw	a5,-20(s0)		# tmp94, i
	addiw	a5,a5,1	#, tmp92, tmp93
	sw	a5,-20(s0)	# tmp92, i
.L2:
# problem136.c:5:     for (int i = 1; i < size; ++i) {
	lw	a5,-20(s0)		# tmp96, i
	mv	a4,a5	# tmp95, tmp96
	lw	a5,-44(s0)		# tmp98, size
	sext.w	a4,a4	# tmp99, tmp95
	sext.w	a5,a5	# tmp100, tmp97
	blt	a4,a5,.L4	#, tmp99, tmp100,
# problem136.c:8:     return max;
	lw	a5,-24(s0)		# _16, max
# problem136.c:9: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC4:
	.string	"problem136.c"
	.align	3
.LC5:
	.string	"func0(arr1, 5) == 3"
	.align	3
.LC6:
	.string	"func0(arr2, 4) == -1"
	.align	3
.LC7:
	.string	"func0(arr3, 9) == 2"
	.align	3
.LC8:
	.string	"func0(arr4, 5) == 4"
	.align	3
.LC9:
	.string	"func0(NULL, 0) == -1"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	4
	.word	3
	.word	5
	.align	3
.LC1:
	.word	1
	.word	2
	.word	4
	.word	5
	.align	3
.LC2:
	.word	1
	.word	4
	.word	2
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.align	3
.LC3:
	.word	4
	.word	8
	.word	5
	.word	7
	.word	3
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-128	#,,
	sd	ra,120(sp)	#,
	sd	s0,112(sp)	#,
	addi	s0,sp,128	#,,
# problem136.c:17: int main() {
	la	a5,__stack_chk_guard		# tmp79,
	ld	a4, 0(a5)	# tmp119, __stack_chk_guard
	sd	a4, -24(s0)	# tmp119, D.1958
	li	a4, 0	# tmp119
# problem136.c:18:     int arr1[] = {1, 2, 4, 3, 5};
	lla	a5,.LC0	# tmp80,
	ld	a4,0(a5)		# tmp81,
	sd	a4,-112(s0)	# tmp81, arr1
	ld	a4,8(a5)		# tmp82,
	sd	a4,-104(s0)	# tmp82, arr1
	lw	a5,16(a5)		# tmp83,
	sw	a5,-96(s0)	# tmp83, arr1
# problem136.c:19:     assert(func0(arr1, 5) == 3);
	addi	a5,s0,-112	#, tmp84,
	li	a1,5		#,
	mv	a0,a5	#, tmp84
	call	func0		#
	mv	a5,a0	# tmp85,
	mv	a4,a5	# tmp86, _1
	li	a5,3		# tmp87,
	beq	a4,a5,.L7	#, tmp86, tmp87,
# problem136.c:19:     assert(func0(arr1, 5) == 3);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC4	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L7:
# problem136.c:21:     int arr2[] = {1, 2, 4, 5};
	lla	a5,.LC1	# tmp88,
	ld	a4,0(a5)		# tmp89,
	sd	a4,-128(s0)	# tmp89, arr2
	ld	a5,8(a5)		# tmp90,
	sd	a5,-120(s0)	# tmp90, arr2
# problem136.c:22:     assert(func0(arr2, 4) == -1);
	addi	a5,s0,-128	#, tmp91,
	li	a1,4		#,
	mv	a0,a5	#, tmp91
	call	func0		#
	mv	a5,a0	# tmp92,
	mv	a4,a5	# tmp93, _2
	li	a5,-1		# tmp94,
	beq	a4,a5,.L8	#, tmp93, tmp94,
# problem136.c:22:     assert(func0(arr2, 4) == -1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC4	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L8:
# problem136.c:24:     int arr3[] = {1, 4, 2, 5, 6, 7, 8, 9, 10};
	lla	a5,.LC2	# tmp95,
	ld	a1,0(a5)		# tmp96,
	ld	a2,8(a5)		# tmp97,
	ld	a3,16(a5)		# tmp98,
	ld	a4,24(a5)		# tmp99,
	sd	a1,-64(s0)	# tmp96, arr3
	sd	a2,-56(s0)	# tmp97, arr3
	sd	a3,-48(s0)	# tmp98, arr3
	sd	a4,-40(s0)	# tmp99, arr3
	lw	a5,32(a5)		# tmp100,
	sw	a5,-32(s0)	# tmp100, arr3
# problem136.c:25:     assert(func0(arr3, 9) == 2);
	addi	a5,s0,-64	#, tmp101,
	li	a1,9		#,
	mv	a0,a5	#, tmp101
	call	func0		#
	mv	a5,a0	# tmp102,
	mv	a4,a5	# tmp103, _3
	li	a5,2		# tmp104,
	beq	a4,a5,.L9	#, tmp103, tmp104,
# problem136.c:25:     assert(func0(arr3, 9) == 2);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC4	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L9:
# problem136.c:27:     int arr4[] = {4, 8, 5, 7, 3};
	lla	a5,.LC3	# tmp105,
	ld	a4,0(a5)		# tmp106,
	sd	a4,-88(s0)	# tmp106, arr4
	ld	a4,8(a5)		# tmp107,
	sd	a4,-80(s0)	# tmp107, arr4
	lw	a5,16(a5)		# tmp108,
	sw	a5,-72(s0)	# tmp108, arr4
# problem136.c:28:     assert(func0(arr4, 5) == 4);
	addi	a5,s0,-88	#, tmp109,
	li	a1,5		#,
	mv	a0,a5	#, tmp109
	call	func0		#
	mv	a5,a0	# tmp110,
	mv	a4,a5	# tmp111, _4
	li	a5,4		# tmp112,
	beq	a4,a5,.L10	#, tmp111, tmp112,
# problem136.c:28:     assert(func0(arr4, 5) == 4);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC4	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L10:
# problem136.c:30:     assert(func0(NULL, 0) == -1);
	li	a1,0		#,
	li	a0,0		#,
	call	func0		#
	mv	a5,a0	# tmp113,
	mv	a4,a5	# tmp114, _5
	li	a5,-1		# tmp115,
	beq	a4,a5,.L11	#, tmp114, tmp115,
# problem136.c:30:     assert(func0(NULL, 0) == -1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC4	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L11:
# problem136.c:32:     return 0;
	li	a5,0		# _21,
# problem136.c:33: }
	mv	a4,a5	# <retval>, _21
	la	a5,__stack_chk_guard		# tmp117,
	ld	a3, -24(s0)	# tmp120, D.1958
	ld	a5, 0(a5)	# tmp118, __stack_chk_guard
	xor	a5, a3, a5	# tmp118, tmp120
	li	a3, 0	# tmp120
	beq	a5,zero,.L13	#, tmp118,,
	call	__stack_chk_fail@plt	#
.L13:
	mv	a0,a4	#, <retval>
	ld	ra,120(sp)		#,
	ld	s0,112(sp)		#,
	addi	sp,sp,128	#,,
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
