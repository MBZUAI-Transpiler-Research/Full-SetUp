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
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# str, str
	movq	%rsi, -64(%rbp)	# count, count
# code.c:6:     int len = strlen(str);
	movq	-56(%rbp), %rax	# str, tmp106
	movq	%rax, %rdi	# tmp106,
	call	strlen@PLT	#
# code.c:6:     int len = strlen(str);
	movl	%eax, -44(%rbp)	# _1, len
# code.c:7:     char **out = malloc(len * sizeof(char *));
	movl	-44(%rbp), %eax	# len, tmp107
	cltq
	salq	$3, %rax	#, _3
	movq	%rax, %rdi	# _3,
	call	malloc@PLT	#
	movq	%rax, -32(%rbp)	# tmp108, out
# code.c:9:     char *current = malloc(len + 1);
	movl	-44(%rbp), %eax	# len, tmp109
	addl	$1, %eax	#, _4
# code.c:9:     char *current = malloc(len + 1);
	cltq
	movq	%rax, %rdi	# _5,
	call	malloc@PLT	#
	movq	%rax, -40(%rbp)	# tmp110, current
# code.c:10:     current[0] = '\0';
	movq	-40(%rbp), %rax	# current, tmp111
	movb	$0, (%rax)	#, *current_32
# code.c:12:     for (int i = 0; i < len; ++i) {
	movl	$0, -48(%rbp)	#, i
# code.c:12:     for (int i = 0; i < len; ++i) {
	jmp	.L2	#
.L3:
# code.c:13:         size_t current_len = strlen(current);
	movq	-40(%rbp), %rax	# current, tmp112
	movq	%rax, %rdi	# tmp112,
	call	strlen@PLT	#
	movq	%rax, -24(%rbp)	# tmp113, current_len
# code.c:14:         current = realloc(current, current_len + 2);
	movq	-24(%rbp), %rax	# current_len, tmp114
	leaq	2(%rax), %rdx	#, _6
	movq	-40(%rbp), %rax	# current, tmp115
	movq	%rdx, %rsi	# _6,
	movq	%rax, %rdi	# tmp115,
	call	realloc@PLT	#
	movq	%rax, -40(%rbp)	# tmp116, current
# code.c:15:         current[current_len] = str[i];
	movl	-48(%rbp), %eax	# i, tmp117
	movslq	%eax, %rdx	# tmp117, _7
	movq	-56(%rbp), %rax	# str, tmp118
	addq	%rdx, %rax	# _7, _8
# code.c:15:         current[current_len] = str[i];
	movq	-40(%rbp), %rcx	# current, tmp119
	movq	-24(%rbp), %rdx	# current_len, tmp120
	addq	%rcx, %rdx	# tmp119, _9
# code.c:15:         current[current_len] = str[i];
	movzbl	(%rax), %eax	# *_8, _10
# code.c:15:         current[current_len] = str[i];
	movb	%al, (%rdx)	# _10, *_9
# code.c:16:         current[current_len + 1] = '\0';
	movq	-24(%rbp), %rax	# current_len, tmp121
	leaq	1(%rax), %rdx	#, _11
	movq	-40(%rbp), %rax	# current, tmp122
	addq	%rdx, %rax	# _11, _12
# code.c:16:         current[current_len + 1] = '\0';
	movb	$0, (%rax)	#, *_12
# code.c:18:         out[i] = malloc(strlen(current) + 1);
	movq	-40(%rbp), %rax	# current, tmp123
	movq	%rax, %rdi	# tmp123,
	call	strlen@PLT	#
# code.c:18:         out[i] = malloc(strlen(current) + 1);
	addq	$1, %rax	#, _14
# code.c:18:         out[i] = malloc(strlen(current) + 1);
	movl	-48(%rbp), %edx	# i, tmp124
	movslq	%edx, %rdx	# tmp124, _15
	leaq	0(,%rdx,8), %rcx	#, _16
	movq	-32(%rbp), %rdx	# out, tmp125
	leaq	(%rcx,%rdx), %rbx	#, _17
# code.c:18:         out[i] = malloc(strlen(current) + 1);
	movq	%rax, %rdi	# _14,
	call	malloc@PLT	#
# code.c:18:         out[i] = malloc(strlen(current) + 1);
	movq	%rax, (%rbx)	# _18, *_17
# code.c:19:         strcpy(out[i], current);
	movl	-48(%rbp), %eax	# i, tmp127
	cltq
	leaq	0(,%rax,8), %rdx	#, _20
	movq	-32(%rbp), %rax	# out, tmp128
	addq	%rdx, %rax	# _20, _21
# code.c:19:         strcpy(out[i], current);
	movq	(%rax), %rax	# *_21, _22
	movq	-40(%rbp), %rdx	# current, tmp129
	movq	%rdx, %rsi	# tmp129,
	movq	%rax, %rdi	# _22,
	call	strcpy@PLT	#
# code.c:12:     for (int i = 0; i < len; ++i) {
	addl	$1, -48(%rbp)	#, i
.L2:
# code.c:12:     for (int i = 0; i < len; ++i) {
	movl	-48(%rbp), %eax	# i, tmp130
	cmpl	-44(%rbp), %eax	# len, tmp130
	jl	.L3	#,
# code.c:21:     free(current);
	movq	-40(%rbp), %rax	# current, tmp131
	movq	%rax, %rdi	# tmp131,
	call	free@PLT	#
# code.c:23:     *count = len;
	movq	-64(%rbp), %rax	# count, tmp132
	movl	-44(%rbp), %edx	# len, tmp133
	movl	%edx, (%rax)	# tmp133, *count_36(D)
# code.c:24:     return out;
	movq	-32(%rbp), %rax	# out, _38
# code.c:25: }
	movq	-8(%rbp), %rbx	#,
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
