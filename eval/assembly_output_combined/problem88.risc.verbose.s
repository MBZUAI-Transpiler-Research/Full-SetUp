	.file	"problem88.c"
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
# problem88.c:5:     int **out = (int **)malloc(100 * sizeof(int *));
	li	a0,800		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp165,
	sd	a5,-40(s0)	# tmp165, out
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
	ld	a4,-88(s0)		# tmp166, row_sizes
	add	a5,a4,a5	# _2, _3, tmp166
	lw	a5,0(a5)		# _4, *_3
# problem88.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	addiw	a5,a5,-1	#, tmp167, _4
	sw	a5,-44(s0)	# tmp167, j
# problem88.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	j	.L3		#
.L5:
# problem88.c:9:             if (lst[i][j] == x) {
	lw	a5,-48(s0)		# _5, i
	slli	a5,a5,3	#, _6, _5
	ld	a4,-72(s0)		# tmp168, lst
	add	a5,a4,a5	# _6, _7, tmp168
	ld	a4,0(a5)		# _8, *_7
# problem88.c:9:             if (lst[i][j] == x) {
	lw	a5,-44(s0)		# _9, j
	slli	a5,a5,2	#, _10, _9
	add	a5,a4,a5	# _10, _11, _8
	lw	a4,0(a5)		# _12, *_11
# problem88.c:9:             if (lst[i][j] == x) {
	lw	a5,-80(s0)		# tmp170, x
	sext.w	a5,a5	# tmp171, tmp169
	bne	a5,a4,.L4	#, tmp171, tmp172,
# problem88.c:10:                 out[count] = (int *)malloc(2 * sizeof(int));
	lw	a5,-52(s0)		# _13, count
	slli	a5,a5,3	#, _14, _13
	ld	a4,-40(s0)		# tmp173, out
	add	s1,a4,a5	# _14, _15, tmp173
# problem88.c:10:                 out[count] = (int *)malloc(2 * sizeof(int));
	li	a0,8		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp174,
# problem88.c:10:                 out[count] = (int *)malloc(2 * sizeof(int));
	sd	a5,0(s1)	# _16, *_15
# problem88.c:11:                 out[count][0] = i;
	lw	a5,-52(s0)		# _17, count
	slli	a5,a5,3	#, _18, _17
	ld	a4,-40(s0)		# tmp175, out
	add	a5,a4,a5	# _18, _19, tmp175
	ld	a5,0(a5)		# _20, *_19
# problem88.c:11:                 out[count][0] = i;
	lw	a4,-48(s0)		# tmp176, i
	sw	a4,0(a5)	# tmp176, *_20
# problem88.c:12:                 out[count][1] = j;
	lw	a5,-52(s0)		# _21, count
	slli	a5,a5,3	#, _22, _21
	ld	a4,-40(s0)		# tmp177, out
	add	a5,a4,a5	# _22, _23, tmp177
	ld	a5,0(a5)		# _24, *_23
# problem88.c:12:                 out[count][1] = j;
	addi	a5,a5,4	#, _25, _24
# problem88.c:12:                 out[count][1] = j;
	lw	a4,-44(s0)		# tmp178, j
	sw	a4,0(a5)	# tmp178, *_25
# problem88.c:13:                 count++;
	lw	a5,-52(s0)		# tmp181, count
	addiw	a5,a5,1	#, tmp179, tmp180
	sw	a5,-52(s0)	# tmp179, count
.L4:
# problem88.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	lw	a5,-44(s0)		# tmp184, j
	addiw	a5,a5,-1	#, tmp182, tmp183
	sw	a5,-44(s0)	# tmp182, j
.L3:
# problem88.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	lw	a5,-44(s0)		# tmp186, j
	sext.w	a5,a5	# tmp187, tmp185
	bge	a5,zero,.L5	#, tmp187,,
# problem88.c:7:     for (int i = 0; i < lst_size; i++) {
	lw	a5,-48(s0)		# tmp190, i
	addiw	a5,a5,1	#, tmp188, tmp189
	sw	a5,-48(s0)	# tmp188, i
.L2:
# problem88.c:7:     for (int i = 0; i < lst_size; i++) {
	lw	a5,-48(s0)		# tmp192, i
	mv	a4,a5	# tmp191, tmp192
	lw	a5,-76(s0)		# tmp194, lst_size
	sext.w	a4,a4	# tmp195, tmp191
	sext.w	a5,a5	# tmp196, tmp193
	blt	a4,a5,.L6	#, tmp195, tmp196,
# problem88.c:17:     *return_size = count;
	ld	a5,-96(s0)		# tmp197, return_size
	lw	a4,-52(s0)		# tmp198, count
	sw	a4,0(a5)	# tmp198, *return_size_40(D)
# problem88.c:18:     return out;
	ld	a5,-40(s0)		# _42, out
# problem88.c:19: }
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
	mv	a5,a1	# tmp158, aSize
	sd	a2,-56(s0)	# b, b
	mv	a4,a3	# tmp160, bSize
	sw	a5,-44(s0)	# tmp159, aSize
	mv	a5,a4	# tmp161, tmp160
	sw	a5,-48(s0)	# tmp161, bSize
# problem88.c:28:     if (aSize != bSize) return 0;
	lw	a5,-44(s0)		# tmp163, aSize
	mv	a4,a5	# tmp162, tmp163
	lw	a5,-48(s0)		# tmp165, bSize
	sext.w	a4,a4	# tmp166, tmp162
	sext.w	a5,a5	# tmp167, tmp164
	beq	a4,a5,.L9	#, tmp166, tmp167,
# problem88.c:28:     if (aSize != bSize) return 0;
	li	a5,0		# _24,
# problem88.c:28:     if (aSize != bSize) return 0;
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
	ld	a4,-40(s0)		# tmp168, a
	add	a5,a4,a5	# _2, _3, tmp168
	ld	a5,0(a5)		# _4, *_3
# problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	lw	a3,0(a5)		# _5, *_4
# problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	lw	a5,-20(s0)		# _6, i
	slli	a5,a5,3	#, _7, _6
	ld	a4,-56(s0)		# tmp169, b
	add	a5,a4,a5	# _7, _8, tmp169
	ld	a5,0(a5)		# _9, *_8
# problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	lw	a5,0(a5)		# _10, *_9
# problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	mv	a4,a3	# tmp170, _5
	bne	a4,a5,.L12	#, tmp170, tmp171,
# problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	lw	a5,-20(s0)		# _11, i
	slli	a5,a5,3	#, _12, _11
	ld	a4,-40(s0)		# tmp172, a
	add	a5,a4,a5	# _12, _13, tmp172
	ld	a5,0(a5)		# _14, *_13
# problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	addi	a5,a5,4	#, _15, _14
	lw	a3,0(a5)		# _16, *_15
# problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	lw	a5,-20(s0)		# _17, i
	slli	a5,a5,3	#, _18, _17
	ld	a4,-56(s0)		# tmp173, b
	add	a5,a4,a5	# _18, _19, tmp173
	ld	a5,0(a5)		# _20, *_19
# problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	addi	a5,a5,4	#, _21, _20
	lw	a5,0(a5)		# _22, *_21
# problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	mv	a4,a3	# tmp174, _16
	beq	a4,a5,.L13	#, tmp174, tmp175,
.L12:
# problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	li	a5,0		# _24,
# problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	j	.L10		#
.L13:
# problem88.c:30:     for (int i = 0; i < aSize; i++) {
	lw	a5,-20(s0)		# tmp178, i
	addiw	a5,a5,1	#, tmp176, tmp177
	sw	a5,-20(s0)	# tmp176, i
.L11:
# problem88.c:30:     for (int i = 0; i < aSize; i++) {
	lw	a5,-20(s0)		# tmp180, i
	mv	a4,a5	# tmp179, tmp180
	lw	a5,-44(s0)		# tmp182, aSize
	sext.w	a4,a4	# tmp183, tmp179
	sext.w	a5,a5	# tmp184, tmp181
	blt	a4,a5,.L14	#, tmp183, tmp184,
# problem88.c:33:     return 1;
	li	a5,1		# _24,
.L10:
# problem88.c:34: }
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
	.align	1
	.globl	free_result
	.type	free_result, @function
free_result:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# result, result
	mv	a5,a1	# tmp138, size
	sw	a5,-44(s0)	# tmp139, size
# problem88.c:37:     for (int i = 0; i < size; ++i) {
	sw	zero,-20(s0)	#, i
# problem88.c:37:     for (int i = 0; i < size; ++i) {
	j	.L16		#
.L17:
# problem88.c:38:         free(result[i]);
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-40(s0)		# tmp140, result
	add	a5,a4,a5	# _2, _3, tmp140
# problem88.c:38:         free(result[i]);
	ld	a5,0(a5)		# _4, *_3
	mv	a0,a5	#, _4
	call	free@plt	#
# problem88.c:37:     for (int i = 0; i < size; ++i) {
	lw	a5,-20(s0)		# tmp143, i
	addiw	a5,a5,1	#, tmp141, tmp142
	sw	a5,-20(s0)	# tmp141, i
.L16:
# problem88.c:37:     for (int i = 0; i < size; ++i) {
	lw	a5,-20(s0)		# tmp145, i
	mv	a4,a5	# tmp144, tmp145
	lw	a5,-44(s0)		# tmp147, size
	sext.w	a4,a4	# tmp148, tmp144
	sext.w	a5,a5	# tmp149, tmp146
	blt	a4,a5,.L17	#, tmp148, tmp149,
# problem88.c:40:     free(result);
	ld	a0,-40(s0)		#, result
	call	free@plt	#
# problem88.c:41: }
	nop	
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE8:
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
.LFB9:
	.cfi_startproc
	addi	sp,sp,-240	#,,
	.cfi_def_cfa_offset 240
	sd	ra,232(sp)	#,
	sd	s0,224(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,240	#,,
	.cfi_def_cfa 8, 0
# problem88.c:43: int main() {
	la	a5,__stack_chk_guard		# tmp139,
	ld	a4, 0(a5)	# tmp179, __stack_chk_guard
	sd	a4, -24(s0)	# tmp179, D.3335
	li	a4, 0	# tmp179
# problem88.c:48:     rows = 3;
	li	a5,3		# tmp140,
	sw	a5,-228(s0)	# tmp140, rows
# problem88.c:49:     int cols1[] = {6, 6, 6};
	li	a5,6		# tmp141,
	sw	a5,-176(s0)	# tmp141, cols1[0]
	li	a5,6		# tmp142,
	sw	a5,-172(s0)	# tmp142, cols1[1]
	li	a5,6		# tmp143,
	sw	a5,-168(s0)	# tmp143, cols1[2]
# problem88.c:50:     int *lst1[] = {(int[]){1,2,3,4,5,6}, (int[]){1,2,3,4,1,6}, (int[]){1,2,3,4,5,1}};
	lla	a5,.LC0	# tmp144,
	ld	a4,0(a5)		# tmp145,
	sd	a4,-136(s0)	# tmp145, D.3300
	ld	a4,8(a5)		# tmp146,
	sd	a4,-128(s0)	# tmp146, D.3300
	ld	a5,16(a5)		# tmp147,
	sd	a5,-120(s0)	# tmp147, D.3300
# problem88.c:50:     int *lst1[] = {(int[]){1,2,3,4,5,6}, (int[]){1,2,3,4,1,6}, (int[]){1,2,3,4,5,1}};
	addi	a5,s0,-136	#, tmp148,
	sd	a5,-160(s0)	# tmp148, lst1[0]
# problem88.c:50:     int *lst1[] = {(int[]){1,2,3,4,5,6}, (int[]){1,2,3,4,1,6}, (int[]){1,2,3,4,5,1}};
	lla	a5,.LC1	# tmp149,
	ld	a4,0(a5)		# tmp150,
	sd	a4,-112(s0)	# tmp150, D.3301
	ld	a4,8(a5)		# tmp151,
	sd	a4,-104(s0)	# tmp151, D.3301
	ld	a5,16(a5)		# tmp152,
	sd	a5,-96(s0)	# tmp152, D.3301
# problem88.c:50:     int *lst1[] = {(int[]){1,2,3,4,5,6}, (int[]){1,2,3,4,1,6}, (int[]){1,2,3,4,5,1}};
	addi	a5,s0,-112	#, tmp153,
	sd	a5,-152(s0)	# tmp153, lst1[1]
# problem88.c:50:     int *lst1[] = {(int[]){1,2,3,4,5,6}, (int[]){1,2,3,4,1,6}, (int[]){1,2,3,4,5,1}};
	lla	a5,.LC2	# tmp154,
	ld	a4,0(a5)		# tmp155,
	sd	a4,-88(s0)	# tmp155, D.3302
	ld	a4,8(a5)		# tmp156,
	sd	a4,-80(s0)	# tmp156, D.3302
	ld	a5,16(a5)		# tmp157,
	sd	a5,-72(s0)	# tmp157, D.3302
# problem88.c:50:     int *lst1[] = {(int[]){1,2,3,4,5,6}, (int[]){1,2,3,4,1,6}, (int[]){1,2,3,4,5,1}};
	addi	a5,s0,-88	#, tmp158,
	sd	a5,-144(s0)	# tmp158, lst1[2]
# problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	sw	zero,-216(s0)	#, D.3304[0]
	sw	zero,-212(s0)	#, D.3304[1]
# problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	addi	a5,s0,-216	#, tmp159,
	sd	a5,-64(s0)	# tmp159, expected1[0]
# problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	li	a5,1		# tmp160,
	sw	a5,-208(s0)	# tmp160, D.3305[0]
	li	a5,4		# tmp161,
	sw	a5,-204(s0)	# tmp161, D.3305[1]
# problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	addi	a5,s0,-208	#, tmp162,
	sd	a5,-56(s0)	# tmp162, expected1[1]
# problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	li	a5,1		# tmp163,
	sw	a5,-200(s0)	# tmp163, D.3306[0]
	sw	zero,-196(s0)	#, D.3306[1]
# problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	addi	a5,s0,-200	#, tmp164,
	sd	a5,-48(s0)	# tmp164, expected1[2]
# problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	li	a5,2		# tmp165,
	sw	a5,-192(s0)	# tmp165, D.3307[0]
	li	a5,5		# tmp166,
	sw	a5,-188(s0)	# tmp166, D.3307[1]
# problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	addi	a5,s0,-192	#, tmp167,
	sd	a5,-40(s0)	# tmp167, expected1[3]
# problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	li	a5,2		# tmp168,
	sw	a5,-184(s0)	# tmp168, D.3308[0]
	sw	zero,-180(s0)	#, D.3308[1]
# problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	addi	a5,s0,-184	#, tmp169,
	sd	a5,-32(s0)	# tmp169, expected1[4]
# problem88.c:52:     result = func0(lst1, rows, cols1, 1, &returnSize);
	addi	a4,s0,-232	#, tmp170,
	addi	a2,s0,-176	#, tmp171,
	lw	a1,-228(s0)		# tmp172, rows
	addi	a5,s0,-160	#, tmp173,
	li	a3,1		#,
	mv	a0,a5	#, tmp173
	call	func0		#
	sd	a0,-224(s0)	#, result
# problem88.c:53:     assert(issame(result, returnSize, expected1, 5));
	lw	a5,-232(s0)		# returnSize.0_1, returnSize
	addi	a4,s0,-64	#, tmp174,
	li	a3,5		#,
	mv	a2,a4	#, tmp174
	mv	a1,a5	#, returnSize.0_1
	ld	a0,-224(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp175,
# problem88.c:53:     assert(issame(result, returnSize, expected1, 5));
	bne	a5,zero,.L19	#, _2,,
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
	la	a5,__stack_chk_guard		# tmp177,
	ld	a3, -24(s0)	# tmp180, D.3335
	ld	a5, 0(a5)	# tmp178, __stack_chk_guard
	xor	a5, a3, a5	# tmp178, tmp180
	li	a3, 0	# tmp180
	beq	a5,zero,.L21	#, tmp178,,
	call	__stack_chk_fail@plt	#
.L21:
	mv	a0,a4	#, <retval>
	ld	ra,232(sp)		#,
	.cfi_restore 1
	ld	s0,224(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 240
	addi	sp,sp,240	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE9:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
