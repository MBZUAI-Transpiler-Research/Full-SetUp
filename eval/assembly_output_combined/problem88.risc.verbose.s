	.file	"problem88.c"
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
# problem88.c:5:     int **out = (int **)malloc(100 * sizeof(int *));
	li	a0,800		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp103,
	sd	a5,-40(s0)	# tmp103, out
# problem88.c:6:     int count = 0;
	sw	zero,-52(s0)	#, count
# problem88.c:7:     for (int i = 0; i < lst_size; i++) {
	sw	zero,-48(s0)	#, i
# problem88.c:7:     for (int i = 0; i < lst_size; i++) {
	j	.L2		#
.L6:
# problem88.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	lw	a5,-48(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-88(s0)		# tmp104, row_sizes
	add	a5,a4,a5	# _2, _3, tmp104
	lw	a5,0(a5)		# _4, *_3
# problem88.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	addiw	a5,a5,-1	#, tmp105, _4
	sw	a5,-44(s0)	# tmp105, j
# problem88.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	j	.L3		#
.L5:
# problem88.c:9:             if (lst[i][j] == x) {
	lw	a5,-48(s0)		# _5, i
	slli	a5,a5,3	#, _6, _5
	ld	a4,-72(s0)		# tmp106, lst
	add	a5,a4,a5	# _6, _7, tmp106
	ld	a4,0(a5)		# _8, *_7
# problem88.c:9:             if (lst[i][j] == x) {
	lw	a5,-44(s0)		# _9, j
	slli	a5,a5,2	#, _10, _9
	add	a5,a4,a5	# _10, _11, _8
	lw	a4,0(a5)		# _12, *_11
# problem88.c:9:             if (lst[i][j] == x) {
	lw	a5,-80(s0)		# tmp108, x
	sext.w	a5,a5	# tmp109, tmp107
	bne	a5,a4,.L4	#, tmp109, tmp110,
# problem88.c:10:                 out[count] = (int *)malloc(2 * sizeof(int));
	lw	a5,-52(s0)		# _13, count
	slli	a5,a5,3	#, _14, _13
	ld	a4,-40(s0)		# tmp111, out
	add	s1,a4,a5	# _14, _15, tmp111
# problem88.c:10:                 out[count] = (int *)malloc(2 * sizeof(int));
	li	a0,8		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp112,
# problem88.c:10:                 out[count] = (int *)malloc(2 * sizeof(int));
	sd	a5,0(s1)	# _16, *_15
# problem88.c:11:                 out[count][0] = i;
	lw	a5,-52(s0)		# _17, count
	slli	a5,a5,3	#, _18, _17
	ld	a4,-40(s0)		# tmp113, out
	add	a5,a4,a5	# _18, _19, tmp113
	ld	a5,0(a5)		# _20, *_19
# problem88.c:11:                 out[count][0] = i;
	lw	a4,-48(s0)		# tmp114, i
	sw	a4,0(a5)	# tmp114, *_20
# problem88.c:12:                 out[count][1] = j;
	lw	a5,-52(s0)		# _21, count
	slli	a5,a5,3	#, _22, _21
	ld	a4,-40(s0)		# tmp115, out
	add	a5,a4,a5	# _22, _23, tmp115
	ld	a5,0(a5)		# _24, *_23
# problem88.c:12:                 out[count][1] = j;
	addi	a5,a5,4	#, _25, _24
# problem88.c:12:                 out[count][1] = j;
	lw	a4,-44(s0)		# tmp116, j
	sw	a4,0(a5)	# tmp116, *_25
# problem88.c:13:                 count++;
	lw	a5,-52(s0)		# tmp119, count
	addiw	a5,a5,1	#, tmp117, tmp118
	sw	a5,-52(s0)	# tmp117, count
.L4:
# problem88.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	lw	a5,-44(s0)		# tmp122, j
	addiw	a5,a5,-1	#, tmp120, tmp121
	sw	a5,-44(s0)	# tmp120, j
.L3:
# problem88.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	lw	a5,-44(s0)		# tmp124, j
	sext.w	a5,a5	# tmp125, tmp123
	bge	a5,zero,.L5	#, tmp125,,
# problem88.c:7:     for (int i = 0; i < lst_size; i++) {
	lw	a5,-48(s0)		# tmp128, i
	addiw	a5,a5,1	#, tmp126, tmp127
	sw	a5,-48(s0)	# tmp126, i
.L2:
# problem88.c:7:     for (int i = 0; i < lst_size; i++) {
	lw	a5,-48(s0)		# tmp130, i
	mv	a4,a5	# tmp129, tmp130
	lw	a5,-76(s0)		# tmp132, lst_size
	sext.w	a4,a4	# tmp133, tmp129
	sext.w	a5,a5	# tmp134, tmp131
	blt	a4,a5,.L6	#, tmp133, tmp134,
# problem88.c:17:     *return_size = count;
	ld	a5,-96(s0)		# tmp135, return_size
	lw	a4,-52(s0)		# tmp136, count
	sw	a4,0(a5)	# tmp136, *return_size_40(D)
# problem88.c:18:     return out;
	ld	a5,-40(s0)		# _42, out
# problem88.c:19: }
	mv	a0,a5	#, <retval>
	ld	ra,88(sp)		#,
	ld	s0,80(sp)		#,
	ld	s1,72(sp)		#,
	addi	sp,sp,96	#,,
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
	mv	a5,a1	# tmp96, aSize
	sd	a2,-56(s0)	# b, b
	mv	a4,a3	# tmp98, bSize
	sw	a5,-44(s0)	# tmp97, aSize
	mv	a5,a4	# tmp99, tmp98
	sw	a5,-48(s0)	# tmp99, bSize
# problem88.c:28:     if (aSize != bSize) return 0;
	lw	a5,-44(s0)		# tmp101, aSize
	mv	a4,a5	# tmp100, tmp101
	lw	a5,-48(s0)		# tmp103, bSize
	sext.w	a4,a4	# tmp104, tmp100
	sext.w	a5,a5	# tmp105, tmp102
	beq	a4,a5,.L9	#, tmp104, tmp105,
# problem88.c:28:     if (aSize != bSize) return 0;
	li	a5,0		# _24,
	j	.L10		#
.L9:
# problem88.c:30:     for (int i = 0; i < aSize; i++) {
	sw	zero,-20(s0)	#, i
# problem88.c:30:     for (int i = 0; i < aSize; i++) {
	j	.L11		#
.L14:
# problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-40(s0)		# tmp106, a
	add	a5,a4,a5	# _2, _3, tmp106
	ld	a5,0(a5)		# _4, *_3
# problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	lw	a3,0(a5)		# _5, *_4
# problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	lw	a5,-20(s0)		# _6, i
	slli	a5,a5,3	#, _7, _6
	ld	a4,-56(s0)		# tmp107, b
	add	a5,a4,a5	# _7, _8, tmp107
	ld	a5,0(a5)		# _9, *_8
# problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	lw	a5,0(a5)		# _10, *_9
# problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	mv	a4,a3	# tmp108, _5
	bne	a4,a5,.L12	#, tmp108, tmp109,
# problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	lw	a5,-20(s0)		# _11, i
	slli	a5,a5,3	#, _12, _11
	ld	a4,-40(s0)		# tmp110, a
	add	a5,a4,a5	# _12, _13, tmp110
	ld	a5,0(a5)		# _14, *_13
# problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	addi	a5,a5,4	#, _15, _14
	lw	a3,0(a5)		# _16, *_15
# problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	lw	a5,-20(s0)		# _17, i
	slli	a5,a5,3	#, _18, _17
	ld	a4,-56(s0)		# tmp111, b
	add	a5,a4,a5	# _18, _19, tmp111
	ld	a5,0(a5)		# _20, *_19
# problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	addi	a5,a5,4	#, _21, _20
	lw	a5,0(a5)		# _22, *_21
# problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	mv	a4,a3	# tmp112, _16
	beq	a4,a5,.L13	#, tmp112, tmp113,
.L12:
# problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	li	a5,0		# _24,
	j	.L10		#
.L13:
# problem88.c:30:     for (int i = 0; i < aSize; i++) {
	lw	a5,-20(s0)		# tmp116, i
	addiw	a5,a5,1	#, tmp114, tmp115
	sw	a5,-20(s0)	# tmp114, i
.L11:
# problem88.c:30:     for (int i = 0; i < aSize; i++) {
	lw	a5,-20(s0)		# tmp118, i
	mv	a4,a5	# tmp117, tmp118
	lw	a5,-44(s0)		# tmp120, aSize
	sext.w	a4,a4	# tmp121, tmp117
	sext.w	a5,a5	# tmp122, tmp119
	blt	a4,a5,.L14	#, tmp121, tmp122,
# problem88.c:33:     return 1;
	li	a5,1		# _24,
.L10:
# problem88.c:34: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	issame, .-issame
	.align	1
	.globl	free_result
	.type	free_result, @function
free_result:
	addi	sp,sp,-48	#,,
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-40(s0)	# result, result
	mv	a5,a1	# tmp76, size
	sw	a5,-44(s0)	# tmp77, size
# problem88.c:37:     for (int i = 0; i < size; ++i) {
	sw	zero,-20(s0)	#, i
# problem88.c:37:     for (int i = 0; i < size; ++i) {
	j	.L16		#
.L17:
# problem88.c:38:         free(result[i]);
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-40(s0)		# tmp78, result
	add	a5,a4,a5	# _2, _3, tmp78
# problem88.c:38:         free(result[i]);
	ld	a5,0(a5)		# _4, *_3
	mv	a0,a5	#, _4
	call	free@plt	#
# problem88.c:37:     for (int i = 0; i < size; ++i) {
	lw	a5,-20(s0)		# tmp81, i
	addiw	a5,a5,1	#, tmp79, tmp80
	sw	a5,-20(s0)	# tmp79, i
.L16:
# problem88.c:37:     for (int i = 0; i < size; ++i) {
	lw	a5,-20(s0)		# tmp83, i
	mv	a4,a5	# tmp82, tmp83
	lw	a5,-44(s0)		# tmp85, size
	sext.w	a4,a4	# tmp86, tmp82
	sext.w	a5,a5	# tmp87, tmp84
	blt	a4,a5,.L17	#, tmp86, tmp87,
# problem88.c:40:     free(result);
	ld	a0,-40(s0)		#, result
	call	free@plt	#
# problem88.c:41: }
	nop	
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	free_result, .-free_result
	.section	.rodata
	.align	3
.LC3:
	.string	"problem88.c"
	.align	3
.LC4:
	.string	"issame(result, returnSize, expected1, 5)"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.align	3
.LC1:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	1
	.word	6
	.align	3
.LC2:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	1
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-240	#,,
	sd	ra,232(sp)	#,
	sd	s0,224(sp)	#,
	addi	s0,sp,240	#,,
# problem88.c:43: int main() {
	la	a5,__stack_chk_guard		# tmp77,
	ld	a4, 0(a5)	# tmp117, __stack_chk_guard
	sd	a4, -24(s0)	# tmp117, D.2510
	li	a4, 0	# tmp117
# problem88.c:48:     rows = 3;
	li	a5,3		# tmp78,
	sw	a5,-228(s0)	# tmp78, rows
# problem88.c:49:     int cols1[] = {6, 6, 6};
	li	a5,6		# tmp79,
	sw	a5,-176(s0)	# tmp79, cols1[0]
	li	a5,6		# tmp80,
	sw	a5,-172(s0)	# tmp80, cols1[1]
	li	a5,6		# tmp81,
	sw	a5,-168(s0)	# tmp81, cols1[2]
# problem88.c:50:     int *lst1[] = {(int[]){1,2,3,4,5,6}, (int[]){1,2,3,4,1,6}, (int[]){1,2,3,4,5,1}};
	lla	a5,.LC0	# tmp82,
	ld	a4,0(a5)		# tmp83,
	sd	a4,-136(s0)	# tmp83, D.2475
	ld	a4,8(a5)		# tmp84,
	sd	a4,-128(s0)	# tmp84, D.2475
	ld	a5,16(a5)		# tmp85,
	sd	a5,-120(s0)	# tmp85, D.2475
# problem88.c:50:     int *lst1[] = {(int[]){1,2,3,4,5,6}, (int[]){1,2,3,4,1,6}, (int[]){1,2,3,4,5,1}};
	addi	a5,s0,-136	#, tmp86,
	sd	a5,-160(s0)	# tmp86, lst1[0]
# problem88.c:50:     int *lst1[] = {(int[]){1,2,3,4,5,6}, (int[]){1,2,3,4,1,6}, (int[]){1,2,3,4,5,1}};
	lla	a5,.LC1	# tmp87,
	ld	a4,0(a5)		# tmp88,
	sd	a4,-112(s0)	# tmp88, D.2476
	ld	a4,8(a5)		# tmp89,
	sd	a4,-104(s0)	# tmp89, D.2476
	ld	a5,16(a5)		# tmp90,
	sd	a5,-96(s0)	# tmp90, D.2476
# problem88.c:50:     int *lst1[] = {(int[]){1,2,3,4,5,6}, (int[]){1,2,3,4,1,6}, (int[]){1,2,3,4,5,1}};
	addi	a5,s0,-112	#, tmp91,
	sd	a5,-152(s0)	# tmp91, lst1[1]
# problem88.c:50:     int *lst1[] = {(int[]){1,2,3,4,5,6}, (int[]){1,2,3,4,1,6}, (int[]){1,2,3,4,5,1}};
	lla	a5,.LC2	# tmp92,
	ld	a4,0(a5)		# tmp93,
	sd	a4,-88(s0)	# tmp93, D.2477
	ld	a4,8(a5)		# tmp94,
	sd	a4,-80(s0)	# tmp94, D.2477
	ld	a5,16(a5)		# tmp95,
	sd	a5,-72(s0)	# tmp95, D.2477
# problem88.c:50:     int *lst1[] = {(int[]){1,2,3,4,5,6}, (int[]){1,2,3,4,1,6}, (int[]){1,2,3,4,5,1}};
	addi	a5,s0,-88	#, tmp96,
	sd	a5,-144(s0)	# tmp96, lst1[2]
# problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	sw	zero,-216(s0)	#, D.2479[0]
	sw	zero,-212(s0)	#, D.2479[1]
# problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	addi	a5,s0,-216	#, tmp97,
	sd	a5,-64(s0)	# tmp97, expected1[0]
# problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	li	a5,1		# tmp98,
	sw	a5,-208(s0)	# tmp98, D.2480[0]
	li	a5,4		# tmp99,
	sw	a5,-204(s0)	# tmp99, D.2480[1]
# problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	addi	a5,s0,-208	#, tmp100,
	sd	a5,-56(s0)	# tmp100, expected1[1]
# problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	li	a5,1		# tmp101,
	sw	a5,-200(s0)	# tmp101, D.2481[0]
	sw	zero,-196(s0)	#, D.2481[1]
# problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	addi	a5,s0,-200	#, tmp102,
	sd	a5,-48(s0)	# tmp102, expected1[2]
# problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	li	a5,2		# tmp103,
	sw	a5,-192(s0)	# tmp103, D.2482[0]
	li	a5,5		# tmp104,
	sw	a5,-188(s0)	# tmp104, D.2482[1]
# problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	addi	a5,s0,-192	#, tmp105,
	sd	a5,-40(s0)	# tmp105, expected1[3]
# problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	li	a5,2		# tmp106,
	sw	a5,-184(s0)	# tmp106, D.2483[0]
	sw	zero,-180(s0)	#, D.2483[1]
# problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	addi	a5,s0,-184	#, tmp107,
	sd	a5,-32(s0)	# tmp107, expected1[4]
# problem88.c:52:     result = func0(lst1, rows, cols1, 1, &returnSize);
	addi	a4,s0,-232	#, tmp108,
	addi	a2,s0,-176	#, tmp109,
	lw	a1,-228(s0)		# tmp110, rows
	addi	a5,s0,-160	#, tmp111,
	li	a3,1		#,
	mv	a0,a5	#, tmp111
	call	func0		#
	sd	a0,-224(s0)	#, result
# problem88.c:53:     assert(issame(result, returnSize, expected1, 5));
	lw	a5,-232(s0)		# returnSize.0_1, returnSize
	addi	a4,s0,-64	#, tmp112,
	li	a3,5		#,
	mv	a2,a4	#, tmp112
	mv	a1,a5	#, returnSize.0_1
	ld	a0,-224(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp113,
	bne	a5,zero,.L19	#, _2,,
# problem88.c:53:     assert(issame(result, returnSize, expected1, 5));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,53		#,
	lla	a1,.LC3	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L19:
# problem88.c:54:     free_result(result, returnSize);
	lw	a5,-232(s0)		# returnSize.1_3, returnSize
	mv	a1,a5	#, returnSize.1_3
	ld	a0,-224(s0)		#, result
	call	free_result		#
# problem88.c:56:     return 0;
	li	a5,0		# _35,
# problem88.c:57: }
	mv	a4,a5	# <retval>, _35
	la	a5,__stack_chk_guard		# tmp115,
	ld	a3, -24(s0)	# tmp118, D.2510
	ld	a5, 0(a5)	# tmp116, __stack_chk_guard
	xor	a5, a3, a5	# tmp116, tmp118
	li	a3, 0	# tmp118
	beq	a5,zero,.L21	#, tmp116,,
	call	__stack_chk_fail@plt	#
.L21:
	mv	a0,a4	#, <retval>
	ld	ra,232(sp)		#,
	ld	s0,224(sp)		#,
	addi	sp,sp,240	#,,
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
