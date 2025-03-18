	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	""
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# strings, strings
	movl	%esi, -44(%rbp)	# count, count
# eval/problem13//code.c:5:     char *out = "";
	leaq	.LC0(%rip), %rax	#, tmp92
	movq	%rax, -8(%rbp)	# tmp92, out
# eval/problem13//code.c:6:     int longest_length = 0;
	movl	$0, -20(%rbp)	#, longest_length
# eval/problem13//code.c:7:     for (int i = 0; i < count; i++) {
	movl	$0, -16(%rbp)	#, i
# eval/problem13//code.c:7:     for (int i = 0; i < count; i++) {
	jmp	.L2	#
.L4:
# eval/problem13//code.c:8:         int current_length = strlen(strings[i]);
	movl	-16(%rbp), %eax	# i, tmp93
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-40(%rbp), %rax	# strings, tmp94
	addq	%rdx, %rax	# _2, _3
# eval/problem13//code.c:8:         int current_length = strlen(strings[i]);
	movq	(%rax), %rax	# *_3, _4
	movq	%rax, %rdi	# _4,
	call	strlen@PLT	#
# eval/problem13//code.c:8:         int current_length = strlen(strings[i]);
	movl	%eax, -12(%rbp)	# _5, current_length
# eval/problem13//code.c:9:         if (current_length > longest_length) {
	movl	-12(%rbp), %eax	# current_length, tmp95
	cmpl	-20(%rbp), %eax	# longest_length, tmp95
	jle	.L3	#,
# eval/problem13//code.c:10:             out = strings[i];
	movl	-16(%rbp), %eax	# i, tmp96
	cltq
	leaq	0(,%rax,8), %rdx	#, _7
	movq	-40(%rbp), %rax	# strings, tmp97
	addq	%rdx, %rax	# _7, _8
# eval/problem13//code.c:10:             out = strings[i];
	movq	(%rax), %rax	# *_8, tmp98
	movq	%rax, -8(%rbp)	# tmp98, out
# eval/problem13//code.c:11:             longest_length = current_length;
	movl	-12(%rbp), %eax	# current_length, tmp99
	movl	%eax, -20(%rbp)	# tmp99, longest_length
.L3:
# eval/problem13//code.c:7:     for (int i = 0; i < count; i++) {
	addl	$1, -16(%rbp)	#, i
.L2:
# eval/problem13//code.c:7:     for (int i = 0; i < count; i++) {
	movl	-16(%rbp), %eax	# i, tmp100
	cmpl	-44(%rbp), %eax	# count, tmp100
	jl	.L4	#,
# eval/problem13//code.c:14:     return out;
	movq	-8(%rbp), %rax	# out, _18
# eval/problem13//code.c:15: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
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
