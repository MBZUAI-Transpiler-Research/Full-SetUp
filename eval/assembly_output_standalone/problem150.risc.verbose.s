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
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)	# lst, lst
	mv	a5,a1	# tmp202, lst_size
	sd	a2,-88(s0)	# return_size, return_size
	sw	a5,-76(s0)	# tmp203, lst_size
# eval/problem150//code.c:9:     *return_size = 0;
	ld	a5,-88(s0)		# tmp204, return_size
	sw	zero,0(a5)	#, *return_size_78(D)
# eval/problem150//code.c:10:     for (i = 0; i < lst_size; ++i) {
	sw	zero,-56(s0)	#, i
# eval/problem150//code.c:10:     for (i = 0; i < lst_size; ++i) {
	j	.L2		#
.L4:
# eval/problem150//code.c:11:         if (strlen(lst[i]) % 2 == 0) {
	lw	a5,-56(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-72(s0)		# tmp205, lst
	add	a5,a4,a5	# _2, _3, tmp205
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
	ld	a4,-72(s0)		# tmp206, lst
	add	a4,a4,a5	# _8, _9, tmp206
# eval/problem150//code.c:12:             lst[*return_size] = lst[i];
	ld	a5,-88(s0)		# tmp207, return_size
	lw	a5,0(a5)		# _10, *return_size_78(D)
# eval/problem150//code.c:12:             lst[*return_size] = lst[i];
	slli	a5,a5,3	#, _12, _11
	ld	a3,-72(s0)		# tmp208, lst
	add	a5,a3,a5	# _12, _13, tmp208
# eval/problem150//code.c:12:             lst[*return_size] = lst[i];
	ld	a4,0(a4)		# _14, *_9
# eval/problem150//code.c:12:             lst[*return_size] = lst[i];
	sd	a4,0(a5)	# _14, *_13
# eval/problem150//code.c:13:             (*return_size)++;
	ld	a5,-88(s0)		# tmp209, return_size
	lw	a5,0(a5)		# _15, *return_size_78(D)
# eval/problem150//code.c:13:             (*return_size)++;
	addiw	a5,a5,1	#, tmp210, _15
	sext.w	a4,a5	# _16, tmp210
	ld	a5,-88(s0)		# tmp211, return_size
	sw	a4,0(a5)	# _16, *return_size_78(D)
.L3:
# eval/problem150//code.c:10:     for (i = 0; i < lst_size; ++i) {
	lw	a5,-56(s0)		# tmp214, i
	addiw	a5,a5,1	#, tmp212, tmp213
	sw	a5,-56(s0)	# tmp212, i
.L2:
# eval/problem150//code.c:10:     for (i = 0; i < lst_size; ++i) {
	lw	a5,-56(s0)		# tmp216, i
	mv	a4,a5	# tmp215, tmp216
	lw	a5,-76(s0)		# tmp218, lst_size
	sext.w	a4,a4	# tmp219, tmp215
	sext.w	a5,a5	# tmp220, tmp217
	blt	a4,a5,.L4	#, tmp219, tmp220,
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
	ld	a4,-72(s0)		# tmp221, lst
	add	a5,a4,a5	# _18, _19, tmp221
# eval/problem150//code.c:19:             size_t len_j = strlen(lst[j]);
	ld	a5,0(a5)		# _20, *_19
	mv	a0,a5	#, _20
	call	strlen@plt	#
	sd	a0,-40(s0)	#, len_j
# eval/problem150//code.c:20:             size_t len_j1 = strlen(lst[j + 1]);
	lw	a5,-52(s0)		# _21, j
	addi	a5,a5,1	#, _22, _21
	slli	a5,a5,3	#, _23, _22
	ld	a4,-72(s0)		# tmp222, lst
	add	a5,a4,a5	# _23, _24, tmp222
# eval/problem150//code.c:20:             size_t len_j1 = strlen(lst[j + 1]);
	ld	a5,0(a5)		# _25, *_24
	mv	a0,a5	#, _25
	call	strlen@plt	#
	sd	a0,-32(s0)	#, len_j1
# eval/problem150//code.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	ld	a4,-40(s0)		# tmp223, len_j
	ld	a5,-32(s0)		# tmp224, len_j1
	bgtu	a4,a5,.L7	#, tmp223, tmp224,
# eval/problem150//code.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	ld	a4,-40(s0)		# tmp225, len_j
	ld	a5,-32(s0)		# tmp226, len_j1
	bne	a4,a5,.L8	#, tmp225, tmp226,
# eval/problem150//code.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	lw	a5,-52(s0)		# _26, j
	slli	a5,a5,3	#, _27, _26
	ld	a4,-72(s0)		# tmp227, lst
	add	a5,a4,a5	# _27, _28, tmp227
# eval/problem150//code.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	ld	a3,0(a5)		# _29, *_28
# eval/problem150//code.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	lw	a5,-52(s0)		# _30, j
	addi	a5,a5,1	#, _31, _30
	slli	a5,a5,3	#, _32, _31
	ld	a4,-72(s0)		# tmp228, lst
	add	a5,a4,a5	# _32, _33, tmp228
# eval/problem150//code.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	ld	a5,0(a5)		# _34, *_33
	mv	a1,a5	#, _34
	mv	a0,a3	#, _29
	call	strcmp@plt	#
	mv	a5,a0	# tmp229,
# eval/problem150//code.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	ble	a5,zero,.L8	#, tmp230,,
.L7:
# eval/problem150//code.c:22:                 temp = lst[j];
	lw	a5,-52(s0)		# _36, j
	slli	a5,a5,3	#, _37, _36
	ld	a4,-72(s0)		# tmp231, lst
	add	a5,a4,a5	# _37, _38, tmp231
# eval/problem150//code.c:22:                 temp = lst[j];
	ld	a5,0(a5)		# tmp232, *_38
	sd	a5,-24(s0)	# tmp232, temp
# eval/problem150//code.c:23:                 lst[j] = lst[j + 1];
	lw	a5,-52(s0)		# _39, j
	addi	a5,a5,1	#, _40, _39
	slli	a5,a5,3	#, _41, _40
	ld	a4,-72(s0)		# tmp233, lst
	add	a4,a4,a5	# _41, _42, tmp233
# eval/problem150//code.c:23:                 lst[j] = lst[j + 1];
	lw	a5,-52(s0)		# _43, j
	slli	a5,a5,3	#, _44, _43
	ld	a3,-72(s0)		# tmp234, lst
	add	a5,a3,a5	# _44, _45, tmp234
# eval/problem150//code.c:23:                 lst[j] = lst[j + 1];
	ld	a4,0(a4)		# _46, *_42
# eval/problem150//code.c:23:                 lst[j] = lst[j + 1];
	sd	a4,0(a5)	# _46, *_45
# eval/problem150//code.c:24:                 lst[j + 1] = temp;
	lw	a5,-52(s0)		# _47, j
	addi	a5,a5,1	#, _48, _47
	slli	a5,a5,3	#, _49, _48
	ld	a4,-72(s0)		# tmp235, lst
	add	a5,a4,a5	# _49, _50, tmp235
# eval/problem150//code.c:24:                 lst[j + 1] = temp;
	ld	a4,-24(s0)		# tmp236, temp
	sd	a4,0(a5)	# tmp236, *_50
.L8:
# eval/problem150//code.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	lw	a5,-52(s0)		# tmp239, j
	addiw	a5,a5,1	#, tmp237, tmp238
	sw	a5,-52(s0)	# tmp237, j
.L6:
# eval/problem150//code.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	ld	a5,-88(s0)		# tmp240, return_size
	lw	a5,0(a5)		# _51, *return_size_78(D)
# eval/problem150//code.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	lw	a4,-56(s0)		# tmp243, i
	subw	a5,a5,a4	# tmp241, _51, tmp242
	sext.w	a5,a5	# _52, tmp241
# eval/problem150//code.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	addiw	a5,a5,-1	#, tmp244, _52
	sext.w	a4,a5	# _53, tmp244
# eval/problem150//code.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	lw	a5,-52(s0)		# tmp246, j
	sext.w	a5,a5	# tmp247, tmp245
	blt	a5,a4,.L9	#, tmp247, tmp248,
# eval/problem150//code.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	lw	a5,-56(s0)		# tmp251, i
	addiw	a5,a5,1	#, tmp249, tmp250
	sw	a5,-56(s0)	# tmp249, i
.L5:
# eval/problem150//code.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	ld	a5,-88(s0)		# tmp252, return_size
	lw	a5,0(a5)		# _54, *return_size_78(D)
# eval/problem150//code.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	addiw	a5,a5,-1	#, tmp253, _54
	sext.w	a4,a5	# _55, tmp253
# eval/problem150//code.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	lw	a5,-56(s0)		# tmp255, i
	sext.w	a5,a5	# tmp256, tmp254
	blt	a5,a4,.L10	#, tmp256, tmp257,
# eval/problem150//code.c:29:     char **out = malloc(*return_size * sizeof(char *));
	ld	a5,-88(s0)		# tmp258, return_size
	lw	a5,0(a5)		# _56, *return_size_78(D)
# eval/problem150//code.c:29:     char **out = malloc(*return_size * sizeof(char *));
	slli	a5,a5,3	#, _58, _57
	mv	a0,a5	#, _58
	call	malloc@plt	#
	mv	a5,a0	# tmp259,
	sd	a5,-48(s0)	# tmp259, out
# eval/problem150//code.c:30:     for (i = 0; i < *return_size; ++i) {
	sw	zero,-56(s0)	#, i
# eval/problem150//code.c:30:     for (i = 0; i < *return_size; ++i) {
	j	.L11		#
.L12:
# eval/problem150//code.c:31:         out[i] = lst[i];
	lw	a5,-56(s0)		# _59, i
	slli	a5,a5,3	#, _60, _59
	ld	a4,-72(s0)		# tmp260, lst
	add	a4,a4,a5	# _60, _61, tmp260
# eval/problem150//code.c:31:         out[i] = lst[i];
	lw	a5,-56(s0)		# _62, i
	slli	a5,a5,3	#, _63, _62
	ld	a3,-48(s0)		# tmp261, out
	add	a5,a3,a5	# _63, _64, tmp261
# eval/problem150//code.c:31:         out[i] = lst[i];
	ld	a4,0(a4)		# _65, *_61
# eval/problem150//code.c:31:         out[i] = lst[i];
	sd	a4,0(a5)	# _65, *_64
# eval/problem150//code.c:30:     for (i = 0; i < *return_size; ++i) {
	lw	a5,-56(s0)		# tmp264, i
	addiw	a5,a5,1	#, tmp262, tmp263
	sw	a5,-56(s0)	# tmp262, i
.L11:
# eval/problem150//code.c:30:     for (i = 0; i < *return_size; ++i) {
	ld	a5,-88(s0)		# tmp265, return_size
	lw	a4,0(a5)		# _66, *return_size_78(D)
# eval/problem150//code.c:30:     for (i = 0; i < *return_size; ++i) {
	lw	a5,-56(s0)		# tmp267, i
	sext.w	a5,a5	# tmp268, tmp266
	blt	a5,a4,.L12	#, tmp268, tmp269,
# eval/problem150//code.c:34:     return out;
	ld	a5,-48(s0)		# _86, out
# eval/problem150//code.c:35: }
	mv	a0,a5	#, <retval>
	ld	ra,88(sp)		#,
	.cfi_restore 1
	ld	s0,80(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
