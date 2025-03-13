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
	movq	%rdi, -24(%rbp)	# strings, strings
	movl	%esi, -28(%rbp)	# size, size
	movq	%rdx, -40(%rbp)	# substring, substring
	movq	%rcx, -48(%rbp)	# out_size, out_size
# code.c:6:     char **out = NULL;
	movq	$0, -8(%rbp)	#, out
# code.c:7:     int count = 0;
	movl	$0, -16(%rbp)	#, count
# code.c:8:     for (int i = 0; i < size; i++) {
	movl	$0, -12(%rbp)	#, i
# code.c:8:     for (int i = 0; i < size; i++) {
	jmp	.L2	#
.L4:
# code.c:9:         if (strstr(strings[i], substring) != NULL) {
	movl	-12(%rbp), %eax	# i, tmp99
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-24(%rbp), %rax	# strings, tmp100
	addq	%rdx, %rax	# _2, _3
# code.c:9:         if (strstr(strings[i], substring) != NULL) {
	movq	(%rax), %rax	# *_3, _4
	movq	-40(%rbp), %rdx	# substring, tmp101
	movq	%rdx, %rsi	# tmp101,
	movq	%rax, %rdi	# _4,
	call	strstr@PLT	#
# code.c:9:         if (strstr(strings[i], substring) != NULL) {
	testq	%rax, %rax	# _5
	je	.L3	#,
# code.c:10:             out = (char **)realloc(out, sizeof(char *) * (count + 1));
	movl	-16(%rbp), %eax	# count, tmp102
	addl	$1, %eax	#, _6
	cltq
# code.c:10:             out = (char **)realloc(out, sizeof(char *) * (count + 1));
	leaq	0(,%rax,8), %rdx	#, _8
	movq	-8(%rbp), %rax	# out, tmp103
	movq	%rdx, %rsi	# _8,
	movq	%rax, %rdi	# tmp103,
	call	realloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp104, out
# code.c:11:             out[count] = strings[i];
	movl	-12(%rbp), %eax	# i, tmp105
	cltq
	leaq	0(,%rax,8), %rdx	#, _10
	movq	-24(%rbp), %rax	# strings, tmp106
	addq	%rdx, %rax	# _10, _11
# code.c:11:             out[count] = strings[i];
	movl	-16(%rbp), %edx	# count, tmp107
	movslq	%edx, %rdx	# tmp107, _12
	leaq	0(,%rdx,8), %rcx	#, _13
	movq	-8(%rbp), %rdx	# out, tmp108
	addq	%rcx, %rdx	# _13, _14
# code.c:11:             out[count] = strings[i];
	movq	(%rax), %rax	# *_11, _15
# code.c:11:             out[count] = strings[i];
	movq	%rax, (%rdx)	# _15, *_14
# code.c:12:             count++;
	addl	$1, -16(%rbp)	#, count
.L3:
# code.c:8:     for (int i = 0; i < size; i++) {
	addl	$1, -12(%rbp)	#, i
.L2:
# code.c:8:     for (int i = 0; i < size; i++) {
	movl	-12(%rbp), %eax	# i, tmp109
	cmpl	-28(%rbp), %eax	# size, tmp109
	jl	.L4	#,
# code.c:15:     *out_size = count;
	movq	-48(%rbp), %rax	# out_size, tmp110
	movl	-16(%rbp), %edx	# count, tmp111
	movl	%edx, (%rax)	# tmp111, *out_size_28(D)
# code.c:16:     return out;
	movq	-8(%rbp), %rax	# out, _30
# code.c:17: }
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
