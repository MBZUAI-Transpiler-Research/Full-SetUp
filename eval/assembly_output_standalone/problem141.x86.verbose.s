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
	movq	%rdi, -40(%rbp)	# text, text
	movq	%rsi, -48(%rbp)	# out, out
# eval/problem141//code.c:5:     int space_len = 0;
	movl	$0, -28(%rbp)	#, space_len
# eval/problem141//code.c:6:     int j = 0;
	movl	$0, -24(%rbp)	#, j
# eval/problem141//code.c:7:     for (int i = 0; i < strlen(text); i++) {
	movl	$0, -20(%rbp)	#, i
# eval/problem141//code.c:7:     for (int i = 0; i < strlen(text); i++) {
	jmp	.L2	#
.L8:
# eval/problem141//code.c:8:         if (text[i] == ' ') {
	movl	-20(%rbp), %eax	# i, tmp119
	movslq	%eax, %rdx	# tmp119, _1
	movq	-40(%rbp), %rax	# text, tmp120
	addq	%rdx, %rax	# _1, _2
	movzbl	(%rax), %eax	# *_2, _3
# eval/problem141//code.c:8:         if (text[i] == ' ') {
	cmpb	$32, %al	#, _3
	jne	.L3	#,
# eval/problem141//code.c:9:             space_len++;
	addl	$1, -28(%rbp)	#, space_len
	jmp	.L4	#
.L3:
# eval/problem141//code.c:11:             if (space_len == 1) out[j++] = '_';
	cmpl	$1, -28(%rbp)	#, space_len
	jne	.L5	#,
# eval/problem141//code.c:11:             if (space_len == 1) out[j++] = '_';
	movl	-24(%rbp), %eax	# j, j.0_4
	leal	1(%rax), %edx	#, tmp121
	movl	%edx, -24(%rbp)	# tmp121, j
	movslq	%eax, %rdx	# j.0_4, _5
# eval/problem141//code.c:11:             if (space_len == 1) out[j++] = '_';
	movq	-48(%rbp), %rax	# out, tmp122
	addq	%rdx, %rax	# _5, _6
# eval/problem141//code.c:11:             if (space_len == 1) out[j++] = '_';
	movb	$95, (%rax)	#, *_6
.L5:
# eval/problem141//code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	cmpl	$2, -28(%rbp)	#, space_len
	jne	.L6	#,
# eval/problem141//code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	movl	-24(%rbp), %eax	# j, j.1_7
	leal	1(%rax), %edx	#, tmp123
	movl	%edx, -24(%rbp)	# tmp123, j
	movslq	%eax, %rdx	# j.1_7, _8
# eval/problem141//code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	movq	-48(%rbp), %rax	# out, tmp124
	addq	%rdx, %rax	# _8, _9
# eval/problem141//code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	movb	$95, (%rax)	#, *_9
# eval/problem141//code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	movl	-24(%rbp), %eax	# j, j.2_10
	leal	1(%rax), %edx	#, tmp125
	movl	%edx, -24(%rbp)	# tmp125, j
	movslq	%eax, %rdx	# j.2_10, _11
# eval/problem141//code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	movq	-48(%rbp), %rax	# out, tmp126
	addq	%rdx, %rax	# _11, _12
# eval/problem141//code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	movb	$95, (%rax)	#, *_12
.L6:
# eval/problem141//code.c:13:             if (space_len > 2) out[j++] = '-';
	cmpl	$2, -28(%rbp)	#, space_len
	jle	.L7	#,
# eval/problem141//code.c:13:             if (space_len > 2) out[j++] = '-';
	movl	-24(%rbp), %eax	# j, j.3_13
	leal	1(%rax), %edx	#, tmp127
	movl	%edx, -24(%rbp)	# tmp127, j
	movslq	%eax, %rdx	# j.3_13, _14
# eval/problem141//code.c:13:             if (space_len > 2) out[j++] = '-';
	movq	-48(%rbp), %rax	# out, tmp128
	addq	%rdx, %rax	# _14, _15
# eval/problem141//code.c:13:             if (space_len > 2) out[j++] = '-';
	movb	$45, (%rax)	#, *_15
.L7:
# eval/problem141//code.c:14:             space_len = 0;
	movl	$0, -28(%rbp)	#, space_len
# eval/problem141//code.c:15:             out[j++] = text[i];
	movl	-20(%rbp), %eax	# i, tmp129
	movslq	%eax, %rdx	# tmp129, _16
	movq	-40(%rbp), %rax	# text, tmp130
	leaq	(%rdx,%rax), %rcx	#, _17
# eval/problem141//code.c:15:             out[j++] = text[i];
	movl	-24(%rbp), %eax	# j, j.4_18
	leal	1(%rax), %edx	#, tmp131
	movl	%edx, -24(%rbp)	# tmp131, j
	movslq	%eax, %rdx	# j.4_18, _19
# eval/problem141//code.c:15:             out[j++] = text[i];
	movq	-48(%rbp), %rax	# out, tmp132
	addq	%rax, %rdx	# tmp132, _20
# eval/problem141//code.c:15:             out[j++] = text[i];
	movzbl	(%rcx), %eax	# *_17, _21
# eval/problem141//code.c:15:             out[j++] = text[i];
	movb	%al, (%rdx)	# _21, *_20
.L4:
# eval/problem141//code.c:7:     for (int i = 0; i < strlen(text); i++) {
	addl	$1, -20(%rbp)	#, i
.L2:
# eval/problem141//code.c:7:     for (int i = 0; i < strlen(text); i++) {
	movl	-20(%rbp), %eax	# i, tmp133
	movslq	%eax, %rbx	# tmp133, _22
# eval/problem141//code.c:7:     for (int i = 0; i < strlen(text); i++) {
	movq	-40(%rbp), %rax	# text, tmp134
	movq	%rax, %rdi	# tmp134,
	call	strlen@PLT	#
# eval/problem141//code.c:7:     for (int i = 0; i < strlen(text); i++) {
	cmpq	%rax, %rbx	# _23, _22
	jb	.L8	#,
# eval/problem141//code.c:18:     if (space_len == 1) out[j++] = '_';
	cmpl	$1, -28(%rbp)	#, space_len
	jne	.L9	#,
# eval/problem141//code.c:18:     if (space_len == 1) out[j++] = '_';
	movl	-24(%rbp), %eax	# j, j.5_24
	leal	1(%rax), %edx	#, tmp135
	movl	%edx, -24(%rbp)	# tmp135, j
	movslq	%eax, %rdx	# j.5_24, _25
# eval/problem141//code.c:18:     if (space_len == 1) out[j++] = '_';
	movq	-48(%rbp), %rax	# out, tmp136
	addq	%rdx, %rax	# _25, _26
# eval/problem141//code.c:18:     if (space_len == 1) out[j++] = '_';
	movb	$95, (%rax)	#, *_26
.L9:
# eval/problem141//code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	cmpl	$2, -28(%rbp)	#, space_len
	jne	.L10	#,
# eval/problem141//code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	movl	-24(%rbp), %eax	# j, j.6_27
	leal	1(%rax), %edx	#, tmp137
	movl	%edx, -24(%rbp)	# tmp137, j
	movslq	%eax, %rdx	# j.6_27, _28
# eval/problem141//code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	movq	-48(%rbp), %rax	# out, tmp138
	addq	%rdx, %rax	# _28, _29
# eval/problem141//code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	movb	$95, (%rax)	#, *_29
# eval/problem141//code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	movl	-24(%rbp), %eax	# j, j.7_30
	leal	1(%rax), %edx	#, tmp139
	movl	%edx, -24(%rbp)	# tmp139, j
	movslq	%eax, %rdx	# j.7_30, _31
# eval/problem141//code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	movq	-48(%rbp), %rax	# out, tmp140
	addq	%rdx, %rax	# _31, _32
# eval/problem141//code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	movb	$95, (%rax)	#, *_32
.L10:
# eval/problem141//code.c:20:     if (space_len > 2) out[j++] = '-';
	cmpl	$2, -28(%rbp)	#, space_len
	jle	.L11	#,
# eval/problem141//code.c:20:     if (space_len > 2) out[j++] = '-';
	movl	-24(%rbp), %eax	# j, j.8_33
	leal	1(%rax), %edx	#, tmp141
	movl	%edx, -24(%rbp)	# tmp141, j
	movslq	%eax, %rdx	# j.8_33, _34
# eval/problem141//code.c:20:     if (space_len > 2) out[j++] = '-';
	movq	-48(%rbp), %rax	# out, tmp142
	addq	%rdx, %rax	# _34, _35
# eval/problem141//code.c:20:     if (space_len > 2) out[j++] = '-';
	movb	$45, (%rax)	#, *_35
.L11:
# eval/problem141//code.c:21:     out[j] = '\0';
	movl	-24(%rbp), %eax	# j, tmp143
	movslq	%eax, %rdx	# tmp143, _36
	movq	-48(%rbp), %rax	# out, tmp144
	addq	%rdx, %rax	# _36, _37
# eval/problem141//code.c:21:     out[j] = '\0';
	movb	$0, (%rax)	#, *_37
# eval/problem141//code.c:22: }
	nop	
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
