	.file	"problem153.c"
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
	sd	a0,-40(s0)	# game, game
	sd	a1,-48(s0)	# guess, guess
	sd	a2,-56(s0)	# out, out
	mv	a5,a3	# tmp85, length
	sw	a5,-60(s0)	# tmp86, length
# problem153.c:5:     for (int i = 0; i < length; i++) {
	sw	zero,-20(s0)	#, i
# problem153.c:5:     for (int i = 0; i < length; i++) {
	j	.L2		#
.L3:
# problem153.c:6:         out[i] = abs(game[i] - guess[i]);
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp87, game
	add	a5,a4,a5	# _2, _3, tmp87
	lw	a4,0(a5)		# _4, *_3
# problem153.c:6:         out[i] = abs(game[i] - guess[i]);
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a3,-48(s0)		# tmp88, guess
	add	a5,a3,a5	# _6, _7, tmp88
	lw	a5,0(a5)		# _8, *_7
# problem153.c:6:         out[i] = abs(game[i] - guess[i]);
	subw	a5,a4,a5	# tmp89, _4, _8
	sext.w	a4,a5	# _9, tmp89
# problem153.c:6:         out[i] = abs(game[i] - guess[i]);
	lw	a5,-20(s0)		# _10, i
	slli	a5,a5,2	#, _11, _10
	ld	a3,-56(s0)		# tmp90, out
	add	a3,a3,a5	# _11, _12, tmp90
# problem153.c:6:         out[i] = abs(game[i] - guess[i]);
	sraiw	a5,a4,31	#, tmp91, _9
	xor	a4,a4,a5	# tmp91, tmp92, _9
	subw	a5,a4,a5	# tmp93, tmp92, tmp91
	sext.w	a5,a5	# _13, tmp93
# problem153.c:6:         out[i] = abs(game[i] - guess[i]);
	sw	a5,0(a3)	# _13, *_12
# problem153.c:5:     for (int i = 0; i < length; i++) {
	lw	a5,-20(s0)		# tmp96, i
	addiw	a5,a5,1	#, tmp94, tmp95
	sw	a5,-20(s0)	# tmp94, i
.L2:
# problem153.c:5:     for (int i = 0; i < length; i++) {
	lw	a5,-20(s0)		# tmp98, i
	mv	a4,a5	# tmp97, tmp98
	lw	a5,-60(s0)		# tmp100, length
	sext.w	a4,a4	# tmp101, tmp97
	sext.w	a5,a5	# tmp102, tmp99
	blt	a4,a5,.L3	#, tmp101, tmp102,
# problem153.c:8: }
	nop	
	nop	
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
	mv	a5,a2	# tmp82, length
	sw	a5,-52(s0)	# tmp83, length
# problem153.c:16:     for (int i = 0; i < length; i++) {
	sw	zero,-20(s0)	#, i
# problem153.c:16:     for (int i = 0; i < length; i++) {
	j	.L5		#
.L8:
# problem153.c:17:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp84, a
	add	a5,a4,a5	# _2, _3, tmp84
	lw	a3,0(a5)		# _4, *_3
# problem153.c:17:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-48(s0)		# tmp85, b
	add	a5,a4,a5	# _6, _7, tmp85
	lw	a5,0(a5)		# _8, *_7
# problem153.c:17:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp86, _4
	beq	a4,a5,.L6	#, tmp86, tmp87,
# problem153.c:17:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
	j	.L7		#
.L6:
# problem153.c:16:     for (int i = 0; i < length; i++) {
	lw	a5,-20(s0)		# tmp90, i
	addiw	a5,a5,1	#, tmp88, tmp89
	sw	a5,-20(s0)	# tmp88, i
.L5:
# problem153.c:16:     for (int i = 0; i < length; i++) {
	lw	a5,-20(s0)		# tmp92, i
	mv	a4,a5	# tmp91, tmp92
	lw	a5,-52(s0)		# tmp94, length
	sext.w	a4,a4	# tmp95, tmp91
	sext.w	a5,a5	# tmp96, tmp93
	blt	a4,a5,.L8	#, tmp95, tmp96,
# problem153.c:19:     return 1;
	li	a5,1		# _10,
.L7:
# problem153.c:20: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC9:
	.string	"problem153.c"
	.align	3
.LC10:
	.string	"issame(result, (int[]){0,0,0,0,3,3}, 6)"
	.align	3
.LC11:
	.string	"issame(result, (int[]){4,4,1,0,0,6}, 6)"
	.align	3
.LC12:
	.string	"issame(result, (int[]){0,0,0,0,0,0}, 6)"
	.align	3
.LC13:
	.string	"issame(result, (int[]){2,4,6}, 3)"
	.align	3
.LC14:
	.string	"issame(result, (int[]){2,0,0,1}, 4)"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	1
	.align	3
.LC1:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	2
	.word	-2
	.align	3
.LC2:
	.word	0
	.word	0
	.word	0
	.word	0
	.word	3
	.word	3
	.align	3
.LC3:
	.word	0
	.word	5
	.word	0
	.word	0
	.word	0
	.word	4
	.align	3
.LC4:
	.word	4
	.word	1
	.word	1
	.word	0
	.word	0
	.word	-2
	.align	3
.LC5:
	.word	4
	.word	4
	.word	1
	.word	0
	.word	0
	.word	6
	.align	3
.LC6:
	.word	1
	.word	2
	.word	3
	.word	5
	.align	3
.LC7:
	.word	-1
	.word	2
	.word	3
	.word	4
	.align	3
.LC8:
	.word	2
	.word	0
	.word	0
	.word	1
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-336	#,,
	sd	ra,328(sp)	#,
	sd	s0,320(sp)	#,
	addi	s0,sp,336	#,,
# problem153.c:22: int main() {
	la	a5,__stack_chk_guard		# tmp80,
	ld	a4, 0(a5)	# tmp174, __stack_chk_guard
	sd	a4, -24(s0)	# tmp174, D.2699
	li	a4, 0	# tmp174
# problem153.c:25:     func0((int[]){1,2,3,4,5,1}, (int[]){1,2,3,4,2,-2}, result, 6);
	lla	a5,.LC0	# tmp81,
	ld	a4,0(a5)		# tmp82,
	sd	a4,-240(s0)	# tmp82, D.2635
	ld	a4,8(a5)		# tmp83,
	sd	a4,-232(s0)	# tmp83, D.2635
	ld	a5,16(a5)		# tmp84,
	sd	a5,-224(s0)	# tmp84, D.2635
# problem153.c:25:     func0((int[]){1,2,3,4,5,1}, (int[]){1,2,3,4,2,-2}, result, 6);
	lla	a5,.LC1	# tmp85,
	ld	a4,0(a5)		# tmp86,
	sd	a4,-216(s0)	# tmp86, D.2636
	ld	a4,8(a5)		# tmp87,
	sd	a4,-208(s0)	# tmp87, D.2636
	ld	a5,16(a5)		# tmp88,
	sd	a5,-200(s0)	# tmp88, D.2636
# problem153.c:25:     func0((int[]){1,2,3,4,5,1}, (int[]){1,2,3,4,2,-2}, result, 6);
	addi	a2,s0,-264	#, tmp89,
	addi	a4,s0,-216	#, tmp90,
	addi	a5,s0,-240	#, tmp91,
	li	a3,6		#,
	mv	a1,a4	#, tmp90
	mv	a0,a5	#, tmp91
	call	func0		#
# problem153.c:26:     assert(issame(result, (int[]){0,0,0,0,3,3}, 6));
	lla	a5,.LC2	# tmp92,
	ld	a4,0(a5)		# tmp93,
	sd	a4,-48(s0)	# tmp93, MEM[(int[6] *)_92]
	ld	a4,8(a5)		# tmp94,
	sd	a4,-40(s0)	# tmp94, MEM[(int[6] *)_92]
	ld	a5,16(a5)		# tmp95,
	sd	a5,-32(s0)	# tmp95, MEM[(int[6] *)_92]
	addi	a4,s0,-48	#, tmp96,
	addi	a5,s0,-264	#, tmp97,
	li	a2,6		#,
	mv	a1,a4	#, tmp96
	mv	a0,a5	#, tmp97
	call	issame		#
	mv	a5,a0	# tmp98,
	bne	a5,zero,.L10	#, _1,,
# problem153.c:26:     assert(issame(result, (int[]){0,0,0,0,3,3}, 6));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC9	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L10:
# problem153.c:28:     func0((int[]){0,5,0,0,0,4}, (int[]){4,1,1,0,0,-2}, result, 6);
	lla	a5,.LC3	# tmp99,
	ld	a4,0(a5)		# tmp100,
	sd	a4,-192(s0)	# tmp100, D.2640
	ld	a4,8(a5)		# tmp101,
	sd	a4,-184(s0)	# tmp101, D.2640
	ld	a5,16(a5)		# tmp102,
	sd	a5,-176(s0)	# tmp102, D.2640
# problem153.c:28:     func0((int[]){0,5,0,0,0,4}, (int[]){4,1,1,0,0,-2}, result, 6);
	lla	a5,.LC4	# tmp103,
	ld	a4,0(a5)		# tmp104,
	sd	a4,-168(s0)	# tmp104, D.2641
	ld	a4,8(a5)		# tmp105,
	sd	a4,-160(s0)	# tmp105, D.2641
	ld	a5,16(a5)		# tmp106,
	sd	a5,-152(s0)	# tmp106, D.2641
# problem153.c:28:     func0((int[]){0,5,0,0,0,4}, (int[]){4,1,1,0,0,-2}, result, 6);
	addi	a2,s0,-264	#, tmp107,
	addi	a4,s0,-168	#, tmp108,
	addi	a5,s0,-192	#, tmp109,
	li	a3,6		#,
	mv	a1,a4	#, tmp108
	mv	a0,a5	#, tmp109
	call	func0		#
# problem153.c:29:     assert(issame(result, (int[]){4,4,1,0,0,6}, 6));
	lla	a5,.LC5	# tmp110,
	ld	a4,0(a5)		# tmp111,
	sd	a4,-48(s0)	# tmp111, MEM[(int[6] *)_92]
	ld	a4,8(a5)		# tmp112,
	sd	a4,-40(s0)	# tmp112, MEM[(int[6] *)_92]
	ld	a5,16(a5)		# tmp113,
	sd	a5,-32(s0)	# tmp113, MEM[(int[6] *)_92]
	addi	a4,s0,-48	#, tmp114,
	addi	a5,s0,-264	#, tmp115,
	li	a2,6		#,
	mv	a1,a4	#, tmp114
	mv	a0,a5	#, tmp115
	call	issame		#
	mv	a5,a0	# tmp116,
	bne	a5,zero,.L11	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC9	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L11:
# problem153.c:31:     func0((int[]){1,2,3,4,5,1}, (int[]){1,2,3,4,2,-2}, result, 6);
	lla	a5,.LC0	# tmp117,
	ld	a4,0(a5)		# tmp118,
	sd	a4,-144(s0)	# tmp118, D.2644
	ld	a4,8(a5)		# tmp119,
	sd	a4,-136(s0)	# tmp119, D.2644
	ld	a5,16(a5)		# tmp120,
	sd	a5,-128(s0)	# tmp120, D.2644
# problem153.c:31:     func0((int[]){1,2,3,4,5,1}, (int[]){1,2,3,4,2,-2}, result, 6);
	lla	a5,.LC1	# tmp121,
	ld	a4,0(a5)		# tmp122,
	sd	a4,-120(s0)	# tmp122, D.2645
	ld	a4,8(a5)		# tmp123,
	sd	a4,-112(s0)	# tmp123, D.2645
	ld	a5,16(a5)		# tmp124,
	sd	a5,-104(s0)	# tmp124, D.2645
# problem153.c:31:     func0((int[]){1,2,3,4,5,1}, (int[]){1,2,3,4,2,-2}, result, 6);
	addi	a2,s0,-264	#, tmp125,
	addi	a4,s0,-120	#, tmp126,
	addi	a5,s0,-144	#, tmp127,
	li	a3,6		#,
	mv	a1,a4	#, tmp126
	mv	a0,a5	#, tmp127
	call	func0		#
# problem153.c:32:     assert(issame(result, (int[]){0,0,0,0,3,3}, 6));
	lla	a5,.LC2	# tmp128,
	ld	a4,0(a5)		# tmp129,
	sd	a4,-48(s0)	# tmp129, MEM[(int[6] *)_92]
	ld	a4,8(a5)		# tmp130,
	sd	a4,-40(s0)	# tmp130, MEM[(int[6] *)_92]
	ld	a5,16(a5)		# tmp131,
	sd	a5,-32(s0)	# tmp131, MEM[(int[6] *)_92]
	addi	a4,s0,-48	#, tmp132,
	addi	a5,s0,-264	#, tmp133,
	li	a2,6		#,
	mv	a1,a4	#, tmp132
	mv	a0,a5	#, tmp133
	call	issame		#
	mv	a5,a0	# tmp134,
	bne	a5,zero,.L12	#, _3,,
# problem153.c:32:     assert(issame(result, (int[]){0,0,0,0,3,3}, 6));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC9	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L12:
# problem153.c:34:     func0((int[]){0,0,0,0,0,0}, (int[]){0,0,0,0,0,0}, result, 6);
	sw	zero,-96(s0)	#, D.2648[0]
	sw	zero,-92(s0)	#, D.2648[1]
	sw	zero,-88(s0)	#, D.2648[2]
	sw	zero,-84(s0)	#, D.2648[3]
	sw	zero,-80(s0)	#, D.2648[4]
	sw	zero,-76(s0)	#, D.2648[5]
# problem153.c:34:     func0((int[]){0,0,0,0,0,0}, (int[]){0,0,0,0,0,0}, result, 6);
	sw	zero,-72(s0)	#, D.2649[0]
	sw	zero,-68(s0)	#, D.2649[1]
	sw	zero,-64(s0)	#, D.2649[2]
	sw	zero,-60(s0)	#, D.2649[3]
	sw	zero,-56(s0)	#, D.2649[4]
	sw	zero,-52(s0)	#, D.2649[5]
# problem153.c:34:     func0((int[]){0,0,0,0,0,0}, (int[]){0,0,0,0,0,0}, result, 6);
	addi	a2,s0,-264	#, tmp135,
	addi	a4,s0,-72	#, tmp136,
	addi	a5,s0,-96	#, tmp137,
	li	a3,6		#,
	mv	a1,a4	#, tmp136
	mv	a0,a5	#, tmp137
	call	func0		#
# problem153.c:35:     assert(issame(result, (int[]){0,0,0,0,0,0}, 6));
	sw	zero,-48(s0)	#, MEM[(int[6] *)_92][0]
	sw	zero,-44(s0)	#, MEM[(int[6] *)_92][1]
	sw	zero,-40(s0)	#, MEM[(int[6] *)_92][2]
	sw	zero,-36(s0)	#, MEM[(int[6] *)_92][3]
	sw	zero,-32(s0)	#, MEM[(int[6] *)_92][4]
	sw	zero,-28(s0)	#, MEM[(int[6] *)_92][5]
	addi	a4,s0,-48	#, tmp138,
	addi	a5,s0,-264	#, tmp139,
	li	a2,6		#,
	mv	a1,a4	#, tmp138
	mv	a0,a5	#, tmp139
	call	issame		#
	mv	a5,a0	# tmp140,
	bne	a5,zero,.L13	#, _4,,
# problem153.c:35:     assert(issame(result, (int[]){0,0,0,0,0,0}, 6));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC9	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L13:
# problem153.c:37:     func0((int[]){1,2,3}, (int[]){-1,-2,-3}, result, 3);
	li	a5,1		# tmp141,
	sw	a5,-328(s0)	# tmp141, D.2652[0]
	li	a5,2		# tmp142,
	sw	a5,-324(s0)	# tmp142, D.2652[1]
	li	a5,3		# tmp143,
	sw	a5,-320(s0)	# tmp143, D.2652[2]
# problem153.c:37:     func0((int[]){1,2,3}, (int[]){-1,-2,-3}, result, 3);
	li	a5,-1		# tmp144,
	sw	a5,-312(s0)	# tmp144, D.2653[0]
	li	a5,-2		# tmp145,
	sw	a5,-308(s0)	# tmp145, D.2653[1]
	li	a5,-3		# tmp146,
	sw	a5,-304(s0)	# tmp146, D.2653[2]
# problem153.c:37:     func0((int[]){1,2,3}, (int[]){-1,-2,-3}, result, 3);
	addi	a2,s0,-264	#, tmp147,
	addi	a4,s0,-312	#, tmp148,
	addi	a5,s0,-328	#, tmp149,
	li	a3,3		#,
	mv	a1,a4	#, tmp148
	mv	a0,a5	#, tmp149
	call	func0		#
# problem153.c:38:     assert(issame(result, (int[]){2,4,6}, 3));
	li	a5,2		# tmp150,
	sw	a5,-48(s0)	# tmp150, MEM[(int[3] *)_92][0]
	li	a5,4		# tmp151,
	sw	a5,-44(s0)	# tmp151, MEM[(int[3] *)_92][1]
	li	a5,6		# tmp152,
	sw	a5,-40(s0)	# tmp152, MEM[(int[3] *)_92][2]
	addi	a4,s0,-48	#, tmp153,
	addi	a5,s0,-264	#, tmp154,
	li	a2,3		#,
	mv	a1,a4	#, tmp153
	mv	a0,a5	#, tmp154
	call	issame		#
	mv	a5,a0	# tmp155,
	bne	a5,zero,.L14	#, _5,,
# problem153.c:38:     assert(issame(result, (int[]){2,4,6}, 3));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,38		#,
	lla	a1,.LC9	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L14:
# problem153.c:40:     func0((int[]){1,2,3,5}, (int[]){-1,2,3,4}, result, 4);
	lla	a5,.LC6	# tmp156,
	ld	a4,0(a5)		# tmp157,
	sd	a4,-296(s0)	# tmp157, D.2656
	ld	a5,8(a5)		# tmp158,
	sd	a5,-288(s0)	# tmp158, D.2656
# problem153.c:40:     func0((int[]){1,2,3,5}, (int[]){-1,2,3,4}, result, 4);
	lla	a5,.LC7	# tmp159,
	ld	a4,0(a5)		# tmp160,
	sd	a4,-280(s0)	# tmp160, D.2657
	ld	a5,8(a5)		# tmp161,
	sd	a5,-272(s0)	# tmp161, D.2657
# problem153.c:40:     func0((int[]){1,2,3,5}, (int[]){-1,2,3,4}, result, 4);
	addi	a2,s0,-264	#, tmp162,
	addi	a4,s0,-280	#, tmp163,
	addi	a5,s0,-296	#, tmp164,
	li	a3,4		#,
	mv	a1,a4	#, tmp163
	mv	a0,a5	#, tmp164
	call	func0		#
# problem153.c:41:     assert(issame(result, (int[]){2,0,0,1}, 4));
	lla	a5,.LC8	# tmp165,
	ld	a4,0(a5)		# tmp166,
	sd	a4,-48(s0)	# tmp166, MEM[(int[4] *)_92]
	ld	a5,8(a5)		# tmp167,
	sd	a5,-40(s0)	# tmp167, MEM[(int[4] *)_92]
	addi	a4,s0,-48	#, tmp168,
	addi	a5,s0,-264	#, tmp169,
	li	a2,4		#,
	mv	a1,a4	#, tmp168
	mv	a0,a5	#, tmp169
	call	issame		#
	mv	a5,a0	# tmp170,
	bne	a5,zero,.L15	#, _6,,
# problem153.c:41:     assert(issame(result, (int[]){2,0,0,1}, 4));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,41		#,
	lla	a1,.LC9	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L15:
# problem153.c:43:     return 0;
	li	a5,0		# _71,
# problem153.c:44: }
	mv	a4,a5	# <retval>, _71
	la	a5,__stack_chk_guard		# tmp172,
	ld	a3, -24(s0)	# tmp175, D.2699
	ld	a5, 0(a5)	# tmp173, __stack_chk_guard
	xor	a5, a3, a5	# tmp173, tmp175
	li	a3, 0	# tmp175
	beq	a5,zero,.L17	#, tmp173,,
# problem153.c:44: }
	call	__stack_chk_fail@plt	#
.L17:
	mv	a0,a4	#, <retval>
	ld	ra,328(sp)		#,
	ld	s0,320(sp)		#,
	addi	sp,sp,336	#,,
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
