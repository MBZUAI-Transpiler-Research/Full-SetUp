	.file	"problem137.c"
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
	sd	a0,-40(s0)	# lst, lst
	mv	a5,a1	# tmp95, size
	sd	a2,-56(s0)	# result, result
	sw	a5,-44(s0)	# tmp96, size
# problem137.c:4:     int maxneg = 0;
	sw	zero,-28(s0)	#, maxneg
# problem137.c:5:     int minpos = 0;
	sw	zero,-24(s0)	#, minpos
# problem137.c:6:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# problem137.c:6:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L7:
# problem137.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp97, lst
	add	a5,a4,a5	# _2, _3, tmp97
	lw	a5,0(a5)		# _4, *_3
# problem137.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	bge	a5,zero,.L3	#, tmp98,,
# problem137.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	lw	a5,-28(s0)		# tmp100, maxneg
	sext.w	a5,a5	# tmp101, tmp99
	beq	a5,zero,.L4	#, tmp101,,
# problem137.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-40(s0)		# tmp102, lst
	add	a5,a4,a5	# _6, _7, tmp102
	lw	a4,0(a5)		# _8, *_7
# problem137.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	lw	a5,-28(s0)		# tmp104, maxneg
	sext.w	a5,a5	# tmp105, tmp103
	bge	a5,a4,.L3	#, tmp105, tmp106,
.L4:
# problem137.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	lw	a5,-20(s0)		# _9, i
	slli	a5,a5,2	#, _10, _9
	ld	a4,-40(s0)		# tmp107, lst
	add	a5,a4,a5	# _10, _11, tmp107
# problem137.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	lw	a5,0(a5)		# tmp108, *_11
	sw	a5,-28(s0)	# tmp108, maxneg
.L3:
# problem137.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	lw	a5,-20(s0)		# _12, i
	slli	a5,a5,2	#, _13, _12
	ld	a4,-40(s0)		# tmp109, lst
	add	a5,a4,a5	# _13, _14, tmp109
	lw	a5,0(a5)		# _15, *_14
# problem137.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	ble	a5,zero,.L5	#, tmp110,,
# problem137.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	lw	a5,-24(s0)		# tmp112, minpos
	sext.w	a5,a5	# tmp113, tmp111
	beq	a5,zero,.L6	#, tmp113,,
# problem137.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	lw	a5,-20(s0)		# _16, i
	slli	a5,a5,2	#, _17, _16
	ld	a4,-40(s0)		# tmp114, lst
	add	a5,a4,a5	# _17, _18, tmp114
	lw	a4,0(a5)		# _19, *_18
# problem137.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	lw	a5,-24(s0)		# tmp116, minpos
	sext.w	a5,a5	# tmp117, tmp115
	ble	a5,a4,.L5	#, tmp117, tmp118,
.L6:
# problem137.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	lw	a5,-20(s0)		# _20, i
	slli	a5,a5,2	#, _21, _20
	ld	a4,-40(s0)		# tmp119, lst
	add	a5,a4,a5	# _21, _22, tmp119
# problem137.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	lw	a5,0(a5)		# tmp120, *_22
	sw	a5,-24(s0)	# tmp120, minpos
.L5:
# problem137.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp123, i
	addiw	a5,a5,1	#, tmp121, tmp122
	sw	a5,-20(s0)	# tmp121, i
.L2:
# problem137.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp125, i
	mv	a4,a5	# tmp124, tmp125
	lw	a5,-44(s0)		# tmp127, size
	sext.w	a4,a4	# tmp128, tmp124
	sext.w	a5,a5	# tmp129, tmp126
	blt	a4,a5,.L7	#, tmp128, tmp129,
# problem137.c:10:     result[0] = maxneg;
	ld	a5,-56(s0)		# tmp130, result
	lw	a4,-28(s0)		# tmp131, maxneg
	sw	a4,0(a5)	# tmp131, *result_34(D)
# problem137.c:11:     result[1] = minpos;
	ld	a5,-56(s0)		# tmp132, result
	addi	a5,a5,4	#, _23, tmp132
# problem137.c:11:     result[1] = minpos;
	lw	a4,-24(s0)		# tmp133, minpos
	sw	a4,0(a5)	# tmp133, *_23
# problem137.c:12: }
	nop	
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
	addi	sp,sp,-32	#,,
	sd	s0,24(sp)	#,
	addi	s0,sp,32	#,,
	sd	a0,-24(s0)	# a, a
	sd	a1,-32(s0)	# b, b
# problem137.c:19:     return a[0] == b[0] && a[1] == b[1];
	ld	a5,-24(s0)		# tmp80, a
	lw	a4,0(a5)		# _1, *a_9(D)
# problem137.c:19:     return a[0] == b[0] && a[1] == b[1];
	ld	a5,-32(s0)		# tmp81, b
	lw	a5,0(a5)		# _2, *b_10(D)
# problem137.c:19:     return a[0] == b[0] && a[1] == b[1];
	bne	a4,a5,.L9	#, tmp82, tmp83,
# problem137.c:19:     return a[0] == b[0] && a[1] == b[1];
	ld	a5,-24(s0)		# tmp84, a
	addi	a5,a5,4	#, _3, tmp84
	lw	a4,0(a5)		# _4, *_3
# problem137.c:19:     return a[0] == b[0] && a[1] == b[1];
	ld	a5,-32(s0)		# tmp85, b
	addi	a5,a5,4	#, _5, tmp85
	lw	a5,0(a5)		# _6, *_5
# problem137.c:19:     return a[0] == b[0] && a[1] == b[1];
	bne	a4,a5,.L9	#, tmp86, tmp87,
# problem137.c:19:     return a[0] == b[0] && a[1] == b[1];
	li	a5,1		# iftmp.0_7,
	j	.L10		#
.L9:
# problem137.c:19:     return a[0] == b[0] && a[1] == b[1];
	li	a5,0		# iftmp.0_7,
.L10:
# problem137.c:20: }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC9:
	.string	"problem137.c"
	.align	3
.LC10:
	.string	"issame(result, (int[]){0, 1})"
	.align	3
.LC11:
	.string	"issame(result, (int[]){-2, 1})"
	.align	3
.LC12:
	.string	"issame(result, (int[]){-7, 2})"
	.align	3
.LC13:
	.string	"issame(result, (int[]){-9, 2})"
	.align	3
.LC14:
	.string	"issame(result, (int[]){0, 0})"
	.align	3
.LC15:
	.string	"issame(result, (int[]){-1, 0})"
	.align	3
.LC16:
	.string	"issame(result, (int[]){-3, 1})"
	.align	3
.LC0:
	.word	2
	.word	4
	.word	1
	.word	3
	.word	5
	.word	7
	.align	3
.LC1:
	.word	2
	.word	4
	.word	1
	.word	3
	.word	5
	.word	7
	.word	0
	.align	3
.LC2:
	.word	1
	.word	3
	.word	2
	.word	4
	.word	5
	.word	6
	.word	-2
	.align	3
.LC3:
	.word	4
	.word	5
	.word	3
	.word	6
	.word	2
	.word	7
	.word	-7
	.align	3
.LC4:
	.word	7
	.word	3
	.word	8
	.word	4
	.word	9
	.word	2
	.word	5
	.word	-9
	.align	3
.LC5:
	.word	-1
	.word	-3
	.word	-5
	.word	-6
	.align	3
.LC6:
	.word	-1
	.word	-3
	.word	-5
	.word	-6
	.word	0
	.align	3
.LC7:
	.word	-6
	.word	-4
	.word	-4
	.word	-3
	.word	1
	.align	3
.LC8:
	.word	-6
	.word	-4
	.word	-4
	.word	-3
	.word	-100
	.word	1
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-304	#,,
	sd	ra,296(sp)	#,
	sd	s0,288(sp)	#,
	addi	s0,sp,304	#,,
# problem137.c:22: int main() {
	la	a5,__stack_chk_guard		# tmp85,
	ld	a4, 0(a5)	# tmp197, __stack_chk_guard
	sd	a4, -24(s0)	# tmp197, D.2028
	li	a4, 0	# tmp197
# problem137.c:25:     func0((int[]){2, 4, 1, 3, 5, 7}, 6, result);
	lla	a5,.LC0	# tmp86,
	ld	a4,0(a5)		# tmp87,
	sd	a4,-200(s0)	# tmp87, D.1927
	ld	a4,8(a5)		# tmp88,
	sd	a4,-192(s0)	# tmp88, D.1927
	ld	a5,16(a5)		# tmp89,
	sd	a5,-184(s0)	# tmp89, D.1927
# problem137.c:25:     func0((int[]){2, 4, 1, 3, 5, 7}, 6, result);
	addi	a4,s0,-280	#, tmp90,
	addi	a5,s0,-200	#, tmp91,
	mv	a2,a4	#, tmp90
	li	a1,6		#,
	mv	a0,a5	#, tmp91
	call	func0		#
# problem137.c:26:     assert(issame(result, (int[]){0, 1}));
	sw	zero,-56(s0)	#, MEM[(int[2] *)_115][0]
	li	a5,1		# tmp92,
	sw	a5,-52(s0)	# tmp92, MEM[(int[2] *)_115][1]
	addi	a4,s0,-56	#, tmp93,
	addi	a5,s0,-280	#, tmp94,
	mv	a1,a4	#, tmp93
	mv	a0,a5	#, tmp94
	call	issame		#
	mv	a5,a0	# tmp95,
	bne	a5,zero,.L13	#, _1,,
# problem137.c:26:     assert(issame(result, (int[]){0, 1}));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC9	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L13:
# problem137.c:28:     func0((int[]){2, 4, 1, 3, 5, 7, 0}, 7, result);
	lla	a5,.LC1	# tmp96,
	ld	a2,0(a5)		# tmp97,
	ld	a3,8(a5)		# tmp98,
	ld	a4,16(a5)		# tmp99,
	sd	a2,-152(s0)	# tmp97, D.1931
	sd	a3,-144(s0)	# tmp98, D.1931
	sd	a4,-136(s0)	# tmp99, D.1931
	lw	a5,24(a5)		# tmp100,
	sw	a5,-128(s0)	# tmp100, D.1931
# problem137.c:28:     func0((int[]){2, 4, 1, 3, 5, 7, 0}, 7, result);
	addi	a4,s0,-280	#, tmp101,
	addi	a5,s0,-152	#, tmp102,
	mv	a2,a4	#, tmp101
	li	a1,7		#,
	mv	a0,a5	#, tmp102
	call	func0		#
# problem137.c:29:     assert(issame(result, (int[]){0, 1}));
	sw	zero,-56(s0)	#, MEM[(int[2] *)_115][0]
	li	a5,1		# tmp103,
	sw	a5,-52(s0)	# tmp103, MEM[(int[2] *)_115][1]
	addi	a4,s0,-56	#, tmp104,
	addi	a5,s0,-280	#, tmp105,
	mv	a1,a4	#, tmp104
	mv	a0,a5	#, tmp105
	call	issame		#
	mv	a5,a0	# tmp106,
	bne	a5,zero,.L14	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC9	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L14:
# problem137.c:31:     func0((int[]){1, 3, 2, 4, 5, 6, -2}, 7, result);
	lla	a5,.LC2	# tmp107,
	ld	a2,0(a5)		# tmp108,
	ld	a3,8(a5)		# tmp109,
	ld	a4,16(a5)		# tmp110,
	sd	a2,-120(s0)	# tmp108, D.1934
	sd	a3,-112(s0)	# tmp109, D.1934
	sd	a4,-104(s0)	# tmp110, D.1934
	lw	a5,24(a5)		# tmp111,
	sw	a5,-96(s0)	# tmp111, D.1934
# problem137.c:31:     func0((int[]){1, 3, 2, 4, 5, 6, -2}, 7, result);
	addi	a4,s0,-280	#, tmp112,
	addi	a5,s0,-120	#, tmp113,
	mv	a2,a4	#, tmp112
	li	a1,7		#,
	mv	a0,a5	#, tmp113
	call	func0		#
# problem137.c:32:     assert(issame(result, (int[]){-2, 1}));
	li	a5,-2		# tmp114,
	sw	a5,-56(s0)	# tmp114, MEM[(int[2] *)_115][0]
	li	a5,1		# tmp115,
	sw	a5,-52(s0)	# tmp115, MEM[(int[2] *)_115][1]
	addi	a4,s0,-56	#, tmp116,
	addi	a5,s0,-280	#, tmp117,
	mv	a1,a4	#, tmp116
	mv	a0,a5	#, tmp117
	call	issame		#
	mv	a5,a0	# tmp118,
	bne	a5,zero,.L15	#, _3,,
# problem137.c:32:     assert(issame(result, (int[]){-2, 1}));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC9	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L15:
# problem137.c:34:     func0((int[]){4, 5, 3, 6, 2, 7, -7}, 7, result);
	lla	a5,.LC3	# tmp119,
	ld	a2,0(a5)		# tmp120,
	ld	a3,8(a5)		# tmp121,
	ld	a4,16(a5)		# tmp122,
	sd	a2,-88(s0)	# tmp120, D.1937
	sd	a3,-80(s0)	# tmp121, D.1937
	sd	a4,-72(s0)	# tmp122, D.1937
	lw	a5,24(a5)		# tmp123,
	sw	a5,-64(s0)	# tmp123, D.1937
# problem137.c:34:     func0((int[]){4, 5, 3, 6, 2, 7, -7}, 7, result);
	addi	a4,s0,-280	#, tmp124,
	addi	a5,s0,-88	#, tmp125,
	mv	a2,a4	#, tmp124
	li	a1,7		#,
	mv	a0,a5	#, tmp125
	call	func0		#
# problem137.c:35:     assert(issame(result, (int[]){-7, 2}));
	li	a5,-7		# tmp126,
	sw	a5,-56(s0)	# tmp126, MEM[(int[2] *)_115][0]
	li	a5,2		# tmp127,
	sw	a5,-52(s0)	# tmp127, MEM[(int[2] *)_115][1]
	addi	a4,s0,-56	#, tmp128,
	addi	a5,s0,-280	#, tmp129,
	mv	a1,a4	#, tmp128
	mv	a0,a5	#, tmp129
	call	issame		#
	mv	a5,a0	# tmp130,
	bne	a5,zero,.L16	#, _4,,
# problem137.c:35:     assert(issame(result, (int[]){-7, 2}));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC9	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L16:
# problem137.c:37:     func0((int[]){7, 3, 8, 4, 9, 2, 5, -9}, 8, result);
	lla	a5,.LC4	# tmp131,
	ld	a2,0(a5)		# tmp132,
	ld	a3,8(a5)		# tmp133,
	ld	a4,16(a5)		# tmp134,
	ld	a5,24(a5)		# tmp135,
	sd	a2,-56(s0)	# tmp132, MEM[(int[8] *)_115]
	sd	a3,-48(s0)	# tmp133, MEM[(int[8] *)_115]
	sd	a4,-40(s0)	# tmp134, MEM[(int[8] *)_115]
	sd	a5,-32(s0)	# tmp135, MEM[(int[8] *)_115]
# problem137.c:37:     func0((int[]){7, 3, 8, 4, 9, 2, 5, -9}, 8, result);
	addi	a4,s0,-280	#, tmp136,
	addi	a5,s0,-56	#, tmp137,
	mv	a2,a4	#, tmp136
	li	a1,8		#,
	mv	a0,a5	#, tmp137
	call	func0		#
# problem137.c:38:     assert(issame(result, (int[]){-9, 2}));
	li	a5,-9		# tmp138,
	sw	a5,-176(s0)	# tmp138, MEM[(int[2] *)_116][0]
	li	a5,2		# tmp139,
	sw	a5,-172(s0)	# tmp139, MEM[(int[2] *)_116][1]
	addi	a4,s0,-176	#, tmp140,
	addi	a5,s0,-280	#, tmp141,
	mv	a1,a4	#, tmp140
	mv	a0,a5	#, tmp141
	call	issame		#
	mv	a5,a0	# tmp142,
	bne	a5,zero,.L17	#, _5,,
# problem137.c:38:     assert(issame(result, (int[]){-9, 2}));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,38		#,
	lla	a1,.LC9	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L17:
# problem137.c:40:     func0((int[]){}, 0, result);
	addi	a4,s0,-280	#, tmp143,
	addi	a5,s0,-296	#, tmp144,
	mv	a2,a4	#, tmp143
	li	a1,0		#,
	mv	a0,a5	#, tmp144
	call	func0		#
# problem137.c:41:     assert(issame(result, (int[]){0, 0}));
	sw	zero,-176(s0)	#, MEM[(int[2] *)_116][0]
	sw	zero,-172(s0)	#, MEM[(int[2] *)_116][1]
	addi	a4,s0,-176	#, tmp145,
	addi	a5,s0,-280	#, tmp146,
	mv	a1,a4	#, tmp145
	mv	a0,a5	#, tmp146
	call	issame		#
	mv	a5,a0	# tmp147,
	bne	a5,zero,.L18	#, _6,,
# problem137.c:41:     assert(issame(result, (int[]){0, 0}));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,41		#,
	lla	a1,.LC9	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L18:
# problem137.c:43:     func0((int[]){0}, 1, result);
	sw	zero,-288(s0)	#, D.1946[0]
# problem137.c:43:     func0((int[]){0}, 1, result);
	addi	a4,s0,-280	#, tmp148,
	addi	a5,s0,-288	#, tmp149,
	mv	a2,a4	#, tmp148
	li	a1,1		#,
	mv	a0,a5	#, tmp149
	call	func0		#
# problem137.c:44:     assert(issame(result, (int[]){0, 0}));
	sw	zero,-176(s0)	#, MEM[(int[2] *)_116][0]
	sw	zero,-172(s0)	#, MEM[(int[2] *)_116][1]
	addi	a4,s0,-176	#, tmp150,
	addi	a5,s0,-280	#, tmp151,
	mv	a1,a4	#, tmp150
	mv	a0,a5	#, tmp151
	call	issame		#
	mv	a5,a0	# tmp152,
	bne	a5,zero,.L19	#, _7,,
# problem137.c:44:     assert(issame(result, (int[]){0, 0}));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,44		#,
	lla	a1,.LC9	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L19:
# problem137.c:46:     func0((int[]){-1, -3, -5, -6}, 4, result);
	lla	a5,.LC5	# tmp153,
	ld	a4,0(a5)		# tmp154,
	sd	a4,-264(s0)	# tmp154, D.1949
	ld	a5,8(a5)		# tmp155,
	sd	a5,-256(s0)	# tmp155, D.1949
# problem137.c:46:     func0((int[]){-1, -3, -5, -6}, 4, result);
	addi	a4,s0,-280	#, tmp156,
	addi	a5,s0,-264	#, tmp157,
	mv	a2,a4	#, tmp156
	li	a1,4		#,
	mv	a0,a5	#, tmp157
	call	func0		#
# problem137.c:47:     assert(issame(result, (int[]){-1, 0}));
	li	a5,-1		# tmp158,
	sw	a5,-176(s0)	# tmp158, MEM[(int[2] *)_116][0]
	sw	zero,-172(s0)	#, MEM[(int[2] *)_116][1]
	addi	a4,s0,-176	#, tmp159,
	addi	a5,s0,-280	#, tmp160,
	mv	a1,a4	#, tmp159
	mv	a0,a5	#, tmp160
	call	issame		#
	mv	a5,a0	# tmp161,
	bne	a5,zero,.L20	#, _8,,
# problem137.c:47:     assert(issame(result, (int[]){-1, 0}));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,47		#,
	lla	a1,.LC9	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L20:
# problem137.c:49:     func0((int[]){-1, -3, -5, -6, 0}, 5, result);
	lla	a5,.LC6	# tmp162,
	ld	a4,0(a5)		# tmp163,
	sd	a4,-248(s0)	# tmp163, D.1952
	ld	a4,8(a5)		# tmp164,
	sd	a4,-240(s0)	# tmp164, D.1952
	lw	a5,16(a5)		# tmp165,
	sw	a5,-232(s0)	# tmp165, D.1952
# problem137.c:49:     func0((int[]){-1, -3, -5, -6, 0}, 5, result);
	addi	a4,s0,-280	#, tmp166,
	addi	a5,s0,-248	#, tmp167,
	mv	a2,a4	#, tmp166
	li	a1,5		#,
	mv	a0,a5	#, tmp167
	call	func0		#
# problem137.c:50:     assert(issame(result, (int[]){-1, 0}));
	li	a5,-1		# tmp168,
	sw	a5,-176(s0)	# tmp168, MEM[(int[2] *)_116][0]
	sw	zero,-172(s0)	#, MEM[(int[2] *)_116][1]
	addi	a4,s0,-176	#, tmp169,
	addi	a5,s0,-280	#, tmp170,
	mv	a1,a4	#, tmp169
	mv	a0,a5	#, tmp170
	call	issame		#
	mv	a5,a0	# tmp171,
	bne	a5,zero,.L21	#, _9,,
# problem137.c:50:     assert(issame(result, (int[]){-1, 0}));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,50		#,
	lla	a1,.LC9	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L21:
# problem137.c:52:     func0((int[]){-6, -4, -4, -3, 1}, 5, result);
	lla	a5,.LC7	# tmp172,
	ld	a4,0(a5)		# tmp173,
	sd	a4,-224(s0)	# tmp173, D.1955
	ld	a4,8(a5)		# tmp174,
	sd	a4,-216(s0)	# tmp174, D.1955
	lw	a5,16(a5)		# tmp175,
	sw	a5,-208(s0)	# tmp175, D.1955
# problem137.c:52:     func0((int[]){-6, -4, -4, -3, 1}, 5, result);
	addi	a4,s0,-280	#, tmp176,
	addi	a5,s0,-224	#, tmp177,
	mv	a2,a4	#, tmp176
	li	a1,5		#,
	mv	a0,a5	#, tmp177
	call	func0		#
# problem137.c:53:     assert(issame(result, (int[]){-3, 1}));
	li	a5,-3		# tmp178,
	sw	a5,-176(s0)	# tmp178, MEM[(int[2] *)_116][0]
	li	a5,1		# tmp179,
	sw	a5,-172(s0)	# tmp179, MEM[(int[2] *)_116][1]
	addi	a4,s0,-176	#, tmp180,
	addi	a5,s0,-280	#, tmp181,
	mv	a1,a4	#, tmp180
	mv	a0,a5	#, tmp181
	call	issame		#
	mv	a5,a0	# tmp182,
	bne	a5,zero,.L22	#, _10,,
# problem137.c:53:     assert(issame(result, (int[]){-3, 1}));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,53		#,
	lla	a1,.LC9	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L22:
# problem137.c:55:     func0((int[]){-6, -4, -4, -3, -100, 1}, 6, result);
	lla	a5,.LC8	# tmp183,
	ld	a4,0(a5)		# tmp184,
	sd	a4,-176(s0)	# tmp184, MEM[(int[6] *)_116]
	ld	a4,8(a5)		# tmp185,
	sd	a4,-168(s0)	# tmp185, MEM[(int[6] *)_116]
	ld	a5,16(a5)		# tmp186,
	sd	a5,-160(s0)	# tmp186, MEM[(int[6] *)_116]
# problem137.c:55:     func0((int[]){-6, -4, -4, -3, -100, 1}, 6, result);
	addi	a4,s0,-280	#, tmp187,
	addi	a5,s0,-176	#, tmp188,
	mv	a2,a4	#, tmp187
	li	a1,6		#,
	mv	a0,a5	#, tmp188
	call	func0		#
# problem137.c:56:     assert(issame(result, (int[]){-3, 1}));
	li	a5,-3		# tmp189,
	sw	a5,-272(s0)	# tmp189, D.1960[0]
	li	a5,1		# tmp190,
	sw	a5,-268(s0)	# tmp190, D.1960[1]
	addi	a4,s0,-272	#, tmp191,
	addi	a5,s0,-280	#, tmp192,
	mv	a1,a4	#, tmp191
	mv	a0,a5	#, tmp192
	call	issame		#
	mv	a5,a0	# tmp193,
	bne	a5,zero,.L23	#, _11,,
# problem137.c:56:     assert(issame(result, (int[]){-3, 1}));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,56		#,
	lla	a1,.LC9	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L23:
# problem137.c:58:     return 0;
	li	a5,0		# _90,
# problem137.c:59: }
	mv	a4,a5	# <retval>, _90
	la	a5,__stack_chk_guard		# tmp195,
	ld	a3, -24(s0)	# tmp198, D.2028
	ld	a5, 0(a5)	# tmp196, __stack_chk_guard
	xor	a5, a3, a5	# tmp196, tmp198
	li	a3, 0	# tmp198
	beq	a5,zero,.L25	#, tmp196,,
# problem137.c:59: }
	call	__stack_chk_fail@plt	#
.L25:
	mv	a0,a4	#, <retval>
	ld	ra,296(sp)		#,
	ld	s0,288(sp)		#,
	addi	sp,sp,304	#,,
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
