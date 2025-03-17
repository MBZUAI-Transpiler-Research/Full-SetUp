	.file	"problem16.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	" %d"
.LC1:
	.string	"0"
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
	movl	%edi, -36(%rbp)	# n, n
# problem16.c:5:     int len = 2; 
	movl	$2, -28(%rbp)	#, len
# problem16.c:6:     for (int i = 1; i <= n; ++i) {
	movl	$1, -24(%rbp)	#, i
# problem16.c:6:     for (int i = 1; i <= n; ++i) {
	jmp	.L2	#
.L3:
# problem16.c:7:         len += snprintf(NULL, 0, " %d", i);
	movl	-24(%rbp), %eax	# i, tmp90
	movl	%eax, %ecx	# tmp90,
	leaq	.LC0(%rip), %rax	#, tmp91
	movq	%rax, %rdx	# tmp91,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	movl	$0, %eax	#,
	call	snprintf@PLT	#
# problem16.c:7:         len += snprintf(NULL, 0, " %d", i);
	addl	%eax, -28(%rbp)	# _30, len
# problem16.c:6:     for (int i = 1; i <= n; ++i) {
	addl	$1, -24(%rbp)	#, i
.L2:
# problem16.c:6:     for (int i = 1; i <= n; ++i) {
	movl	-24(%rbp), %eax	# i, tmp92
	cmpl	-36(%rbp), %eax	# n, tmp92
	jle	.L3	#,
# problem16.c:10:     char *out = malloc(len);
	movl	-28(%rbp), %eax	# len, tmp93
	cltq
	movq	%rax, %rdi	# _1,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp94, out
# problem16.c:11:     if (!out) {
	cmpq	$0, -8(%rbp)	#, out
	jne	.L4	#,
# problem16.c:12:         return NULL;
	movl	$0, %eax	#, _8
	jmp	.L5	#
.L4:
# problem16.c:15:     char *ptr = out;
	movq	-8(%rbp), %rax	# out, tmp95
	movq	%rax, -16(%rbp)	# tmp95, ptr
# problem16.c:16:     ptr += sprintf(ptr, "0");
	movq	-16(%rbp), %rax	# ptr, tmp96
	leaq	.LC1(%rip), %rdx	#, tmp97
	movq	%rdx, %rsi	# tmp97,
	movq	%rax, %rdi	# tmp96,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# problem16.c:16:     ptr += sprintf(ptr, "0");
	cltq
# problem16.c:16:     ptr += sprintf(ptr, "0");
	addq	%rax, -16(%rbp)	# _2, ptr
# problem16.c:17:     for (int i = 1; i <= n; ++i) {
	movl	$1, -20(%rbp)	#, i
# problem16.c:17:     for (int i = 1; i <= n; ++i) {
	jmp	.L6	#
.L7:
# problem16.c:18:         ptr += sprintf(ptr, " %d", i);
	movl	-20(%rbp), %edx	# i, tmp98
	movq	-16(%rbp), %rax	# ptr, tmp99
	leaq	.LC0(%rip), %rcx	#, tmp100
	movq	%rcx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp99,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# problem16.c:18:         ptr += sprintf(ptr, " %d", i);
	cltq
# problem16.c:18:         ptr += sprintf(ptr, " %d", i);
	addq	%rax, -16(%rbp)	# _3, ptr
# problem16.c:17:     for (int i = 1; i <= n; ++i) {
	addl	$1, -20(%rbp)	#, i
.L6:
# problem16.c:17:     for (int i = 1; i <= n; ++i) {
	movl	-20(%rbp), %eax	# i, tmp101
	cmpl	-36(%rbp), %eax	# n, tmp101
	jle	.L7	#,
# problem16.c:20:     return out;
	movq	-8(%rbp), %rax	# out, _8
.L5:
# problem16.c:21: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC2:
	.string	"problem16.c"
.LC3:
	.string	"strcmp(result, \"0\") == 0"
.LC4:
	.string	"0 1 2 3"
	.align 8
.LC5:
	.string	"strcmp(result, \"0 1 2 3\") == 0"
.LC6:
	.string	"0 1 2 3 4 5 6 7 8 9 10"
	.align 8
.LC7:
	.string	"strcmp(result, \"0 1 2 3 4 5 6 7 8 9 10\") == 0"
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
# problem16.c:32:     result = func0(0);
	movl	$0, %edi	#,
	call	func0	#
	movq	%rax, -8(%rbp)	# tmp87, result
# problem16.c:33:     assert(strcmp(result, "0") == 0);
	movq	-8(%rbp), %rax	# result, tmp88
	leaq	.LC1(%rip), %rdx	#, tmp89
	movq	%rdx, %rsi	# tmp89,
	movq	%rax, %rdi	# tmp88,
	call	strcmp@PLT	#
# problem16.c:33:     assert(strcmp(result, "0") == 0);
	testl	%eax, %eax	# _1
	je	.L9	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp90
	movq	%rax, %rcx	# tmp90,
	movl	$33, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp91
	movq	%rax, %rsi	# tmp91,
	leaq	.LC3(%rip), %rax	#, tmp92
	movq	%rax, %rdi	# tmp92,
	call	__assert_fail@PLT	#
.L9:
# problem16.c:34:     free(result);
	movq	-8(%rbp), %rax	# result, tmp93
	movq	%rax, %rdi	# tmp93,
	call	free@PLT	#
# problem16.c:36:     result = func0(3);
	movl	$3, %edi	#,
	call	func0	#
	movq	%rax, -8(%rbp)	# tmp94, result
# problem16.c:37:     assert(strcmp(result, "0 1 2 3") == 0);
	movq	-8(%rbp), %rax	# result, tmp95
	leaq	.LC4(%rip), %rdx	#, tmp96
	movq	%rdx, %rsi	# tmp96,
	movq	%rax, %rdi	# tmp95,
	call	strcmp@PLT	#
# problem16.c:37:     assert(strcmp(result, "0 1 2 3") == 0);
	testl	%eax, %eax	# _2
	je	.L10	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp97
	movq	%rax, %rcx	# tmp97,
	movl	$37, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp98
	movq	%rax, %rsi	# tmp98,
	leaq	.LC5(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	__assert_fail@PLT	#
.L10:
# problem16.c:38:     free(result);
	movq	-8(%rbp), %rax	# result, tmp100
	movq	%rax, %rdi	# tmp100,
	call	free@PLT	#
# problem16.c:40:     result = func0(10);
	movl	$10, %edi	#,
	call	func0	#
	movq	%rax, -8(%rbp)	# tmp101, result
# problem16.c:41:     assert(strcmp(result, "0 1 2 3 4 5 6 7 8 9 10") == 0);
	movq	-8(%rbp), %rax	# result, tmp102
	leaq	.LC6(%rip), %rdx	#, tmp103
	movq	%rdx, %rsi	# tmp103,
	movq	%rax, %rdi	# tmp102,
	call	strcmp@PLT	#
# problem16.c:41:     assert(strcmp(result, "0 1 2 3 4 5 6 7 8 9 10") == 0);
	testl	%eax, %eax	# _3
	je	.L11	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp104
	movq	%rax, %rcx	# tmp104,
	movl	$41, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	leaq	.LC7(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	__assert_fail@PLT	#
.L11:
# problem16.c:42:     free(result);
	movq	-8(%rbp), %rax	# result, tmp107
	movq	%rax, %rdi	# tmp107,
	call	free@PLT	#
# problem16.c:44:     return 0;
	movl	$0, %eax	#, _17
# problem16.c:45: }
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
