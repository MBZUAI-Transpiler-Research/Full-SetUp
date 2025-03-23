	.file	"problem150.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# lst, lst
	movl	%esi, -60(%rbp)	# lst_size, lst_size
	movq	%rdx, -72(%rbp)	# return_size, return_size
# problem150.c:9:     *return_size = 0;
	movq	-72(%rbp), %rax	# return_size, tmp150
	movl	$0, (%rax)	#, *return_size_78(D)
# problem150.c:10:     for (i = 0; i < lst_size; ++i) {
	movl	$0, -40(%rbp)	#, i
# problem150.c:10:     for (i = 0; i < lst_size; ++i) {
	jmp	.L2	#
.L4:
# problem150.c:11:         if (strlen(lst[i]) % 2 == 0) {
	movl	-40(%rbp), %eax	# i, tmp151
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-56(%rbp), %rax	# lst, tmp152
	addq	%rdx, %rax	# _2, _3
# problem150.c:11:         if (strlen(lst[i]) % 2 == 0) {
	movq	(%rax), %rax	# *_3, _4
	movq	%rax, %rdi	# _4,
	call	strlen@PLT	#
# problem150.c:11:         if (strlen(lst[i]) % 2 == 0) {
	andl	$1, %eax	#, _6
# problem150.c:11:         if (strlen(lst[i]) % 2 == 0) {
	testq	%rax, %rax	# _6
	jne	.L3	#,
# problem150.c:12:             lst[*return_size] = lst[i];
	movl	-40(%rbp), %eax	# i, tmp153
	cltq
	leaq	0(,%rax,8), %rdx	#, _8
	movq	-56(%rbp), %rax	# lst, tmp154
	leaq	(%rdx,%rax), %rcx	#, _9
# problem150.c:12:             lst[*return_size] = lst[i];
	movq	-72(%rbp), %rax	# return_size, tmp155
	movl	(%rax), %eax	# *return_size_78(D), _10
	cltq
# problem150.c:12:             lst[*return_size] = lst[i];
	leaq	0(,%rax,8), %rdx	#, _12
	movq	-56(%rbp), %rax	# lst, tmp156
	addq	%rax, %rdx	# tmp156, _13
# problem150.c:12:             lst[*return_size] = lst[i];
	movq	(%rcx), %rax	# *_9, _14
# problem150.c:12:             lst[*return_size] = lst[i];
	movq	%rax, (%rdx)	# _14, *_13
# problem150.c:13:             (*return_size)++;
	movq	-72(%rbp), %rax	# return_size, tmp157
	movl	(%rax), %eax	# *return_size_78(D), _15
# problem150.c:13:             (*return_size)++;
	leal	1(%rax), %edx	#, _16
	movq	-72(%rbp), %rax	# return_size, tmp158
	movl	%edx, (%rax)	# _16, *return_size_78(D)
.L3:
# problem150.c:10:     for (i = 0; i < lst_size; ++i) {
	addl	$1, -40(%rbp)	#, i
.L2:
# problem150.c:10:     for (i = 0; i < lst_size; ++i) {
	movl	-40(%rbp), %eax	# i, tmp159
	cmpl	-60(%rbp), %eax	# lst_size, tmp159
	jl	.L4	#,
# problem150.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	movl	$0, -40(%rbp)	#, i
# problem150.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	jmp	.L5	#
.L10:
# problem150.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	movl	$0, -36(%rbp)	#, j
# problem150.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	jmp	.L6	#
.L9:
# problem150.c:19:             size_t len_j = strlen(lst[j]);
	movl	-36(%rbp), %eax	# j, tmp160
	cltq
	leaq	0(,%rax,8), %rdx	#, _18
	movq	-56(%rbp), %rax	# lst, tmp161
	addq	%rdx, %rax	# _18, _19
# problem150.c:19:             size_t len_j = strlen(lst[j]);
	movq	(%rax), %rax	# *_19, _20
	movq	%rax, %rdi	# _20,
	call	strlen@PLT	#
	movq	%rax, -24(%rbp)	# tmp162, len_j
# problem150.c:20:             size_t len_j1 = strlen(lst[j + 1]);
	movl	-36(%rbp), %eax	# j, tmp163
	cltq
	addq	$1, %rax	#, _22
	leaq	0(,%rax,8), %rdx	#, _23
	movq	-56(%rbp), %rax	# lst, tmp164
	addq	%rdx, %rax	# _23, _24
# problem150.c:20:             size_t len_j1 = strlen(lst[j + 1]);
	movq	(%rax), %rax	# *_24, _25
	movq	%rax, %rdi	# _25,
	call	strlen@PLT	#
	movq	%rax, -16(%rbp)	# tmp165, len_j1
# problem150.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	movq	-24(%rbp), %rax	# len_j, tmp166
	cmpq	-16(%rbp), %rax	# len_j1, tmp166
	ja	.L7	#,
# problem150.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	movq	-24(%rbp), %rax	# len_j, tmp167
	cmpq	-16(%rbp), %rax	# len_j1, tmp167
	jne	.L8	#,
# problem150.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	movl	-36(%rbp), %eax	# j, tmp168
	cltq
	addq	$1, %rax	#, _27
	leaq	0(,%rax,8), %rdx	#, _28
	movq	-56(%rbp), %rax	# lst, tmp169
	addq	%rdx, %rax	# _28, _29
# problem150.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	movq	(%rax), %rdx	# *_29, _30
# problem150.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	movl	-36(%rbp), %eax	# j, tmp170
	cltq
	leaq	0(,%rax,8), %rcx	#, _32
	movq	-56(%rbp), %rax	# lst, tmp171
	addq	%rcx, %rax	# _32, _33
# problem150.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	movq	(%rax), %rax	# *_33, _34
	movq	%rdx, %rsi	# _30,
	movq	%rax, %rdi	# _34,
	call	strcmp@PLT	#
# problem150.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	testl	%eax, %eax	# _35
	jle	.L8	#,
.L7:
# problem150.c:22:                 temp = lst[j];
	movl	-36(%rbp), %eax	# j, tmp172
	cltq
	leaq	0(,%rax,8), %rdx	#, _37
	movq	-56(%rbp), %rax	# lst, tmp173
	addq	%rdx, %rax	# _37, _38
# problem150.c:22:                 temp = lst[j];
	movq	(%rax), %rax	# *_38, tmp174
	movq	%rax, -8(%rbp)	# tmp174, temp
# problem150.c:23:                 lst[j] = lst[j + 1];
	movl	-36(%rbp), %eax	# j, tmp175
	cltq
	addq	$1, %rax	#, _40
	leaq	0(,%rax,8), %rdx	#, _41
	movq	-56(%rbp), %rax	# lst, tmp176
	addq	%rdx, %rax	# _41, _42
# problem150.c:23:                 lst[j] = lst[j + 1];
	movl	-36(%rbp), %edx	# j, tmp177
	movslq	%edx, %rdx	# tmp177, _43
	leaq	0(,%rdx,8), %rcx	#, _44
	movq	-56(%rbp), %rdx	# lst, tmp178
	addq	%rcx, %rdx	# _44, _45
# problem150.c:23:                 lst[j] = lst[j + 1];
	movq	(%rax), %rax	# *_42, _46
# problem150.c:23:                 lst[j] = lst[j + 1];
	movq	%rax, (%rdx)	# _46, *_45
# problem150.c:24:                 lst[j + 1] = temp;
	movl	-36(%rbp), %eax	# j, tmp179
	cltq
	addq	$1, %rax	#, _48
	leaq	0(,%rax,8), %rdx	#, _49
	movq	-56(%rbp), %rax	# lst, tmp180
	addq	%rax, %rdx	# tmp180, _50
# problem150.c:24:                 lst[j + 1] = temp;
	movq	-8(%rbp), %rax	# temp, tmp181
	movq	%rax, (%rdx)	# tmp181, *_50
.L8:
# problem150.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	addl	$1, -36(%rbp)	#, j
.L6:
# problem150.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	movq	-72(%rbp), %rax	# return_size, tmp182
	movl	(%rax), %eax	# *return_size_78(D), _51
# problem150.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	subl	-40(%rbp), %eax	# i, _52
# problem150.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	subl	$1, %eax	#, _53
# problem150.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	cmpl	%eax, -36(%rbp)	# _53, j
	jl	.L9	#,
# problem150.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	addl	$1, -40(%rbp)	#, i
.L5:
# problem150.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	movq	-72(%rbp), %rax	# return_size, tmp183
	movl	(%rax), %eax	# *return_size_78(D), _54
# problem150.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	subl	$1, %eax	#, _55
# problem150.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	cmpl	%eax, -40(%rbp)	# _55, i
	jl	.L10	#,
# problem150.c:29:     char **out = malloc(*return_size * sizeof(char *));
	movq	-72(%rbp), %rax	# return_size, tmp184
	movl	(%rax), %eax	# *return_size_78(D), _56
	cltq
# problem150.c:29:     char **out = malloc(*return_size * sizeof(char *));
	salq	$3, %rax	#, _58
	movq	%rax, %rdi	# _58,
	call	malloc@PLT	#
	movq	%rax, -32(%rbp)	# tmp185, out
# problem150.c:30:     for (i = 0; i < *return_size; ++i) {
	movl	$0, -40(%rbp)	#, i
# problem150.c:30:     for (i = 0; i < *return_size; ++i) {
	jmp	.L11	#
.L12:
# problem150.c:31:         out[i] = lst[i];
	movl	-40(%rbp), %eax	# i, tmp186
	cltq
	leaq	0(,%rax,8), %rdx	#, _60
	movq	-56(%rbp), %rax	# lst, tmp187
	addq	%rdx, %rax	# _60, _61
# problem150.c:31:         out[i] = lst[i];
	movl	-40(%rbp), %edx	# i, tmp188
	movslq	%edx, %rdx	# tmp188, _62
	leaq	0(,%rdx,8), %rcx	#, _63
	movq	-32(%rbp), %rdx	# out, tmp189
	addq	%rcx, %rdx	# _63, _64
# problem150.c:31:         out[i] = lst[i];
	movq	(%rax), %rax	# *_61, _65
# problem150.c:31:         out[i] = lst[i];
	movq	%rax, (%rdx)	# _65, *_64
# problem150.c:30:     for (i = 0; i < *return_size; ++i) {
	addl	$1, -40(%rbp)	#, i
.L11:
# problem150.c:30:     for (i = 0; i < *return_size; ++i) {
	movq	-72(%rbp), %rax	# return_size, tmp190
	movl	(%rax), %eax	# *return_size_78(D), _66
# problem150.c:30:     for (i = 0; i < *return_size; ++i) {
	cmpl	%eax, -40(%rbp)	# _66, i
	jl	.L12	#,
# problem150.c:34:     return out;
	movq	-32(%rbp), %rax	# out, _86
# problem150.c:35: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# b, b
	movl	%edx, -36(%rbp)	# a_size, a_size
	movl	%ecx, -40(%rbp)	# b_size, b_size
# problem150.c:45:     if (a_size != b_size) return 0;
	movl	-36(%rbp), %eax	# a_size, tmp93
	cmpl	-40(%rbp), %eax	# b_size, tmp93
	je	.L15	#,
# problem150.c:45:     if (a_size != b_size) return 0;
	movl	$0, %eax	#, _11
	jmp	.L16	#
.L15:
# problem150.c:46:     for (int i = 0; i < a_size; i++) {
	movl	$0, -4(%rbp)	#, i
# problem150.c:46:     for (int i = 0; i < a_size; i++) {
	jmp	.L17	#
.L19:
# problem150.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	movl	-4(%rbp), %eax	# i, tmp94
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-32(%rbp), %rax	# b, tmp95
	addq	%rdx, %rax	# _2, _3
# problem150.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	movq	(%rax), %rdx	# *_3, _4
# problem150.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	movl	-4(%rbp), %eax	# i, tmp96
	cltq
	leaq	0(,%rax,8), %rcx	#, _6
	movq	-24(%rbp), %rax	# a, tmp97
	addq	%rcx, %rax	# _6, _7
# problem150.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	movq	(%rax), %rax	# *_7, _8
	movq	%rdx, %rsi	# _4,
	movq	%rax, %rdi	# _8,
	call	strcmp@PLT	#
# problem150.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	testl	%eax, %eax	# _9
	je	.L18	#,
# problem150.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	movl	$0, %eax	#, _11
	jmp	.L16	#
.L18:
# problem150.c:46:     for (int i = 0; i < a_size; i++) {
	addl	$1, -4(%rbp)	#, i
.L17:
# problem150.c:46:     for (int i = 0; i < a_size; i++) {
	movl	-4(%rbp), %eax	# i, tmp98
	cmpl	-36(%rbp), %eax	# a_size, tmp98
	jl	.L19	#,
# problem150.c:49:     return 1;
	movl	$1, %eax	#, _11
.L16:
# problem150.c:50: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"aa"
.LC1:
	.string	"a"
.LC2:
	.string	"aaa"
.LC3:
	.string	"problem150.c"
	.align 8
.LC4:
	.string	"issame(result, expected1, size, 1)"
.LC5:
	.string	"school"
.LC6:
	.string	"AI"
.LC7:
	.string	"asdf"
.LC8:
	.string	"b"
	.align 8
.LC9:
	.string	"issame(result, expected2, size, 3)"
.LC10:
	.string	"d"
.LC11:
	.string	"c"
.LC12:
	.string	"size == 0"
.LC13:
	.string	"dcba"
.LC14:
	.string	"abcd"
	.align 8
.LC15:
	.string	"issame(result, expected4, size, 2)"
.LC16:
	.string	"ai"
.LC17:
	.string	"au"
	.align 8
.LC18:
	.string	"issame(result, expected5, size, 3)"
.LC19:
	.string	"aaaa"
.LC20:
	.string	"bbbb"
.LC21:
	.string	"dd"
.LC22:
	.string	"cc"
	.align 8
.LC23:
	.string	"issame(result, expected7, size, 4)"
.LC24:
	.string	"All tests passed!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$400, %rsp	#,
# problem150.c:52: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp198
	movq	%rax, -8(%rbp)	# tmp198, D.3165
	xorl	%eax, %eax	# tmp198
# problem150.c:56:     char *test1[] = {"aa", "a", "aaa"};
	leaq	.LC0(%rip), %rax	#, tmp96
	movq	%rax, -352(%rbp)	# tmp96, test1[0]
	leaq	.LC1(%rip), %rax	#, tmp97
	movq	%rax, -344(%rbp)	# tmp97, test1[1]
	leaq	.LC2(%rip), %rax	#, tmp98
	movq	%rax, -336(%rbp)	# tmp98, test1[2]
# problem150.c:57:     char *expected1[] = {"aa"};
	leaq	.LC0(%rip), %rax	#, tmp99
	movq	%rax, -376(%rbp)	# tmp99, expected1[0]
# problem150.c:58:     result = func0(test1, 3, &size);
	leaq	-388(%rbp), %rdx	#, tmp100
	leaq	-352(%rbp), %rax	#, tmp101
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp101,
	call	func0	#
	movq	%rax, -384(%rbp)	# tmp102, result
# problem150.c:59:     assert(issame(result, expected1, size, 1));
	movl	-388(%rbp), %edx	# size, size.0_1
	leaq	-376(%rbp), %rsi	#, tmp103
	movq	-384(%rbp), %rax	# result, tmp104
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp104,
	call	issame	#
	testl	%eax, %eax	# _2
	jne	.L21	#,
# problem150.c:59:     assert(issame(result, expected1, size, 1));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp105
	movq	%rax, %rcx	# tmp105,
	movl	$59, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp106
	movq	%rax, %rsi	# tmp106,
	leaq	.LC4(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	__assert_fail@PLT	#
.L21:
# problem150.c:60:     free(result);
	movq	-384(%rbp), %rax	# result, tmp108
	movq	%rax, %rdi	# tmp108,
	call	free@PLT	#
# problem150.c:62:     char *test2[] = {"school", "AI", "asdf", "b"};
	leaq	.LC5(%rip), %rax	#, tmp109
	movq	%rax, -224(%rbp)	# tmp109, test2[0]
	leaq	.LC6(%rip), %rax	#, tmp110
	movq	%rax, -216(%rbp)	# tmp110, test2[1]
	leaq	.LC7(%rip), %rax	#, tmp111
	movq	%rax, -208(%rbp)	# tmp111, test2[2]
	leaq	.LC8(%rip), %rax	#, tmp112
	movq	%rax, -200(%rbp)	# tmp112, test2[3]
# problem150.c:63:     char *expected2[] = {"AI", "asdf", "school"};
	leaq	.LC6(%rip), %rax	#, tmp113
	movq	%rax, -320(%rbp)	# tmp113, expected2[0]
	leaq	.LC7(%rip), %rax	#, tmp114
	movq	%rax, -312(%rbp)	# tmp114, expected2[1]
	leaq	.LC5(%rip), %rax	#, tmp115
	movq	%rax, -304(%rbp)	# tmp115, expected2[2]
# problem150.c:64:     result = func0(test2, 4, &size);
	leaq	-388(%rbp), %rdx	#, tmp116
	leaq	-224(%rbp), %rax	#, tmp117
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp117,
	call	func0	#
	movq	%rax, -384(%rbp)	# tmp118, result
# problem150.c:65:     assert(issame(result, expected2, size, 3));
	movl	-388(%rbp), %edx	# size, size.1_3
	leaq	-320(%rbp), %rsi	#, tmp119
	movq	-384(%rbp), %rax	# result, tmp120
	movl	$3, %ecx	#,
	movq	%rax, %rdi	# tmp120,
	call	issame	#
	testl	%eax, %eax	# _4
	jne	.L22	#,
# problem150.c:65:     assert(issame(result, expected2, size, 3));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp121
	movq	%rax, %rcx	# tmp121,
	movl	$65, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp122
	movq	%rax, %rsi	# tmp122,
	leaq	.LC9(%rip), %rax	#, tmp123
	movq	%rax, %rdi	# tmp123,
	call	__assert_fail@PLT	#
.L22:
# problem150.c:66:     free(result);
	movq	-384(%rbp), %rax	# result, tmp124
	movq	%rax, %rdi	# tmp124,
	call	free@PLT	#
# problem150.c:68:     char *test3[] = {"d", "b", "c", "a"};
	leaq	.LC10(%rip), %rax	#, tmp125
	movq	%rax, -192(%rbp)	# tmp125, test3[0]
	leaq	.LC8(%rip), %rax	#, tmp126
	movq	%rax, -184(%rbp)	# tmp126, test3[1]
	leaq	.LC11(%rip), %rax	#, tmp127
	movq	%rax, -176(%rbp)	# tmp127, test3[2]
	leaq	.LC1(%rip), %rax	#, tmp128
	movq	%rax, -168(%rbp)	# tmp128, test3[3]
# problem150.c:69:     result = func0(test3, 4, &size);
	leaq	-388(%rbp), %rdx	#, tmp129
	leaq	-192(%rbp), %rax	#, tmp130
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp130,
	call	func0	#
	movq	%rax, -384(%rbp)	# tmp131, result
# problem150.c:70:     assert(size == 0);
	movl	-388(%rbp), %eax	# size, size.2_5
	testl	%eax, %eax	# size.2_5
	je	.L23	#,
# problem150.c:70:     assert(size == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp132
	movq	%rax, %rcx	# tmp132,
	movl	$70, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp133
	movq	%rax, %rsi	# tmp133,
	leaq	.LC12(%rip), %rax	#, tmp134
	movq	%rax, %rdi	# tmp134,
	call	__assert_fail@PLT	#
.L23:
# problem150.c:71:     free(result);
	movq	-384(%rbp), %rax	# result, tmp135
	movq	%rax, %rdi	# tmp135,
	call	free@PLT	#
# problem150.c:73:     char *test4[] = {"d", "dcba", "abcd", "a"};
	leaq	.LC10(%rip), %rax	#, tmp136
	movq	%rax, -160(%rbp)	# tmp136, test4[0]
	leaq	.LC13(%rip), %rax	#, tmp137
	movq	%rax, -152(%rbp)	# tmp137, test4[1]
	leaq	.LC14(%rip), %rax	#, tmp138
	movq	%rax, -144(%rbp)	# tmp138, test4[2]
	leaq	.LC1(%rip), %rax	#, tmp139
	movq	%rax, -136(%rbp)	# tmp139, test4[3]
# problem150.c:74:     char *expected4[] = {"abcd", "dcba"};
	leaq	.LC14(%rip), %rax	#, tmp140
	movq	%rax, -368(%rbp)	# tmp140, expected4[0]
	leaq	.LC13(%rip), %rax	#, tmp141
	movq	%rax, -360(%rbp)	# tmp141, expected4[1]
# problem150.c:75:     result = func0(test4, 4, &size);
	leaq	-388(%rbp), %rdx	#, tmp142
	leaq	-160(%rbp), %rax	#, tmp143
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp143,
	call	func0	#
	movq	%rax, -384(%rbp)	# tmp144, result
# problem150.c:76:     assert(issame(result, expected4, size, 2));
	movl	-388(%rbp), %edx	# size, size.3_6
	leaq	-368(%rbp), %rsi	#, tmp145
	movq	-384(%rbp), %rax	# result, tmp146
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp146,
	call	issame	#
	testl	%eax, %eax	# _7
	jne	.L24	#,
# problem150.c:76:     assert(issame(result, expected4, size, 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp147
	movq	%rax, %rcx	# tmp147,
	movl	$76, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp148
	movq	%rax, %rsi	# tmp148,
	leaq	.LC15(%rip), %rax	#, tmp149
	movq	%rax, %rdi	# tmp149,
	call	__assert_fail@PLT	#
.L24:
# problem150.c:77:     free(result);
	movq	-384(%rbp), %rax	# result, tmp150
	movq	%rax, %rdi	# tmp150,
	call	free@PLT	#
# problem150.c:79:     char *test5[] = {"AI", "ai", "au"};
	leaq	.LC6(%rip), %rax	#, tmp151
	movq	%rax, -288(%rbp)	# tmp151, test5[0]
	leaq	.LC16(%rip), %rax	#, tmp152
	movq	%rax, -280(%rbp)	# tmp152, test5[1]
	leaq	.LC17(%rip), %rax	#, tmp153
	movq	%rax, -272(%rbp)	# tmp153, test5[2]
# problem150.c:80:     char *expected5[] = {"AI", "ai", "au"};
	leaq	.LC6(%rip), %rax	#, tmp154
	movq	%rax, -256(%rbp)	# tmp154, expected5[0]
	leaq	.LC16(%rip), %rax	#, tmp155
	movq	%rax, -248(%rbp)	# tmp155, expected5[1]
	leaq	.LC17(%rip), %rax	#, tmp156
	movq	%rax, -240(%rbp)	# tmp156, expected5[2]
# problem150.c:81:     result = func0(test5, 3, &size);
	leaq	-388(%rbp), %rdx	#, tmp157
	leaq	-288(%rbp), %rax	#, tmp158
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp158,
	call	func0	#
	movq	%rax, -384(%rbp)	# tmp159, result
# problem150.c:82:     assert(issame(result, expected5, size, 3));
	movl	-388(%rbp), %edx	# size, size.4_8
	leaq	-256(%rbp), %rsi	#, tmp160
	movq	-384(%rbp), %rax	# result, tmp161
	movl	$3, %ecx	#,
	movq	%rax, %rdi	# tmp161,
	call	issame	#
	testl	%eax, %eax	# _9
	jne	.L25	#,
# problem150.c:82:     assert(issame(result, expected5, size, 3));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp162
	movq	%rax, %rcx	# tmp162,
	movl	$82, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp163
	movq	%rax, %rsi	# tmp163,
	leaq	.LC18(%rip), %rax	#, tmp164
	movq	%rax, %rdi	# tmp164,
	call	__assert_fail@PLT	#
.L25:
# problem150.c:83:     free(result);
	movq	-384(%rbp), %rax	# result, tmp165
	movq	%rax, %rdi	# tmp165,
	call	free@PLT	#
# problem150.c:85:     char *test6[] = {"a", "b", "b", "c", "c", "a"};
	leaq	.LC1(%rip), %rax	#, tmp166
	movq	%rax, -64(%rbp)	# tmp166, test6[0]
	leaq	.LC8(%rip), %rax	#, tmp167
	movq	%rax, -56(%rbp)	# tmp167, test6[1]
	leaq	.LC8(%rip), %rax	#, tmp168
	movq	%rax, -48(%rbp)	# tmp168, test6[2]
	leaq	.LC11(%rip), %rax	#, tmp169
	movq	%rax, -40(%rbp)	# tmp169, test6[3]
	leaq	.LC11(%rip), %rax	#, tmp170
	movq	%rax, -32(%rbp)	# tmp170, test6[4]
	leaq	.LC1(%rip), %rax	#, tmp171
	movq	%rax, -24(%rbp)	# tmp171, test6[5]
# problem150.c:86:     result = func0(test6, 6, &size);
	leaq	-388(%rbp), %rdx	#, tmp172
	leaq	-64(%rbp), %rax	#, tmp173
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp173,
	call	func0	#
	movq	%rax, -384(%rbp)	# tmp174, result
# problem150.c:87:     assert(size == 0);
	movl	-388(%rbp), %eax	# size, size.5_10
	testl	%eax, %eax	# size.5_10
	je	.L26	#,
# problem150.c:87:     assert(size == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp175
	movq	%rax, %rcx	# tmp175,
	movl	$87, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp176
	movq	%rax, %rsi	# tmp176,
	leaq	.LC12(%rip), %rax	#, tmp177
	movq	%rax, %rdi	# tmp177,
	call	__assert_fail@PLT	#
.L26:
# problem150.c:88:     free(result);
	movq	-384(%rbp), %rax	# result, tmp178
	movq	%rax, %rdi	# tmp178,
	call	free@PLT	#
# problem150.c:90:     char *test7[] = {"aaaa", "bbbb", "dd", "cc"};
	leaq	.LC19(%rip), %rax	#, tmp179
	movq	%rax, -128(%rbp)	# tmp179, test7[0]
	leaq	.LC20(%rip), %rax	#, tmp180
	movq	%rax, -120(%rbp)	# tmp180, test7[1]
	leaq	.LC21(%rip), %rax	#, tmp181
	movq	%rax, -112(%rbp)	# tmp181, test7[2]
	leaq	.LC22(%rip), %rax	#, tmp182
	movq	%rax, -104(%rbp)	# tmp182, test7[3]
# problem150.c:91:     char *expected7[] = {"cc", "dd", "aaaa", "bbbb"};
	leaq	.LC22(%rip), %rax	#, tmp183
	movq	%rax, -96(%rbp)	# tmp183, expected7[0]
	leaq	.LC21(%rip), %rax	#, tmp184
	movq	%rax, -88(%rbp)	# tmp184, expected7[1]
	leaq	.LC19(%rip), %rax	#, tmp185
	movq	%rax, -80(%rbp)	# tmp185, expected7[2]
	leaq	.LC20(%rip), %rax	#, tmp186
	movq	%rax, -72(%rbp)	# tmp186, expected7[3]
# problem150.c:92:     result = func0(test7, 4, &size);
	leaq	-388(%rbp), %rdx	#, tmp187
	leaq	-128(%rbp), %rax	#, tmp188
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp188,
	call	func0	#
	movq	%rax, -384(%rbp)	# tmp189, result
# problem150.c:93:     assert(issame(result, expected7, size, 4));
	movl	-388(%rbp), %edx	# size, size.6_11
	leaq	-96(%rbp), %rsi	#, tmp190
	movq	-384(%rbp), %rax	# result, tmp191
	movl	$4, %ecx	#,
	movq	%rax, %rdi	# tmp191,
	call	issame	#
	testl	%eax, %eax	# _12
	jne	.L27	#,
# problem150.c:93:     assert(issame(result, expected7, size, 4));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp192
	movq	%rax, %rcx	# tmp192,
	movl	$93, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp193
	movq	%rax, %rsi	# tmp193,
	leaq	.LC23(%rip), %rax	#, tmp194
	movq	%rax, %rdi	# tmp194,
	call	__assert_fail@PLT	#
.L27:
# problem150.c:94:     free(result);
	movq	-384(%rbp), %rax	# result, tmp195
	movq	%rax, %rdi	# tmp195,
	call	free@PLT	#
# problem150.c:96:     printf("All tests passed!\n");
	leaq	.LC24(%rip), %rax	#, tmp196
	movq	%rax, %rdi	# tmp196,
	call	puts@PLT	#
# problem150.c:98:     return 0;
	movl	$0, %eax	#, _89
# problem150.c:99: }
	movq	-8(%rbp), %rdx	# D.3165, tmp199
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp199
	je	.L29	#,
	call	__stack_chk_fail@PLT	#
.L29:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
