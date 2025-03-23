	.file	"problem143.c"
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
	sd	a0,-40(s0)	# lst, lst
	mv	a5,a1	# tmp104, size
	sw	a5,-44(s0)	# tmp105, size
# problem143.c:4:     int sum = 0;
	sw	zero,-24(s0)	#, sum
# problem143.c:5:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# problem143.c:5:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L6:
# problem143.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	lw	a5,-20(s0)		# tmp108, i
	mv	a4,a5	# tmp107, tmp108
	li	a5,3		# tmp110,
	remw	a5,a4,a5	# tmp110, tmp109, tmp107
	sext.w	a5,a5	# _1, tmp109
# problem143.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	bne	a5,zero,.L3	#, _1,,
# problem143.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	lw	a5,-20(s0)		# _2, i
	slli	a5,a5,2	#, _3, _2
	ld	a4,-40(s0)		# tmp111, lst
	add	a5,a4,a5	# _3, _4, tmp111
	lw	a4,0(a5)		# _5, *_4
# problem143.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	lw	a5,-20(s0)		# _6, i
	slli	a5,a5,2	#, _7, _6
	ld	a3,-40(s0)		# tmp112, lst
	add	a5,a3,a5	# _7, _8, tmp112
	lw	a5,0(a5)		# _9, *_8
# problem143.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	mulw	a5,a4,a5	# tmp113, _5, _9
	sext.w	a5,a5	# _10, tmp113
# problem143.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	lw	a4,-24(s0)		# tmp116, sum
	addw	a5,a4,a5	# _10, tmp114, tmp115
	sw	a5,-24(s0)	# tmp114, sum
	j	.L4		#
.L3:
# problem143.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	lw	a5,-20(s0)		# i.0_11, i
	andi	a5,a5,3	#, tmp118, tmp117
	sext.w	a5,a5	# _12, tmp118
# problem143.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	bne	a5,zero,.L5	#, _12,,
# problem143.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	lw	a5,-20(s0)		# _13, i
	slli	a5,a5,2	#, _14, _13
	ld	a4,-40(s0)		# tmp119, lst
	add	a5,a4,a5	# _14, _15, tmp119
	lw	a4,0(a5)		# _16, *_15
# problem143.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	lw	a5,-20(s0)		# _17, i
	slli	a5,a5,2	#, _18, _17
	ld	a3,-40(s0)		# tmp120, lst
	add	a5,a3,a5	# _18, _19, tmp120
	lw	a5,0(a5)		# _20, *_19
# problem143.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	mulw	a5,a4,a5	# tmp121, _16, _20
	sext.w	a4,a5	# _21, tmp121
# problem143.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	lw	a5,-20(s0)		# _22, i
	slli	a5,a5,2	#, _23, _22
	ld	a3,-40(s0)		# tmp122, lst
	add	a5,a3,a5	# _23, _24, tmp122
	lw	a5,0(a5)		# _25, *_24
# problem143.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	mulw	a5,a4,a5	# tmp123, _21, _25
	sext.w	a5,a5	# _26, tmp123
# problem143.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	lw	a4,-24(s0)		# tmp126, sum
	addw	a5,a4,a5	# _26, tmp124, tmp125
	sw	a5,-24(s0)	# tmp124, sum
	j	.L4		#
.L5:
# problem143.c:8:         else sum += lst[i];
	lw	a5,-20(s0)		# _27, i
	slli	a5,a5,2	#, _28, _27
	ld	a4,-40(s0)		# tmp127, lst
	add	a5,a4,a5	# _28, _29, tmp127
	lw	a5,0(a5)		# _30, *_29
# problem143.c:8:         else sum += lst[i];
	lw	a4,-24(s0)		# tmp130, sum
	addw	a5,a4,a5	# _30, tmp128, tmp129
	sw	a5,-24(s0)	# tmp128, sum
.L4:
# problem143.c:5:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp133, i
	addiw	a5,a5,1	#, tmp131, tmp132
	sw	a5,-20(s0)	# tmp131, i
.L2:
# problem143.c:5:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp135, i
	mv	a4,a5	# tmp134, tmp135
	lw	a5,-44(s0)		# tmp137, size
	sext.w	a4,a4	# tmp138, tmp134
	sext.w	a5,a5	# tmp139, tmp136
	blt	a4,a5,.L6	#, tmp138, tmp139,
# problem143.c:10:     return sum;
	lw	a5,-24(s0)		# _37, sum
# problem143.c:11: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC7:
	.string	"problem143.c"
	.align	3
.LC8:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == 6"
	.align	3
.LC9:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == 14"
	.align	3
.LC10:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == 0"
	.align	3
.LC11:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == 9"
	.align	3
.LC12:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == -3"
	.align	3
.LC13:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == -126"
	.align	3
.LC14:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == 3030"
	.align	3
.LC15:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == -14196"
	.align	3
.LC16:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == -1448"
	.align	3
.LC0:
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.align	3
.LC1:
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.align	3
.LC2:
	.word	-1
	.word	-5
	.word	2
	.word	-1
	.word	-5
	.align	3
.LC3:
	.word	-56
	.word	-99
	.word	1
	.word	0
	.word	-2
	.align	3
.LC4:
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.align	3
.LC5:
	.word	-16
	.word	-9
	.word	-2
	.word	36
	.word	36
	.word	26
	.word	-20
	.word	25
	.word	-40
	.word	20
	.word	-4
	.word	12
	.word	-26
	.word	35
	.word	37
	.align	3
.LC6:
	.word	-1
	.word	-3
	.word	17
	.word	-1
	.word	-15
	.word	13
	.word	-1
	.word	14
	.word	-14
	.word	-12
	.word	-5
	.word	14
	.word	-14
	.word	6
	.word	13
	.word	11
	.word	16
	.word	16
	.word	4
	.word	10
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-112	#,,
	sd	ra,104(sp)	#,
	sd	s0,96(sp)	#,
	addi	s0,sp,112	#,,
# problem143.c:17: int main() {
	la	a5,__stack_chk_guard		# tmp85,
	ld	a4, 0(a5)	# tmp181, __stack_chk_guard
	sd	a4, -24(s0)	# tmp181, D.1984
	li	a4, 0	# tmp181
# problem143.c:19:         int lst[] = {1, 2, 3};
	li	a5,1		# tmp86,
	sw	a5,-104(s0)	# tmp86, MEM[(int[3] *)_63][0]
	li	a5,2		# tmp87,
	sw	a5,-100(s0)	# tmp87, MEM[(int[3] *)_63][1]
	li	a5,3		# tmp88,
	sw	a5,-96(s0)	# tmp88, MEM[(int[3] *)_63][2]
# problem143.c:20:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 6);
	addi	a5,s0,-104	#, tmp89,
	li	a1,3		#,
	mv	a0,a5	#, tmp89
	call	func0		#
	mv	a5,a0	# tmp90,
	mv	a4,a5	# tmp91, _1
	li	a5,6		# tmp92,
	beq	a4,a5,.L9	#, tmp91, tmp92,
# problem143.c:20:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 6);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC7	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L9:
# problem143.c:23:         int lst[] = {1, 4, 9};
	li	a5,1		# tmp93,
	sw	a5,-104(s0)	# tmp93, MEM[(int[3] *)_63][0]
	li	a5,4		# tmp94,
	sw	a5,-100(s0)	# tmp94, MEM[(int[3] *)_63][1]
	li	a5,9		# tmp95,
	sw	a5,-96(s0)	# tmp95, MEM[(int[3] *)_63][2]
# problem143.c:24:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 14);
	addi	a5,s0,-104	#, tmp96,
	li	a1,3		#,
	mv	a0,a5	#, tmp96
	call	func0		#
	mv	a5,a0	# tmp97,
	mv	a4,a5	# tmp98, _2
	li	a5,14		# tmp99,
	beq	a4,a5,.L10	#, tmp98, tmp99,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC7	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L10:
# problem143.c:28:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 0);
	addi	a5,s0,-104	#, tmp100,
	li	a1,0		#,
	mv	a0,a5	#, tmp100
	call	func0		#
	mv	a5,a0	# tmp101,
	beq	a5,zero,.L11	#, _3,,
# problem143.c:28:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC7	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L11:
# problem143.c:31:         int lst[] = {1, 1, 1, 1, 1, 1, 1, 1, 1};
	lla	a5,.LC0	# tmp102,
	ld	a1,0(a5)		# tmp103,
	ld	a2,8(a5)		# tmp104,
	ld	a3,16(a5)		# tmp105,
	ld	a4,24(a5)		# tmp106,
	sd	a1,-104(s0)	# tmp103, MEM[(int[9] *)_63]
	sd	a2,-96(s0)	# tmp104, MEM[(int[9] *)_63]
	sd	a3,-88(s0)	# tmp105, MEM[(int[9] *)_63]
	sd	a4,-80(s0)	# tmp106, MEM[(int[9] *)_63]
	lw	a5,32(a5)		# tmp107,
	sw	a5,-72(s0)	# tmp107, MEM[(int[9] *)_63]
# problem143.c:32:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 9);
	addi	a5,s0,-104	#, tmp108,
	li	a1,9		#,
	mv	a0,a5	#, tmp108
	call	func0		#
	mv	a5,a0	# tmp109,
	mv	a4,a5	# tmp110, _4
	li	a5,9		# tmp111,
	beq	a4,a5,.L12	#, tmp110, tmp111,
# problem143.c:32:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 9);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC7	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L12:
# problem143.c:35:         int lst[] = {-1, -1, -1, -1, -1, -1, -1, -1, -1};
	lla	a5,.LC1	# tmp112,
	ld	a1,0(a5)		# tmp113,
	ld	a2,8(a5)		# tmp114,
	ld	a3,16(a5)		# tmp115,
	ld	a4,24(a5)		# tmp116,
	sd	a1,-104(s0)	# tmp113, MEM[(int[9] *)_63]
	sd	a2,-96(s0)	# tmp114, MEM[(int[9] *)_63]
	sd	a3,-88(s0)	# tmp115, MEM[(int[9] *)_63]
	sd	a4,-80(s0)	# tmp116, MEM[(int[9] *)_63]
	lw	a5,32(a5)		# tmp117,
	sw	a5,-72(s0)	# tmp117, MEM[(int[9] *)_63]
# problem143.c:36:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == -3);
	addi	a5,s0,-104	#, tmp118,
	li	a1,9		#,
	mv	a0,a5	#, tmp118
	call	func0		#
	mv	a5,a0	# tmp119,
	mv	a4,a5	# tmp120, _5
	li	a5,-3		# tmp121,
	beq	a4,a5,.L13	#, tmp120, tmp121,
# problem143.c:36:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == -3);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,36		#,
	lla	a1,.LC7	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L13:
# problem143.c:39:         int lst[] = {0};
	sw	zero,-104(s0)	#, MEM[(int[1] *)_63][0]
# problem143.c:40:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 0);
	addi	a5,s0,-104	#, tmp122,
	li	a1,1		#,
	mv	a0,a5	#, tmp122
	call	func0		#
	mv	a5,a0	# tmp123,
	beq	a5,zero,.L14	#, _6,,
# problem143.c:40:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,40		#,
	lla	a1,.LC7	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L14:
# problem143.c:43:         int lst[] = {-1, -5, 2, -1, -5};
	lla	a5,.LC2	# tmp124,
	ld	a4,0(a5)		# tmp125,
	sd	a4,-104(s0)	# tmp125, MEM[(int[5] *)_63]
	ld	a4,8(a5)		# tmp126,
	sd	a4,-96(s0)	# tmp126, MEM[(int[5] *)_63]
	lw	a5,16(a5)		# tmp127,
	sw	a5,-88(s0)	# tmp127, MEM[(int[5] *)_63]
# problem143.c:44:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == -126);
	addi	a5,s0,-104	#, tmp128,
	li	a1,5		#,
	mv	a0,a5	#, tmp128
	call	func0		#
	mv	a5,a0	# tmp129,
	mv	a4,a5	# tmp130, _7
	li	a5,-126		# tmp131,
	beq	a4,a5,.L15	#, tmp130, tmp131,
# problem143.c:44:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == -126);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,44		#,
	lla	a1,.LC7	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L15:
# problem143.c:47:         int lst[] = {-56, -99, 1, 0, -2};
	lla	a5,.LC3	# tmp132,
	ld	a4,0(a5)		# tmp133,
	sd	a4,-104(s0)	# tmp133, MEM[(int[5] *)_63]
	ld	a4,8(a5)		# tmp134,
	sd	a4,-96(s0)	# tmp134, MEM[(int[5] *)_63]
	lw	a5,16(a5)		# tmp135,
	sw	a5,-88(s0)	# tmp135, MEM[(int[5] *)_63]
# problem143.c:48:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 3030);
	addi	a5,s0,-104	#, tmp136,
	li	a1,5		#,
	mv	a0,a5	#, tmp136
	call	func0		#
	mv	a5,a0	# tmp137,
	mv	a4,a5	# tmp138, _8
	li	a5,4096		# tmp140,
	addi	a5,a5,-1066	#, tmp139, tmp140
	beq	a4,a5,.L16	#, tmp138, tmp139,
# problem143.c:48:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 3030);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,48		#,
	lla	a1,.LC7	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L16:
# problem143.c:51:         int lst[] = {-1, 0, 0, 0, 0, 0, 0, 0, -1};
	lla	a5,.LC4	# tmp141,
	ld	a1,0(a5)		# tmp142,
	ld	a2,8(a5)		# tmp143,
	ld	a3,16(a5)		# tmp144,
	ld	a4,24(a5)		# tmp145,
	sd	a1,-104(s0)	# tmp142, MEM[(int[9] *)_63]
	sd	a2,-96(s0)	# tmp143, MEM[(int[9] *)_63]
	sd	a3,-88(s0)	# tmp144, MEM[(int[9] *)_63]
	sd	a4,-80(s0)	# tmp145, MEM[(int[9] *)_63]
	lw	a5,32(a5)		# tmp146,
	sw	a5,-72(s0)	# tmp146, MEM[(int[9] *)_63]
# problem143.c:52:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 0);
	addi	a5,s0,-104	#, tmp147,
	li	a1,9		#,
	mv	a0,a5	#, tmp147
	call	func0		#
	mv	a5,a0	# tmp148,
	beq	a5,zero,.L17	#, _9,,
# problem143.c:52:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,52		#,
	lla	a1,.LC7	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L17:
# problem143.c:55:         int lst[] = {-16, -9, -2, 36, 36, 26, -20, 25, -40, 20, -4, 12, -26, 35, 37};
	lla	a5,.LC5	# tmp149,
	ld	a7,0(a5)		# tmp150,
	ld	a6,8(a5)		# tmp151,
	ld	a0,16(a5)		# tmp152,
	ld	a1,24(a5)		# tmp153,
	ld	a2,32(a5)		# tmp154,
	ld	a3,40(a5)		# tmp155,
	ld	a4,48(a5)		# tmp156,
	sd	a7,-104(s0)	# tmp150, MEM[(int[15] *)_63]
	sd	a6,-96(s0)	# tmp151, MEM[(int[15] *)_63]
	sd	a0,-88(s0)	# tmp152, MEM[(int[15] *)_63]
	sd	a1,-80(s0)	# tmp153, MEM[(int[15] *)_63]
	sd	a2,-72(s0)	# tmp154, MEM[(int[15] *)_63]
	sd	a3,-64(s0)	# tmp155, MEM[(int[15] *)_63]
	sd	a4,-56(s0)	# tmp156, MEM[(int[15] *)_63]
	lw	a5,56(a5)		# tmp157,
	sw	a5,-48(s0)	# tmp157, MEM[(int[15] *)_63]
# problem143.c:56:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == -14196);
	addi	a5,s0,-104	#, tmp158,
	li	a1,15		#,
	mv	a0,a5	#, tmp158
	call	func0		#
	mv	a5,a0	# tmp159,
	mv	a4,a5	# tmp160, _10
	li	a5,-12288		# tmp162,
	addi	a5,a5,-1908	#, tmp161, tmp162
	beq	a4,a5,.L18	#, tmp160, tmp161,
# problem143.c:56:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == -14196);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,56		#,
	lla	a1,.LC7	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L18:
# problem143.c:59:         int lst[] = {-1, -3, 17, -1, -15, 13, -1, 14, -14, -12, -5, 14, -14, 6, 13, 11, 16, 16, 4, 10};
	lla	a5,.LC6	# tmp163,
	ld	t3,0(a5)		# tmp164,
	ld	t1,8(a5)		# tmp165,
	ld	a7,16(a5)		# tmp166,
	ld	a6,24(a5)		# tmp167,
	ld	a0,32(a5)		# tmp168,
	ld	a1,40(a5)		# tmp169,
	ld	a2,48(a5)		# tmp170,
	ld	a3,56(a5)		# tmp171,
	ld	a4,64(a5)		# tmp172,
	ld	a5,72(a5)		# tmp173,
	sd	t3,-104(s0)	# tmp164, MEM[(int[20] *)_63]
	sd	t1,-96(s0)	# tmp165, MEM[(int[20] *)_63]
	sd	a7,-88(s0)	# tmp166, MEM[(int[20] *)_63]
	sd	a6,-80(s0)	# tmp167, MEM[(int[20] *)_63]
	sd	a0,-72(s0)	# tmp168, MEM[(int[20] *)_63]
	sd	a1,-64(s0)	# tmp169, MEM[(int[20] *)_63]
	sd	a2,-56(s0)	# tmp170, MEM[(int[20] *)_63]
	sd	a3,-48(s0)	# tmp171, MEM[(int[20] *)_63]
	sd	a4,-40(s0)	# tmp172, MEM[(int[20] *)_63]
	sd	a5,-32(s0)	# tmp173, MEM[(int[20] *)_63]
# problem143.c:60:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == -1448);
	addi	a5,s0,-104	#, tmp174,
	li	a1,20		#,
	mv	a0,a5	#, tmp174
	call	func0		#
	mv	a5,a0	# tmp175,
	mv	a4,a5	# tmp176, _11
	li	a5,-1448		# tmp177,
	beq	a4,a5,.L19	#, tmp176, tmp177,
# problem143.c:60:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == -1448);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,60		#,
	lla	a1,.LC7	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L19:
# problem143.c:63:     return 0;
	li	a5,0		# _61,
# problem143.c:64: }
	mv	a4,a5	# <retval>, _61
	la	a5,__stack_chk_guard		# tmp179,
	ld	a3, -24(s0)	# tmp182, D.1984
	ld	a5, 0(a5)	# tmp180, __stack_chk_guard
	xor	a5, a3, a5	# tmp180, tmp182
	li	a3, 0	# tmp182
	beq	a5,zero,.L21	#, tmp180,,
# problem143.c:64: }
	call	__stack_chk_fail@plt	#
.L21:
	mv	a0,a4	#, <retval>
	ld	ra,104(sp)		#,
	ld	s0,96(sp)		#,
	addi	sp,sp,112	#,,
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
