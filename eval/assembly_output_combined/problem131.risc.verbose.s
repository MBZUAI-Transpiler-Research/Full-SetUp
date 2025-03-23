	.file	"problem131.c"
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
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
	mv	a5,a0	# tmp103, n
	sw	a5,-36(s0)	# tmp104, n
# problem131.c:5:     int* out = (int*)malloc((n + 1) * sizeof(int));
	lw	a5,-36(s0)		# tmp107, n
	addiw	a5,a5,1	#, tmp105, tmp106
	sext.w	a5,a5	# _1, tmp105
# problem131.c:5:     int* out = (int*)malloc((n + 1) * sizeof(int));
	slli	a5,a5,2	#, _3, _2
	mv	a0,a5	#, _3
	call	malloc@plt	#
	mv	a5,a0	# tmp108,
	sd	a5,-24(s0)	# tmp108, out
# problem131.c:6:     out[0] = 1;
	ld	a5,-24(s0)		# tmp109, out
	li	a4,1		# tmp110,
	sw	a4,0(a5)	# tmp110, *out_38
# problem131.c:7:     if (n == 0) return out;
	lw	a5,-36(s0)		# tmp112, n
	sext.w	a5,a5	# tmp113, tmp111
	bne	a5,zero,.L2	#, tmp113,,
# problem131.c:7:     if (n == 0) return out;
	ld	a5,-24(s0)		# _31, out
	j	.L3		#
.L2:
# problem131.c:8:     out[1] = 3;
	ld	a5,-24(s0)		# tmp114, out
	addi	a5,a5,4	#, _4, tmp114
# problem131.c:8:     out[1] = 3;
	li	a4,3		# tmp115,
	sw	a4,0(a5)	# tmp115, *_4
# problem131.c:9:     for (int i = 2; i <= n; i++) {
	li	a5,2		# tmp116,
	sw	a5,-28(s0)	# tmp116, i
# problem131.c:9:     for (int i = 2; i <= n; i++) {
	j	.L4		#
.L7:
# problem131.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	lw	a5,-28(s0)		# i.0_5, i
	andi	a5,a5,1	#, tmp118, tmp117
	sext.w	a5,a5	# _6, tmp118
# problem131.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	bne	a5,zero,.L5	#, _6,,
# problem131.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	lw	a5,-28(s0)		# tmp121, i
	srliw	a4,a5,31	#, tmp122, tmp120
	addw	a5,a4,a5	# tmp120, tmp123, tmp122
	sraiw	a5,a5,1	#, tmp124, tmp123
	sext.w	a4,a5	# _7, tmp124
# problem131.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	lw	a5,-28(s0)		# _8, i
	slli	a5,a5,2	#, _9, _8
	ld	a3,-24(s0)		# tmp125, out
	add	a5,a3,a5	# _9, _10, tmp125
# problem131.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	addiw	a4,a4,1	#, tmp126, _7
	sext.w	a4,a4	# _11, tmp126
# problem131.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	sw	a4,0(a5)	# _11, *_10
	j	.L6		#
.L5:
# problem131.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	lw	a5,-28(s0)		# _12, i
	slli	a5,a5,2	#, _13, _12
	addi	a5,a5,-4	#, _14, _13
	ld	a4,-24(s0)		# tmp127, out
	add	a5,a4,a5	# _14, _15, tmp127
	lw	a4,0(a5)		# _16, *_15
# problem131.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	lw	a5,-28(s0)		# _17, i
	slli	a5,a5,2	#, _18, _17
	addi	a5,a5,-8	#, _19, _18
	ld	a3,-24(s0)		# tmp128, out
	add	a5,a3,a5	# _19, _20, tmp128
	lw	a5,0(a5)		# _21, *_20
# problem131.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	addw	a5,a4,a5	# _21, tmp129, _16
	sext.w	a5,a5	# _22, tmp129
# problem131.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	addiw	a5,a5,1	#, tmp130, _22
	sext.w	a3,a5	# _23, tmp130
# problem131.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	lw	a5,-28(s0)		# tmp133, i
	addiw	a5,a5,1	#, tmp131, tmp132
	sext.w	a5,a5	# _24, tmp131
# problem131.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	srliw	a4,a5,31	#, tmp136, tmp135
	addw	a5,a4,a5	# tmp135, tmp137, tmp136
	sraiw	a5,a5,1	#, tmp138, tmp137
	sext.w	a4,a5	# _25, tmp138
# problem131.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	lw	a5,-28(s0)		# _26, i
	slli	a5,a5,2	#, _27, _26
	ld	a2,-24(s0)		# tmp139, out
	add	a5,a2,a5	# _27, _28, tmp139
# problem131.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	addw	a4,a3,a4	# _25, tmp140, _23
	sext.w	a4,a4	# _29, tmp140
# problem131.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	sw	a4,0(a5)	# _29, *_28
.L6:
# problem131.c:9:     for (int i = 2; i <= n; i++) {
	lw	a5,-28(s0)		# tmp143, i
	addiw	a5,a5,1	#, tmp141, tmp142
	sw	a5,-28(s0)	# tmp141, i
.L4:
# problem131.c:9:     for (int i = 2; i <= n; i++) {
	lw	a5,-28(s0)		# tmp145, i
	mv	a4,a5	# tmp144, tmp145
	lw	a5,-36(s0)		# tmp147, n
	sext.w	a4,a4	# tmp148, tmp144
	sext.w	a5,a5	# tmp149, tmp146
	ble	a4,a5,.L7	#, tmp148, tmp149,
# problem131.c:13:     return out;
	ld	a5,-24(s0)		# _31, out
.L3:
# problem131.c:14: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
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
# problem131.c:23:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# problem131.c:23:     for (int i = 0; i < size; i++) {
	j	.L9		#
.L12:
# problem131.c:24:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp84, a
	add	a5,a4,a5	# _2, _3, tmp84
	lw	a3,0(a5)		# _4, *_3
# problem131.c:24:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-48(s0)		# tmp85, b
	add	a5,a4,a5	# _6, _7, tmp85
	lw	a5,0(a5)		# _8, *_7
# problem131.c:24:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp86, _4
	beq	a4,a5,.L10	#, tmp86, tmp87,
# problem131.c:24:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
	j	.L11		#
.L10:
# problem131.c:23:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp90, i
	addiw	a5,a5,1	#, tmp88, tmp89
	sw	a5,-20(s0)	# tmp88, i
.L9:
# problem131.c:23:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp92, i
	mv	a4,a5	# tmp91, tmp92
	lw	a5,-52(s0)		# tmp94, size
	sext.w	a4,a4	# tmp95, tmp91
	sext.w	a5,a5	# tmp96, tmp93
	blt	a4,a5,.L12	#, tmp95, tmp96,
# problem131.c:26:     return 1;
	li	a5,1		# _10,
.L11:
# problem131.c:27: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC8:
	.string	"problem131.c"
	.align	3
.LC9:
	.string	"issame(out3, tri_3, size)"
	.align	3
.LC10:
	.string	"issame(out4, tri_4, size)"
	.align	3
.LC11:
	.string	"issame(out5, tri_5, size)"
	.align	3
.LC12:
	.string	"issame(out6, tri_6, size)"
	.align	3
.LC13:
	.string	"issame(out7, tri_7, size)"
	.align	3
.LC14:
	.string	"issame(out8, tri_8, size)"
	.align	3
.LC15:
	.string	"issame(out9, tri_9, size)"
	.align	3
.LC16:
	.string	"issame(out20, tri_20, size)"
	.align	3
.LC17:
	.string	"issame(out0, tri_0, size)"
	.align	3
.LC18:
	.string	"issame(out1, tri_1, size)"
	.align	3
.LC0:
	.word	1
	.word	3
	.word	2
	.word	8
	.align	3
.LC1:
	.word	1
	.word	3
	.word	2
	.word	8
	.word	3
	.align	3
.LC2:
	.word	1
	.word	3
	.word	2
	.word	8
	.word	3
	.word	15
	.align	3
.LC3:
	.word	1
	.word	3
	.word	2
	.word	8
	.word	3
	.word	15
	.word	4
	.align	3
.LC4:
	.word	1
	.word	3
	.word	2
	.word	8
	.word	3
	.word	15
	.word	4
	.word	24
	.align	3
.LC5:
	.word	1
	.word	3
	.word	2
	.word	8
	.word	3
	.word	15
	.word	4
	.word	24
	.word	5
	.align	3
.LC6:
	.word	1
	.word	3
	.word	2
	.word	8
	.word	3
	.word	15
	.word	4
	.word	24
	.word	5
	.word	35
	.align	3
.LC7:
	.word	1
	.word	3
	.word	2
	.word	8
	.word	3
	.word	15
	.word	4
	.word	24
	.word	5
	.word	35
	.word	6
	.word	48
	.word	7
	.word	63
	.word	8
	.word	80
	.word	9
	.word	99
	.word	10
	.word	120
	.word	11
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-432	#,,
	sd	ra,424(sp)	#,
	sd	s0,416(sp)	#,
	addi	s0,sp,432	#,,
# problem131.c:29: int main() {
	la	a5,__stack_chk_guard		# tmp84,
	ld	a4, 0(a5)	# tmp176, __stack_chk_guard
	sd	a4, -24(s0)	# tmp176, D.2520
	li	a4, 0	# tmp176
# problem131.c:32:     int tri_3[] = {1, 3, 2, 8};
	lla	a5,.LC0	# tmp85,
	ld	a4,0(a5)		# tmp86,
	sd	a4,-320(s0)	# tmp86, tri_3
	ld	a5,8(a5)		# tmp87,
	sd	a5,-312(s0)	# tmp87, tri_3
# problem131.c:33:     size = 4;
	li	a5,4		# tmp88,
	sw	a5,-420(s0)	# tmp88, size
# problem131.c:34:     int* out3 = func0(3);
	li	a0,3		#,
	call	func0		#
	sd	a0,-416(s0)	#, out3
# problem131.c:35:     assert(issame(out3, tri_3, size));
	lw	a4,-420(s0)		# tmp89, size
	addi	a5,s0,-320	#, tmp90,
	mv	a2,a4	#, tmp89
	mv	a1,a5	#, tmp90
	ld	a0,-416(s0)		#, out3
	call	issame		#
	mv	a5,a0	# tmp91,
	bne	a5,zero,.L14	#, _1,,
# problem131.c:35:     assert(issame(out3, tri_3, size));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC8	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L14:
# problem131.c:36:     free(out3);
	ld	a0,-416(s0)		#, out3
	call	free@plt	#
# problem131.c:38:     int tri_4[] = {1, 3, 2, 8, 3};
	lla	a5,.LC1	# tmp92,
	ld	a4,0(a5)		# tmp93,
	sd	a4,-304(s0)	# tmp93, tri_4
	ld	a4,8(a5)		# tmp94,
	sd	a4,-296(s0)	# tmp94, tri_4
	lw	a5,16(a5)		# tmp95,
	sw	a5,-288(s0)	# tmp95, tri_4
# problem131.c:39:     size = 5;
	li	a5,5		# tmp96,
	sw	a5,-420(s0)	# tmp96, size
# problem131.c:40:     int* out4 = func0(4);
	li	a0,4		#,
	call	func0		#
	sd	a0,-408(s0)	#, out4
# problem131.c:41:     assert(issame(out4, tri_4, size));
	lw	a4,-420(s0)		# tmp97, size
	addi	a5,s0,-304	#, tmp98,
	mv	a2,a4	#, tmp97
	mv	a1,a5	#, tmp98
	ld	a0,-408(s0)		#, out4
	call	issame		#
	mv	a5,a0	# tmp99,
	bne	a5,zero,.L15	#, _2,,
# problem131.c:41:     assert(issame(out4, tri_4, size));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,41		#,
	lla	a1,.LC8	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L15:
# problem131.c:42:     free(out4);
	ld	a0,-408(s0)		#, out4
	call	free@plt	#
# problem131.c:44:     int tri_5[] = {1, 3, 2, 8, 3, 15};
	lla	a5,.LC2	# tmp100,
	ld	a4,0(a5)		# tmp101,
	sd	a4,-280(s0)	# tmp101, tri_5
	ld	a4,8(a5)		# tmp102,
	sd	a4,-272(s0)	# tmp102, tri_5
	ld	a5,16(a5)		# tmp103,
	sd	a5,-264(s0)	# tmp103, tri_5
# problem131.c:45:     size = 6;
	li	a5,6		# tmp104,
	sw	a5,-420(s0)	# tmp104, size
# problem131.c:46:     int* out5 = func0(5);
	li	a0,5		#,
	call	func0		#
	sd	a0,-400(s0)	#, out5
# problem131.c:47:     assert(issame(out5, tri_5, size));
	lw	a4,-420(s0)		# tmp105, size
	addi	a5,s0,-280	#, tmp106,
	mv	a2,a4	#, tmp105
	mv	a1,a5	#, tmp106
	ld	a0,-400(s0)		#, out5
	call	issame		#
	mv	a5,a0	# tmp107,
	bne	a5,zero,.L16	#, _3,,
# problem131.c:47:     assert(issame(out5, tri_5, size));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,47		#,
	lla	a1,.LC8	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L16:
# problem131.c:48:     free(out5);
	ld	a0,-400(s0)		#, out5
	call	free@plt	#
# problem131.c:50:     int tri_6[] = {1, 3, 2, 8, 3, 15, 4};
	lla	a5,.LC3	# tmp108,
	ld	a2,0(a5)		# tmp109,
	ld	a3,8(a5)		# tmp110,
	ld	a4,16(a5)		# tmp111,
	sd	a2,-256(s0)	# tmp109, tri_6
	sd	a3,-248(s0)	# tmp110, tri_6
	sd	a4,-240(s0)	# tmp111, tri_6
	lw	a5,24(a5)		# tmp112,
	sw	a5,-232(s0)	# tmp112, tri_6
# problem131.c:51:     size = 7;
	li	a5,7		# tmp113,
	sw	a5,-420(s0)	# tmp113, size
# problem131.c:52:     int* out6 = func0(6);
	li	a0,6		#,
	call	func0		#
	sd	a0,-392(s0)	#, out6
# problem131.c:53:     assert(issame(out6, tri_6, size));
	lw	a4,-420(s0)		# tmp114, size
	addi	a5,s0,-256	#, tmp115,
	mv	a2,a4	#, tmp114
	mv	a1,a5	#, tmp115
	ld	a0,-392(s0)		#, out6
	call	issame		#
	mv	a5,a0	# tmp116,
	bne	a5,zero,.L17	#, _4,,
# problem131.c:53:     assert(issame(out6, tri_6, size));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,53		#,
	lla	a1,.LC8	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L17:
# problem131.c:54:     free(out6);
	ld	a0,-392(s0)		#, out6
	call	free@plt	#
# problem131.c:56:     int tri_7[] = {1, 3, 2, 8, 3, 15, 4, 24};
	lla	a5,.LC4	# tmp117,
	ld	a2,0(a5)		# tmp118,
	ld	a3,8(a5)		# tmp119,
	ld	a4,16(a5)		# tmp120,
	ld	a5,24(a5)		# tmp121,
	sd	a2,-224(s0)	# tmp118, tri_7
	sd	a3,-216(s0)	# tmp119, tri_7
	sd	a4,-208(s0)	# tmp120, tri_7
	sd	a5,-200(s0)	# tmp121, tri_7
# problem131.c:57:     size = 8;
	li	a5,8		# tmp122,
	sw	a5,-420(s0)	# tmp122, size
# problem131.c:58:     int* out7 = func0(7);
	li	a0,7		#,
	call	func0		#
	sd	a0,-384(s0)	#, out7
# problem131.c:59:     assert(issame(out7, tri_7, size));
	lw	a4,-420(s0)		# tmp123, size
	addi	a5,s0,-224	#, tmp124,
	mv	a2,a4	#, tmp123
	mv	a1,a5	#, tmp124
	ld	a0,-384(s0)		#, out7
	call	issame		#
	mv	a5,a0	# tmp125,
	bne	a5,zero,.L18	#, _5,,
# problem131.c:59:     assert(issame(out7, tri_7, size));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,59		#,
	lla	a1,.LC8	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L18:
# problem131.c:60:     free(out7);
	ld	a0,-384(s0)		#, out7
	call	free@plt	#
# problem131.c:62:     int tri_8[] = {1, 3, 2, 8, 3, 15, 4, 24, 5};
	lla	a5,.LC5	# tmp126,
	ld	a1,0(a5)		# tmp127,
	ld	a2,8(a5)		# tmp128,
	ld	a3,16(a5)		# tmp129,
	ld	a4,24(a5)		# tmp130,
	sd	a1,-192(s0)	# tmp127, tri_8
	sd	a2,-184(s0)	# tmp128, tri_8
	sd	a3,-176(s0)	# tmp129, tri_8
	sd	a4,-168(s0)	# tmp130, tri_8
	lw	a5,32(a5)		# tmp131,
	sw	a5,-160(s0)	# tmp131, tri_8
# problem131.c:63:     size = 9;
	li	a5,9		# tmp132,
	sw	a5,-420(s0)	# tmp132, size
# problem131.c:64:     int* out8 = func0(8);
	li	a0,8		#,
	call	func0		#
	sd	a0,-376(s0)	#, out8
# problem131.c:65:     assert(issame(out8, tri_8, size));
	lw	a4,-420(s0)		# tmp133, size
	addi	a5,s0,-192	#, tmp134,
	mv	a2,a4	#, tmp133
	mv	a1,a5	#, tmp134
	ld	a0,-376(s0)		#, out8
	call	issame		#
	mv	a5,a0	# tmp135,
	bne	a5,zero,.L19	#, _6,,
# problem131.c:65:     assert(issame(out8, tri_8, size));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,65		#,
	lla	a1,.LC8	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L19:
# problem131.c:66:     free(out8);
	ld	a0,-376(s0)		#, out8
	call	free@plt	#
# problem131.c:68:     int tri_9[] = {1, 3, 2, 8, 3, 15, 4, 24, 5, 35};
	lla	a5,.LC6	# tmp136,
	ld	a1,0(a5)		# tmp137,
	ld	a2,8(a5)		# tmp138,
	ld	a3,16(a5)		# tmp139,
	ld	a4,24(a5)		# tmp140,
	ld	a5,32(a5)		# tmp141,
	sd	a1,-152(s0)	# tmp137, tri_9
	sd	a2,-144(s0)	# tmp138, tri_9
	sd	a3,-136(s0)	# tmp139, tri_9
	sd	a4,-128(s0)	# tmp140, tri_9
	sd	a5,-120(s0)	# tmp141, tri_9
# problem131.c:69:     size = 10;
	li	a5,10		# tmp142,
	sw	a5,-420(s0)	# tmp142, size
# problem131.c:70:     int* out9 = func0(9);
	li	a0,9		#,
	call	func0		#
	sd	a0,-368(s0)	#, out9
# problem131.c:71:     assert(issame(out9, tri_9, size));
	lw	a4,-420(s0)		# tmp143, size
	addi	a5,s0,-152	#, tmp144,
	mv	a2,a4	#, tmp143
	mv	a1,a5	#, tmp144
	ld	a0,-368(s0)		#, out9
	call	issame		#
	mv	a5,a0	# tmp145,
	bne	a5,zero,.L20	#, _7,,
# problem131.c:71:     assert(issame(out9, tri_9, size));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,71		#,
	lla	a1,.LC8	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L20:
# problem131.c:72:     free(out9);
	ld	a0,-368(s0)		#, out9
	call	free@plt	#
# problem131.c:74:     int tri_20[] = {1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11};
	lla	a5,.LC7	# tmp146,
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
	sd	t4,-112(s0)	# tmp147, tri_20
	sd	t3,-104(s0)	# tmp148, tri_20
	sd	t1,-96(s0)	# tmp149, tri_20
	sd	a7,-88(s0)	# tmp150, tri_20
	sd	a6,-80(s0)	# tmp151, tri_20
	sd	a0,-72(s0)	# tmp152, tri_20
	sd	a1,-64(s0)	# tmp153, tri_20
	sd	a2,-56(s0)	# tmp154, tri_20
	sd	a3,-48(s0)	# tmp155, tri_20
	sd	a4,-40(s0)	# tmp156, tri_20
	lw	a5,80(a5)		# tmp157,
	sw	a5,-32(s0)	# tmp157, tri_20
# problem131.c:75:     size = 21;
	li	a5,21		# tmp158,
	sw	a5,-420(s0)	# tmp158, size
# problem131.c:76:     int* out20 = func0(20);
	li	a0,20		#,
	call	func0		#
	sd	a0,-360(s0)	#, out20
# problem131.c:77:     assert(issame(out20, tri_20, size));
	lw	a4,-420(s0)		# tmp159, size
	addi	a5,s0,-112	#, tmp160,
	mv	a2,a4	#, tmp159
	mv	a1,a5	#, tmp160
	ld	a0,-360(s0)		#, out20
	call	issame		#
	mv	a5,a0	# tmp161,
	bne	a5,zero,.L21	#, _8,,
# problem131.c:77:     assert(issame(out20, tri_20, size));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,77		#,
	lla	a1,.LC8	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L21:
# problem131.c:78:     free(out20);
	ld	a0,-360(s0)		#, out20
	call	free@plt	#
# problem131.c:80:     int tri_0[] = {1};
	li	a5,1		# tmp162,
	sw	a5,-336(s0)	# tmp162, tri_0[0]
# problem131.c:81:     size = 1;
	li	a5,1		# tmp163,
	sw	a5,-420(s0)	# tmp163, size
# problem131.c:82:     int* out0 = func0(0);
	li	a0,0		#,
	call	func0		#
	sd	a0,-352(s0)	#, out0
# problem131.c:83:     assert(issame(out0, tri_0, size));
	lw	a4,-420(s0)		# tmp164, size
	addi	a5,s0,-336	#, tmp165,
	mv	a2,a4	#, tmp164
	mv	a1,a5	#, tmp165
	ld	a0,-352(s0)		#, out0
	call	issame		#
	mv	a5,a0	# tmp166,
	bne	a5,zero,.L22	#, _9,,
# problem131.c:83:     assert(issame(out0, tri_0, size));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,83		#,
	lla	a1,.LC8	#,
	lla	a0,.LC17	#,
	call	__assert_fail@plt	#
.L22:
# problem131.c:84:     free(out0);
	ld	a0,-352(s0)		#, out0
	call	free@plt	#
# problem131.c:86:     int tri_1[] = {1, 3};
	li	a5,1		# tmp167,
	sw	a5,-328(s0)	# tmp167, tri_1[0]
	li	a5,3		# tmp168,
	sw	a5,-324(s0)	# tmp168, tri_1[1]
# problem131.c:87:     size = 2;
	li	a5,2		# tmp169,
	sw	a5,-420(s0)	# tmp169, size
# problem131.c:88:     int* out1 = func0(1);
	li	a0,1		#,
	call	func0		#
	sd	a0,-344(s0)	#, out1
# problem131.c:89:     assert(issame(out1, tri_1, size));
	lw	a4,-420(s0)		# tmp170, size
	addi	a5,s0,-328	#, tmp171,
	mv	a2,a4	#, tmp170
	mv	a1,a5	#, tmp171
	ld	a0,-344(s0)		#, out1
	call	issame		#
	mv	a5,a0	# tmp172,
	bne	a5,zero,.L23	#, _10,,
# problem131.c:89:     assert(issame(out1, tri_1, size));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,89		#,
	lla	a1,.LC8	#,
	lla	a0,.LC18	#,
	call	__assert_fail@plt	#
.L23:
# problem131.c:90:     free(out1);
	ld	a0,-344(s0)		#, out1
	call	free@plt	#
# problem131.c:92:     return 0;
	li	a5,0		# _83,
# problem131.c:93: }
	mv	a4,a5	# <retval>, _83
	la	a5,__stack_chk_guard		# tmp174,
	ld	a3, -24(s0)	# tmp177, D.2520
	ld	a5, 0(a5)	# tmp175, __stack_chk_guard
	xor	a5, a3, a5	# tmp175, tmp177
	li	a3, 0	# tmp177
	beq	a5,zero,.L25	#, tmp175,,
	call	__stack_chk_fail@plt	#
.L25:
	mv	a0,a4	#, <retval>
	ld	ra,424(sp)		#,
	ld	s0,416(sp)		#,
	addi	sp,sp,432	#,,
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
