	.file	"problem12.c"
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
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# a, a
	movq	%rsi, -48(%rbp)	# b, b
# problem12.c:6:     int len_a = strlen(a);
	movq	-40(%rbp), %rax	# a, tmp99
	movq	%rax, %rdi	# tmp99,
	call	strlen@PLT	#
# problem12.c:6:     int len_a = strlen(a);
	movl	%eax, -20(%rbp)	# _1, len_a
# problem12.c:7:     int len_b = strlen(b);
	movq	-48(%rbp), %rax	# b, tmp100
	movq	%rax, %rdi	# tmp100,
	call	strlen@PLT	#
# problem12.c:7:     int len_b = strlen(b);
	movl	%eax, -16(%rbp)	# _2, len_b
# problem12.c:8:     int min_len = len_a < len_b ? len_a : len_b;
	movl	-16(%rbp), %edx	# len_b, tmp102
	movl	-20(%rbp), %eax	# len_a, tmp115
	cmpl	%eax, %edx	# tmp115, tmp102
	cmovle	%edx, %eax	# tmp102,, tmp101
	movl	%eax, -12(%rbp)	# tmp101, min_len
# problem12.c:9:     char *output = malloc((min_len + 1) * sizeof(char));
	movl	-12(%rbp), %eax	# min_len, tmp103
	addl	$1, %eax	#, _3
# problem12.c:9:     char *output = malloc((min_len + 1) * sizeof(char));
	cltq
	movq	%rax, %rdi	# _4,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp104, output
# problem12.c:10:     if (!output) return NULL;
	cmpq	$0, -8(%rbp)	#, output
	jne	.L2	#,
# problem12.c:10:     if (!output) return NULL;
	movl	$0, %eax	#, _16
	jmp	.L3	#
.L2:
# problem12.c:12:     for (int i = 0; i < min_len; i++) {
	movl	$0, -24(%rbp)	#, i
# problem12.c:12:     for (int i = 0; i < min_len; i++) {
	jmp	.L4	#
.L7:
# problem12.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	movl	-24(%rbp), %eax	# i, tmp105
	movslq	%eax, %rdx	# tmp105, _5
	movq	-40(%rbp), %rax	# a, tmp106
	addq	%rdx, %rax	# _5, _6
	movzbl	(%rax), %edx	# *_6, _7
# problem12.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	movl	-24(%rbp), %eax	# i, tmp107
	movslq	%eax, %rcx	# tmp107, _8
	movq	-48(%rbp), %rax	# b, tmp108
	addq	%rcx, %rax	# _8, _9
	movzbl	(%rax), %eax	# *_9, _10
# problem12.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	cmpb	%al, %dl	# _10, _7
	jne	.L5	#,
# problem12.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	movl	$48, %edx	#, iftmp.0_17
	jmp	.L6	#
.L5:
# problem12.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	movl	$49, %edx	#, iftmp.0_17
.L6:
# problem12.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	movl	-24(%rbp), %eax	# i, tmp109
	movslq	%eax, %rcx	# tmp109, _11
	movq	-8(%rbp), %rax	# output, tmp110
	addq	%rcx, %rax	# _11, _12
# problem12.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	movb	%dl, (%rax)	# iftmp.0_17, *_12
# problem12.c:12:     for (int i = 0; i < min_len; i++) {
	addl	$1, -24(%rbp)	#, i
.L4:
# problem12.c:12:     for (int i = 0; i < min_len; i++) {
	movl	-24(%rbp), %eax	# i, tmp111
	cmpl	-12(%rbp), %eax	# min_len, tmp111
	jl	.L7	#,
# problem12.c:15:     output[min_len] = '\0';
	movl	-12(%rbp), %eax	# min_len, tmp112
	movslq	%eax, %rdx	# tmp112, _13
	movq	-8(%rbp), %rax	# output, tmp113
	addq	%rdx, %rax	# _13, _14
# problem12.c:15:     output[min_len] = '\0';
	movb	$0, (%rax)	#, *_14
# problem12.c:16:     return output;
	movq	-8(%rbp), %rax	# output, _16
.L3:
# problem12.c:17: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"101010"
.LC1:
	.string	"111000"
.LC2:
	.string	"010010"
.LC3:
	.string	"problem12.c"
.LC4:
	.string	"strcmp(result, \"010010\") == 0"
.LC5:
	.string	"1"
.LC6:
	.string	"0"
.LC7:
	.string	"strcmp(result, \"0\") == 0"
.LC8:
	.string	"0000"
.LC9:
	.string	"0101"
.LC10:
	.string	"strcmp(result, \"0101\") == 0"
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
# problem12.c:29:     result = func0("111000", "101010");
	leaq	.LC0(%rip), %rax	#, tmp87
	movq	%rax, %rsi	# tmp87,
	leaq	.LC1(%rip), %rax	#, tmp88
	movq	%rax, %rdi	# tmp88,
	call	func0	#
	movq	%rax, -8(%rbp)	# tmp89, result
# problem12.c:30:     assert(strcmp(result, "010010") == 0);
	movq	-8(%rbp), %rax	# result, tmp90
	leaq	.LC2(%rip), %rdx	#, tmp91
	movq	%rdx, %rsi	# tmp91,
	movq	%rax, %rdi	# tmp90,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _1
	je	.L9	#,
# problem12.c:30:     assert(strcmp(result, "010010") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp92
	movq	%rax, %rcx	# tmp92,
	movl	$30, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp93
	movq	%rax, %rsi	# tmp93,
	leaq	.LC4(%rip), %rax	#, tmp94
	movq	%rax, %rdi	# tmp94,
	call	__assert_fail@PLT	#
.L9:
# problem12.c:31:     free(result);
	movq	-8(%rbp), %rax	# result, tmp95
	movq	%rax, %rdi	# tmp95,
	call	free@PLT	#
# problem12.c:33:     result = func0("1", "1");
	leaq	.LC5(%rip), %rax	#, tmp96
	movq	%rax, %rsi	# tmp96,
	leaq	.LC5(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	func0	#
	movq	%rax, -8(%rbp)	# tmp98, result
# problem12.c:34:     assert(strcmp(result, "0") == 0);
	movq	-8(%rbp), %rax	# result, tmp99
	leaq	.LC6(%rip), %rdx	#, tmp100
	movq	%rdx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp99,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _2
	je	.L10	#,
# problem12.c:34:     assert(strcmp(result, "0") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp101
	movq	%rax, %rcx	# tmp101,
	movl	$34, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp102
	movq	%rax, %rsi	# tmp102,
	leaq	.LC7(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	__assert_fail@PLT	#
.L10:
# problem12.c:35:     free(result);
	movq	-8(%rbp), %rax	# result, tmp104
	movq	%rax, %rdi	# tmp104,
	call	free@PLT	#
# problem12.c:37:     result = func0("0101", "0000");
	leaq	.LC8(%rip), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	leaq	.LC9(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	func0	#
	movq	%rax, -8(%rbp)	# tmp107, result
# problem12.c:38:     assert(strcmp(result, "0101") == 0);
	movq	-8(%rbp), %rax	# result, tmp108
	leaq	.LC9(%rip), %rdx	#, tmp109
	movq	%rdx, %rsi	# tmp109,
	movq	%rax, %rdi	# tmp108,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _3
	je	.L11	#,
# problem12.c:38:     assert(strcmp(result, "0101") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp110
	movq	%rax, %rcx	# tmp110,
	movl	$38, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp111
	movq	%rax, %rsi	# tmp111,
	leaq	.LC10(%rip), %rax	#, tmp112
	movq	%rax, %rdi	# tmp112,
	call	__assert_fail@PLT	#
.L11:
# problem12.c:39:     free(result);
	movq	-8(%rbp), %rax	# result, tmp113
	movq	%rax, %rdi	# tmp113,
	call	free@PLT	#
# problem12.c:41:     return 0;
	movl	$0, %eax	#, _17
# problem12.c:42: }
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
