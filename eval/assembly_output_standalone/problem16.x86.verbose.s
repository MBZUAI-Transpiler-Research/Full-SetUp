	.file	"code.c"
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
# eval/problem16//code.c:5:     int len = 2; 
	movl	$2, -28(%rbp)	#, len
# eval/problem16//code.c:6:     for (int i = 1; i <= n; ++i) {
	movl	$1, -24(%rbp)	#, i
# eval/problem16//code.c:6:     for (int i = 1; i <= n; ++i) {
	jmp	.L2	#
.L3:
# eval/problem16//code.c:7:         len += snprintf(NULL, 0, " %d", i);
	movl	-24(%rbp), %eax	# i, tmp90
	movl	%eax, %ecx	# tmp90,
	leaq	.LC0(%rip), %rax	#, tmp91
	movq	%rax, %rdx	# tmp91,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	movl	$0, %eax	#,
	call	snprintf@PLT	#
# eval/problem16//code.c:7:         len += snprintf(NULL, 0, " %d", i);
	addl	%eax, -28(%rbp)	# _30, len
# eval/problem16//code.c:6:     for (int i = 1; i <= n; ++i) {
	addl	$1, -24(%rbp)	#, i
.L2:
# eval/problem16//code.c:6:     for (int i = 1; i <= n; ++i) {
	movl	-24(%rbp), %eax	# i, tmp92
	cmpl	-36(%rbp), %eax	# n, tmp92
	jle	.L3	#,
# eval/problem16//code.c:10:     char *out = malloc(len);
	movl	-28(%rbp), %eax	# len, tmp93
	cltq
	movq	%rax, %rdi	# _1,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp94, out
# eval/problem16//code.c:11:     if (!out) {
	cmpq	$0, -8(%rbp)	#, out
	jne	.L4	#,
# eval/problem16//code.c:12:         return NULL;
	movl	$0, %eax	#, _8
	jmp	.L5	#
.L4:
# eval/problem16//code.c:15:     char *ptr = out;
	movq	-8(%rbp), %rax	# out, tmp95
	movq	%rax, -16(%rbp)	# tmp95, ptr
# eval/problem16//code.c:16:     ptr += sprintf(ptr, "0");
	movq	-16(%rbp), %rax	# ptr, tmp96
	leaq	.LC1(%rip), %rdx	#, tmp97
	movq	%rdx, %rsi	# tmp97,
	movq	%rax, %rdi	# tmp96,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# eval/problem16//code.c:16:     ptr += sprintf(ptr, "0");
	cltq
# eval/problem16//code.c:16:     ptr += sprintf(ptr, "0");
	addq	%rax, -16(%rbp)	# _2, ptr
# eval/problem16//code.c:17:     for (int i = 1; i <= n; ++i) {
	movl	$1, -20(%rbp)	#, i
# eval/problem16//code.c:17:     for (int i = 1; i <= n; ++i) {
	jmp	.L6	#
.L7:
# eval/problem16//code.c:18:         ptr += sprintf(ptr, " %d", i);
	movl	-20(%rbp), %edx	# i, tmp98
	movq	-16(%rbp), %rax	# ptr, tmp99
	leaq	.LC0(%rip), %rcx	#, tmp100
	movq	%rcx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp99,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# eval/problem16//code.c:18:         ptr += sprintf(ptr, " %d", i);
	cltq
# eval/problem16//code.c:18:         ptr += sprintf(ptr, " %d", i);
	addq	%rax, -16(%rbp)	# _3, ptr
# eval/problem16//code.c:17:     for (int i = 1; i <= n; ++i) {
	addl	$1, -20(%rbp)	#, i
.L6:
# eval/problem16//code.c:17:     for (int i = 1; i <= n; ++i) {
	movl	-20(%rbp), %eax	# i, tmp101
	cmpl	-36(%rbp), %eax	# n, tmp101
	jle	.L7	#,
# eval/problem16//code.c:20:     return out;
	movq	-8(%rbp), %rax	# out, _8
.L5:
# eval/problem16//code.c:21: }
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
