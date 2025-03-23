	.file	"problem71.c"
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
	addi	sp,sp,-80	#,,
	sd	s0,72(sp)	#,
	addi	s0,sp,80	#,,
	sd	a0,-56(s0)	# lst, lst
	mv	a5,a1	# tmp121, size
	sd	a2,-72(s0)	# out, out
	sw	a5,-60(s0)	# tmp122, size
# problem71.c:5:     for (int i = 0; i < size - 1; i++) {
	sw	zero,-40(s0)	#, i
# problem71.c:5:     for (int i = 0; i < size - 1; i++) {
	j	.L2		#
.L6:
# problem71.c:6:         for (int j = i + 1; j < size; j++) {
	lw	a5,-40(s0)		# tmp125, i
	addiw	a5,a5,1	#, tmp123, tmp124
	sw	a5,-36(s0)	# tmp123, j
# problem71.c:6:         for (int j = i + 1; j < size; j++) {
	j	.L3		#
.L5:
# problem71.c:7:             if (lst[i] > lst[j]) {
	lw	a5,-40(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-56(s0)		# tmp126, lst
	add	a5,a4,a5	# _2, _3, tmp126
	lw	a3,0(a5)		# _4, *_3
# problem71.c:7:             if (lst[i] > lst[j]) {
	lw	a5,-36(s0)		# _5, j
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp127, lst
	add	a5,a4,a5	# _6, _7, tmp127
	lw	a5,0(a5)		# _8, *_7
# problem71.c:7:             if (lst[i] > lst[j]) {
	mv	a4,a3	# tmp128, _4
	ble	a4,a5,.L4	#, tmp128, tmp129,
# problem71.c:8:                 int temp = lst[i];
	lw	a5,-40(s0)		# _9, i
	slli	a5,a5,2	#, _10, _9
	ld	a4,-56(s0)		# tmp130, lst
	add	a5,a4,a5	# _10, _11, tmp130
# problem71.c:8:                 int temp = lst[i];
	lw	a5,0(a5)		# tmp131, *_11
	sw	a5,-20(s0)	# tmp131, temp
# problem71.c:9:                 lst[i] = lst[j];
	lw	a5,-36(s0)		# _12, j
	slli	a5,a5,2	#, _13, _12
	ld	a4,-56(s0)		# tmp132, lst
	add	a4,a4,a5	# _13, _14, tmp132
# problem71.c:9:                 lst[i] = lst[j];
	lw	a5,-40(s0)		# _15, i
	slli	a5,a5,2	#, _16, _15
	ld	a3,-56(s0)		# tmp133, lst
	add	a5,a3,a5	# _16, _17, tmp133
# problem71.c:9:                 lst[i] = lst[j];
	lw	a4,0(a4)		# _18, *_14
# problem71.c:9:                 lst[i] = lst[j];
	sw	a4,0(a5)	# _18, *_17
# problem71.c:10:                 lst[j] = temp;
	lw	a5,-36(s0)		# _19, j
	slli	a5,a5,2	#, _20, _19
	ld	a4,-56(s0)		# tmp134, lst
	add	a5,a4,a5	# _20, _21, tmp134
# problem71.c:10:                 lst[j] = temp;
	lw	a4,-20(s0)		# tmp135, temp
	sw	a4,0(a5)	# tmp135, *_21
.L4:
# problem71.c:6:         for (int j = i + 1; j < size; j++) {
	lw	a5,-36(s0)		# tmp138, j
	addiw	a5,a5,1	#, tmp136, tmp137
	sw	a5,-36(s0)	# tmp136, j
.L3:
# problem71.c:6:         for (int j = i + 1; j < size; j++) {
	lw	a5,-36(s0)		# tmp140, j
	mv	a4,a5	# tmp139, tmp140
	lw	a5,-60(s0)		# tmp142, size
	sext.w	a4,a4	# tmp143, tmp139
	sext.w	a5,a5	# tmp144, tmp141
	blt	a4,a5,.L5	#, tmp143, tmp144,
# problem71.c:5:     for (int i = 0; i < size - 1; i++) {
	lw	a5,-40(s0)		# tmp147, i
	addiw	a5,a5,1	#, tmp145, tmp146
	sw	a5,-40(s0)	# tmp145, i
.L2:
# problem71.c:5:     for (int i = 0; i < size - 1; i++) {
	lw	a5,-60(s0)		# tmp150, size
	addiw	a5,a5,-1	#, tmp148, tmp149
	sext.w	a4,a5	# _22, tmp148
# problem71.c:5:     for (int i = 0; i < size - 1; i++) {
	lw	a5,-40(s0)		# tmp152, i
	sext.w	a5,a5	# tmp153, tmp151
	blt	a5,a4,.L6	#, tmp153, tmp154,
# problem71.c:15:     int l = 0, r = size - 1;
	sw	zero,-32(s0)	#, l
# problem71.c:15:     int l = 0, r = size - 1;
	lw	a5,-60(s0)		# tmp157, size
	addiw	a5,a5,-1	#, tmp155, tmp156
	sw	a5,-28(s0)	# tmp155, r
# problem71.c:16:     int index = 0;
	sw	zero,-24(s0)	#, index
# problem71.c:18:     while (l <= r) {
	j	.L7		#
.L9:
# problem71.c:19:         if (l == r) {
	lw	a5,-32(s0)		# tmp159, l
	mv	a4,a5	# tmp158, tmp159
	lw	a5,-28(s0)		# tmp161, r
	sext.w	a4,a4	# tmp162, tmp158
	sext.w	a5,a5	# tmp163, tmp160
	bne	a4,a5,.L8	#, tmp162, tmp163,
# problem71.c:20:             out[index++] = lst[l++];
	lw	a5,-32(s0)		# l.0_23, l
	addiw	a4,a5,1	#, tmp164, l.0_23
	sw	a4,-32(s0)	# tmp164, l
# problem71.c:20:             out[index++] = lst[l++];
	slli	a5,a5,2	#, _25, _24
	ld	a4,-56(s0)		# tmp165, lst
	add	a4,a4,a5	# _25, _26, tmp165
# problem71.c:20:             out[index++] = lst[l++];
	lw	a5,-24(s0)		# index.1_27, index
	addiw	a3,a5,1	#, tmp166, index.1_27
	sw	a3,-24(s0)	# tmp166, index
# problem71.c:20:             out[index++] = lst[l++];
	slli	a5,a5,2	#, _29, _28
	ld	a3,-72(s0)		# tmp167, out
	add	a5,a3,a5	# _29, _30, tmp167
# problem71.c:20:             out[index++] = lst[l++];
	lw	a4,0(a4)		# _31, *_26
# problem71.c:20:             out[index++] = lst[l++];
	sw	a4,0(a5)	# _31, *_30
	j	.L7		#
.L8:
# problem71.c:22:             out[index++] = lst[l++];
	lw	a5,-32(s0)		# l.2_32, l
	addiw	a4,a5,1	#, tmp168, l.2_32
	sw	a4,-32(s0)	# tmp168, l
# problem71.c:22:             out[index++] = lst[l++];
	slli	a5,a5,2	#, _34, _33
	ld	a4,-56(s0)		# tmp169, lst
	add	a4,a4,a5	# _34, _35, tmp169
# problem71.c:22:             out[index++] = lst[l++];
	lw	a5,-24(s0)		# index.3_36, index
	addiw	a3,a5,1	#, tmp170, index.3_36
	sw	a3,-24(s0)	# tmp170, index
# problem71.c:22:             out[index++] = lst[l++];
	slli	a5,a5,2	#, _38, _37
	ld	a3,-72(s0)		# tmp171, out
	add	a5,a3,a5	# _38, _39, tmp171
# problem71.c:22:             out[index++] = lst[l++];
	lw	a4,0(a4)		# _40, *_35
# problem71.c:22:             out[index++] = lst[l++];
	sw	a4,0(a5)	# _40, *_39
# problem71.c:23:             out[index++] = lst[r--];
	lw	a5,-28(s0)		# r.4_41, r
	addiw	a4,a5,-1	#, tmp172, r.4_41
	sw	a4,-28(s0)	# tmp172, r
# problem71.c:23:             out[index++] = lst[r--];
	slli	a5,a5,2	#, _43, _42
	ld	a4,-56(s0)		# tmp173, lst
	add	a4,a4,a5	# _43, _44, tmp173
# problem71.c:23:             out[index++] = lst[r--];
	lw	a5,-24(s0)		# index.5_45, index
	addiw	a3,a5,1	#, tmp174, index.5_45
	sw	a3,-24(s0)	# tmp174, index
# problem71.c:23:             out[index++] = lst[r--];
	slli	a5,a5,2	#, _47, _46
	ld	a3,-72(s0)		# tmp175, out
	add	a5,a3,a5	# _47, _48, tmp175
# problem71.c:23:             out[index++] = lst[r--];
	lw	a4,0(a4)		# _49, *_44
# problem71.c:23:             out[index++] = lst[r--];
	sw	a4,0(a5)	# _49, *_48
.L7:
# problem71.c:18:     while (l <= r) {
	lw	a5,-32(s0)		# tmp177, l
	mv	a4,a5	# tmp176, tmp177
	lw	a5,-28(s0)		# tmp179, r
	sext.w	a4,a4	# tmp180, tmp176
	sext.w	a5,a5	# tmp181, tmp178
	ble	a4,a5,.L9	#, tmp180, tmp181,
# problem71.c:26: }
	nop	
	nop	
	ld	s0,72(sp)		#,
	addi	sp,sp,80	#,,
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
	mv	a5,a2	# tmp82, size
	sw	a5,-52(s0)	# tmp83, size
# problem71.c:34:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# problem71.c:34:     for (int i = 0; i < size; i++) {
	j	.L11		#
.L14:
# problem71.c:35:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp84, a
	add	a5,a4,a5	# _2, _3, tmp84
	lw	a3,0(a5)		# _4, *_3
# problem71.c:35:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-48(s0)		# tmp85, b
	add	a5,a4,a5	# _6, _7, tmp85
	lw	a5,0(a5)		# _8, *_7
# problem71.c:35:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp86, _4
	beq	a4,a5,.L12	#, tmp86, tmp87,
# problem71.c:35:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
	j	.L13		#
.L12:
# problem71.c:34:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp90, i
	addiw	a5,a5,1	#, tmp88, tmp89
	sw	a5,-20(s0)	# tmp88, i
.L11:
# problem71.c:34:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp92, i
	mv	a4,a5	# tmp91, tmp92
	lw	a5,-52(s0)		# tmp94, size
	sext.w	a4,a4	# tmp95, tmp91
	sext.w	a5,a5	# tmp96, tmp93
	blt	a4,a5,.L14	#, tmp95, tmp96,
# problem71.c:37:     return 1;
	li	a5,1		# _10,
.L13:
# problem71.c:38: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC13:
	.string	"problem71.c"
	.align	3
.LC14:
	.string	"issame(e1, out1, 4)"
	.align	3
.LC15:
	.string	"issame(e2, out2, 5)"
	.align	3
.LC16:
	.string	"issame(e3, out3, 5)"
	.align	3
.LC17:
	.string	"issame(e4, out4, 6)"
	.align	3
.LC18:
	.string	"issame(e5, out5, 4)"
	.align	3
.LC19:
	.string	"issame(e6, out6, 0)"
	.align	3
.LC20:
	.string	"issame(e7, out7, 8)"
	.align	3
.LC21:
	.string	"issame(e8, out8, 8)"
	.align	3
.LC22:
	.string	"issame(e9, out9, 1)"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.align	3
.LC1:
	.word	1
	.word	4
	.word	2
	.word	3
	.align	3
.LC2:
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.align	3
.LC3:
	.word	5
	.word	9
	.word	6
	.word	8
	.word	7
	.align	3
.LC4:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.align	3
.LC5:
	.word	1
	.word	5
	.word	2
	.word	4
	.word	3
	.align	3
.LC6:
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	1
	.align	3
.LC7:
	.word	1
	.word	9
	.word	5
	.word	8
	.word	6
	.word	7
	.align	3
.LC8:
	.word	5
	.word	5
	.word	5
	.word	5
	.align	3
.LC9:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.align	3
.LC10:
	.word	1
	.word	8
	.word	2
	.word	7
	.word	3
	.word	6
	.word	4
	.word	5
	.align	3
.LC11:
	.word	0
	.word	2
	.word	2
	.word	2
	.word	5
	.word	5
	.word	-5
	.word	-5
	.align	3
.LC12:
	.word	-5
	.word	5
	.word	-5
	.word	5
	.word	0
	.word	2
	.word	2
	.word	2
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-576	#,,
	sd	ra,568(sp)	#,
	sd	s0,560(sp)	#,
	addi	s0,sp,576	#,,
# problem71.c:40: int main() {
	la	a5,__stack_chk_guard		# tmp83,
	ld	a4, 0(a5)	# tmp192, __stack_chk_guard
	sd	a4, -24(s0)	# tmp192, D.2727
	li	a4, 0	# tmp192
# problem71.c:41:     int a1[] = {1, 2, 3, 4};
	lla	a5,.LC0	# tmp84,
	ld	a4,0(a5)		# tmp85,
	sd	a4,-528(s0)	# tmp85, a1
	ld	a5,8(a5)		# tmp86,
	sd	a5,-520(s0)	# tmp86, a1
# problem71.c:42:     int e1[] = {1, 4, 2, 3};
	lla	a5,.LC1	# tmp87,
	ld	a4,0(a5)		# tmp88,
	sd	a4,-512(s0)	# tmp88, e1
	ld	a5,8(a5)		# tmp89,
	sd	a5,-504(s0)	# tmp89, e1
# problem71.c:44:     func0(a1, 4, out1);
	addi	a4,s0,-496	#, tmp90,
	addi	a5,s0,-528	#, tmp91,
	mv	a2,a4	#, tmp90
	li	a1,4		#,
	mv	a0,a5	#, tmp91
	call	func0		#
# problem71.c:45:     assert(issame(e1, out1, 4));
	addi	a4,s0,-496	#, tmp92,
	addi	a5,s0,-512	#, tmp93,
	li	a2,4		#,
	mv	a1,a4	#, tmp92
	mv	a0,a5	#, tmp93
	call	issame		#
	mv	a5,a0	# tmp94,
	bne	a5,zero,.L16	#, _1,,
# problem71.c:45:     assert(issame(e1, out1, 4));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,45		#,
	lla	a1,.LC13	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L16:
# problem71.c:47:     int a2[] = {5, 6, 7, 8, 9};
	lla	a5,.LC2	# tmp95,
	ld	a4,0(a5)		# tmp96,
	sd	a4,-432(s0)	# tmp96, a2
	ld	a4,8(a5)		# tmp97,
	sd	a4,-424(s0)	# tmp97, a2
	lw	a5,16(a5)		# tmp98,
	sw	a5,-416(s0)	# tmp98, a2
# problem71.c:48:     int e2[] = {5, 9, 6, 8, 7};
	lla	a5,.LC3	# tmp99,
	ld	a4,0(a5)		# tmp100,
	sd	a4,-408(s0)	# tmp100, e2
	ld	a4,8(a5)		# tmp101,
	sd	a4,-400(s0)	# tmp101, e2
	lw	a5,16(a5)		# tmp102,
	sw	a5,-392(s0)	# tmp102, e2
# problem71.c:50:     func0(a2, 5, out2);
	addi	a4,s0,-384	#, tmp103,
	addi	a5,s0,-432	#, tmp104,
	mv	a2,a4	#, tmp103
	li	a1,5		#,
	mv	a0,a5	#, tmp104
	call	func0		#
# problem71.c:51:     assert(issame(e2, out2, 5));
	addi	a4,s0,-384	#, tmp105,
	addi	a5,s0,-408	#, tmp106,
	li	a2,5		#,
	mv	a1,a4	#, tmp105
	mv	a0,a5	#, tmp106
	call	issame		#
	mv	a5,a0	# tmp107,
	bne	a5,zero,.L17	#, _2,,
# problem71.c:51:     assert(issame(e2, out2, 5));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,51		#,
	lla	a1,.LC13	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L17:
# problem71.c:53:     int a3[] = {1, 2, 3, 4, 5};
	lla	a5,.LC4	# tmp108,
	ld	a4,0(a5)		# tmp109,
	sd	a4,-360(s0)	# tmp109, a3
	ld	a4,8(a5)		# tmp110,
	sd	a4,-352(s0)	# tmp110, a3
	lw	a5,16(a5)		# tmp111,
	sw	a5,-344(s0)	# tmp111, a3
# problem71.c:54:     int e3[] = {1, 5, 2, 4, 3};
	lla	a5,.LC5	# tmp112,
	ld	a4,0(a5)		# tmp113,
	sd	a4,-336(s0)	# tmp113, e3
	ld	a4,8(a5)		# tmp114,
	sd	a4,-328(s0)	# tmp114, e3
	lw	a5,16(a5)		# tmp115,
	sw	a5,-320(s0)	# tmp115, e3
# problem71.c:56:     func0(a3, 5, out3);
	addi	a4,s0,-312	#, tmp116,
	addi	a5,s0,-360	#, tmp117,
	mv	a2,a4	#, tmp116
	li	a1,5		#,
	mv	a0,a5	#, tmp117
	call	func0		#
# problem71.c:57:     assert(issame(e3, out3, 5));
	addi	a4,s0,-312	#, tmp118,
	addi	a5,s0,-336	#, tmp119,
	li	a2,5		#,
	mv	a1,a4	#, tmp118
	mv	a0,a5	#, tmp119
	call	issame		#
	mv	a5,a0	# tmp120,
	bne	a5,zero,.L18	#, _3,,
# problem71.c:57:     assert(issame(e3, out3, 5));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,57		#,
	lla	a1,.LC13	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L18:
# problem71.c:59:     int a4[] = {5, 6, 7, 8, 9, 1};
	lla	a5,.LC6	# tmp121,
	ld	a4,0(a5)		# tmp122,
	sd	a4,-288(s0)	# tmp122, a4
	ld	a4,8(a5)		# tmp123,
	sd	a4,-280(s0)	# tmp123, a4
	ld	a5,16(a5)		# tmp124,
	sd	a5,-272(s0)	# tmp124, a4
# problem71.c:60:     int e4[] = {1, 9, 5, 8, 6, 7};
	lla	a5,.LC7	# tmp125,
	ld	a4,0(a5)		# tmp126,
	sd	a4,-264(s0)	# tmp126, e4
	ld	a4,8(a5)		# tmp127,
	sd	a4,-256(s0)	# tmp127, e4
	ld	a5,16(a5)		# tmp128,
	sd	a5,-248(s0)	# tmp128, e4
# problem71.c:62:     func0(a4, 6, out4);
	addi	a4,s0,-240	#, tmp129,
	addi	a5,s0,-288	#, tmp130,
	mv	a2,a4	#, tmp129
	li	a1,6		#,
	mv	a0,a5	#, tmp130
	call	func0		#
# problem71.c:63:     assert(issame(e4, out4, 6));
	addi	a4,s0,-240	#, tmp131,
	addi	a5,s0,-264	#, tmp132,
	li	a2,6		#,
	mv	a1,a4	#, tmp131
	mv	a0,a5	#, tmp132
	call	issame		#
	mv	a5,a0	# tmp133,
	bne	a5,zero,.L19	#, _4,,
# problem71.c:63:     assert(issame(e4, out4, 6));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,63		#,
	lla	a1,.LC13	#,
	lla	a0,.LC17	#,
	call	__assert_fail@plt	#
.L19:
# problem71.c:65:     int a5[] = {5, 5, 5, 5};
	lla	a5,.LC8	# tmp134,
	ld	a4,0(a5)		# tmp135,
	sd	a4,-480(s0)	# tmp135, a5
	ld	a5,8(a5)		# tmp136,
	sd	a5,-472(s0)	# tmp136, a5
# problem71.c:66:     int e5[] = {5, 5, 5, 5};
	lla	a5,.LC8	# tmp137,
	ld	a4,0(a5)		# tmp138,
	sd	a4,-464(s0)	# tmp138, e5
	ld	a5,8(a5)		# tmp139,
	sd	a5,-456(s0)	# tmp139, e5
# problem71.c:68:     func0(a5, 4, out5);
	addi	a4,s0,-448	#, tmp140,
	addi	a5,s0,-480	#, tmp141,
	mv	a2,a4	#, tmp140
	li	a1,4		#,
	mv	a0,a5	#, tmp141
	call	func0		#
# problem71.c:69:     assert(issame(e5, out5, 4));
	addi	a4,s0,-448	#, tmp142,
	addi	a5,s0,-464	#, tmp143,
	li	a2,4		#,
	mv	a1,a4	#, tmp142
	mv	a0,a5	#, tmp143
	call	issame		#
	mv	a5,a0	# tmp144,
	bne	a5,zero,.L20	#, _5,,
# problem71.c:69:     assert(issame(e5, out5, 4));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,69		#,
	lla	a1,.LC13	#,
	lla	a0,.LC18	#,
	call	__assert_fail@plt	#
.L20:
# problem71.c:74:     func0(a6, 0, out6);
	addi	a4,s0,-560	#, tmp145,
	addi	a5,s0,-576	#, tmp146,
	mv	a2,a4	#, tmp145
	li	a1,0		#,
	mv	a0,a5	#, tmp146
	call	func0		#
# problem71.c:75:     assert(issame(e6, out6, 0));
	addi	a4,s0,-560	#, tmp147,
	addi	a5,s0,-568	#, tmp148,
	li	a2,0		#,
	mv	a1,a4	#, tmp147
	mv	a0,a5	#, tmp148
	call	issame		#
	mv	a5,a0	# tmp149,
	bne	a5,zero,.L21	#, _6,,
# problem71.c:75:     assert(issame(e6, out6, 0));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,75		#,
	lla	a1,.LC13	#,
	lla	a0,.LC19	#,
	call	__assert_fail@plt	#
.L21:
# problem71.c:77:     int a7[] = {1, 2, 3, 4, 5, 6, 7, 8};
	lla	a5,.LC9	# tmp150,
	ld	a2,0(a5)		# tmp151,
	ld	a3,8(a5)		# tmp152,
	ld	a4,16(a5)		# tmp153,
	ld	a5,24(a5)		# tmp154,
	sd	a2,-216(s0)	# tmp151, a7
	sd	a3,-208(s0)	# tmp152, a7
	sd	a4,-200(s0)	# tmp153, a7
	sd	a5,-192(s0)	# tmp154, a7
# problem71.c:78:     int e7[] = {1, 8, 2, 7, 3, 6, 4, 5};
	lla	a5,.LC10	# tmp155,
	ld	a2,0(a5)		# tmp156,
	ld	a3,8(a5)		# tmp157,
	ld	a4,16(a5)		# tmp158,
	ld	a5,24(a5)		# tmp159,
	sd	a2,-184(s0)	# tmp156, e7
	sd	a3,-176(s0)	# tmp157, e7
	sd	a4,-168(s0)	# tmp158, e7
	sd	a5,-160(s0)	# tmp159, e7
# problem71.c:80:     func0(a7, 8, out7);
	addi	a4,s0,-152	#, tmp160,
	addi	a5,s0,-216	#, tmp161,
	mv	a2,a4	#, tmp160
	li	a1,8		#,
	mv	a0,a5	#, tmp161
	call	func0		#
# problem71.c:81:     assert(issame(e7, out7, 8));
	addi	a4,s0,-152	#, tmp162,
	addi	a5,s0,-184	#, tmp163,
	li	a2,8		#,
	mv	a1,a4	#, tmp162
	mv	a0,a5	#, tmp163
	call	issame		#
	mv	a5,a0	# tmp164,
	bne	a5,zero,.L22	#, _7,,
# problem71.c:81:     assert(issame(e7, out7, 8));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,81		#,
	lla	a1,.LC13	#,
	lla	a0,.LC20	#,
	call	__assert_fail@plt	#
.L22:
# problem71.c:83:     int a8[] = {0, 2, 2, 2, 5, 5, -5, -5};
	lla	a5,.LC11	# tmp165,
	ld	a2,0(a5)		# tmp166,
	ld	a3,8(a5)		# tmp167,
	ld	a4,16(a5)		# tmp168,
	ld	a5,24(a5)		# tmp169,
	sd	a2,-120(s0)	# tmp166, a8
	sd	a3,-112(s0)	# tmp167, a8
	sd	a4,-104(s0)	# tmp168, a8
	sd	a5,-96(s0)	# tmp169, a8
# problem71.c:84:     int e8[] = {-5, 5, -5, 5, 0, 2, 2, 2};
	lla	a5,.LC12	# tmp170,
	ld	a2,0(a5)		# tmp171,
	ld	a3,8(a5)		# tmp172,
	ld	a4,16(a5)		# tmp173,
	ld	a5,24(a5)		# tmp174,
	sd	a2,-88(s0)	# tmp171, e8
	sd	a3,-80(s0)	# tmp172, e8
	sd	a4,-72(s0)	# tmp173, e8
	sd	a5,-64(s0)	# tmp174, e8
# problem71.c:86:     func0(a8, 8, out8);
	addi	a4,s0,-56	#, tmp175,
	addi	a5,s0,-120	#, tmp176,
	mv	a2,a4	#, tmp175
	li	a1,8		#,
	mv	a0,a5	#, tmp176
	call	func0		#
# problem71.c:87:     assert(issame(e8, out8, 8));
	addi	a4,s0,-56	#, tmp177,
	addi	a5,s0,-88	#, tmp178,
	li	a2,8		#,
	mv	a1,a4	#, tmp177
	mv	a0,a5	#, tmp178
	call	issame		#
	mv	a5,a0	# tmp179,
	bne	a5,zero,.L23	#, _8,,
# problem71.c:87:     assert(issame(e8, out8, 8));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,87		#,
	lla	a1,.LC13	#,
	lla	a0,.LC21	#,
	call	__assert_fail@plt	#
.L23:
# problem71.c:89:     int a9[] = {111111};
	li	a5,110592		# tmp181,
	addi	a5,a5,519	#, tmp180, tmp181
	sw	a5,-552(s0)	# tmp180, a9[0]
# problem71.c:90:     int e9[] = {111111};
	li	a5,110592		# tmp183,
	addi	a5,a5,519	#, tmp182, tmp183
	sw	a5,-544(s0)	# tmp182, e9[0]
# problem71.c:92:     func0(a9, 1, out9);
	addi	a4,s0,-536	#, tmp184,
	addi	a5,s0,-552	#, tmp185,
	mv	a2,a4	#, tmp184
	li	a1,1		#,
	mv	a0,a5	#, tmp185
	call	func0		#
# problem71.c:93:     assert(issame(e9, out9, 1));
	addi	a4,s0,-536	#, tmp186,
	addi	a5,s0,-544	#, tmp187,
	li	a2,1		#,
	mv	a1,a4	#, tmp186
	mv	a0,a5	#, tmp187
	call	issame		#
	mv	a5,a0	# tmp188,
	bne	a5,zero,.L24	#, _9,,
# problem71.c:93:     assert(issame(e9, out9, 1));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,93		#,
	lla	a1,.LC13	#,
	lla	a0,.LC22	#,
	call	__assert_fail@plt	#
.L24:
# problem71.c:95:     return 0;
	li	a5,0		# _56,
# problem71.c:96: }
	mv	a4,a5	# <retval>, _56
	la	a5,__stack_chk_guard		# tmp190,
	ld	a3, -24(s0)	# tmp193, D.2727
	ld	a5, 0(a5)	# tmp191, __stack_chk_guard
	xor	a5, a3, a5	# tmp191, tmp193
	li	a3, 0	# tmp193
	beq	a5,zero,.L26	#, tmp191,,
	call	__stack_chk_fail@plt	#
.L26:
	mv	a0,a4	#, <retval>
	ld	ra,568(sp)		#,
	ld	s0,560(sp)		#,
	addi	sp,sp,576	#,,
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
