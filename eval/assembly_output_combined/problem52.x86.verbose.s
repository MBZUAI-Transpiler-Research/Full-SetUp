	.file	"problem52.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"AEIOUaeiou"
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
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# text, text
# problem52.c:6:     const char *vowels = "AEIOUaeiou";
	leaq	.LC0(%rip), %rax	#, tmp88
	movq	%rax, -8(%rbp)	# tmp88, vowels
# problem52.c:7:     char *out = text;
	movq	-24(%rbp), %rax	# text, tmp89
	movq	%rax, -16(%rbp)	# tmp89, out
# problem52.c:8:     while (*text != '\0') {
	jmp	.L2	#
.L4:
# problem52.c:9:         if (strchr(vowels, *text) == NULL) {
	movq	-24(%rbp), %rax	# text, tmp90
	movzbl	(%rax), %eax	# *text_7, _1
# problem52.c:9:         if (strchr(vowels, *text) == NULL) {
	movsbl	%al, %edx	# _1, _2
	movq	-8(%rbp), %rax	# vowels, tmp91
	movl	%edx, %esi	# _2,
	movq	%rax, %rdi	# tmp91,
	call	strchr@PLT	#
# problem52.c:9:         if (strchr(vowels, *text) == NULL) {
	testq	%rax, %rax	# _3
	jne	.L3	#,
# problem52.c:10:             *out++ = *text;
	movq	-16(%rbp), %rax	# out, out.0_4
	leaq	1(%rax), %rdx	#, tmp92
	movq	%rdx, -16(%rbp)	# tmp92, out
# problem52.c:10:             *out++ = *text;
	movq	-24(%rbp), %rdx	# text, tmp93
	movzbl	(%rdx), %edx	# *text_7, _5
# problem52.c:10:             *out++ = *text;
	movb	%dl, (%rax)	# _5, *out.0_4
.L3:
# problem52.c:12:         text++;
	addq	$1, -24(%rbp)	#, text
.L2:
# problem52.c:8:     while (*text != '\0') {
	movq	-24(%rbp), %rax	# text, tmp94
	movzbl	(%rax), %eax	# *text_7, _6
# problem52.c:8:     while (*text != '\0') {
	testb	%al, %al	# _6
	jne	.L4	#,
# problem52.c:14:     *out = '\0';
	movq	-16(%rbp), %rax	# out, tmp95
	movb	$0, (%rax)	#, *out_9
# problem52.c:15: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC1:
	.string	"problem52.c"
.LC2:
	.string	"strcmp(test1, \"\") == 0"
.LC3:
	.string	"bcdf\nghjklm"
	.align 8
.LC4:
	.string	"strcmp(test2, \"bcdf\\nghjklm\") == 0"
.LC5:
	.string	"fdcb"
.LC6:
	.string	"strcmp(test3, \"fdcb\") == 0"
.LC7:
	.string	"strcmp(test4, \"\") == 0"
.LC8:
	.string	"cB"
.LC9:
	.string	"strcmp(test5, \"cB\") == 0"
.LC10:
	.string	"strcmp(test6, \"cB\") == 0"
.LC11:
	.string	"ybcd"
.LC12:
	.string	"strcmp(test7, \"ybcd\") == 0"
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
	subq	$64, %rsp	#,
# problem52.c:23: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp132
	movq	%rax, -8(%rbp)	# tmp132, D.3978
	xorl	%eax, %eax	# tmp132
# problem52.c:24:     char test1[] = "";
	movb	$0, -54(%rbp)	#, test1
# problem52.c:25:     func0(test1);
	leaq	-54(%rbp), %rax	#, tmp93
	movq	%rax, %rdi	# tmp93,
	call	func0	#
# problem52.c:26:     assert(strcmp(test1, "") == 0);
	movzbl	-54(%rbp), %eax	# MEM[(const unsigned char * {ref-all})&test1], _11
	movzbl	%al, %eax	# _11, _1
	testl	%eax, %eax	# _1
	je	.L6	#,
# problem52.c:26:     assert(strcmp(test1, "") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp94
	movq	%rax, %rcx	# tmp94,
	movl	$26, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp95
	movq	%rax, %rsi	# tmp95,
	leaq	.LC2(%rip), %rax	#, tmp96
	movq	%rax, %rdi	# tmp96,
	call	__assert_fail@PLT	#
.L6:
# problem52.c:28:     char test2[] = "abcdef\nghijklm";
	movabsq	$7424859521335648865, %rax	#, tmp135
	movq	%rax, -23(%rbp)	# tmp135, test2
	movabsq	$30799981064054887, %rax	#, tmp136
	movq	%rax, -16(%rbp)	# tmp136, test2
# problem52.c:29:     func0(test2);
	leaq	-23(%rbp), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	func0	#
# problem52.c:30:     assert(strcmp(test2, "bcdf\nghjklm") == 0);
	leaq	-23(%rbp), %rax	#, tmp98
	leaq	.LC3(%rip), %rdx	#, tmp99
	movq	%rdx, %rsi	# tmp99,
	movq	%rax, %rdi	# tmp98,
	call	strcmp@PLT	#
# problem52.c:30:     assert(strcmp(test2, "bcdf\nghjklm") == 0);
	testl	%eax, %eax	# _2
	je	.L7	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp100
	movq	%rax, %rcx	# tmp100,
	movl	$30, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp101
	movq	%rax, %rsi	# tmp101,
	leaq	.LC4(%rip), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	__assert_fail@PLT	#
.L7:
# problem52.c:32:     char test3[] = "fedcba";
	movl	$1667523942, -30(%rbp)	#, test3
	movl	$6382179, -27(%rbp)	#, test3
# problem52.c:33:     func0(test3);
	leaq	-30(%rbp), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	func0	#
# problem52.c:34:     assert(strcmp(test3, "fdcb") == 0);
	leaq	-30(%rbp), %rax	#, tmp104
	leaq	.LC5(%rip), %rdx	#, tmp105
	movq	%rdx, %rsi	# tmp105,
	movq	%rax, %rdi	# tmp104,
	call	strcmp@PLT	#
# problem52.c:34:     assert(strcmp(test3, "fdcb") == 0);
	testl	%eax, %eax	# _3
	je	.L8	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp106
	movq	%rax, %rcx	# tmp106,
	movl	$34, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp107
	movq	%rax, %rsi	# tmp107,
	leaq	.LC6(%rip), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	call	__assert_fail@PLT	#
.L8:
# problem52.c:36:     char test4[] = "eeeee";
	movl	$1701143909, -48(%rbp)	#, test4
	movw	$101, -44(%rbp)	#, test4
# problem52.c:37:     func0(test4);
	leaq	-48(%rbp), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	func0	#
# problem52.c:38:     assert(strcmp(test4, "") == 0);
	movzbl	-48(%rbp), %eax	# MEM[(const unsigned char * {ref-all})&test4], _21
	movzbl	%al, %eax	# _21, _4
	testl	%eax, %eax	# _4
	je	.L9	#,
# problem52.c:38:     assert(strcmp(test4, "") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp110
	movq	%rax, %rcx	# tmp110,
	movl	$38, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp111
	movq	%rax, %rsi	# tmp111,
	leaq	.LC7(%rip), %rax	#, tmp112
	movq	%rax, %rdi	# tmp112,
	call	__assert_fail@PLT	#
.L9:
# problem52.c:40:     char test5[] = "acBAA";
	movl	$1094869857, -42(%rbp)	#, test5
	movw	$65, -38(%rbp)	#, test5
# problem52.c:41:     func0(test5);
	leaq	-42(%rbp), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	call	func0	#
# problem52.c:42:     assert(strcmp(test5, "cB") == 0);
	leaq	-42(%rbp), %rax	#, tmp114
	leaq	.LC8(%rip), %rdx	#, tmp115
	movq	%rdx, %rsi	# tmp115,
	movq	%rax, %rdi	# tmp114,
	call	strcmp@PLT	#
# problem52.c:42:     assert(strcmp(test5, "cB") == 0);
	testl	%eax, %eax	# _5
	je	.L10	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp116
	movq	%rax, %rcx	# tmp116,
	movl	$42, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp117
	movq	%rax, %rsi	# tmp117,
	leaq	.LC9(%rip), %rax	#, tmp118
	movq	%rax, %rdi	# tmp118,
	call	__assert_fail@PLT	#
.L10:
# problem52.c:44:     char test6[] = "EcBOO";
	movl	$1329750853, -36(%rbp)	#, test6
	movw	$79, -32(%rbp)	#, test6
# problem52.c:45:     func0(test6);
	leaq	-36(%rbp), %rax	#, tmp119
	movq	%rax, %rdi	# tmp119,
	call	func0	#
# problem52.c:46:     assert(strcmp(test6, "cB") == 0);
	leaq	-36(%rbp), %rax	#, tmp120
	leaq	.LC8(%rip), %rdx	#, tmp121
	movq	%rdx, %rsi	# tmp121,
	movq	%rax, %rdi	# tmp120,
	call	strcmp@PLT	#
# problem52.c:46:     assert(strcmp(test6, "cB") == 0);
	testl	%eax, %eax	# _6
	je	.L11	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp122
	movq	%rax, %rcx	# tmp122,
	movl	$46, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp123
	movq	%rax, %rsi	# tmp123,
	leaq	.LC10(%rip), %rax	#, tmp124
	movq	%rax, %rdi	# tmp124,
	call	__assert_fail@PLT	#
.L11:
# problem52.c:48:     char test7[] = "ybcd";
	movl	$1684234873, -53(%rbp)	#, test7
	movb	$0, -49(%rbp)	#, test7
# problem52.c:49:     func0(test7);
	leaq	-53(%rbp), %rax	#, tmp125
	movq	%rax, %rdi	# tmp125,
	call	func0	#
# problem52.c:50:     assert(strcmp(test7, "ybcd") == 0);
	leaq	-53(%rbp), %rax	#, tmp126
	leaq	.LC11(%rip), %rdx	#, tmp127
	movq	%rdx, %rsi	# tmp127,
	movq	%rax, %rdi	# tmp126,
	call	strcmp@PLT	#
# problem52.c:50:     assert(strcmp(test7, "ybcd") == 0);
	testl	%eax, %eax	# _7
	je	.L12	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp128
	movq	%rax, %rcx	# tmp128,
	movl	$50, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp129
	movq	%rax, %rsi	# tmp129,
	leaq	.LC12(%rip), %rax	#, tmp130
	movq	%rax, %rdi	# tmp130,
	call	__assert_fail@PLT	#
.L12:
# problem52.c:52:     return 0;
	movl	$0, %eax	#, _32
# problem52.c:53: }
	movq	-8(%rbp), %rdx	# D.3978, tmp133
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp133
	je	.L14	#,
	call	__stack_chk_fail@PLT	#
.L14:
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
