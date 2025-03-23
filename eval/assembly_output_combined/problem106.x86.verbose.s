	.file	"problem106.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	""
.LC1:
	.string	"One"
.LC2:
	.string	"Two"
.LC3:
	.string	"Three"
.LC4:
	.string	"Four"
.LC5:
	.string	"Five"
.LC6:
	.string	"Six"
.LC7:
	.string	"Seven"
.LC8:
	.string	"Eight"
.LC9:
	.string	"Nine"
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
	subq	$144, %rsp	#,
	movq	%rdi, -120(%rbp)	# arr, arr
	movl	%esi, -124(%rbp)	# size, size
	movq	%rdx, -136(%rbp)	# out, out
	movq	%rcx, -144(%rbp)	# out_size, out_size
# problem106.c:5: void func0(int *arr, int size, char ***out, int *out_size) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp196
	movq	%rax, -8(%rbp)	# tmp196, D.3160
	xorl	%eax, %eax	# tmp196
# problem106.c:6:     char *names[] = {"", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"};
	leaq	.LC0(%rip), %rax	#, tmp142
	movq	%rax, -96(%rbp)	# tmp142, names[0]
	leaq	.LC1(%rip), %rax	#, tmp143
	movq	%rax, -88(%rbp)	# tmp143, names[1]
	leaq	.LC2(%rip), %rax	#, tmp144
	movq	%rax, -80(%rbp)	# tmp144, names[2]
	leaq	.LC3(%rip), %rax	#, tmp145
	movq	%rax, -72(%rbp)	# tmp145, names[3]
	leaq	.LC4(%rip), %rax	#, tmp146
	movq	%rax, -64(%rbp)	# tmp146, names[4]
	leaq	.LC5(%rip), %rax	#, tmp147
	movq	%rax, -56(%rbp)	# tmp147, names[5]
	leaq	.LC6(%rip), %rax	#, tmp148
	movq	%rax, -48(%rbp)	# tmp148, names[6]
	leaq	.LC7(%rip), %rax	#, tmp149
	movq	%rax, -40(%rbp)	# tmp149, names[7]
	leaq	.LC8(%rip), %rax	#, tmp150
	movq	%rax, -32(%rbp)	# tmp150, names[8]
	leaq	.LC9(%rip), %rax	#, tmp151
	movq	%rax, -24(%rbp)	# tmp151, names[9]
# problem106.c:9:     for (i = 0; i < size - 1; i++) {
	movl	$0, -108(%rbp)	#, i
# problem106.c:9:     for (i = 0; i < size - 1; i++) {
	jmp	.L2	#
.L6:
# problem106.c:10:         for (j = 0; j < size - i - 1; j++) {
	movl	$0, -104(%rbp)	#, j
# problem106.c:10:         for (j = 0; j < size - i - 1; j++) {
	jmp	.L3	#
.L5:
# problem106.c:11:             if (arr[j] > arr[j + 1]) {
	movl	-104(%rbp), %eax	# j, tmp152
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-120(%rbp), %rax	# arr, tmp153
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# problem106.c:11:             if (arr[j] > arr[j + 1]) {
	movl	-104(%rbp), %eax	# j, tmp154
	cltq
	addq	$1, %rax	#, _6
	leaq	0(,%rax,4), %rcx	#, _7
	movq	-120(%rbp), %rax	# arr, tmp155
	addq	%rcx, %rax	# _7, _8
	movl	(%rax), %eax	# *_8, _9
# problem106.c:11:             if (arr[j] > arr[j + 1]) {
	cmpl	%eax, %edx	# _9, _4
	jle	.L4	#,
# problem106.c:12:                 int temp = arr[j];
	movl	-104(%rbp), %eax	# j, tmp156
	cltq
	leaq	0(,%rax,4), %rdx	#, _11
	movq	-120(%rbp), %rax	# arr, tmp157
	addq	%rdx, %rax	# _11, _12
# problem106.c:12:                 int temp = arr[j];
	movl	(%rax), %eax	# *_12, tmp158
	movl	%eax, -100(%rbp)	# tmp158, temp
# problem106.c:13:                 arr[j] = arr[j + 1];
	movl	-104(%rbp), %eax	# j, tmp159
	cltq
	addq	$1, %rax	#, _14
	leaq	0(,%rax,4), %rdx	#, _15
	movq	-120(%rbp), %rax	# arr, tmp160
	addq	%rdx, %rax	# _15, _16
# problem106.c:13:                 arr[j] = arr[j + 1];
	movl	-104(%rbp), %edx	# j, tmp161
	movslq	%edx, %rdx	# tmp161, _17
	leaq	0(,%rdx,4), %rcx	#, _18
	movq	-120(%rbp), %rdx	# arr, tmp162
	addq	%rcx, %rdx	# _18, _19
# problem106.c:13:                 arr[j] = arr[j + 1];
	movl	(%rax), %eax	# *_16, _20
# problem106.c:13:                 arr[j] = arr[j + 1];
	movl	%eax, (%rdx)	# _20, *_19
# problem106.c:14:                 arr[j + 1] = temp;
	movl	-104(%rbp), %eax	# j, tmp163
	cltq
	addq	$1, %rax	#, _22
	leaq	0(,%rax,4), %rdx	#, _23
	movq	-120(%rbp), %rax	# arr, tmp164
	addq	%rax, %rdx	# tmp164, _24
# problem106.c:14:                 arr[j + 1] = temp;
	movl	-100(%rbp), %eax	# temp, tmp165
	movl	%eax, (%rdx)	# tmp165, *_24
.L4:
# problem106.c:10:         for (j = 0; j < size - i - 1; j++) {
	addl	$1, -104(%rbp)	#, j
.L3:
# problem106.c:10:         for (j = 0; j < size - i - 1; j++) {
	movl	-124(%rbp), %eax	# size, tmp166
	subl	-108(%rbp), %eax	# i, _25
# problem106.c:10:         for (j = 0; j < size - i - 1; j++) {
	subl	$1, %eax	#, _26
# problem106.c:10:         for (j = 0; j < size - i - 1; j++) {
	cmpl	%eax, -104(%rbp)	# _26, j
	jl	.L5	#,
# problem106.c:9:     for (i = 0; i < size - 1; i++) {
	addl	$1, -108(%rbp)	#, i
.L2:
# problem106.c:9:     for (i = 0; i < size - 1; i++) {
	movl	-124(%rbp), %eax	# size, tmp167
	subl	$1, %eax	#, _27
# problem106.c:9:     for (i = 0; i < size - 1; i++) {
	cmpl	%eax, -108(%rbp)	# _27, i
	jl	.L6	#,
# problem106.c:19:     *out_size = 0;
	movq	-144(%rbp), %rax	# out_size, tmp168
	movl	$0, (%rax)	#, *out_size_87(D)
# problem106.c:20:     for (i = size - 1; i >= 0; i--) {
	movl	-124(%rbp), %eax	# size, tmp172
	subl	$1, %eax	#, tmp171
	movl	%eax, -108(%rbp)	# tmp171, i
# problem106.c:20:     for (i = size - 1; i >= 0; i--) {
	jmp	.L7	#
.L9:
# problem106.c:21:         if (arr[i] >= 1 && arr[i] <= 9) {
	movl	-108(%rbp), %eax	# i, tmp173
	cltq
	leaq	0(,%rax,4), %rdx	#, _29
	movq	-120(%rbp), %rax	# arr, tmp174
	addq	%rdx, %rax	# _29, _30
	movl	(%rax), %eax	# *_30, _31
# problem106.c:21:         if (arr[i] >= 1 && arr[i] <= 9) {
	testl	%eax, %eax	# _31
	jle	.L8	#,
# problem106.c:21:         if (arr[i] >= 1 && arr[i] <= 9) {
	movl	-108(%rbp), %eax	# i, tmp175
	cltq
	leaq	0(,%rax,4), %rdx	#, _33
	movq	-120(%rbp), %rax	# arr, tmp176
	addq	%rdx, %rax	# _33, _34
	movl	(%rax), %eax	# *_34, _35
# problem106.c:21:         if (arr[i] >= 1 && arr[i] <= 9) {
	cmpl	$9, %eax	#, _35
	jg	.L8	#,
# problem106.c:22:             (*out_size)++;
	movq	-144(%rbp), %rax	# out_size, tmp177
	movl	(%rax), %eax	# *out_size_87(D), _36
# problem106.c:22:             (*out_size)++;
	leal	1(%rax), %edx	#, _37
	movq	-144(%rbp), %rax	# out_size, tmp178
	movl	%edx, (%rax)	# _37, *out_size_87(D)
.L8:
# problem106.c:20:     for (i = size - 1; i >= 0; i--) {
	subl	$1, -108(%rbp)	#, i
.L7:
# problem106.c:20:     for (i = size - 1; i >= 0; i--) {
	cmpl	$0, -108(%rbp)	#, i
	jns	.L9	#,
# problem106.c:26:     *out = malloc(*out_size * sizeof(char *));
	movq	-144(%rbp), %rax	# out_size, tmp179
	movl	(%rax), %eax	# *out_size_87(D), _38
	cltq
# problem106.c:26:     *out = malloc(*out_size * sizeof(char *));
	salq	$3, %rax	#, _40
	movq	%rax, %rdi	# _40,
	call	malloc@PLT	#
	movq	%rax, %rdx	# tmp180, _41
# problem106.c:26:     *out = malloc(*out_size * sizeof(char *));
	movq	-136(%rbp), %rax	# out, tmp181
	movq	%rdx, (%rax)	# _41, *out_91(D)
# problem106.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	movl	-124(%rbp), %eax	# size, tmp185
	subl	$1, %eax	#, tmp184
	movl	%eax, -108(%rbp)	# tmp184, i
# problem106.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	movl	$0, -104(%rbp)	#, j
# problem106.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	jmp	.L10	#
.L13:
# problem106.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	movl	-108(%rbp), %eax	# i, tmp186
	cltq
	leaq	0(,%rax,4), %rdx	#, _43
	movq	-120(%rbp), %rax	# arr, tmp187
	addq	%rdx, %rax	# _43, _44
	movl	(%rax), %eax	# *_44, _45
# problem106.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	testl	%eax, %eax	# _45
	jle	.L11	#,
# problem106.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	movl	-108(%rbp), %eax	# i, tmp188
	cltq
	leaq	0(,%rax,4), %rdx	#, _47
	movq	-120(%rbp), %rax	# arr, tmp189
	addq	%rdx, %rax	# _47, _48
	movl	(%rax), %eax	# *_48, _49
# problem106.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	cmpl	$9, %eax	#, _49
	jg	.L11	#,
# problem106.c:30:             (*out)[j++] = names[arr[i]];
	movl	-108(%rbp), %eax	# i, tmp190
	cltq
	leaq	0(,%rax,4), %rdx	#, _51
	movq	-120(%rbp), %rax	# arr, tmp191
	addq	%rdx, %rax	# _51, _52
	movl	(%rax), %ecx	# *_52, _53
# problem106.c:30:             (*out)[j++] = names[arr[i]];
	movq	-136(%rbp), %rax	# out, tmp192
	movq	(%rax), %rsi	# *out_91(D), _54
# problem106.c:30:             (*out)[j++] = names[arr[i]];
	movl	-104(%rbp), %eax	# j, j.0_55
	leal	1(%rax), %edx	#, tmp193
	movl	%edx, -104(%rbp)	# tmp193, j
	cltq
# problem106.c:30:             (*out)[j++] = names[arr[i]];
	salq	$3, %rax	#, _57
	leaq	(%rsi,%rax), %rdx	#, _58
# problem106.c:30:             (*out)[j++] = names[arr[i]];
	movslq	%ecx, %rax	# _53, tmp194
	movq	-96(%rbp,%rax,8), %rax	# names[_53], _59
# problem106.c:30:             (*out)[j++] = names[arr[i]];
	movq	%rax, (%rdx)	# _59, *_58
.L11:
# problem106.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	subl	$1, -108(%rbp)	#, i
.L10:
# problem106.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	cmpl	$0, -108(%rbp)	#, i
	js	.L15	#,
# problem106.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	movq	-144(%rbp), %rax	# out_size, tmp195
	movl	(%rax), %eax	# *out_size_87(D), _60
# problem106.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	cmpl	%eax, -104(%rbp)	# _60, j
	jl	.L13	#,
.L15:
# problem106.c:33: }
	nop	
	movq	-8(%rbp), %rax	# D.3160, tmp197
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp197
	je	.L14	#,
	call	__stack_chk_fail@PLT	#
.L14:
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
	movl	%esi, -28(%rbp)	# a_size, a_size
	movq	%rdx, -40(%rbp)	# b, b
	movl	%ecx, -32(%rbp)	# b_size, b_size
# problem106.c:43:     if (a_size != b_size) return 0;
	movl	-28(%rbp), %eax	# a_size, tmp93
	cmpl	-32(%rbp), %eax	# b_size, tmp93
	je	.L17	#,
# problem106.c:43:     if (a_size != b_size) return 0;
	movl	$0, %eax	#, _11
	jmp	.L18	#
.L17:
# problem106.c:44:     for (int i = 0; i < a_size; i++) {
	movl	$0, -4(%rbp)	#, i
# problem106.c:44:     for (int i = 0; i < a_size; i++) {
	jmp	.L19	#
.L21:
# problem106.c:45:         if (strcmp(a[i], b[i]) != 0) return 0;
	movl	-4(%rbp), %eax	# i, tmp94
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-40(%rbp), %rax	# b, tmp95
	addq	%rdx, %rax	# _2, _3
# problem106.c:45:         if (strcmp(a[i], b[i]) != 0) return 0;
	movq	(%rax), %rdx	# *_3, _4
# problem106.c:45:         if (strcmp(a[i], b[i]) != 0) return 0;
	movl	-4(%rbp), %eax	# i, tmp96
	cltq
	leaq	0(,%rax,8), %rcx	#, _6
	movq	-24(%rbp), %rax	# a, tmp97
	addq	%rcx, %rax	# _6, _7
# problem106.c:45:         if (strcmp(a[i], b[i]) != 0) return 0;
	movq	(%rax), %rax	# *_7, _8
	movq	%rdx, %rsi	# _4,
	movq	%rax, %rdi	# _8,
	call	strcmp@PLT	#
# problem106.c:45:         if (strcmp(a[i], b[i]) != 0) return 0;
	testl	%eax, %eax	# _9
	je	.L20	#,
# problem106.c:45:         if (strcmp(a[i], b[i]) != 0) return 0;
	movl	$0, %eax	#, _11
	jmp	.L18	#
.L20:
# problem106.c:44:     for (int i = 0; i < a_size; i++) {
	addl	$1, -4(%rbp)	#, i
.L19:
# problem106.c:44:     for (int i = 0; i < a_size; i++) {
	movl	-4(%rbp), %eax	# i, tmp98
	cmpl	-28(%rbp), %eax	# a_size, tmp98
	jl	.L21	#,
# problem106.c:47:     return 1;
	movl	$1, %eax	#, _11
.L18:
# problem106.c:48: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC10:
	.string	"problem106.c"
	.align 8
.LC11:
	.string	"issame(out, out_size, expected1, 8)"
	.align 8
.LC12:
	.string	"issame(out, out_size, NULL, 0)"
	.align 8
.LC13:
	.string	"issame(out, out_size, expected3, 1)"
	.align 8
.LC14:
	.string	"issame(out, out_size, expected4, 3)"
	.align 8
.LC15:
	.string	"issame(out, out_size, expected5, 3)"
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
	subq	$256, %rsp	#,
# problem106.c:50: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp154
	movq	%rax, -8(%rbp)	# tmp154, D.3172
	xorl	%eax, %eax	# tmp154
# problem106.c:54:     int test1[] = {2, 1, 1, 4, 5, 8, 2, 3};
	movl	$2, -112(%rbp)	#, test1[0]
	movl	$1, -108(%rbp)	#, test1[1]
	movl	$1, -104(%rbp)	#, test1[2]
	movl	$4, -100(%rbp)	#, test1[3]
	movl	$5, -96(%rbp)	#, test1[4]
	movl	$8, -92(%rbp)	#, test1[5]
	movl	$2, -88(%rbp)	#, test1[6]
	movl	$3, -84(%rbp)	#, test1[7]
# problem106.c:55:     char *expected1[] = {"Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"};
	leaq	.LC8(%rip), %rax	#, tmp104
	movq	%rax, -80(%rbp)	# tmp104, expected1[0]
	leaq	.LC5(%rip), %rax	#, tmp105
	movq	%rax, -72(%rbp)	# tmp105, expected1[1]
	leaq	.LC4(%rip), %rax	#, tmp106
	movq	%rax, -64(%rbp)	# tmp106, expected1[2]
	leaq	.LC3(%rip), %rax	#, tmp107
	movq	%rax, -56(%rbp)	# tmp107, expected1[3]
	leaq	.LC2(%rip), %rax	#, tmp108
	movq	%rax, -48(%rbp)	# tmp108, expected1[4]
	leaq	.LC2(%rip), %rax	#, tmp109
	movq	%rax, -40(%rbp)	# tmp109, expected1[5]
	leaq	.LC1(%rip), %rax	#, tmp110
	movq	%rax, -32(%rbp)	# tmp110, expected1[6]
	leaq	.LC1(%rip), %rax	#, tmp111
	movq	%rax, -24(%rbp)	# tmp111, expected1[7]
# problem106.c:56:     func0(test1, 8, &out, &out_size);
	leaq	-244(%rbp), %rcx	#, tmp112
	leaq	-240(%rbp), %rdx	#, tmp113
	leaq	-112(%rbp), %rax	#, tmp114
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp114,
	call	func0	#
# problem106.c:57:     assert(issame(out, out_size, expected1, 8));
	movl	-244(%rbp), %esi	# out_size, out_size.1_1
	movq	-240(%rbp), %rax	# out, out.2_2
	leaq	-80(%rbp), %rdx	#, tmp115
	movl	$8, %ecx	#,
	movq	%rax, %rdi	# out.2_2,
	call	issame	#
	testl	%eax, %eax	# _3
	jne	.L23	#,
# problem106.c:57:     assert(issame(out, out_size, expected1, 8));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp116
	movq	%rax, %rcx	# tmp116,
	movl	$57, %edx	#,
	leaq	.LC10(%rip), %rax	#, tmp117
	movq	%rax, %rsi	# tmp117,
	leaq	.LC11(%rip), %rax	#, tmp118
	movq	%rax, %rdi	# tmp118,
	call	__assert_fail@PLT	#
.L23:
# problem106.c:58:     free(out);
	movq	-240(%rbp), %rax	# out, out.3_4
	movq	%rax, %rdi	# out.3_4,
	call	free@PLT	#
# problem106.c:61:     func0(test2, 0, &out, &out_size);
	leaq	-244(%rbp), %rcx	#, tmp119
	leaq	-240(%rbp), %rdx	#, tmp120
	leaq	-228(%rbp), %rax	#, tmp121
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp121,
	call	func0	#
# problem106.c:62:     assert(issame(out, out_size, NULL, 0));
	movl	-244(%rbp), %esi	# out_size, out_size.4_5
	movq	-240(%rbp), %rax	# out, out.5_6
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# out.5_6,
	call	issame	#
	testl	%eax, %eax	# _7
	jne	.L24	#,
# problem106.c:62:     assert(issame(out, out_size, NULL, 0));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp122
	movq	%rax, %rcx	# tmp122,
	movl	$62, %edx	#,
	leaq	.LC10(%rip), %rax	#, tmp123
	movq	%rax, %rsi	# tmp123,
	leaq	.LC12(%rip), %rax	#, tmp124
	movq	%rax, %rdi	# tmp124,
	call	__assert_fail@PLT	#
.L24:
# problem106.c:63:     free(out);
	movq	-240(%rbp), %rax	# out, out.6_8
	movq	%rax, %rdi	# out.6_8,
	call	free@PLT	#
# problem106.c:65:     int test3[] = {1, -1, 55};
	movl	$1, -216(%rbp)	#, test3[0]
	movl	$-1, -212(%rbp)	#, test3[1]
	movl	$55, -208(%rbp)	#, test3[2]
# problem106.c:66:     char *expected3[] = {"One"};
	leaq	.LC1(%rip), %rax	#, tmp125
	movq	%rax, -224(%rbp)	# tmp125, expected3[0]
# problem106.c:67:     func0(test3, 3, &out, &out_size);
	leaq	-244(%rbp), %rcx	#, tmp126
	leaq	-240(%rbp), %rdx	#, tmp127
	leaq	-216(%rbp), %rax	#, tmp128
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp128,
	call	func0	#
# problem106.c:68:     assert(issame(out, out_size, expected3, 1));
	movl	-244(%rbp), %esi	# out_size, out_size.7_9
	movq	-240(%rbp), %rax	# out, out.8_10
	leaq	-224(%rbp), %rdx	#, tmp129
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# out.8_10,
	call	issame	#
	testl	%eax, %eax	# _11
	jne	.L25	#,
# problem106.c:68:     assert(issame(out, out_size, expected3, 1));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp130
	movq	%rax, %rcx	# tmp130,
	movl	$68, %edx	#,
	leaq	.LC10(%rip), %rax	#, tmp131
	movq	%rax, %rsi	# tmp131,
	leaq	.LC13(%rip), %rax	#, tmp132
	movq	%rax, %rdi	# tmp132,
	call	__assert_fail@PLT	#
.L25:
# problem106.c:69:     free(out);
	movq	-240(%rbp), %rax	# out, out.9_12
	movq	%rax, %rdi	# out.9_12,
	call	free@PLT	#
# problem106.c:71:     int test4[] = {1, -1, 3, 2};
	movl	$1, -192(%rbp)	#, test4[0]
	movl	$-1, -188(%rbp)	#, test4[1]
	movl	$3, -184(%rbp)	#, test4[2]
	movl	$2, -180(%rbp)	#, test4[3]
# problem106.c:72:     char *expected4[] = {"Three", "Two", "One"};
	leaq	.LC3(%rip), %rax	#, tmp133
	movq	%rax, -176(%rbp)	# tmp133, expected4[0]
	leaq	.LC2(%rip), %rax	#, tmp134
	movq	%rax, -168(%rbp)	# tmp134, expected4[1]
	leaq	.LC1(%rip), %rax	#, tmp135
	movq	%rax, -160(%rbp)	# tmp135, expected4[2]
# problem106.c:73:     func0(test4, 4, &out, &out_size);
	leaq	-244(%rbp), %rcx	#, tmp136
	leaq	-240(%rbp), %rdx	#, tmp137
	leaq	-192(%rbp), %rax	#, tmp138
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp138,
	call	func0	#
# problem106.c:74:     assert(issame(out, out_size, expected4, 3));
	movl	-244(%rbp), %esi	# out_size, out_size.10_13
	movq	-240(%rbp), %rax	# out, out.11_14
	leaq	-176(%rbp), %rdx	#, tmp139
	movl	$3, %ecx	#,
	movq	%rax, %rdi	# out.11_14,
	call	issame	#
	testl	%eax, %eax	# _15
	jne	.L26	#,
# problem106.c:74:     assert(issame(out, out_size, expected4, 3));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp140
	movq	%rax, %rcx	# tmp140,
	movl	$74, %edx	#,
	leaq	.LC10(%rip), %rax	#, tmp141
	movq	%rax, %rsi	# tmp141,
	leaq	.LC14(%rip), %rax	#, tmp142
	movq	%rax, %rdi	# tmp142,
	call	__assert_fail@PLT	#
.L26:
# problem106.c:75:     free(out);
	movq	-240(%rbp), %rax	# out, out.12_16
	movq	%rax, %rdi	# out.12_16,
	call	free@PLT	#
# problem106.c:77:     int test5[] = {9, 4, 8};
	movl	$9, -204(%rbp)	#, test5[0]
	movl	$4, -200(%rbp)	#, test5[1]
	movl	$8, -196(%rbp)	#, test5[2]
# problem106.c:78:     char *expected5[] = {"Nine", "Eight", "Four"};
	leaq	.LC9(%rip), %rax	#, tmp143
	movq	%rax, -144(%rbp)	# tmp143, expected5[0]
	leaq	.LC8(%rip), %rax	#, tmp144
	movq	%rax, -136(%rbp)	# tmp144, expected5[1]
	leaq	.LC4(%rip), %rax	#, tmp145
	movq	%rax, -128(%rbp)	# tmp145, expected5[2]
# problem106.c:79:     func0(test5, 3, &out, &out_size);
	leaq	-244(%rbp), %rcx	#, tmp146
	leaq	-240(%rbp), %rdx	#, tmp147
	leaq	-204(%rbp), %rax	#, tmp148
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp148,
	call	func0	#
# problem106.c:80:     assert(issame(out, out_size, expected5, 3));
	movl	-244(%rbp), %esi	# out_size, out_size.13_17
	movq	-240(%rbp), %rax	# out, out.14_18
	leaq	-144(%rbp), %rdx	#, tmp149
	movl	$3, %ecx	#,
	movq	%rax, %rdi	# out.14_18,
	call	issame	#
	testl	%eax, %eax	# _19
	jne	.L27	#,
# problem106.c:80:     assert(issame(out, out_size, expected5, 3));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp150
	movq	%rax, %rcx	# tmp150,
	movl	$80, %edx	#,
	leaq	.LC10(%rip), %rax	#, tmp151
	movq	%rax, %rsi	# tmp151,
	leaq	.LC15(%rip), %rax	#, tmp152
	movq	%rax, %rdi	# tmp152,
	call	__assert_fail@PLT	#
.L27:
# problem106.c:81:     free(out);
	movq	-240(%rbp), %rax	# out, out.15_20
	movq	%rax, %rdi	# out.15_20,
	call	free@PLT	#
# problem106.c:83:     return 0;
	movl	$0, %eax	#, _76
# problem106.c:84: }
	movq	-8(%rbp), %rdx	# D.3172, tmp155
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp155
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
