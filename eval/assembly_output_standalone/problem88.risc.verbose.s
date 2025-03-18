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
	addi	sp,sp,-96	#,,
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	sd	s1,72(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,96	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)	# lst, lst
	mv	a5,a1	# tmp161, lst_size
	sd	a2,-88(s0)	# row_sizes, row_sizes
	sd	a4,-96(s0)	# return_size, return_size
	sw	a5,-76(s0)	# tmp162, lst_size
	mv	a5,a3	# tmp164, tmp163
	sw	a5,-80(s0)	# tmp164, x
# eval/problem88//code.c:5:     int **out = (int **)malloc(100 * sizeof(int *));
	li	a0,800		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp165,
	sd	a5,-40(s0)	# tmp165, out
# eval/problem88//code.c:6:     int count = 0;
	sw	zero,-52(s0)	#, count
# eval/problem88//code.c:7:     for (int i = 0; i < lst_size; i++) {
	sw	zero,-48(s0)	#, i
# eval/problem88//code.c:7:     for (int i = 0; i < lst_size; i++) {
	j	.L2		#
.L6:
# eval/problem88//code.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	lw	a5,-48(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-88(s0)		# tmp166, row_sizes
	add	a5,a4,a5	# _2, _3, tmp166
	lw	a5,0(a5)		# _4, *_3
# eval/problem88//code.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	addiw	a5,a5,-1	#, tmp167, _4
	sw	a5,-44(s0)	# tmp167, j
# eval/problem88//code.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	j	.L3		#
.L5:
# eval/problem88//code.c:9:             if (lst[i][j] == x) {
	lw	a5,-48(s0)		# _5, i
	slli	a5,a5,3	#, _6, _5
	ld	a4,-72(s0)		# tmp168, lst
	add	a5,a4,a5	# _6, _7, tmp168
	ld	a4,0(a5)		# _8, *_7
# eval/problem88//code.c:9:             if (lst[i][j] == x) {
	lw	a5,-44(s0)		# _9, j
	slli	a5,a5,2	#, _10, _9
	add	a5,a4,a5	# _10, _11, _8
	lw	a4,0(a5)		# _12, *_11
# eval/problem88//code.c:9:             if (lst[i][j] == x) {
	lw	a5,-80(s0)		# tmp170, x
	sext.w	a5,a5	# tmp171, tmp169
	bne	a5,a4,.L4	#, tmp171, tmp172,
# eval/problem88//code.c:10:                 out[count] = (int *)malloc(2 * sizeof(int));
	lw	a5,-52(s0)		# _13, count
	slli	a5,a5,3	#, _14, _13
	ld	a4,-40(s0)		# tmp173, out
	add	s1,a4,a5	# _14, _15, tmp173
# eval/problem88//code.c:10:                 out[count] = (int *)malloc(2 * sizeof(int));
	li	a0,8		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp174,
# eval/problem88//code.c:10:                 out[count] = (int *)malloc(2 * sizeof(int));
	sd	a5,0(s1)	# _16, *_15
# eval/problem88//code.c:11:                 out[count][0] = i;
	lw	a5,-52(s0)		# _17, count
	slli	a5,a5,3	#, _18, _17
	ld	a4,-40(s0)		# tmp175, out
	add	a5,a4,a5	# _18, _19, tmp175
	ld	a5,0(a5)		# _20, *_19
# eval/problem88//code.c:11:                 out[count][0] = i;
	lw	a4,-48(s0)		# tmp176, i
	sw	a4,0(a5)	# tmp176, *_20
# eval/problem88//code.c:12:                 out[count][1] = j;
	lw	a5,-52(s0)		# _21, count
	slli	a5,a5,3	#, _22, _21
	ld	a4,-40(s0)		# tmp177, out
	add	a5,a4,a5	# _22, _23, tmp177
	ld	a5,0(a5)		# _24, *_23
# eval/problem88//code.c:12:                 out[count][1] = j;
	addi	a5,a5,4	#, _25, _24
# eval/problem88//code.c:12:                 out[count][1] = j;
	lw	a4,-44(s0)		# tmp178, j
	sw	a4,0(a5)	# tmp178, *_25
# eval/problem88//code.c:13:                 count++;
	lw	a5,-52(s0)		# tmp181, count
	addiw	a5,a5,1	#, tmp179, tmp180
	sw	a5,-52(s0)	# tmp179, count
.L4:
# eval/problem88//code.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	lw	a5,-44(s0)		# tmp184, j
	addiw	a5,a5,-1	#, tmp182, tmp183
	sw	a5,-44(s0)	# tmp182, j
.L3:
# eval/problem88//code.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	lw	a5,-44(s0)		# tmp186, j
	sext.w	a5,a5	# tmp187, tmp185
	bge	a5,zero,.L5	#, tmp187,,
# eval/problem88//code.c:7:     for (int i = 0; i < lst_size; i++) {
	lw	a5,-48(s0)		# tmp190, i
	addiw	a5,a5,1	#, tmp188, tmp189
	sw	a5,-48(s0)	# tmp188, i
.L2:
# eval/problem88//code.c:7:     for (int i = 0; i < lst_size; i++) {
	lw	a5,-48(s0)		# tmp192, i
	mv	a4,a5	# tmp191, tmp192
	lw	a5,-76(s0)		# tmp194, lst_size
	sext.w	a4,a4	# tmp195, tmp191
	sext.w	a5,a5	# tmp196, tmp193
	blt	a4,a5,.L6	#, tmp195, tmp196,
# eval/problem88//code.c:17:     *return_size = count;
	ld	a5,-96(s0)		# tmp197, return_size
	lw	a4,-52(s0)		# tmp198, count
	sw	a4,0(a5)	# tmp198, *return_size_40(D)
# eval/problem88//code.c:18:     return out;
	ld	a5,-40(s0)		# _42, out
# eval/problem88//code.c:19: }
	mv	a0,a5	#, <retval>
	ld	ra,88(sp)		#,
	.cfi_restore 1
	ld	s0,80(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	ld	s1,72(sp)		#,
	.cfi_restore 9
	addi	sp,sp,96	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
