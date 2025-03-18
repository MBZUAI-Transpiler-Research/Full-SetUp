	.file	"problem69.c"
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
	sd	a0,-40(s0)	# arr, arr
	mv	a5,a1	# tmp150, length
	sd	a2,-56(s0)	# output, output
	sw	a5,-44(s0)	# tmp151, length
# problem69.c:5:     int smallestEven = INT_MAX;
	li	a5,-2147483648		# tmp153,
	addi	a5,a5,-1	#, tmp152, tmp153
	sw	a5,-28(s0)	# tmp152, smallestEven
# problem69.c:6:     int index = -1;
	li	a5,-1		# tmp154,
	sw	a5,-24(s0)	# tmp154, index
# problem69.c:8:     for (int i = 0; i < length; ++i) {
	sw	zero,-20(s0)	#, i
# problem69.c:8:     for (int i = 0; i < length; ++i) {
	j	.L2		#
.L5:
# problem69.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp155, arr
	add	a5,a4,a5	# _2, _3, tmp155
	lw	a5,0(a5)		# _4, *_3
# problem69.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	sext.w	a5,a5	# _5, _4
	andi	a5,a5,1	#, tmp157, tmp156
	sext.w	a5,a5	# _6, tmp157
# problem69.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	bne	a5,zero,.L3	#, _6,,
# problem69.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	lw	a5,-20(s0)		# _7, i
	slli	a5,a5,2	#, _8, _7
	ld	a4,-40(s0)		# tmp158, arr
	add	a5,a4,a5	# _8, _9, tmp158
	lw	a4,0(a5)		# _10, *_9
# problem69.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	lw	a5,-28(s0)		# tmp160, smallestEven
	sext.w	a5,a5	# tmp161, tmp159
	bgt	a5,a4,.L4	#, tmp161, tmp162,
# problem69.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	lw	a5,-24(s0)		# tmp164, index
	sext.w	a4,a5	# tmp165, tmp163
	li	a5,-1		# tmp166,
	bne	a4,a5,.L3	#, tmp165, tmp166,
.L4:
# problem69.c:10:             smallestEven = arr[i];
	lw	a5,-20(s0)		# _11, i
	slli	a5,a5,2	#, _12, _11
	ld	a4,-40(s0)		# tmp167, arr
	add	a5,a4,a5	# _12, _13, tmp167
# problem69.c:10:             smallestEven = arr[i];
	lw	a5,0(a5)		# tmp168, *_13
	sw	a5,-28(s0)	# tmp168, smallestEven
# problem69.c:11:             index = i;
	lw	a5,-20(s0)		# tmp169, i
	sw	a5,-24(s0)	# tmp169, index
.L3:
# problem69.c:8:     for (int i = 0; i < length; ++i) {
	lw	a5,-20(s0)		# tmp172, i
	addiw	a5,a5,1	#, tmp170, tmp171
	sw	a5,-20(s0)	# tmp170, i
.L2:
# problem69.c:8:     for (int i = 0; i < length; ++i) {
	lw	a5,-20(s0)		# tmp174, i
	mv	a4,a5	# tmp173, tmp174
	lw	a5,-44(s0)		# tmp176, length
	sext.w	a4,a4	# tmp177, tmp173
	sext.w	a5,a5	# tmp178, tmp175
	blt	a4,a5,.L5	#, tmp177, tmp178,
# problem69.c:15:     if (index == -1) {
	lw	a5,-24(s0)		# tmp180, index
	sext.w	a4,a5	# tmp181, tmp179
	li	a5,-1		# tmp182,
	bne	a4,a5,.L6	#, tmp181, tmp182,
# problem69.c:16:         return NULL;
	li	a5,0		# _20,
	j	.L7		#
.L6:
# problem69.c:19:     output[0] = smallestEven;
	ld	a5,-56(s0)		# tmp183, output
	lw	a4,-28(s0)		# tmp184, smallestEven
	sw	a4,0(a5)	# tmp184, *output_27(D)
# problem69.c:20:     output[1] = index;
	ld	a5,-56(s0)		# tmp185, output
	addi	a5,a5,4	#, _14, tmp185
# problem69.c:20:     output[1] = index;
	lw	a4,-24(s0)		# tmp186, index
	sw	a4,0(a5)	# tmp186, *_14
# problem69.c:21:     return output;
	ld	a5,-56(s0)		# _20, output
.L7:
# problem69.c:22: }
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
	mv	a5,a2	# tmp144, a_length
	mv	a4,a3	# tmp146, b_length
	sw	a5,-52(s0)	# tmp145, a_length
	mv	a5,a4	# tmp147, tmp146
	sw	a5,-56(s0)	# tmp147, b_length
# problem69.c:31:     if (a_length != b_length) return 0;
	lw	a5,-52(s0)		# tmp149, a_length
	mv	a4,a5	# tmp148, tmp149
	lw	a5,-56(s0)		# tmp151, b_length
	sext.w	a4,a4	# tmp152, tmp148
	sext.w	a5,a5	# tmp153, tmp150
	beq	a4,a5,.L9	#, tmp152, tmp153,
# problem69.c:31:     if (a_length != b_length) return 0;
	li	a5,0		# _10,
# problem69.c:31:     if (a_length != b_length) return 0;
	j	.L10		#
.L9:
# problem69.c:32:     for (int i = 0; i < a_length; ++i) {
	sw	zero,-20(s0)	#, i
# problem69.c:32:     for (int i = 0; i < a_length; ++i) {
	j	.L11		#
.L13:
# problem69.c:33:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp154, a
	add	a5,a4,a5	# _2, _3, tmp154
	lw	a3,0(a5)		# _4, *_3
# problem69.c:33:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-48(s0)		# tmp155, b
	add	a5,a4,a5	# _6, _7, tmp155
	lw	a5,0(a5)		# _8, *_7
# problem69.c:33:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp156, _4
	beq	a4,a5,.L12	#, tmp156, tmp157,
# problem69.c:33:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
# problem69.c:33:         if (a[i] != b[i]) return 0;
	j	.L10		#
.L12:
# problem69.c:32:     for (int i = 0; i < a_length; ++i) {
	lw	a5,-20(s0)		# tmp160, i
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-20(s0)	# tmp158, i
.L11:
# problem69.c:32:     for (int i = 0; i < a_length; ++i) {
	lw	a5,-20(s0)		# tmp162, i
	mv	a4,a5	# tmp161, tmp162
	lw	a5,-52(s0)		# tmp164, a_length
	sext.w	a4,a4	# tmp165, tmp161
	sext.w	a5,a5	# tmp166, tmp163
	blt	a4,a5,.L13	#, tmp165, tmp166,
# problem69.c:35:     return 1;
	li	a5,1		# _10,
.L10:
# problem69.c:36: }
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
.LC5:
	.string	"problem69.c"
	.align	3
.LC6:
	.string	"issame(result, expect1, 2, 2)"
	.align	3
.LC7:
	.string	"issame(result, expect2, 2, 2)"
	.align	3
.LC8:
	.string	"result == NULL"
	.align	3
.LC9:
	.string	"issame(result, expect4, 2, 2)"
	.align	3
.LC10:
	.string	"issame(result, expect5, 2, 2)"
	.align	3
.LC11:
	.string	"issame(result, expect6, 2, 2)"
	.align	3
.LC12:
	.string	"issame(result, expect7, 2, 2)"
	.align	3
.LC0:
	.word	5
	.word	0
	.word	3
	.word	0
	.word	4
	.word	2
	.align	3
.LC1:
	.word	1
	.word	2
	.word	3
	.word	0
	.word	5
	.word	3
	.align	3
.LC2:
	.word	5
	.word	4
	.word	8
	.word	4
	.word	8
	.align	3
.LC3:
	.word	7
	.word	6
	.word	7
	.word	1
	.align	3
.LC4:
	.word	7
	.word	9
	.word	7
	.word	1
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-240	#,,
	.cfi_def_cfa_offset 240
	sd	ra,232(sp)	#,
	sd	s0,224(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,240	#,,
	.cfi_def_cfa 8, 0
# problem69.c:38: int main() {
	la	a5,__stack_chk_guard		# tmp142,
	ld	a4, 0(a5)	# tmp210, __stack_chk_guard
	sd	a4, -24(s0)	# tmp210, D.3343
	li	a4, 0	# tmp210
# problem69.c:42:     int test1[] = {4, 2, 3};
	li	a5,4		# tmp143,
	sw	a5,-160(s0)	# tmp143, test1[0]
	li	a5,2		# tmp144,
	sw	a5,-156(s0)	# tmp144, test1[1]
	li	a5,3		# tmp145,
	sw	a5,-152(s0)	# tmp145, test1[2]
# problem69.c:43:     int expect1[] = {2, 1};
	li	a5,2		# tmp146,
	sw	a5,-208(s0)	# tmp146, expect1[0]
	li	a5,1		# tmp147,
	sw	a5,-204(s0)	# tmp147, expect1[1]
# problem69.c:44:     result = func0(test1, 3, output);
	addi	a4,s0,-216	#, tmp148,
	addi	a5,s0,-160	#, tmp149,
	mv	a2,a4	#, tmp148
	li	a1,3		#,
	mv	a0,a5	#, tmp149
	call	func0		#
	sd	a0,-232(s0)	#, result
# problem69.c:45:     assert(issame(result, expect1, 2, 2));
	addi	a5,s0,-208	#, tmp150,
	li	a3,2		#,
	li	a2,2		#,
	mv	a1,a5	#, tmp150
	ld	a0,-232(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp151,
# problem69.c:45:     assert(issame(result, expect1, 2, 2));
	bne	a5,zero,.L15	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,45		#,
	lla	a1,.LC5	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L15:
# problem69.c:47:     int test2[] = {1, 2, 3};
	li	a5,1		# tmp152,
	sw	a5,-144(s0)	# tmp152, test2[0]
	li	a5,2		# tmp153,
	sw	a5,-140(s0)	# tmp153, test2[1]
	li	a5,3		# tmp154,
	sw	a5,-136(s0)	# tmp154, test2[2]
# problem69.c:48:     int expect2[] = {2, 1};
	li	a5,2		# tmp155,
	sw	a5,-200(s0)	# tmp155, expect2[0]
	li	a5,1		# tmp156,
	sw	a5,-196(s0)	# tmp156, expect2[1]
# problem69.c:49:     result = func0(test2, 3, output);
	addi	a4,s0,-216	#, tmp157,
	addi	a5,s0,-144	#, tmp158,
	mv	a2,a4	#, tmp157
	li	a1,3		#,
	mv	a0,a5	#, tmp158
	call	func0		#
	sd	a0,-232(s0)	#, result
# problem69.c:50:     assert(issame(result, expect2, 2, 2));
	addi	a5,s0,-200	#, tmp159,
	li	a3,2		#,
	li	a2,2		#,
	mv	a1,a5	#, tmp159
	ld	a0,-232(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp160,
# problem69.c:50:     assert(issame(result, expect2, 2, 2));
	bne	a5,zero,.L16	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,50		#,
	lla	a1,.LC5	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L16:
# problem69.c:53:     result = func0(test3, 0, output);
	addi	a4,s0,-216	#, tmp161,
	addi	a5,s0,-224	#, tmp162,
	mv	a2,a4	#, tmp161
	li	a1,0		#,
	mv	a0,a5	#, tmp162
	call	func0		#
	sd	a0,-232(s0)	#, result
# problem69.c:54:     assert(result == NULL);
	ld	a5,-232(s0)		# tmp163, result
	beq	a5,zero,.L17	#, tmp163,,
# problem69.c:54:     assert(result == NULL);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,54		#,
	lla	a1,.LC5	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L17:
# problem69.c:56:     int test4[] = {5, 0, 3, 0, 4, 2};
	lla	a5,.LC0	# tmp164,
	ld	a4,0(a5)		# tmp165,
	sd	a4,-72(s0)	# tmp165, test4
	ld	a4,8(a5)		# tmp166,
	sd	a4,-64(s0)	# tmp166, test4
	ld	a5,16(a5)		# tmp167,
	sd	a5,-56(s0)	# tmp167, test4
# problem69.c:57:     int expect4[] = {0, 1};
	sw	zero,-192(s0)	#, expect4[0]
	li	a5,1		# tmp168,
	sw	a5,-188(s0)	# tmp168, expect4[1]
# problem69.c:58:     result = func0(test4, 6, output);
	addi	a4,s0,-216	#, tmp169,
	addi	a5,s0,-72	#, tmp170,
	mv	a2,a4	#, tmp169
	li	a1,6		#,
	mv	a0,a5	#, tmp170
	call	func0		#
	sd	a0,-232(s0)	#, result
# problem69.c:59:     assert(issame(result, expect4, 2, 2));
	addi	a5,s0,-192	#, tmp171,
	li	a3,2		#,
	li	a2,2		#,
	mv	a1,a5	#, tmp171
	ld	a0,-232(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp172,
# problem69.c:59:     assert(issame(result, expect4, 2, 2));
	bne	a5,zero,.L18	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,59		#,
	lla	a1,.LC5	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L18:
# problem69.c:61:     int test5[] = {1, 2, 3, 0, 5, 3};
	lla	a5,.LC1	# tmp173,
	ld	a4,0(a5)		# tmp174,
	sd	a4,-48(s0)	# tmp174, test5
	ld	a4,8(a5)		# tmp175,
	sd	a4,-40(s0)	# tmp175, test5
	ld	a5,16(a5)		# tmp176,
	sd	a5,-32(s0)	# tmp176, test5
# problem69.c:62:     int expect5[] = {0, 3};
	sw	zero,-184(s0)	#, expect5[0]
	li	a5,3		# tmp177,
	sw	a5,-180(s0)	# tmp177, expect5[1]
# problem69.c:63:     result = func0(test5, 6, output);
	addi	a4,s0,-216	#, tmp178,
	addi	a5,s0,-48	#, tmp179,
	mv	a2,a4	#, tmp178
	li	a1,6		#,
	mv	a0,a5	#, tmp179
	call	func0		#
	sd	a0,-232(s0)	#, result
# problem69.c:64:     assert(issame(result, expect5, 2, 2));
	addi	a5,s0,-184	#, tmp180,
	li	a3,2		#,
	li	a2,2		#,
	mv	a1,a5	#, tmp180
	ld	a0,-232(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp181,
# problem69.c:64:     assert(issame(result, expect5, 2, 2));
	bne	a5,zero,.L19	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,64		#,
	lla	a1,.LC5	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L19:
# problem69.c:66:     int test6[] = {5, 4, 8, 4, 8};
	lla	a5,.LC2	# tmp182,
	ld	a4,0(a5)		# tmp183,
	sd	a4,-96(s0)	# tmp183, test6
	ld	a4,8(a5)		# tmp184,
	sd	a4,-88(s0)	# tmp184, test6
	lw	a5,16(a5)		# tmp185,
	sw	a5,-80(s0)	# tmp185, test6
# problem69.c:67:     int expect6[] = {4, 1};
	li	a5,4		# tmp186,
	sw	a5,-176(s0)	# tmp186, expect6[0]
	li	a5,1		# tmp187,
	sw	a5,-172(s0)	# tmp187, expect6[1]
# problem69.c:68:     result = func0(test6, 5, output);
	addi	a4,s0,-216	#, tmp188,
	addi	a5,s0,-96	#, tmp189,
	mv	a2,a4	#, tmp188
	li	a1,5		#,
	mv	a0,a5	#, tmp189
	call	func0		#
	sd	a0,-232(s0)	#, result
# problem69.c:69:     assert(issame(result, expect6, 2, 2));
	addi	a5,s0,-176	#, tmp190,
	li	a3,2		#,
	li	a2,2		#,
	mv	a1,a5	#, tmp190
	ld	a0,-232(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp191,
# problem69.c:69:     assert(issame(result, expect6, 2, 2));
	bne	a5,zero,.L20	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,69		#,
	lla	a1,.LC5	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L20:
# problem69.c:71:     int test7[] = {7, 6, 7, 1};
	lla	a5,.LC3	# tmp192,
	ld	a4,0(a5)		# tmp193,
	sd	a4,-128(s0)	# tmp193, test7
	ld	a5,8(a5)		# tmp194,
	sd	a5,-120(s0)	# tmp194, test7
# problem69.c:72:     int expect7[] = {6, 1};
	li	a5,6		# tmp195,
	sw	a5,-168(s0)	# tmp195, expect7[0]
	li	a5,1		# tmp196,
	sw	a5,-164(s0)	# tmp196, expect7[1]
# problem69.c:73:     result = func0(test7, 4, output);
	addi	a4,s0,-216	#, tmp197,
	addi	a5,s0,-128	#, tmp198,
	mv	a2,a4	#, tmp197
	li	a1,4		#,
	mv	a0,a5	#, tmp198
	call	func0		#
	sd	a0,-232(s0)	#, result
# problem69.c:74:     assert(issame(result, expect7, 2, 2));
	addi	a5,s0,-168	#, tmp199,
	li	a3,2		#,
	li	a2,2		#,
	mv	a1,a5	#, tmp199
	ld	a0,-232(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp200,
# problem69.c:74:     assert(issame(result, expect7, 2, 2));
	bne	a5,zero,.L21	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,74		#,
	lla	a1,.LC5	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L21:
# problem69.c:76:     int test8[] = {7, 9, 7, 1};
	lla	a5,.LC4	# tmp201,
	ld	a4,0(a5)		# tmp202,
	sd	a4,-112(s0)	# tmp202, test8
	ld	a5,8(a5)		# tmp203,
	sd	a5,-104(s0)	# tmp203, test8
# problem69.c:77:     result = func0(test8, 4, output);
	addi	a4,s0,-216	#, tmp204,
	addi	a5,s0,-112	#, tmp205,
	mv	a2,a4	#, tmp204
	li	a1,4		#,
	mv	a0,a5	#, tmp205
	call	func0		#
	sd	a0,-232(s0)	#, result
# problem69.c:78:     assert(result == NULL);
	ld	a5,-232(s0)		# tmp206, result
	beq	a5,zero,.L22	#, tmp206,,
# problem69.c:78:     assert(result == NULL);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,78		#,
	lla	a1,.LC5	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L22:
# problem69.c:80:     return 0;
	li	a5,0		# _61,
# problem69.c:81: }
	mv	a4,a5	# <retval>, _61
	la	a5,__stack_chk_guard		# tmp208,
	ld	a3, -24(s0)	# tmp211, D.3343
	ld	a5, 0(a5)	# tmp209, __stack_chk_guard
	xor	a5, a3, a5	# tmp209, tmp211
	li	a3, 0	# tmp211
	beq	a5,zero,.L24	#, tmp209,,
	call	__stack_chk_fail@plt	#
.L24:
	mv	a0,a4	#, <retval>
	ld	ra,232(sp)		#,
	.cfi_restore 1
	ld	s0,224(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 240
	addi	sp,sp,240	#,,
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
