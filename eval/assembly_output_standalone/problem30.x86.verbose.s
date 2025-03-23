	.file	"code.c"
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
	movq	%rdi, -24(%rbp)	# strings, strings
	movl	%esi, -28(%rbp)	# count, count
	movq	%rdx, -40(%rbp)	# prefix, prefix
	movq	%rcx, -48(%rbp)	# out, out
# eval/problem30//code.c:6:     int prefix_length = strlen(prefix);
	movq	-40(%rbp), %rax	# prefix, tmp103
	movq	%rax, %rdi	# tmp103,
	call	strlen@PLT	#
# eval/problem30//code.c:6:     int prefix_length = strlen(prefix);
	movl	%eax, -4(%rbp)	# _1, prefix_length
# eval/problem30//code.c:7:     *out = (char**)malloc(count * sizeof(char*));
	movl	-28(%rbp), %eax	# count, tmp104
	cltq
	salq	$3, %rax	#, _3
	movq	%rax, %rdi	# _3,
	call	malloc@PLT	#
	movq	%rax, %rdx	# tmp105, _4
# eval/problem30//code.c:7:     *out = (char**)malloc(count * sizeof(char*));
	movq	-48(%rbp), %rax	# out, tmp106
	movq	%rdx, (%rax)	# _4, *out_30(D)
# eval/problem30//code.c:8:     int out_count = 0;
	movl	$0, -12(%rbp)	#, out_count
# eval/problem30//code.c:10:     for (int i = 0; i < count; i++) {
	movl	$0, -8(%rbp)	#, i
# eval/problem30//code.c:10:     for (int i = 0; i < count; i++) {
	jmp	.L2	#
.L4:
# eval/problem30//code.c:11:         if (strncmp(strings[i], prefix, prefix_length) == 0) {
	movl	-4(%rbp), %eax	# prefix_length, tmp107
	movslq	%eax, %rdx	# tmp107, _5
# eval/problem30//code.c:11:         if (strncmp(strings[i], prefix, prefix_length) == 0) {
	movl	-8(%rbp), %eax	# i, tmp108
	cltq
	leaq	0(,%rax,8), %rcx	#, _7
	movq	-24(%rbp), %rax	# strings, tmp109
	addq	%rcx, %rax	# _7, _8
# eval/problem30//code.c:11:         if (strncmp(strings[i], prefix, prefix_length) == 0) {
	movq	(%rax), %rax	# *_8, _9
	movq	-40(%rbp), %rcx	# prefix, tmp110
	movq	%rcx, %rsi	# tmp110,
	movq	%rax, %rdi	# _9,
	call	strncmp@PLT	#
# eval/problem30//code.c:11:         if (strncmp(strings[i], prefix, prefix_length) == 0) {
	testl	%eax, %eax	# _10
	jne	.L3	#,
# eval/problem30//code.c:12:             (*out)[out_count++] = strings[i];
	movl	-8(%rbp), %eax	# i, tmp111
	cltq
	leaq	0(,%rax,8), %rdx	#, _12
	movq	-24(%rbp), %rax	# strings, tmp112
	leaq	(%rdx,%rax), %rcx	#, _13
# eval/problem30//code.c:12:             (*out)[out_count++] = strings[i];
	movq	-48(%rbp), %rax	# out, tmp113
	movq	(%rax), %rsi	# *out_30(D), _14
# eval/problem30//code.c:12:             (*out)[out_count++] = strings[i];
	movl	-12(%rbp), %eax	# out_count, out_count.0_15
	leal	1(%rax), %edx	#, tmp114
	movl	%edx, -12(%rbp)	# tmp114, out_count
	cltq
# eval/problem30//code.c:12:             (*out)[out_count++] = strings[i];
	salq	$3, %rax	#, _17
	leaq	(%rsi,%rax), %rdx	#, _18
# eval/problem30//code.c:12:             (*out)[out_count++] = strings[i];
	movq	(%rcx), %rax	# *_13, _19
# eval/problem30//code.c:12:             (*out)[out_count++] = strings[i];
	movq	%rax, (%rdx)	# _19, *_18
.L3:
# eval/problem30//code.c:10:     for (int i = 0; i < count; i++) {
	addl	$1, -8(%rbp)	#, i
.L2:
# eval/problem30//code.c:10:     for (int i = 0; i < count; i++) {
	movl	-8(%rbp), %eax	# i, tmp115
	cmpl	-28(%rbp), %eax	# count, tmp115
	jl	.L4	#,
# eval/problem30//code.c:16:     return out_count;
	movl	-12(%rbp), %eax	# out_count, _34
# eval/problem30//code.c:17: }
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
