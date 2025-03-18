	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"aeiouAEIOU"
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
	movq	%rdi, -40(%rbp)	# s, s
# eval/problem65//code.c:6:     const char *vowels = "aeiouAEIOU";
	leaq	.LC0(%rip), %rax	#, tmp98
	movq	%rax, -8(%rbp)	# tmp98, vowels
# eval/problem65//code.c:7:     int count = 0;
	movl	$0, -20(%rbp)	#, count
# eval/problem65//code.c:8:     int length = strlen(s);
	movq	-40(%rbp), %rax	# s, tmp99
	movq	%rax, %rdi	# tmp99,
	call	strlen@PLT	#
# eval/problem65//code.c:8:     int length = strlen(s);
	movl	%eax, -12(%rbp)	# _1, length
# eval/problem65//code.c:10:     for (int i = 0; i < length; i++) {
	movl	$0, -16(%rbp)	#, i
# eval/problem65//code.c:10:     for (int i = 0; i < length; i++) {
	jmp	.L2	#
.L4:
# eval/problem65//code.c:11:         if (strchr(vowels, s[i])) {
	movl	-16(%rbp), %eax	# i, tmp100
	movslq	%eax, %rdx	# tmp100, _2
	movq	-40(%rbp), %rax	# s, tmp101
	addq	%rdx, %rax	# _2, _3
	movzbl	(%rax), %eax	# *_3, _4
# eval/problem65//code.c:11:         if (strchr(vowels, s[i])) {
	movsbl	%al, %edx	# _4, _5
	movq	-8(%rbp), %rax	# vowels, tmp102
	movl	%edx, %esi	# _5,
	movq	%rax, %rdi	# tmp102,
	call	strchr@PLT	#
# eval/problem65//code.c:11:         if (strchr(vowels, s[i])) {
	testq	%rax, %rax	# _6
	je	.L3	#,
# eval/problem65//code.c:12:             count++;
	addl	$1, -20(%rbp)	#, count
.L3:
# eval/problem65//code.c:10:     for (int i = 0; i < length; i++) {
	addl	$1, -16(%rbp)	#, i
.L2:
# eval/problem65//code.c:10:     for (int i = 0; i < length; i++) {
	movl	-16(%rbp), %eax	# i, tmp103
	cmpl	-12(%rbp), %eax	# length, tmp103
	jl	.L4	#,
# eval/problem65//code.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	cmpl	$0, -12(%rbp)	#, length
	jle	.L5	#,
# eval/problem65//code.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	movl	-12(%rbp), %eax	# length, tmp104
	cltq
	leaq	-1(%rax), %rdx	#, _8
	movq	-40(%rbp), %rax	# s, tmp105
	addq	%rdx, %rax	# _8, _9
	movzbl	(%rax), %eax	# *_9, _10
# eval/problem65//code.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	cmpb	$121, %al	#, _10
	je	.L6	#,
# eval/problem65//code.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	movl	-12(%rbp), %eax	# length, tmp106
	cltq
	leaq	-1(%rax), %rdx	#, _12
	movq	-40(%rbp), %rax	# s, tmp107
	addq	%rdx, %rax	# _12, _13
	movzbl	(%rax), %eax	# *_13, _14
# eval/problem65//code.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	cmpb	$89, %al	#, _14
	jne	.L5	#,
.L6:
# eval/problem65//code.c:17:         count++;
	addl	$1, -20(%rbp)	#, count
.L5:
# eval/problem65//code.c:20:     return count;
	movl	-20(%rbp), %eax	# count, _26
# eval/problem65//code.c:21: }
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
