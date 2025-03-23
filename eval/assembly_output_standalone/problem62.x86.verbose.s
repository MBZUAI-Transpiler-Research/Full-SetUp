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
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# brackets, brackets
# eval/problem62//code.c:6:     int level = 0;
	movl	$0, -24(%rbp)	#, level
# eval/problem62//code.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	movl	$0, -20(%rbp)	#, i
# eval/problem62//code.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	jmp	.L2	#
.L7:
# eval/problem62//code.c:8:         if (brackets[i] == '(') level += 1;
	movl	-20(%rbp), %eax	# i, tmp92
	movslq	%eax, %rdx	# tmp92, _1
	movq	-40(%rbp), %rax	# brackets, tmp93
	addq	%rdx, %rax	# _1, _2
	movzbl	(%rax), %eax	# *_2, _3
# eval/problem62//code.c:8:         if (brackets[i] == '(') level += 1;
	cmpb	$40, %al	#, _3
	jne	.L3	#,
# eval/problem62//code.c:8:         if (brackets[i] == '(') level += 1;
	addl	$1, -24(%rbp)	#, level
.L3:
# eval/problem62//code.c:9:         if (brackets[i] == ')') level -= 1;
	movl	-20(%rbp), %eax	# i, tmp94
	movslq	%eax, %rdx	# tmp94, _4
	movq	-40(%rbp), %rax	# brackets, tmp95
	addq	%rdx, %rax	# _4, _5
	movzbl	(%rax), %eax	# *_5, _6
# eval/problem62//code.c:9:         if (brackets[i] == ')') level -= 1;
	cmpb	$41, %al	#, _6
	jne	.L4	#,
# eval/problem62//code.c:9:         if (brackets[i] == ')') level -= 1;
	subl	$1, -24(%rbp)	#, level
.L4:
# eval/problem62//code.c:10:         if (level < 0) return false;
	cmpl	$0, -24(%rbp)	#, level
	jns	.L5	#,
# eval/problem62//code.c:10:         if (level < 0) return false;
	movl	$0, %eax	#, _13
# eval/problem62//code.c:10:         if (level < 0) return false;
	jmp	.L6	#
.L5:
# eval/problem62//code.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	addl	$1, -20(%rbp)	#, i
.L2:
# eval/problem62//code.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	movl	-20(%rbp), %eax	# i, tmp96
	movslq	%eax, %rbx	# tmp96, _7
# eval/problem62//code.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	movq	-40(%rbp), %rax	# brackets, tmp97
	movq	%rax, %rdi	# tmp97,
	call	strlen@PLT	#
# eval/problem62//code.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	cmpq	%rax, %rbx	# _8, _7
	jb	.L7	#,
# eval/problem62//code.c:12:     return level == 0;
	cmpl	$0, -24(%rbp)	#, level
	sete	%al	#, _13
.L6:
# eval/problem62//code.c:13: }
	movq	-8(%rbp), %rbx	#,
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
