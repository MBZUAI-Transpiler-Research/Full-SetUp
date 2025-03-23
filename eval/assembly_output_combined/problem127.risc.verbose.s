	.file	"problem127.c"
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
	mv	a5,a1	# tmp101, lst_size
	sw	a5,-44(s0)	# tmp102, lst_size
# problem127.c:5:     if (lst_size == 0) return true;
	lw	a5,-44(s0)		# tmp104, lst_size
	sext.w	a5,a5	# tmp105, tmp103
	bne	a5,zero,.L2	#, tmp105,,
# problem127.c:5:     if (lst_size == 0) return true;
	li	a5,1		# _29,
	j	.L3		#
.L2:
# problem127.c:7:     for (int i = 1; i < lst_size; i++) {
	li	a5,1		# tmp106,
	sw	a5,-20(s0)	# tmp106, i
# problem127.c:7:     for (int i = 1; i < lst_size; i++) {
	j	.L4		#
.L7:
# problem127.c:8:         if (lst[i] < lst[i - 1]) return false;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp107, lst
	add	a5,a4,a5	# _2, _3, tmp107
	lw	a3,0(a5)		# _4, *_3
# problem127.c:8:         if (lst[i] < lst[i - 1]) return false;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	addi	a5,a5,-4	#, _7, _6
	ld	a4,-40(s0)		# tmp108, lst
	add	a5,a4,a5	# _7, _8, tmp108
	lw	a5,0(a5)		# _9, *_8
# problem127.c:8:         if (lst[i] < lst[i - 1]) return false;
	mv	a4,a3	# tmp109, _4
	bge	a4,a5,.L5	#, tmp109, tmp110,
# problem127.c:8:         if (lst[i] < lst[i - 1]) return false;
	li	a5,0		# _29,
	j	.L3		#
.L5:
# problem127.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	lw	a5,-20(s0)		# tmp112, i
	sext.w	a4,a5	# tmp113, tmp111
	li	a5,1		# tmp114,
	ble	a4,a5,.L6	#, tmp113, tmp114,
# problem127.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	lw	a5,-20(s0)		# _10, i
	slli	a5,a5,2	#, _11, _10
	ld	a4,-40(s0)		# tmp115, lst
	add	a5,a4,a5	# _11, _12, tmp115
	lw	a3,0(a5)		# _13, *_12
# problem127.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	lw	a5,-20(s0)		# _14, i
	slli	a5,a5,2	#, _15, _14
	addi	a5,a5,-4	#, _16, _15
	ld	a4,-40(s0)		# tmp116, lst
	add	a5,a4,a5	# _16, _17, tmp116
	lw	a5,0(a5)		# _18, *_17
# problem127.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	mv	a4,a3	# tmp117, _13
	bne	a4,a5,.L6	#, tmp117, tmp118,
# problem127.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	lw	a5,-20(s0)		# _19, i
	slli	a5,a5,2	#, _20, _19
	ld	a4,-40(s0)		# tmp119, lst
	add	a5,a4,a5	# _20, _21, tmp119
	lw	a3,0(a5)		# _22, *_21
# problem127.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	lw	a5,-20(s0)		# _23, i
	slli	a5,a5,2	#, _24, _23
	addi	a5,a5,-8	#, _25, _24
	ld	a4,-40(s0)		# tmp120, lst
	add	a5,a4,a5	# _25, _26, tmp120
	lw	a5,0(a5)		# _27, *_26
# problem127.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	mv	a4,a3	# tmp121, _22
	bne	a4,a5,.L6	#, tmp121, tmp122,
# problem127.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	li	a5,0		# _29,
	j	.L3		#
.L6:
# problem127.c:7:     for (int i = 1; i < lst_size; i++) {
	lw	a5,-20(s0)		# tmp125, i
	addiw	a5,a5,1	#, tmp123, tmp124
	sw	a5,-20(s0)	# tmp123, i
.L4:
# problem127.c:7:     for (int i = 1; i < lst_size; i++) {
	lw	a5,-20(s0)		# tmp127, i
	mv	a4,a5	# tmp126, tmp127
	lw	a5,-44(s0)		# tmp129, lst_size
	sext.w	a4,a4	# tmp130, tmp126
	sext.w	a5,a5	# tmp131, tmp128
	blt	a4,a5,.L7	#, tmp130, tmp131,
# problem127.c:11:     return true;
	li	a5,1		# _29,
.L3:
# problem127.c:12: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
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
	addi	sp,sp,-288	#,,
	sd	ra,280(sp)	#,
	sd	s0,272(sp)	#,
	addi	s0,sp,288	#,,
# problem127.c:20: int main() {
	la	a5,__stack_chk_guard		# tmp92,
	ld	a4, 0(a5)	# tmp168, __stack_chk_guard
	sd	a4, -24(s0)	# tmp168, D.1996
	li	a4, 0	# tmp168
# problem127.c:21:     int list1[] = {5};
	li	a5,5		# tmp93,
	sw	a5,-280(s0)	# tmp93, list1[0]
# problem127.c:22:     assert(func0(list1, 1) == true);
	addi	a5,s0,-280	#, tmp94,
	li	a1,1		#,
	mv	a0,a5	#, tmp94
	call	func0		#
	mv	a5,a0	# tmp95,
	bne	a5,zero,.L9	#, _1,,
# problem127.c:22:     assert(func0(list1, 1) == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC9	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L9:
# problem127.c:24:     int list2[] = {1, 2, 3, 4, 5};
	lla	a5,.LC0	# tmp96,
	ld	a4,0(a5)		# tmp97,
	sd	a4,-232(s0)	# tmp97, list2
	ld	a4,8(a5)		# tmp98,
	sd	a4,-224(s0)	# tmp98, list2
	lw	a5,16(a5)		# tmp99,
	sw	a5,-216(s0)	# tmp99, list2
# problem127.c:25:     assert(func0(list2, 5) == true);
	addi	a5,s0,-232	#, tmp100,
	li	a1,5		#,
	mv	a0,a5	#, tmp100
	call	func0		#
	mv	a5,a0	# tmp101,
	bne	a5,zero,.L10	#, _2,,
# problem127.c:25:     assert(func0(list2, 5) == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC9	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L10:
# problem127.c:27:     int list3[] = {1, 3, 2, 4, 5};
	lla	a5,.LC1	# tmp102,
	ld	a4,0(a5)		# tmp103,
	sd	a4,-208(s0)	# tmp103, list3
	ld	a4,8(a5)		# tmp104,
	sd	a4,-200(s0)	# tmp104, list3
	lw	a5,16(a5)		# tmp105,
	sw	a5,-192(s0)	# tmp105, list3
# problem127.c:28:     assert(func0(list3, 5) == false);
	addi	a5,s0,-208	#, tmp106,
	li	a1,5		#,
	mv	a0,a5	#, tmp106
	call	func0		#
	mv	a5,a0	# tmp107,
	xori	a5,a5,1	#, tmp108, _3
	andi	a5,a5,0xff	# _4, tmp108
	bne	a5,zero,.L11	#, _4,,
# problem127.c:28:     assert(func0(list3, 5) == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC9	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L11:
# problem127.c:30:     int list4[] = {1, 2, 3, 4, 5, 6};
	lla	a5,.LC2	# tmp109,
	ld	a4,0(a5)		# tmp110,
	sd	a4,-184(s0)	# tmp110, list4
	ld	a4,8(a5)		# tmp111,
	sd	a4,-176(s0)	# tmp111, list4
	ld	a5,16(a5)		# tmp112,
	sd	a5,-168(s0)	# tmp112, list4
# problem127.c:31:     assert(func0(list4, 6) == true);
	addi	a5,s0,-184	#, tmp113,
	li	a1,6		#,
	mv	a0,a5	#, tmp113
	call	func0		#
	mv	a5,a0	# tmp114,
	bne	a5,zero,.L12	#, _5,,
# problem127.c:31:     assert(func0(list4, 6) == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC9	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L12:
# problem127.c:33:     int list5[] = {1, 2, 3, 4, 5, 6, 7};
	lla	a5,.LC3	# tmp115,
	ld	a2,0(a5)		# tmp116,
	ld	a3,8(a5)		# tmp117,
	ld	a4,16(a5)		# tmp118,
	sd	a2,-88(s0)	# tmp116, list5
	sd	a3,-80(s0)	# tmp117, list5
	sd	a4,-72(s0)	# tmp118, list5
	lw	a5,24(a5)		# tmp119,
	sw	a5,-64(s0)	# tmp119, list5
# problem127.c:34:     assert(func0(list5, 7) == true);
	addi	a5,s0,-88	#, tmp120,
	li	a1,7		#,
	mv	a0,a5	#, tmp120
	call	func0		#
	mv	a5,a0	# tmp121,
	bne	a5,zero,.L13	#, _6,,
# problem127.c:34:     assert(func0(list5, 7) == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC9	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L13:
# problem127.c:36:     int list6[] = {1, 3, 2, 4, 5, 6, 7};
	lla	a5,.LC4	# tmp122,
	ld	a2,0(a5)		# tmp123,
	ld	a3,8(a5)		# tmp124,
	ld	a4,16(a5)		# tmp125,
	sd	a2,-56(s0)	# tmp123, list6
	sd	a3,-48(s0)	# tmp124, list6
	sd	a4,-40(s0)	# tmp125, list6
	lw	a5,24(a5)		# tmp126,
	sw	a5,-32(s0)	# tmp126, list6
# problem127.c:37:     assert(func0(list6, 7) == false);
	addi	a5,s0,-56	#, tmp127,
	li	a1,7		#,
	mv	a0,a5	#, tmp127
	call	func0		#
	mv	a5,a0	# tmp128,
	xori	a5,a5,1	#, tmp129, _7
	andi	a5,a5,0xff	# _8, tmp129
	bne	a5,zero,.L14	#, _8,,
# problem127.c:37:     assert(func0(list6, 7) == false);
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
	mv	a5,a0	# tmp130,
	bne	a5,zero,.L15	#, _9,,
# problem127.c:39:     assert(func0(NULL, 0) == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,39		#,
	lla	a1,.LC9	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L15:
# problem127.c:41:     int list7[] = {1};
	li	a5,1		# tmp131,
	sw	a5,-272(s0)	# tmp131, list7[0]
# problem127.c:42:     assert(func0(list7, 1) == true);
	addi	a5,s0,-272	#, tmp132,
	li	a1,1		#,
	mv	a0,a5	#, tmp132
	call	func0		#
	mv	a5,a0	# tmp133,
	bne	a5,zero,.L16	#, _10,,
# problem127.c:42:     assert(func0(list7, 1) == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,42		#,
	lla	a1,.LC9	#,
	lla	a0,.LC17	#,
	call	__assert_fail@plt	#
.L16:
# problem127.c:44:     int list8[] = {3, 2, 1};
	li	a5,3		# tmp134,
	sw	a5,-264(s0)	# tmp134, list8[0]
	li	a5,2		# tmp135,
	sw	a5,-260(s0)	# tmp135, list8[1]
	li	a5,1		# tmp136,
	sw	a5,-256(s0)	# tmp136, list8[2]
# problem127.c:45:     assert(func0(list8, 3) == false);
	addi	a5,s0,-264	#, tmp137,
	li	a1,3		#,
	mv	a0,a5	#, tmp137
	call	func0		#
	mv	a5,a0	# tmp138,
	xori	a5,a5,1	#, tmp139, _11
	andi	a5,a5,0xff	# _12, tmp139
	bne	a5,zero,.L17	#, _12,,
# problem127.c:45:     assert(func0(list8, 3) == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,45		#,
	lla	a1,.LC9	#,
	lla	a0,.LC18	#,
	call	__assert_fail@plt	#
.L17:
# problem127.c:47:     int list9[] = {1, 2, 2, 2, 3, 4};
	lla	a5,.LC5	# tmp140,
	ld	a4,0(a5)		# tmp141,
	sd	a4,-160(s0)	# tmp141, list9
	ld	a4,8(a5)		# tmp142,
	sd	a4,-152(s0)	# tmp142, list9
	ld	a5,16(a5)		# tmp143,
	sd	a5,-144(s0)	# tmp143, list9
# problem127.c:48:     assert(func0(list9, 6) == false);
	addi	a5,s0,-160	#, tmp144,
	li	a1,6		#,
	mv	a0,a5	#, tmp144
	call	func0		#
	mv	a5,a0	# tmp145,
	xori	a5,a5,1	#, tmp146, _13
	andi	a5,a5,0xff	# _14, tmp146
	bne	a5,zero,.L18	#, _14,,
# problem127.c:48:     assert(func0(list9, 6) == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,48		#,
	lla	a1,.LC9	#,
	lla	a0,.LC19	#,
	call	__assert_fail@plt	#
.L18:
# problem127.c:50:     int list10[] = {1, 2, 3, 3, 3, 4};
	lla	a5,.LC6	# tmp147,
	ld	a4,0(a5)		# tmp148,
	sd	a4,-136(s0)	# tmp148, list10
	ld	a4,8(a5)		# tmp149,
	sd	a4,-128(s0)	# tmp149, list10
	ld	a5,16(a5)		# tmp150,
	sd	a5,-120(s0)	# tmp150, list10
# problem127.c:51:     assert(func0(list10, 6) == false);
	addi	a5,s0,-136	#, tmp151,
	li	a1,6		#,
	mv	a0,a5	#, tmp151
	call	func0		#
	mv	a5,a0	# tmp152,
	xori	a5,a5,1	#, tmp153, _15
	andi	a5,a5,0xff	# _16, tmp153
	bne	a5,zero,.L19	#, _16,,
# problem127.c:51:     assert(func0(list10, 6) == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,51		#,
	lla	a1,.LC9	#,
	lla	a0,.LC20	#,
	call	__assert_fail@plt	#
.L19:
# problem127.c:53:     int list11[] = {1, 2, 2, 3, 3, 4};
	lla	a5,.LC7	# tmp154,
	ld	a4,0(a5)		# tmp155,
	sd	a4,-112(s0)	# tmp155, list11
	ld	a4,8(a5)		# tmp156,
	sd	a4,-104(s0)	# tmp156, list11
	ld	a5,16(a5)		# tmp157,
	sd	a5,-96(s0)	# tmp157, list11
# problem127.c:54:     assert(func0(list11, 6) == true);
	addi	a5,s0,-112	#, tmp158,
	li	a1,6		#,
	mv	a0,a5	#, tmp158
	call	func0		#
	mv	a5,a0	# tmp159,
	bne	a5,zero,.L20	#, _17,,
# problem127.c:54:     assert(func0(list11, 6) == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,54		#,
	lla	a1,.LC9	#,
	lla	a0,.LC21	#,
	call	__assert_fail@plt	#
.L20:
# problem127.c:56:     int list12[] = {1, 2, 3, 4};
	lla	a5,.LC8	# tmp160,
	ld	a4,0(a5)		# tmp161,
	sd	a4,-248(s0)	# tmp161, list12
	ld	a5,8(a5)		# tmp162,
	sd	a5,-240(s0)	# tmp162, list12
# problem127.c:57:     assert(func0(list12, 4) == true);
	addi	a5,s0,-248	#, tmp163,
	li	a1,4		#,
	mv	a0,a5	#, tmp163
	call	func0		#
	mv	a5,a0	# tmp164,
	bne	a5,zero,.L21	#, _18,,
# problem127.c:57:     assert(func0(list12, 4) == true);
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
	la	a5,__stack_chk_guard		# tmp166,
	ld	a3, -24(s0)	# tmp169, D.1996
	ld	a5, 0(a5)	# tmp167, __stack_chk_guard
	xor	a5, a3, a5	# tmp167, tmp169
	li	a3, 0	# tmp169
	beq	a5,zero,.L23	#, tmp167,,
	call	__stack_chk_fail@plt	#
.L23:
	mv	a0,a4	#, <retval>
	ld	ra,280(sp)		#,
	ld	s0,272(sp)		#,
	addi	sp,sp,288	#,,
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
