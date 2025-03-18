	.file	"problem153.c"
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
.LFB6:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# game, game
	sd	a1,-48(s0)	# guess, guess
	sd	a2,-56(s0)	# out, out
	mv	a5,a3	# tmp147, length
	sw	a5,-60(s0)	# tmp148, length
# problem153.c:5:     for (int i = 0; i < length; i++) {
	sw	zero,-20(s0)	#, i
# problem153.c:5:     for (int i = 0; i < length; i++) {
	j	.L2		#
.L3:
# problem153.c:6:         out[i] = abs(game[i] - guess[i]);
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp149, game
	add	a5,a4,a5	# _2, _3, tmp149
	lw	a4,0(a5)		# _4, *_3
# problem153.c:6:         out[i] = abs(game[i] - guess[i]);
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a3,-48(s0)		# tmp150, guess
	add	a5,a3,a5	# _6, _7, tmp150
	lw	a5,0(a5)		# _8, *_7
# problem153.c:6:         out[i] = abs(game[i] - guess[i]);
	subw	a5,a4,a5	# tmp151, _4, _8
	sext.w	a4,a5	# _9, tmp151
# problem153.c:6:         out[i] = abs(game[i] - guess[i]);
	lw	a5,-20(s0)		# _10, i
	slli	a5,a5,2	#, _11, _10
	ld	a3,-56(s0)		# tmp152, out
	add	a3,a3,a5	# _11, _12, tmp152
# problem153.c:6:         out[i] = abs(game[i] - guess[i]);
	sraiw	a5,a4,31	#, tmp153, _9
	xor	a4,a4,a5	# tmp153, tmp154, _9
	subw	a5,a4,a5	# tmp155, tmp154, tmp153
	sext.w	a5,a5	# _13, tmp155
# problem153.c:6:         out[i] = abs(game[i] - guess[i]);
	sw	a5,0(a3)	# _13, *_12
# problem153.c:5:     for (int i = 0; i < length; i++) {
	lw	a5,-20(s0)		# tmp158, i
	addiw	a5,a5,1	#, tmp156, tmp157
	sw	a5,-20(s0)	# tmp156, i
.L2:
# problem153.c:5:     for (int i = 0; i < length; i++) {
	lw	a5,-20(s0)		# tmp160, i
	mv	a4,a5	# tmp159, tmp160
	lw	a5,-60(s0)		# tmp162, length
	sext.w	a4,a4	# tmp163, tmp159
	sext.w	a5,a5	# tmp164, tmp161
	blt	a4,a5,.L3	#, tmp163, tmp164,
# problem153.c:8: }
	nop	
	nop	
	ld	s0,56(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# a, a
	sd	a1,-48(s0)	# b, b
	mv	a5,a2	# tmp144, length
	sw	a5,-52(s0)	# tmp145, length
# problem153.c:16:     for (int i = 0; i < length; i++) {
	sw	zero,-20(s0)	#, i
# problem153.c:16:     for (int i = 0; i < length; i++) {
	j	.L5		#
.L8:
# problem153.c:17:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp146, a
	add	a5,a4,a5	# _2, _3, tmp146
	lw	a3,0(a5)		# _4, *_3
# problem153.c:17:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-48(s0)		# tmp147, b
	add	a5,a4,a5	# _6, _7, tmp147
	lw	a5,0(a5)		# _8, *_7
# problem153.c:17:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp148, _4
	beq	a4,a5,.L6	#, tmp148, tmp149,
# problem153.c:17:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
# problem153.c:17:         if (a[i] != b[i]) return 0;
	j	.L7		#
.L6:
# problem153.c:16:     for (int i = 0; i < length; i++) {
	lw	a5,-20(s0)		# tmp152, i
	addiw	a5,a5,1	#, tmp150, tmp151
	sw	a5,-20(s0)	# tmp150, i
.L5:
# problem153.c:16:     for (int i = 0; i < length; i++) {
	lw	a5,-20(s0)		# tmp154, i
	mv	a4,a5	# tmp153, tmp154
	lw	a5,-52(s0)		# tmp156, length
	sext.w	a4,a4	# tmp157, tmp153
	sext.w	a5,a5	# tmp158, tmp155
	blt	a4,a5,.L8	#, tmp157, tmp158,
# problem153.c:19:     return 1;
	li	a5,1		# _10,
.L7:
# problem153.c:20: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE7:
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
.LFB8:
	.cfi_startproc
	addi	sp,sp,-336	#,,
	.cfi_def_cfa_offset 336
	sd	ra,328(sp)	#,
	sd	s0,320(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,336	#,,
	.cfi_def_cfa 8, 0
# problem153.c:22: int main() {
	la	a5,__stack_chk_guard		# tmp142,
	ld	a4, 0(a5)	# tmp236, __stack_chk_guard
	sd	a4, -24(s0)	# tmp236, D.3551
	li	a4, 0	# tmp236
# problem153.c:25:     func0((int[]){1,2,3,4,5,1}, (int[]){1,2,3,4,2,-2}, result, 6);
	lla	a5,.LC0	# tmp143,
	ld	a4,0(a5)		# tmp144,
	sd	a4,-240(s0)	# tmp144, D.3487
	ld	a4,8(a5)		# tmp145,
	sd	a4,-232(s0)	# tmp145, D.3487
	ld	a5,16(a5)		# tmp146,
	sd	a5,-224(s0)	# tmp146, D.3487
# problem153.c:25:     func0((int[]){1,2,3,4,5,1}, (int[]){1,2,3,4,2,-2}, result, 6);
	lla	a5,.LC1	# tmp147,
	ld	a4,0(a5)		# tmp148,
	sd	a4,-216(s0)	# tmp148, D.3488
	ld	a4,8(a5)		# tmp149,
	sd	a4,-208(s0)	# tmp149, D.3488
	ld	a5,16(a5)		# tmp150,
	sd	a5,-200(s0)	# tmp150, D.3488
# problem153.c:25:     func0((int[]){1,2,3,4,5,1}, (int[]){1,2,3,4,2,-2}, result, 6);
	addi	a2,s0,-264	#, tmp151,
	addi	a4,s0,-216	#, tmp152,
	addi	a5,s0,-240	#, tmp153,
	li	a3,6		#,
	mv	a1,a4	#, tmp152
	mv	a0,a5	#, tmp153
	call	func0		#
# problem153.c:26:     assert(issame(result, (int[]){0,0,0,0,3,3}, 6));
	lla	a5,.LC2	# tmp154,
	ld	a4,0(a5)		# tmp155,
	sd	a4,-48(s0)	# tmp155, MEM[(int[6] *)_92]
	ld	a4,8(a5)		# tmp156,
	sd	a4,-40(s0)	# tmp156, MEM[(int[6] *)_92]
	ld	a5,16(a5)		# tmp157,
	sd	a5,-32(s0)	# tmp157, MEM[(int[6] *)_92]
	addi	a4,s0,-48	#, tmp158,
	addi	a5,s0,-264	#, tmp159,
	li	a2,6		#,
	mv	a1,a4	#, tmp158
	mv	a0,a5	#, tmp159
	call	issame		#
	mv	a5,a0	# tmp160,
# problem153.c:26:     assert(issame(result, (int[]){0,0,0,0,3,3}, 6));
	bne	a5,zero,.L10	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC9	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L10:
# problem153.c:28:     func0((int[]){0,5,0,0,0,4}, (int[]){4,1,1,0,0,-2}, result, 6);
	lla	a5,.LC3	# tmp161,
	ld	a4,0(a5)		# tmp162,
	sd	a4,-192(s0)	# tmp162, D.3492
	ld	a4,8(a5)		# tmp163,
	sd	a4,-184(s0)	# tmp163, D.3492
	ld	a5,16(a5)		# tmp164,
	sd	a5,-176(s0)	# tmp164, D.3492
# problem153.c:28:     func0((int[]){0,5,0,0,0,4}, (int[]){4,1,1,0,0,-2}, result, 6);
	lla	a5,.LC4	# tmp165,
	ld	a4,0(a5)		# tmp166,
	sd	a4,-168(s0)	# tmp166, D.3493
	ld	a4,8(a5)		# tmp167,
	sd	a4,-160(s0)	# tmp167, D.3493
	ld	a5,16(a5)		# tmp168,
	sd	a5,-152(s0)	# tmp168, D.3493
# problem153.c:28:     func0((int[]){0,5,0,0,0,4}, (int[]){4,1,1,0,0,-2}, result, 6);
	addi	a2,s0,-264	#, tmp169,
	addi	a4,s0,-168	#, tmp170,
	addi	a5,s0,-192	#, tmp171,
	li	a3,6		#,
	mv	a1,a4	#, tmp170
	mv	a0,a5	#, tmp171
	call	func0		#
# problem153.c:29:     assert(issame(result, (int[]){4,4,1,0,0,6}, 6));
	lla	a5,.LC5	# tmp172,
	ld	a4,0(a5)		# tmp173,
	sd	a4,-48(s0)	# tmp173, MEM[(int[6] *)_92]
	ld	a4,8(a5)		# tmp174,
	sd	a4,-40(s0)	# tmp174, MEM[(int[6] *)_92]
	ld	a5,16(a5)		# tmp175,
	sd	a5,-32(s0)	# tmp175, MEM[(int[6] *)_92]
	addi	a4,s0,-48	#, tmp176,
	addi	a5,s0,-264	#, tmp177,
	li	a2,6		#,
	mv	a1,a4	#, tmp176
	mv	a0,a5	#, tmp177
	call	issame		#
	mv	a5,a0	# tmp178,
# problem153.c:29:     assert(issame(result, (int[]){4,4,1,0,0,6}, 6));
	bne	a5,zero,.L11	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC9	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L11:
# problem153.c:31:     func0((int[]){1,2,3,4,5,1}, (int[]){1,2,3,4,2,-2}, result, 6);
	lla	a5,.LC0	# tmp179,
	ld	a4,0(a5)		# tmp180,
	sd	a4,-144(s0)	# tmp180, D.3496
	ld	a4,8(a5)		# tmp181,
	sd	a4,-136(s0)	# tmp181, D.3496
	ld	a5,16(a5)		# tmp182,
	sd	a5,-128(s0)	# tmp182, D.3496
# problem153.c:31:     func0((int[]){1,2,3,4,5,1}, (int[]){1,2,3,4,2,-2}, result, 6);
	lla	a5,.LC1	# tmp183,
	ld	a4,0(a5)		# tmp184,
	sd	a4,-120(s0)	# tmp184, D.3497
	ld	a4,8(a5)		# tmp185,
	sd	a4,-112(s0)	# tmp185, D.3497
	ld	a5,16(a5)		# tmp186,
	sd	a5,-104(s0)	# tmp186, D.3497
# problem153.c:31:     func0((int[]){1,2,3,4,5,1}, (int[]){1,2,3,4,2,-2}, result, 6);
	addi	a2,s0,-264	#, tmp187,
	addi	a4,s0,-120	#, tmp188,
	addi	a5,s0,-144	#, tmp189,
	li	a3,6		#,
	mv	a1,a4	#, tmp188
	mv	a0,a5	#, tmp189
	call	func0		#
# problem153.c:32:     assert(issame(result, (int[]){0,0,0,0,3,3}, 6));
	lla	a5,.LC2	# tmp190,
	ld	a4,0(a5)		# tmp191,
	sd	a4,-48(s0)	# tmp191, MEM[(int[6] *)_92]
	ld	a4,8(a5)		# tmp192,
	sd	a4,-40(s0)	# tmp192, MEM[(int[6] *)_92]
	ld	a5,16(a5)		# tmp193,
	sd	a5,-32(s0)	# tmp193, MEM[(int[6] *)_92]
	addi	a4,s0,-48	#, tmp194,
	addi	a5,s0,-264	#, tmp195,
	li	a2,6		#,
	mv	a1,a4	#, tmp194
	mv	a0,a5	#, tmp195
	call	issame		#
	mv	a5,a0	# tmp196,
# problem153.c:32:     assert(issame(result, (int[]){0,0,0,0,3,3}, 6));
	bne	a5,zero,.L12	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC9	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L12:
# problem153.c:34:     func0((int[]){0,0,0,0,0,0}, (int[]){0,0,0,0,0,0}, result, 6);
	sw	zero,-96(s0)	#, D.3500[0]
	sw	zero,-92(s0)	#, D.3500[1]
	sw	zero,-88(s0)	#, D.3500[2]
	sw	zero,-84(s0)	#, D.3500[3]
	sw	zero,-80(s0)	#, D.3500[4]
	sw	zero,-76(s0)	#, D.3500[5]
# problem153.c:34:     func0((int[]){0,0,0,0,0,0}, (int[]){0,0,0,0,0,0}, result, 6);
	sw	zero,-72(s0)	#, D.3501[0]
	sw	zero,-68(s0)	#, D.3501[1]
	sw	zero,-64(s0)	#, D.3501[2]
	sw	zero,-60(s0)	#, D.3501[3]
	sw	zero,-56(s0)	#, D.3501[4]
	sw	zero,-52(s0)	#, D.3501[5]
# problem153.c:34:     func0((int[]){0,0,0,0,0,0}, (int[]){0,0,0,0,0,0}, result, 6);
	addi	a2,s0,-264	#, tmp197,
	addi	a4,s0,-72	#, tmp198,
	addi	a5,s0,-96	#, tmp199,
	li	a3,6		#,
	mv	a1,a4	#, tmp198
	mv	a0,a5	#, tmp199
	call	func0		#
# problem153.c:35:     assert(issame(result, (int[]){0,0,0,0,0,0}, 6));
	sw	zero,-48(s0)	#, MEM[(int[6] *)_92][0]
	sw	zero,-44(s0)	#, MEM[(int[6] *)_92][1]
	sw	zero,-40(s0)	#, MEM[(int[6] *)_92][2]
	sw	zero,-36(s0)	#, MEM[(int[6] *)_92][3]
	sw	zero,-32(s0)	#, MEM[(int[6] *)_92][4]
	sw	zero,-28(s0)	#, MEM[(int[6] *)_92][5]
	addi	a4,s0,-48	#, tmp200,
	addi	a5,s0,-264	#, tmp201,
	li	a2,6		#,
	mv	a1,a4	#, tmp200
	mv	a0,a5	#, tmp201
	call	issame		#
	mv	a5,a0	# tmp202,
# problem153.c:35:     assert(issame(result, (int[]){0,0,0,0,0,0}, 6));
	bne	a5,zero,.L13	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC9	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L13:
# problem153.c:37:     func0((int[]){1,2,3}, (int[]){-1,-2,-3}, result, 3);
	li	a5,1		# tmp203,
	sw	a5,-328(s0)	# tmp203, D.3504[0]
	li	a5,2		# tmp204,
	sw	a5,-324(s0)	# tmp204, D.3504[1]
	li	a5,3		# tmp205,
	sw	a5,-320(s0)	# tmp205, D.3504[2]
# problem153.c:37:     func0((int[]){1,2,3}, (int[]){-1,-2,-3}, result, 3);
	li	a5,-1		# tmp206,
	sw	a5,-312(s0)	# tmp206, D.3505[0]
	li	a5,-2		# tmp207,
	sw	a5,-308(s0)	# tmp207, D.3505[1]
	li	a5,-3		# tmp208,
	sw	a5,-304(s0)	# tmp208, D.3505[2]
# problem153.c:37:     func0((int[]){1,2,3}, (int[]){-1,-2,-3}, result, 3);
	addi	a2,s0,-264	#, tmp209,
	addi	a4,s0,-312	#, tmp210,
	addi	a5,s0,-328	#, tmp211,
	li	a3,3		#,
	mv	a1,a4	#, tmp210
	mv	a0,a5	#, tmp211
	call	func0		#
# problem153.c:38:     assert(issame(result, (int[]){2,4,6}, 3));
	li	a5,2		# tmp212,
	sw	a5,-48(s0)	# tmp212, MEM[(int[3] *)_92][0]
	li	a5,4		# tmp213,
	sw	a5,-44(s0)	# tmp213, MEM[(int[3] *)_92][1]
	li	a5,6		# tmp214,
	sw	a5,-40(s0)	# tmp214, MEM[(int[3] *)_92][2]
	addi	a4,s0,-48	#, tmp215,
	addi	a5,s0,-264	#, tmp216,
	li	a2,3		#,
	mv	a1,a4	#, tmp215
	mv	a0,a5	#, tmp216
	call	issame		#
	mv	a5,a0	# tmp217,
# problem153.c:38:     assert(issame(result, (int[]){2,4,6}, 3));
	bne	a5,zero,.L14	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,38		#,
	lla	a1,.LC9	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L14:
# problem153.c:40:     func0((int[]){1,2,3,5}, (int[]){-1,2,3,4}, result, 4);
	lla	a5,.LC6	# tmp218,
	ld	a4,0(a5)		# tmp219,
	sd	a4,-296(s0)	# tmp219, D.3508
	ld	a5,8(a5)		# tmp220,
	sd	a5,-288(s0)	# tmp220, D.3508
# problem153.c:40:     func0((int[]){1,2,3,5}, (int[]){-1,2,3,4}, result, 4);
	lla	a5,.LC7	# tmp221,
	ld	a4,0(a5)		# tmp222,
	sd	a4,-280(s0)	# tmp222, D.3509
	ld	a5,8(a5)		# tmp223,
	sd	a5,-272(s0)	# tmp223, D.3509
# problem153.c:40:     func0((int[]){1,2,3,5}, (int[]){-1,2,3,4}, result, 4);
	addi	a2,s0,-264	#, tmp224,
	addi	a4,s0,-280	#, tmp225,
	addi	a5,s0,-296	#, tmp226,
	li	a3,4		#,
	mv	a1,a4	#, tmp225
	mv	a0,a5	#, tmp226
	call	func0		#
# problem153.c:41:     assert(issame(result, (int[]){2,0,0,1}, 4));
	lla	a5,.LC8	# tmp227,
	ld	a4,0(a5)		# tmp228,
	sd	a4,-48(s0)	# tmp228, MEM[(int[4] *)_92]
	ld	a5,8(a5)		# tmp229,
	sd	a5,-40(s0)	# tmp229, MEM[(int[4] *)_92]
	addi	a4,s0,-48	#, tmp230,
	addi	a5,s0,-264	#, tmp231,
	li	a2,4		#,
	mv	a1,a4	#, tmp230
	mv	a0,a5	#, tmp231
	call	issame		#
	mv	a5,a0	# tmp232,
# problem153.c:41:     assert(issame(result, (int[]){2,0,0,1}, 4));
	bne	a5,zero,.L15	#, _6,,
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
	la	a5,__stack_chk_guard		# tmp234,
	ld	a3, -24(s0)	# tmp237, D.3551
	ld	a5, 0(a5)	# tmp235, __stack_chk_guard
	xor	a5, a3, a5	# tmp235, tmp237
	li	a3, 0	# tmp237
	beq	a5,zero,.L17	#, tmp235,,
	call	__stack_chk_fail@plt	#
.L17:
	mv	a0,a4	#, <retval>
	ld	ra,328(sp)		#,
	.cfi_restore 1
	ld	s0,320(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 336
	addi	sp,sp,336	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
