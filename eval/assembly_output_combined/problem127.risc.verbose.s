	.file	"problem127.c"
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
	mv	a5,a1	# tmp163, lst_size
	sw	a5,-44(s0)	# tmp164, lst_size
# problem127.c:5:     if (lst_size == 0) return true;
	lw	a5,-44(s0)		# tmp166, lst_size
	sext.w	a5,a5	# tmp167, tmp165
	bne	a5,zero,.L2	#, tmp167,,
# problem127.c:5:     if (lst_size == 0) return true;
	li	a5,1		# _29,
# problem127.c:5:     if (lst_size == 0) return true;
	j	.L3		#
.L2:
# problem127.c:7:     for (int i = 1; i < lst_size; i++) {
	li	a5,1		# tmp168,
	sw	a5,-20(s0)	# tmp168, i
# problem127.c:7:     for (int i = 1; i < lst_size; i++) {
	j	.L4		#
.L7:
# problem127.c:8:         if (lst[i] < lst[i - 1]) return false;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp169, lst
	add	a5,a4,a5	# _2, _3, tmp169
	lw	a3,0(a5)		# _4, *_3
# problem127.c:8:         if (lst[i] < lst[i - 1]) return false;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	addi	a5,a5,-4	#, _7, _6
	ld	a4,-40(s0)		# tmp170, lst
	add	a5,a4,a5	# _7, _8, tmp170
	lw	a5,0(a5)		# _9, *_8
# problem127.c:8:         if (lst[i] < lst[i - 1]) return false;
	mv	a4,a3	# tmp171, _4
	bge	a4,a5,.L5	#, tmp171, tmp172,
# problem127.c:8:         if (lst[i] < lst[i - 1]) return false;
	li	a5,0		# _29,
# problem127.c:8:         if (lst[i] < lst[i - 1]) return false;
	j	.L3		#
.L5:
# problem127.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	lw	a5,-20(s0)		# tmp174, i
	sext.w	a4,a5	# tmp175, tmp173
	li	a5,1		# tmp176,
	ble	a4,a5,.L6	#, tmp175, tmp176,
# problem127.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	lw	a5,-20(s0)		# _10, i
	slli	a5,a5,2	#, _11, _10
	ld	a4,-40(s0)		# tmp177, lst
	add	a5,a4,a5	# _11, _12, tmp177
	lw	a3,0(a5)		# _13, *_12
# problem127.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	lw	a5,-20(s0)		# _14, i
	slli	a5,a5,2	#, _15, _14
	addi	a5,a5,-4	#, _16, _15
	ld	a4,-40(s0)		# tmp178, lst
	add	a5,a4,a5	# _16, _17, tmp178
	lw	a5,0(a5)		# _18, *_17
# problem127.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	mv	a4,a3	# tmp179, _13
	bne	a4,a5,.L6	#, tmp179, tmp180,
# problem127.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	lw	a5,-20(s0)		# _19, i
	slli	a5,a5,2	#, _20, _19
	ld	a4,-40(s0)		# tmp181, lst
	add	a5,a4,a5	# _20, _21, tmp181
	lw	a3,0(a5)		# _22, *_21
# problem127.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	lw	a5,-20(s0)		# _23, i
	slli	a5,a5,2	#, _24, _23
	addi	a5,a5,-8	#, _25, _24
	ld	a4,-40(s0)		# tmp182, lst
	add	a5,a4,a5	# _25, _26, tmp182
	lw	a5,0(a5)		# _27, *_26
# problem127.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	mv	a4,a3	# tmp183, _22
	bne	a4,a5,.L6	#, tmp183, tmp184,
# problem127.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	li	a5,0		# _29,
# problem127.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	j	.L3		#
.L6:
# problem127.c:7:     for (int i = 1; i < lst_size; i++) {
	lw	a5,-20(s0)		# tmp187, i
	addiw	a5,a5,1	#, tmp185, tmp186
	sw	a5,-20(s0)	# tmp185, i
.L4:
# problem127.c:7:     for (int i = 1; i < lst_size; i++) {
	lw	a5,-20(s0)		# tmp189, i
	mv	a4,a5	# tmp188, tmp189
	lw	a5,-44(s0)		# tmp191, lst_size
	sext.w	a4,a4	# tmp192, tmp188
	sext.w	a5,a5	# tmp193, tmp190
	blt	a4,a5,.L7	#, tmp192, tmp193,
# problem127.c:11:     return true;
	li	a5,1		# _29,
.L3:
# problem127.c:12: }
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
.LC9:
	.string	"problem127.c"
	.align	3
.LC10:
	.string	"func0(list1, 1) == true"
	.align	3
.LC11:
	.string	"func0(list2, 5) == true"
	.align	3
.LC12:
	.string	"func0(list3, 5) == false"
	.align	3
.LC13:
	.string	"func0(list4, 6) == true"
	.align	3
.LC14:
	.string	"func0(list5, 7) == true"
	.align	3
.LC15:
	.string	"func0(list6, 7) == false"
	.align	3
.LC16:
	.string	"func0(NULL, 0) == true"
	.align	3
.LC17:
	.string	"func0(list7, 1) == true"
	.align	3
.LC18:
	.string	"func0(list8, 3) == false"
	.align	3
.LC19:
	.string	"func0(list9, 6) == false"
	.align	3
.LC20:
	.string	"func0(list10, 6) == false"
	.align	3
.LC21:
	.string	"func0(list11, 6) == true"
	.align	3
.LC22:
	.string	"func0(list12, 4) == true"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.align	3
.LC1:
	.word	1
	.word	3
	.word	2
	.word	4
	.word	5
	.align	3
.LC2:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.align	3
.LC3:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.align	3
.LC4:
	.word	1
	.word	3
	.word	2
	.word	4
	.word	5
	.word	6
	.word	7
	.align	3
.LC5:
	.word	1
	.word	2
	.word	2
	.word	2
	.word	3
	.word	4
	.align	3
.LC6:
	.word	1
	.word	2
	.word	3
	.word	3
	.word	3
	.word	4
	.align	3
.LC7:
	.word	1
	.word	2
	.word	2
	.word	3
	.word	3
	.word	4
	.align	3
.LC8:
	.word	1
	.word	2
	.word	3
	.word	4
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-288	#,,
	.cfi_def_cfa_offset 288
	sd	ra,280(sp)	#,
	sd	s0,272(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,288	#,,
	.cfi_def_cfa 8, 0
# problem127.c:20: int main() {
	la	a5,__stack_chk_guard		# tmp154,
	ld	a4, 0(a5)	# tmp230, __stack_chk_guard
	sd	a4, -24(s0)	# tmp230, D.2814
	li	a4, 0	# tmp230
# problem127.c:21:     int list1[] = {5};
	li	a5,5		# tmp155,
	sw	a5,-280(s0)	# tmp155, list1[0]
# problem127.c:22:     assert(func0(list1, 1) == true);
	addi	a5,s0,-280	#, tmp156,
	li	a1,1		#,
	mv	a0,a5	#, tmp156
	call	func0		#
	mv	a5,a0	# tmp157,
# problem127.c:22:     assert(func0(list1, 1) == true);
	bne	a5,zero,.L9	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC9	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L9:
# problem127.c:24:     int list2[] = {1, 2, 3, 4, 5};
	lla	a5,.LC0	# tmp158,
	ld	a4,0(a5)		# tmp159,
	sd	a4,-232(s0)	# tmp159, list2
	ld	a4,8(a5)		# tmp160,
	sd	a4,-224(s0)	# tmp160, list2
	lw	a5,16(a5)		# tmp161,
	sw	a5,-216(s0)	# tmp161, list2
# problem127.c:25:     assert(func0(list2, 5) == true);
	addi	a5,s0,-232	#, tmp162,
	li	a1,5		#,
	mv	a0,a5	#, tmp162
	call	func0		#
	mv	a5,a0	# tmp163,
# problem127.c:25:     assert(func0(list2, 5) == true);
	bne	a5,zero,.L10	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC9	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L10:
# problem127.c:27:     int list3[] = {1, 3, 2, 4, 5};
	lla	a5,.LC1	# tmp164,
	ld	a4,0(a5)		# tmp165,
	sd	a4,-208(s0)	# tmp165, list3
	ld	a4,8(a5)		# tmp166,
	sd	a4,-200(s0)	# tmp166, list3
	lw	a5,16(a5)		# tmp167,
	sw	a5,-192(s0)	# tmp167, list3
# problem127.c:28:     assert(func0(list3, 5) == false);
	addi	a5,s0,-208	#, tmp168,
	li	a1,5		#,
	mv	a0,a5	#, tmp168
	call	func0		#
	mv	a5,a0	# tmp169,
# problem127.c:28:     assert(func0(list3, 5) == false);
	xori	a5,a5,1	#, tmp170, _3
	andi	a5,a5,0xff	# _4, tmp170
	bne	a5,zero,.L11	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC9	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L11:
# problem127.c:30:     int list4[] = {1, 2, 3, 4, 5, 6};
	lla	a5,.LC2	# tmp171,
	ld	a4,0(a5)		# tmp172,
	sd	a4,-184(s0)	# tmp172, list4
	ld	a4,8(a5)		# tmp173,
	sd	a4,-176(s0)	# tmp173, list4
	ld	a5,16(a5)		# tmp174,
	sd	a5,-168(s0)	# tmp174, list4
# problem127.c:31:     assert(func0(list4, 6) == true);
	addi	a5,s0,-184	#, tmp175,
	li	a1,6		#,
	mv	a0,a5	#, tmp175
	call	func0		#
	mv	a5,a0	# tmp176,
# problem127.c:31:     assert(func0(list4, 6) == true);
	bne	a5,zero,.L12	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC9	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L12:
# problem127.c:33:     int list5[] = {1, 2, 3, 4, 5, 6, 7};
	lla	a5,.LC3	# tmp177,
	ld	a2,0(a5)		# tmp178,
	ld	a3,8(a5)		# tmp179,
	ld	a4,16(a5)		# tmp180,
	sd	a2,-88(s0)	# tmp178, list5
	sd	a3,-80(s0)	# tmp179, list5
	sd	a4,-72(s0)	# tmp180, list5
	lw	a5,24(a5)		# tmp181,
	sw	a5,-64(s0)	# tmp181, list5
# problem127.c:34:     assert(func0(list5, 7) == true);
	addi	a5,s0,-88	#, tmp182,
	li	a1,7		#,
	mv	a0,a5	#, tmp182
	call	func0		#
	mv	a5,a0	# tmp183,
# problem127.c:34:     assert(func0(list5, 7) == true);
	bne	a5,zero,.L13	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC9	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L13:
# problem127.c:36:     int list6[] = {1, 3, 2, 4, 5, 6, 7};
	lla	a5,.LC4	# tmp184,
	ld	a2,0(a5)		# tmp185,
	ld	a3,8(a5)		# tmp186,
	ld	a4,16(a5)		# tmp187,
	sd	a2,-56(s0)	# tmp185, list6
	sd	a3,-48(s0)	# tmp186, list6
	sd	a4,-40(s0)	# tmp187, list6
	lw	a5,24(a5)		# tmp188,
	sw	a5,-32(s0)	# tmp188, list6
# problem127.c:37:     assert(func0(list6, 7) == false);
	addi	a5,s0,-56	#, tmp189,
	li	a1,7		#,
	mv	a0,a5	#, tmp189
	call	func0		#
	mv	a5,a0	# tmp190,
# problem127.c:37:     assert(func0(list6, 7) == false);
	xori	a5,a5,1	#, tmp191, _7
	andi	a5,a5,0xff	# _8, tmp191
	bne	a5,zero,.L14	#, _8,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,37		#,
	lla	a1,.LC9	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L14:
# problem127.c:39:     assert(func0(NULL, 0) == true);
	li	a1,0		#,
	li	a0,0		#,
	call	func0		#
	mv	a5,a0	# tmp192,
# problem127.c:39:     assert(func0(NULL, 0) == true);
	bne	a5,zero,.L15	#, _9,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,39		#,
	lla	a1,.LC9	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L15:
# problem127.c:41:     int list7[] = {1};
	li	a5,1		# tmp193,
	sw	a5,-272(s0)	# tmp193, list7[0]
# problem127.c:42:     assert(func0(list7, 1) == true);
	addi	a5,s0,-272	#, tmp194,
	li	a1,1		#,
	mv	a0,a5	#, tmp194
	call	func0		#
	mv	a5,a0	# tmp195,
# problem127.c:42:     assert(func0(list7, 1) == true);
	bne	a5,zero,.L16	#, _10,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,42		#,
	lla	a1,.LC9	#,
	lla	a0,.LC17	#,
	call	__assert_fail@plt	#
.L16:
# problem127.c:44:     int list8[] = {3, 2, 1};
	li	a5,3		# tmp196,
	sw	a5,-264(s0)	# tmp196, list8[0]
	li	a5,2		# tmp197,
	sw	a5,-260(s0)	# tmp197, list8[1]
	li	a5,1		# tmp198,
	sw	a5,-256(s0)	# tmp198, list8[2]
# problem127.c:45:     assert(func0(list8, 3) == false);
	addi	a5,s0,-264	#, tmp199,
	li	a1,3		#,
	mv	a0,a5	#, tmp199
	call	func0		#
	mv	a5,a0	# tmp200,
# problem127.c:45:     assert(func0(list8, 3) == false);
	xori	a5,a5,1	#, tmp201, _11
	andi	a5,a5,0xff	# _12, tmp201
	bne	a5,zero,.L17	#, _12,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,45		#,
	lla	a1,.LC9	#,
	lla	a0,.LC18	#,
	call	__assert_fail@plt	#
.L17:
# problem127.c:47:     int list9[] = {1, 2, 2, 2, 3, 4};
	lla	a5,.LC5	# tmp202,
	ld	a4,0(a5)		# tmp203,
	sd	a4,-160(s0)	# tmp203, list9
	ld	a4,8(a5)		# tmp204,
	sd	a4,-152(s0)	# tmp204, list9
	ld	a5,16(a5)		# tmp205,
	sd	a5,-144(s0)	# tmp205, list9
# problem127.c:48:     assert(func0(list9, 6) == false);
	addi	a5,s0,-160	#, tmp206,
	li	a1,6		#,
	mv	a0,a5	#, tmp206
	call	func0		#
	mv	a5,a0	# tmp207,
# problem127.c:48:     assert(func0(list9, 6) == false);
	xori	a5,a5,1	#, tmp208, _13
	andi	a5,a5,0xff	# _14, tmp208
	bne	a5,zero,.L18	#, _14,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,48		#,
	lla	a1,.LC9	#,
	lla	a0,.LC19	#,
	call	__assert_fail@plt	#
.L18:
# problem127.c:50:     int list10[] = {1, 2, 3, 3, 3, 4};
	lla	a5,.LC6	# tmp209,
	ld	a4,0(a5)		# tmp210,
	sd	a4,-136(s0)	# tmp210, list10
	ld	a4,8(a5)		# tmp211,
	sd	a4,-128(s0)	# tmp211, list10
	ld	a5,16(a5)		# tmp212,
	sd	a5,-120(s0)	# tmp212, list10
# problem127.c:51:     assert(func0(list10, 6) == false);
	addi	a5,s0,-136	#, tmp213,
	li	a1,6		#,
	mv	a0,a5	#, tmp213
	call	func0		#
	mv	a5,a0	# tmp214,
# problem127.c:51:     assert(func0(list10, 6) == false);
	xori	a5,a5,1	#, tmp215, _15
	andi	a5,a5,0xff	# _16, tmp215
	bne	a5,zero,.L19	#, _16,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,51		#,
	lla	a1,.LC9	#,
	lla	a0,.LC20	#,
	call	__assert_fail@plt	#
.L19:
# problem127.c:53:     int list11[] = {1, 2, 2, 3, 3, 4};
	lla	a5,.LC7	# tmp216,
	ld	a4,0(a5)		# tmp217,
	sd	a4,-112(s0)	# tmp217, list11
	ld	a4,8(a5)		# tmp218,
	sd	a4,-104(s0)	# tmp218, list11
	ld	a5,16(a5)		# tmp219,
	sd	a5,-96(s0)	# tmp219, list11
# problem127.c:54:     assert(func0(list11, 6) == true);
	addi	a5,s0,-112	#, tmp220,
	li	a1,6		#,
	mv	a0,a5	#, tmp220
	call	func0		#
	mv	a5,a0	# tmp221,
# problem127.c:54:     assert(func0(list11, 6) == true);
	bne	a5,zero,.L20	#, _17,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,54		#,
	lla	a1,.LC9	#,
	lla	a0,.LC21	#,
	call	__assert_fail@plt	#
.L20:
# problem127.c:56:     int list12[] = {1, 2, 3, 4};
	lla	a5,.LC8	# tmp222,
	ld	a4,0(a5)		# tmp223,
	sd	a4,-248(s0)	# tmp223, list12
	ld	a5,8(a5)		# tmp224,
	sd	a5,-240(s0)	# tmp224, list12
# problem127.c:57:     assert(func0(list12, 4) == true);
	addi	a5,s0,-248	#, tmp225,
	li	a1,4		#,
	mv	a0,a5	#, tmp225
	call	func0		#
	mv	a5,a0	# tmp226,
# problem127.c:57:     assert(func0(list12, 4) == true);
	bne	a5,zero,.L21	#, _18,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,57		#,
	lla	a1,.LC9	#,
	lla	a0,.LC22	#,
	call	__assert_fail@plt	#
.L21:
# problem127.c:59:     return 0;
	li	a5,0		# _60,
# problem127.c:60: }
	mv	a4,a5	# <retval>, _60
	la	a5,__stack_chk_guard		# tmp228,
	ld	a3, -24(s0)	# tmp231, D.2814
	ld	a5, 0(a5)	# tmp229, __stack_chk_guard
	xor	a5, a3, a5	# tmp229, tmp231
	li	a3, 0	# tmp231
	beq	a5,zero,.L23	#, tmp229,,
	call	__stack_chk_fail@plt	#
.L23:
	mv	a0,a4	#, <retval>
	ld	ra,280(sp)		#,
	.cfi_restore 1
	ld	s0,272(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 288
	addi	sp,sp,288	#,,
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
