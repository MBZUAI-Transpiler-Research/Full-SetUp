	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
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
# code.c:7:     int len_a = strlen(a);
	movq	-40(%rbp), %rax	# a, tmp101
	movq	%rax, %rdi	# tmp101,
	call	strlen@PLT	#
# code.c:7:     int len_a = strlen(a);
	movl	%eax, -16(%rbp)	# _1, len_a
# code.c:8:     int len_b = strlen(b);
	movq	-48(%rbp), %rax	# b, tmp102
	movq	%rax, %rdi	# tmp102,
	call	strlen@PLT	#
# code.c:8:     int len_b = strlen(b);
	movl	%eax, -12(%rbp)	# _2, len_b
# code.c:9:     char *temp = (char *)malloc(2 * len_b + 1);
	movl	-12(%rbp), %eax	# len_b, tmp103
	addl	%eax, %eax	# _3
# code.c:9:     char *temp = (char *)malloc(2 * len_b + 1);
	addl	$1, %eax	#, _4
# code.c:9:     char *temp = (char *)malloc(2 * len_b + 1);
	cltq
	movq	%rax, %rdi	# _5,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp104, temp
# code.c:11:     for (int i = 0; i < len_b; i++) {
	movl	$0, -20(%rbp)	#, i
# code.c:11:     for (int i = 0; i < len_b; i++) {
	jmp	.L2	#
.L5:
# code.c:12:         strncpy(temp, b + i, len_b - i);
	movl	-12(%rbp), %eax	# len_b, tmp105
	subl	-20(%rbp), %eax	# i, _6
# code.c:12:         strncpy(temp, b + i, len_b - i);
	movslq	%eax, %rdx	# _6, _7
	movl	-20(%rbp), %eax	# i, tmp106
	movslq	%eax, %rcx	# tmp106, _8
	movq	-48(%rbp), %rax	# b, tmp107
	addq	%rax, %rcx	# tmp107, _9
	movq	-8(%rbp), %rax	# temp, tmp108
	movq	%rcx, %rsi	# _9,
	movq	%rax, %rdi	# tmp108,
	call	strncpy@PLT	#
# code.c:13:         strncpy(temp + len_b - i, b, i);
	movl	-20(%rbp), %eax	# i, tmp109
	movslq	%eax, %rdx	# tmp109, _10
# code.c:13:         strncpy(temp + len_b - i, b, i);
	movl	-12(%rbp), %eax	# len_b, tmp110
	movslq	%eax, %rcx	# tmp110, _11
	movl	-20(%rbp), %eax	# i, tmp111
	cltq
	subq	%rax, %rcx	# _12, _13
# code.c:13:         strncpy(temp + len_b - i, b, i);
	movq	-8(%rbp), %rax	# temp, tmp112
	addq	%rax, %rcx	# tmp112, _14
	movq	-48(%rbp), %rax	# b, tmp113
	movq	%rax, %rsi	# tmp113,
	movq	%rcx, %rdi	# _14,
	call	strncpy@PLT	#
# code.c:14:         temp[len_b] = '\0';
	movl	-12(%rbp), %eax	# len_b, tmp114
	movslq	%eax, %rdx	# tmp114, _15
	movq	-8(%rbp), %rax	# temp, tmp115
	addq	%rdx, %rax	# _15, _16
# code.c:14:         temp[len_b] = '\0';
	movb	$0, (%rax)	#, *_16
# code.c:15:         if (strstr(a, temp)) {
	movq	-8(%rbp), %rdx	# temp, tmp116
	movq	-40(%rbp), %rax	# a, tmp117
	movq	%rdx, %rsi	# tmp116,
	movq	%rax, %rdi	# tmp117,
	call	strstr@PLT	#
# code.c:15:         if (strstr(a, temp)) {
	testq	%rax, %rax	# _17
	je	.L3	#,
# code.c:16:             free(temp);
	movq	-8(%rbp), %rax	# temp, tmp118
	movq	%rax, %rdi	# tmp118,
	call	free@PLT	#
# code.c:17:             return true;
	movl	$1, %eax	#, _19
	jmp	.L4	#
.L3:
# code.c:11:     for (int i = 0; i < len_b; i++) {
	addl	$1, -20(%rbp)	#, i
.L2:
# code.c:11:     for (int i = 0; i < len_b; i++) {
	movl	-20(%rbp), %eax	# i, tmp119
	cmpl	-12(%rbp), %eax	# len_b, tmp119
	jl	.L5	#,
# code.c:21:     free(temp);
	movq	-8(%rbp), %rax	# temp, tmp120
	movq	%rax, %rdi	# tmp120,
	call	free@PLT	#
# code.c:22:     return false;
	movl	$0, %eax	#, _19
.L4:
# code.c:23: }
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
