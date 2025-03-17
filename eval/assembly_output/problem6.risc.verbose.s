	.file	"problem6.c"
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
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# numbers, numbers
	mv	a5,a1	# tmp154, size
	mv	a4,a2	# tmp156, delimiter
	sd	a3,-56(s0)	# out_size, out_size
	sw	a5,-44(s0)	# tmp155, size
	mv	a5,a4	# tmp157, tmp156
	sw	a5,-48(s0)	# tmp157, delimiter
# problem6.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	lw	a5,-44(s0)		# tmp159, size
	sext.w	a5,a5	# tmp160, tmp158
	ble	a5,zero,.L2	#, tmp160,,
# problem6.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	lw	a5,-44(s0)		# tmp163, size
	slliw	a5,a5,1	#, tmp161, tmp162
	sext.w	a5,a5	# _1, tmp161
# problem6.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	addiw	a5,a5,-1	#, tmp164, _1
	sext.w	a5,a5	# iftmp.0_20, tmp164
	j	.L3		#
.L2:
# problem6.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	li	a5,0		# iftmp.0_20,
.L3:
# problem6.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	ld	a4,-56(s0)		# tmp165, out_size
	sw	a5,0(a4)	# iftmp.0_20, *out_size_27(D)
# problem6.c:6:     int *out = (int *)malloc(*out_size * sizeof(int));
	ld	a5,-56(s0)		# tmp166, out_size
	lw	a5,0(a5)		# _2, *out_size_27(D)
# problem6.c:6:     int *out = (int *)malloc(*out_size * sizeof(int));
	slli	a5,a5,2	#, _4, _3
	mv	a0,a5	#, _4
	call	malloc@plt	#
	mv	a5,a0	# tmp167,
	sd	a5,-24(s0)	# tmp167, out
# problem6.c:7:     if (size > 0) out[0] = numbers[0];
	lw	a5,-44(s0)		# tmp169, size
	sext.w	a5,a5	# tmp170, tmp168
	ble	a5,zero,.L4	#, tmp170,,
# problem6.c:7:     if (size > 0) out[0] = numbers[0];
	ld	a5,-40(s0)		# tmp171, numbers
	lw	a4,0(a5)		# _5, *numbers_31(D)
# problem6.c:7:     if (size > 0) out[0] = numbers[0];
	ld	a5,-24(s0)		# tmp172, out
	sw	a4,0(a5)	# _5, *out_30
.L4:
# problem6.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	li	a5,1		# tmp173,
	sw	a5,-32(s0)	# tmp173, i
# problem6.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	li	a5,1		# tmp174,
	sw	a5,-28(s0)	# tmp174, j
# problem6.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	j	.L5		#
.L6:
# problem6.c:9:         out[j++] = delimiter;
	lw	a5,-28(s0)		# j.1_6, j
	addiw	a4,a5,1	#, tmp175, j.1_6
	sw	a4,-28(s0)	# tmp175, j
# problem6.c:9:         out[j++] = delimiter;
	slli	a5,a5,2	#, _8, _7
	ld	a4,-24(s0)		# tmp176, out
	add	a5,a4,a5	# _8, _9, tmp176
# problem6.c:9:         out[j++] = delimiter;
	lw	a4,-48(s0)		# tmp177, delimiter
	sw	a4,0(a5)	# tmp177, *_9
# problem6.c:10:         out[j++] = numbers[i];
	lw	a5,-32(s0)		# _10, i
	slli	a5,a5,2	#, _11, _10
	ld	a4,-40(s0)		# tmp178, numbers
	add	a4,a4,a5	# _11, _12, tmp178
# problem6.c:10:         out[j++] = numbers[i];
	lw	a5,-28(s0)		# j.2_13, j
	addiw	a3,a5,1	#, tmp179, j.2_13
	sw	a3,-28(s0)	# tmp179, j
# problem6.c:10:         out[j++] = numbers[i];
	slli	a5,a5,2	#, _15, _14
	ld	a3,-24(s0)		# tmp180, out
	add	a5,a3,a5	# _15, _16, tmp180
# problem6.c:10:         out[j++] = numbers[i];
	lw	a4,0(a4)		# _17, *_12
# problem6.c:10:         out[j++] = numbers[i];
	sw	a4,0(a5)	# _17, *_16
# problem6.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	lw	a5,-32(s0)		# tmp183, i
	addiw	a5,a5,1	#, tmp181, tmp182
	sw	a5,-32(s0)	# tmp181, i
.L5:
# problem6.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	lw	a5,-32(s0)		# tmp185, i
	mv	a4,a5	# tmp184, tmp185
	lw	a5,-44(s0)		# tmp187, size
	sext.w	a4,a4	# tmp188, tmp184
	sext.w	a5,a5	# tmp189, tmp186
	blt	a4,a5,.L6	#, tmp188, tmp189,
# problem6.c:12:     return out;
	ld	a5,-24(s0)		# _35, out
# problem6.c:13: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
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
	mv	a5,a2	# tmp144, size_a
	mv	a4,a3	# tmp146, size_b
	sw	a5,-52(s0)	# tmp145, size_a
	mv	a5,a4	# tmp147, tmp146
	sw	a5,-56(s0)	# tmp147, size_b
# problem6.c:22:     if (size_a != size_b) return 0;
	lw	a5,-52(s0)		# tmp149, size_a
	mv	a4,a5	# tmp148, tmp149
	lw	a5,-56(s0)		# tmp151, size_b
	sext.w	a4,a4	# tmp152, tmp148
	sext.w	a5,a5	# tmp153, tmp150
	beq	a4,a5,.L9	#, tmp152, tmp153,
# problem6.c:22:     if (size_a != size_b) return 0;
	li	a5,0		# _10,
# problem6.c:22:     if (size_a != size_b) return 0;
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
	ld	a4,-40(s0)		# tmp154, a
	add	a5,a4,a5	# _2, _3, tmp154
	lw	a3,0(a5)		# _4, *_3
# problem6.c:24:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-48(s0)		# tmp155, b
	add	a5,a4,a5	# _6, _7, tmp155
	lw	a5,0(a5)		# _8, *_7
# problem6.c:24:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp156, _4
	beq	a4,a5,.L12	#, tmp156, tmp157,
# problem6.c:24:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
# problem6.c:24:         if (a[i] != b[i]) return 0;
	j	.L10		#
.L12:
# problem6.c:23:     for (int i = 0; i < size_a; i++) {
	lw	a5,-20(s0)		# tmp160, i
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-20(s0)	# tmp158, i
.L11:
# problem6.c:23:     for (int i = 0; i < size_a; i++) {
	lw	a5,-20(s0)		# tmp162, i
	mv	a4,a5	# tmp161, tmp162
	lw	a5,-52(s0)		# tmp164, size_a
	sext.w	a4,a4	# tmp165, tmp161
	sext.w	a5,a5	# tmp166, tmp163
	blt	a4,a5,.L13	#, tmp165, tmp166,
# problem6.c:26:     return 1;
	li	a5,1		# _10,
.L10:
# problem6.c:27: }
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
.LFB8:
	.cfi_startproc
	addi	sp,sp,-160	#,,
	.cfi_def_cfa_offset 160
	sd	ra,152(sp)	#,
	sd	s0,144(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,160	#,,
	.cfi_def_cfa 8, 0
# problem6.c:29: int main() {
	la	a5,__stack_chk_guard		# tmp142,
	ld	a4, 0(a5)	# tmp173, __stack_chk_guard
	sd	a4, -24(s0)	# tmp173, D.3535
	li	a4, 0	# tmp173
# problem6.c:33:     int *result_empty = func0((const int[]){}, 0, 7, &out_size);
	addi	a4,s0,-148	#, tmp143,
	addi	a5,s0,-120	#, tmp144,
	mv	a3,a4	#, tmp143
	li	a2,7		#,
	li	a1,0		#,
	mv	a0,a5	#, tmp144
	call	func0		#
	sd	a0,-144(s0)	#, result_empty
# problem6.c:34:     assert(issame(result_empty, (const int[]){}, out_size, 0));
	lw	a4,-148(s0)		# out_size.3_1, out_size
	addi	a5,s0,-56	#, tmp145,
	li	a3,0		#,
	mv	a2,a4	#, out_size.3_1
	mv	a1,a5	#, tmp145
	ld	a0,-144(s0)		#, result_empty
	call	issame		#
	mv	a5,a0	# tmp146,
# problem6.c:34:     assert(issame(result_empty, (const int[]){}, out_size, 0));
	bne	a5,zero,.L15	#, _2,,
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
	lla	a5,.LC0	# tmp147,
	ld	a2,0(a5)		# tmp148,
	ld	a3,8(a5)		# tmp149,
	ld	a4,16(a5)		# tmp150,
	sd	a2,-56(s0)	# tmp148, MEM[(int[7] *)_39]
	sd	a3,-48(s0)	# tmp149, MEM[(int[7] *)_39]
	sd	a4,-40(s0)	# tmp150, MEM[(int[7] *)_39]
	lw	a5,24(a5)		# tmp151,
	sw	a5,-32(s0)	# tmp151, MEM[(int[7] *)_39]
# problem6.c:39:     int *result1 = func0((const int[]){5, 6, 3, 2}, 4, 8, &out_size);
	lla	a5,.LC1	# tmp152,
	ld	a4,0(a5)		# tmp153,
	sd	a4,-96(s0)	# tmp153, D.3497
	ld	a5,8(a5)		# tmp154,
	sd	a5,-88(s0)	# tmp154, D.3497
# problem6.c:39:     int *result1 = func0((const int[]){5, 6, 3, 2}, 4, 8, &out_size);
	addi	a4,s0,-148	#, tmp155,
	addi	a5,s0,-96	#, tmp156,
	mv	a3,a4	#, tmp155
	li	a2,8		#,
	li	a1,4		#,
	mv	a0,a5	#, tmp156
	call	func0		#
	sd	a0,-136(s0)	#, result1
# problem6.c:40:     assert(issame(result1, result_expected1, out_size, 7));
	lw	a4,-148(s0)		# out_size.4_3, out_size
	addi	a5,s0,-56	#, tmp157,
	li	a3,7		#,
	mv	a2,a4	#, out_size.4_3
	mv	a1,a5	#, tmp157
	ld	a0,-136(s0)		#, result1
	call	issame		#
	mv	a5,a0	# tmp158,
# problem6.c:40:     assert(issame(result1, result_expected1, out_size, 7));
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
	lla	a5,.LC2	# tmp159,
	ld	a4,0(a5)		# tmp160,
	sd	a4,-80(s0)	# tmp160, result_expected2
	ld	a4,8(a5)		# tmp161,
	sd	a4,-72(s0)	# tmp161, result_expected2
	lw	a5,16(a5)		# tmp162,
	sw	a5,-64(s0)	# tmp162, result_expected2
# problem6.c:45:     int *result2 = func0((const int[]){2, 2, 2}, 3, 2, &out_size);
	li	a5,2		# tmp163,
	sw	a5,-112(s0)	# tmp163, D.3500[0]
	li	a5,2		# tmp164,
	sw	a5,-108(s0)	# tmp164, D.3500[1]
	li	a5,2		# tmp165,
	sw	a5,-104(s0)	# tmp165, D.3500[2]
# problem6.c:45:     int *result2 = func0((const int[]){2, 2, 2}, 3, 2, &out_size);
	addi	a4,s0,-148	#, tmp166,
	addi	a5,s0,-112	#, tmp167,
	mv	a3,a4	#, tmp166
	li	a2,2		#,
	li	a1,3		#,
	mv	a0,a5	#, tmp167
	call	func0		#
	sd	a0,-128(s0)	#, result2
# problem6.c:46:     assert(issame(result2, result_expected2, out_size, 5));
	lw	a4,-148(s0)		# out_size.5_5, out_size
	addi	a5,s0,-80	#, tmp168,
	li	a3,5		#,
	mv	a2,a4	#, out_size.5_5
	mv	a1,a5	#, tmp168
	ld	a0,-128(s0)		#, result2
	call	issame		#
	mv	a5,a0	# tmp169,
# problem6.c:46:     assert(issame(result2, result_expected2, out_size, 5));
	bne	a5,zero,.L17	#, _6,,
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
	li	a5,0		# _30,
# problem6.c:50: }
	mv	a4,a5	# <retval>, _30
	la	a5,__stack_chk_guard		# tmp171,
	ld	a3, -24(s0)	# tmp174, D.3535
	ld	a5, 0(a5)	# tmp172, __stack_chk_guard
	xor	a5, a3, a5	# tmp172, tmp174
	li	a3, 0	# tmp174
	beq	a5,zero,.L19	#, tmp172,,
	call	__stack_chk_fail@plt	#
.L19:
	mv	a0,a4	#, <retval>
	ld	ra,152(sp)		#,
	.cfi_restore 1
	ld	s0,144(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 160
	addi	sp,sp,160	#,,
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
