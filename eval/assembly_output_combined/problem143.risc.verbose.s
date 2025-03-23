	.file	"problem143.c"
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
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# lst, lst
	mv	a5,a1	# tmp166, size
	sw	a5,-44(s0)	# tmp167, size
# problem143.c:4:     int sum = 0;
	sw	zero,-24(s0)	#, sum
# problem143.c:5:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# problem143.c:5:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L6:
# problem143.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	lw	a5,-20(s0)		# tmp170, i
	mv	a4,a5	# tmp169, tmp170
	li	a5,3		# tmp172,
	remw	a5,a4,a5	# tmp172, tmp171, tmp169
	sext.w	a5,a5	# _1, tmp171
# problem143.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	bne	a5,zero,.L3	#, _1,,
# problem143.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	lw	a5,-20(s0)		# _2, i
	slli	a5,a5,2	#, _3, _2
	ld	a4,-40(s0)		# tmp173, lst
	add	a5,a4,a5	# _3, _4, tmp173
	lw	a4,0(a5)		# _5, *_4
# problem143.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	lw	a5,-20(s0)		# _6, i
	slli	a5,a5,2	#, _7, _6
	ld	a3,-40(s0)		# tmp174, lst
	add	a5,a3,a5	# _7, _8, tmp174
	lw	a5,0(a5)		# _9, *_8
# problem143.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	mulw	a5,a4,a5	# tmp175, _5, _9
	sext.w	a5,a5	# _10, tmp175
# problem143.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	lw	a4,-24(s0)		# tmp178, sum
	addw	a5,a4,a5	# _10, tmp176, tmp177
	sw	a5,-24(s0)	# tmp176, sum
	j	.L4		#
.L3:
# problem143.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	lw	a5,-20(s0)		# i.0_11, i
	andi	a5,a5,3	#, tmp180, tmp179
	sext.w	a5,a5	# _12, tmp180
# problem143.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	bne	a5,zero,.L5	#, _12,,
# problem143.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	lw	a5,-20(s0)		# _13, i
	slli	a5,a5,2	#, _14, _13
	ld	a4,-40(s0)		# tmp181, lst
	add	a5,a4,a5	# _14, _15, tmp181
	lw	a4,0(a5)		# _16, *_15
# problem143.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	lw	a5,-20(s0)		# _17, i
	slli	a5,a5,2	#, _18, _17
	ld	a3,-40(s0)		# tmp182, lst
	add	a5,a3,a5	# _18, _19, tmp182
	lw	a5,0(a5)		# _20, *_19
# problem143.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	mulw	a5,a4,a5	# tmp183, _16, _20
	sext.w	a4,a5	# _21, tmp183
# problem143.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	lw	a5,-20(s0)		# _22, i
	slli	a5,a5,2	#, _23, _22
	ld	a3,-40(s0)		# tmp184, lst
	add	a5,a3,a5	# _23, _24, tmp184
	lw	a5,0(a5)		# _25, *_24
# problem143.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	mulw	a5,a4,a5	# tmp185, _21, _25
	sext.w	a5,a5	# _26, tmp185
# problem143.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	lw	a4,-24(s0)		# tmp188, sum
	addw	a5,a4,a5	# _26, tmp186, tmp187
	sw	a5,-24(s0)	# tmp186, sum
	j	.L4		#
.L5:
# problem143.c:8:         else sum += lst[i];
	lw	a5,-20(s0)		# _27, i
	slli	a5,a5,2	#, _28, _27
	ld	a4,-40(s0)		# tmp189, lst
	add	a5,a4,a5	# _28, _29, tmp189
	lw	a5,0(a5)		# _30, *_29
# problem143.c:8:         else sum += lst[i];
	lw	a4,-24(s0)		# tmp192, sum
	addw	a5,a4,a5	# _30, tmp190, tmp191
	sw	a5,-24(s0)	# tmp190, sum
.L4:
# problem143.c:5:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp195, i
	addiw	a5,a5,1	#, tmp193, tmp194
	sw	a5,-20(s0)	# tmp193, i
.L2:
# problem143.c:5:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp197, i
	mv	a4,a5	# tmp196, tmp197
	lw	a5,-44(s0)		# tmp199, size
	sext.w	a4,a4	# tmp200, tmp196
	sext.w	a5,a5	# tmp201, tmp198
	blt	a4,a5,.L6	#, tmp200, tmp201,
# problem143.c:10:     return sum;
	lw	a5,-24(s0)		# _37, sum
# problem143.c:11: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
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
.LFB1:
	.cfi_startproc
	addi	sp,sp,-112	#,,
	.cfi_def_cfa_offset 112
	sd	ra,104(sp)	#,
	sd	s0,96(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,112	#,,
	.cfi_def_cfa 8, 0
# problem143.c:17: int main() {
	la	a5,__stack_chk_guard		# tmp147,
	ld	a4, 0(a5)	# tmp243, __stack_chk_guard
	sd	a4, -24(s0)	# tmp243, D.2802
	li	a4, 0	# tmp243
# problem143.c:19:         int lst[] = {1, 2, 3};
	li	a5,1		# tmp148,
	sw	a5,-104(s0)	# tmp148, MEM[(int[3] *)_62][0]
	li	a5,2		# tmp149,
	sw	a5,-100(s0)	# tmp149, MEM[(int[3] *)_62][1]
	li	a5,3		# tmp150,
	sw	a5,-96(s0)	# tmp150, MEM[(int[3] *)_62][2]
# problem143.c:20:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 6);
	addi	a5,s0,-104	#, tmp151,
	li	a1,3		#,
	mv	a0,a5	#, tmp151
	call	func0		#
	mv	a5,a0	# tmp152,
# problem143.c:20:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 6);
	mv	a4,a5	# tmp153, _1
	li	a5,6		# tmp154,
	beq	a4,a5,.L9	#, tmp153, tmp154,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC7	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L9:
# problem143.c:23:         int lst[] = {1, 4, 9};
	li	a5,1		# tmp155,
	sw	a5,-104(s0)	# tmp155, MEM[(int[3] *)_62][0]
	li	a5,4		# tmp156,
	sw	a5,-100(s0)	# tmp156, MEM[(int[3] *)_62][1]
	li	a5,9		# tmp157,
	sw	a5,-96(s0)	# tmp157, MEM[(int[3] *)_62][2]
# problem143.c:24:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 14);
	addi	a5,s0,-104	#, tmp158,
	li	a1,3		#,
	mv	a0,a5	#, tmp158
	call	func0		#
	mv	a5,a0	# tmp159,
# problem143.c:24:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 14);
	mv	a4,a5	# tmp160, _2
	li	a5,14		# tmp161,
	beq	a4,a5,.L10	#, tmp160, tmp161,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC7	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L10:
# problem143.c:28:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 0);
	addi	a5,s0,-104	#, tmp162,
	li	a1,0		#,
	mv	a0,a5	#, tmp162
	call	func0		#
	mv	a5,a0	# tmp163,
# problem143.c:28:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 0);
	beq	a5,zero,.L11	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC7	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L11:
# problem143.c:31:         int lst[] = {1, 1, 1, 1, 1, 1, 1, 1, 1};
	lla	a5,.LC0	# tmp164,
	ld	a1,0(a5)		# tmp165,
	ld	a2,8(a5)		# tmp166,
	ld	a3,16(a5)		# tmp167,
	ld	a4,24(a5)		# tmp168,
	sd	a1,-104(s0)	# tmp165, MEM[(int[9] *)_62]
	sd	a2,-96(s0)	# tmp166, MEM[(int[9] *)_62]
	sd	a3,-88(s0)	# tmp167, MEM[(int[9] *)_62]
	sd	a4,-80(s0)	# tmp168, MEM[(int[9] *)_62]
	lw	a5,32(a5)		# tmp169,
	sw	a5,-72(s0)	# tmp169, MEM[(int[9] *)_62]
# problem143.c:32:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 9);
	addi	a5,s0,-104	#, tmp170,
	li	a1,9		#,
	mv	a0,a5	#, tmp170
	call	func0		#
	mv	a5,a0	# tmp171,
# problem143.c:32:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 9);
	mv	a4,a5	# tmp172, _4
	li	a5,9		# tmp173,
	beq	a4,a5,.L12	#, tmp172, tmp173,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC7	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L12:
# problem143.c:35:         int lst[] = {-1, -1, -1, -1, -1, -1, -1, -1, -1};
	lla	a5,.LC1	# tmp174,
	ld	a1,0(a5)		# tmp175,
	ld	a2,8(a5)		# tmp176,
	ld	a3,16(a5)		# tmp177,
	ld	a4,24(a5)		# tmp178,
	sd	a1,-104(s0)	# tmp175, MEM[(int[9] *)_62]
	sd	a2,-96(s0)	# tmp176, MEM[(int[9] *)_62]
	sd	a3,-88(s0)	# tmp177, MEM[(int[9] *)_62]
	sd	a4,-80(s0)	# tmp178, MEM[(int[9] *)_62]
	lw	a5,32(a5)		# tmp179,
	sw	a5,-72(s0)	# tmp179, MEM[(int[9] *)_62]
# problem143.c:36:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == -3);
	addi	a5,s0,-104	#, tmp180,
	li	a1,9		#,
	mv	a0,a5	#, tmp180
	call	func0		#
	mv	a5,a0	# tmp181,
# problem143.c:36:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == -3);
	mv	a4,a5	# tmp182, _5
	li	a5,-3		# tmp183,
	beq	a4,a5,.L13	#, tmp182, tmp183,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,36		#,
	lla	a1,.LC7	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L13:
# problem143.c:39:         int lst[] = {0};
	sw	zero,-104(s0)	#, MEM[(int[1] *)_62][0]
# problem143.c:40:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 0);
	addi	a5,s0,-104	#, tmp184,
	li	a1,1		#,
	mv	a0,a5	#, tmp184
	call	func0		#
	mv	a5,a0	# tmp185,
# problem143.c:40:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 0);
	beq	a5,zero,.L14	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,40		#,
	lla	a1,.LC7	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L14:
# problem143.c:43:         int lst[] = {-1, -5, 2, -1, -5};
	lla	a5,.LC2	# tmp186,
	ld	a4,0(a5)		# tmp187,
	sd	a4,-104(s0)	# tmp187, MEM[(int[5] *)_62]
	ld	a4,8(a5)		# tmp188,
	sd	a4,-96(s0)	# tmp188, MEM[(int[5] *)_62]
	lw	a5,16(a5)		# tmp189,
	sw	a5,-88(s0)	# tmp189, MEM[(int[5] *)_62]
# problem143.c:44:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == -126);
	addi	a5,s0,-104	#, tmp190,
	li	a1,5		#,
	mv	a0,a5	#, tmp190
	call	func0		#
	mv	a5,a0	# tmp191,
# problem143.c:44:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == -126);
	mv	a4,a5	# tmp192, _7
	li	a5,-126		# tmp193,
	beq	a4,a5,.L15	#, tmp192, tmp193,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,44		#,
	lla	a1,.LC7	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L15:
# problem143.c:47:         int lst[] = {-56, -99, 1, 0, -2};
	lla	a5,.LC3	# tmp194,
	ld	a4,0(a5)		# tmp195,
	sd	a4,-104(s0)	# tmp195, MEM[(int[5] *)_62]
	ld	a4,8(a5)		# tmp196,
	sd	a4,-96(s0)	# tmp196, MEM[(int[5] *)_62]
	lw	a5,16(a5)		# tmp197,
	sw	a5,-88(s0)	# tmp197, MEM[(int[5] *)_62]
# problem143.c:48:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 3030);
	addi	a5,s0,-104	#, tmp198,
	li	a1,5		#,
	mv	a0,a5	#, tmp198
	call	func0		#
	mv	a5,a0	# tmp199,
# problem143.c:48:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 3030);
	mv	a4,a5	# tmp200, _8
	li	a5,4096		# tmp202,
	addi	a5,a5,-1066	#, tmp201, tmp202
	beq	a4,a5,.L16	#, tmp200, tmp201,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,48		#,
	lla	a1,.LC7	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L16:
# problem143.c:51:         int lst[] = {-1, 0, 0, 0, 0, 0, 0, 0, -1};
	lla	a5,.LC4	# tmp203,
	ld	a1,0(a5)		# tmp204,
	ld	a2,8(a5)		# tmp205,
	ld	a3,16(a5)		# tmp206,
	ld	a4,24(a5)		# tmp207,
	sd	a1,-104(s0)	# tmp204, MEM[(int[9] *)_62]
	sd	a2,-96(s0)	# tmp205, MEM[(int[9] *)_62]
	sd	a3,-88(s0)	# tmp206, MEM[(int[9] *)_62]
	sd	a4,-80(s0)	# tmp207, MEM[(int[9] *)_62]
	lw	a5,32(a5)		# tmp208,
	sw	a5,-72(s0)	# tmp208, MEM[(int[9] *)_62]
# problem143.c:52:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 0);
	addi	a5,s0,-104	#, tmp209,
	li	a1,9		#,
	mv	a0,a5	#, tmp209
	call	func0		#
	mv	a5,a0	# tmp210,
# problem143.c:52:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 0);
	beq	a5,zero,.L17	#, _9,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,52		#,
	lla	a1,.LC7	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L17:
# problem143.c:55:         int lst[] = {-16, -9, -2, 36, 36, 26, -20, 25, -40, 20, -4, 12, -26, 35, 37};
	lla	a5,.LC5	# tmp211,
	ld	a7,0(a5)		# tmp212,
	ld	a6,8(a5)		# tmp213,
	ld	a0,16(a5)		# tmp214,
	ld	a1,24(a5)		# tmp215,
	ld	a2,32(a5)		# tmp216,
	ld	a3,40(a5)		# tmp217,
	ld	a4,48(a5)		# tmp218,
	sd	a7,-104(s0)	# tmp212, MEM[(int[15] *)_62]
	sd	a6,-96(s0)	# tmp213, MEM[(int[15] *)_62]
	sd	a0,-88(s0)	# tmp214, MEM[(int[15] *)_62]
	sd	a1,-80(s0)	# tmp215, MEM[(int[15] *)_62]
	sd	a2,-72(s0)	# tmp216, MEM[(int[15] *)_62]
	sd	a3,-64(s0)	# tmp217, MEM[(int[15] *)_62]
	sd	a4,-56(s0)	# tmp218, MEM[(int[15] *)_62]
	lw	a5,56(a5)		# tmp219,
	sw	a5,-48(s0)	# tmp219, MEM[(int[15] *)_62]
# problem143.c:56:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == -14196);
	addi	a5,s0,-104	#, tmp220,
	li	a1,15		#,
	mv	a0,a5	#, tmp220
	call	func0		#
	mv	a5,a0	# tmp221,
# problem143.c:56:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == -14196);
	mv	a4,a5	# tmp222, _10
	li	a5,-12288		# tmp224,
	addi	a5,a5,-1908	#, tmp223, tmp224
	beq	a4,a5,.L18	#, tmp222, tmp223,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,56		#,
	lla	a1,.LC7	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L18:
# problem143.c:59:         int lst[] = {-1, -3, 17, -1, -15, 13, -1, 14, -14, -12, -5, 14, -14, 6, 13, 11, 16, 16, 4, 10};
	lla	a5,.LC6	# tmp225,
	ld	t3,0(a5)		# tmp226,
	ld	t1,8(a5)		# tmp227,
	ld	a7,16(a5)		# tmp228,
	ld	a6,24(a5)		# tmp229,
	ld	a0,32(a5)		# tmp230,
	ld	a1,40(a5)		# tmp231,
	ld	a2,48(a5)		# tmp232,
	ld	a3,56(a5)		# tmp233,
	ld	a4,64(a5)		# tmp234,
	ld	a5,72(a5)		# tmp235,
	sd	t3,-104(s0)	# tmp226, MEM[(int[20] *)_62]
	sd	t1,-96(s0)	# tmp227, MEM[(int[20] *)_62]
	sd	a7,-88(s0)	# tmp228, MEM[(int[20] *)_62]
	sd	a6,-80(s0)	# tmp229, MEM[(int[20] *)_62]
	sd	a0,-72(s0)	# tmp230, MEM[(int[20] *)_62]
	sd	a1,-64(s0)	# tmp231, MEM[(int[20] *)_62]
	sd	a2,-56(s0)	# tmp232, MEM[(int[20] *)_62]
	sd	a3,-48(s0)	# tmp233, MEM[(int[20] *)_62]
	sd	a4,-40(s0)	# tmp234, MEM[(int[20] *)_62]
	sd	a5,-32(s0)	# tmp235, MEM[(int[20] *)_62]
# problem143.c:60:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == -1448);
	addi	a5,s0,-104	#, tmp236,
	li	a1,20		#,
	mv	a0,a5	#, tmp236
	call	func0		#
	mv	a5,a0	# tmp237,
# problem143.c:60:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == -1448);
	mv	a4,a5	# tmp238, _11
	li	a5,-1448		# tmp239,
	beq	a4,a5,.L19	#, tmp238, tmp239,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,60		#,
	lla	a1,.LC7	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L19:
# problem143.c:63:     return 0;
	li	a5,0		# _60,
# problem143.c:64: }
	mv	a4,a5	# <retval>, _60
	la	a5,__stack_chk_guard		# tmp241,
	ld	a3, -24(s0)	# tmp244, D.2802
	ld	a5, 0(a5)	# tmp242, __stack_chk_guard
	xor	a5, a3, a5	# tmp242, tmp244
	li	a3, 0	# tmp244
	beq	a5,zero,.L21	#, tmp242,,
	call	__stack_chk_fail@plt	#
.L21:
	mv	a0,a4	#, <retval>
	ld	ra,104(sp)		#,
	.cfi_restore 1
	ld	s0,96(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	addi	sp,sp,112	#,,
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
