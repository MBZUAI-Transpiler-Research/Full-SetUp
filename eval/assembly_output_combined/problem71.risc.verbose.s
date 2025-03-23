	.file	"problem71.c"
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
	addi	sp,sp,-80	#,,
	.cfi_def_cfa_offset 80
	sd	s0,72(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,80	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)	# lst, lst
	mv	a5,a1	# tmp183, size
	sd	a2,-72(s0)	# out, out
	sw	a5,-60(s0)	# tmp184, size
# problem71.c:5:     for (int i = 0; i < size - 1; i++) {
	sw	zero,-40(s0)	#, i
# problem71.c:5:     for (int i = 0; i < size - 1; i++) {
	j	.L2		#
.L6:
# problem71.c:6:         for (int j = i + 1; j < size; j++) {
	lw	a5,-40(s0)		# tmp187, i
	addiw	a5,a5,1	#, tmp185, tmp186
	sw	a5,-36(s0)	# tmp185, j
# problem71.c:6:         for (int j = i + 1; j < size; j++) {
	j	.L3		#
.L5:
# problem71.c:7:             if (lst[i] > lst[j]) {
	lw	a5,-40(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-56(s0)		# tmp188, lst
	add	a5,a4,a5	# _2, _3, tmp188
	lw	a3,0(a5)		# _4, *_3
# problem71.c:7:             if (lst[i] > lst[j]) {
	lw	a5,-36(s0)		# _5, j
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp189, lst
	add	a5,a4,a5	# _6, _7, tmp189
	lw	a5,0(a5)		# _8, *_7
# problem71.c:7:             if (lst[i] > lst[j]) {
	mv	a4,a3	# tmp190, _4
	ble	a4,a5,.L4	#, tmp190, tmp191,
# problem71.c:8:                 int temp = lst[i];
	lw	a5,-40(s0)		# _9, i
	slli	a5,a5,2	#, _10, _9
	ld	a4,-56(s0)		# tmp192, lst
	add	a5,a4,a5	# _10, _11, tmp192
# problem71.c:8:                 int temp = lst[i];
	lw	a5,0(a5)		# tmp193, *_11
	sw	a5,-20(s0)	# tmp193, temp
# problem71.c:9:                 lst[i] = lst[j];
	lw	a5,-36(s0)		# _12, j
	slli	a5,a5,2	#, _13, _12
	ld	a4,-56(s0)		# tmp194, lst
	add	a4,a4,a5	# _13, _14, tmp194
# problem71.c:9:                 lst[i] = lst[j];
	lw	a5,-40(s0)		# _15, i
	slli	a5,a5,2	#, _16, _15
	ld	a3,-56(s0)		# tmp195, lst
	add	a5,a3,a5	# _16, _17, tmp195
# problem71.c:9:                 lst[i] = lst[j];
	lw	a4,0(a4)		# _18, *_14
# problem71.c:9:                 lst[i] = lst[j];
	sw	a4,0(a5)	# _18, *_17
# problem71.c:10:                 lst[j] = temp;
	lw	a5,-36(s0)		# _19, j
	slli	a5,a5,2	#, _20, _19
	ld	a4,-56(s0)		# tmp196, lst
	add	a5,a4,a5	# _20, _21, tmp196
# problem71.c:10:                 lst[j] = temp;
	lw	a4,-20(s0)		# tmp197, temp
	sw	a4,0(a5)	# tmp197, *_21
.L4:
# problem71.c:6:         for (int j = i + 1; j < size; j++) {
	lw	a5,-36(s0)		# tmp200, j
	addiw	a5,a5,1	#, tmp198, tmp199
	sw	a5,-36(s0)	# tmp198, j
.L3:
# problem71.c:6:         for (int j = i + 1; j < size; j++) {
	lw	a5,-36(s0)		# tmp202, j
	mv	a4,a5	# tmp201, tmp202
	lw	a5,-60(s0)		# tmp204, size
	sext.w	a4,a4	# tmp205, tmp201
	sext.w	a5,a5	# tmp206, tmp203
	blt	a4,a5,.L5	#, tmp205, tmp206,
# problem71.c:5:     for (int i = 0; i < size - 1; i++) {
	lw	a5,-40(s0)		# tmp209, i
	addiw	a5,a5,1	#, tmp207, tmp208
	sw	a5,-40(s0)	# tmp207, i
.L2:
# problem71.c:5:     for (int i = 0; i < size - 1; i++) {
	lw	a5,-60(s0)		# tmp212, size
	addiw	a5,a5,-1	#, tmp210, tmp211
	sext.w	a4,a5	# _22, tmp210
# problem71.c:5:     for (int i = 0; i < size - 1; i++) {
	lw	a5,-40(s0)		# tmp214, i
	sext.w	a5,a5	# tmp215, tmp213
	blt	a5,a4,.L6	#, tmp215, tmp216,
# problem71.c:15:     int l = 0, r = size - 1;
	sw	zero,-32(s0)	#, l
# problem71.c:15:     int l = 0, r = size - 1;
	lw	a5,-60(s0)		# tmp219, size
	addiw	a5,a5,-1	#, tmp217, tmp218
	sw	a5,-28(s0)	# tmp217, r
# problem71.c:16:     int index = 0;
	sw	zero,-24(s0)	#, index
# problem71.c:18:     while (l <= r) {
	j	.L7		#
.L10:
# problem71.c:19:         if (l == r) {
	lw	a5,-32(s0)		# tmp221, l
	mv	a4,a5	# tmp220, tmp221
	lw	a5,-28(s0)		# tmp223, r
	sext.w	a4,a4	# tmp224, tmp220
	sext.w	a5,a5	# tmp225, tmp222
	bne	a4,a5,.L8	#, tmp224, tmp225,
# problem71.c:20:             out[index++] = lst[l++];
	lw	a5,-32(s0)		# l.0_23, l
	addiw	a4,a5,1	#, tmp226, l.0_23
	sw	a4,-32(s0)	# tmp226, l
# problem71.c:20:             out[index++] = lst[l++];
	slli	a5,a5,2	#, _25, _24
	ld	a4,-56(s0)		# tmp227, lst
	add	a4,a4,a5	# _25, _26, tmp227
# problem71.c:20:             out[index++] = lst[l++];
	lw	a5,-24(s0)		# index.1_27, index
	addiw	a3,a5,1	#, tmp228, index.1_27
	sw	a3,-24(s0)	# tmp228, index
# problem71.c:20:             out[index++] = lst[l++];
	slli	a5,a5,2	#, _29, _28
	ld	a3,-72(s0)		# tmp229, out
	add	a5,a3,a5	# _29, _30, tmp229
# problem71.c:20:             out[index++] = lst[l++];
	lw	a4,0(a4)		# _31, *_26
# problem71.c:20:             out[index++] = lst[l++];
	sw	a4,0(a5)	# _31, *_30
	j	.L7		#
.L8:
# problem71.c:22:             out[index++] = lst[l++];
	lw	a5,-32(s0)		# l.2_32, l
	addiw	a4,a5,1	#, tmp230, l.2_32
	sw	a4,-32(s0)	# tmp230, l
# problem71.c:22:             out[index++] = lst[l++];
	slli	a5,a5,2	#, _34, _33
	ld	a4,-56(s0)		# tmp231, lst
	add	a4,a4,a5	# _34, _35, tmp231
# problem71.c:22:             out[index++] = lst[l++];
	lw	a5,-24(s0)		# index.3_36, index
	addiw	a3,a5,1	#, tmp232, index.3_36
	sw	a3,-24(s0)	# tmp232, index
# problem71.c:22:             out[index++] = lst[l++];
	slli	a5,a5,2	#, _38, _37
	ld	a3,-72(s0)		# tmp233, out
	add	a5,a3,a5	# _38, _39, tmp233
# problem71.c:22:             out[index++] = lst[l++];
	lw	a4,0(a4)		# _40, *_35
# problem71.c:22:             out[index++] = lst[l++];
	sw	a4,0(a5)	# _40, *_39
# problem71.c:23:             out[index++] = lst[r--];
	lw	a5,-28(s0)		# r.4_41, r
	addiw	a4,a5,-1	#, tmp234, r.4_41
	sw	a4,-28(s0)	# tmp234, r
# problem71.c:23:             out[index++] = lst[r--];
	slli	a5,a5,2	#, _43, _42
	ld	a4,-56(s0)		# tmp235, lst
	add	a4,a4,a5	# _43, _44, tmp235
# problem71.c:23:             out[index++] = lst[r--];
	lw	a5,-24(s0)		# index.5_45, index
	addiw	a3,a5,1	#, tmp236, index.5_45
	sw	a3,-24(s0)	# tmp236, index
# problem71.c:23:             out[index++] = lst[r--];
	slli	a5,a5,2	#, _47, _46
	ld	a3,-72(s0)		# tmp237, out
	add	a5,a3,a5	# _47, _48, tmp237
# problem71.c:23:             out[index++] = lst[r--];
	lw	a4,0(a4)		# _49, *_44
# problem71.c:23:             out[index++] = lst[r--];
	sw	a4,0(a5)	# _49, *_48
.L7:
# problem71.c:18:     while (l <= r) {
	lw	a5,-32(s0)		# tmp239, l
	mv	a4,a5	# tmp238, tmp239
	lw	a5,-28(s0)		# tmp241, r
	sext.w	a4,a4	# tmp242, tmp238
	sext.w	a5,a5	# tmp243, tmp240
	ble	a4,a5,.L10	#, tmp242, tmp243,
# problem71.c:26: }
	nop	
	nop	
	ld	s0,72(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80	#,,
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
	mv	a5,a2	# tmp144, size
	sw	a5,-52(s0)	# tmp145, size
# problem71.c:34:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# problem71.c:34:     for (int i = 0; i < size; i++) {
	j	.L12		#
.L15:
# problem71.c:35:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp146, a
	add	a5,a4,a5	# _2, _3, tmp146
	lw	a3,0(a5)		# _4, *_3
# problem71.c:35:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-48(s0)		# tmp147, b
	add	a5,a4,a5	# _6, _7, tmp147
	lw	a5,0(a5)		# _8, *_7
# problem71.c:35:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp148, _4
	beq	a4,a5,.L13	#, tmp148, tmp149,
# problem71.c:35:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
# problem71.c:35:         if (a[i] != b[i]) return 0;
	j	.L14		#
.L13:
# problem71.c:34:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp152, i
	addiw	a5,a5,1	#, tmp150, tmp151
	sw	a5,-20(s0)	# tmp150, i
.L12:
# problem71.c:34:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp154, i
	mv	a4,a5	# tmp153, tmp154
	lw	a5,-52(s0)		# tmp156, size
	sext.w	a4,a4	# tmp157, tmp153
	sext.w	a5,a5	# tmp158, tmp155
	blt	a4,a5,.L15	#, tmp157, tmp158,
# problem71.c:37:     return 1;
	li	a5,1		# _10,
.L14:
# problem71.c:38: }
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
.LFB8:
	.cfi_startproc
	addi	sp,sp,-576	#,,
	.cfi_def_cfa_offset 576
	sd	ra,568(sp)	#,
	sd	s0,560(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,576	#,,
	.cfi_def_cfa 8, 0
# problem71.c:40: int main() {
	la	a5,__stack_chk_guard		# tmp145,
	ld	a4, 0(a5)	# tmp254, __stack_chk_guard
	sd	a4, -24(s0)	# tmp254, D.3579
	li	a4, 0	# tmp254
# problem71.c:41:     int a1[] = {1, 2, 3, 4};
	lla	a5,.LC0	# tmp146,
	ld	a4,0(a5)		# tmp147,
	sd	a4,-528(s0)	# tmp147, a1
	ld	a5,8(a5)		# tmp148,
	sd	a5,-520(s0)	# tmp148, a1
# problem71.c:42:     int e1[] = {1, 4, 2, 3};
	lla	a5,.LC1	# tmp149,
	ld	a4,0(a5)		# tmp150,
	sd	a4,-512(s0)	# tmp150, e1
	ld	a5,8(a5)		# tmp151,
	sd	a5,-504(s0)	# tmp151, e1
# problem71.c:44:     func0(a1, 4, out1);
	addi	a4,s0,-496	#, tmp152,
	addi	a5,s0,-528	#, tmp153,
	mv	a2,a4	#, tmp152
	li	a1,4		#,
	mv	a0,a5	#, tmp153
	call	func0		#
# problem71.c:45:     assert(issame(e1, out1, 4));
	addi	a4,s0,-496	#, tmp154,
	addi	a5,s0,-512	#, tmp155,
	li	a2,4		#,
	mv	a1,a4	#, tmp154
	mv	a0,a5	#, tmp155
	call	issame		#
	mv	a5,a0	# tmp156,
# problem71.c:45:     assert(issame(e1, out1, 4));
	bne	a5,zero,.L17	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,45		#,
	lla	a1,.LC13	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L17:
# problem71.c:47:     int a2[] = {5, 6, 7, 8, 9};
	lla	a5,.LC2	# tmp157,
	ld	a4,0(a5)		# tmp158,
	sd	a4,-432(s0)	# tmp158, a2
	ld	a4,8(a5)		# tmp159,
	sd	a4,-424(s0)	# tmp159, a2
	lw	a5,16(a5)		# tmp160,
	sw	a5,-416(s0)	# tmp160, a2
# problem71.c:48:     int e2[] = {5, 9, 6, 8, 7};
	lla	a5,.LC3	# tmp161,
	ld	a4,0(a5)		# tmp162,
	sd	a4,-408(s0)	# tmp162, e2
	ld	a4,8(a5)		# tmp163,
	sd	a4,-400(s0)	# tmp163, e2
	lw	a5,16(a5)		# tmp164,
	sw	a5,-392(s0)	# tmp164, e2
# problem71.c:50:     func0(a2, 5, out2);
	addi	a4,s0,-384	#, tmp165,
	addi	a5,s0,-432	#, tmp166,
	mv	a2,a4	#, tmp165
	li	a1,5		#,
	mv	a0,a5	#, tmp166
	call	func0		#
# problem71.c:51:     assert(issame(e2, out2, 5));
	addi	a4,s0,-384	#, tmp167,
	addi	a5,s0,-408	#, tmp168,
	li	a2,5		#,
	mv	a1,a4	#, tmp167
	mv	a0,a5	#, tmp168
	call	issame		#
	mv	a5,a0	# tmp169,
# problem71.c:51:     assert(issame(e2, out2, 5));
	bne	a5,zero,.L18	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,51		#,
	lla	a1,.LC13	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L18:
# problem71.c:53:     int a3[] = {1, 2, 3, 4, 5};
	lla	a5,.LC4	# tmp170,
	ld	a4,0(a5)		# tmp171,
	sd	a4,-360(s0)	# tmp171, a3
	ld	a4,8(a5)		# tmp172,
	sd	a4,-352(s0)	# tmp172, a3
	lw	a5,16(a5)		# tmp173,
	sw	a5,-344(s0)	# tmp173, a3
# problem71.c:54:     int e3[] = {1, 5, 2, 4, 3};
	lla	a5,.LC5	# tmp174,
	ld	a4,0(a5)		# tmp175,
	sd	a4,-336(s0)	# tmp175, e3
	ld	a4,8(a5)		# tmp176,
	sd	a4,-328(s0)	# tmp176, e3
	lw	a5,16(a5)		# tmp177,
	sw	a5,-320(s0)	# tmp177, e3
# problem71.c:56:     func0(a3, 5, out3);
	addi	a4,s0,-312	#, tmp178,
	addi	a5,s0,-360	#, tmp179,
	mv	a2,a4	#, tmp178
	li	a1,5		#,
	mv	a0,a5	#, tmp179
	call	func0		#
# problem71.c:57:     assert(issame(e3, out3, 5));
	addi	a4,s0,-312	#, tmp180,
	addi	a5,s0,-336	#, tmp181,
	li	a2,5		#,
	mv	a1,a4	#, tmp180
	mv	a0,a5	#, tmp181
	call	issame		#
	mv	a5,a0	# tmp182,
# problem71.c:57:     assert(issame(e3, out3, 5));
	bne	a5,zero,.L19	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,57		#,
	lla	a1,.LC13	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L19:
# problem71.c:59:     int a4[] = {5, 6, 7, 8, 9, 1};
	lla	a5,.LC6	# tmp183,
	ld	a4,0(a5)		# tmp184,
	sd	a4,-288(s0)	# tmp184, a4
	ld	a4,8(a5)		# tmp185,
	sd	a4,-280(s0)	# tmp185, a4
	ld	a5,16(a5)		# tmp186,
	sd	a5,-272(s0)	# tmp186, a4
# problem71.c:60:     int e4[] = {1, 9, 5, 8, 6, 7};
	lla	a5,.LC7	# tmp187,
	ld	a4,0(a5)		# tmp188,
	sd	a4,-264(s0)	# tmp188, e4
	ld	a4,8(a5)		# tmp189,
	sd	a4,-256(s0)	# tmp189, e4
	ld	a5,16(a5)		# tmp190,
	sd	a5,-248(s0)	# tmp190, e4
# problem71.c:62:     func0(a4, 6, out4);
	addi	a4,s0,-240	#, tmp191,
	addi	a5,s0,-288	#, tmp192,
	mv	a2,a4	#, tmp191
	li	a1,6		#,
	mv	a0,a5	#, tmp192
	call	func0		#
# problem71.c:63:     assert(issame(e4, out4, 6));
	addi	a4,s0,-240	#, tmp193,
	addi	a5,s0,-264	#, tmp194,
	li	a2,6		#,
	mv	a1,a4	#, tmp193
	mv	a0,a5	#, tmp194
	call	issame		#
	mv	a5,a0	# tmp195,
# problem71.c:63:     assert(issame(e4, out4, 6));
	bne	a5,zero,.L20	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,63		#,
	lla	a1,.LC13	#,
	lla	a0,.LC17	#,
	call	__assert_fail@plt	#
.L20:
# problem71.c:65:     int a5[] = {5, 5, 5, 5};
	lla	a5,.LC8	# tmp196,
	ld	a4,0(a5)		# tmp197,
	sd	a4,-480(s0)	# tmp197, a5
	ld	a5,8(a5)		# tmp198,
	sd	a5,-472(s0)	# tmp198, a5
# problem71.c:66:     int e5[] = {5, 5, 5, 5};
	lla	a5,.LC8	# tmp199,
	ld	a4,0(a5)		# tmp200,
	sd	a4,-464(s0)	# tmp200, e5
	ld	a5,8(a5)		# tmp201,
	sd	a5,-456(s0)	# tmp201, e5
# problem71.c:68:     func0(a5, 4, out5);
	addi	a4,s0,-448	#, tmp202,
	addi	a5,s0,-480	#, tmp203,
	mv	a2,a4	#, tmp202
	li	a1,4		#,
	mv	a0,a5	#, tmp203
	call	func0		#
# problem71.c:69:     assert(issame(e5, out5, 4));
	addi	a4,s0,-448	#, tmp204,
	addi	a5,s0,-464	#, tmp205,
	li	a2,4		#,
	mv	a1,a4	#, tmp204
	mv	a0,a5	#, tmp205
	call	issame		#
	mv	a5,a0	# tmp206,
# problem71.c:69:     assert(issame(e5, out5, 4));
	bne	a5,zero,.L21	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,69		#,
	lla	a1,.LC13	#,
	lla	a0,.LC18	#,
	call	__assert_fail@plt	#
.L21:
# problem71.c:74:     func0(a6, 0, out6);
	addi	a4,s0,-560	#, tmp207,
	addi	a5,s0,-576	#, tmp208,
	mv	a2,a4	#, tmp207
	li	a1,0		#,
	mv	a0,a5	#, tmp208
	call	func0		#
# problem71.c:75:     assert(issame(e6, out6, 0));
	addi	a4,s0,-560	#, tmp209,
	addi	a5,s0,-568	#, tmp210,
	li	a2,0		#,
	mv	a1,a4	#, tmp209
	mv	a0,a5	#, tmp210
	call	issame		#
	mv	a5,a0	# tmp211,
# problem71.c:75:     assert(issame(e6, out6, 0));
	bne	a5,zero,.L22	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,75		#,
	lla	a1,.LC13	#,
	lla	a0,.LC19	#,
	call	__assert_fail@plt	#
.L22:
# problem71.c:77:     int a7[] = {1, 2, 3, 4, 5, 6, 7, 8};
	lla	a5,.LC9	# tmp212,
	ld	a2,0(a5)		# tmp213,
	ld	a3,8(a5)		# tmp214,
	ld	a4,16(a5)		# tmp215,
	ld	a5,24(a5)		# tmp216,
	sd	a2,-216(s0)	# tmp213, a7
	sd	a3,-208(s0)	# tmp214, a7
	sd	a4,-200(s0)	# tmp215, a7
	sd	a5,-192(s0)	# tmp216, a7
# problem71.c:78:     int e7[] = {1, 8, 2, 7, 3, 6, 4, 5};
	lla	a5,.LC10	# tmp217,
	ld	a2,0(a5)		# tmp218,
	ld	a3,8(a5)		# tmp219,
	ld	a4,16(a5)		# tmp220,
	ld	a5,24(a5)		# tmp221,
	sd	a2,-184(s0)	# tmp218, e7
	sd	a3,-176(s0)	# tmp219, e7
	sd	a4,-168(s0)	# tmp220, e7
	sd	a5,-160(s0)	# tmp221, e7
# problem71.c:80:     func0(a7, 8, out7);
	addi	a4,s0,-152	#, tmp222,
	addi	a5,s0,-216	#, tmp223,
	mv	a2,a4	#, tmp222
	li	a1,8		#,
	mv	a0,a5	#, tmp223
	call	func0		#
# problem71.c:81:     assert(issame(e7, out7, 8));
	addi	a4,s0,-152	#, tmp224,
	addi	a5,s0,-184	#, tmp225,
	li	a2,8		#,
	mv	a1,a4	#, tmp224
	mv	a0,a5	#, tmp225
	call	issame		#
	mv	a5,a0	# tmp226,
# problem71.c:81:     assert(issame(e7, out7, 8));
	bne	a5,zero,.L23	#, _7,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,81		#,
	lla	a1,.LC13	#,
	lla	a0,.LC20	#,
	call	__assert_fail@plt	#
.L23:
# problem71.c:83:     int a8[] = {0, 2, 2, 2, 5, 5, -5, -5};
	lla	a5,.LC11	# tmp227,
	ld	a2,0(a5)		# tmp228,
	ld	a3,8(a5)		# tmp229,
	ld	a4,16(a5)		# tmp230,
	ld	a5,24(a5)		# tmp231,
	sd	a2,-120(s0)	# tmp228, a8
	sd	a3,-112(s0)	# tmp229, a8
	sd	a4,-104(s0)	# tmp230, a8
	sd	a5,-96(s0)	# tmp231, a8
# problem71.c:84:     int e8[] = {-5, 5, -5, 5, 0, 2, 2, 2};
	lla	a5,.LC12	# tmp232,
	ld	a2,0(a5)		# tmp233,
	ld	a3,8(a5)		# tmp234,
	ld	a4,16(a5)		# tmp235,
	ld	a5,24(a5)		# tmp236,
	sd	a2,-88(s0)	# tmp233, e8
	sd	a3,-80(s0)	# tmp234, e8
	sd	a4,-72(s0)	# tmp235, e8
	sd	a5,-64(s0)	# tmp236, e8
# problem71.c:86:     func0(a8, 8, out8);
	addi	a4,s0,-56	#, tmp237,
	addi	a5,s0,-120	#, tmp238,
	mv	a2,a4	#, tmp237
	li	a1,8		#,
	mv	a0,a5	#, tmp238
	call	func0		#
# problem71.c:87:     assert(issame(e8, out8, 8));
	addi	a4,s0,-56	#, tmp239,
	addi	a5,s0,-88	#, tmp240,
	li	a2,8		#,
	mv	a1,a4	#, tmp239
	mv	a0,a5	#, tmp240
	call	issame		#
	mv	a5,a0	# tmp241,
# problem71.c:87:     assert(issame(e8, out8, 8));
	bne	a5,zero,.L24	#, _8,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,87		#,
	lla	a1,.LC13	#,
	lla	a0,.LC21	#,
	call	__assert_fail@plt	#
.L24:
# problem71.c:89:     int a9[] = {111111};
	li	a5,110592		# tmp243,
	addi	a5,a5,519	#, tmp242, tmp243
	sw	a5,-552(s0)	# tmp242, a9[0]
# problem71.c:90:     int e9[] = {111111};
	li	a5,110592		# tmp245,
	addi	a5,a5,519	#, tmp244, tmp245
	sw	a5,-544(s0)	# tmp244, e9[0]
# problem71.c:92:     func0(a9, 1, out9);
	addi	a4,s0,-536	#, tmp246,
	addi	a5,s0,-552	#, tmp247,
	mv	a2,a4	#, tmp246
	li	a1,1		#,
	mv	a0,a5	#, tmp247
	call	func0		#
# problem71.c:93:     assert(issame(e9, out9, 1));
	addi	a4,s0,-536	#, tmp248,
	addi	a5,s0,-544	#, tmp249,
	li	a2,1		#,
	mv	a1,a4	#, tmp248
	mv	a0,a5	#, tmp249
	call	issame		#
	mv	a5,a0	# tmp250,
# problem71.c:93:     assert(issame(e9, out9, 1));
	bne	a5,zero,.L25	#, _9,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,93		#,
	lla	a1,.LC13	#,
	lla	a0,.LC22	#,
	call	__assert_fail@plt	#
.L25:
# problem71.c:95:     return 0;
	li	a5,0		# _54,
# problem71.c:96: }
	mv	a4,a5	# <retval>, _54
	la	a5,__stack_chk_guard		# tmp252,
	ld	a3, -24(s0)	# tmp255, D.3579
	ld	a5, 0(a5)	# tmp253, __stack_chk_guard
	xor	a5, a3, a5	# tmp253, tmp255
	li	a3, 0	# tmp255
	beq	a5,zero,.L27	#, tmp253,,
	call	__stack_chk_fail@plt	#
.L27:
	mv	a0,a4	#, <retval>
	ld	ra,568(sp)		#,
	.cfi_restore 1
	ld	s0,560(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 576
	addi	sp,sp,576	#,,
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
