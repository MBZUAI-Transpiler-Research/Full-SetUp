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
.LFB0:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# lst, lst
	mv	a5,a1	# tmp154, size
	sw	a5,-44(s0)	# tmp155, size
# eval/problem91//code.c:5:     if (size < 2) return -1;
	lw	a5,-44(s0)		# tmp157, size
	sext.w	a4,a5	# tmp158, tmp156
	li	a5,1		# tmp159,
	bgt	a4,a5,.L2	#, tmp158, tmp159,
# eval/problem91//code.c:5:     if (size < 2) return -1;
	li	a5,-1		# _24,
# eval/problem91//code.c:5:     if (size < 2) return -1;
	j	.L3		#
.L2:
# eval/problem91//code.c:7:     int first = INT_MAX, second = INT_MAX;
	li	a5,-2147483648		# tmp161,
	addi	a5,a5,-1	#, tmp160, tmp161
	sw	a5,-28(s0)	# tmp160, first
# eval/problem91//code.c:7:     int first = INT_MAX, second = INT_MAX;
	li	a5,-2147483648		# tmp163,
	addi	a5,a5,-1	#, tmp162, tmp163
	sw	a5,-24(s0)	# tmp162, second
# eval/problem91//code.c:8:     for (int i = 0; i < size; ++i) {
	sw	zero,-20(s0)	#, i
# eval/problem91//code.c:8:     for (int i = 0; i < size; ++i) {
	j	.L4		#
.L7:
# eval/problem91//code.c:9:         if (lst[i] < first) {
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp164, lst
	add	a5,a4,a5	# _2, _3, tmp164
	lw	a4,0(a5)		# _4, *_3
# eval/problem91//code.c:9:         if (lst[i] < first) {
	lw	a5,-28(s0)		# tmp166, first
	sext.w	a5,a5	# tmp167, tmp165
	ble	a5,a4,.L5	#, tmp167, tmp168,
# eval/problem91//code.c:10:             second = first;
	lw	a5,-28(s0)		# tmp169, first
	sw	a5,-24(s0)	# tmp169, second
# eval/problem91//code.c:11:             first = lst[i];
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-40(s0)		# tmp170, lst
	add	a5,a4,a5	# _6, _7, tmp170
# eval/problem91//code.c:11:             first = lst[i];
	lw	a5,0(a5)		# tmp171, *_7
	sw	a5,-28(s0)	# tmp171, first
	j	.L6		#
.L5:
# eval/problem91//code.c:12:         } else if (lst[i] < second && lst[i] != first) {
	lw	a5,-20(s0)		# _8, i
	slli	a5,a5,2	#, _9, _8
	ld	a4,-40(s0)		# tmp172, lst
	add	a5,a4,a5	# _9, _10, tmp172
	lw	a4,0(a5)		# _11, *_10
# eval/problem91//code.c:12:         } else if (lst[i] < second && lst[i] != first) {
	lw	a5,-24(s0)		# tmp174, second
	sext.w	a5,a5	# tmp175, tmp173
	ble	a5,a4,.L6	#, tmp175, tmp176,
# eval/problem91//code.c:12:         } else if (lst[i] < second && lst[i] != first) {
	lw	a5,-20(s0)		# _12, i
	slli	a5,a5,2	#, _13, _12
	ld	a4,-40(s0)		# tmp177, lst
	add	a5,a4,a5	# _13, _14, tmp177
	lw	a4,0(a5)		# _15, *_14
# eval/problem91//code.c:12:         } else if (lst[i] < second && lst[i] != first) {
	lw	a5,-28(s0)		# tmp179, first
	sext.w	a5,a5	# tmp180, tmp178
	beq	a5,a4,.L6	#, tmp180, tmp181,
# eval/problem91//code.c:13:             second = lst[i];
	lw	a5,-20(s0)		# _16, i
	slli	a5,a5,2	#, _17, _16
	ld	a4,-40(s0)		# tmp182, lst
	add	a5,a4,a5	# _17, _18, tmp182
# eval/problem91//code.c:13:             second = lst[i];
	lw	a5,0(a5)		# tmp183, *_18
	sw	a5,-24(s0)	# tmp183, second
.L6:
# eval/problem91//code.c:8:     for (int i = 0; i < size; ++i) {
	lw	a5,-20(s0)		# tmp186, i
	addiw	a5,a5,1	#, tmp184, tmp185
	sw	a5,-20(s0)	# tmp184, i
.L4:
# eval/problem91//code.c:8:     for (int i = 0; i < size; ++i) {
	lw	a5,-20(s0)		# tmp188, i
	mv	a4,a5	# tmp187, tmp188
	lw	a5,-44(s0)		# tmp190, size
	sext.w	a4,a4	# tmp191, tmp187
	sext.w	a5,a5	# tmp192, tmp189
	blt	a4,a5,.L7	#, tmp191, tmp192,
# eval/problem91//code.c:17:     if (second == INT_MAX) return -1;
	lw	a5,-24(s0)		# tmp194, second
	sext.w	a4,a5	# tmp195, tmp193
	li	a5,-2147483648		# tmp197,
	xori	a5,a5,-1	#, tmp196, tmp197
	bne	a4,a5,.L8	#, tmp195, tmp196,
# eval/problem91//code.c:17:     if (second == INT_MAX) return -1;
	li	a5,-1		# _24,
# eval/problem91//code.c:17:     if (second == INT_MAX) return -1;
	j	.L3		#
.L8:
# eval/problem91//code.c:18:     return second;
	lw	a5,-24(s0)		# _24, second
.L3:
# eval/problem91//code.c:19: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
