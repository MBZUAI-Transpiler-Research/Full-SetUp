	.file	"problem150.c"
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
# problem150.c:9:     *return_size = 0;
	ld	a5,-88(s0)		# tmp142, return_size
	sw	zero,0(a5)	#, *return_size_78(D)
# problem150.c:10:     for (i = 0; i < lst_size; ++i) {
	sw	zero,-56(s0)	#, i
# problem150.c:10:     for (i = 0; i < lst_size; ++i) {
	j	.L2		#
.L4:
# problem150.c:11:         if (strlen(lst[i]) % 2 == 0) {
	lw	a5,-56(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-72(s0)		# tmp143, lst
	add	a5,a4,a5	# _2, _3, tmp143
# problem150.c:11:         if (strlen(lst[i]) % 2 == 0) {
	ld	a5,0(a5)		# _4, *_3
	mv	a0,a5	#, _4
	call	strlen@plt	#
	mv	a5,a0	# _5,
# problem150.c:11:         if (strlen(lst[i]) % 2 == 0) {
	andi	a5,a5,1	#, _6, _5
# problem150.c:11:         if (strlen(lst[i]) % 2 == 0) {
	bne	a5,zero,.L3	#, _6,,
# problem150.c:12:             lst[*return_size] = lst[i];
	lw	a5,-56(s0)		# _7, i
	slli	a5,a5,3	#, _8, _7
	ld	a4,-72(s0)		# tmp144, lst
	add	a4,a4,a5	# _8, _9, tmp144
# problem150.c:12:             lst[*return_size] = lst[i];
	ld	a5,-88(s0)		# tmp145, return_size
	lw	a5,0(a5)		# _10, *return_size_78(D)
# problem150.c:12:             lst[*return_size] = lst[i];
	slli	a5,a5,3	#, _12, _11
	ld	a3,-72(s0)		# tmp146, lst
	add	a5,a3,a5	# _12, _13, tmp146
# problem150.c:12:             lst[*return_size] = lst[i];
	ld	a4,0(a4)		# _14, *_9
# problem150.c:12:             lst[*return_size] = lst[i];
	sd	a4,0(a5)	# _14, *_13
# problem150.c:13:             (*return_size)++;
	ld	a5,-88(s0)		# tmp147, return_size
	lw	a5,0(a5)		# _15, *return_size_78(D)
# problem150.c:13:             (*return_size)++;
	addiw	a5,a5,1	#, tmp148, _15
	sext.w	a4,a5	# _16, tmp148
	ld	a5,-88(s0)		# tmp149, return_size
	sw	a4,0(a5)	# _16, *return_size_78(D)
.L3:
# problem150.c:10:     for (i = 0; i < lst_size; ++i) {
	lw	a5,-56(s0)		# tmp152, i
	addiw	a5,a5,1	#, tmp150, tmp151
	sw	a5,-56(s0)	# tmp150, i
.L2:
# problem150.c:10:     for (i = 0; i < lst_size; ++i) {
	lw	a5,-56(s0)		# tmp154, i
	mv	a4,a5	# tmp153, tmp154
	lw	a5,-76(s0)		# tmp156, lst_size
	sext.w	a4,a4	# tmp157, tmp153
	sext.w	a5,a5	# tmp158, tmp155
	blt	a4,a5,.L4	#, tmp157, tmp158,
# problem150.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	sw	zero,-56(s0)	#, i
# problem150.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	j	.L5		#
.L10:
# problem150.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	sw	zero,-52(s0)	#, j
# problem150.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	j	.L6		#
.L9:
# problem150.c:19:             size_t len_j = strlen(lst[j]);
	lw	a5,-52(s0)		# _17, j
	slli	a5,a5,3	#, _18, _17
	ld	a4,-72(s0)		# tmp159, lst
	add	a5,a4,a5	# _18, _19, tmp159
# problem150.c:19:             size_t len_j = strlen(lst[j]);
	ld	a5,0(a5)		# _20, *_19
	mv	a0,a5	#, _20
	call	strlen@plt	#
	sd	a0,-40(s0)	#, len_j
# problem150.c:20:             size_t len_j1 = strlen(lst[j + 1]);
	lw	a5,-52(s0)		# _21, j
	addi	a5,a5,1	#, _22, _21
	slli	a5,a5,3	#, _23, _22
	ld	a4,-72(s0)		# tmp160, lst
	add	a5,a4,a5	# _23, _24, tmp160
# problem150.c:20:             size_t len_j1 = strlen(lst[j + 1]);
	ld	a5,0(a5)		# _25, *_24
	mv	a0,a5	#, _25
	call	strlen@plt	#
	sd	a0,-32(s0)	#, len_j1
# problem150.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	ld	a4,-40(s0)		# tmp161, len_j
	ld	a5,-32(s0)		# tmp162, len_j1
	bgtu	a4,a5,.L7	#, tmp161, tmp162,
# problem150.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	ld	a4,-40(s0)		# tmp163, len_j
	ld	a5,-32(s0)		# tmp164, len_j1
	bne	a4,a5,.L8	#, tmp163, tmp164,
# problem150.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	lw	a5,-52(s0)		# _26, j
	slli	a5,a5,3	#, _27, _26
	ld	a4,-72(s0)		# tmp165, lst
	add	a5,a4,a5	# _27, _28, tmp165
# problem150.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	ld	a3,0(a5)		# _29, *_28
# problem150.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	lw	a5,-52(s0)		# _30, j
	addi	a5,a5,1	#, _31, _30
	slli	a5,a5,3	#, _32, _31
	ld	a4,-72(s0)		# tmp166, lst
	add	a5,a4,a5	# _32, _33, tmp166
# problem150.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	ld	a5,0(a5)		# _34, *_33
	mv	a1,a5	#, _34
	mv	a0,a3	#, _29
	call	strcmp@plt	#
	mv	a5,a0	# tmp167,
# problem150.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	ble	a5,zero,.L8	#, tmp168,,
.L7:
# problem150.c:22:                 temp = lst[j];
	lw	a5,-52(s0)		# _36, j
	slli	a5,a5,3	#, _37, _36
	ld	a4,-72(s0)		# tmp169, lst
	add	a5,a4,a5	# _37, _38, tmp169
# problem150.c:22:                 temp = lst[j];
	ld	a5,0(a5)		# tmp170, *_38
	sd	a5,-24(s0)	# tmp170, temp
# problem150.c:23:                 lst[j] = lst[j + 1];
	lw	a5,-52(s0)		# _39, j
	addi	a5,a5,1	#, _40, _39
	slli	a5,a5,3	#, _41, _40
	ld	a4,-72(s0)		# tmp171, lst
	add	a4,a4,a5	# _41, _42, tmp171
# problem150.c:23:                 lst[j] = lst[j + 1];
	lw	a5,-52(s0)		# _43, j
	slli	a5,a5,3	#, _44, _43
	ld	a3,-72(s0)		# tmp172, lst
	add	a5,a3,a5	# _44, _45, tmp172
# problem150.c:23:                 lst[j] = lst[j + 1];
	ld	a4,0(a4)		# _46, *_42
# problem150.c:23:                 lst[j] = lst[j + 1];
	sd	a4,0(a5)	# _46, *_45
# problem150.c:24:                 lst[j + 1] = temp;
	lw	a5,-52(s0)		# _47, j
	addi	a5,a5,1	#, _48, _47
	slli	a5,a5,3	#, _49, _48
	ld	a4,-72(s0)		# tmp173, lst
	add	a5,a4,a5	# _49, _50, tmp173
# problem150.c:24:                 lst[j + 1] = temp;
	ld	a4,-24(s0)		# tmp174, temp
	sd	a4,0(a5)	# tmp174, *_50
.L8:
# problem150.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	lw	a5,-52(s0)		# tmp177, j
	addiw	a5,a5,1	#, tmp175, tmp176
	sw	a5,-52(s0)	# tmp175, j
.L6:
# problem150.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	ld	a5,-88(s0)		# tmp178, return_size
	lw	a5,0(a5)		# _51, *return_size_78(D)
# problem150.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	lw	a4,-56(s0)		# tmp181, i
	subw	a5,a5,a4	# tmp179, _51, tmp180
	sext.w	a5,a5	# _52, tmp179
# problem150.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	addiw	a5,a5,-1	#, tmp182, _52
	sext.w	a4,a5	# _53, tmp182
# problem150.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	lw	a5,-52(s0)		# tmp184, j
	sext.w	a5,a5	# tmp185, tmp183
	blt	a5,a4,.L9	#, tmp185, tmp186,
# problem150.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	lw	a5,-56(s0)		# tmp189, i
	addiw	a5,a5,1	#, tmp187, tmp188
	sw	a5,-56(s0)	# tmp187, i
.L5:
# problem150.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	ld	a5,-88(s0)		# tmp190, return_size
	lw	a5,0(a5)		# _54, *return_size_78(D)
# problem150.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	addiw	a5,a5,-1	#, tmp191, _54
	sext.w	a4,a5	# _55, tmp191
# problem150.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	lw	a5,-56(s0)		# tmp193, i
	sext.w	a5,a5	# tmp194, tmp192
	blt	a5,a4,.L10	#, tmp194, tmp195,
# problem150.c:29:     char **out = malloc(*return_size * sizeof(char *));
	ld	a5,-88(s0)		# tmp196, return_size
	lw	a5,0(a5)		# _56, *return_size_78(D)
# problem150.c:29:     char **out = malloc(*return_size * sizeof(char *));
	slli	a5,a5,3	#, _58, _57
	mv	a0,a5	#, _58
	call	malloc@plt	#
	mv	a5,a0	# tmp197,
	sd	a5,-48(s0)	# tmp197, out
# problem150.c:30:     for (i = 0; i < *return_size; ++i) {
	sw	zero,-56(s0)	#, i
# problem150.c:30:     for (i = 0; i < *return_size; ++i) {
	j	.L11		#
.L12:
# problem150.c:31:         out[i] = lst[i];
	lw	a5,-56(s0)		# _59, i
	slli	a5,a5,3	#, _60, _59
	ld	a4,-72(s0)		# tmp198, lst
	add	a4,a4,a5	# _60, _61, tmp198
# problem150.c:31:         out[i] = lst[i];
	lw	a5,-56(s0)		# _62, i
	slli	a5,a5,3	#, _63, _62
	ld	a3,-48(s0)		# tmp199, out
	add	a5,a3,a5	# _63, _64, tmp199
# problem150.c:31:         out[i] = lst[i];
	ld	a4,0(a4)		# _65, *_61
# problem150.c:31:         out[i] = lst[i];
	sd	a4,0(a5)	# _65, *_64
# problem150.c:30:     for (i = 0; i < *return_size; ++i) {
	lw	a5,-56(s0)		# tmp202, i
	addiw	a5,a5,1	#, tmp200, tmp201
	sw	a5,-56(s0)	# tmp200, i
.L11:
# problem150.c:30:     for (i = 0; i < *return_size; ++i) {
	ld	a5,-88(s0)		# tmp203, return_size
	lw	a4,0(a5)		# _66, *return_size_78(D)
# problem150.c:30:     for (i = 0; i < *return_size; ++i) {
	lw	a5,-56(s0)		# tmp205, i
	sext.w	a5,a5	# tmp206, tmp204
	blt	a5,a4,.L12	#, tmp206, tmp207,
# problem150.c:34:     return out;
	ld	a5,-48(s0)		# _86, out
# problem150.c:35: }
	mv	a0,a5	#, <retval>
	ld	ra,88(sp)		#,
	ld	s0,80(sp)		#,
	addi	sp,sp,96	#,,
	jr	ra		#
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-40(s0)	# a, a
	sd	a1,-48(s0)	# b, b
	mv	a5,a2	# tmp83, a_size
	mv	a4,a3	# tmp85, b_size
	sw	a5,-52(s0)	# tmp84, a_size
	mv	a5,a4	# tmp86, tmp85
	sw	a5,-56(s0)	# tmp86, b_size
# problem150.c:45:     if (a_size != b_size) return 0;
	lw	a5,-52(s0)		# tmp88, a_size
	mv	a4,a5	# tmp87, tmp88
	lw	a5,-56(s0)		# tmp90, b_size
	sext.w	a4,a4	# tmp91, tmp87
	sext.w	a5,a5	# tmp92, tmp89
	beq	a4,a5,.L15	#, tmp91, tmp92,
# problem150.c:45:     if (a_size != b_size) return 0;
	li	a5,0		# _11,
	j	.L16		#
.L15:
# problem150.c:46:     for (int i = 0; i < a_size; i++) {
	sw	zero,-20(s0)	#, i
# problem150.c:46:     for (int i = 0; i < a_size; i++) {
	j	.L17		#
.L19:
# problem150.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-40(s0)		# tmp93, a
	add	a5,a4,a5	# _2, _3, tmp93
# problem150.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	ld	a3,0(a5)		# _4, *_3
# problem150.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,3	#, _6, _5
	ld	a4,-48(s0)		# tmp94, b
	add	a5,a4,a5	# _6, _7, tmp94
# problem150.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	ld	a5,0(a5)		# _8, *_7
	mv	a1,a5	#, _8
	mv	a0,a3	#, _4
	call	strcmp@plt	#
	mv	a5,a0	# tmp95,
# problem150.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	beq	a5,zero,.L18	#, _9,,
# problem150.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	li	a5,0		# _11,
	j	.L16		#
.L18:
# problem150.c:46:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp98, i
	addiw	a5,a5,1	#, tmp96, tmp97
	sw	a5,-20(s0)	# tmp96, i
.L17:
# problem150.c:46:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp100, i
	mv	a4,a5	# tmp99, tmp100
	lw	a5,-52(s0)		# tmp102, a_size
	sext.w	a4,a4	# tmp103, tmp99
	sext.w	a5,a5	# tmp104, tmp101
	blt	a4,a5,.L19	#, tmp103, tmp104,
# problem150.c:49:     return 1;
	li	a5,1		# _11,
.L16:
# problem150.c:50: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC19:
	.string	"aa"
	.align	3
.LC7:
	.string	"a"
	.align	3
.LC20:
	.string	"aaa"
	.align	3
.LC21:
	.string	"problem150.c"
	.align	3
.LC22:
	.string	"issame(result, expected1, size, 1)"
	.align	3
.LC1:
	.string	"AI"
	.align	3
.LC2:
	.string	"asdf"
	.align	3
.LC0:
	.string	"school"
	.align	3
.LC24:
	.string	"issame(result, expected2, size, 3)"
	.align	3
.LC26:
	.string	"size == 0"
	.align	3
.LC10:
	.string	"abcd"
	.align	3
.LC9:
	.string	"dcba"
	.align	3
.LC28:
	.string	"issame(result, expected4, size, 2)"
	.align	3
.LC29:
	.string	"ai"
	.align	3
.LC30:
	.string	"au"
	.align	3
.LC31:
	.string	"issame(result, expected5, size, 3)"
	.align	3
.LC35:
	.string	"issame(result, expected7, size, 4)"
	.align	3
.LC36:
	.string	"All tests passed!"
	.align	3
.LC3:
	.string	"b"
	.data
	.align	3
.LC23:
	.dword	.LC0
	.dword	.LC1
	.dword	.LC2
	.dword	.LC3
	.section	.rodata
	.align	3
.LC5:
	.string	"d"
	.align	3
.LC6:
	.string	"c"
	.data
	.align	3
.LC25:
	.dword	.LC5
	.dword	.LC3
	.dword	.LC6
	.dword	.LC7
	.align	3
.LC27:
	.dword	.LC5
	.dword	.LC9
	.dword	.LC10
	.dword	.LC7
	.align	3
.LC32:
	.dword	.LC7
	.dword	.LC3
	.dword	.LC3
	.dword	.LC6
	.dword	.LC6
	.dword	.LC7
	.section	.rodata
	.align	3
.LC13:
	.string	"aaaa"
	.align	3
.LC14:
	.string	"bbbb"
	.align	3
.LC15:
	.string	"dd"
	.align	3
.LC16:
	.string	"cc"
	.data
	.align	3
.LC33:
	.dword	.LC13
	.dword	.LC14
	.dword	.LC15
	.dword	.LC16
	.align	3
.LC34:
	.dword	.LC16
	.dword	.LC15
	.dword	.LC13
	.dword	.LC14
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-368	#,,
	sd	ra,360(sp)	#,
	sd	s0,352(sp)	#,
	addi	s0,sp,368	#,,
# problem150.c:52: int main() {
	la	a5,__stack_chk_guard		# tmp86,
	ld	a4, 0(a5)	# tmp161, __stack_chk_guard
	sd	a4, -24(s0)	# tmp161, D.2725
	li	a4, 0	# tmp161
# problem150.c:56:     char *test1[] = {"aa", "a", "aaa"};
	lla	a5,.LC19	# tmp87,
	sd	a5,-328(s0)	# tmp87, test1[0]
	lla	a5,.LC7	# tmp88,
	sd	a5,-320(s0)	# tmp88, test1[1]
	lla	a5,.LC20	# tmp89,
	sd	a5,-312(s0)	# tmp89, test1[2]
# problem150.c:57:     char *expected1[] = {"aa"};
	lla	a5,.LC19	# tmp90,
	sd	a5,-352(s0)	# tmp90, expected1[0]
# problem150.c:58:     result = func0(test1, 3, &size);
	addi	a4,s0,-364	#, tmp91,
	addi	a5,s0,-328	#, tmp92,
	mv	a2,a4	#, tmp91
	li	a1,3		#,
	mv	a0,a5	#, tmp92
	call	func0		#
	sd	a0,-360(s0)	#, result
# problem150.c:59:     assert(issame(result, expected1, size, 1));
	lw	a4,-364(s0)		# size.0_1, size
	addi	a5,s0,-352	#, tmp93,
	li	a3,1		#,
	mv	a2,a4	#, size.0_1
	mv	a1,a5	#, tmp93
	ld	a0,-360(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp94,
	bne	a5,zero,.L21	#, _2,,
# problem150.c:59:     assert(issame(result, expected1, size, 1));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,59		#,
	lla	a1,.LC21	#,
	lla	a0,.LC22	#,
	call	__assert_fail@plt	#
.L21:
# problem150.c:60:     free(result);
	ld	a0,-360(s0)		#, result
	call	free@plt	#
# problem150.c:62:     char *test2[] = {"school", "AI", "asdf", "b"};
	lla	a5,.LC23	# tmp95,
	ld	a2,0(a5)		# tmp96,
	ld	a3,8(a5)		# tmp97,
	ld	a4,16(a5)		# tmp98,
	ld	a5,24(a5)		# tmp99,
	sd	a2,-232(s0)	# tmp96, test2
	sd	a3,-224(s0)	# tmp97, test2
	sd	a4,-216(s0)	# tmp98, test2
	sd	a5,-208(s0)	# tmp99, test2
# problem150.c:63:     char *expected2[] = {"AI", "asdf", "school"};
	lla	a5,.LC1	# tmp100,
	sd	a5,-304(s0)	# tmp100, expected2[0]
	lla	a5,.LC2	# tmp101,
	sd	a5,-296(s0)	# tmp101, expected2[1]
	lla	a5,.LC0	# tmp102,
	sd	a5,-288(s0)	# tmp102, expected2[2]
# problem150.c:64:     result = func0(test2, 4, &size);
	addi	a4,s0,-364	#, tmp103,
	addi	a5,s0,-232	#, tmp104,
	mv	a2,a4	#, tmp103
	li	a1,4		#,
	mv	a0,a5	#, tmp104
	call	func0		#
	sd	a0,-360(s0)	#, result
# problem150.c:65:     assert(issame(result, expected2, size, 3));
	lw	a4,-364(s0)		# size.1_3, size
	addi	a5,s0,-304	#, tmp105,
	li	a3,3		#,
	mv	a2,a4	#, size.1_3
	mv	a1,a5	#, tmp105
	ld	a0,-360(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp106,
	bne	a5,zero,.L22	#, _4,,
# problem150.c:65:     assert(issame(result, expected2, size, 3));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,65		#,
	lla	a1,.LC21	#,
	lla	a0,.LC24	#,
	call	__assert_fail@plt	#
.L22:
# problem150.c:66:     free(result);
	ld	a0,-360(s0)		#, result
	call	free@plt	#
# problem150.c:68:     char *test3[] = {"d", "b", "c", "a"};
	lla	a5,.LC25	# tmp107,
	ld	a2,0(a5)		# tmp108,
	ld	a3,8(a5)		# tmp109,
	ld	a4,16(a5)		# tmp110,
	ld	a5,24(a5)		# tmp111,
	sd	a2,-200(s0)	# tmp108, test3
	sd	a3,-192(s0)	# tmp109, test3
	sd	a4,-184(s0)	# tmp110, test3
	sd	a5,-176(s0)	# tmp111, test3
# problem150.c:69:     result = func0(test3, 4, &size);
	addi	a4,s0,-364	#, tmp112,
	addi	a5,s0,-200	#, tmp113,
	mv	a2,a4	#, tmp112
	li	a1,4		#,
	mv	a0,a5	#, tmp113
	call	func0		#
	sd	a0,-360(s0)	#, result
# problem150.c:70:     assert(size == 0);
	lw	a5,-364(s0)		# size.2_5, size
	beq	a5,zero,.L23	#, size.2_5,,
# problem150.c:70:     assert(size == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,70		#,
	lla	a1,.LC21	#,
	lla	a0,.LC26	#,
	call	__assert_fail@plt	#
.L23:
# problem150.c:71:     free(result);
	ld	a0,-360(s0)		#, result
	call	free@plt	#
# problem150.c:73:     char *test4[] = {"d", "dcba", "abcd", "a"};
	lla	a5,.LC27	# tmp114,
	ld	a2,0(a5)		# tmp115,
	ld	a3,8(a5)		# tmp116,
	ld	a4,16(a5)		# tmp117,
	ld	a5,24(a5)		# tmp118,
	sd	a2,-168(s0)	# tmp115, test4
	sd	a3,-160(s0)	# tmp116, test4
	sd	a4,-152(s0)	# tmp117, test4
	sd	a5,-144(s0)	# tmp118, test4
# problem150.c:74:     char *expected4[] = {"abcd", "dcba"};
	lla	a5,.LC10	# tmp119,
	sd	a5,-344(s0)	# tmp119, expected4[0]
	lla	a5,.LC9	# tmp120,
	sd	a5,-336(s0)	# tmp120, expected4[1]
# problem150.c:75:     result = func0(test4, 4, &size);
	addi	a4,s0,-364	#, tmp121,
	addi	a5,s0,-168	#, tmp122,
	mv	a2,a4	#, tmp121
	li	a1,4		#,
	mv	a0,a5	#, tmp122
	call	func0		#
	sd	a0,-360(s0)	#, result
# problem150.c:76:     assert(issame(result, expected4, size, 2));
	lw	a4,-364(s0)		# size.3_6, size
	addi	a5,s0,-344	#, tmp123,
	li	a3,2		#,
	mv	a2,a4	#, size.3_6
	mv	a1,a5	#, tmp123
	ld	a0,-360(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp124,
	bne	a5,zero,.L24	#, _7,,
# problem150.c:76:     assert(issame(result, expected4, size, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,76		#,
	lla	a1,.LC21	#,
	lla	a0,.LC28	#,
	call	__assert_fail@plt	#
.L24:
# problem150.c:77:     free(result);
	ld	a0,-360(s0)		#, result
	call	free@plt	#
# problem150.c:79:     char *test5[] = {"AI", "ai", "au"};
	lla	a5,.LC1	# tmp125,
	sd	a5,-280(s0)	# tmp125, test5[0]
	lla	a5,.LC29	# tmp126,
	sd	a5,-272(s0)	# tmp126, test5[1]
	lla	a5,.LC30	# tmp127,
	sd	a5,-264(s0)	# tmp127, test5[2]
# problem150.c:80:     char *expected5[] = {"AI", "ai", "au"};
	lla	a5,.LC1	# tmp128,
	sd	a5,-256(s0)	# tmp128, expected5[0]
	lla	a5,.LC29	# tmp129,
	sd	a5,-248(s0)	# tmp129, expected5[1]
	lla	a5,.LC30	# tmp130,
	sd	a5,-240(s0)	# tmp130, expected5[2]
# problem150.c:81:     result = func0(test5, 3, &size);
	addi	a4,s0,-364	#, tmp131,
	addi	a5,s0,-280	#, tmp132,
	mv	a2,a4	#, tmp131
	li	a1,3		#,
	mv	a0,a5	#, tmp132
	call	func0		#
	sd	a0,-360(s0)	#, result
# problem150.c:82:     assert(issame(result, expected5, size, 3));
	lw	a4,-364(s0)		# size.4_8, size
	addi	a5,s0,-256	#, tmp133,
	li	a3,3		#,
	mv	a2,a4	#, size.4_8
	mv	a1,a5	#, tmp133
	ld	a0,-360(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp134,
	bne	a5,zero,.L25	#, _9,,
# problem150.c:82:     assert(issame(result, expected5, size, 3));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,82		#,
	lla	a1,.LC21	#,
	lla	a0,.LC31	#,
	call	__assert_fail@plt	#
.L25:
# problem150.c:83:     free(result);
	ld	a0,-360(s0)		#, result
	call	free@plt	#
# problem150.c:85:     char *test6[] = {"a", "b", "b", "c", "c", "a"};
	lla	a5,.LC32	# tmp135,
	ld	a0,0(a5)		# tmp136,
	ld	a1,8(a5)		# tmp137,
	ld	a2,16(a5)		# tmp138,
	ld	a3,24(a5)		# tmp139,
	ld	a4,32(a5)		# tmp140,
	ld	a5,40(a5)		# tmp141,
	sd	a0,-72(s0)	# tmp136, test6
	sd	a1,-64(s0)	# tmp137, test6
	sd	a2,-56(s0)	# tmp138, test6
	sd	a3,-48(s0)	# tmp139, test6
	sd	a4,-40(s0)	# tmp140, test6
	sd	a5,-32(s0)	# tmp141, test6
# problem150.c:86:     result = func0(test6, 6, &size);
	addi	a4,s0,-364	#, tmp142,
	addi	a5,s0,-72	#, tmp143,
	mv	a2,a4	#, tmp142
	li	a1,6		#,
	mv	a0,a5	#, tmp143
	call	func0		#
	sd	a0,-360(s0)	#, result
# problem150.c:87:     assert(size == 0);
	lw	a5,-364(s0)		# size.5_10, size
	beq	a5,zero,.L26	#, size.5_10,,
# problem150.c:87:     assert(size == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,87		#,
	lla	a1,.LC21	#,
	lla	a0,.LC26	#,
	call	__assert_fail@plt	#
.L26:
# problem150.c:88:     free(result);
	ld	a0,-360(s0)		#, result
	call	free@plt	#
# problem150.c:90:     char *test7[] = {"aaaa", "bbbb", "dd", "cc"};
	lla	a5,.LC33	# tmp144,
	ld	a2,0(a5)		# tmp145,
	ld	a3,8(a5)		# tmp146,
	ld	a4,16(a5)		# tmp147,
	ld	a5,24(a5)		# tmp148,
	sd	a2,-136(s0)	# tmp145, test7
	sd	a3,-128(s0)	# tmp146, test7
	sd	a4,-120(s0)	# tmp147, test7
	sd	a5,-112(s0)	# tmp148, test7
# problem150.c:91:     char *expected7[] = {"cc", "dd", "aaaa", "bbbb"};
	lla	a5,.LC34	# tmp149,
	ld	a2,0(a5)		# tmp150,
	ld	a3,8(a5)		# tmp151,
	ld	a4,16(a5)		# tmp152,
	ld	a5,24(a5)		# tmp153,
	sd	a2,-104(s0)	# tmp150, expected7
	sd	a3,-96(s0)	# tmp151, expected7
	sd	a4,-88(s0)	# tmp152, expected7
	sd	a5,-80(s0)	# tmp153, expected7
# problem150.c:92:     result = func0(test7, 4, &size);
	addi	a4,s0,-364	#, tmp154,
	addi	a5,s0,-136	#, tmp155,
	mv	a2,a4	#, tmp154
	li	a1,4		#,
	mv	a0,a5	#, tmp155
	call	func0		#
	sd	a0,-360(s0)	#, result
# problem150.c:93:     assert(issame(result, expected7, size, 4));
	lw	a4,-364(s0)		# size.6_11, size
	addi	a5,s0,-104	#, tmp156,
	li	a3,4		#,
	mv	a2,a4	#, size.6_11
	mv	a1,a5	#, tmp156
	ld	a0,-360(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp157,
	bne	a5,zero,.L27	#, _12,,
# problem150.c:93:     assert(issame(result, expected7, size, 4));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,93		#,
	lla	a1,.LC21	#,
	lla	a0,.LC35	#,
	call	__assert_fail@plt	#
.L27:
# problem150.c:94:     free(result);
	ld	a0,-360(s0)		#, result
	call	free@plt	#
# problem150.c:96:     printf("All tests passed!\n");
	lla	a0,.LC36	#,
	call	puts@plt	#
# problem150.c:98:     return 0;
	li	a5,0		# _69,
# problem150.c:99: }
	mv	a4,a5	# <retval>, _69
	la	a5,__stack_chk_guard		# tmp159,
	ld	a3, -24(s0)	# tmp162, D.2725
	ld	a5, 0(a5)	# tmp160, __stack_chk_guard
	xor	a5, a3, a5	# tmp160, tmp162
	li	a3, 0	# tmp162
	beq	a5,zero,.L29	#, tmp160,,
	call	__stack_chk_fail@plt	#
.L29:
	mv	a0,a4	#, <retval>
	ld	ra,360(sp)		#,
	ld	s0,352(sp)		#,
	addi	sp,sp,368	#,,
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
