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
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# text, text
# eval/problem49//code.c:6:     int len = strlen(text);
	movq	-24(%rbp), %rax	# text, tmp94
	movq	%rax, %rdi	# tmp94,
	call	strlen@PLT	#
# eval/problem49//code.c:6:     int len = strlen(text);
	movl	%eax, -4(%rbp)	# _1, len
# eval/problem49//code.c:7:     for (int i = 0; i < len / 2; i++) {
	movl	$0, -8(%rbp)	#, i
# eval/problem49//code.c:7:     for (int i = 0; i < len / 2; i++) {
	jmp	.L2	#
.L5:
# eval/problem49//code.c:8:         if (text[i] != text[len - 1 - i]) {
	movl	-8(%rbp), %eax	# i, tmp95
	movslq	%eax, %rdx	# tmp95, _2
	movq	-24(%rbp), %rax	# text, tmp96
	addq	%rdx, %rax	# _2, _3
	movzbl	(%rax), %edx	# *_3, _4
# eval/problem49//code.c:8:         if (text[i] != text[len - 1 - i]) {
	movl	-4(%rbp), %eax	# len, tmp97
	subl	$1, %eax	#, _5
# eval/problem49//code.c:8:         if (text[i] != text[len - 1 - i]) {
	subl	-8(%rbp), %eax	# i, _6
	movslq	%eax, %rcx	# _6, _7
# eval/problem49//code.c:8:         if (text[i] != text[len - 1 - i]) {
	movq	-24(%rbp), %rax	# text, tmp98
	addq	%rcx, %rax	# _7, _8
	movzbl	(%rax), %eax	# *_8, _9
# eval/problem49//code.c:8:         if (text[i] != text[len - 1 - i]) {
	cmpb	%al, %dl	# _9, _4
	je	.L3	#,
# eval/problem49//code.c:9:             return false;
	movl	$0, %eax	#, _12
	jmp	.L4	#
.L3:
# eval/problem49//code.c:7:     for (int i = 0; i < len / 2; i++) {
	addl	$1, -8(%rbp)	#, i
.L2:
# eval/problem49//code.c:7:     for (int i = 0; i < len / 2; i++) {
	movl	-4(%rbp), %eax	# len, tmp99
	movl	%eax, %edx	# tmp99, tmp100
	shrl	$31, %edx	#, tmp100
	addl	%edx, %eax	# tmp100, tmp101
	sarl	%eax	# tmp102
# eval/problem49//code.c:7:     for (int i = 0; i < len / 2; i++) {
	cmpl	%eax, -8(%rbp)	# _10, i
	jl	.L5	#,
# eval/problem49//code.c:12:     return true;
	movl	$1, %eax	#, _12
.L4:
# eval/problem49//code.c:13: }
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
