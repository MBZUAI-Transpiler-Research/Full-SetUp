	.file	"problem95.c"
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
	sd	a0,-56(s0)	# lst, lst
	mv	a5,a1	# tmp142, size
	sw	a5,-60(s0)	# tmp143, size
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
	ld	a4,-56(s0)		# tmp144, lst
	add	a5,a4,a5	# _2, _3, tmp144
# problem95.c:7:         num = lst[i];
	lw	a5,0(a5)		# tmp145, *_3
	sw	a5,-20(s0)	# tmp145, num
# problem95.c:8:         if (num > 1) {
	lw	a5,-20(s0)		# tmp147, num
	sext.w	a4,a5	# tmp148, tmp146
	li	a5,1		# tmp149,
	ble	a4,a5,.L3	#, tmp148, tmp149,
# problem95.c:9:             int prime = 1;
	li	a5,1		# tmp150,
	sw	a5,-28(s0)	# tmp150, prime
# problem95.c:10:             for (int j = 2; j * j <= num; ++j) {
	li	a5,2		# tmp151,
	sw	a5,-24(s0)	# tmp151, j
# problem95.c:10:             for (int j = 2; j * j <= num; ++j) {
	j	.L4		#
.L7:
# problem95.c:11:                 if (num % j == 0) {
	lw	a5,-20(s0)		# tmp154, num
	mv	a4,a5	# tmp153, tmp154
	lw	a5,-24(s0)		# tmp157, j
	remw	a5,a4,a5	# tmp156, tmp155, tmp153
	sext.w	a5,a5	# _4, tmp155
# problem95.c:11:                 if (num % j == 0) {
	bne	a5,zero,.L5	#, _4,,
# problem95.c:12:                     prime = 0;
	sw	zero,-28(s0)	#, prime
# problem95.c:13:                     break;
	j	.L6		#
.L5:
# problem95.c:10:             for (int j = 2; j * j <= num; ++j) {
	lw	a5,-24(s0)		# tmp160, j
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-24(s0)	# tmp158, j
.L4:
# problem95.c:10:             for (int j = 2; j * j <= num; ++j) {
	lw	a5,-24(s0)		# tmp163, j
	mulw	a5,a5,a5	# tmp161, tmp162, tmp162
	sext.w	a4,a5	# _5, tmp161
# problem95.c:10:             for (int j = 2; j * j <= num; ++j) {
	lw	a5,-20(s0)		# tmp165, num
	sext.w	a5,a5	# tmp166, tmp164
	bge	a5,a4,.L7	#, tmp166, tmp167,
.L6:
# problem95.c:16:             if (prime) {
	lw	a5,-28(s0)		# tmp169, prime
	sext.w	a5,a5	# tmp170, tmp168
	beq	a5,zero,.L3	#, tmp170,,
# problem95.c:17:                 largest = num > largest ? num : largest;
	lw	a5,-20(s0)		# tmp173, num
	mv	a2,a5	# tmp172, tmp173
	lw	a5,-40(s0)		# tmp174, largest
	sext.w	a3,a5	# tmp175, tmp171
	sext.w	a4,a2	# tmp176, tmp172
	bge	a3,a4,.L8	#, tmp175, tmp176,
	mv	a5,a2	# tmp171, tmp172
.L8:
	sw	a5,-40(s0)	# tmp171, largest
.L3:
# problem95.c:6:     for (int i = 0; i < size; ++i) {
	lw	a5,-32(s0)		# tmp179, i
	addiw	a5,a5,1	#, tmp177, tmp178
	sw	a5,-32(s0)	# tmp177, i
.L2:
# problem95.c:6:     for (int i = 0; i < size; ++i) {
	lw	a5,-32(s0)		# tmp181, i
	mv	a4,a5	# tmp180, tmp181
	lw	a5,-60(s0)		# tmp183, size
	sext.w	a4,a4	# tmp184, tmp180
	sext.w	a5,a5	# tmp185, tmp182
	blt	a4,a5,.L9	#, tmp184, tmp185,
# problem95.c:22:     while (largest > 0) {
	j	.L10		#
.L11:
# problem95.c:23:         sum += largest % 10;
	lw	a5,-40(s0)		# tmp188, largest
	mv	a4,a5	# tmp187, tmp188
	li	a5,10		# tmp190,
	remw	a5,a4,a5	# tmp190, tmp189, tmp187
	sext.w	a5,a5	# _6, tmp189
# problem95.c:23:         sum += largest % 10;
	lw	a4,-36(s0)		# tmp193, sum
	addw	a5,a4,a5	# _6, tmp191, tmp192
	sw	a5,-36(s0)	# tmp191, sum
# problem95.c:24:         largest /= 10;
	lw	a5,-40(s0)		# tmp196, largest
	mv	a4,a5	# tmp195, tmp196
	li	a5,10		# tmp198,
	divw	a5,a4,a5	# tmp198, tmp197, tmp195
	sw	a5,-40(s0)	# tmp197, largest
.L10:
# problem95.c:22:     while (largest > 0) {
	lw	a5,-40(s0)		# tmp200, largest
	sext.w	a5,a5	# tmp201, tmp199
	bgt	a5,zero,.L11	#, tmp201,,
# problem95.c:27:     return sum;
	lw	a5,-36(s0)		# _18, sum
# problem95.c:28: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
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
.LFB1:
	.cfi_startproc
	addi	sp,sp,-400	#,,
	.cfi_def_cfa_offset 400
	sd	ra,392(sp)	#,
	sd	s0,384(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,400	#,,
	.cfi_def_cfa 8, 0
# problem95.c:34: int main() {
	la	a5,__stack_chk_guard		# tmp145,
	ld	a4, 0(a5)	# tmp240, __stack_chk_guard
	sd	a4, -24(s0)	# tmp240, D.2806
	li	a4, 0	# tmp240
# problem95.c:35:     int lst1[] = {0,3,2,1,3,5,7,4,5,5,5,2,181,32,4,32,3,2,32,324,4,3};
	lla	a5,.LC0	# tmp146,
	ld	t4,0(a5)		# tmp147,
	ld	t3,8(a5)		# tmp148,
	ld	t1,16(a5)		# tmp149,
	ld	a7,24(a5)		# tmp150,
	ld	a6,32(a5)		# tmp151,
	ld	a0,40(a5)		# tmp152,
	ld	a1,48(a5)		# tmp153,
	ld	a2,56(a5)		# tmp154,
	ld	a3,64(a5)		# tmp155,
	ld	a4,72(a5)		# tmp156,
	ld	a5,80(a5)		# tmp157,
	sd	t4,-112(s0)	# tmp147, lst1
	sd	t3,-104(s0)	# tmp148, lst1
	sd	t1,-96(s0)	# tmp149, lst1
	sd	a7,-88(s0)	# tmp150, lst1
	sd	a6,-80(s0)	# tmp151, lst1
	sd	a0,-72(s0)	# tmp152, lst1
	sd	a1,-64(s0)	# tmp153, lst1
	sd	a2,-56(s0)	# tmp154, lst1
	sd	a3,-48(s0)	# tmp155, lst1
	sd	a4,-40(s0)	# tmp156, lst1
	sd	a5,-32(s0)	# tmp157, lst1
# problem95.c:36:     assert(func0(lst1, sizeof(lst1)/sizeof(lst1[0])) == 10);
	addi	a5,s0,-112	#, tmp158,
	li	a1,22		#,
	mv	a0,a5	#, tmp158
	call	func0		#
	mv	a5,a0	# tmp159,
# problem95.c:36:     assert(func0(lst1, sizeof(lst1)/sizeof(lst1[0])) == 10);
	mv	a4,a5	# tmp160, _1
	li	a5,10		# tmp161,
	beq	a4,a5,.L14	#, tmp160, tmp161,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,36		#,
	lla	a1,.LC7	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L14:
# problem95.c:38:     int lst2[] = {1,0,1,8,2,4597,2,1,3,40,1,2,1,2,4,2,5,1};
	lla	a5,.LC1	# tmp162,
	ld	t1,0(a5)		# tmp163,
	ld	a7,8(a5)		# tmp164,
	ld	a6,16(a5)		# tmp165,
	ld	a0,24(a5)		# tmp166,
	ld	a1,32(a5)		# tmp167,
	ld	a2,40(a5)		# tmp168,
	ld	a3,48(a5)		# tmp169,
	ld	a4,56(a5)		# tmp170,
	ld	a5,64(a5)		# tmp171,
	sd	t1,-184(s0)	# tmp163, lst2
	sd	a7,-176(s0)	# tmp164, lst2
	sd	a6,-168(s0)	# tmp165, lst2
	sd	a0,-160(s0)	# tmp166, lst2
	sd	a1,-152(s0)	# tmp167, lst2
	sd	a2,-144(s0)	# tmp168, lst2
	sd	a3,-136(s0)	# tmp169, lst2
	sd	a4,-128(s0)	# tmp170, lst2
	sd	a5,-120(s0)	# tmp171, lst2
# problem95.c:39:     assert(func0(lst2, sizeof(lst2)/sizeof(lst2[0])) == 25);
	addi	a5,s0,-184	#, tmp172,
	li	a1,18		#,
	mv	a0,a5	#, tmp172
	call	func0		#
	mv	a5,a0	# tmp173,
# problem95.c:39:     assert(func0(lst2, sizeof(lst2)/sizeof(lst2[0])) == 25);
	mv	a4,a5	# tmp174, _2
	li	a5,25		# tmp175,
	beq	a4,a5,.L15	#, tmp174, tmp175,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,39		#,
	lla	a1,.LC7	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L15:
# problem95.c:41:     int lst3[] = {1,3,1,32,5107,34,83278,109,163,23,2323,32,30,1,9,3};
	lla	a5,.LC2	# tmp176,
	ld	a7,0(a5)		# tmp177,
	ld	a6,8(a5)		# tmp178,
	ld	a0,16(a5)		# tmp179,
	ld	a1,24(a5)		# tmp180,
	ld	a2,32(a5)		# tmp181,
	ld	a3,40(a5)		# tmp182,
	ld	a4,48(a5)		# tmp183,
	ld	a5,56(a5)		# tmp184,
	sd	a7,-248(s0)	# tmp177, lst3
	sd	a6,-240(s0)	# tmp178, lst3
	sd	a0,-232(s0)	# tmp179, lst3
	sd	a1,-224(s0)	# tmp180, lst3
	sd	a2,-216(s0)	# tmp181, lst3
	sd	a3,-208(s0)	# tmp182, lst3
	sd	a4,-200(s0)	# tmp183, lst3
	sd	a5,-192(s0)	# tmp184, lst3
# problem95.c:42:     assert(func0(lst3, sizeof(lst3)/sizeof(lst3[0])) == 13);
	addi	a5,s0,-248	#, tmp185,
	li	a1,16		#,
	mv	a0,a5	#, tmp185
	call	func0		#
	mv	a5,a0	# tmp186,
# problem95.c:42:     assert(func0(lst3, sizeof(lst3)/sizeof(lst3[0])) == 13);
	mv	a4,a5	# tmp187, _3
	li	a5,13		# tmp188,
	beq	a4,a5,.L16	#, tmp187, tmp188,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,42		#,
	lla	a1,.LC7	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L16:
# problem95.c:44:     int lst4[] = {0,724,32,71,99,32,6,0,5,91,83,0,5,6};
	lla	a5,.LC3	# tmp189,
	ld	a6,0(a5)		# tmp190,
	ld	a0,8(a5)		# tmp191,
	ld	a1,16(a5)		# tmp192,
	ld	a2,24(a5)		# tmp193,
	ld	a3,32(a5)		# tmp194,
	ld	a4,40(a5)		# tmp195,
	ld	a5,48(a5)		# tmp196,
	sd	a6,-304(s0)	# tmp190, lst4
	sd	a0,-296(s0)	# tmp191, lst4
	sd	a1,-288(s0)	# tmp192, lst4
	sd	a2,-280(s0)	# tmp193, lst4
	sd	a3,-272(s0)	# tmp194, lst4
	sd	a4,-264(s0)	# tmp195, lst4
	sd	a5,-256(s0)	# tmp196, lst4
# problem95.c:45:     assert(func0(lst4, sizeof(lst4)/sizeof(lst4[0])) == 11);
	addi	a5,s0,-304	#, tmp197,
	li	a1,14		#,
	mv	a0,a5	#, tmp197
	call	func0		#
	mv	a5,a0	# tmp198,
# problem95.c:45:     assert(func0(lst4, sizeof(lst4)/sizeof(lst4[0])) == 11);
	mv	a4,a5	# tmp199, _4
	li	a5,11		# tmp200,
	beq	a4,a5,.L17	#, tmp199, tmp200,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,45		#,
	lla	a1,.LC7	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L17:
# problem95.c:47:     int lst5[] = {0,81,12,3,1,21};
	lla	a5,.LC4	# tmp201,
	ld	a4,0(a5)		# tmp202,
	sd	a4,-352(s0)	# tmp202, lst5
	ld	a4,8(a5)		# tmp203,
	sd	a4,-344(s0)	# tmp203, lst5
	ld	a5,16(a5)		# tmp204,
	sd	a5,-336(s0)	# tmp204, lst5
# problem95.c:48:     assert(func0(lst5, sizeof(lst5)/sizeof(lst5[0])) == 3);
	addi	a5,s0,-352	#, tmp205,
	li	a1,6		#,
	mv	a0,a5	#, tmp205
	call	func0		#
	mv	a5,a0	# tmp206,
# problem95.c:48:     assert(func0(lst5, sizeof(lst5)/sizeof(lst5[0])) == 3);
	mv	a4,a5	# tmp207, _5
	li	a5,3		# tmp208,
	beq	a4,a5,.L18	#, tmp207, tmp208,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,48		#,
	lla	a1,.LC7	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L18:
# problem95.c:50:     int lst6[] = {0,8,1,2,1,7};
	lla	a5,.LC5	# tmp209,
	ld	a4,0(a5)		# tmp210,
	sd	a4,-328(s0)	# tmp210, lst6
	ld	a4,8(a5)		# tmp211,
	sd	a4,-320(s0)	# tmp211, lst6
	ld	a5,16(a5)		# tmp212,
	sd	a5,-312(s0)	# tmp212, lst6
# problem95.c:51:     assert(func0(lst6, sizeof(lst6)/sizeof(lst6[0])) == 7);
	addi	a5,s0,-328	#, tmp213,
	li	a1,6		#,
	mv	a0,a5	#, tmp213
	call	func0		#
	mv	a5,a0	# tmp214,
# problem95.c:51:     assert(func0(lst6, sizeof(lst6)/sizeof(lst6[0])) == 7);
	mv	a4,a5	# tmp215, _6
	li	a5,7		# tmp216,
	beq	a4,a5,.L19	#, tmp215, tmp216,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,51		#,
	lla	a1,.LC7	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L19:
# problem95.c:53:     int lst7[] = {8191};
	li	a5,8192		# tmp218,
	addi	a5,a5,-1	#, tmp217, tmp218
	sw	a5,-392(s0)	# tmp217, lst7[0]
# problem95.c:54:     assert(func0(lst7, sizeof(lst7)/sizeof(lst7[0])) == 19);
	addi	a5,s0,-392	#, tmp219,
	li	a1,1		#,
	mv	a0,a5	#, tmp219
	call	func0		#
	mv	a5,a0	# tmp220,
# problem95.c:54:     assert(func0(lst7, sizeof(lst7)/sizeof(lst7[0])) == 19);
	mv	a4,a5	# tmp221, _7
	li	a5,19		# tmp222,
	beq	a4,a5,.L20	#, tmp221, tmp222,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,54		#,
	lla	a1,.LC7	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L20:
# problem95.c:56:     int lst8[] = {8191, 123456, 127, 7};
	lla	a5,.LC6	# tmp223,
	ld	a4,0(a5)		# tmp224,
	sd	a4,-368(s0)	# tmp224, lst8
	ld	a5,8(a5)		# tmp225,
	sd	a5,-360(s0)	# tmp225, lst8
# problem95.c:57:     assert(func0(lst8, sizeof(lst8)/sizeof(lst8[0])) == 19);
	addi	a5,s0,-368	#, tmp226,
	li	a1,4		#,
	mv	a0,a5	#, tmp226
	call	func0		#
	mv	a5,a0	# tmp227,
# problem95.c:57:     assert(func0(lst8, sizeof(lst8)/sizeof(lst8[0])) == 19);
	mv	a4,a5	# tmp228, _8
	li	a5,19		# tmp229,
	beq	a4,a5,.L21	#, tmp228, tmp229,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,57		#,
	lla	a1,.LC7	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L21:
# problem95.c:59:     int lst9[] = {127, 97, 8192};
	li	a5,127		# tmp230,
	sw	a5,-384(s0)	# tmp230, lst9[0]
	li	a5,97		# tmp231,
	sw	a5,-380(s0)	# tmp231, lst9[1]
	li	a5,8192		# tmp232,
	sw	a5,-376(s0)	# tmp232, lst9[2]
# problem95.c:60:     assert(func0(lst9, sizeof(lst9)/sizeof(lst9[0])) == 10);
	addi	a5,s0,-384	#, tmp233,
	li	a1,3		#,
	mv	a0,a5	#, tmp233
	call	func0		#
	mv	a5,a0	# tmp234,
# problem95.c:60:     assert(func0(lst9, sizeof(lst9)/sizeof(lst9[0])) == 10);
	mv	a4,a5	# tmp235, _9
	li	a5,10		# tmp236,
	beq	a4,a5,.L22	#, tmp235, tmp236,
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
	la	a5,__stack_chk_guard		# tmp238,
	ld	a3, -24(s0)	# tmp241, D.2806
	ld	a5, 0(a5)	# tmp239, __stack_chk_guard
	xor	a5, a3, a5	# tmp239, tmp241
	li	a3, 0	# tmp241
	beq	a5,zero,.L24	#, tmp239,,
	call	__stack_chk_fail@plt	#
.L24:
	mv	a0,a4	#, <retval>
	ld	ra,392(sp)		#,
	.cfi_restore 1
	ld	s0,384(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 400
	addi	sp,sp,400	#,,
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
