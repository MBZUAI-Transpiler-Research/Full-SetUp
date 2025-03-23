	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

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
# eval/problem150//code.c:9:     *return_size = 0;
	movq	-72(%rbp), %rax	# return_size, tmp150
	movl	$0, (%rax)	#, *return_size_78(D)
# eval/problem150//code.c:10:     for (i = 0; i < lst_size; ++i) {
	movl	$0, -40(%rbp)	#, i
# eval/problem150//code.c:10:     for (i = 0; i < lst_size; ++i) {
	jmp	.L2	#
.L4:
# eval/problem150//code.c:11:         if (strlen(lst[i]) % 2 == 0) {
	movl	-40(%rbp), %eax	# i, tmp151
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-56(%rbp), %rax	# lst, tmp152
	addq	%rdx, %rax	# _2, _3
# eval/problem150//code.c:11:         if (strlen(lst[i]) % 2 == 0) {
	movq	(%rax), %rax	# *_3, _4
	movq	%rax, %rdi	# _4,
	call	strlen@PLT	#
# eval/problem150//code.c:11:         if (strlen(lst[i]) % 2 == 0) {
	andl	$1, %eax	#, _6
# eval/problem150//code.c:11:         if (strlen(lst[i]) % 2 == 0) {
	testq	%rax, %rax	# _6
	jne	.L3	#,
# eval/problem150//code.c:12:             lst[*return_size] = lst[i];
	movl	-40(%rbp), %eax	# i, tmp153
	cltq
	leaq	0(,%rax,8), %rdx	#, _8
	movq	-56(%rbp), %rax	# lst, tmp154
	leaq	(%rdx,%rax), %rcx	#, _9
# eval/problem150//code.c:12:             lst[*return_size] = lst[i];
	movq	-72(%rbp), %rax	# return_size, tmp155
	movl	(%rax), %eax	# *return_size_78(D), _10
	cltq
# eval/problem150//code.c:12:             lst[*return_size] = lst[i];
	leaq	0(,%rax,8), %rdx	#, _12
	movq	-56(%rbp), %rax	# lst, tmp156
	addq	%rax, %rdx	# tmp156, _13
# eval/problem150//code.c:12:             lst[*return_size] = lst[i];
	movq	(%rcx), %rax	# *_9, _14
# eval/problem150//code.c:12:             lst[*return_size] = lst[i];
	movq	%rax, (%rdx)	# _14, *_13
# eval/problem150//code.c:13:             (*return_size)++;
	movq	-72(%rbp), %rax	# return_size, tmp157
	movl	(%rax), %eax	# *return_size_78(D), _15
# eval/problem150//code.c:13:             (*return_size)++;
	leal	1(%rax), %edx	#, _16
	movq	-72(%rbp), %rax	# return_size, tmp158
	movl	%edx, (%rax)	# _16, *return_size_78(D)
.L3:
# eval/problem150//code.c:10:     for (i = 0; i < lst_size; ++i) {
	addl	$1, -40(%rbp)	#, i
.L2:
# eval/problem150//code.c:10:     for (i = 0; i < lst_size; ++i) {
	movl	-40(%rbp), %eax	# i, tmp159
	cmpl	-60(%rbp), %eax	# lst_size, tmp159
	jl	.L4	#,
# eval/problem150//code.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	movl	$0, -40(%rbp)	#, i
# eval/problem150//code.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	jmp	.L5	#
.L10:
# eval/problem150//code.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	movl	$0, -36(%rbp)	#, j
# eval/problem150//code.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	jmp	.L6	#
.L9:
# eval/problem150//code.c:19:             size_t len_j = strlen(lst[j]);
	movl	-36(%rbp), %eax	# j, tmp160
	cltq
	leaq	0(,%rax,8), %rdx	#, _18
	movq	-56(%rbp), %rax	# lst, tmp161
	addq	%rdx, %rax	# _18, _19
# eval/problem150//code.c:19:             size_t len_j = strlen(lst[j]);
	movq	(%rax), %rax	# *_19, _20
	movq	%rax, %rdi	# _20,
	call	strlen@PLT	#
	movq	%rax, -24(%rbp)	# tmp162, len_j
# eval/problem150//code.c:20:             size_t len_j1 = strlen(lst[j + 1]);
	movl	-36(%rbp), %eax	# j, tmp163
	cltq
	addq	$1, %rax	#, _22
	leaq	0(,%rax,8), %rdx	#, _23
	movq	-56(%rbp), %rax	# lst, tmp164
	addq	%rdx, %rax	# _23, _24
# eval/problem150//code.c:20:             size_t len_j1 = strlen(lst[j + 1]);
	movq	(%rax), %rax	# *_24, _25
	movq	%rax, %rdi	# _25,
	call	strlen@PLT	#
	movq	%rax, -16(%rbp)	# tmp165, len_j1
# eval/problem150//code.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	movq	-24(%rbp), %rax	# len_j, tmp166
	cmpq	%rax, -16(%rbp)	# tmp166, len_j1
	jb	.L7	#,
# eval/problem150//code.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	movq	-24(%rbp), %rax	# len_j, tmp167
	cmpq	-16(%rbp), %rax	# len_j1, tmp167
	jne	.L8	#,
# eval/problem150//code.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	movl	-36(%rbp), %eax	# j, tmp168
	cltq
	addq	$1, %rax	#, _27
	leaq	0(,%rax,8), %rdx	#, _28
	movq	-56(%rbp), %rax	# lst, tmp169
	addq	%rdx, %rax	# _28, _29
# eval/problem150//code.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	movq	(%rax), %rdx	# *_29, _30
# eval/problem150//code.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	movl	-36(%rbp), %eax	# j, tmp170
	cltq
	leaq	0(,%rax,8), %rcx	#, _32
	movq	-56(%rbp), %rax	# lst, tmp171
	addq	%rcx, %rax	# _32, _33
# eval/problem150//code.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	movq	(%rax), %rax	# *_33, _34
	movq	%rdx, %rsi	# _30,
	movq	%rax, %rdi	# _34,
	call	strcmp@PLT	#
# eval/problem150//code.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	testl	%eax, %eax	# _35
	jle	.L8	#,
.L7:
# eval/problem150//code.c:22:                 temp = lst[j];
	movl	-36(%rbp), %eax	# j, tmp172
	cltq
	leaq	0(,%rax,8), %rdx	#, _37
	movq	-56(%rbp), %rax	# lst, tmp173
	addq	%rdx, %rax	# _37, _38
# eval/problem150//code.c:22:                 temp = lst[j];
	movq	(%rax), %rax	# *_38, tmp174
	movq	%rax, -8(%rbp)	# tmp174, temp
# eval/problem150//code.c:23:                 lst[j] = lst[j + 1];
	movl	-36(%rbp), %eax	# j, tmp175
	cltq
	addq	$1, %rax	#, _40
	leaq	0(,%rax,8), %rdx	#, _41
	movq	-56(%rbp), %rax	# lst, tmp176
	addq	%rdx, %rax	# _41, _42
# eval/problem150//code.c:23:                 lst[j] = lst[j + 1];
	movl	-36(%rbp), %edx	# j, tmp177
	movslq	%edx, %rdx	# tmp177, _43
	leaq	0(,%rdx,8), %rcx	#, _44
	movq	-56(%rbp), %rdx	# lst, tmp178
	addq	%rcx, %rdx	# _44, _45
# eval/problem150//code.c:23:                 lst[j] = lst[j + 1];
	movq	(%rax), %rax	# *_42, _46
# eval/problem150//code.c:23:                 lst[j] = lst[j + 1];
	movq	%rax, (%rdx)	# _46, *_45
# eval/problem150//code.c:24:                 lst[j + 1] = temp;
	movl	-36(%rbp), %eax	# j, tmp179
	cltq
	addq	$1, %rax	#, _48
	leaq	0(,%rax,8), %rdx	#, _49
	movq	-56(%rbp), %rax	# lst, tmp180
	addq	%rax, %rdx	# tmp180, _50
# eval/problem150//code.c:24:                 lst[j + 1] = temp;
	movq	-8(%rbp), %rax	# temp, tmp181
	movq	%rax, (%rdx)	# tmp181, *_50
.L8:
# eval/problem150//code.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	addl	$1, -36(%rbp)	#, j
.L6:
# eval/problem150//code.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	movq	-72(%rbp), %rax	# return_size, tmp182
	movl	(%rax), %eax	# *return_size_78(D), _51
# eval/problem150//code.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	subl	-40(%rbp), %eax	# i, _52
# eval/problem150//code.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	subl	$1, %eax	#, _53
# eval/problem150//code.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	cmpl	%eax, -36(%rbp)	# _53, j
	jl	.L9	#,
# eval/problem150//code.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	addl	$1, -40(%rbp)	#, i
.L5:
# eval/problem150//code.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	movq	-72(%rbp), %rax	# return_size, tmp183
	movl	(%rax), %eax	# *return_size_78(D), _54
# eval/problem150//code.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	subl	$1, %eax	#, _55
# eval/problem150//code.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	cmpl	%eax, -40(%rbp)	# _55, i
	jl	.L10	#,
# eval/problem150//code.c:29:     char **out = malloc(*return_size * sizeof(char *));
	movq	-72(%rbp), %rax	# return_size, tmp184
	movl	(%rax), %eax	# *return_size_78(D), _56
	cltq
# eval/problem150//code.c:29:     char **out = malloc(*return_size * sizeof(char *));
	salq	$3, %rax	#, _58
	movq	%rax, %rdi	# _58,
	call	malloc@PLT	#
	movq	%rax, -32(%rbp)	# tmp185, out
# eval/problem150//code.c:30:     for (i = 0; i < *return_size; ++i) {
	movl	$0, -40(%rbp)	#, i
# eval/problem150//code.c:30:     for (i = 0; i < *return_size; ++i) {
	jmp	.L11	#
.L12:
# eval/problem150//code.c:31:         out[i] = lst[i];
	movl	-40(%rbp), %eax	# i, tmp186
	cltq
	leaq	0(,%rax,8), %rdx	#, _60
	movq	-56(%rbp), %rax	# lst, tmp187
	addq	%rdx, %rax	# _60, _61
# eval/problem150//code.c:31:         out[i] = lst[i];
	movl	-40(%rbp), %edx	# i, tmp188
	movslq	%edx, %rdx	# tmp188, _62
	leaq	0(,%rdx,8), %rcx	#, _63
	movq	-32(%rbp), %rdx	# out, tmp189
	addq	%rcx, %rdx	# _63, _64
# eval/problem150//code.c:31:         out[i] = lst[i];
	movq	(%rax), %rax	# *_61, _65
# eval/problem150//code.c:31:         out[i] = lst[i];
	movq	%rax, (%rdx)	# _65, *_64
# eval/problem150//code.c:30:     for (i = 0; i < *return_size; ++i) {
	addl	$1, -40(%rbp)	#, i
.L11:
# eval/problem150//code.c:30:     for (i = 0; i < *return_size; ++i) {
	movq	-72(%rbp), %rax	# return_size, tmp190
	movl	(%rax), %eax	# *return_size_78(D), _66
# eval/problem150//code.c:30:     for (i = 0; i < *return_size; ++i) {
	cmpl	%eax, -40(%rbp)	# _66, i
	jl	.L12	#,
# eval/problem150//code.c:34:     return out;
	movq	-32(%rbp), %rax	# out, _86
# eval/problem150//code.c:35: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
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
