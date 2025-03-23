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
	addi	sp,sp,-96	#,,
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	sd	s1,72(sp)	#,
	addi	s0,sp,96	#,,
	sd	a0,-72(s0)	# lst, lst
	mv	a5,a1	# tmp99, lst_size
	sd	a2,-88(s0)	# row_sizes, row_sizes
	sd	a4,-96(s0)	# return_size, return_size
	sw	a5,-76(s0)	# tmp100, lst_size
	mv	a5,a3	# tmp102, tmp101
	sw	a5,-80(s0)	# tmp102, x
# eval/problem88//code.c:5:     int **out = (int **)malloc(100 * sizeof(int *));
	li	a0,800		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp103,
	sd	a5,-40(s0)	# tmp103, out
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
	ld	a4,-88(s0)		# tmp104, row_sizes
	add	a5,a4,a5	# _2, _3, tmp104
	lw	a5,0(a5)		# _4, *_3
# eval/problem88//code.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	addiw	a5,a5,-1	#, tmp105, _4
	sw	a5,-44(s0)	# tmp105, j
# eval/problem88//code.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	j	.L3		#
.L5:
# eval/problem88//code.c:9:             if (lst[i][j] == x) {
	lw	a5,-48(s0)		# _5, i
	slli	a5,a5,3	#, _6, _5
	ld	a4,-72(s0)		# tmp106, lst
	add	a5,a4,a5	# _6, _7, tmp106
	ld	a4,0(a5)		# _8, *_7
# eval/problem88//code.c:9:             if (lst[i][j] == x) {
	lw	a5,-44(s0)		# _9, j
	slli	a5,a5,2	#, _10, _9
	add	a5,a4,a5	# _10, _11, _8
	lw	a4,0(a5)		# _12, *_11
# eval/problem88//code.c:9:             if (lst[i][j] == x) {
	lw	a5,-80(s0)		# tmp108, x
	sext.w	a5,a5	# tmp109, tmp107
	bne	a5,a4,.L4	#, tmp109, tmp110,
# eval/problem88//code.c:10:                 out[count] = (int *)malloc(2 * sizeof(int));
	lw	a5,-52(s0)		# _13, count
	slli	a5,a5,3	#, _14, _13
	ld	a4,-40(s0)		# tmp111, out
	add	s1,a4,a5	# _14, _15, tmp111
# eval/problem88//code.c:10:                 out[count] = (int *)malloc(2 * sizeof(int));
	li	a0,8		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp112,
# eval/problem88//code.c:10:                 out[count] = (int *)malloc(2 * sizeof(int));
	sd	a5,0(s1)	# _16, *_15
# eval/problem88//code.c:11:                 out[count][0] = i;
	lw	a5,-52(s0)		# _17, count
	slli	a5,a5,3	#, _18, _17
	ld	a4,-40(s0)		# tmp113, out
	add	a5,a4,a5	# _18, _19, tmp113
	ld	a5,0(a5)		# _20, *_19
# eval/problem88//code.c:11:                 out[count][0] = i;
	lw	a4,-48(s0)		# tmp114, i
	sw	a4,0(a5)	# tmp114, *_20
# eval/problem88//code.c:12:                 out[count][1] = j;
	lw	a5,-52(s0)		# _21, count
	slli	a5,a5,3	#, _22, _21
	ld	a4,-40(s0)		# tmp115, out
	add	a5,a4,a5	# _22, _23, tmp115
	ld	a5,0(a5)		# _24, *_23
# eval/problem88//code.c:12:                 out[count][1] = j;
	addi	a5,a5,4	#, _25, _24
# eval/problem88//code.c:12:                 out[count][1] = j;
	lw	a4,-44(s0)		# tmp116, j
	sw	a4,0(a5)	# tmp116, *_25
# eval/problem88//code.c:13:                 count++;
	lw	a5,-52(s0)		# tmp119, count
	addiw	a5,a5,1	#, tmp117, tmp118
	sw	a5,-52(s0)	# tmp117, count
.L4:
# eval/problem88//code.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	lw	a5,-44(s0)		# tmp122, j
	addiw	a5,a5,-1	#, tmp120, tmp121
	sw	a5,-44(s0)	# tmp120, j
.L3:
# eval/problem88//code.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	lw	a5,-44(s0)		# tmp124, j
	sext.w	a5,a5	# tmp125, tmp123
	bge	a5,zero,.L5	#, tmp125,,
# eval/problem88//code.c:7:     for (int i = 0; i < lst_size; i++) {
	lw	a5,-48(s0)		# tmp128, i
	addiw	a5,a5,1	#, tmp126, tmp127
	sw	a5,-48(s0)	# tmp126, i
.L2:
# eval/problem88//code.c:7:     for (int i = 0; i < lst_size; i++) {
	lw	a5,-48(s0)		# tmp130, i
	mv	a4,a5	# tmp129, tmp130
	lw	a5,-76(s0)		# tmp132, lst_size
	sext.w	a4,a4	# tmp133, tmp129
	sext.w	a5,a5	# tmp134, tmp131
	blt	a4,a5,.L6	#, tmp133, tmp134,
# eval/problem88//code.c:17:     *return_size = count;
	ld	a5,-96(s0)		# tmp135, return_size
	lw	a4,-52(s0)		# tmp136, count
	sw	a4,0(a5)	# tmp136, *return_size_40(D)
# eval/problem88//code.c:18:     return out;
	ld	a5,-40(s0)		# _42, out
# eval/problem88//code.c:19: }
	mv	a0,a5	#, <retval>
	ld	ra,88(sp)		#,
	ld	s0,80(sp)		#,
	ld	s1,72(sp)		#,
	addi	sp,sp,96	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
