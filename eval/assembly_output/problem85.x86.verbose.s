	.file	"problem85.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

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
	subq	$64, %rsp	#,
	movl	%edi, -52(%rbp)	# N, N
# problem85.c:4: char* func0(int N) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp154
	movq	%rax, -8(%rbp)	# tmp154, D.3979
	xorl	%eax, %eax	# tmp154
# problem85.c:6:     sprintf(str, "%d", N);
	movl	-52(%rbp), %edx	# N, tmp114
	leaq	-14(%rbp), %rax	#, tmp115
	leaq	.LC0(%rip), %rcx	#, tmp116
	movq	%rcx, %rsi	# tmp116,
	movq	%rax, %rdi	# tmp115,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# problem85.c:7:     int sum = 0;
	movl	$0, -40(%rbp)	#, sum
# problem85.c:8:     for (int i = 0; str[i] != '\0'; i++)
	movl	$0, -36(%rbp)	#, i
# problem85.c:8:     for (int i = 0; str[i] != '\0'; i++)
	jmp	.L2	#
.L3:
# problem85.c:9:         sum += str[i] - '0';
	movl	-36(%rbp), %eax	# i, tmp118
	cltq
	movzbl	-14(%rbp,%rax), %eax	# str[i_33], _1
	movsbl	%al, %eax	# _1, _2
# problem85.c:9:         sum += str[i] - '0';
	subl	$48, %eax	#, _3
# problem85.c:9:         sum += str[i] - '0';
	addl	%eax, -40(%rbp)	# _3, sum
# problem85.c:8:     for (int i = 0; str[i] != '\0'; i++)
	addl	$1, -36(%rbp)	#, i
.L2:
# problem85.c:8:     for (int i = 0; str[i] != '\0'; i++)
	movl	-36(%rbp), %eax	# i, tmp120
	cltq
	movzbl	-14(%rbp,%rax), %eax	# str[i_33], _4
# problem85.c:8:     for (int i = 0; str[i] != '\0'; i++)
	testb	%al, %al	# _4
	jne	.L3	#,
# problem85.c:11:     char* bi = malloc(33);
	movl	$33, %edi	#,
	call	malloc@PLT	#
	movq	%rax, -24(%rbp)	# tmp121, bi
# problem85.c:12:     int index = 0;
	movl	$0, -32(%rbp)	#, index
# problem85.c:13:     if (sum == 0) {
	cmpl	$0, -40(%rbp)	#, sum
	jne	.L6	#,
# problem85.c:14:         bi[index++] = '0';
	movl	-32(%rbp), %eax	# index, index.0_5
	leal	1(%rax), %edx	#, tmp122
	movl	%edx, -32(%rbp)	# tmp122, index
	movslq	%eax, %rdx	# index.0_5, _6
# problem85.c:14:         bi[index++] = '0';
	movq	-24(%rbp), %rax	# bi, tmp123
	addq	%rdx, %rax	# _6, _7
# problem85.c:14:         bi[index++] = '0';
	movb	$48, (%rax)	#, *_7
	jmp	.L5	#
.L7:
# problem85.c:17:             bi[index++] = (sum % 2) + '0';
	movl	-40(%rbp), %edx	# sum, tmp124
	movl	%edx, %eax	# tmp124, tmp125
	sarl	$31, %eax	#, tmp125
	shrl	$31, %eax	#, tmp126
	addl	%eax, %edx	# tmp126, tmp127
	andl	$1, %edx	#, tmp128
	subl	%eax, %edx	# tmp126, tmp129
	movl	%edx, %eax	# tmp129, _8
# problem85.c:17:             bi[index++] = (sum % 2) + '0';
	leal	48(%rax), %ecx	#, _10
# problem85.c:17:             bi[index++] = (sum % 2) + '0';
	movl	-32(%rbp), %eax	# index, index.1_11
	leal	1(%rax), %edx	#, tmp130
	movl	%edx, -32(%rbp)	# tmp130, index
	movslq	%eax, %rdx	# index.1_11, _12
# problem85.c:17:             bi[index++] = (sum % 2) + '0';
	movq	-24(%rbp), %rax	# bi, tmp131
	addq	%rdx, %rax	# _12, _13
# problem85.c:17:             bi[index++] = (sum % 2) + '0';
	movl	%ecx, %edx	# _10, _14
# problem85.c:17:             bi[index++] = (sum % 2) + '0';
	movb	%dl, (%rax)	# _14, *_13
# problem85.c:18:             sum /= 2;
	movl	-40(%rbp), %eax	# sum, tmp133
	movl	%eax, %edx	# tmp133, tmp134
	shrl	$31, %edx	#, tmp134
	addl	%edx, %eax	# tmp134, tmp135
	sarl	%eax	# tmp136
	movl	%eax, -40(%rbp)	# tmp136, sum
.L6:
# problem85.c:16:         while (sum > 0) {
	cmpl	$0, -40(%rbp)	#, sum
	jg	.L7	#,
.L5:
# problem85.c:21:     bi[index] = '\0';
	movl	-32(%rbp), %eax	# index, tmp137
	movslq	%eax, %rdx	# tmp137, _15
	movq	-24(%rbp), %rax	# bi, tmp138
	addq	%rdx, %rax	# _15, _16
# problem85.c:21:     bi[index] = '\0';
	movb	$0, (%rax)	#, *_16
# problem85.c:23:     for (int i = 0; i < index / 2; i++) {
	movl	$0, -28(%rbp)	#, i
# problem85.c:23:     for (int i = 0; i < index / 2; i++) {
	jmp	.L8	#
.L9:
# problem85.c:24:         char temp = bi[i];
	movl	-28(%rbp), %eax	# i, tmp139
	movslq	%eax, %rdx	# tmp139, _17
	movq	-24(%rbp), %rax	# bi, tmp140
	addq	%rdx, %rax	# _17, _18
# problem85.c:24:         char temp = bi[i];
	movzbl	(%rax), %eax	# *_18, tmp141
	movb	%al, -41(%rbp)	# tmp141, temp
# problem85.c:25:         bi[i] = bi[index - i - 1];
	movl	-32(%rbp), %eax	# index, tmp142
	subl	-28(%rbp), %eax	# i, _19
	cltq
# problem85.c:25:         bi[i] = bi[index - i - 1];
	leaq	-1(%rax), %rdx	#, _21
	movq	-24(%rbp), %rax	# bi, tmp143
	addq	%rdx, %rax	# _21, _22
# problem85.c:25:         bi[i] = bi[index - i - 1];
	movl	-28(%rbp), %edx	# i, tmp144
	movslq	%edx, %rcx	# tmp144, _23
	movq	-24(%rbp), %rdx	# bi, tmp145
	addq	%rcx, %rdx	# _23, _24
# problem85.c:25:         bi[i] = bi[index - i - 1];
	movzbl	(%rax), %eax	# *_22, _25
# problem85.c:25:         bi[i] = bi[index - i - 1];
	movb	%al, (%rdx)	# _25, *_24
# problem85.c:26:         bi[index - i - 1] = temp;
	movl	-32(%rbp), %eax	# index, tmp146
	subl	-28(%rbp), %eax	# i, _26
	cltq
# problem85.c:26:         bi[index - i - 1] = temp;
	leaq	-1(%rax), %rdx	#, _28
	movq	-24(%rbp), %rax	# bi, tmp147
	addq	%rax, %rdx	# tmp147, _29
# problem85.c:26:         bi[index - i - 1] = temp;
	movzbl	-41(%rbp), %eax	# temp, tmp148
	movb	%al, (%rdx)	# tmp148, *_29
# problem85.c:23:     for (int i = 0; i < index / 2; i++) {
	addl	$1, -28(%rbp)	#, i
.L8:
# problem85.c:23:     for (int i = 0; i < index / 2; i++) {
	movl	-32(%rbp), %eax	# index, tmp149
	movl	%eax, %edx	# tmp149, tmp150
	shrl	$31, %edx	#, tmp150
	addl	%edx, %eax	# tmp150, tmp151
	sarl	%eax	# tmp152
# problem85.c:23:     for (int i = 0; i < index / 2; i++) {
	cmpl	%eax, -28(%rbp)	# _30, i
	jl	.L9	#,
# problem85.c:29:     return bi;
	movq	-24(%rbp), %rax	# bi, _55
# problem85.c:30: }
	movq	-8(%rbp), %rdx	# D.3979, tmp155
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp155
	je	.L11	#,
	call	__stack_chk_fail@PLT	#
.L11:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC1:
	.string	"1"
.LC2:
	.string	"problem85.c"
.LC3:
	.string	"strcmp(result, \"1\") == 0"
.LC4:
	.string	"110"
.LC5:
	.string	"strcmp(result, \"110\") == 0"
.LC6:
	.string	"1100"
.LC7:
	.string	"strcmp(result, \"1100\") == 0"
.LC8:
	.string	"1001"
.LC9:
	.string	"strcmp(result, \"1001\") == 0"
.LC10:
	.string	"10010"
.LC11:
	.string	"strcmp(result, \"10010\") == 0"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# problem85.c:41:     result = func0(1000);
	movl	$1000, %edi	#,
	call	func0	#
	movq	%rax, -8(%rbp)	# tmp89, result
# problem85.c:42:     assert(strcmp(result, "1") == 0);
	movq	-8(%rbp), %rax	# result, tmp90
	leaq	.LC1(%rip), %rdx	#, tmp91
	movq	%rdx, %rsi	# tmp91,
	movq	%rax, %rdi	# tmp90,
	call	strcmp@PLT	#
# problem85.c:42:     assert(strcmp(result, "1") == 0);
	testl	%eax, %eax	# _1
	je	.L13	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp92
	movq	%rax, %rcx	# tmp92,
	movl	$42, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp93
	movq	%rax, %rsi	# tmp93,
	leaq	.LC3(%rip), %rax	#, tmp94
	movq	%rax, %rdi	# tmp94,
	call	__assert_fail@PLT	#
.L13:
# problem85.c:43:     free(result);
	movq	-8(%rbp), %rax	# result, tmp95
	movq	%rax, %rdi	# tmp95,
	call	free@PLT	#
# problem85.c:45:     result = func0(150);
	movl	$150, %edi	#,
	call	func0	#
	movq	%rax, -8(%rbp)	# tmp96, result
# problem85.c:46:     assert(strcmp(result, "110") == 0);
	movq	-8(%rbp), %rax	# result, tmp97
	leaq	.LC4(%rip), %rdx	#, tmp98
	movq	%rdx, %rsi	# tmp98,
	movq	%rax, %rdi	# tmp97,
	call	strcmp@PLT	#
# problem85.c:46:     assert(strcmp(result, "110") == 0);
	testl	%eax, %eax	# _2
	je	.L14	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp99
	movq	%rax, %rcx	# tmp99,
	movl	$46, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp100
	movq	%rax, %rsi	# tmp100,
	leaq	.LC5(%rip), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	call	__assert_fail@PLT	#
.L14:
# problem85.c:47:     free(result);
	movq	-8(%rbp), %rax	# result, tmp102
	movq	%rax, %rdi	# tmp102,
	call	free@PLT	#
# problem85.c:49:     result = func0(147);
	movl	$147, %edi	#,
	call	func0	#
	movq	%rax, -8(%rbp)	# tmp103, result
# problem85.c:50:     assert(strcmp(result, "1100") == 0);
	movq	-8(%rbp), %rax	# result, tmp104
	leaq	.LC6(%rip), %rdx	#, tmp105
	movq	%rdx, %rsi	# tmp105,
	movq	%rax, %rdi	# tmp104,
	call	strcmp@PLT	#
# problem85.c:50:     assert(strcmp(result, "1100") == 0);
	testl	%eax, %eax	# _3
	je	.L15	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp106
	movq	%rax, %rcx	# tmp106,
	movl	$50, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp107
	movq	%rax, %rsi	# tmp107,
	leaq	.LC7(%rip), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	call	__assert_fail@PLT	#
.L15:
# problem85.c:51:     free(result);
	movq	-8(%rbp), %rax	# result, tmp109
	movq	%rax, %rdi	# tmp109,
	call	free@PLT	#
# problem85.c:53:     result = func0(333);
	movl	$333, %edi	#,
	call	func0	#
	movq	%rax, -8(%rbp)	# tmp110, result
# problem85.c:54:     assert(strcmp(result, "1001") == 0);
	movq	-8(%rbp), %rax	# result, tmp111
	leaq	.LC8(%rip), %rdx	#, tmp112
	movq	%rdx, %rsi	# tmp112,
	movq	%rax, %rdi	# tmp111,
	call	strcmp@PLT	#
# problem85.c:54:     assert(strcmp(result, "1001") == 0);
	testl	%eax, %eax	# _4
	je	.L16	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp113
	movq	%rax, %rcx	# tmp113,
	movl	$54, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp114
	movq	%rax, %rsi	# tmp114,
	leaq	.LC9(%rip), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	__assert_fail@PLT	#
.L16:
# problem85.c:55:     free(result);
	movq	-8(%rbp), %rax	# result, tmp116
	movq	%rax, %rdi	# tmp116,
	call	free@PLT	#
# problem85.c:57:     result = func0(963);
	movl	$963, %edi	#,
	call	func0	#
	movq	%rax, -8(%rbp)	# tmp117, result
# problem85.c:58:     assert(strcmp(result, "10010") == 0);
	movq	-8(%rbp), %rax	# result, tmp118
	leaq	.LC10(%rip), %rdx	#, tmp119
	movq	%rdx, %rsi	# tmp119,
	movq	%rax, %rdi	# tmp118,
	call	strcmp@PLT	#
# problem85.c:58:     assert(strcmp(result, "10010") == 0);
	testl	%eax, %eax	# _5
	je	.L17	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp120
	movq	%rax, %rcx	# tmp120,
	movl	$58, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp121
	movq	%rax, %rsi	# tmp121,
	leaq	.LC11(%rip), %rax	#, tmp122
	movq	%rax, %rdi	# tmp122,
	call	__assert_fail@PLT	#
.L17:
# problem85.c:59:     free(result);
	movq	-8(%rbp), %rax	# result, tmp123
	movq	%rax, %rdi	# tmp123,
	call	free@PLT	#
# problem85.c:61:     return 0;
	movl	$0, %eax	#, _27
# problem85.c:62: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
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
