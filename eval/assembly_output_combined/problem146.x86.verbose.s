	.file	"problem146.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"%d"
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
	movq	%rdi, -72(%rbp)	# nums, nums
	movl	%esi, -76(%rbp)	# size, size
# problem146.c:5: int* func0(int nums[], int size) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp192
	movq	%rax, -8(%rbp)	# tmp192, D.3159
	xorl	%eax, %eax	# tmp192
# problem146.c:6:     int* sumdigit = (int*)malloc(size * sizeof(int));
	movl	-76(%rbp), %eax	# size, tmp147
	cltq
	salq	$2, %rax	#, _2
	movq	%rax, %rdi	# _2,
	call	malloc@PLT	#
	movq	%rax, -32(%rbp)	# tmp148, sumdigit
# problem146.c:7:     for (int i = 0; i < size; i++) {
	movl	$0, -60(%rbp)	#, i
# problem146.c:7:     for (int i = 0; i < size; i++) {
	jmp	.L2	#
.L7:
# problem146.c:9:         sprintf(w, "%d", abs(nums[i]));
	movl	-60(%rbp), %eax	# i, tmp149
	cltq
	leaq	0(,%rax,4), %rdx	#, _4
	movq	-72(%rbp), %rax	# nums, tmp150
	addq	%rdx, %rax	# _4, _5
	movl	(%rax), %eax	# *_5, _6
# problem146.c:9:         sprintf(w, "%d", abs(nums[i]));
	movl	%eax, %edx	# _6, tmp191
	negl	%edx	# tmp191
	cmovs	%eax, %edx	# tmp191,, _6, _7
	leaq	-20(%rbp), %rax	#, tmp151
	leaq	.LC0(%rip), %rcx	#, tmp152
	movq	%rcx, %rsi	# tmp152,
	movq	%rax, %rdi	# tmp151,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# problem146.c:10:         int sum = 0, length = strlen(w);
	movl	$0, -56(%rbp)	#, sum
# problem146.c:10:         int sum = 0, length = strlen(w);
	leaq	-20(%rbp), %rax	#, tmp153
	movq	%rax, %rdi	# tmp153,
	call	strlen@PLT	#
# problem146.c:10:         int sum = 0, length = strlen(w);
	movl	%eax, -36(%rbp)	# _8, length
# problem146.c:11:         for (int j = 1; j < length; j++)
	movl	$1, -52(%rbp)	#, j
# problem146.c:11:         for (int j = 1; j < length; j++)
	jmp	.L3	#
.L4:
# problem146.c:12:             sum += w[j] - '0';
	movl	-52(%rbp), %eax	# j, tmp155
	cltq
	movzbl	-20(%rbp,%rax), %eax	# w[j_67], _9
	movsbl	%al, %eax	# _9, _10
# problem146.c:12:             sum += w[j] - '0';
	subl	$48, %eax	#, _11
# problem146.c:12:             sum += w[j] - '0';
	addl	%eax, -56(%rbp)	# _11, sum
# problem146.c:11:         for (int j = 1; j < length; j++)
	addl	$1, -52(%rbp)	#, j
.L3:
# problem146.c:11:         for (int j = 1; j < length; j++)
	movl	-52(%rbp), %eax	# j, tmp156
	cmpl	-36(%rbp), %eax	# length, tmp156
	jl	.L4	#,
# problem146.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	movl	-60(%rbp), %eax	# i, tmp157
	cltq
	leaq	0(,%rax,4), %rdx	#, _13
	movq	-72(%rbp), %rax	# nums, tmp158
	addq	%rdx, %rax	# _13, _14
	movl	(%rax), %eax	# *_14, _15
# problem146.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	testl	%eax, %eax	# _15
	jle	.L5	#,
# problem146.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	movzbl	-20(%rbp), %eax	# w[0], _16
	movsbl	%al, %eax	# _16, _17
# problem146.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	subl	$48, %eax	#, _18
# problem146.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	addl	%eax, -56(%rbp)	# _18, sum
	jmp	.L6	#
.L5:
# problem146.c:14:         else sum -= w[0] - '0';
	movzbl	-20(%rbp), %eax	# w[0], _19
	movsbl	%al, %eax	# _19, _20
# problem146.c:14:         else sum -= w[0] - '0';
	subl	$48, %eax	#, _21
# problem146.c:14:         else sum -= w[0] - '0';
	subl	%eax, -56(%rbp)	# _21, sum
.L6:
# problem146.c:15:         sumdigit[i] = sum;
	movl	-60(%rbp), %eax	# i, tmp159
	cltq
	leaq	0(,%rax,4), %rdx	#, _23
	movq	-32(%rbp), %rax	# sumdigit, tmp160
	addq	%rax, %rdx	# tmp160, _24
# problem146.c:15:         sumdigit[i] = sum;
	movl	-56(%rbp), %eax	# sum, tmp161
	movl	%eax, (%rdx)	# tmp161, *_24
# problem146.c:7:     for (int i = 0; i < size; i++) {
	addl	$1, -60(%rbp)	#, i
.L2:
# problem146.c:7:     for (int i = 0; i < size; i++) {
	movl	-60(%rbp), %eax	# i, tmp162
	cmpl	-76(%rbp), %eax	# size, tmp162
	jl	.L7	#,
# problem146.c:18:     for (int i = 0; i < size; i++)
	movl	$0, -48(%rbp)	#, i
# problem146.c:18:     for (int i = 0; i < size; i++)
	jmp	.L8	#
.L12:
# problem146.c:19:         for (int j = 1; j < size; j++)
	movl	$1, -44(%rbp)	#, j
# problem146.c:19:         for (int j = 1; j < size; j++)
	jmp	.L9	#
.L11:
# problem146.c:20:             if (sumdigit[j - 1] > sumdigit[j]) {
	movl	-44(%rbp), %eax	# j, tmp163
	cltq
	salq	$2, %rax	#, _26
	leaq	-4(%rax), %rdx	#, _27
	movq	-32(%rbp), %rax	# sumdigit, tmp164
	addq	%rdx, %rax	# _27, _28
	movl	(%rax), %edx	# *_28, _29
# problem146.c:20:             if (sumdigit[j - 1] > sumdigit[j]) {
	movl	-44(%rbp), %eax	# j, tmp165
	cltq
	leaq	0(,%rax,4), %rcx	#, _31
	movq	-32(%rbp), %rax	# sumdigit, tmp166
	addq	%rcx, %rax	# _31, _32
	movl	(%rax), %eax	# *_32, _33
# problem146.c:20:             if (sumdigit[j - 1] > sumdigit[j]) {
	cmpl	%eax, %edx	# _33, _29
	jle	.L10	#,
# problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	movl	-44(%rbp), %eax	# j, tmp167
	cltq
	leaq	0(,%rax,4), %rdx	#, _35
	movq	-32(%rbp), %rax	# sumdigit, tmp168
	addq	%rdx, %rax	# _35, _36
# problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	movl	(%rax), %eax	# *_36, tmp169
	movl	%eax, -40(%rbp)	# tmp169, m
# problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	movl	-44(%rbp), %eax	# j, tmp170
	cltq
	salq	$2, %rax	#, _38
	leaq	-4(%rax), %rdx	#, _39
	movq	-32(%rbp), %rax	# sumdigit, tmp171
	addq	%rdx, %rax	# _39, _40
# problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	movl	-44(%rbp), %edx	# j, tmp172
	movslq	%edx, %rdx	# tmp172, _41
	leaq	0(,%rdx,4), %rcx	#, _42
	movq	-32(%rbp), %rdx	# sumdigit, tmp173
	addq	%rcx, %rdx	# _42, _43
# problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	movl	(%rax), %eax	# *_40, _44
# problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	movl	%eax, (%rdx)	# _44, *_43
# problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	movl	-44(%rbp), %eax	# j, tmp174
	cltq
	salq	$2, %rax	#, _46
	leaq	-4(%rax), %rdx	#, _47
	movq	-32(%rbp), %rax	# sumdigit, tmp175
	addq	%rax, %rdx	# tmp175, _48
# problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	movl	-40(%rbp), %eax	# m, tmp176
	movl	%eax, (%rdx)	# tmp176, *_48
# problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	movl	-44(%rbp), %eax	# j, tmp177
	cltq
	leaq	0(,%rax,4), %rdx	#, _50
	movq	-72(%rbp), %rax	# nums, tmp178
	addq	%rdx, %rax	# _50, _51
# problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	movl	(%rax), %eax	# *_51, tmp179
	movl	%eax, -40(%rbp)	# tmp179, m
# problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	movl	-44(%rbp), %eax	# j, tmp180
	cltq
	salq	$2, %rax	#, _53
	leaq	-4(%rax), %rdx	#, _54
	movq	-72(%rbp), %rax	# nums, tmp181
	addq	%rdx, %rax	# _54, _55
# problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	movl	-44(%rbp), %edx	# j, tmp182
	movslq	%edx, %rdx	# tmp182, _56
	leaq	0(,%rdx,4), %rcx	#, _57
	movq	-72(%rbp), %rdx	# nums, tmp183
	addq	%rcx, %rdx	# _57, _58
# problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	movl	(%rax), %eax	# *_55, _59
# problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	movl	%eax, (%rdx)	# _59, *_58
# problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	movl	-44(%rbp), %eax	# j, tmp184
	cltq
	salq	$2, %rax	#, _61
	leaq	-4(%rax), %rdx	#, _62
	movq	-72(%rbp), %rax	# nums, tmp185
	addq	%rax, %rdx	# tmp185, _63
# problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	movl	-40(%rbp), %eax	# m, tmp186
	movl	%eax, (%rdx)	# tmp186, *_63
.L10:
# problem146.c:19:         for (int j = 1; j < size; j++)
	addl	$1, -44(%rbp)	#, j
.L9:
# problem146.c:19:         for (int j = 1; j < size; j++)
	movl	-44(%rbp), %eax	# j, tmp187
	cmpl	-76(%rbp), %eax	# size, tmp187
	jl	.L11	#,
# problem146.c:18:     for (int i = 0; i < size; i++)
	addl	$1, -48(%rbp)	#, i
.L8:
# problem146.c:18:     for (int i = 0; i < size; i++)
	movl	-48(%rbp), %eax	# i, tmp188
	cmpl	-76(%rbp), %eax	# size, tmp188
	jl	.L12	#,
# problem146.c:25:     free(sumdigit);
	movq	-32(%rbp), %rax	# sumdigit, tmp189
	movq	%rax, %rdi	# tmp189,
	call	free@PLT	#
# problem146.c:26:     return nums;
	movq	-72(%rbp), %rax	# nums, _82
# problem146.c:27: }
	movq	-8(%rbp), %rdx	# D.3159, tmp193
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp193
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
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# b, b
	movl	%edx, -36(%rbp)	# size_a, size_a
	movl	%ecx, -40(%rbp)	# size_b, size_b
# problem146.c:35:     if (size_a != size_b) return 0;
	movl	-36(%rbp), %eax	# size_a, tmp92
	cmpl	-40(%rbp), %eax	# size_b, tmp92
	je	.L16	#,
# problem146.c:35:     if (size_a != size_b) return 0;
	movl	$0, %eax	#, _10
	jmp	.L17	#
.L16:
# problem146.c:36:     for (int i = 0; i < size_a; i++) {
	movl	$0, -4(%rbp)	#, i
# problem146.c:36:     for (int i = 0; i < size_a; i++) {
	jmp	.L18	#
.L20:
# problem146.c:37:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp93
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# a, tmp94
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# problem146.c:37:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp95
	cltq
	leaq	0(,%rax,4), %rcx	#, _6
	movq	-32(%rbp), %rax	# b, tmp96
	addq	%rcx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# problem146.c:37:         if (a[i] != b[i]) return 0;
	cmpl	%eax, %edx	# _8, _4
	je	.L19	#,
# problem146.c:37:         if (a[i] != b[i]) return 0;
	movl	$0, %eax	#, _10
	jmp	.L17	#
.L19:
# problem146.c:36:     for (int i = 0; i < size_a; i++) {
	addl	$1, -4(%rbp)	#, i
.L18:
# problem146.c:36:     for (int i = 0; i < size_a; i++) {
	movl	-4(%rbp), %eax	# i, tmp97
	cmpl	-36(%rbp), %eax	# size_a, tmp97
	jl	.L20	#,
# problem146.c:39:     return 1;
	movl	$1, %eax	#, _10
.L17:
# problem146.c:40: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC1:
	.string	"problem146.c"
	.align 8
.LC2:
	.string	"issame(func0(test1, 5), expected1, 5, 5)"
	.align 8
.LC3:
	.string	"issame(func0(test2, 15), expected2, 15, 15)"
	.align 8
.LC4:
	.string	"issame(func0(test3, 0), expected3, 0, 0)"
	.align 8
.LC5:
	.string	"issame(func0(test4, 8), expected4, 8, 8)"
	.align 8
.LC6:
	.string	"issame(func0(test5, 11), expected5, 11, 11)"
	.align 8
.LC7:
	.string	"issame(func0(test6, 7), expected6, 7, 7)"
.LC8:
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
	subq	$448, %rsp	#,
# problem146.c:42: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp128
	movq	%rax, -8(%rbp)	# tmp128, D.3162
	xorl	%eax, %eax	# tmp128
# problem146.c:43:     int test1[] = {1, 11, -1, -11, -12};
	movl	$1, -432(%rbp)	#, test1[0]
	movl	$11, -428(%rbp)	#, test1[1]
	movl	$-1, -424(%rbp)	#, test1[2]
	movl	$-11, -420(%rbp)	#, test1[3]
	movl	$-12, -416(%rbp)	#, test1[4]
# problem146.c:44:     int expected1[] = {-1, -11, 1, -12, 11};
	movl	$-1, -400(%rbp)	#, expected1[0]
	movl	$-11, -396(%rbp)	#, expected1[1]
	movl	$1, -392(%rbp)	#, expected1[2]
	movl	$-12, -388(%rbp)	#, expected1[3]
	movl	$11, -384(%rbp)	#, expected1[4]
# problem146.c:45:     assert(issame(func0(test1, 5), expected1, 5, 5));
	leaq	-432(%rbp), %rax	#, tmp96
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp96,
	call	func0	#
	movq	%rax, %rdi	#, _1
	leaq	-400(%rbp), %rax	#, tmp97
	movl	$5, %ecx	#,
	movl	$5, %edx	#,
	movq	%rax, %rsi	# tmp97,
	call	issame	#
	testl	%eax, %eax	# _2
	jne	.L22	#,
# problem146.c:45:     assert(issame(func0(test1, 5), expected1, 5, 5));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp98
	movq	%rax, %rcx	# tmp98,
	movl	$45, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp99
	movq	%rax, %rsi	# tmp99,
	leaq	.LC2(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	__assert_fail@PLT	#
.L22:
# problem146.c:47:     int test2[] = {1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46};
	movl	$1234, -144(%rbp)	#, test2[0]
	movl	$423, -140(%rbp)	#, test2[1]
	movl	$463, -136(%rbp)	#, test2[2]
	movl	$145, -132(%rbp)	#, test2[3]
	movl	$2, -128(%rbp)	#, test2[4]
	movl	$423, -124(%rbp)	#, test2[5]
	movl	$423, -120(%rbp)	#, test2[6]
	movl	$53, -116(%rbp)	#, test2[7]
	movl	$6, -112(%rbp)	#, test2[8]
	movl	$37, -108(%rbp)	#, test2[9]
	movl	$3457, -104(%rbp)	#, test2[10]
	movl	$3, -100(%rbp)	#, test2[11]
	movl	$56, -96(%rbp)	#, test2[12]
	movl	$0, -92(%rbp)	#, test2[13]
	movl	$46, -88(%rbp)	#, test2[14]
# problem146.c:48:     int expected2[] = {0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457};
	movl	$0, -80(%rbp)	#, expected2[0]
	movl	$2, -76(%rbp)	#, expected2[1]
	movl	$3, -72(%rbp)	#, expected2[2]
	movl	$6, -68(%rbp)	#, expected2[3]
	movl	$53, -64(%rbp)	#, expected2[4]
	movl	$423, -60(%rbp)	#, expected2[5]
	movl	$423, -56(%rbp)	#, expected2[6]
	movl	$423, -52(%rbp)	#, expected2[7]
	movl	$1234, -48(%rbp)	#, expected2[8]
	movl	$145, -44(%rbp)	#, expected2[9]
	movl	$37, -40(%rbp)	#, expected2[10]
	movl	$46, -36(%rbp)	#, expected2[11]
	movl	$56, -32(%rbp)	#, expected2[12]
	movl	$463, -28(%rbp)	#, expected2[13]
	movl	$3457, -24(%rbp)	#, expected2[14]
# problem146.c:49:     assert(issame(func0(test2, 15), expected2, 15, 15));
	leaq	-144(%rbp), %rax	#, tmp101
	movl	$15, %esi	#,
	movq	%rax, %rdi	# tmp101,
	call	func0	#
	movq	%rax, %rdi	#, _3
	leaq	-80(%rbp), %rax	#, tmp102
	movl	$15, %ecx	#,
	movl	$15, %edx	#,
	movq	%rax, %rsi	# tmp102,
	call	issame	#
	testl	%eax, %eax	# _4
	jne	.L23	#,
# problem146.c:49:     assert(issame(func0(test2, 15), expected2, 15, 15));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp103
	movq	%rax, %rcx	# tmp103,
	movl	$49, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp104
	movq	%rax, %rsi	# tmp104,
	leaq	.LC3(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	__assert_fail@PLT	#
.L23:
# problem146.c:53:     assert(issame(func0(test3, 0), expected3, 0, 0));
	leaq	-440(%rbp), %rax	#, tmp106
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp106,
	call	func0	#
	movq	%rax, %rdi	#, _5
	leaq	-436(%rbp), %rax	#, tmp107
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp107,
	call	issame	#
	testl	%eax, %eax	# _6
	jne	.L24	#,
# problem146.c:53:     assert(issame(func0(test3, 0), expected3, 0, 0));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp108
	movq	%rax, %rcx	# tmp108,
	movl	$53, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp109
	movq	%rax, %rsi	# tmp109,
	leaq	.LC4(%rip), %rax	#, tmp110
	movq	%rax, %rdi	# tmp110,
	call	__assert_fail@PLT	#
.L24:
# problem146.c:55:     int test4[] = {1, -11, -32, 43, 54, -98, 2, -3};
	movl	$1, -304(%rbp)	#, test4[0]
	movl	$-11, -300(%rbp)	#, test4[1]
	movl	$-32, -296(%rbp)	#, test4[2]
	movl	$43, -292(%rbp)	#, test4[3]
	movl	$54, -288(%rbp)	#, test4[4]
	movl	$-98, -284(%rbp)	#, test4[5]
	movl	$2, -280(%rbp)	#, test4[6]
	movl	$-3, -276(%rbp)	#, test4[7]
# problem146.c:56:     int expected4[] = {-3, -32, -98, -11, 1, 2, 43, 54};
	movl	$-3, -272(%rbp)	#, expected4[0]
	movl	$-32, -268(%rbp)	#, expected4[1]
	movl	$-98, -264(%rbp)	#, expected4[2]
	movl	$-11, -260(%rbp)	#, expected4[3]
	movl	$1, -256(%rbp)	#, expected4[4]
	movl	$2, -252(%rbp)	#, expected4[5]
	movl	$43, -248(%rbp)	#, expected4[6]
	movl	$54, -244(%rbp)	#, expected4[7]
# problem146.c:57:     assert(issame(func0(test4, 8), expected4, 8, 8));
	leaq	-304(%rbp), %rax	#, tmp111
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp111,
	call	func0	#
	movq	%rax, %rdi	#, _7
	leaq	-272(%rbp), %rax	#, tmp112
	movl	$8, %ecx	#,
	movl	$8, %edx	#,
	movq	%rax, %rsi	# tmp112,
	call	issame	#
	testl	%eax, %eax	# _8
	jne	.L25	#,
# problem146.c:57:     assert(issame(func0(test4, 8), expected4, 8, 8));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp113
	movq	%rax, %rcx	# tmp113,
	movl	$57, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp114
	movq	%rax, %rsi	# tmp114,
	leaq	.LC5(%rip), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	__assert_fail@PLT	#
.L25:
# problem146.c:59:     int test5[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};
	movl	$1, -240(%rbp)	#, test5[0]
	movl	$2, -236(%rbp)	#, test5[1]
	movl	$3, -232(%rbp)	#, test5[2]
	movl	$4, -228(%rbp)	#, test5[3]
	movl	$5, -224(%rbp)	#, test5[4]
	movl	$6, -220(%rbp)	#, test5[5]
	movl	$7, -216(%rbp)	#, test5[6]
	movl	$8, -212(%rbp)	#, test5[7]
	movl	$9, -208(%rbp)	#, test5[8]
	movl	$10, -204(%rbp)	#, test5[9]
	movl	$11, -200(%rbp)	#, test5[10]
# problem146.c:60:     int expected5[] = {1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9};
	movl	$1, -192(%rbp)	#, expected5[0]
	movl	$10, -188(%rbp)	#, expected5[1]
	movl	$2, -184(%rbp)	#, expected5[2]
	movl	$11, -180(%rbp)	#, expected5[3]
	movl	$3, -176(%rbp)	#, expected5[4]
	movl	$4, -172(%rbp)	#, expected5[5]
	movl	$5, -168(%rbp)	#, expected5[6]
	movl	$6, -164(%rbp)	#, expected5[7]
	movl	$7, -160(%rbp)	#, expected5[8]
	movl	$8, -156(%rbp)	#, expected5[9]
	movl	$9, -152(%rbp)	#, expected5[10]
# problem146.c:61:     assert(issame(func0(test5, 11), expected5, 11, 11));
	leaq	-240(%rbp), %rax	#, tmp116
	movl	$11, %esi	#,
	movq	%rax, %rdi	# tmp116,
	call	func0	#
	movq	%rax, %rdi	#, _9
	leaq	-192(%rbp), %rax	#, tmp117
	movl	$11, %ecx	#,
	movl	$11, %edx	#,
	movq	%rax, %rsi	# tmp117,
	call	issame	#
	testl	%eax, %eax	# _10
	jne	.L26	#,
# problem146.c:61:     assert(issame(func0(test5, 11), expected5, 11, 11));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp118
	movq	%rax, %rcx	# tmp118,
	movl	$61, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp119
	movq	%rax, %rsi	# tmp119,
	leaq	.LC6(%rip), %rax	#, tmp120
	movq	%rax, %rdi	# tmp120,
	call	__assert_fail@PLT	#
.L26:
# problem146.c:63:     int test6[] = {0, 6, 6, -76, -21, 23, 4};
	movl	$0, -368(%rbp)	#, test6[0]
	movl	$6, -364(%rbp)	#, test6[1]
	movl	$6, -360(%rbp)	#, test6[2]
	movl	$-76, -356(%rbp)	#, test6[3]
	movl	$-21, -352(%rbp)	#, test6[4]
	movl	$23, -348(%rbp)	#, test6[5]
	movl	$4, -344(%rbp)	#, test6[6]
# problem146.c:64:     int expected6[] = {-76, -21, 0, 4, 23, 6, 6};
	movl	$-76, -336(%rbp)	#, expected6[0]
	movl	$-21, -332(%rbp)	#, expected6[1]
	movl	$0, -328(%rbp)	#, expected6[2]
	movl	$4, -324(%rbp)	#, expected6[3]
	movl	$23, -320(%rbp)	#, expected6[4]
	movl	$6, -316(%rbp)	#, expected6[5]
	movl	$6, -312(%rbp)	#, expected6[6]
# problem146.c:65:     assert(issame(func0(test6, 7), expected6, 7, 7));
	leaq	-368(%rbp), %rax	#, tmp121
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp121,
	call	func0	#
	movq	%rax, %rdi	#, _11
	leaq	-336(%rbp), %rax	#, tmp122
	movl	$7, %ecx	#,
	movl	$7, %edx	#,
	movq	%rax, %rsi	# tmp122,
	call	issame	#
	testl	%eax, %eax	# _12
	jne	.L27	#,
# problem146.c:65:     assert(issame(func0(test6, 7), expected6, 7, 7));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp123
	movq	%rax, %rcx	# tmp123,
	movl	$65, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp124
	movq	%rax, %rsi	# tmp124,
	leaq	.LC7(%rip), %rax	#, tmp125
	movq	%rax, %rdi	# tmp125,
	call	__assert_fail@PLT	#
.L27:
# problem146.c:67:     printf("All tests passed!\n");
	leaq	.LC8(%rip), %rax	#, tmp126
	movq	%rax, %rdi	# tmp126,
	call	puts@PLT	#
# problem146.c:69:     return 0;
	movl	$0, %eax	#, _127
# problem146.c:70: }
	movq	-8(%rbp), %rdx	# D.3162, tmp129
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp129
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
