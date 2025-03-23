	.file	"problem69.c"
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
	sd	a0,-40(s0)	# arr, arr
	mv	a5,a1	# tmp88, length
	sd	a2,-56(s0)	# output, output
	sw	a5,-44(s0)	# tmp89, length
# problem69.c:5:     int smallestEven = INT_MAX;
	li	a5,-2147483648		# tmp91,
	xori	a5,a5,-1	#, tmp90, tmp91
	sw	a5,-28(s0)	# tmp90, smallestEven
# problem69.c:6:     int index = -1;
	li	a5,-1		# tmp92,
	sw	a5,-24(s0)	# tmp92, index
# problem69.c:8:     for (int i = 0; i < length; ++i) {
	sw	zero,-20(s0)	#, i
# problem69.c:8:     for (int i = 0; i < length; ++i) {
	j	.L2		#
.L5:
# problem69.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp93, arr
	add	a5,a4,a5	# _2, _3, tmp93
	lw	a5,0(a5)		# _4, *_3
# problem69.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	sext.w	a5,a5	# _5, _4
	andi	a5,a5,1	#, tmp95, tmp94
	sext.w	a5,a5	# _6, tmp95
# problem69.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	bne	a5,zero,.L3	#, _6,,
# problem69.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	lw	a5,-20(s0)		# _7, i
	slli	a5,a5,2	#, _8, _7
	ld	a4,-40(s0)		# tmp96, arr
	add	a5,a4,a5	# _8, _9, tmp96
	lw	a4,0(a5)		# _10, *_9
# problem69.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	lw	a5,-28(s0)		# tmp98, smallestEven
	sext.w	a5,a5	# tmp99, tmp97
	bgt	a5,a4,.L4	#, tmp99, tmp100,
# problem69.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	lw	a5,-24(s0)		# tmp102, index
	sext.w	a4,a5	# tmp103, tmp101
	li	a5,-1		# tmp104,
	bne	a4,a5,.L3	#, tmp103, tmp104,
.L4:
# problem69.c:10:             smallestEven = arr[i];
	lw	a5,-20(s0)		# _11, i
	slli	a5,a5,2	#, _12, _11
	ld	a4,-40(s0)		# tmp105, arr
	add	a5,a4,a5	# _12, _13, tmp105
# problem69.c:10:             smallestEven = arr[i];
	lw	a5,0(a5)		# tmp106, *_13
	sw	a5,-28(s0)	# tmp106, smallestEven
# problem69.c:11:             index = i;
	lw	a5,-20(s0)		# tmp107, i
	sw	a5,-24(s0)	# tmp107, index
.L3:
# problem69.c:8:     for (int i = 0; i < length; ++i) {
	lw	a5,-20(s0)		# tmp110, i
	addiw	a5,a5,1	#, tmp108, tmp109
	sw	a5,-20(s0)	# tmp108, i
.L2:
# problem69.c:8:     for (int i = 0; i < length; ++i) {
	lw	a5,-20(s0)		# tmp112, i
	mv	a4,a5	# tmp111, tmp112
	lw	a5,-44(s0)		# tmp114, length
	sext.w	a4,a4	# tmp115, tmp111
	sext.w	a5,a5	# tmp116, tmp113
	blt	a4,a5,.L5	#, tmp115, tmp116,
# problem69.c:15:     if (index == -1) {
	lw	a5,-24(s0)		# tmp118, index
	sext.w	a4,a5	# tmp119, tmp117
	li	a5,-1		# tmp120,
	bne	a4,a5,.L6	#, tmp119, tmp120,
# problem69.c:16:         return NULL;
	li	a5,0		# _20,
	j	.L7		#
.L6:
# problem69.c:19:     output[0] = smallestEven;
	ld	a5,-56(s0)		# tmp121, output
	lw	a4,-28(s0)		# tmp122, smallestEven
	sw	a4,0(a5)	# tmp122, *output_27(D)
# problem69.c:20:     output[1] = index;
	ld	a5,-56(s0)		# tmp123, output
	addi	a5,a5,4	#, _14, tmp123
# problem69.c:20:     output[1] = index;
	lw	a4,-24(s0)		# tmp124, index
	sw	a4,0(a5)	# tmp124, *_14
# problem69.c:21:     return output;
	ld	a5,-56(s0)		# _20, output
.L7:
# problem69.c:22: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
	addi	sp,sp,-64	#,,
	sd	s0,56(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-40(s0)	# a, a
	sd	a1,-48(s0)	# b, b
	mv	a5,a2	# tmp82, a_length
	mv	a4,a3	# tmp84, b_length
	sw	a5,-52(s0)	# tmp83, a_length
	mv	a5,a4	# tmp85, tmp84
	sw	a5,-56(s0)	# tmp85, b_length
# problem69.c:31:     if (a_length != b_length) return 0;
	lw	a5,-52(s0)		# tmp87, a_length
	mv	a4,a5	# tmp86, tmp87
	lw	a5,-56(s0)		# tmp89, b_length
	sext.w	a4,a4	# tmp90, tmp86
	sext.w	a5,a5	# tmp91, tmp88
	beq	a4,a5,.L9	#, tmp90, tmp91,
# problem69.c:31:     if (a_length != b_length) return 0;
	li	a5,0		# _10,
	j	.L10		#
.L9:
# problem69.c:32:     for (int i = 0; i < a_length; ++i) {
	sw	zero,-20(s0)	#, i
# problem69.c:32:     for (int i = 0; i < a_length; ++i) {
	j	.L11		#
.L13:
# problem69.c:33:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp92, a
	add	a5,a4,a5	# _2, _3, tmp92
	lw	a3,0(a5)		# _4, *_3
# problem69.c:33:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-48(s0)		# tmp93, b
	add	a5,a4,a5	# _6, _7, tmp93
	lw	a5,0(a5)		# _8, *_7
# problem69.c:33:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp94, _4
	beq	a4,a5,.L12	#, tmp94, tmp95,
# problem69.c:33:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
	j	.L10		#
.L12:
# problem69.c:32:     for (int i = 0; i < a_length; ++i) {
	lw	a5,-20(s0)		# tmp98, i
	addiw	a5,a5,1	#, tmp96, tmp97
	sw	a5,-20(s0)	# tmp96, i
.L11:
# problem69.c:32:     for (int i = 0; i < a_length; ++i) {
	lw	a5,-20(s0)		# tmp100, i
	mv	a4,a5	# tmp99, tmp100
	lw	a5,-52(s0)		# tmp102, a_length
	sext.w	a4,a4	# tmp103, tmp99
	sext.w	a5,a5	# tmp104, tmp101
	blt	a4,a5,.L13	#, tmp103, tmp104,
# problem69.c:35:     return 1;
	li	a5,1		# _10,
.L10:
# problem69.c:36: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC5:
	.string	"problem69.c"
	.align	3
.LC6:
	.string	"issame(result, expect1, 2, 2)"
	.align	3
.LC7:
	.string	"issame(result, expect2, 2, 2)"
	.align	3
.LC8:
	.string	"result == NULL"
	.align	3
.LC9:
	.string	"issame(result, expect4, 2, 2)"
	.align	3
.LC10:
	.string	"issame(result, expect5, 2, 2)"
	.align	3
.LC11:
	.string	"issame(result, expect6, 2, 2)"
	.align	3
.LC12:
	.string	"issame(result, expect7, 2, 2)"
	.align	3
.LC0:
	.word	5
	.word	0
	.word	3
	.word	0
	.word	4
	.word	2
	.align	3
.LC1:
	.word	1
	.word	2
	.word	3
	.word	0
	.word	5
	.word	3
	.align	3
.LC2:
	.word	5
	.word	4
	.word	8
	.word	4
	.word	8
	.align	3
.LC3:
	.word	7
	.word	6
	.word	7
	.word	1
	.align	3
.LC4:
	.word	7
	.word	9
	.word	7
	.word	1
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-240	#,,
	sd	ra,232(sp)	#,
	sd	s0,224(sp)	#,
	addi	s0,sp,240	#,,
# problem69.c:38: int main() {
	la	a5,__stack_chk_guard		# tmp80,
	ld	a4, 0(a5)	# tmp148, __stack_chk_guard
	sd	a4, -24(s0)	# tmp148, D.2518
	li	a4, 0	# tmp148
# problem69.c:42:     int test1[] = {4, 2, 3};
	li	a5,4		# tmp81,
	sw	a5,-160(s0)	# tmp81, test1[0]
	li	a5,2		# tmp82,
	sw	a5,-156(s0)	# tmp82, test1[1]
	li	a5,3		# tmp83,
	sw	a5,-152(s0)	# tmp83, test1[2]
# problem69.c:43:     int expect1[] = {2, 1};
	li	a5,2		# tmp84,
	sw	a5,-208(s0)	# tmp84, expect1[0]
	li	a5,1		# tmp85,
	sw	a5,-204(s0)	# tmp85, expect1[1]
# problem69.c:44:     result = func0(test1, 3, output);
	addi	a4,s0,-216	#, tmp86,
	addi	a5,s0,-160	#, tmp87,
	mv	a2,a4	#, tmp86
	li	a1,3		#,
	mv	a0,a5	#, tmp87
	call	func0		#
	sd	a0,-232(s0)	#, result
# problem69.c:45:     assert(issame(result, expect1, 2, 2));
	addi	a5,s0,-208	#, tmp88,
	li	a3,2		#,
	li	a2,2		#,
	mv	a1,a5	#, tmp88
	ld	a0,-232(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp89,
	bne	a5,zero,.L15	#, _1,,
# problem69.c:45:     assert(issame(result, expect1, 2, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,45		#,
	lla	a1,.LC5	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L15:
# problem69.c:47:     int test2[] = {1, 2, 3};
	li	a5,1		# tmp90,
	sw	a5,-144(s0)	# tmp90, test2[0]
	li	a5,2		# tmp91,
	sw	a5,-140(s0)	# tmp91, test2[1]
	li	a5,3		# tmp92,
	sw	a5,-136(s0)	# tmp92, test2[2]
# problem69.c:48:     int expect2[] = {2, 1};
	li	a5,2		# tmp93,
	sw	a5,-200(s0)	# tmp93, expect2[0]
	li	a5,1		# tmp94,
	sw	a5,-196(s0)	# tmp94, expect2[1]
# problem69.c:49:     result = func0(test2, 3, output);
	addi	a4,s0,-216	#, tmp95,
	addi	a5,s0,-144	#, tmp96,
	mv	a2,a4	#, tmp95
	li	a1,3		#,
	mv	a0,a5	#, tmp96
	call	func0		#
	sd	a0,-232(s0)	#, result
# problem69.c:50:     assert(issame(result, expect2, 2, 2));
	addi	a5,s0,-200	#, tmp97,
	li	a3,2		#,
	li	a2,2		#,
	mv	a1,a5	#, tmp97
	ld	a0,-232(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp98,
	bne	a5,zero,.L16	#, _2,,
# problem69.c:50:     assert(issame(result, expect2, 2, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,50		#,
	lla	a1,.LC5	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L16:
# problem69.c:53:     result = func0(test3, 0, output);
	addi	a4,s0,-216	#, tmp99,
	addi	a5,s0,-224	#, tmp100,
	mv	a2,a4	#, tmp99
	li	a1,0		#,
	mv	a0,a5	#, tmp100
	call	func0		#
	sd	a0,-232(s0)	#, result
# problem69.c:54:     assert(result == NULL);
	ld	a5,-232(s0)		# tmp101, result
	beq	a5,zero,.L17	#, tmp101,,
# problem69.c:54:     assert(result == NULL);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,54		#,
	lla	a1,.LC5	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L17:
# problem69.c:56:     int test4[] = {5, 0, 3, 0, 4, 2};
	lla	a5,.LC0	# tmp102,
	ld	a4,0(a5)		# tmp103,
	sd	a4,-72(s0)	# tmp103, test4
	ld	a4,8(a5)		# tmp104,
	sd	a4,-64(s0)	# tmp104, test4
	ld	a5,16(a5)		# tmp105,
	sd	a5,-56(s0)	# tmp105, test4
# problem69.c:57:     int expect4[] = {0, 1};
	sw	zero,-192(s0)	#, expect4[0]
	li	a5,1		# tmp106,
	sw	a5,-188(s0)	# tmp106, expect4[1]
# problem69.c:58:     result = func0(test4, 6, output);
	addi	a4,s0,-216	#, tmp107,
	addi	a5,s0,-72	#, tmp108,
	mv	a2,a4	#, tmp107
	li	a1,6		#,
	mv	a0,a5	#, tmp108
	call	func0		#
	sd	a0,-232(s0)	#, result
# problem69.c:59:     assert(issame(result, expect4, 2, 2));
	addi	a5,s0,-192	#, tmp109,
	li	a3,2		#,
	li	a2,2		#,
	mv	a1,a5	#, tmp109
	ld	a0,-232(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp110,
	bne	a5,zero,.L18	#, _3,,
# problem69.c:59:     assert(issame(result, expect4, 2, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,59		#,
	lla	a1,.LC5	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L18:
# problem69.c:61:     int test5[] = {1, 2, 3, 0, 5, 3};
	lla	a5,.LC1	# tmp111,
	ld	a4,0(a5)		# tmp112,
	sd	a4,-48(s0)	# tmp112, test5
	ld	a4,8(a5)		# tmp113,
	sd	a4,-40(s0)	# tmp113, test5
	ld	a5,16(a5)		# tmp114,
	sd	a5,-32(s0)	# tmp114, test5
# problem69.c:62:     int expect5[] = {0, 3};
	sw	zero,-184(s0)	#, expect5[0]
	li	a5,3		# tmp115,
	sw	a5,-180(s0)	# tmp115, expect5[1]
# problem69.c:63:     result = func0(test5, 6, output);
	addi	a4,s0,-216	#, tmp116,
	addi	a5,s0,-48	#, tmp117,
	mv	a2,a4	#, tmp116
	li	a1,6		#,
	mv	a0,a5	#, tmp117
	call	func0		#
	sd	a0,-232(s0)	#, result
# problem69.c:64:     assert(issame(result, expect5, 2, 2));
	addi	a5,s0,-184	#, tmp118,
	li	a3,2		#,
	li	a2,2		#,
	mv	a1,a5	#, tmp118
	ld	a0,-232(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp119,
	bne	a5,zero,.L19	#, _4,,
# problem69.c:64:     assert(issame(result, expect5, 2, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,64		#,
	lla	a1,.LC5	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L19:
# problem69.c:66:     int test6[] = {5, 4, 8, 4, 8};
	lla	a5,.LC2	# tmp120,
	ld	a4,0(a5)		# tmp121,
	sd	a4,-96(s0)	# tmp121, test6
	ld	a4,8(a5)		# tmp122,
	sd	a4,-88(s0)	# tmp122, test6
	lw	a5,16(a5)		# tmp123,
	sw	a5,-80(s0)	# tmp123, test6
# problem69.c:67:     int expect6[] = {4, 1};
	li	a5,4		# tmp124,
	sw	a5,-176(s0)	# tmp124, expect6[0]
	li	a5,1		# tmp125,
	sw	a5,-172(s0)	# tmp125, expect6[1]
# problem69.c:68:     result = func0(test6, 5, output);
	addi	a4,s0,-216	#, tmp126,
	addi	a5,s0,-96	#, tmp127,
	mv	a2,a4	#, tmp126
	li	a1,5		#,
	mv	a0,a5	#, tmp127
	call	func0		#
	sd	a0,-232(s0)	#, result
# problem69.c:69:     assert(issame(result, expect6, 2, 2));
	addi	a5,s0,-176	#, tmp128,
	li	a3,2		#,
	li	a2,2		#,
	mv	a1,a5	#, tmp128
	ld	a0,-232(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp129,
	bne	a5,zero,.L20	#, _5,,
# problem69.c:69:     assert(issame(result, expect6, 2, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,69		#,
	lla	a1,.LC5	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L20:
# problem69.c:71:     int test7[] = {7, 6, 7, 1};
	lla	a5,.LC3	# tmp130,
	ld	a4,0(a5)		# tmp131,
	sd	a4,-128(s0)	# tmp131, test7
	ld	a5,8(a5)		# tmp132,
	sd	a5,-120(s0)	# tmp132, test7
# problem69.c:72:     int expect7[] = {6, 1};
	li	a5,6		# tmp133,
	sw	a5,-168(s0)	# tmp133, expect7[0]
	li	a5,1		# tmp134,
	sw	a5,-164(s0)	# tmp134, expect7[1]
# problem69.c:73:     result = func0(test7, 4, output);
	addi	a4,s0,-216	#, tmp135,
	addi	a5,s0,-128	#, tmp136,
	mv	a2,a4	#, tmp135
	li	a1,4		#,
	mv	a0,a5	#, tmp136
	call	func0		#
	sd	a0,-232(s0)	#, result
# problem69.c:74:     assert(issame(result, expect7, 2, 2));
	addi	a5,s0,-168	#, tmp137,
	li	a3,2		#,
	li	a2,2		#,
	mv	a1,a5	#, tmp137
	ld	a0,-232(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp138,
	bne	a5,zero,.L21	#, _6,,
# problem69.c:74:     assert(issame(result, expect7, 2, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,74		#,
	lla	a1,.LC5	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L21:
# problem69.c:76:     int test8[] = {7, 9, 7, 1};
	lla	a5,.LC4	# tmp139,
	ld	a4,0(a5)		# tmp140,
	sd	a4,-112(s0)	# tmp140, test8
	ld	a5,8(a5)		# tmp141,
	sd	a5,-104(s0)	# tmp141, test8
# problem69.c:77:     result = func0(test8, 4, output);
	addi	a4,s0,-216	#, tmp142,
	addi	a5,s0,-112	#, tmp143,
	mv	a2,a4	#, tmp142
	li	a1,4		#,
	mv	a0,a5	#, tmp143
	call	func0		#
	sd	a0,-232(s0)	#, result
# problem69.c:78:     assert(result == NULL);
	ld	a5,-232(s0)		# tmp144, result
	beq	a5,zero,.L22	#, tmp144,,
# problem69.c:78:     assert(result == NULL);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,78		#,
	lla	a1,.LC5	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L22:
# problem69.c:80:     return 0;
	li	a5,0		# _62,
# problem69.c:81: }
	mv	a4,a5	# <retval>, _62
	la	a5,__stack_chk_guard		# tmp146,
	ld	a3, -24(s0)	# tmp149, D.2518
	ld	a5, 0(a5)	# tmp147, __stack_chk_guard
	xor	a5, a3, a5	# tmp147, tmp149
	li	a3, 0	# tmp149
	beq	a5,zero,.L24	#, tmp147,,
	call	__stack_chk_fail@plt	#
.L24:
	mv	a0,a4	#, <retval>
	ld	ra,232(sp)		#,
	ld	s0,224(sp)		#,
	addi	sp,sp,240	#,,
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
