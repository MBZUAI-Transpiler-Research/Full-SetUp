	.file	"problem73.c"
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
	sd	a0,-40(s0)	# q, q
	mv	a5,a1	# tmp102, size
	mv	a4,a2	# tmp104, w
	sw	a5,-44(s0)	# tmp103, size
	mv	a5,a4	# tmp105, tmp104
	sw	a5,-48(s0)	# tmp105, w
# problem73.c:5:     int sum = 0;
	sw	zero,-24(s0)	#, sum
# problem73.c:6:     for (int i = 0; i < size / 2; i++) {
	sw	zero,-20(s0)	#, i
# problem73.c:6:     for (int i = 0; i < size / 2; i++) {
	j	.L2		#
.L5:
# problem73.c:7:         if (q[i] != q[size - 1 - i]) return false;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp106, q
	add	a5,a4,a5	# _2, _3, tmp106
	lw	a3,0(a5)		# _4, *_3
# problem73.c:7:         if (q[i] != q[size - 1 - i]) return false;
	lw	a5,-44(s0)		# tmp109, size
	addiw	a5,a5,-1	#, tmp107, tmp108
	sext.w	a5,a5	# _5, tmp107
# problem73.c:7:         if (q[i] != q[size - 1 - i]) return false;
	lw	a4,-20(s0)		# tmp112, i
	subw	a5,a5,a4	# tmp110, _5, tmp111
	sext.w	a5,a5	# _6, tmp110
# problem73.c:7:         if (q[i] != q[size - 1 - i]) return false;
	slli	a5,a5,2	#, _8, _7
	ld	a4,-40(s0)		# tmp113, q
	add	a5,a4,a5	# _8, _9, tmp113
	lw	a5,0(a5)		# _10, *_9
# problem73.c:7:         if (q[i] != q[size - 1 - i]) return false;
	mv	a4,a3	# tmp114, _4
	beq	a4,a5,.L3	#, tmp114, tmp115,
# problem73.c:7:         if (q[i] != q[size - 1 - i]) return false;
	li	a5,0		# _32,
	j	.L4		#
.L3:
# problem73.c:8:         sum += q[i] + q[size - 1 - i];
	lw	a5,-20(s0)		# _11, i
	slli	a5,a5,2	#, _12, _11
	ld	a4,-40(s0)		# tmp116, q
	add	a5,a4,a5	# _12, _13, tmp116
	lw	a4,0(a5)		# _14, *_13
# problem73.c:8:         sum += q[i] + q[size - 1 - i];
	lw	a5,-44(s0)		# tmp119, size
	addiw	a5,a5,-1	#, tmp117, tmp118
	sext.w	a5,a5	# _15, tmp117
# problem73.c:8:         sum += q[i] + q[size - 1 - i];
	lw	a3,-20(s0)		# tmp122, i
	subw	a5,a5,a3	# tmp120, _15, tmp121
	sext.w	a5,a5	# _16, tmp120
# problem73.c:8:         sum += q[i] + q[size - 1 - i];
	slli	a5,a5,2	#, _18, _17
	ld	a3,-40(s0)		# tmp123, q
	add	a5,a3,a5	# _18, _19, tmp123
	lw	a5,0(a5)		# _20, *_19
# problem73.c:8:         sum += q[i] + q[size - 1 - i];
	addw	a5,a4,a5	# _20, tmp124, _14
	sext.w	a5,a5	# _21, tmp124
# problem73.c:8:         sum += q[i] + q[size - 1 - i];
	lw	a4,-24(s0)		# tmp127, sum
	addw	a5,a4,a5	# _21, tmp125, tmp126
	sw	a5,-24(s0)	# tmp125, sum
# problem73.c:6:     for (int i = 0; i < size / 2; i++) {
	lw	a5,-20(s0)		# tmp130, i
	addiw	a5,a5,1	#, tmp128, tmp129
	sw	a5,-20(s0)	# tmp128, i
.L2:
# problem73.c:6:     for (int i = 0; i < size / 2; i++) {
	lw	a5,-44(s0)		# tmp133, size
	srliw	a4,a5,31	#, tmp134, tmp132
	addw	a5,a4,a5	# tmp132, tmp135, tmp134
	sraiw	a5,a5,1	#, tmp136, tmp135
	sext.w	a4,a5	# _22, tmp136
# problem73.c:6:     for (int i = 0; i < size / 2; i++) {
	lw	a5,-20(s0)		# tmp138, i
	sext.w	a5,a5	# tmp139, tmp137
	blt	a5,a4,.L5	#, tmp139, tmp140,
# problem73.c:10:     if (size % 2 == 1) sum += q[size / 2];
	lw	a5,-44(s0)		# tmp143, size
	mv	a4,a5	# tmp142, tmp143
	sraiw	a5,a4,31	#, tmp144, tmp142
	srliw	a5,a5,31	#, tmp145, tmp144
	addw	a4,a4,a5	# tmp145, tmp146, tmp142
	andi	a4,a4,1	#, tmp147, tmp146
	subw	a5,a4,a5	# tmp148, tmp147, tmp145
	sext.w	a5,a5	# _23, tmp148
# problem73.c:10:     if (size % 2 == 1) sum += q[size / 2];
	mv	a4,a5	# tmp149, _23
	li	a5,1		# tmp150,
	bne	a4,a5,.L6	#, tmp149, tmp150,
# problem73.c:10:     if (size % 2 == 1) sum += q[size / 2];
	lw	a5,-44(s0)		# tmp153, size
	srliw	a4,a5,31	#, tmp154, tmp152
	addw	a5,a4,a5	# tmp152, tmp155, tmp154
	sraiw	a5,a5,1	#, tmp156, tmp155
	sext.w	a5,a5	# _24, tmp156
# problem73.c:10:     if (size % 2 == 1) sum += q[size / 2];
	slli	a5,a5,2	#, _26, _25
	ld	a4,-40(s0)		# tmp157, q
	add	a5,a4,a5	# _26, _27, tmp157
	lw	a5,0(a5)		# _28, *_27
# problem73.c:10:     if (size % 2 == 1) sum += q[size / 2];
	lw	a4,-24(s0)		# tmp160, sum
	addw	a5,a4,a5	# _28, tmp158, tmp159
	sw	a5,-24(s0)	# tmp158, sum
.L6:
# problem73.c:11:     return sum <= w;
	lw	a5,-24(s0)		# tmp163, sum
	mv	a4,a5	# tmp162, tmp163
	lw	a5,-48(s0)		# tmp165, w
	sext.w	a4,a4	# tmp167, tmp162
	sext.w	a5,a5	# tmp168, tmp164
	sgt	a5,a4,a5	# tmp169, tmp167, tmp168
	xori	a5,a5,1	#, tmp166, tmp169
	andi	a5,a5,0xff	# _32, tmp161
.L4:
# problem73.c:12: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem73.c"
	.align	3
.LC1:
	.string	"func0(test1, 3, 9) == true"
	.align	3
.LC2:
	.string	"func0(test2, 2, 5) == false"
	.align	3
.LC3:
	.string	"func0(test3, 1, 5) == true"
	.align	3
.LC4:
	.string	"func0(test4, 3, 1) == false"
	.align	3
.LC5:
	.string	"func0(test5, 3, 6) == false"
	.align	3
.LC6:
	.string	"func0(test6, 1, 5) == true"
	.align	3
.LC7:
	.string	"All tests passed."
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-96	#,,
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	addi	s0,sp,96	#,,
# problem73.c:20: int main() {
	la	a5,__stack_chk_guard		# tmp83,
	ld	a4, 0(a5)	# tmp115, __stack_chk_guard
	sd	a4, -24(s0)	# tmp115, D.1958
	li	a4, 0	# tmp115
# problem73.c:21:     int test1[] = {3, 2, 3};
	li	a5,3		# tmp84,
	sw	a5,-72(s0)	# tmp84, test1[0]
	li	a5,2		# tmp85,
	sw	a5,-68(s0)	# tmp85, test1[1]
	li	a5,3		# tmp86,
	sw	a5,-64(s0)	# tmp86, test1[2]
# problem73.c:22:     assert(func0(test1, 3, 9) == true);
	addi	a5,s0,-72	#, tmp87,
	li	a2,9		#,
	li	a1,3		#,
	mv	a0,a5	#, tmp87
	call	func0		#
	mv	a5,a0	# tmp88,
	bne	a5,zero,.L8	#, _1,,
# problem73.c:22:     assert(func0(test1, 3, 9) == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L8:
# problem73.c:24:     int test2[] = {1, 2};
	li	a5,1		# tmp89,
	sw	a5,-80(s0)	# tmp89, test2[0]
	li	a5,2		# tmp90,
	sw	a5,-76(s0)	# tmp90, test2[1]
# problem73.c:25:     assert(func0(test2, 2, 5) == false);
	addi	a5,s0,-80	#, tmp91,
	li	a2,5		#,
	li	a1,2		#,
	mv	a0,a5	#, tmp91
	call	func0		#
	mv	a5,a0	# tmp92,
	xori	a5,a5,1	#, tmp93, _2
	andi	a5,a5,0xff	# _3, tmp93
	bne	a5,zero,.L9	#, _3,,
# problem73.c:25:     assert(func0(test2, 2, 5) == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L9:
# problem73.c:27:     int test3[] = {3};
	li	a5,3		# tmp94,
	sw	a5,-96(s0)	# tmp94, test3[0]
# problem73.c:28:     assert(func0(test3, 1, 5) == true);
	addi	a5,s0,-96	#, tmp95,
	li	a2,5		#,
	li	a1,1		#,
	mv	a0,a5	#, tmp95
	call	func0		#
	mv	a5,a0	# tmp96,
	bne	a5,zero,.L10	#, _4,,
# problem73.c:28:     assert(func0(test3, 1, 5) == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L10:
# problem73.c:30:     int test4[] = {3, 2, 3};
	li	a5,3		# tmp97,
	sw	a5,-56(s0)	# tmp97, test4[0]
	li	a5,2		# tmp98,
	sw	a5,-52(s0)	# tmp98, test4[1]
	li	a5,3		# tmp99,
	sw	a5,-48(s0)	# tmp99, test4[2]
# problem73.c:31:     assert(func0(test4, 3, 1) == false);
	addi	a5,s0,-56	#, tmp100,
	li	a2,1		#,
	li	a1,3		#,
	mv	a0,a5	#, tmp100
	call	func0		#
	mv	a5,a0	# tmp101,
	xori	a5,a5,1	#, tmp102, _5
	andi	a5,a5,0xff	# _6, tmp102
	bne	a5,zero,.L11	#, _6,,
# problem73.c:31:     assert(func0(test4, 3, 1) == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L11:
# problem73.c:33:     int test5[] = {1, 2, 3};
	li	a5,1		# tmp103,
	sw	a5,-40(s0)	# tmp103, test5[0]
	li	a5,2		# tmp104,
	sw	a5,-36(s0)	# tmp104, test5[1]
	li	a5,3		# tmp105,
	sw	a5,-32(s0)	# tmp105, test5[2]
# problem73.c:34:     assert(func0(test5, 3, 6) == false);
	addi	a5,s0,-40	#, tmp106,
	li	a2,6		#,
	li	a1,3		#,
	mv	a0,a5	#, tmp106
	call	func0		#
	mv	a5,a0	# tmp107,
	xori	a5,a5,1	#, tmp108, _7
	andi	a5,a5,0xff	# _8, tmp108
	bne	a5,zero,.L12	#, _8,,
# problem73.c:34:     assert(func0(test5, 3, 6) == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L12:
# problem73.c:36:     int test6[] = {5};
	li	a5,5		# tmp109,
	sw	a5,-88(s0)	# tmp109, test6[0]
# problem73.c:37:     assert(func0(test6, 1, 5) == true);
	addi	a5,s0,-88	#, tmp110,
	li	a2,5		#,
	li	a1,1		#,
	mv	a0,a5	#, tmp110
	call	func0		#
	mv	a5,a0	# tmp111,
	bne	a5,zero,.L13	#, _9,,
# problem73.c:37:     assert(func0(test6, 1, 5) == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,37		#,
	lla	a1,.LC0	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L13:
# problem73.c:39:     printf("All tests passed.\n");
	lla	a0,.LC7	#,
	call	puts@plt	#
# problem73.c:40:     return 0;
	li	a5,0		# _37,
# problem73.c:41: }
	mv	a4,a5	# <retval>, _37
	la	a5,__stack_chk_guard		# tmp113,
	ld	a3, -24(s0)	# tmp116, D.1958
	ld	a5, 0(a5)	# tmp114, __stack_chk_guard
	xor	a5, a3, a5	# tmp114, tmp116
	li	a3, 0	# tmp116
	beq	a5,zero,.L15	#, tmp114,,
	call	__stack_chk_fail@plt	#
.L15:
	mv	a0,a4	#, <retval>
	ld	ra,88(sp)		#,
	ld	s0,80(sp)		#,
	addi	sp,sp,96	#,,
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
