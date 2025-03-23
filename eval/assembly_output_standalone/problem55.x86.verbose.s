	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# s0, s0
	movq	%rsi, -48(%rbp)	# s1, s1
# eval/problem55//code.c:6:     int len0 = strlen(s0), len1 = strlen(s1);
	movq	-40(%rbp), %rax	# s0, tmp100
	movq	%rax, %rdi	# tmp100,
	call	strlen@PLT	#
# eval/problem55//code.c:6:     int len0 = strlen(s0), len1 = strlen(s1);
	movl	%eax, -8(%rbp)	# _1, len0
# eval/problem55//code.c:6:     int len0 = strlen(s0), len1 = strlen(s1);
	movq	-48(%rbp), %rax	# s1, tmp101
	movq	%rax, %rdi	# tmp101,
	call	strlen@PLT	#
# eval/problem55//code.c:6:     int len0 = strlen(s0), len1 = strlen(s1);
	movl	%eax, -4(%rbp)	# _2, len1
# eval/problem55//code.c:7:     for (int i = 0; i < len0; i++) {
	movl	$0, -24(%rbp)	#, i
# eval/problem55//code.c:7:     for (int i = 0; i < len0; i++) {
	jmp	.L2	#
.L9:
# eval/problem55//code.c:8:         bool found = false;
	movb	$0, -26(%rbp)	#, found
# eval/problem55//code.c:9:         for (int j = 0; j < len1; j++) {
	movl	$0, -20(%rbp)	#, j
# eval/problem55//code.c:9:         for (int j = 0; j < len1; j++) {
	jmp	.L3	#
.L6:
# eval/problem55//code.c:10:             if (s0[i] == s1[j]) {
	movl	-24(%rbp), %eax	# i, tmp102
	movslq	%eax, %rdx	# tmp102, _3
	movq	-40(%rbp), %rax	# s0, tmp103
	addq	%rdx, %rax	# _3, _4
	movzbl	(%rax), %edx	# *_4, _5
# eval/problem55//code.c:10:             if (s0[i] == s1[j]) {
	movl	-20(%rbp), %eax	# j, tmp104
	movslq	%eax, %rcx	# tmp104, _6
	movq	-48(%rbp), %rax	# s1, tmp105
	addq	%rcx, %rax	# _6, _7
	movzbl	(%rax), %eax	# *_7, _8
# eval/problem55//code.c:10:             if (s0[i] == s1[j]) {
	cmpb	%al, %dl	# _8, _5
	jne	.L4	#,
# eval/problem55//code.c:11:                 found = true;
	movb	$1, -26(%rbp)	#, found
# eval/problem55//code.c:12:                 break;
	jmp	.L5	#
.L4:
# eval/problem55//code.c:9:         for (int j = 0; j < len1; j++) {
	addl	$1, -20(%rbp)	#, j
.L3:
# eval/problem55//code.c:9:         for (int j = 0; j < len1; j++) {
	movl	-20(%rbp), %eax	# j, tmp106
	cmpl	-4(%rbp), %eax	# len1, tmp106
	jl	.L6	#,
.L5:
# eval/problem55//code.c:15:         if (!found) return false;
	movzbl	-26(%rbp), %eax	# found, tmp107
	xorl	$1, %eax	#, _9
# eval/problem55//code.c:15:         if (!found) return false;
	testb	%al, %al	# _9
	je	.L7	#,
# eval/problem55//code.c:15:         if (!found) return false;
	movl	$0, %eax	#, _23
	jmp	.L8	#
.L7:
# eval/problem55//code.c:7:     for (int i = 0; i < len0; i++) {
	addl	$1, -24(%rbp)	#, i
.L2:
# eval/problem55//code.c:7:     for (int i = 0; i < len0; i++) {
	movl	-24(%rbp), %eax	# i, tmp108
	cmpl	-8(%rbp), %eax	# len0, tmp108
	jl	.L9	#,
# eval/problem55//code.c:17:     for (int i = 0; i < len1; i++) {
	movl	$0, -16(%rbp)	#, i
# eval/problem55//code.c:17:     for (int i = 0; i < len1; i++) {
	jmp	.L10	#
.L16:
# eval/problem55//code.c:18:         bool found = false;
	movb	$0, -25(%rbp)	#, found
# eval/problem55//code.c:19:         for (int j = 0; j < len0; j++) {
	movl	$0, -12(%rbp)	#, j
# eval/problem55//code.c:19:         for (int j = 0; j < len0; j++) {
	jmp	.L11	#
.L14:
# eval/problem55//code.c:20:             if (s1[i] == s0[j]) {
	movl	-16(%rbp), %eax	# i, tmp109
	movslq	%eax, %rdx	# tmp109, _10
	movq	-48(%rbp), %rax	# s1, tmp110
	addq	%rdx, %rax	# _10, _11
	movzbl	(%rax), %edx	# *_11, _12
# eval/problem55//code.c:20:             if (s1[i] == s0[j]) {
	movl	-12(%rbp), %eax	# j, tmp111
	movslq	%eax, %rcx	# tmp111, _13
	movq	-40(%rbp), %rax	# s0, tmp112
	addq	%rcx, %rax	# _13, _14
	movzbl	(%rax), %eax	# *_14, _15
# eval/problem55//code.c:20:             if (s1[i] == s0[j]) {
	cmpb	%al, %dl	# _15, _12
	jne	.L12	#,
# eval/problem55//code.c:21:                 found = true;
	movb	$1, -25(%rbp)	#, found
# eval/problem55//code.c:22:                 break;
	jmp	.L13	#
.L12:
# eval/problem55//code.c:19:         for (int j = 0; j < len0; j++) {
	addl	$1, -12(%rbp)	#, j
.L11:
# eval/problem55//code.c:19:         for (int j = 0; j < len0; j++) {
	movl	-12(%rbp), %eax	# j, tmp113
	cmpl	-8(%rbp), %eax	# len0, tmp113
	jl	.L14	#,
.L13:
# eval/problem55//code.c:25:         if (!found) return false;
	movzbl	-25(%rbp), %eax	# found, tmp114
	xorl	$1, %eax	#, _16
# eval/problem55//code.c:25:         if (!found) return false;
	testb	%al, %al	# _16
	je	.L15	#,
# eval/problem55//code.c:25:         if (!found) return false;
	movl	$0, %eax	#, _23
	jmp	.L8	#
.L15:
# eval/problem55//code.c:17:     for (int i = 0; i < len1; i++) {
	addl	$1, -16(%rbp)	#, i
.L10:
# eval/problem55//code.c:17:     for (int i = 0; i < len1; i++) {
	movl	-16(%rbp), %eax	# i, tmp115
	cmpl	-4(%rbp), %eax	# len1, tmp115
	jl	.L16	#,
# eval/problem55//code.c:27:     return true;
	movl	$1, %eax	#, _23
.L8:
# eval/problem55//code.c:28: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
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
