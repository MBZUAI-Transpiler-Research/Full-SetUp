	.file	"code.c"
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
# eval/problem146//code.c:5: int* func0(int nums[], int size) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp192
	movq	%rax, -8(%rbp)	# tmp192, D.3085
	xorl	%eax, %eax	# tmp192
# eval/problem146//code.c:6:     int* sumdigit = (int*)malloc(size * sizeof(int));
	movl	-76(%rbp), %eax	# size, tmp147
	cltq
	salq	$2, %rax	#, _2
	movq	%rax, %rdi	# _2,
	call	malloc@PLT	#
	movq	%rax, -32(%rbp)	# tmp148, sumdigit
# eval/problem146//code.c:7:     for (int i = 0; i < size; i++) {
	movl	$0, -60(%rbp)	#, i
# eval/problem146//code.c:7:     for (int i = 0; i < size; i++) {
	jmp	.L2	#
.L7:
# eval/problem146//code.c:9:         sprintf(w, "%d", abs(nums[i]));
	movl	-60(%rbp), %eax	# i, tmp149
	cltq
	leaq	0(,%rax,4), %rdx	#, _4
	movq	-72(%rbp), %rax	# nums, tmp150
	addq	%rdx, %rax	# _4, _5
	movl	(%rax), %eax	# *_5, _6
# eval/problem146//code.c:9:         sprintf(w, "%d", abs(nums[i]));
	movl	%eax, %edx	# _6, tmp191
	negl	%edx	# tmp191
	cmovs	%eax, %edx	# tmp191,, _6, _7
	leaq	-20(%rbp), %rax	#, tmp151
	leaq	.LC0(%rip), %rcx	#, tmp152
	movq	%rcx, %rsi	# tmp152,
	movq	%rax, %rdi	# tmp151,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# eval/problem146//code.c:10:         int sum = 0, length = strlen(w);
	movl	$0, -56(%rbp)	#, sum
# eval/problem146//code.c:10:         int sum = 0, length = strlen(w);
	leaq	-20(%rbp), %rax	#, tmp153
	movq	%rax, %rdi	# tmp153,
	call	strlen@PLT	#
# eval/problem146//code.c:10:         int sum = 0, length = strlen(w);
	movl	%eax, -36(%rbp)	# _8, length
# eval/problem146//code.c:11:         for (int j = 1; j < length; j++)
	movl	$1, -52(%rbp)	#, j
# eval/problem146//code.c:11:         for (int j = 1; j < length; j++)
	jmp	.L3	#
.L4:
# eval/problem146//code.c:12:             sum += w[j] - '0';
	movl	-52(%rbp), %eax	# j, tmp155
	cltq
	movzbl	-20(%rbp,%rax), %eax	# w[j_67], _9
	movsbl	%al, %eax	# _9, _10
# eval/problem146//code.c:12:             sum += w[j] - '0';
	subl	$48, %eax	#, _11
# eval/problem146//code.c:12:             sum += w[j] - '0';
	addl	%eax, -56(%rbp)	# _11, sum
# eval/problem146//code.c:11:         for (int j = 1; j < length; j++)
	addl	$1, -52(%rbp)	#, j
.L3:
# eval/problem146//code.c:11:         for (int j = 1; j < length; j++)
	movl	-52(%rbp), %eax	# j, tmp156
	cmpl	-36(%rbp), %eax	# length, tmp156
	jl	.L4	#,
# eval/problem146//code.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	movl	-60(%rbp), %eax	# i, tmp157
	cltq
	leaq	0(,%rax,4), %rdx	#, _13
	movq	-72(%rbp), %rax	# nums, tmp158
	addq	%rdx, %rax	# _13, _14
	movl	(%rax), %eax	# *_14, _15
# eval/problem146//code.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	testl	%eax, %eax	# _15
	jle	.L5	#,
# eval/problem146//code.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	movzbl	-20(%rbp), %eax	# w[0], _16
	movsbl	%al, %eax	# _16, _17
# eval/problem146//code.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	subl	$48, %eax	#, _18
# eval/problem146//code.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	addl	%eax, -56(%rbp)	# _18, sum
	jmp	.L6	#
.L5:
# eval/problem146//code.c:14:         else sum -= w[0] - '0';
	movzbl	-20(%rbp), %eax	# w[0], _19
	movsbl	%al, %eax	# _19, _20
# eval/problem146//code.c:14:         else sum -= w[0] - '0';
	subl	$48, %eax	#, _21
# eval/problem146//code.c:14:         else sum -= w[0] - '0';
	subl	%eax, -56(%rbp)	# _21, sum
.L6:
# eval/problem146//code.c:15:         sumdigit[i] = sum;
	movl	-60(%rbp), %eax	# i, tmp159
	cltq
	leaq	0(,%rax,4), %rdx	#, _23
	movq	-32(%rbp), %rax	# sumdigit, tmp160
	addq	%rax, %rdx	# tmp160, _24
# eval/problem146//code.c:15:         sumdigit[i] = sum;
	movl	-56(%rbp), %eax	# sum, tmp161
	movl	%eax, (%rdx)	# tmp161, *_24
# eval/problem146//code.c:7:     for (int i = 0; i < size; i++) {
	addl	$1, -60(%rbp)	#, i
.L2:
# eval/problem146//code.c:7:     for (int i = 0; i < size; i++) {
	movl	-60(%rbp), %eax	# i, tmp162
	cmpl	-76(%rbp), %eax	# size, tmp162
	jl	.L7	#,
# eval/problem146//code.c:18:     for (int i = 0; i < size; i++)
	movl	$0, -48(%rbp)	#, i
# eval/problem146//code.c:18:     for (int i = 0; i < size; i++)
	jmp	.L8	#
.L12:
# eval/problem146//code.c:19:         for (int j = 1; j < size; j++)
	movl	$1, -44(%rbp)	#, j
# eval/problem146//code.c:19:         for (int j = 1; j < size; j++)
	jmp	.L9	#
.L11:
# eval/problem146//code.c:20:             if (sumdigit[j - 1] > sumdigit[j]) {
	movl	-44(%rbp), %eax	# j, tmp163
	cltq
	salq	$2, %rax	#, _26
	leaq	-4(%rax), %rdx	#, _27
	movq	-32(%rbp), %rax	# sumdigit, tmp164
	addq	%rdx, %rax	# _27, _28
	movl	(%rax), %edx	# *_28, _29
# eval/problem146//code.c:20:             if (sumdigit[j - 1] > sumdigit[j]) {
	movl	-44(%rbp), %eax	# j, tmp165
	cltq
	leaq	0(,%rax,4), %rcx	#, _31
	movq	-32(%rbp), %rax	# sumdigit, tmp166
	addq	%rcx, %rax	# _31, _32
	movl	(%rax), %eax	# *_32, _33
# eval/problem146//code.c:20:             if (sumdigit[j - 1] > sumdigit[j]) {
	cmpl	%eax, %edx	# _33, _29
	jle	.L10	#,
# eval/problem146//code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	movl	-44(%rbp), %eax	# j, tmp167
	cltq
	leaq	0(,%rax,4), %rdx	#, _35
	movq	-32(%rbp), %rax	# sumdigit, tmp168
	addq	%rdx, %rax	# _35, _36
# eval/problem146//code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	movl	(%rax), %eax	# *_36, tmp169
	movl	%eax, -40(%rbp)	# tmp169, m
# eval/problem146//code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	movl	-44(%rbp), %eax	# j, tmp170
	cltq
	salq	$2, %rax	#, _38
	leaq	-4(%rax), %rdx	#, _39
	movq	-32(%rbp), %rax	# sumdigit, tmp171
	addq	%rdx, %rax	# _39, _40
# eval/problem146//code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	movl	-44(%rbp), %edx	# j, tmp172
	movslq	%edx, %rdx	# tmp172, _41
	leaq	0(,%rdx,4), %rcx	#, _42
	movq	-32(%rbp), %rdx	# sumdigit, tmp173
	addq	%rcx, %rdx	# _42, _43
# eval/problem146//code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	movl	(%rax), %eax	# *_40, _44
# eval/problem146//code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	movl	%eax, (%rdx)	# _44, *_43
# eval/problem146//code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	movl	-44(%rbp), %eax	# j, tmp174
	cltq
	salq	$2, %rax	#, _46
	leaq	-4(%rax), %rdx	#, _47
	movq	-32(%rbp), %rax	# sumdigit, tmp175
	addq	%rax, %rdx	# tmp175, _48
# eval/problem146//code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	movl	-40(%rbp), %eax	# m, tmp176
	movl	%eax, (%rdx)	# tmp176, *_48
# eval/problem146//code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	movl	-44(%rbp), %eax	# j, tmp177
	cltq
	leaq	0(,%rax,4), %rdx	#, _50
	movq	-72(%rbp), %rax	# nums, tmp178
	addq	%rdx, %rax	# _50, _51
# eval/problem146//code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	movl	(%rax), %eax	# *_51, tmp179
	movl	%eax, -40(%rbp)	# tmp179, m
# eval/problem146//code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	movl	-44(%rbp), %eax	# j, tmp180
	cltq
	salq	$2, %rax	#, _53
	leaq	-4(%rax), %rdx	#, _54
	movq	-72(%rbp), %rax	# nums, tmp181
	addq	%rdx, %rax	# _54, _55
# eval/problem146//code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	movl	-44(%rbp), %edx	# j, tmp182
	movslq	%edx, %rdx	# tmp182, _56
	leaq	0(,%rdx,4), %rcx	#, _57
	movq	-72(%rbp), %rdx	# nums, tmp183
	addq	%rcx, %rdx	# _57, _58
# eval/problem146//code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	movl	(%rax), %eax	# *_55, _59
# eval/problem146//code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	movl	%eax, (%rdx)	# _59, *_58
# eval/problem146//code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	movl	-44(%rbp), %eax	# j, tmp184
	cltq
	salq	$2, %rax	#, _61
	leaq	-4(%rax), %rdx	#, _62
	movq	-72(%rbp), %rax	# nums, tmp185
	addq	%rax, %rdx	# tmp185, _63
# eval/problem146//code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	movl	-40(%rbp), %eax	# m, tmp186
	movl	%eax, (%rdx)	# tmp186, *_63
.L10:
# eval/problem146//code.c:19:         for (int j = 1; j < size; j++)
	addl	$1, -44(%rbp)	#, j
.L9:
# eval/problem146//code.c:19:         for (int j = 1; j < size; j++)
	movl	-44(%rbp), %eax	# j, tmp187
	cmpl	-76(%rbp), %eax	# size, tmp187
	jl	.L11	#,
# eval/problem146//code.c:18:     for (int i = 0; i < size; i++)
	addl	$1, -48(%rbp)	#, i
.L8:
# eval/problem146//code.c:18:     for (int i = 0; i < size; i++)
	movl	-48(%rbp), %eax	# i, tmp188
	cmpl	-76(%rbp), %eax	# size, tmp188
	jl	.L12	#,
# eval/problem146//code.c:25:     free(sumdigit);
	movq	-32(%rbp), %rax	# sumdigit, tmp189
	movq	%rax, %rdi	# tmp189,
	call	free@PLT	#
# eval/problem146//code.c:26:     return nums;
	movq	-72(%rbp), %rax	# nums, _82
# eval/problem146//code.c:27: }
	movq	-8(%rbp), %rdx	# D.3085, tmp193
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
