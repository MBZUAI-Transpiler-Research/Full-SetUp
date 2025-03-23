	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"No"
.LC1:
	.string	".txt"
.LC2:
	.string	".exe"
.LC3:
	.string	".dll"
.LC4:
	.string	"Yes"
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
	movq	%rdi, -40(%rbp)	# file_name, file_name
# eval/problem142//code.c:5:     int num_digit = 0, num_dot = 0;
	movl	$0, -24(%rbp)	#, num_digit
# eval/problem142//code.c:5:     int num_digit = 0, num_dot = 0;
	movl	$0, -20(%rbp)	#, num_dot
# eval/problem142//code.c:6:     int length = strlen(file_name);
	movq	-40(%rbp), %rax	# file_name, tmp99
	movq	%rax, %rdi	# tmp99,
	call	strlen@PLT	#
# eval/problem142//code.c:6:     int length = strlen(file_name);
	movl	%eax, -12(%rbp)	# _1, length
# eval/problem142//code.c:7:     if (length < 5) return "No";
	cmpl	$4, -12(%rbp)	#, length
	jg	.L2	#,
# eval/problem142//code.c:7:     if (length < 5) return "No";
	leaq	.LC0(%rip), %rax	#, _21
	jmp	.L3	#
.L2:
# eval/problem142//code.c:8:     char w = file_name[0];
	movq	-40(%rbp), %rax	# file_name, tmp100
	movzbl	(%rax), %eax	# *file_name_25(D), tmp101
	movb	%al, -25(%rbp)	# tmp101, w
# eval/problem142//code.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	cmpb	$64, -25(%rbp)	#, w
	jle	.L4	#,
# eval/problem142//code.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	cmpb	$90, -25(%rbp)	#, w
	jle	.L5	#,
# eval/problem142//code.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	cmpb	$96, -25(%rbp)	#, w
	jle	.L4	#,
.L5:
# eval/problem142//code.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	cmpb	$122, -25(%rbp)	#, w
	jle	.L6	#,
.L4:
# eval/problem142//code.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	leaq	.LC0(%rip), %rax	#, _21
	jmp	.L3	#
.L6:
# eval/problem142//code.c:10:     const char* last = file_name + length - 4;
	movl	-12(%rbp), %eax	# length, tmp102
	cltq
	leaq	-4(%rax), %rdx	#, _3
# eval/problem142//code.c:10:     const char* last = file_name + length - 4;
	movq	-40(%rbp), %rax	# file_name, tmp106
	addq	%rdx, %rax	# _3, tmp105
	movq	%rax, -8(%rbp)	# tmp105, last
# eval/problem142//code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	movq	-8(%rbp), %rax	# last, tmp107
	leaq	.LC1(%rip), %rdx	#, tmp108
	movq	%rdx, %rsi	# tmp108,
	movq	%rax, %rdi	# tmp107,
	call	strcmp@PLT	#
# eval/problem142//code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	testl	%eax, %eax	# _4
	je	.L7	#,
# eval/problem142//code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	movq	-8(%rbp), %rax	# last, tmp109
	leaq	.LC2(%rip), %rdx	#, tmp110
	movq	%rdx, %rsi	# tmp110,
	movq	%rax, %rdi	# tmp109,
	call	strcmp@PLT	#
# eval/problem142//code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	testl	%eax, %eax	# _5
	je	.L7	#,
# eval/problem142//code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	movq	-8(%rbp), %rax	# last, tmp111
	leaq	.LC3(%rip), %rdx	#, tmp112
	movq	%rdx, %rsi	# tmp112,
	movq	%rax, %rdi	# tmp111,
	call	strcmp@PLT	#
# eval/problem142//code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	testl	%eax, %eax	# _6
	je	.L7	#,
# eval/problem142//code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	leaq	.LC0(%rip), %rax	#, _21
	jmp	.L3	#
.L7:
# eval/problem142//code.c:12:     for (int i = 0; i < length; i++) {
	movl	$0, -16(%rbp)	#, i
# eval/problem142//code.c:12:     for (int i = 0; i < length; i++) {
	jmp	.L8	#
.L11:
# eval/problem142//code.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	movl	-16(%rbp), %eax	# i, tmp113
	movslq	%eax, %rdx	# tmp113, _7
	movq	-40(%rbp), %rax	# file_name, tmp114
	addq	%rdx, %rax	# _7, _8
	movzbl	(%rax), %eax	# *_8, _9
# eval/problem142//code.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	cmpb	$47, %al	#, _9
	jle	.L9	#,
# eval/problem142//code.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	movl	-16(%rbp), %eax	# i, tmp115
	movslq	%eax, %rdx	# tmp115, _10
	movq	-40(%rbp), %rax	# file_name, tmp116
	addq	%rdx, %rax	# _10, _11
	movzbl	(%rax), %eax	# *_11, _12
# eval/problem142//code.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	cmpb	$57, %al	#, _12
	jg	.L9	#,
# eval/problem142//code.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	addl	$1, -24(%rbp)	#, num_digit
.L9:
# eval/problem142//code.c:14:         if (file_name[i] == '.') num_dot++;
	movl	-16(%rbp), %eax	# i, tmp117
	movslq	%eax, %rdx	# tmp117, _13
	movq	-40(%rbp), %rax	# file_name, tmp118
	addq	%rdx, %rax	# _13, _14
	movzbl	(%rax), %eax	# *_14, _15
# eval/problem142//code.c:14:         if (file_name[i] == '.') num_dot++;
	cmpb	$46, %al	#, _15
	jne	.L10	#,
# eval/problem142//code.c:14:         if (file_name[i] == '.') num_dot++;
	addl	$1, -20(%rbp)	#, num_dot
.L10:
# eval/problem142//code.c:12:     for (int i = 0; i < length; i++) {
	addl	$1, -16(%rbp)	#, i
.L8:
# eval/problem142//code.c:12:     for (int i = 0; i < length; i++) {
	movl	-16(%rbp), %eax	# i, tmp119
	cmpl	-12(%rbp), %eax	# length, tmp119
	jl	.L11	#,
# eval/problem142//code.c:16:     if (num_digit > 3 || num_dot != 1) return "No";
	cmpl	$3, -24(%rbp)	#, num_digit
	jg	.L12	#,
# eval/problem142//code.c:16:     if (num_digit > 3 || num_dot != 1) return "No";
	cmpl	$1, -20(%rbp)	#, num_dot
	je	.L13	#,
.L12:
# eval/problem142//code.c:16:     if (num_digit > 3 || num_dot != 1) return "No";
	leaq	.LC0(%rip), %rax	#, _21
	jmp	.L3	#
.L13:
# eval/problem142//code.c:17:     return "Yes";
	leaq	.LC4(%rip), %rax	#, _21
.L3:
# eval/problem142//code.c:18: }
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
