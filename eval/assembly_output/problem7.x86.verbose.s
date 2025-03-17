	.file	"problem7.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

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
	movq	%rdi, -40(%rbp)	# paren_string, paren_string
	movq	%rsi, -48(%rbp)	# returnSize, returnSize
# problem7.c:6:     int* all_levels = NULL;
	movq	$0, -8(%rbp)	#, all_levels
# problem7.c:7:     int level = 0, max_level = 0, i = 0, count = 0;
	movl	$0, -24(%rbp)	#, level
# problem7.c:7:     int level = 0, max_level = 0, i = 0, count = 0;
	movl	$0, -20(%rbp)	#, max_level
# problem7.c:7:     int level = 0, max_level = 0, i = 0, count = 0;
	movl	$0, -16(%rbp)	#, i
# problem7.c:7:     int level = 0, max_level = 0, i = 0, count = 0;
	movl	$0, -12(%rbp)	#, count
# problem7.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	movl	$0, -16(%rbp)	#, i
# problem7.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	jmp	.L2	#
.L5:
# problem7.c:10:         chr = paren_string[i];
	movl	-16(%rbp), %eax	# i, tmp96
	movslq	%eax, %rdx	# tmp96, _1
	movq	-40(%rbp), %rax	# paren_string, tmp97
	addq	%rdx, %rax	# _1, _2
# problem7.c:10:         chr = paren_string[i];
	movzbl	(%rax), %eax	# *_2, tmp98
	movb	%al, -25(%rbp)	# tmp98, chr
# problem7.c:11:         if (chr == '(') {
	cmpb	$40, -25(%rbp)	#, chr
	jne	.L3	#,
# problem7.c:12:             level += 1;
	addl	$1, -24(%rbp)	#, level
# problem7.c:13:             if (level > max_level) max_level = level;
	movl	-24(%rbp), %eax	# level, tmp99
	cmpl	-20(%rbp), %eax	# max_level, tmp99
	jle	.L4	#,
# problem7.c:13:             if (level > max_level) max_level = level;
	movl	-24(%rbp), %eax	# level, tmp100
	movl	%eax, -20(%rbp)	# tmp100, max_level
	jmp	.L4	#
.L3:
# problem7.c:14:         } else if (chr == ')') {
	cmpb	$41, -25(%rbp)	#, chr
	jne	.L4	#,
# problem7.c:15:             level -= 1;
	subl	$1, -24(%rbp)	#, level
# problem7.c:16:             if (level == 0) {
	cmpl	$0, -24(%rbp)	#, level
	jne	.L4	#,
# problem7.c:17:                 all_levels = (int*)realloc(all_levels, sizeof(int) * (count + 1));
	movl	-12(%rbp), %eax	# count, tmp101
	addl	$1, %eax	#, _3
	cltq
# problem7.c:17:                 all_levels = (int*)realloc(all_levels, sizeof(int) * (count + 1));
	leaq	0(,%rax,4), %rdx	#, _5
	movq	-8(%rbp), %rax	# all_levels, tmp102
	movq	%rdx, %rsi	# _5,
	movq	%rax, %rdi	# tmp102,
	call	realloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp103, all_levels
# problem7.c:18:                 all_levels[count++] = max_level;
	movl	-12(%rbp), %eax	# count, count.0_6
	leal	1(%rax), %edx	#, tmp104
	movl	%edx, -12(%rbp)	# tmp104, count
	cltq
# problem7.c:18:                 all_levels[count++] = max_level;
	leaq	0(,%rax,4), %rdx	#, _8
	movq	-8(%rbp), %rax	# all_levels, tmp105
	addq	%rax, %rdx	# tmp105, _9
# problem7.c:18:                 all_levels[count++] = max_level;
	movl	-20(%rbp), %eax	# max_level, tmp106
	movl	%eax, (%rdx)	# tmp106, *_9
# problem7.c:19:                 max_level = 0;
	movl	$0, -20(%rbp)	#, max_level
.L4:
# problem7.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	addl	$1, -16(%rbp)	#, i
.L2:
# problem7.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	movl	-16(%rbp), %eax	# i, tmp107
	movslq	%eax, %rdx	# tmp107, _10
	movq	-40(%rbp), %rax	# paren_string, tmp108
	addq	%rdx, %rax	# _10, _11
	movzbl	(%rax), %eax	# *_11, _12
# problem7.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	testb	%al, %al	# _12
	jne	.L5	#,
# problem7.c:23:     *returnSize = count;
	movq	-48(%rbp), %rax	# returnSize, tmp109
	movl	-12(%rbp), %edx	# count, tmp110
	movl	%edx, (%rax)	# tmp110, *returnSize_32(D)
# problem7.c:24:     return all_levels;
	movq	-8(%rbp), %rax	# all_levels, _34
# problem7.c:25: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# b, b
	movl	%edx, -36(%rbp)	# size_a, size_a
	movl	%ecx, -40(%rbp)	# size_b, size_b
# problem7.c:33:     if (size_a != size_b) return 0;
	movl	-36(%rbp), %eax	# size_a, tmp92
	cmpl	-40(%rbp), %eax	# size_b, tmp92
	je	.L8	#,
# problem7.c:33:     if (size_a != size_b) return 0;
	movl	$0, %eax	#, _10
# problem7.c:33:     if (size_a != size_b) return 0;
	jmp	.L9	#
.L8:
# problem7.c:34:     for (int i = 0; i < size_a; i++) {
	movl	$0, -4(%rbp)	#, i
# problem7.c:34:     for (int i = 0; i < size_a; i++) {
	jmp	.L10	#
.L12:
# problem7.c:35:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp93
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# a, tmp94
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# problem7.c:35:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp95
	cltq
	leaq	0(,%rax,4), %rcx	#, _6
	movq	-32(%rbp), %rax	# b, tmp96
	addq	%rcx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# problem7.c:35:         if (a[i] != b[i]) return 0;
	cmpl	%eax, %edx	# _8, _4
	je	.L11	#,
# problem7.c:35:         if (a[i] != b[i]) return 0;
	movl	$0, %eax	#, _10
# problem7.c:35:         if (a[i] != b[i]) return 0;
	jmp	.L9	#
.L11:
# problem7.c:34:     for (int i = 0; i < size_a; i++) {
	addl	$1, -4(%rbp)	#, i
.L10:
# problem7.c:34:     for (int i = 0; i < size_a; i++) {
	movl	-4(%rbp), %eax	# i, tmp97
	cmpl	-36(%rbp), %eax	# size_a, tmp97
	jl	.L12	#,
# problem7.c:37:     return 1;
	movl	$1, %eax	#, _10
.L9:
# problem7.c:38: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"(()()) ((())) () ((())()())"
.LC1:
	.string	"problem7.c"
	.align 8
.LC2:
	.string	"issame(result, (const int[]){2, 3, 1, 3}, returnSize, 4)"
.LC3:
	.string	"() (()) ((())) (((())))"
	.align 8
.LC4:
	.string	"issame(result, (const int[]){1, 2, 3, 4}, returnSize, 4)"
.LC5:
	.string	"(()(())((())))"
	.align 8
.LC6:
	.string	"issame(result, (const int[]){4}, returnSize, 1)"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
# problem7.c:40: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp118
	movq	%rax, -8(%rbp)	# tmp118, D.4000
	xorl	%eax, %eax	# tmp118
# problem7.c:44:     result = func0("(()()) ((())) () ((())()())", &returnSize);
	leaq	-44(%rbp), %rax	#, tmp90
	movq	%rax, %rsi	# tmp90,
	leaq	.LC0(%rip), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	call	func0	#
	movq	%rax, -40(%rbp)	# tmp92, result
# problem7.c:45:     assert(issame(result, (const int[]){2, 3, 1, 3}, returnSize, 4));
	movl	-44(%rbp), %edx	# returnSize, returnSize.1_1
	movl	$2, -32(%rbp)	#, MEM[(int[4] *)_41][0]
	movl	$3, -28(%rbp)	#, MEM[(int[4] *)_41][1]
	movl	$1, -24(%rbp)	#, MEM[(int[4] *)_41][2]
	movl	$3, -20(%rbp)	#, MEM[(int[4] *)_41][3]
	leaq	-32(%rbp), %rsi	#, tmp93
	movq	-40(%rbp), %rax	# result, tmp94
	movl	$4, %ecx	#,
	movq	%rax, %rdi	# tmp94,
	call	issame	#
# problem7.c:45:     assert(issame(result, (const int[]){2, 3, 1, 3}, returnSize, 4));
	testl	%eax, %eax	# _2
	jne	.L14	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp95
	movq	%rax, %rcx	# tmp95,
	movl	$45, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp96
	movq	%rax, %rsi	# tmp96,
	leaq	.LC2(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	__assert_fail@PLT	#
.L14:
# problem7.c:46:     free(result);
	movq	-40(%rbp), %rax	# result, tmp98
	movq	%rax, %rdi	# tmp98,
	call	free@PLT	#
# problem7.c:48:     result = func0("() (()) ((())) (((())))", &returnSize);
	leaq	-44(%rbp), %rax	#, tmp99
	movq	%rax, %rsi	# tmp99,
	leaq	.LC3(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	func0	#
	movq	%rax, -40(%rbp)	# tmp101, result
# problem7.c:49:     assert(issame(result, (const int[]){1, 2, 3, 4}, returnSize, 4));
	movl	-44(%rbp), %edx	# returnSize, returnSize.2_3
	movl	$1, -32(%rbp)	#, MEM[(int[4] *)_41][0]
	movl	$2, -28(%rbp)	#, MEM[(int[4] *)_41][1]
	movl	$3, -24(%rbp)	#, MEM[(int[4] *)_41][2]
	movl	$4, -20(%rbp)	#, MEM[(int[4] *)_41][3]
	leaq	-32(%rbp), %rsi	#, tmp102
	movq	-40(%rbp), %rax	# result, tmp103
	movl	$4, %ecx	#,
	movq	%rax, %rdi	# tmp103,
	call	issame	#
# problem7.c:49:     assert(issame(result, (const int[]){1, 2, 3, 4}, returnSize, 4));
	testl	%eax, %eax	# _4
	jne	.L15	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp104
	movq	%rax, %rcx	# tmp104,
	movl	$49, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	leaq	.LC4(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	__assert_fail@PLT	#
.L15:
# problem7.c:50:     free(result);
	movq	-40(%rbp), %rax	# result, tmp107
	movq	%rax, %rdi	# tmp107,
	call	free@PLT	#
# problem7.c:52:     result = func0("(()(())((())))", &returnSize);
	leaq	-44(%rbp), %rax	#, tmp108
	movq	%rax, %rsi	# tmp108,
	leaq	.LC5(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	func0	#
	movq	%rax, -40(%rbp)	# tmp110, result
# problem7.c:53:     assert(issame(result, (const int[]){4}, returnSize, 1));
	movl	-44(%rbp), %edx	# returnSize, returnSize.3_5
	movl	$4, -32(%rbp)	#, MEM[(int[1] *)_41][0]
	leaq	-32(%rbp), %rsi	#, tmp111
	movq	-40(%rbp), %rax	# result, tmp112
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp112,
	call	issame	#
# problem7.c:53:     assert(issame(result, (const int[]){4}, returnSize, 1));
	testl	%eax, %eax	# _6
	jne	.L16	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp113
	movq	%rax, %rcx	# tmp113,
	movl	$53, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp114
	movq	%rax, %rsi	# tmp114,
	leaq	.LC6(%rip), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	__assert_fail@PLT	#
.L16:
# problem7.c:54:     free(result);
	movq	-40(%rbp), %rax	# result, tmp116
	movq	%rax, %rdi	# tmp116,
	call	free@PLT	#
# problem7.c:56:     return 0;
	movl	$0, %eax	#, _35
# problem7.c:57: }
	movq	-8(%rbp), %rdx	# D.4000, tmp119
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp119
	je	.L18	#,
	call	__stack_chk_fail@PLT	#
.L18:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
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
