	.file	"problem137.c"
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
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# lst, lst
	mv	a5,a1	# tmp157, size
	sd	a2,-56(s0)	# result, result
	sw	a5,-44(s0)	# tmp158, size
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
	ld	a4,-40(s0)		# tmp159, lst
	add	a5,a4,a5	# _2, _3, tmp159
	lw	a5,0(a5)		# _4, *_3
# problem137.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	bge	a5,zero,.L3	#, tmp160,,
# problem137.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	lw	a5,-28(s0)		# tmp162, maxneg
	sext.w	a5,a5	# tmp163, tmp161
	beq	a5,zero,.L4	#, tmp163,,
# problem137.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-40(s0)		# tmp164, lst
	add	a5,a4,a5	# _6, _7, tmp164
	lw	a4,0(a5)		# _8, *_7
# problem137.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	lw	a5,-28(s0)		# tmp166, maxneg
	sext.w	a5,a5	# tmp167, tmp165
	bge	a5,a4,.L3	#, tmp167, tmp168,
.L4:
# problem137.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	lw	a5,-20(s0)		# _9, i
	slli	a5,a5,2	#, _10, _9
	ld	a4,-40(s0)		# tmp169, lst
	add	a5,a4,a5	# _10, _11, tmp169
# problem137.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	lw	a5,0(a5)		# tmp170, *_11
	sw	a5,-28(s0)	# tmp170, maxneg
.L3:
# problem137.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	lw	a5,-20(s0)		# _12, i
	slli	a5,a5,2	#, _13, _12
	ld	a4,-40(s0)		# tmp171, lst
	add	a5,a4,a5	# _13, _14, tmp171
	lw	a5,0(a5)		# _15, *_14
# problem137.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	ble	a5,zero,.L5	#, tmp172,,
# problem137.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	lw	a5,-24(s0)		# tmp174, minpos
	sext.w	a5,a5	# tmp175, tmp173
	beq	a5,zero,.L6	#, tmp175,,
# problem137.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	lw	a5,-20(s0)		# _16, i
	slli	a5,a5,2	#, _17, _16
	ld	a4,-40(s0)		# tmp176, lst
	add	a5,a4,a5	# _17, _18, tmp176
	lw	a4,0(a5)		# _19, *_18
# problem137.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	lw	a5,-24(s0)		# tmp178, minpos
	sext.w	a5,a5	# tmp179, tmp177
	ble	a5,a4,.L5	#, tmp179, tmp180,
.L6:
# problem137.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	lw	a5,-20(s0)		# _20, i
	slli	a5,a5,2	#, _21, _20
	ld	a4,-40(s0)		# tmp181, lst
	add	a5,a4,a5	# _21, _22, tmp181
# problem137.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	lw	a5,0(a5)		# tmp182, *_22
	sw	a5,-24(s0)	# tmp182, minpos
.L5:
# problem137.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp185, i
	addiw	a5,a5,1	#, tmp183, tmp184
	sw	a5,-20(s0)	# tmp183, i
.L2:
# problem137.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp187, i
	mv	a4,a5	# tmp186, tmp187
	lw	a5,-44(s0)		# tmp189, size
	sext.w	a4,a4	# tmp190, tmp186
	sext.w	a5,a5	# tmp191, tmp188
	blt	a4,a5,.L7	#, tmp190, tmp191,
# problem137.c:10:     result[0] = maxneg;
	ld	a5,-56(s0)		# tmp192, result
	lw	a4,-28(s0)		# tmp193, maxneg
	sw	a4,0(a5)	# tmp193, *result_34(D)
# problem137.c:11:     result[1] = minpos;
	ld	a5,-56(s0)		# tmp194, result
	addi	a5,a5,4	#, _23, tmp194
# problem137.c:11:     result[1] = minpos;
	lw	a4,-24(s0)		# tmp195, minpos
	sw	a4,0(a5)	# tmp195, *_23
# problem137.c:12: }
	nop	
	ld	s0,56(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# a, a
	sd	a1,-32(s0)	# b, b
# problem137.c:19:     return a[0] == b[0] && a[1] == b[1];
	ld	a5,-24(s0)		# tmp142, a
	lw	a4,0(a5)		# _1, *a_9(D)
# problem137.c:19:     return a[0] == b[0] && a[1] == b[1];
	ld	a5,-32(s0)		# tmp143, b
	lw	a5,0(a5)		# _2, *b_10(D)
# problem137.c:19:     return a[0] == b[0] && a[1] == b[1];
	bne	a4,a5,.L9	#, tmp144, tmp145,
# problem137.c:19:     return a[0] == b[0] && a[1] == b[1];
	ld	a5,-24(s0)		# tmp146, a
	addi	a5,a5,4	#, _3, tmp146
	lw	a4,0(a5)		# _4, *_3
# problem137.c:19:     return a[0] == b[0] && a[1] == b[1];
	ld	a5,-32(s0)		# tmp147, b
	addi	a5,a5,4	#, _5, tmp147
	lw	a5,0(a5)		# _6, *_5
# problem137.c:19:     return a[0] == b[0] && a[1] == b[1];
	bne	a4,a5,.L9	#, tmp148, tmp149,
# problem137.c:19:     return a[0] == b[0] && a[1] == b[1];
	li	a5,1		# iftmp.0_7,
# problem137.c:19:     return a[0] == b[0] && a[1] == b[1];
	j	.L10		#
.L9:
# problem137.c:19:     return a[0] == b[0] && a[1] == b[1];
	li	a5,0		# iftmp.0_7,
.L10:
# problem137.c:20: }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
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
.LFB2:
	.cfi_startproc
	addi	sp,sp,-304	#,,
	.cfi_def_cfa_offset 304
	sd	ra,296(sp)	#,
	sd	s0,288(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,304	#,,
	.cfi_def_cfa 8, 0
# problem137.c:22: int main() {
	la	a5,__stack_chk_guard		# tmp147,
	ld	a4, 0(a5)	# tmp259, __stack_chk_guard
	sd	a4, -24(s0)	# tmp259, D.2846
	li	a4, 0	# tmp259
# problem137.c:25:     func0((int[]){2, 4, 1, 3, 5, 7}, 6, result);
	lla	a5,.LC0	# tmp148,
	ld	a4,0(a5)		# tmp149,
	sd	a4,-200(s0)	# tmp149, D.2745
	ld	a4,8(a5)		# tmp150,
	sd	a4,-192(s0)	# tmp150, D.2745
	ld	a5,16(a5)		# tmp151,
	sd	a5,-184(s0)	# tmp151, D.2745
# problem137.c:25:     func0((int[]){2, 4, 1, 3, 5, 7}, 6, result);
	addi	a4,s0,-280	#, tmp152,
	addi	a5,s0,-200	#, tmp153,
	mv	a2,a4	#, tmp152
	li	a1,6		#,
	mv	a0,a5	#, tmp153
	call	func0		#
# problem137.c:26:     assert(issame(result, (int[]){0, 1}));
	sw	zero,-56(s0)	#, MEM[(int[2] *)_114][0]
	li	a5,1		# tmp154,
	sw	a5,-52(s0)	# tmp154, MEM[(int[2] *)_114][1]
	addi	a4,s0,-56	#, tmp155,
	addi	a5,s0,-280	#, tmp156,
	mv	a1,a4	#, tmp155
	mv	a0,a5	#, tmp156
	call	issame		#
	mv	a5,a0	# tmp157,
# problem137.c:26:     assert(issame(result, (int[]){0, 1}));
	bne	a5,zero,.L13	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC9	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L13:
# problem137.c:28:     func0((int[]){2, 4, 1, 3, 5, 7, 0}, 7, result);
	lla	a5,.LC1	# tmp158,
	ld	a2,0(a5)		# tmp159,
	ld	a3,8(a5)		# tmp160,
	ld	a4,16(a5)		# tmp161,
	sd	a2,-152(s0)	# tmp159, D.2749
	sd	a3,-144(s0)	# tmp160, D.2749
	sd	a4,-136(s0)	# tmp161, D.2749
	lw	a5,24(a5)		# tmp162,
	sw	a5,-128(s0)	# tmp162, D.2749
# problem137.c:28:     func0((int[]){2, 4, 1, 3, 5, 7, 0}, 7, result);
	addi	a4,s0,-280	#, tmp163,
	addi	a5,s0,-152	#, tmp164,
	mv	a2,a4	#, tmp163
	li	a1,7		#,
	mv	a0,a5	#, tmp164
	call	func0		#
# problem137.c:29:     assert(issame(result, (int[]){0, 1}));
	sw	zero,-56(s0)	#, MEM[(int[2] *)_114][0]
	li	a5,1		# tmp165,
	sw	a5,-52(s0)	# tmp165, MEM[(int[2] *)_114][1]
	addi	a4,s0,-56	#, tmp166,
	addi	a5,s0,-280	#, tmp167,
	mv	a1,a4	#, tmp166
	mv	a0,a5	#, tmp167
	call	issame		#
	mv	a5,a0	# tmp168,
# problem137.c:29:     assert(issame(result, (int[]){0, 1}));
	bne	a5,zero,.L14	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC9	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L14:
# problem137.c:31:     func0((int[]){1, 3, 2, 4, 5, 6, -2}, 7, result);
	lla	a5,.LC2	# tmp169,
	ld	a2,0(a5)		# tmp170,
	ld	a3,8(a5)		# tmp171,
	ld	a4,16(a5)		# tmp172,
	sd	a2,-120(s0)	# tmp170, D.2752
	sd	a3,-112(s0)	# tmp171, D.2752
	sd	a4,-104(s0)	# tmp172, D.2752
	lw	a5,24(a5)		# tmp173,
	sw	a5,-96(s0)	# tmp173, D.2752
# problem137.c:31:     func0((int[]){1, 3, 2, 4, 5, 6, -2}, 7, result);
	addi	a4,s0,-280	#, tmp174,
	addi	a5,s0,-120	#, tmp175,
	mv	a2,a4	#, tmp174
	li	a1,7		#,
	mv	a0,a5	#, tmp175
	call	func0		#
# problem137.c:32:     assert(issame(result, (int[]){-2, 1}));
	li	a5,-2		# tmp176,
	sw	a5,-56(s0)	# tmp176, MEM[(int[2] *)_114][0]
	li	a5,1		# tmp177,
	sw	a5,-52(s0)	# tmp177, MEM[(int[2] *)_114][1]
	addi	a4,s0,-56	#, tmp178,
	addi	a5,s0,-280	#, tmp179,
	mv	a1,a4	#, tmp178
	mv	a0,a5	#, tmp179
	call	issame		#
	mv	a5,a0	# tmp180,
# problem137.c:32:     assert(issame(result, (int[]){-2, 1}));
	bne	a5,zero,.L15	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC9	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L15:
# problem137.c:34:     func0((int[]){4, 5, 3, 6, 2, 7, -7}, 7, result);
	lla	a5,.LC3	# tmp181,
	ld	a2,0(a5)		# tmp182,
	ld	a3,8(a5)		# tmp183,
	ld	a4,16(a5)		# tmp184,
	sd	a2,-88(s0)	# tmp182, D.2755
	sd	a3,-80(s0)	# tmp183, D.2755
	sd	a4,-72(s0)	# tmp184, D.2755
	lw	a5,24(a5)		# tmp185,
	sw	a5,-64(s0)	# tmp185, D.2755
# problem137.c:34:     func0((int[]){4, 5, 3, 6, 2, 7, -7}, 7, result);
	addi	a4,s0,-280	#, tmp186,
	addi	a5,s0,-88	#, tmp187,
	mv	a2,a4	#, tmp186
	li	a1,7		#,
	mv	a0,a5	#, tmp187
	call	func0		#
# problem137.c:35:     assert(issame(result, (int[]){-7, 2}));
	li	a5,-7		# tmp188,
	sw	a5,-56(s0)	# tmp188, MEM[(int[2] *)_114][0]
	li	a5,2		# tmp189,
	sw	a5,-52(s0)	# tmp189, MEM[(int[2] *)_114][1]
	addi	a4,s0,-56	#, tmp190,
	addi	a5,s0,-280	#, tmp191,
	mv	a1,a4	#, tmp190
	mv	a0,a5	#, tmp191
	call	issame		#
	mv	a5,a0	# tmp192,
# problem137.c:35:     assert(issame(result, (int[]){-7, 2}));
	bne	a5,zero,.L16	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC9	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L16:
# problem137.c:37:     func0((int[]){7, 3, 8, 4, 9, 2, 5, -9}, 8, result);
	lla	a5,.LC4	# tmp193,
	ld	a2,0(a5)		# tmp194,
	ld	a3,8(a5)		# tmp195,
	ld	a4,16(a5)		# tmp196,
	ld	a5,24(a5)		# tmp197,
	sd	a2,-56(s0)	# tmp194, MEM[(int[8] *)_114]
	sd	a3,-48(s0)	# tmp195, MEM[(int[8] *)_114]
	sd	a4,-40(s0)	# tmp196, MEM[(int[8] *)_114]
	sd	a5,-32(s0)	# tmp197, MEM[(int[8] *)_114]
# problem137.c:37:     func0((int[]){7, 3, 8, 4, 9, 2, 5, -9}, 8, result);
	addi	a4,s0,-280	#, tmp198,
	addi	a5,s0,-56	#, tmp199,
	mv	a2,a4	#, tmp198
	li	a1,8		#,
	mv	a0,a5	#, tmp199
	call	func0		#
# problem137.c:38:     assert(issame(result, (int[]){-9, 2}));
	li	a5,-9		# tmp200,
	sw	a5,-176(s0)	# tmp200, MEM[(int[2] *)_115][0]
	li	a5,2		# tmp201,
	sw	a5,-172(s0)	# tmp201, MEM[(int[2] *)_115][1]
	addi	a4,s0,-176	#, tmp202,
	addi	a5,s0,-280	#, tmp203,
	mv	a1,a4	#, tmp202
	mv	a0,a5	#, tmp203
	call	issame		#
	mv	a5,a0	# tmp204,
# problem137.c:38:     assert(issame(result, (int[]){-9, 2}));
	bne	a5,zero,.L17	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,38		#,
	lla	a1,.LC9	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L17:
# problem137.c:40:     func0((int[]){}, 0, result);
	addi	a4,s0,-280	#, tmp205,
	addi	a5,s0,-296	#, tmp206,
	mv	a2,a4	#, tmp205
	li	a1,0		#,
	mv	a0,a5	#, tmp206
	call	func0		#
# problem137.c:41:     assert(issame(result, (int[]){0, 0}));
	sw	zero,-176(s0)	#, MEM[(int[2] *)_115][0]
	sw	zero,-172(s0)	#, MEM[(int[2] *)_115][1]
	addi	a4,s0,-176	#, tmp207,
	addi	a5,s0,-280	#, tmp208,
	mv	a1,a4	#, tmp207
	mv	a0,a5	#, tmp208
	call	issame		#
	mv	a5,a0	# tmp209,
# problem137.c:41:     assert(issame(result, (int[]){0, 0}));
	bne	a5,zero,.L18	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,41		#,
	lla	a1,.LC9	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L18:
# problem137.c:43:     func0((int[]){0}, 1, result);
	sw	zero,-288(s0)	#, D.2764[0]
# problem137.c:43:     func0((int[]){0}, 1, result);
	addi	a4,s0,-280	#, tmp210,
	addi	a5,s0,-288	#, tmp211,
	mv	a2,a4	#, tmp210
	li	a1,1		#,
	mv	a0,a5	#, tmp211
	call	func0		#
# problem137.c:44:     assert(issame(result, (int[]){0, 0}));
	sw	zero,-176(s0)	#, MEM[(int[2] *)_115][0]
	sw	zero,-172(s0)	#, MEM[(int[2] *)_115][1]
	addi	a4,s0,-176	#, tmp212,
	addi	a5,s0,-280	#, tmp213,
	mv	a1,a4	#, tmp212
	mv	a0,a5	#, tmp213
	call	issame		#
	mv	a5,a0	# tmp214,
# problem137.c:44:     assert(issame(result, (int[]){0, 0}));
	bne	a5,zero,.L19	#, _7,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,44		#,
	lla	a1,.LC9	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L19:
# problem137.c:46:     func0((int[]){-1, -3, -5, -6}, 4, result);
	lla	a5,.LC5	# tmp215,
	ld	a4,0(a5)		# tmp216,
	sd	a4,-264(s0)	# tmp216, D.2767
	ld	a5,8(a5)		# tmp217,
	sd	a5,-256(s0)	# tmp217, D.2767
# problem137.c:46:     func0((int[]){-1, -3, -5, -6}, 4, result);
	addi	a4,s0,-280	#, tmp218,
	addi	a5,s0,-264	#, tmp219,
	mv	a2,a4	#, tmp218
	li	a1,4		#,
	mv	a0,a5	#, tmp219
	call	func0		#
# problem137.c:47:     assert(issame(result, (int[]){-1, 0}));
	li	a5,-1		# tmp220,
	sw	a5,-176(s0)	# tmp220, MEM[(int[2] *)_115][0]
	sw	zero,-172(s0)	#, MEM[(int[2] *)_115][1]
	addi	a4,s0,-176	#, tmp221,
	addi	a5,s0,-280	#, tmp222,
	mv	a1,a4	#, tmp221
	mv	a0,a5	#, tmp222
	call	issame		#
	mv	a5,a0	# tmp223,
# problem137.c:47:     assert(issame(result, (int[]){-1, 0}));
	bne	a5,zero,.L20	#, _8,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,47		#,
	lla	a1,.LC9	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L20:
# problem137.c:49:     func0((int[]){-1, -3, -5, -6, 0}, 5, result);
	lla	a5,.LC6	# tmp224,
	ld	a4,0(a5)		# tmp225,
	sd	a4,-248(s0)	# tmp225, D.2770
	ld	a4,8(a5)		# tmp226,
	sd	a4,-240(s0)	# tmp226, D.2770
	lw	a5,16(a5)		# tmp227,
	sw	a5,-232(s0)	# tmp227, D.2770
# problem137.c:49:     func0((int[]){-1, -3, -5, -6, 0}, 5, result);
	addi	a4,s0,-280	#, tmp228,
	addi	a5,s0,-248	#, tmp229,
	mv	a2,a4	#, tmp228
	li	a1,5		#,
	mv	a0,a5	#, tmp229
	call	func0		#
# problem137.c:50:     assert(issame(result, (int[]){-1, 0}));
	li	a5,-1		# tmp230,
	sw	a5,-176(s0)	# tmp230, MEM[(int[2] *)_115][0]
	sw	zero,-172(s0)	#, MEM[(int[2] *)_115][1]
	addi	a4,s0,-176	#, tmp231,
	addi	a5,s0,-280	#, tmp232,
	mv	a1,a4	#, tmp231
	mv	a0,a5	#, tmp232
	call	issame		#
	mv	a5,a0	# tmp233,
# problem137.c:50:     assert(issame(result, (int[]){-1, 0}));
	bne	a5,zero,.L21	#, _9,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,50		#,
	lla	a1,.LC9	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L21:
# problem137.c:52:     func0((int[]){-6, -4, -4, -3, 1}, 5, result);
	lla	a5,.LC7	# tmp234,
	ld	a4,0(a5)		# tmp235,
	sd	a4,-224(s0)	# tmp235, D.2773
	ld	a4,8(a5)		# tmp236,
	sd	a4,-216(s0)	# tmp236, D.2773
	lw	a5,16(a5)		# tmp237,
	sw	a5,-208(s0)	# tmp237, D.2773
# problem137.c:52:     func0((int[]){-6, -4, -4, -3, 1}, 5, result);
	addi	a4,s0,-280	#, tmp238,
	addi	a5,s0,-224	#, tmp239,
	mv	a2,a4	#, tmp238
	li	a1,5		#,
	mv	a0,a5	#, tmp239
	call	func0		#
# problem137.c:53:     assert(issame(result, (int[]){-3, 1}));
	li	a5,-3		# tmp240,
	sw	a5,-176(s0)	# tmp240, MEM[(int[2] *)_115][0]
	li	a5,1		# tmp241,
	sw	a5,-172(s0)	# tmp241, MEM[(int[2] *)_115][1]
	addi	a4,s0,-176	#, tmp242,
	addi	a5,s0,-280	#, tmp243,
	mv	a1,a4	#, tmp242
	mv	a0,a5	#, tmp243
	call	issame		#
	mv	a5,a0	# tmp244,
# problem137.c:53:     assert(issame(result, (int[]){-3, 1}));
	bne	a5,zero,.L22	#, _10,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,53		#,
	lla	a1,.LC9	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L22:
# problem137.c:55:     func0((int[]){-6, -4, -4, -3, -100, 1}, 6, result);
	lla	a5,.LC8	# tmp245,
	ld	a4,0(a5)		# tmp246,
	sd	a4,-176(s0)	# tmp246, MEM[(int[6] *)_115]
	ld	a4,8(a5)		# tmp247,
	sd	a4,-168(s0)	# tmp247, MEM[(int[6] *)_115]
	ld	a5,16(a5)		# tmp248,
	sd	a5,-160(s0)	# tmp248, MEM[(int[6] *)_115]
# problem137.c:55:     func0((int[]){-6, -4, -4, -3, -100, 1}, 6, result);
	addi	a4,s0,-280	#, tmp249,
	addi	a5,s0,-176	#, tmp250,
	mv	a2,a4	#, tmp249
	li	a1,6		#,
	mv	a0,a5	#, tmp250
	call	func0		#
# problem137.c:56:     assert(issame(result, (int[]){-3, 1}));
	li	a5,-3		# tmp251,
	sw	a5,-272(s0)	# tmp251, D.2778[0]
	li	a5,1		# tmp252,
	sw	a5,-268(s0)	# tmp252, D.2778[1]
	addi	a4,s0,-272	#, tmp253,
	addi	a5,s0,-280	#, tmp254,
	mv	a1,a4	#, tmp253
	mv	a0,a5	#, tmp254
	call	issame		#
	mv	a5,a0	# tmp255,
# problem137.c:56:     assert(issame(result, (int[]){-3, 1}));
	bne	a5,zero,.L23	#, _11,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,56		#,
	lla	a1,.LC9	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L23:
# problem137.c:58:     return 0;
	li	a5,0		# _89,
# problem137.c:59: }
	mv	a4,a5	# <retval>, _89
	la	a5,__stack_chk_guard		# tmp257,
	ld	a3, -24(s0)	# tmp260, D.2846
	ld	a5, 0(a5)	# tmp258, __stack_chk_guard
	xor	a5, a3, a5	# tmp258, tmp260
	li	a3, 0	# tmp260
	beq	a5,zero,.L25	#, tmp258,,
	call	__stack_chk_fail@plt	#
.L25:
	mv	a0,a4	#, <retval>
	ld	ra,296(sp)		#,
	.cfi_restore 1
	ld	s0,288(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 304
	addi	sp,sp,304	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
