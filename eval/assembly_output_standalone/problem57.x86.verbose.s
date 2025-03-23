	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
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
	movq	%rdi, -24(%rbp)	# brackets, brackets
# eval/problem57//code.c:6:     int level = 0;
	movl	$0, -8(%rbp)	#, level
# eval/problem57//code.c:7:     int i = 0;
	movl	$0, -4(%rbp)	#, i
# eval/problem57//code.c:8:     while (brackets[i]) {
	jmp	.L2	#
.L7:
# eval/problem57//code.c:9:         if (brackets[i] == '<') level++;
	movl	-4(%rbp), %eax	# i, tmp93
	movslq	%eax, %rdx	# tmp93, _1
	movq	-24(%rbp), %rax	# brackets, tmp94
	addq	%rdx, %rax	# _1, _2
	movzbl	(%rax), %eax	# *_2, _3
# eval/problem57//code.c:9:         if (brackets[i] == '<') level++;
	cmpb	$60, %al	#, _3
	jne	.L3	#,
# eval/problem57//code.c:9:         if (brackets[i] == '<') level++;
	addl	$1, -8(%rbp)	#, level
.L3:
# eval/problem57//code.c:10:         if (brackets[i] == '>') level--;
	movl	-4(%rbp), %eax	# i, tmp95
	movslq	%eax, %rdx	# tmp95, _4
	movq	-24(%rbp), %rax	# brackets, tmp96
	addq	%rdx, %rax	# _4, _5
	movzbl	(%rax), %eax	# *_5, _6
# eval/problem57//code.c:10:         if (brackets[i] == '>') level--;
	cmpb	$62, %al	#, _6
	jne	.L4	#,
# eval/problem57//code.c:10:         if (brackets[i] == '>') level--;
	subl	$1, -8(%rbp)	#, level
.L4:
# eval/problem57//code.c:11:         if (level < 0) return false;
	cmpl	$0, -8(%rbp)	#, level
	jns	.L5	#,
# eval/problem57//code.c:11:         if (level < 0) return false;
	movl	$0, %eax	#, _14
# eval/problem57//code.c:11:         if (level < 0) return false;
	jmp	.L6	#
.L5:
# eval/problem57//code.c:12:         i++;
	addl	$1, -4(%rbp)	#, i
.L2:
# eval/problem57//code.c:8:     while (brackets[i]) {
	movl	-4(%rbp), %eax	# i, tmp97
	movslq	%eax, %rdx	# tmp97, _7
	movq	-24(%rbp), %rax	# brackets, tmp98
	addq	%rdx, %rax	# _7, _8
	movzbl	(%rax), %eax	# *_8, _9
# eval/problem57//code.c:8:     while (brackets[i]) {
	testb	%al, %al	# _9
	jne	.L7	#,
# eval/problem57//code.c:14:     if (level != 0) return false;
	cmpl	$0, -8(%rbp)	#, level
	je	.L8	#,
# eval/problem57//code.c:14:     if (level != 0) return false;
	movl	$0, %eax	#, _14
# eval/problem57//code.c:14:     if (level != 0) return false;
	jmp	.L6	#
.L8:
# eval/problem57//code.c:15:     return true;
	movl	$1, %eax	#, _14
.L6:
# eval/problem57//code.c:16: }
	popq	%rbp	#
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
