	.file	"code.c"
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
# eval/problem6//code.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	lw	a5,-44(s0)		# tmp159, size
	sext.w	a5,a5	# tmp160, tmp158
	ble	a5,zero,.L2	#, tmp160,,
# eval/problem6//code.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	lw	a5,-44(s0)		# tmp163, size
	slliw	a5,a5,1	#, tmp161, tmp162
	sext.w	a5,a5	# _1, tmp161
# eval/problem6//code.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	addiw	a5,a5,-1	#, tmp164, _1
	sext.w	a5,a5	# iftmp.0_20, tmp164
	j	.L3		#
.L2:
# eval/problem6//code.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	li	a5,0		# iftmp.0_20,
.L3:
# eval/problem6//code.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	ld	a4,-56(s0)		# tmp165, out_size
	sw	a5,0(a4)	# iftmp.0_20, *out_size_27(D)
# eval/problem6//code.c:6:     int *out = (int *)malloc(*out_size * sizeof(int));
	ld	a5,-56(s0)		# tmp166, out_size
	lw	a5,0(a5)		# _2, *out_size_27(D)
# eval/problem6//code.c:6:     int *out = (int *)malloc(*out_size * sizeof(int));
	slli	a5,a5,2	#, _4, _3
	mv	a0,a5	#, _4
	call	malloc@plt	#
	mv	a5,a0	# tmp167,
	sd	a5,-24(s0)	# tmp167, out
# eval/problem6//code.c:7:     if (size > 0) out[0] = numbers[0];
	lw	a5,-44(s0)		# tmp169, size
	sext.w	a5,a5	# tmp170, tmp168
	ble	a5,zero,.L4	#, tmp170,,
# eval/problem6//code.c:7:     if (size > 0) out[0] = numbers[0];
	ld	a5,-40(s0)		# tmp171, numbers
	lw	a4,0(a5)		# _5, *numbers_31(D)
# eval/problem6//code.c:7:     if (size > 0) out[0] = numbers[0];
	ld	a5,-24(s0)		# tmp172, out
	sw	a4,0(a5)	# _5, *out_30
.L4:
# eval/problem6//code.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	li	a5,1		# tmp173,
	sw	a5,-32(s0)	# tmp173, i
# eval/problem6//code.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	li	a5,1		# tmp174,
	sw	a5,-28(s0)	# tmp174, j
# eval/problem6//code.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	j	.L5		#
.L6:
# eval/problem6//code.c:9:         out[j++] = delimiter;
	lw	a5,-28(s0)		# j.1_6, j
	addiw	a4,a5,1	#, tmp175, j.1_6
	sw	a4,-28(s0)	# tmp175, j
# eval/problem6//code.c:9:         out[j++] = delimiter;
	slli	a5,a5,2	#, _8, _7
	ld	a4,-24(s0)		# tmp176, out
	add	a5,a4,a5	# _8, _9, tmp176
# eval/problem6//code.c:9:         out[j++] = delimiter;
	lw	a4,-48(s0)		# tmp177, delimiter
	sw	a4,0(a5)	# tmp177, *_9
# eval/problem6//code.c:10:         out[j++] = numbers[i];
	lw	a5,-32(s0)		# _10, i
	slli	a5,a5,2	#, _11, _10
	ld	a4,-40(s0)		# tmp178, numbers
	add	a4,a4,a5	# _11, _12, tmp178
# eval/problem6//code.c:10:         out[j++] = numbers[i];
	lw	a5,-28(s0)		# j.2_13, j
	addiw	a3,a5,1	#, tmp179, j.2_13
	sw	a3,-28(s0)	# tmp179, j
# eval/problem6//code.c:10:         out[j++] = numbers[i];
	slli	a5,a5,2	#, _15, _14
	ld	a3,-24(s0)		# tmp180, out
	add	a5,a3,a5	# _15, _16, tmp180
# eval/problem6//code.c:10:         out[j++] = numbers[i];
	lw	a4,0(a4)		# _17, *_12
# eval/problem6//code.c:10:         out[j++] = numbers[i];
	sw	a4,0(a5)	# _17, *_16
# eval/problem6//code.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	lw	a5,-32(s0)		# tmp183, i
	addiw	a5,a5,1	#, tmp181, tmp182
	sw	a5,-32(s0)	# tmp181, i
.L5:
# eval/problem6//code.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	lw	a5,-32(s0)		# tmp185, i
	mv	a4,a5	# tmp184, tmp185
	lw	a5,-44(s0)		# tmp187, size
	sext.w	a4,a4	# tmp188, tmp184
	sext.w	a5,a5	# tmp189, tmp186
	blt	a4,a5,.L6	#, tmp188, tmp189,
# eval/problem6//code.c:12:     return out;
	ld	a5,-24(s0)		# _35, out
# eval/problem6//code.c:13: }
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
