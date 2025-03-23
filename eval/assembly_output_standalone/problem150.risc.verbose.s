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
	addi	s0,sp,96	#,,
	sd	a0,-72(s0)	# lst, lst
	mv	a5,a1	# tmp140, lst_size
	sd	a2,-88(s0)	# return_size, return_size
	sw	a5,-76(s0)	# tmp141, lst_size
# eval/problem150//code.c:9:     *return_size = 0;
	ld	a5,-88(s0)		# tmp142, return_size
	sw	zero,0(a5)	#, *return_size_78(D)
# eval/problem150//code.c:10:     for (i = 0; i < lst_size; ++i) {
	sw	zero,-56(s0)	#, i
# eval/problem150//code.c:10:     for (i = 0; i < lst_size; ++i) {
	j	.L2		#
.L4:
# eval/problem150//code.c:11:         if (strlen(lst[i]) % 2 == 0) {
	lw	a5,-56(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-72(s0)		# tmp143, lst
	add	a5,a4,a5	# _2, _3, tmp143
# eval/problem150//code.c:11:         if (strlen(lst[i]) % 2 == 0) {
	ld	a5,0(a5)		# _4, *_3
	mv	a0,a5	#, _4
	call	strlen@plt	#
	mv	a5,a0	# _5,
# eval/problem150//code.c:11:         if (strlen(lst[i]) % 2 == 0) {
	andi	a5,a5,1	#, _6, _5
# eval/problem150//code.c:11:         if (strlen(lst[i]) % 2 == 0) {
	bne	a5,zero,.L3	#, _6,,
# eval/problem150//code.c:12:             lst[*return_size] = lst[i];
	lw	a5,-56(s0)		# _7, i
	slli	a5,a5,3	#, _8, _7
	ld	a4,-72(s0)		# tmp144, lst
	add	a4,a4,a5	# _8, _9, tmp144
# eval/problem150//code.c:12:             lst[*return_size] = lst[i];
	ld	a5,-88(s0)		# tmp145, return_size
	lw	a5,0(a5)		# _10, *return_size_78(D)
# eval/problem150//code.c:12:             lst[*return_size] = lst[i];
	slli	a5,a5,3	#, _12, _11
	ld	a3,-72(s0)		# tmp146, lst
	add	a5,a3,a5	# _12, _13, tmp146
# eval/problem150//code.c:12:             lst[*return_size] = lst[i];
	ld	a4,0(a4)		# _14, *_9
# eval/problem150//code.c:12:             lst[*return_size] = lst[i];
	sd	a4,0(a5)	# _14, *_13
# eval/problem150//code.c:13:             (*return_size)++;
	ld	a5,-88(s0)		# tmp147, return_size
	lw	a5,0(a5)		# _15, *return_size_78(D)
# eval/problem150//code.c:13:             (*return_size)++;
	addiw	a5,a5,1	#, tmp148, _15
	sext.w	a4,a5	# _16, tmp148
	ld	a5,-88(s0)		# tmp149, return_size
	sw	a4,0(a5)	# _16, *return_size_78(D)
.L3:
# eval/problem150//code.c:10:     for (i = 0; i < lst_size; ++i) {
	lw	a5,-56(s0)		# tmp152, i
	addiw	a5,a5,1	#, tmp150, tmp151
	sw	a5,-56(s0)	# tmp150, i
.L2:
# eval/problem150//code.c:10:     for (i = 0; i < lst_size; ++i) {
	lw	a5,-56(s0)		# tmp154, i
	mv	a4,a5	# tmp153, tmp154
	lw	a5,-76(s0)		# tmp156, lst_size
	sext.w	a4,a4	# tmp157, tmp153
	sext.w	a5,a5	# tmp158, tmp155
	blt	a4,a5,.L4	#, tmp157, tmp158,
# eval/problem150//code.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	sw	zero,-56(s0)	#, i
# eval/problem150//code.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	j	.L5		#
.L10:
# eval/problem150//code.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	sw	zero,-52(s0)	#, j
# eval/problem150//code.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	j	.L6		#
.L9:
# eval/problem150//code.c:19:             size_t len_j = strlen(lst[j]);
	lw	a5,-52(s0)		# _17, j
	slli	a5,a5,3	#, _18, _17
	ld	a4,-72(s0)		# tmp159, lst
	add	a5,a4,a5	# _18, _19, tmp159
# eval/problem150//code.c:19:             size_t len_j = strlen(lst[j]);
	ld	a5,0(a5)		# _20, *_19
	mv	a0,a5	#, _20
	call	strlen@plt	#
	sd	a0,-40(s0)	#, len_j
# eval/problem150//code.c:20:             size_t len_j1 = strlen(lst[j + 1]);
	lw	a5,-52(s0)		# _21, j
	addi	a5,a5,1	#, _22, _21
	slli	a5,a5,3	#, _23, _22
	ld	a4,-72(s0)		# tmp160, lst
	add	a5,a4,a5	# _23, _24, tmp160
# eval/problem150//code.c:20:             size_t len_j1 = strlen(lst[j + 1]);
	ld	a5,0(a5)		# _25, *_24
	mv	a0,a5	#, _25
	call	strlen@plt	#
	sd	a0,-32(s0)	#, len_j1
# eval/problem150//code.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	ld	a4,-40(s0)		# tmp161, len_j
	ld	a5,-32(s0)		# tmp162, len_j1
	bgtu	a4,a5,.L7	#, tmp161, tmp162,
# eval/problem150//code.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	ld	a4,-40(s0)		# tmp163, len_j
	ld	a5,-32(s0)		# tmp164, len_j1
	bne	a4,a5,.L8	#, tmp163, tmp164,
# eval/problem150//code.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	lw	a5,-52(s0)		# _26, j
	slli	a5,a5,3	#, _27, _26
	ld	a4,-72(s0)		# tmp165, lst
	add	a5,a4,a5	# _27, _28, tmp165
# eval/problem150//code.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	ld	a3,0(a5)		# _29, *_28
# eval/problem150//code.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	lw	a5,-52(s0)		# _30, j
	addi	a5,a5,1	#, _31, _30
	slli	a5,a5,3	#, _32, _31
	ld	a4,-72(s0)		# tmp166, lst
	add	a5,a4,a5	# _32, _33, tmp166
# eval/problem150//code.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	ld	a5,0(a5)		# _34, *_33
	mv	a1,a5	#, _34
	mv	a0,a3	#, _29
	call	strcmp@plt	#
	mv	a5,a0	# tmp167,
# eval/problem150//code.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	ble	a5,zero,.L8	#, tmp168,,
.L7:
# eval/problem150//code.c:22:                 temp = lst[j];
	lw	a5,-52(s0)		# _36, j
	slli	a5,a5,3	#, _37, _36
	ld	a4,-72(s0)		# tmp169, lst
	add	a5,a4,a5	# _37, _38, tmp169
# eval/problem150//code.c:22:                 temp = lst[j];
	ld	a5,0(a5)		# tmp170, *_38
	sd	a5,-24(s0)	# tmp170, temp
# eval/problem150//code.c:23:                 lst[j] = lst[j + 1];
	lw	a5,-52(s0)		# _39, j
	addi	a5,a5,1	#, _40, _39
	slli	a5,a5,3	#, _41, _40
	ld	a4,-72(s0)		# tmp171, lst
	add	a4,a4,a5	# _41, _42, tmp171
# eval/problem150//code.c:23:                 lst[j] = lst[j + 1];
	lw	a5,-52(s0)		# _43, j
	slli	a5,a5,3	#, _44, _43
	ld	a3,-72(s0)		# tmp172, lst
	add	a5,a3,a5	# _44, _45, tmp172
# eval/problem150//code.c:23:                 lst[j] = lst[j + 1];
	ld	a4,0(a4)		# _46, *_42
# eval/problem150//code.c:23:                 lst[j] = lst[j + 1];
	sd	a4,0(a5)	# _46, *_45
# eval/problem150//code.c:24:                 lst[j + 1] = temp;
	lw	a5,-52(s0)		# _47, j
	addi	a5,a5,1	#, _48, _47
	slli	a5,a5,3	#, _49, _48
	ld	a4,-72(s0)		# tmp173, lst
	add	a5,a4,a5	# _49, _50, tmp173
# eval/problem150//code.c:24:                 lst[j + 1] = temp;
	ld	a4,-24(s0)		# tmp174, temp
	sd	a4,0(a5)	# tmp174, *_50
.L8:
# eval/problem150//code.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	lw	a5,-52(s0)		# tmp177, j
	addiw	a5,a5,1	#, tmp175, tmp176
	sw	a5,-52(s0)	# tmp175, j
.L6:
# eval/problem150//code.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	ld	a5,-88(s0)		# tmp178, return_size
	lw	a5,0(a5)		# _51, *return_size_78(D)
# eval/problem150//code.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	lw	a4,-56(s0)		# tmp181, i
	subw	a5,a5,a4	# tmp179, _51, tmp180
	sext.w	a5,a5	# _52, tmp179
# eval/problem150//code.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	addiw	a5,a5,-1	#, tmp182, _52
	sext.w	a4,a5	# _53, tmp182
# eval/problem150//code.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	lw	a5,-52(s0)		# tmp184, j
	sext.w	a5,a5	# tmp185, tmp183
	blt	a5,a4,.L9	#, tmp185, tmp186,
# eval/problem150//code.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	lw	a5,-56(s0)		# tmp189, i
	addiw	a5,a5,1	#, tmp187, tmp188
	sw	a5,-56(s0)	# tmp187, i
.L5:
# eval/problem150//code.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	ld	a5,-88(s0)		# tmp190, return_size
	lw	a5,0(a5)		# _54, *return_size_78(D)
# eval/problem150//code.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	addiw	a5,a5,-1	#, tmp191, _54
	sext.w	a4,a5	# _55, tmp191
# eval/problem150//code.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	lw	a5,-56(s0)		# tmp193, i
	sext.w	a5,a5	# tmp194, tmp192
	blt	a5,a4,.L10	#, tmp194, tmp195,
# eval/problem150//code.c:29:     char **out = malloc(*return_size * sizeof(char *));
	ld	a5,-88(s0)		# tmp196, return_size
	lw	a5,0(a5)		# _56, *return_size_78(D)
# eval/problem150//code.c:29:     char **out = malloc(*return_size * sizeof(char *));
	slli	a5,a5,3	#, _58, _57
	mv	a0,a5	#, _58
	call	malloc@plt	#
	mv	a5,a0	# tmp197,
	sd	a5,-48(s0)	# tmp197, out
# eval/problem150//code.c:30:     for (i = 0; i < *return_size; ++i) {
	sw	zero,-56(s0)	#, i
# eval/problem150//code.c:30:     for (i = 0; i < *return_size; ++i) {
	j	.L11		#
.L12:
# eval/problem150//code.c:31:         out[i] = lst[i];
	lw	a5,-56(s0)		# _59, i
	slli	a5,a5,3	#, _60, _59
	ld	a4,-72(s0)		# tmp198, lst
	add	a4,a4,a5	# _60, _61, tmp198
# eval/problem150//code.c:31:         out[i] = lst[i];
	lw	a5,-56(s0)		# _62, i
	slli	a5,a5,3	#, _63, _62
	ld	a3,-48(s0)		# tmp199, out
	add	a5,a3,a5	# _63, _64, tmp199
# eval/problem150//code.c:31:         out[i] = lst[i];
	ld	a4,0(a4)		# _65, *_61
# eval/problem150//code.c:31:         out[i] = lst[i];
	sd	a4,0(a5)	# _65, *_64
# eval/problem150//code.c:30:     for (i = 0; i < *return_size; ++i) {
	lw	a5,-56(s0)		# tmp202, i
	addiw	a5,a5,1	#, tmp200, tmp201
	sw	a5,-56(s0)	# tmp200, i
.L11:
# eval/problem150//code.c:30:     for (i = 0; i < *return_size; ++i) {
	ld	a5,-88(s0)		# tmp203, return_size
	lw	a4,0(a5)		# _66, *return_size_78(D)
# eval/problem150//code.c:30:     for (i = 0; i < *return_size; ++i) {
	lw	a5,-56(s0)		# tmp205, i
	sext.w	a5,a5	# tmp206, tmp204
	blt	a5,a4,.L12	#, tmp206, tmp207,
# eval/problem150//code.c:34:     return out;
	ld	a5,-48(s0)		# _86, out
# eval/problem150//code.c:35: }
	mv	a0,a5	#, <retval>
	ld	ra,88(sp)		#,
	ld	s0,80(sp)		#,
	addi	sp,sp,96	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
