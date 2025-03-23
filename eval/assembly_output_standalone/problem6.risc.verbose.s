	.file	"code.c"
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
# eval/problem6//code.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	lw	a5,-44(s0)		# tmp97, size
	sext.w	a5,a5	# tmp98, tmp96
	ble	a5,zero,.L2	#, tmp98,,
# eval/problem6//code.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	lw	a5,-44(s0)		# tmp101, size
	slliw	a5,a5,1	#, tmp99, tmp100
	sext.w	a5,a5	# _1, tmp99
# eval/problem6//code.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	addiw	a5,a5,-1	#, tmp102, _1
	sext.w	a5,a5	# iftmp.0_20, tmp102
	j	.L3		#
.L2:
# eval/problem6//code.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	li	a5,0		# iftmp.0_20,
.L3:
# eval/problem6//code.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	ld	a4,-56(s0)		# tmp103, out_size
	sw	a5,0(a4)	# iftmp.0_20, *out_size_27(D)
# eval/problem6//code.c:6:     int *out = (int *)malloc(*out_size * sizeof(int));
	ld	a5,-56(s0)		# tmp104, out_size
	lw	a5,0(a5)		# _2, *out_size_27(D)
# eval/problem6//code.c:6:     int *out = (int *)malloc(*out_size * sizeof(int));
	slli	a5,a5,2	#, _4, _3
	mv	a0,a5	#, _4
	call	malloc@plt	#
	mv	a5,a0	# tmp105,
	sd	a5,-24(s0)	# tmp105, out
# eval/problem6//code.c:7:     if (size > 0) out[0] = numbers[0];
	lw	a5,-44(s0)		# tmp107, size
	sext.w	a5,a5	# tmp108, tmp106
	ble	a5,zero,.L4	#, tmp108,,
# eval/problem6//code.c:7:     if (size > 0) out[0] = numbers[0];
	ld	a5,-40(s0)		# tmp109, numbers
	lw	a4,0(a5)		# _5, *numbers_31(D)
# eval/problem6//code.c:7:     if (size > 0) out[0] = numbers[0];
	ld	a5,-24(s0)		# tmp110, out
	sw	a4,0(a5)	# _5, *out_30
.L4:
# eval/problem6//code.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	li	a5,1		# tmp111,
	sw	a5,-32(s0)	# tmp111, i
# eval/problem6//code.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	li	a5,1		# tmp112,
	sw	a5,-28(s0)	# tmp112, j
# eval/problem6//code.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	j	.L5		#
.L6:
# eval/problem6//code.c:9:         out[j++] = delimiter;
	lw	a5,-28(s0)		# j.1_6, j
	addiw	a4,a5,1	#, tmp113, j.1_6
	sw	a4,-28(s0)	# tmp113, j
# eval/problem6//code.c:9:         out[j++] = delimiter;
	slli	a5,a5,2	#, _8, _7
	ld	a4,-24(s0)		# tmp114, out
	add	a5,a4,a5	# _8, _9, tmp114
# eval/problem6//code.c:9:         out[j++] = delimiter;
	lw	a4,-48(s0)		# tmp115, delimiter
	sw	a4,0(a5)	# tmp115, *_9
# eval/problem6//code.c:10:         out[j++] = numbers[i];
	lw	a5,-32(s0)		# _10, i
	slli	a5,a5,2	#, _11, _10
	ld	a4,-40(s0)		# tmp116, numbers
	add	a4,a4,a5	# _11, _12, tmp116
# eval/problem6//code.c:10:         out[j++] = numbers[i];
	lw	a5,-28(s0)		# j.2_13, j
	addiw	a3,a5,1	#, tmp117, j.2_13
	sw	a3,-28(s0)	# tmp117, j
# eval/problem6//code.c:10:         out[j++] = numbers[i];
	slli	a5,a5,2	#, _15, _14
	ld	a3,-24(s0)		# tmp118, out
	add	a5,a3,a5	# _15, _16, tmp118
# eval/problem6//code.c:10:         out[j++] = numbers[i];
	lw	a4,0(a4)		# _17, *_12
# eval/problem6//code.c:10:         out[j++] = numbers[i];
	sw	a4,0(a5)	# _17, *_16
# eval/problem6//code.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	lw	a5,-32(s0)		# tmp121, i
	addiw	a5,a5,1	#, tmp119, tmp120
	sw	a5,-32(s0)	# tmp119, i
.L5:
# eval/problem6//code.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	lw	a5,-32(s0)		# tmp123, i
	mv	a4,a5	# tmp122, tmp123
	lw	a5,-44(s0)		# tmp125, size
	sext.w	a4,a4	# tmp126, tmp122
	sext.w	a5,a5	# tmp127, tmp124
	blt	a4,a5,.L6	#, tmp126, tmp127,
# eval/problem6//code.c:12:     return out;
	ld	a5,-24(s0)		# _35, out
# eval/problem6//code.c:13: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
