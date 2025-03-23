	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"Yes"
.LC1:
	.string	"No"
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
	movq	%rdi, -40(%rbp)	# s1, s1
	movq	%rsi, -48(%rbp)	# s2, s2
# eval/problem120//code.c:5:     int count = 0;
	movl	$0, -20(%rbp)	#, count
# eval/problem120//code.c:6:     int len1 = strlen(s1);
	movq	-40(%rbp), %rax	# s1, tmp110
	movq	%rax, %rdi	# tmp110,
	call	strlen@PLT	#
# eval/problem120//code.c:6:     int len1 = strlen(s1);
	movl	%eax, -8(%rbp)	# _1, len1
# eval/problem120//code.c:7:     int len2 = strlen(s2);
	movq	-48(%rbp), %rax	# s2, tmp111
	movq	%rax, %rdi	# tmp111,
	call	strlen@PLT	#
# eval/problem120//code.c:7:     int len2 = strlen(s2);
	movl	%eax, -4(%rbp)	# _2, len2
# eval/problem120//code.c:9:     int can = 1;
	movl	$1, -12(%rbp)	#, can
# eval/problem120//code.c:11:     for (i = 0; i < len1; i++) {
	movl	$0, -16(%rbp)	#, i
# eval/problem120//code.c:11:     for (i = 0; i < len1; i++) {
	jmp	.L2	#
.L6:
# eval/problem120//code.c:12:         if (s1[i] == '(') count++;
	movl	-16(%rbp), %eax	# i, tmp112
	movslq	%eax, %rdx	# tmp112, _3
	movq	-40(%rbp), %rax	# s1, tmp113
	addq	%rdx, %rax	# _3, _4
	movzbl	(%rax), %eax	# *_4, _5
# eval/problem120//code.c:12:         if (s1[i] == '(') count++;
	cmpb	$40, %al	#, _5
	jne	.L3	#,
# eval/problem120//code.c:12:         if (s1[i] == '(') count++;
	addl	$1, -20(%rbp)	#, count
.L3:
# eval/problem120//code.c:13:         if (s1[i] == ')') count--;
	movl	-16(%rbp), %eax	# i, tmp114
	movslq	%eax, %rdx	# tmp114, _6
	movq	-40(%rbp), %rax	# s1, tmp115
	addq	%rdx, %rax	# _6, _7
	movzbl	(%rax), %eax	# *_7, _8
# eval/problem120//code.c:13:         if (s1[i] == ')') count--;
	cmpb	$41, %al	#, _8
	jne	.L4	#,
# eval/problem120//code.c:13:         if (s1[i] == ')') count--;
	subl	$1, -20(%rbp)	#, count
.L4:
# eval/problem120//code.c:14:         if (count < 0) can = 0;
	cmpl	$0, -20(%rbp)	#, count
	jns	.L5	#,
# eval/problem120//code.c:14:         if (count < 0) can = 0;
	movl	$0, -12(%rbp)	#, can
.L5:
# eval/problem120//code.c:11:     for (i = 0; i < len1; i++) {
	addl	$1, -16(%rbp)	#, i
.L2:
# eval/problem120//code.c:11:     for (i = 0; i < len1; i++) {
	movl	-16(%rbp), %eax	# i, tmp116
	cmpl	-8(%rbp), %eax	# len1, tmp116
	jl	.L6	#,
# eval/problem120//code.c:16:     for (i = 0; i < len2; i++) {
	movl	$0, -16(%rbp)	#, i
# eval/problem120//code.c:16:     for (i = 0; i < len2; i++) {
	jmp	.L7	#
.L11:
# eval/problem120//code.c:17:         if (s2[i] == '(') count++;
	movl	-16(%rbp), %eax	# i, tmp117
	movslq	%eax, %rdx	# tmp117, _9
	movq	-48(%rbp), %rax	# s2, tmp118
	addq	%rdx, %rax	# _9, _10
	movzbl	(%rax), %eax	# *_10, _11
# eval/problem120//code.c:17:         if (s2[i] == '(') count++;
	cmpb	$40, %al	#, _11
	jne	.L8	#,
# eval/problem120//code.c:17:         if (s2[i] == '(') count++;
	addl	$1, -20(%rbp)	#, count
.L8:
# eval/problem120//code.c:18:         if (s2[i] == ')') count--;
	movl	-16(%rbp), %eax	# i, tmp119
	movslq	%eax, %rdx	# tmp119, _12
	movq	-48(%rbp), %rax	# s2, tmp120
	addq	%rdx, %rax	# _12, _13
	movzbl	(%rax), %eax	# *_13, _14
# eval/problem120//code.c:18:         if (s2[i] == ')') count--;
	cmpb	$41, %al	#, _14
	jne	.L9	#,
# eval/problem120//code.c:18:         if (s2[i] == ')') count--;
	subl	$1, -20(%rbp)	#, count
.L9:
# eval/problem120//code.c:19:         if (count < 0) can = 0;
	cmpl	$0, -20(%rbp)	#, count
	jns	.L10	#,
# eval/problem120//code.c:19:         if (count < 0) can = 0;
	movl	$0, -12(%rbp)	#, can
.L10:
# eval/problem120//code.c:16:     for (i = 0; i < len2; i++) {
	addl	$1, -16(%rbp)	#, i
.L7:
# eval/problem120//code.c:16:     for (i = 0; i < len2; i++) {
	movl	-16(%rbp), %eax	# i, tmp121
	cmpl	-4(%rbp), %eax	# len2, tmp121
	jl	.L11	#,
# eval/problem120//code.c:21:     if (count == 0 && can) return "Yes";
	cmpl	$0, -20(%rbp)	#, count
	jne	.L12	#,
# eval/problem120//code.c:21:     if (count == 0 && can) return "Yes";
	cmpl	$0, -12(%rbp)	#, can
	je	.L12	#,
# eval/problem120//code.c:21:     if (count == 0 && can) return "Yes";
	leaq	.LC0(%rip), %rax	#, _51
	jmp	.L13	#
.L12:
# eval/problem120//code.c:23:     count = 0;
	movl	$0, -20(%rbp)	#, count
# eval/problem120//code.c:24:     can = 1;
	movl	$1, -12(%rbp)	#, can
# eval/problem120//code.c:26:     for (i = 0; i < len2; i++) {
	movl	$0, -16(%rbp)	#, i
# eval/problem120//code.c:26:     for (i = 0; i < len2; i++) {
	jmp	.L14	#
.L18:
# eval/problem120//code.c:27:         if (s2[i] == '(') count++;
	movl	-16(%rbp), %eax	# i, tmp122
	movslq	%eax, %rdx	# tmp122, _15
	movq	-48(%rbp), %rax	# s2, tmp123
	addq	%rdx, %rax	# _15, _16
	movzbl	(%rax), %eax	# *_16, _17
# eval/problem120//code.c:27:         if (s2[i] == '(') count++;
	cmpb	$40, %al	#, _17
	jne	.L15	#,
# eval/problem120//code.c:27:         if (s2[i] == '(') count++;
	addl	$1, -20(%rbp)	#, count
.L15:
# eval/problem120//code.c:28:         if (s2[i] == ')') count--;
	movl	-16(%rbp), %eax	# i, tmp124
	movslq	%eax, %rdx	# tmp124, _18
	movq	-48(%rbp), %rax	# s2, tmp125
	addq	%rdx, %rax	# _18, _19
	movzbl	(%rax), %eax	# *_19, _20
# eval/problem120//code.c:28:         if (s2[i] == ')') count--;
	cmpb	$41, %al	#, _20
	jne	.L16	#,
# eval/problem120//code.c:28:         if (s2[i] == ')') count--;
	subl	$1, -20(%rbp)	#, count
.L16:
# eval/problem120//code.c:29:         if (count < 0) can = 0;
	cmpl	$0, -20(%rbp)	#, count
	jns	.L17	#,
# eval/problem120//code.c:29:         if (count < 0) can = 0;
	movl	$0, -12(%rbp)	#, can
.L17:
# eval/problem120//code.c:26:     for (i = 0; i < len2; i++) {
	addl	$1, -16(%rbp)	#, i
.L14:
# eval/problem120//code.c:26:     for (i = 0; i < len2; i++) {
	movl	-16(%rbp), %eax	# i, tmp126
	cmpl	-4(%rbp), %eax	# len2, tmp126
	jl	.L18	#,
# eval/problem120//code.c:31:     for (i = 0; i < len1; i++) {
	movl	$0, -16(%rbp)	#, i
# eval/problem120//code.c:31:     for (i = 0; i < len1; i++) {
	jmp	.L19	#
.L23:
# eval/problem120//code.c:32:         if (s1[i] == '(') count++;
	movl	-16(%rbp), %eax	# i, tmp127
	movslq	%eax, %rdx	# tmp127, _21
	movq	-40(%rbp), %rax	# s1, tmp128
	addq	%rdx, %rax	# _21, _22
	movzbl	(%rax), %eax	# *_22, _23
# eval/problem120//code.c:32:         if (s1[i] == '(') count++;
	cmpb	$40, %al	#, _23
	jne	.L20	#,
# eval/problem120//code.c:32:         if (s1[i] == '(') count++;
	addl	$1, -20(%rbp)	#, count
.L20:
# eval/problem120//code.c:33:         if (s1[i] == ')') count--;
	movl	-16(%rbp), %eax	# i, tmp129
	movslq	%eax, %rdx	# tmp129, _24
	movq	-40(%rbp), %rax	# s1, tmp130
	addq	%rdx, %rax	# _24, _25
	movzbl	(%rax), %eax	# *_25, _26
# eval/problem120//code.c:33:         if (s1[i] == ')') count--;
	cmpb	$41, %al	#, _26
	jne	.L21	#,
# eval/problem120//code.c:33:         if (s1[i] == ')') count--;
	subl	$1, -20(%rbp)	#, count
.L21:
# eval/problem120//code.c:34:         if (count < 0) can = 0;
	cmpl	$0, -20(%rbp)	#, count
	jns	.L22	#,
# eval/problem120//code.c:34:         if (count < 0) can = 0;
	movl	$0, -12(%rbp)	#, can
.L22:
# eval/problem120//code.c:31:     for (i = 0; i < len1; i++) {
	addl	$1, -16(%rbp)	#, i
.L19:
# eval/problem120//code.c:31:     for (i = 0; i < len1; i++) {
	movl	-16(%rbp), %eax	# i, tmp131
	cmpl	-8(%rbp), %eax	# len1, tmp131
	jl	.L23	#,
# eval/problem120//code.c:36:     if (count == 0 && can) return "Yes";
	cmpl	$0, -20(%rbp)	#, count
	jne	.L24	#,
# eval/problem120//code.c:36:     if (count == 0 && can) return "Yes";
	cmpl	$0, -12(%rbp)	#, can
	je	.L24	#,
# eval/problem120//code.c:36:     if (count == 0 && can) return "Yes";
	leaq	.LC0(%rip), %rax	#, _51
	jmp	.L13	#
.L24:
# eval/problem120//code.c:38:     return "No";
	leaq	.LC1(%rip), %rax	#, _51
.L13:
# eval/problem120//code.c:39: }
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
