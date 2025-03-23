	.file	"problem68.c"
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
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# s, s
	movl	%esi, -76(%rbp)	# n, n
# problem68.c:5: int func0(const char *s, int n) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp125
	movq	%rax, -24(%rbp)	# tmp125, D.3049
	xorl	%eax, %eax	# tmp125
# problem68.c:6:     char num1[10] = "";
	movq	$0, -44(%rbp)	#, num1
	movw	$0, -36(%rbp)	#, num1
# problem68.c:7:     char num2[10] = "";
	movq	$0, -34(%rbp)	#, num2
	movw	$0, -26(%rbp)	#, num2
# problem68.c:8:     int is12 = 0, j = 0;
	movl	$0, -56(%rbp)	#, is12
# problem68.c:8:     int is12 = 0, j = 0;
	movl	$0, -52(%rbp)	#, j
# problem68.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	movl	$0, -48(%rbp)	#, i
# problem68.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	jmp	.L2	#
.L6:
# problem68.c:11:         if (isdigit(s[i])) {
	call	__ctype_b_loc@PLT	#
	movq	(%rax), %rdx	# *_1, _2
	movl	-48(%rbp), %eax	# i, tmp109
	movslq	%eax, %rcx	# tmp109, _3
	movq	-72(%rbp), %rax	# s, tmp110
	addq	%rcx, %rax	# _3, _4
	movzbl	(%rax), %eax	# *_4, _5
	movsbq	%al, %rax	# _5, _6
	addq	%rax, %rax	# _7
	addq	%rdx, %rax	# _2, _8
	movzwl	(%rax), %eax	# *_8, _9
	movzwl	%ax, %eax	# _9, _10
	andl	$2048, %eax	#, _11
# problem68.c:11:         if (isdigit(s[i])) {
	testl	%eax, %eax	# _11
	je	.L3	#,
# problem68.c:12:             if (is12 == 0) {
	cmpl	$0, -56(%rbp)	#, is12
	jne	.L4	#,
# problem68.c:13:                 num1[j++] = s[i];
	movl	-48(%rbp), %eax	# i, tmp111
	movslq	%eax, %rdx	# tmp111, _12
	movq	-72(%rbp), %rax	# s, tmp112
	leaq	(%rdx,%rax), %rcx	#, _13
# problem68.c:13:                 num1[j++] = s[i];
	movl	-52(%rbp), %eax	# j, j.0_14
	leal	1(%rax), %edx	#, tmp113
	movl	%edx, -52(%rbp)	# tmp113, j
# problem68.c:13:                 num1[j++] = s[i];
	movzbl	(%rcx), %edx	# *_13, _15
# problem68.c:13:                 num1[j++] = s[i];
	cltq
	movb	%dl, -44(%rbp,%rax)	# _15, num1[j.0_14]
	jmp	.L5	#
.L4:
# problem68.c:15:                 num2[j++] = s[i];
	movl	-48(%rbp), %eax	# i, tmp115
	movslq	%eax, %rdx	# tmp115, _16
	movq	-72(%rbp), %rax	# s, tmp116
	leaq	(%rdx,%rax), %rcx	#, _17
# problem68.c:15:                 num2[j++] = s[i];
	movl	-52(%rbp), %eax	# j, j.1_18
	leal	1(%rax), %edx	#, tmp117
	movl	%edx, -52(%rbp)	# tmp117, j
# problem68.c:15:                 num2[j++] = s[i];
	movzbl	(%rcx), %edx	# *_17, _19
# problem68.c:15:                 num2[j++] = s[i];
	cltq
	movb	%dl, -34(%rbp,%rax)	# _19, num2[j.1_18]
	jmp	.L5	#
.L3:
# problem68.c:18:             if (is12 == 0 && j > 0) {
	cmpl	$0, -56(%rbp)	#, is12
	jne	.L5	#,
# problem68.c:18:             if (is12 == 0 && j > 0) {
	cmpl	$0, -52(%rbp)	#, j
	jle	.L5	#,
# problem68.c:19:                 is12 = 1;
	movl	$1, -56(%rbp)	#, is12
# problem68.c:20:                 j = 0;
	movl	$0, -52(%rbp)	#, j
.L5:
# problem68.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	addl	$1, -48(%rbp)	#, i
.L2:
# problem68.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	movl	-48(%rbp), %eax	# i, tmp119
	movslq	%eax, %rdx	# tmp119, _20
	movq	-72(%rbp), %rax	# s, tmp120
	addq	%rdx, %rax	# _20, _21
	movzbl	(%rax), %eax	# *_21, _22
# problem68.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	testb	%al, %al	# _22
	jne	.L6	#,
# problem68.c:24:     return n - atoi(num1) - atoi(num2);
	leaq	-44(%rbp), %rax	#, tmp121
	movq	%rax, %rdi	# tmp121,
	call	atoi@PLT	#
	movl	%eax, %edx	#, _23
# problem68.c:24:     return n - atoi(num1) - atoi(num2);
	movl	-76(%rbp), %eax	# n, tmp122
	subl	%edx, %eax	# _23, tmp122
	movl	%eax, %ebx	# tmp122, _24
# problem68.c:24:     return n - atoi(num1) - atoi(num2);
	leaq	-34(%rbp), %rax	#, tmp123
	movq	%rax, %rdi	# tmp123,
	call	atoi@PLT	#
	movl	%eax, %edx	#, _25
# problem68.c:24:     return n - atoi(num1) - atoi(num2);
	movl	%ebx, %eax	# _24, _24
	subl	%edx, %eax	# _25, _24
# problem68.c:25: }
	movq	-24(%rbp), %rdx	# D.3049, tmp126
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp126
	je	.L8	#,
	call	__stack_chk_fail@PLT	#
.L8:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"5 apples and 6 oranges"
.LC1:
	.string	"problem68.c"
	.align 8
.LC2:
	.string	"func0(\"5 apples and 6 oranges\", 19) == 8"
	.align 8
.LC3:
	.string	"func0(\"5 apples and 6 oranges\", 21) == 10"
.LC4:
	.string	"0 apples and 1 oranges"
	.align 8
.LC5:
	.string	"func0(\"0 apples and 1 oranges\", 3) == 2"
.LC6:
	.string	"1 apples and 0 oranges"
	.align 8
.LC7:
	.string	"func0(\"1 apples and 0 oranges\", 3) == 2"
.LC8:
	.string	"2 apples and 3 oranges"
	.align 8
.LC9:
	.string	"func0(\"2 apples and 3 oranges\", 100) == 95"
	.align 8
.LC10:
	.string	"func0(\"2 apples and 3 oranges\", 5) == 0"
.LC11:
	.string	"1 apples and 100 oranges"
	.align 8
.LC12:
	.string	"func0(\"1 apples and 100 oranges\", 120) == 19"
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
# problem68.c:32:     assert(func0("5 apples and 6 oranges", 19) == 8);
	movl	$19, %esi	#,
	leaq	.LC0(%rip), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	call	func0	#
	cmpl	$8, %eax	#, _1
	je	.L10	#,
# problem68.c:32:     assert(func0("5 apples and 6 oranges", 19) == 8);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp92
	movq	%rax, %rcx	# tmp92,
	movl	$32, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp93
	movq	%rax, %rsi	# tmp93,
	leaq	.LC2(%rip), %rax	#, tmp94
	movq	%rax, %rdi	# tmp94,
	call	__assert_fail@PLT	#
.L10:
# problem68.c:33:     assert(func0("5 apples and 6 oranges", 21) == 10);
	movl	$21, %esi	#,
	leaq	.LC0(%rip), %rax	#, tmp95
	movq	%rax, %rdi	# tmp95,
	call	func0	#
	cmpl	$10, %eax	#, _2
	je	.L11	#,
# problem68.c:33:     assert(func0("5 apples and 6 oranges", 21) == 10);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp96
	movq	%rax, %rcx	# tmp96,
	movl	$33, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp97
	movq	%rax, %rsi	# tmp97,
	leaq	.LC3(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	__assert_fail@PLT	#
.L11:
# problem68.c:34:     assert(func0("0 apples and 1 oranges", 3) == 2);
	movl	$3, %esi	#,
	leaq	.LC4(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	func0	#
	cmpl	$2, %eax	#, _3
	je	.L12	#,
# problem68.c:34:     assert(func0("0 apples and 1 oranges", 3) == 2);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp100
	movq	%rax, %rcx	# tmp100,
	movl	$34, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp101
	movq	%rax, %rsi	# tmp101,
	leaq	.LC5(%rip), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	__assert_fail@PLT	#
.L12:
# problem68.c:35:     assert(func0("1 apples and 0 oranges", 3) == 2);
	movl	$3, %esi	#,
	leaq	.LC6(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	func0	#
	cmpl	$2, %eax	#, _4
	je	.L13	#,
# problem68.c:35:     assert(func0("1 apples and 0 oranges", 3) == 2);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp104
	movq	%rax, %rcx	# tmp104,
	movl	$35, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	leaq	.LC7(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	__assert_fail@PLT	#
.L13:
# problem68.c:36:     assert(func0("2 apples and 3 oranges", 100) == 95);
	movl	$100, %esi	#,
	leaq	.LC8(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	func0	#
	cmpl	$95, %eax	#, _5
	je	.L14	#,
# problem68.c:36:     assert(func0("2 apples and 3 oranges", 100) == 95);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp108
	movq	%rax, %rcx	# tmp108,
	movl	$36, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp109
	movq	%rax, %rsi	# tmp109,
	leaq	.LC9(%rip), %rax	#, tmp110
	movq	%rax, %rdi	# tmp110,
	call	__assert_fail@PLT	#
.L14:
# problem68.c:37:     assert(func0("2 apples and 3 oranges", 5) == 0);
	movl	$5, %esi	#,
	leaq	.LC8(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	func0	#
	testl	%eax, %eax	# _6
	je	.L15	#,
# problem68.c:37:     assert(func0("2 apples and 3 oranges", 5) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp112
	movq	%rax, %rcx	# tmp112,
	movl	$37, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp113
	movq	%rax, %rsi	# tmp113,
	leaq	.LC10(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	__assert_fail@PLT	#
.L15:
# problem68.c:38:     assert(func0("1 apples and 100 oranges", 120) == 19);
	movl	$120, %esi	#,
	leaq	.LC11(%rip), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	func0	#
	cmpl	$19, %eax	#, _7
	je	.L16	#,
# problem68.c:38:     assert(func0("1 apples and 100 oranges", 120) == 19);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp116
	movq	%rax, %rcx	# tmp116,
	movl	$38, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp117
	movq	%rax, %rsi	# tmp117,
	leaq	.LC12(%rip), %rax	#, tmp118
	movq	%rax, %rdi	# tmp118,
	call	__assert_fail@PLT	#
.L16:
# problem68.c:40:     return 0;
	movl	$0, %eax	#, _23
# problem68.c:41: }
	popq	%rbp	#
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
