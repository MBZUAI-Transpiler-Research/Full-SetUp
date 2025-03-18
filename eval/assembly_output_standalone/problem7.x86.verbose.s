	.file	"code.c"
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
# eval/problem7//code.c:6:     int* all_levels = NULL;
	movq	$0, -8(%rbp)	#, all_levels
# eval/problem7//code.c:7:     int level = 0, max_level = 0, i = 0, count = 0;
	movl	$0, -24(%rbp)	#, level
# eval/problem7//code.c:7:     int level = 0, max_level = 0, i = 0, count = 0;
	movl	$0, -20(%rbp)	#, max_level
# eval/problem7//code.c:7:     int level = 0, max_level = 0, i = 0, count = 0;
	movl	$0, -16(%rbp)	#, i
# eval/problem7//code.c:7:     int level = 0, max_level = 0, i = 0, count = 0;
	movl	$0, -12(%rbp)	#, count
# eval/problem7//code.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	movl	$0, -16(%rbp)	#, i
# eval/problem7//code.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	jmp	.L2	#
.L5:
# eval/problem7//code.c:10:         chr = paren_string[i];
	movl	-16(%rbp), %eax	# i, tmp96
	movslq	%eax, %rdx	# tmp96, _1
	movq	-40(%rbp), %rax	# paren_string, tmp97
	addq	%rdx, %rax	# _1, _2
# eval/problem7//code.c:10:         chr = paren_string[i];
	movzbl	(%rax), %eax	# *_2, tmp98
	movb	%al, -25(%rbp)	# tmp98, chr
# eval/problem7//code.c:11:         if (chr == '(') {
	cmpb	$40, -25(%rbp)	#, chr
	jne	.L3	#,
# eval/problem7//code.c:12:             level += 1;
	addl	$1, -24(%rbp)	#, level
# eval/problem7//code.c:13:             if (level > max_level) max_level = level;
	movl	-24(%rbp), %eax	# level, tmp99
	cmpl	-20(%rbp), %eax	# max_level, tmp99
	jle	.L4	#,
# eval/problem7//code.c:13:             if (level > max_level) max_level = level;
	movl	-24(%rbp), %eax	# level, tmp100
	movl	%eax, -20(%rbp)	# tmp100, max_level
	jmp	.L4	#
.L3:
# eval/problem7//code.c:14:         } else if (chr == ')') {
	cmpb	$41, -25(%rbp)	#, chr
	jne	.L4	#,
# eval/problem7//code.c:15:             level -= 1;
	subl	$1, -24(%rbp)	#, level
# eval/problem7//code.c:16:             if (level == 0) {
	cmpl	$0, -24(%rbp)	#, level
	jne	.L4	#,
# eval/problem7//code.c:17:                 all_levels = (int*)realloc(all_levels, sizeof(int) * (count + 1));
	movl	-12(%rbp), %eax	# count, tmp101
	addl	$1, %eax	#, _3
	cltq
# eval/problem7//code.c:17:                 all_levels = (int*)realloc(all_levels, sizeof(int) * (count + 1));
	leaq	0(,%rax,4), %rdx	#, _5
	movq	-8(%rbp), %rax	# all_levels, tmp102
	movq	%rdx, %rsi	# _5,
	movq	%rax, %rdi	# tmp102,
	call	realloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp103, all_levels
# eval/problem7//code.c:18:                 all_levels[count++] = max_level;
	movl	-12(%rbp), %eax	# count, count.0_6
	leal	1(%rax), %edx	#, tmp104
	movl	%edx, -12(%rbp)	# tmp104, count
	cltq
# eval/problem7//code.c:18:                 all_levels[count++] = max_level;
	leaq	0(,%rax,4), %rdx	#, _8
	movq	-8(%rbp), %rax	# all_levels, tmp105
	addq	%rax, %rdx	# tmp105, _9
# eval/problem7//code.c:18:                 all_levels[count++] = max_level;
	movl	-20(%rbp), %eax	# max_level, tmp106
	movl	%eax, (%rdx)	# tmp106, *_9
# eval/problem7//code.c:19:                 max_level = 0;
	movl	$0, -20(%rbp)	#, max_level
.L4:
# eval/problem7//code.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	addl	$1, -16(%rbp)	#, i
.L2:
# eval/problem7//code.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	movl	-16(%rbp), %eax	# i, tmp107
	movslq	%eax, %rdx	# tmp107, _10
	movq	-40(%rbp), %rax	# paren_string, tmp108
	addq	%rdx, %rax	# _10, _11
	movzbl	(%rax), %eax	# *_11, _12
# eval/problem7//code.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	testb	%al, %al	# _12
	jne	.L5	#,
# eval/problem7//code.c:23:     *returnSize = count;
	movq	-48(%rbp), %rax	# returnSize, tmp109
	movl	-12(%rbp), %edx	# count, tmp110
	movl	%edx, (%rax)	# tmp110, *returnSize_32(D)
# eval/problem7//code.c:24:     return all_levels;
	movq	-8(%rbp), %rax	# all_levels, _34
# eval/problem7//code.c:25: }
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
