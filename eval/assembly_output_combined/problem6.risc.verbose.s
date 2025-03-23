	.file	"problem6.c"
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
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-40(s0)	# numbers, numbers
	mv	a5,a1	# tmp92, size
	mv	a4,a2	# tmp94, delimiter
	sd	a3,-56(s0)	# out_size, out_size
	sw	a5,-44(s0)	# tmp93, size
	mv	a5,a4	# tmp95, tmp94
	sw	a5,-48(s0)	# tmp95, delimiter
# problem6.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	lw	a5,-44(s0)		# tmp97, size
	sext.w	a5,a5	# tmp98, tmp96
	ble	a5,zero,.L2	#, tmp98,,
# problem6.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	lw	a5,-44(s0)		# tmp101, size
	slliw	a5,a5,1	#, tmp99, tmp100
	sext.w	a5,a5	# _1, tmp99
# problem6.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	addiw	a5,a5,-1	#, tmp102, _1
	sext.w	a5,a5	# iftmp.0_20, tmp102
	j	.L3		#
.L2:
# problem6.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	li	a5,0		# iftmp.0_20,
.L3:
# problem6.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	ld	a4,-56(s0)		# tmp103, out_size
	sw	a5,0(a4)	# iftmp.0_20, *out_size_27(D)
# problem6.c:6:     int *out = (int *)malloc(*out_size * sizeof(int));
	ld	a5,-56(s0)		# tmp104, out_size
	lw	a5,0(a5)		# _2, *out_size_27(D)
# problem6.c:6:     int *out = (int *)malloc(*out_size * sizeof(int));
	slli	a5,a5,2	#, _4, _3
	mv	a0,a5	#, _4
	call	malloc@plt	#
	mv	a5,a0	# tmp105,
	sd	a5,-24(s0)	# tmp105, out
# problem6.c:7:     if (size > 0) out[0] = numbers[0];
	lw	a5,-44(s0)		# tmp107, size
	sext.w	a5,a5	# tmp108, tmp106
	ble	a5,zero,.L4	#, tmp108,,
# problem6.c:7:     if (size > 0) out[0] = numbers[0];
	ld	a5,-40(s0)		# tmp109, numbers
	lw	a4,0(a5)		# _5, *numbers_31(D)
# problem6.c:7:     if (size > 0) out[0] = numbers[0];
	ld	a5,-24(s0)		# tmp110, out
	sw	a4,0(a5)	# _5, *out_30
.L4:
# problem6.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	li	a5,1		# tmp111,
	sw	a5,-32(s0)	# tmp111, i
# problem6.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	li	a5,1		# tmp112,
	sw	a5,-28(s0)	# tmp112, j
# problem6.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	j	.L5		#
.L6:
# problem6.c:9:         out[j++] = delimiter;
	lw	a5,-28(s0)		# j.1_6, j
	addiw	a4,a5,1	#, tmp113, j.1_6
	sw	a4,-28(s0)	# tmp113, j
# problem6.c:9:         out[j++] = delimiter;
	slli	a5,a5,2	#, _8, _7
	ld	a4,-24(s0)		# tmp114, out
	add	a5,a4,a5	# _8, _9, tmp114
# problem6.c:9:         out[j++] = delimiter;
	lw	a4,-48(s0)		# tmp115, delimiter
	sw	a4,0(a5)	# tmp115, *_9
# problem6.c:10:         out[j++] = numbers[i];
	lw	a5,-32(s0)		# _10, i
	slli	a5,a5,2	#, _11, _10
	ld	a4,-40(s0)		# tmp116, numbers
	add	a4,a4,a5	# _11, _12, tmp116
# problem6.c:10:         out[j++] = numbers[i];
	lw	a5,-28(s0)		# j.2_13, j
	addiw	a3,a5,1	#, tmp117, j.2_13
	sw	a3,-28(s0)	# tmp117, j
# problem6.c:10:         out[j++] = numbers[i];
	slli	a5,a5,2	#, _15, _14
	ld	a3,-24(s0)		# tmp118, out
	add	a5,a3,a5	# _15, _16, tmp118
# problem6.c:10:         out[j++] = numbers[i];
	lw	a4,0(a4)		# _17, *_12
# problem6.c:10:         out[j++] = numbers[i];
	sw	a4,0(a5)	# _17, *_16
# problem6.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	lw	a5,-32(s0)		# tmp121, i
	addiw	a5,a5,1	#, tmp119, tmp120
	sw	a5,-32(s0)	# tmp119, i
.L5:
# problem6.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	lw	a5,-32(s0)		# tmp123, i
	mv	a4,a5	# tmp122, tmp123
	lw	a5,-44(s0)		# tmp125, size
	sext.w	a4,a4	# tmp126, tmp122
	sext.w	a5,a5	# tmp127, tmp124
	blt	a4,a5,.L6	#, tmp126, tmp127,
# problem6.c:12:     return out;
	ld	a5,-24(s0)		# _35, out
# problem6.c:13: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
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
	mv	a5,a2	# tmp82, size_a
	mv	a4,a3	# tmp84, size_b
	sw	a5,-52(s0)	# tmp83, size_a
	mv	a5,a4	# tmp85, tmp84
	sw	a5,-56(s0)	# tmp85, size_b
# problem6.c:22:     if (size_a != size_b) return 0;
	lw	a5,-52(s0)		# tmp87, size_a
	mv	a4,a5	# tmp86, tmp87
	lw	a5,-56(s0)		# tmp89, size_b
	sext.w	a4,a4	# tmp90, tmp86
	sext.w	a5,a5	# tmp91, tmp88
	beq	a4,a5,.L9	#, tmp90, tmp91,
# problem6.c:22:     if (size_a != size_b) return 0;
	li	a5,0		# _10,
	j	.L10		#
.L9:
# problem6.c:23:     for (int i = 0; i < size_a; i++) {
	sw	zero,-20(s0)	#, i
# problem6.c:23:     for (int i = 0; i < size_a; i++) {
	j	.L11		#
.L13:
# problem6.c:24:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp92, a
	add	a5,a4,a5	# _2, _3, tmp92
	lw	a3,0(a5)		# _4, *_3
# problem6.c:24:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-48(s0)		# tmp93, b
	add	a5,a4,a5	# _6, _7, tmp93
	lw	a5,0(a5)		# _8, *_7
# problem6.c:24:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp94, _4
	beq	a4,a5,.L12	#, tmp94, tmp95,
# problem6.c:24:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
	j	.L10		#
.L12:
# problem6.c:23:     for (int i = 0; i < size_a; i++) {
	lw	a5,-20(s0)		# tmp98, i
	addiw	a5,a5,1	#, tmp96, tmp97
	sw	a5,-20(s0)	# tmp96, i
.L11:
# problem6.c:23:     for (int i = 0; i < size_a; i++) {
	lw	a5,-20(s0)		# tmp100, i
	mv	a4,a5	# tmp99, tmp100
	lw	a5,-52(s0)		# tmp102, size_a
	sext.w	a4,a4	# tmp103, tmp99
	sext.w	a5,a5	# tmp104, tmp101
	blt	a4,a5,.L13	#, tmp103, tmp104,
# problem6.c:26:     return 1;
	li	a5,1		# _10,
.L10:
# problem6.c:27: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC3:
	.string	"problem6.c"
	.align	3
.LC4:
	.string	"issame(result_empty, (const int[]){}, out_size, 0)"
	.align	3
.LC5:
	.string	"issame(result1, result_expected1, out_size, 7)"
	.align	3
.LC6:
	.string	"issame(result2, result_expected2, out_size, 5)"
	.align	3
.LC0:
	.word	5
	.word	8
	.word	6
	.word	8
	.word	3
	.word	8
	.word	2
	.align	3
.LC1:
	.word	5
	.word	6
	.word	3
	.word	2
	.align	3
.LC2:
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-160	#,,
	sd	ra,152(sp)	#,
	sd	s0,144(sp)	#,
	addi	s0,sp,160	#,,
# problem6.c:29: int main() {
	la	a5,__stack_chk_guard		# tmp80,
	ld	a4, 0(a5)	# tmp111, __stack_chk_guard
	sd	a4, -24(s0)	# tmp111, D.2683
	li	a4, 0	# tmp111
# problem6.c:33:     int *result_empty = func0((const int[]){}, 0, 7, &out_size);
	addi	a4,s0,-148	#, tmp81,
	addi	a5,s0,-120	#, tmp82,
	mv	a3,a4	#, tmp81
	li	a2,7		#,
	li	a1,0		#,
	mv	a0,a5	#, tmp82
	call	func0		#
	sd	a0,-144(s0)	#, result_empty
# problem6.c:34:     assert(issame(result_empty, (const int[]){}, out_size, 0));
	lw	a4,-148(s0)		# out_size.3_1, out_size
	addi	a5,s0,-56	#, tmp83,
	li	a3,0		#,
	mv	a2,a4	#, out_size.3_1
	mv	a1,a5	#, tmp83
	ld	a0,-144(s0)		#, result_empty
	call	issame		#
	mv	a5,a0	# tmp84,
	bne	a5,zero,.L15	#, _2,,
# problem6.c:34:     assert(issame(result_empty, (const int[]){}, out_size, 0));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC3	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L15:
# problem6.c:35:     free(result_empty);
	ld	a0,-144(s0)		#, result_empty
	call	free@plt	#
# problem6.c:38:     int result_expected1[] = {5, 8, 6, 8, 3, 8, 2};
	lla	a5,.LC0	# tmp85,
	ld	a2,0(a5)		# tmp86,
	ld	a3,8(a5)		# tmp87,
	ld	a4,16(a5)		# tmp88,
	sd	a2,-56(s0)	# tmp86, MEM[(int[7] *)_41]
	sd	a3,-48(s0)	# tmp87, MEM[(int[7] *)_41]
	sd	a4,-40(s0)	# tmp88, MEM[(int[7] *)_41]
	lw	a5,24(a5)		# tmp89,
	sw	a5,-32(s0)	# tmp89, MEM[(int[7] *)_41]
# problem6.c:39:     int *result1 = func0((const int[]){5, 6, 3, 2}, 4, 8, &out_size);
	lla	a5,.LC1	# tmp90,
	ld	a4,0(a5)		# tmp91,
	sd	a4,-96(s0)	# tmp91, D.2645
	ld	a5,8(a5)		# tmp92,
	sd	a5,-88(s0)	# tmp92, D.2645
# problem6.c:39:     int *result1 = func0((const int[]){5, 6, 3, 2}, 4, 8, &out_size);
	addi	a4,s0,-148	#, tmp93,
	addi	a5,s0,-96	#, tmp94,
	mv	a3,a4	#, tmp93
	li	a2,8		#,
	li	a1,4		#,
	mv	a0,a5	#, tmp94
	call	func0		#
	sd	a0,-136(s0)	#, result1
# problem6.c:40:     assert(issame(result1, result_expected1, out_size, 7));
	lw	a4,-148(s0)		# out_size.4_3, out_size
	addi	a5,s0,-56	#, tmp95,
	li	a3,7		#,
	mv	a2,a4	#, out_size.4_3
	mv	a1,a5	#, tmp95
	ld	a0,-136(s0)		#, result1
	call	issame		#
	mv	a5,a0	# tmp96,
	bne	a5,zero,.L16	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,40		#,
	lla	a1,.LC3	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L16:
# problem6.c:41:     free(result1);
	ld	a0,-136(s0)		#, result1
	call	free@plt	#
# problem6.c:44:     int result_expected2[] = {2, 2, 2, 2, 2};
	lla	a5,.LC2	# tmp97,
	ld	a4,0(a5)		# tmp98,
	sd	a4,-80(s0)	# tmp98, result_expected2
	ld	a4,8(a5)		# tmp99,
	sd	a4,-72(s0)	# tmp99, result_expected2
	lw	a5,16(a5)		# tmp100,
	sw	a5,-64(s0)	# tmp100, result_expected2
# problem6.c:45:     int *result2 = func0((const int[]){2, 2, 2}, 3, 2, &out_size);
	li	a5,2		# tmp101,
	sw	a5,-112(s0)	# tmp101, D.2648[0]
	li	a5,2		# tmp102,
	sw	a5,-108(s0)	# tmp102, D.2648[1]
	li	a5,2		# tmp103,
	sw	a5,-104(s0)	# tmp103, D.2648[2]
# problem6.c:45:     int *result2 = func0((const int[]){2, 2, 2}, 3, 2, &out_size);
	addi	a4,s0,-148	#, tmp104,
	addi	a5,s0,-112	#, tmp105,
	mv	a3,a4	#, tmp104
	li	a2,2		#,
	li	a1,3		#,
	mv	a0,a5	#, tmp105
	call	func0		#
	sd	a0,-128(s0)	#, result2
# problem6.c:46:     assert(issame(result2, result_expected2, out_size, 5));
	lw	a4,-148(s0)		# out_size.5_5, out_size
	addi	a5,s0,-80	#, tmp106,
	li	a3,5		#,
	mv	a2,a4	#, out_size.5_5
	mv	a1,a5	#, tmp106
	ld	a0,-128(s0)		#, result2
	call	issame		#
	mv	a5,a0	# tmp107,
	bne	a5,zero,.L17	#, _6,,
# problem6.c:46:     assert(issame(result2, result_expected2, out_size, 5));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,46		#,
	lla	a1,.LC3	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L17:
# problem6.c:47:     free(result2);
	ld	a0,-128(s0)		#, result2
	call	free@plt	#
# problem6.c:49:     return 0;
	li	a5,0		# _32,
# problem6.c:50: }
	mv	a4,a5	# <retval>, _32
	la	a5,__stack_chk_guard		# tmp109,
	ld	a3, -24(s0)	# tmp112, D.2683
	ld	a5, 0(a5)	# tmp110, __stack_chk_guard
	xor	a5, a3, a5	# tmp110, tmp112
	li	a3, 0	# tmp112
	beq	a5,zero,.L19	#, tmp110,,
	call	__stack_chk_fail@plt	#
.L19:
	mv	a0,a4	#, <retval>
	ld	ra,152(sp)		#,
	ld	s0,144(sp)		#,
	addi	sp,sp,160	#,,
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
