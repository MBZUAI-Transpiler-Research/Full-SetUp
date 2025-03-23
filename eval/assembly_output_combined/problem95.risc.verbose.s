	.file	"problem95.c"
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
# problem95.c:4:     int largest = 0, sum = 0, num, temp;
	sw	zero,-40(s0)	#, largest
# problem95.c:4:     int largest = 0, sum = 0, num, temp;
	sw	zero,-36(s0)	#, sum
# problem95.c:6:     for (int i = 0; i < size; ++i) {
	sw	zero,-32(s0)	#, i
# problem95.c:6:     for (int i = 0; i < size; ++i) {
	j	.L2		#
.L9:
# problem95.c:7:         num = lst[i];
	lw	a5,-32(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-56(s0)		# tmp82, lst
	add	a5,a4,a5	# _2, _3, tmp82
# problem95.c:7:         num = lst[i];
	lw	a5,0(a5)		# tmp83, *_3
	sw	a5,-20(s0)	# tmp83, num
# problem95.c:8:         if (num > 1) {
	lw	a5,-20(s0)		# tmp85, num
	sext.w	a4,a5	# tmp86, tmp84
	li	a5,1		# tmp87,
	ble	a4,a5,.L3	#, tmp86, tmp87,
# problem95.c:9:             int prime = 1;
	li	a5,1		# tmp88,
	sw	a5,-28(s0)	# tmp88, prime
# problem95.c:10:             for (int j = 2; j * j <= num; ++j) {
	li	a5,2		# tmp89,
	sw	a5,-24(s0)	# tmp89, j
# problem95.c:10:             for (int j = 2; j * j <= num; ++j) {
	j	.L4		#
.L7:
# problem95.c:11:                 if (num % j == 0) {
	lw	a5,-20(s0)		# tmp92, num
	mv	a4,a5	# tmp91, tmp92
	lw	a5,-24(s0)		# tmp95, j
	remw	a5,a4,a5	# tmp94, tmp93, tmp91
	sext.w	a5,a5	# _4, tmp93
# problem95.c:11:                 if (num % j == 0) {
	bne	a5,zero,.L5	#, _4,,
# problem95.c:12:                     prime = 0;
	sw	zero,-28(s0)	#, prime
# problem95.c:13:                     break;
	j	.L6		#
.L5:
# problem95.c:10:             for (int j = 2; j * j <= num; ++j) {
	lw	a5,-24(s0)		# tmp98, j
	addiw	a5,a5,1	#, tmp96, tmp97
	sw	a5,-24(s0)	# tmp96, j
.L4:
# problem95.c:10:             for (int j = 2; j * j <= num; ++j) {
	lw	a5,-24(s0)		# tmp101, j
	mulw	a5,a5,a5	# tmp99, tmp100, tmp100
	sext.w	a4,a5	# _5, tmp99
# problem95.c:10:             for (int j = 2; j * j <= num; ++j) {
	lw	a5,-20(s0)		# tmp103, num
	sext.w	a5,a5	# tmp104, tmp102
	bge	a5,a4,.L7	#, tmp104, tmp105,
.L6:
# problem95.c:16:             if (prime) {
	lw	a5,-28(s0)		# tmp107, prime
	sext.w	a5,a5	# tmp108, tmp106
	beq	a5,zero,.L3	#, tmp108,,
# problem95.c:17:                 largest = num > largest ? num : largest;
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
# problem95.c:6:     for (int i = 0; i < size; ++i) {
	lw	a5,-32(s0)		# tmp117, i
	addiw	a5,a5,1	#, tmp115, tmp116
	sw	a5,-32(s0)	# tmp115, i
.L2:
# problem95.c:6:     for (int i = 0; i < size; ++i) {
	lw	a5,-32(s0)		# tmp119, i
	mv	a4,a5	# tmp118, tmp119
	lw	a5,-60(s0)		# tmp121, size
	sext.w	a4,a4	# tmp122, tmp118
	sext.w	a5,a5	# tmp123, tmp120
	blt	a4,a5,.L9	#, tmp122, tmp123,
# problem95.c:22:     while (largest > 0) {
	j	.L10		#
.L11:
# problem95.c:23:         sum += largest % 10;
	lw	a5,-40(s0)		# tmp126, largest
	mv	a4,a5	# tmp125, tmp126
	li	a5,10		# tmp128,
	remw	a5,a4,a5	# tmp128, tmp127, tmp125
	sext.w	a5,a5	# _6, tmp127
# problem95.c:23:         sum += largest % 10;
	lw	a4,-36(s0)		# tmp131, sum
	addw	a5,a4,a5	# _6, tmp129, tmp130
	sw	a5,-36(s0)	# tmp129, sum
# problem95.c:24:         largest /= 10;
	lw	a5,-40(s0)		# tmp134, largest
	mv	a4,a5	# tmp133, tmp134
	li	a5,10		# tmp136,
	divw	a5,a4,a5	# tmp136, tmp135, tmp133
	sw	a5,-40(s0)	# tmp135, largest
.L10:
# problem95.c:22:     while (largest > 0) {
	lw	a5,-40(s0)		# tmp138, largest
	sext.w	a5,a5	# tmp139, tmp137
	bgt	a5,zero,.L11	#, tmp139,,
# problem95.c:27:     return sum;
	lw	a5,-36(s0)		# _18, sum
# problem95.c:28: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC7:
	.string	"problem95.c"
	.align	3
.LC8:
	.string	"func0(lst1, sizeof(lst1)/sizeof(lst1[0])) == 10"
	.align	3
.LC9:
	.string	"func0(lst2, sizeof(lst2)/sizeof(lst2[0])) == 25"
	.align	3
.LC10:
	.string	"func0(lst3, sizeof(lst3)/sizeof(lst3[0])) == 13"
	.align	3
.LC11:
	.string	"func0(lst4, sizeof(lst4)/sizeof(lst4[0])) == 11"
	.align	3
.LC12:
	.string	"func0(lst5, sizeof(lst5)/sizeof(lst5[0])) == 3"
	.align	3
.LC13:
	.string	"func0(lst6, sizeof(lst6)/sizeof(lst6[0])) == 7"
	.align	3
.LC14:
	.string	"func0(lst7, sizeof(lst7)/sizeof(lst7[0])) == 19"
	.align	3
.LC15:
	.string	"func0(lst8, sizeof(lst8)/sizeof(lst8[0])) == 19"
	.align	3
.LC16:
	.string	"func0(lst9, sizeof(lst9)/sizeof(lst9[0])) == 10"
	.align	3
.LC0:
	.word	0
	.word	3
	.word	2
	.word	1
	.word	3
	.word	5
	.word	7
	.word	4
	.word	5
	.word	5
	.word	5
	.word	2
	.word	181
	.word	32
	.word	4
	.word	32
	.word	3
	.word	2
	.word	32
	.word	324
	.word	4
	.word	3
	.align	3
.LC1:
	.word	1
	.word	0
	.word	1
	.word	8
	.word	2
	.word	4597
	.word	2
	.word	1
	.word	3
	.word	40
	.word	1
	.word	2
	.word	1
	.word	2
	.word	4
	.word	2
	.word	5
	.word	1
	.align	3
.LC2:
	.word	1
	.word	3
	.word	1
	.word	32
	.word	5107
	.word	34
	.word	83278
	.word	109
	.word	163
	.word	23
	.word	2323
	.word	32
	.word	30
	.word	1
	.word	9
	.word	3
	.align	3
.LC3:
	.word	0
	.word	724
	.word	32
	.word	71
	.word	99
	.word	32
	.word	6
	.word	0
	.word	5
	.word	91
	.word	83
	.word	0
	.word	5
	.word	6
	.align	3
.LC4:
	.word	0
	.word	81
	.word	12
	.word	3
	.word	1
	.word	21
	.align	3
.LC5:
	.word	0
	.word	8
	.word	1
	.word	2
	.word	1
	.word	7
	.align	3
.LC6:
	.word	8191
	.word	123456
	.word	127
	.word	7
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-400	#,,
	sd	ra,392(sp)	#,
	sd	s0,384(sp)	#,
	addi	s0,sp,400	#,,
# problem95.c:34: int main() {
	la	a5,__stack_chk_guard		# tmp83,
	ld	a4, 0(a5)	# tmp178, __stack_chk_guard
	sd	a4, -24(s0)	# tmp178, D.1988
	li	a4, 0	# tmp178
# problem95.c:35:     int lst1[] = {0,3,2,1,3,5,7,4,5,5,5,2,181,32,4,32,3,2,32,324,4,3};
	lla	a5,.LC0	# tmp84,
	ld	t4,0(a5)		# tmp85,
	ld	t3,8(a5)		# tmp86,
	ld	t1,16(a5)		# tmp87,
	ld	a7,24(a5)		# tmp88,
	ld	a6,32(a5)		# tmp89,
	ld	a0,40(a5)		# tmp90,
	ld	a1,48(a5)		# tmp91,
	ld	a2,56(a5)		# tmp92,
	ld	a3,64(a5)		# tmp93,
	ld	a4,72(a5)		# tmp94,
	ld	a5,80(a5)		# tmp95,
	sd	t4,-112(s0)	# tmp85, lst1
	sd	t3,-104(s0)	# tmp86, lst1
	sd	t1,-96(s0)	# tmp87, lst1
	sd	a7,-88(s0)	# tmp88, lst1
	sd	a6,-80(s0)	# tmp89, lst1
	sd	a0,-72(s0)	# tmp90, lst1
	sd	a1,-64(s0)	# tmp91, lst1
	sd	a2,-56(s0)	# tmp92, lst1
	sd	a3,-48(s0)	# tmp93, lst1
	sd	a4,-40(s0)	# tmp94, lst1
	sd	a5,-32(s0)	# tmp95, lst1
# problem95.c:36:     assert(func0(lst1, sizeof(lst1)/sizeof(lst1[0])) == 10);
	addi	a5,s0,-112	#, tmp96,
	li	a1,22		#,
	mv	a0,a5	#, tmp96
	call	func0		#
	mv	a5,a0	# tmp97,
	mv	a4,a5	# tmp98, _1
	li	a5,10		# tmp99,
	beq	a4,a5,.L14	#, tmp98, tmp99,
# problem95.c:36:     assert(func0(lst1, sizeof(lst1)/sizeof(lst1[0])) == 10);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,36		#,
	lla	a1,.LC7	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L14:
# problem95.c:38:     int lst2[] = {1,0,1,8,2,4597,2,1,3,40,1,2,1,2,4,2,5,1};
	lla	a5,.LC1	# tmp100,
	ld	t1,0(a5)		# tmp101,
	ld	a7,8(a5)		# tmp102,
	ld	a6,16(a5)		# tmp103,
	ld	a0,24(a5)		# tmp104,
	ld	a1,32(a5)		# tmp105,
	ld	a2,40(a5)		# tmp106,
	ld	a3,48(a5)		# tmp107,
	ld	a4,56(a5)		# tmp108,
	ld	a5,64(a5)		# tmp109,
	sd	t1,-184(s0)	# tmp101, lst2
	sd	a7,-176(s0)	# tmp102, lst2
	sd	a6,-168(s0)	# tmp103, lst2
	sd	a0,-160(s0)	# tmp104, lst2
	sd	a1,-152(s0)	# tmp105, lst2
	sd	a2,-144(s0)	# tmp106, lst2
	sd	a3,-136(s0)	# tmp107, lst2
	sd	a4,-128(s0)	# tmp108, lst2
	sd	a5,-120(s0)	# tmp109, lst2
# problem95.c:39:     assert(func0(lst2, sizeof(lst2)/sizeof(lst2[0])) == 25);
	addi	a5,s0,-184	#, tmp110,
	li	a1,18		#,
	mv	a0,a5	#, tmp110
	call	func0		#
	mv	a5,a0	# tmp111,
	mv	a4,a5	# tmp112, _2
	li	a5,25		# tmp113,
	beq	a4,a5,.L15	#, tmp112, tmp113,
# problem95.c:39:     assert(func0(lst2, sizeof(lst2)/sizeof(lst2[0])) == 25);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,39		#,
	lla	a1,.LC7	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L15:
# problem95.c:41:     int lst3[] = {1,3,1,32,5107,34,83278,109,163,23,2323,32,30,1,9,3};
	lla	a5,.LC2	# tmp114,
	ld	a7,0(a5)		# tmp115,
	ld	a6,8(a5)		# tmp116,
	ld	a0,16(a5)		# tmp117,
	ld	a1,24(a5)		# tmp118,
	ld	a2,32(a5)		# tmp119,
	ld	a3,40(a5)		# tmp120,
	ld	a4,48(a5)		# tmp121,
	ld	a5,56(a5)		# tmp122,
	sd	a7,-248(s0)	# tmp115, lst3
	sd	a6,-240(s0)	# tmp116, lst3
	sd	a0,-232(s0)	# tmp117, lst3
	sd	a1,-224(s0)	# tmp118, lst3
	sd	a2,-216(s0)	# tmp119, lst3
	sd	a3,-208(s0)	# tmp120, lst3
	sd	a4,-200(s0)	# tmp121, lst3
	sd	a5,-192(s0)	# tmp122, lst3
# problem95.c:42:     assert(func0(lst3, sizeof(lst3)/sizeof(lst3[0])) == 13);
	addi	a5,s0,-248	#, tmp123,
	li	a1,16		#,
	mv	a0,a5	#, tmp123
	call	func0		#
	mv	a5,a0	# tmp124,
	mv	a4,a5	# tmp125, _3
	li	a5,13		# tmp126,
	beq	a4,a5,.L16	#, tmp125, tmp126,
# problem95.c:42:     assert(func0(lst3, sizeof(lst3)/sizeof(lst3[0])) == 13);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,42		#,
	lla	a1,.LC7	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L16:
# problem95.c:44:     int lst4[] = {0,724,32,71,99,32,6,0,5,91,83,0,5,6};
	lla	a5,.LC3	# tmp127,
	ld	a6,0(a5)		# tmp128,
	ld	a0,8(a5)		# tmp129,
	ld	a1,16(a5)		# tmp130,
	ld	a2,24(a5)		# tmp131,
	ld	a3,32(a5)		# tmp132,
	ld	a4,40(a5)		# tmp133,
	ld	a5,48(a5)		# tmp134,
	sd	a6,-304(s0)	# tmp128, lst4
	sd	a0,-296(s0)	# tmp129, lst4
	sd	a1,-288(s0)	# tmp130, lst4
	sd	a2,-280(s0)	# tmp131, lst4
	sd	a3,-272(s0)	# tmp132, lst4
	sd	a4,-264(s0)	# tmp133, lst4
	sd	a5,-256(s0)	# tmp134, lst4
# problem95.c:45:     assert(func0(lst4, sizeof(lst4)/sizeof(lst4[0])) == 11);
	addi	a5,s0,-304	#, tmp135,
	li	a1,14		#,
	mv	a0,a5	#, tmp135
	call	func0		#
	mv	a5,a0	# tmp136,
	mv	a4,a5	# tmp137, _4
	li	a5,11		# tmp138,
	beq	a4,a5,.L17	#, tmp137, tmp138,
# problem95.c:45:     assert(func0(lst4, sizeof(lst4)/sizeof(lst4[0])) == 11);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,45		#,
	lla	a1,.LC7	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L17:
# problem95.c:47:     int lst5[] = {0,81,12,3,1,21};
	lla	a5,.LC4	# tmp139,
	ld	a4,0(a5)		# tmp140,
	sd	a4,-352(s0)	# tmp140, lst5
	ld	a4,8(a5)		# tmp141,
	sd	a4,-344(s0)	# tmp141, lst5
	ld	a5,16(a5)		# tmp142,
	sd	a5,-336(s0)	# tmp142, lst5
# problem95.c:48:     assert(func0(lst5, sizeof(lst5)/sizeof(lst5[0])) == 3);
	addi	a5,s0,-352	#, tmp143,
	li	a1,6		#,
	mv	a0,a5	#, tmp143
	call	func0		#
	mv	a5,a0	# tmp144,
	mv	a4,a5	# tmp145, _5
	li	a5,3		# tmp146,
	beq	a4,a5,.L18	#, tmp145, tmp146,
# problem95.c:48:     assert(func0(lst5, sizeof(lst5)/sizeof(lst5[0])) == 3);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,48		#,
	lla	a1,.LC7	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L18:
# problem95.c:50:     int lst6[] = {0,8,1,2,1,7};
	lla	a5,.LC5	# tmp147,
	ld	a4,0(a5)		# tmp148,
	sd	a4,-328(s0)	# tmp148, lst6
	ld	a4,8(a5)		# tmp149,
	sd	a4,-320(s0)	# tmp149, lst6
	ld	a5,16(a5)		# tmp150,
	sd	a5,-312(s0)	# tmp150, lst6
# problem95.c:51:     assert(func0(lst6, sizeof(lst6)/sizeof(lst6[0])) == 7);
	addi	a5,s0,-328	#, tmp151,
	li	a1,6		#,
	mv	a0,a5	#, tmp151
	call	func0		#
	mv	a5,a0	# tmp152,
	mv	a4,a5	# tmp153, _6
	li	a5,7		# tmp154,
	beq	a4,a5,.L19	#, tmp153, tmp154,
# problem95.c:51:     assert(func0(lst6, sizeof(lst6)/sizeof(lst6[0])) == 7);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,51		#,
	lla	a1,.LC7	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L19:
# problem95.c:53:     int lst7[] = {8191};
	li	a5,8192		# tmp156,
	addi	a5,a5,-1	#, tmp155, tmp156
	sw	a5,-392(s0)	# tmp155, lst7[0]
# problem95.c:54:     assert(func0(lst7, sizeof(lst7)/sizeof(lst7[0])) == 19);
	addi	a5,s0,-392	#, tmp157,
	li	a1,1		#,
	mv	a0,a5	#, tmp157
	call	func0		#
	mv	a5,a0	# tmp158,
	mv	a4,a5	# tmp159, _7
	li	a5,19		# tmp160,
	beq	a4,a5,.L20	#, tmp159, tmp160,
# problem95.c:54:     assert(func0(lst7, sizeof(lst7)/sizeof(lst7[0])) == 19);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,54		#,
	lla	a1,.LC7	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L20:
# problem95.c:56:     int lst8[] = {8191, 123456, 127, 7};
	lla	a5,.LC6	# tmp161,
	ld	a4,0(a5)		# tmp162,
	sd	a4,-368(s0)	# tmp162, lst8
	ld	a5,8(a5)		# tmp163,
	sd	a5,-360(s0)	# tmp163, lst8
# problem95.c:57:     assert(func0(lst8, sizeof(lst8)/sizeof(lst8[0])) == 19);
	addi	a5,s0,-368	#, tmp164,
	li	a1,4		#,
	mv	a0,a5	#, tmp164
	call	func0		#
	mv	a5,a0	# tmp165,
	mv	a4,a5	# tmp166, _8
	li	a5,19		# tmp167,
	beq	a4,a5,.L21	#, tmp166, tmp167,
# problem95.c:57:     assert(func0(lst8, sizeof(lst8)/sizeof(lst8[0])) == 19);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,57		#,
	lla	a1,.LC7	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L21:
# problem95.c:59:     int lst9[] = {127, 97, 8192};
	li	a5,127		# tmp168,
	sw	a5,-384(s0)	# tmp168, lst9[0]
	li	a5,97		# tmp169,
	sw	a5,-380(s0)	# tmp169, lst9[1]
	li	a5,8192		# tmp170,
	sw	a5,-376(s0)	# tmp170, lst9[2]
# problem95.c:60:     assert(func0(lst9, sizeof(lst9)/sizeof(lst9[0])) == 10);
	addi	a5,s0,-384	#, tmp171,
	li	a1,3		#,
	mv	a0,a5	#, tmp171
	call	func0		#
	mv	a5,a0	# tmp172,
	mv	a4,a5	# tmp173, _9
	li	a5,10		# tmp174,
	beq	a4,a5,.L22	#, tmp173, tmp174,
# problem95.c:60:     assert(func0(lst9, sizeof(lst9)/sizeof(lst9[0])) == 10);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,60		#,
	lla	a1,.LC7	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L22:
# problem95.c:62:     return 0;
	li	a5,0		# _40,
# problem95.c:63: }
	mv	a4,a5	# <retval>, _40
	la	a5,__stack_chk_guard		# tmp176,
	ld	a3, -24(s0)	# tmp179, D.1988
	ld	a5, 0(a5)	# tmp177, __stack_chk_guard
	xor	a5, a3, a5	# tmp177, tmp179
	li	a3, 0	# tmp179
	beq	a5,zero,.L24	#, tmp177,,
	call	__stack_chk_fail@plt	#
.L24:
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
