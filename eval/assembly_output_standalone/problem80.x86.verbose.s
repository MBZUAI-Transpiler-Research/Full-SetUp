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
	movl	%edi, -36(%rbp)	# decimal, decimal
# eval/problem80//code.c:6:     char* out = malloc(64);
	movl	$64, %edi	#,
	call	malloc@PLT	#
	movq	%rax, -16(%rbp)	# tmp107, out
# eval/problem80//code.c:7:     if (!out) {
	cmpq	$0, -16(%rbp)	#, out
	jne	.L2	#,
# eval/problem80//code.c:8:         return NULL;
	movl	$0, %eax	#, _25
	jmp	.L3	#
.L2:
# eval/problem80//code.c:10:     int index = 62;
	movl	$62, -28(%rbp)	#, index
# eval/problem80//code.c:11:     out[63] = '\0';
	movq	-16(%rbp), %rax	# out, tmp108
	addq	$63, %rax	#, _1
# eval/problem80//code.c:11:     out[63] = '\0';
	movb	$0, (%rax)	#, *_1
# eval/problem80//code.c:13:     if (decimal == 0) {
	cmpl	$0, -36(%rbp)	#, decimal
	jne	.L6	#,
# eval/problem80//code.c:14:         out[index--] = '0';
	movl	-28(%rbp), %eax	# index, index.0_2
	leal	-1(%rax), %edx	#, tmp109
	movl	%edx, -28(%rbp)	# tmp109, index
	movslq	%eax, %rdx	# index.0_2, _3
# eval/problem80//code.c:14:         out[index--] = '0';
	movq	-16(%rbp), %rax	# out, tmp110
	addq	%rdx, %rax	# _3, _4
# eval/problem80//code.c:14:         out[index--] = '0';
	movb	$48, (%rax)	#, *_4
	jmp	.L5	#
.L7:
# eval/problem80//code.c:17:             out[index--] = '0' + (decimal % 2);
	movl	-36(%rbp), %edx	# decimal, tmp111
	movl	%edx, %eax	# tmp111, tmp112
	sarl	$31, %eax	#, tmp112
	shrl	$31, %eax	#, tmp113
	addl	%eax, %edx	# tmp113, tmp114
	andl	$1, %edx	#, tmp115
	subl	%eax, %edx	# tmp113, tmp116
	movl	%edx, %eax	# tmp116, _5
# eval/problem80//code.c:17:             out[index--] = '0' + (decimal % 2);
	leal	48(%rax), %ecx	#, _7
# eval/problem80//code.c:17:             out[index--] = '0' + (decimal % 2);
	movl	-28(%rbp), %eax	# index, index.1_8
	leal	-1(%rax), %edx	#, tmp117
	movl	%edx, -28(%rbp)	# tmp117, index
	movslq	%eax, %rdx	# index.1_8, _9
# eval/problem80//code.c:17:             out[index--] = '0' + (decimal % 2);
	movq	-16(%rbp), %rax	# out, tmp118
	addq	%rdx, %rax	# _9, _10
# eval/problem80//code.c:17:             out[index--] = '0' + (decimal % 2);
	movl	%ecx, %edx	# _7, _11
# eval/problem80//code.c:17:             out[index--] = '0' + (decimal % 2);
	movb	%dl, (%rax)	# _11, *_10
# eval/problem80//code.c:18:             decimal /= 2;
	movl	-36(%rbp), %eax	# decimal, tmp120
	movl	%eax, %edx	# tmp120, tmp121
	shrl	$31, %edx	#, tmp121
	addl	%edx, %eax	# tmp121, tmp122
	sarl	%eax	# tmp123
	movl	%eax, -36(%rbp)	# tmp123, decimal
.L6:
# eval/problem80//code.c:16:         while (decimal > 0) {
	cmpl	$0, -36(%rbp)	#, decimal
	jg	.L7	#,
.L5:
# eval/problem80//code.c:22:     out[index--] = 'b';
	movl	-28(%rbp), %eax	# index, index.2_12
	leal	-1(%rax), %edx	#, tmp124
	movl	%edx, -28(%rbp)	# tmp124, index
	movslq	%eax, %rdx	# index.2_12, _13
# eval/problem80//code.c:22:     out[index--] = 'b';
	movq	-16(%rbp), %rax	# out, tmp125
	addq	%rdx, %rax	# _13, _14
# eval/problem80//code.c:22:     out[index--] = 'b';
	movb	$98, (%rax)	#, *_14
# eval/problem80//code.c:23:     out[index--] = 'd';
	movl	-28(%rbp), %eax	# index, index.3_15
	leal	-1(%rax), %edx	#, tmp126
	movl	%edx, -28(%rbp)	# tmp126, index
	movslq	%eax, %rdx	# index.3_15, _16
# eval/problem80//code.c:23:     out[index--] = 'd';
	movq	-16(%rbp), %rax	# out, tmp127
	addq	%rdx, %rax	# _16, _17
# eval/problem80//code.c:23:     out[index--] = 'd';
	movb	$100, (%rax)	#, *_17
# eval/problem80//code.c:25:     int start = index + 1;
	movl	-28(%rbp), %eax	# index, tmp131
	addl	$1, %eax	#, tmp130
	movl	%eax, -24(%rbp)	# tmp130, start
# eval/problem80//code.c:26:     int len = 62 - start;
	movl	$62, %eax	#, tmp135
	subl	-24(%rbp), %eax	# start, tmp134
	movl	%eax, -20(%rbp)	# tmp134, len
# eval/problem80//code.c:27:     char* formatted_out = malloc(len + 3);
	movl	-20(%rbp), %eax	# len, tmp136
	addl	$3, %eax	#, _18
# eval/problem80//code.c:27:     char* formatted_out = malloc(len + 3);
	cltq
	movq	%rax, %rdi	# _19,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp137, formatted_out
# eval/problem80//code.c:28:     if (!formatted_out) {
	cmpq	$0, -8(%rbp)	#, formatted_out
	jne	.L8	#,
# eval/problem80//code.c:29:         free(out);
	movq	-16(%rbp), %rax	# out, tmp138
	movq	%rax, %rdi	# tmp138,
	call	free@PLT	#
# eval/problem80//code.c:30:         return NULL;
	movl	$0, %eax	#, _25
	jmp	.L3	#
.L8:
# eval/problem80//code.c:33:     strcpy(formatted_out, &out[start]);
	movl	-24(%rbp), %eax	# start, tmp139
	movslq	%eax, %rdx	# tmp139, _20
# eval/problem80//code.c:33:     strcpy(formatted_out, &out[start]);
	movq	-16(%rbp), %rax	# out, tmp140
	addq	%rax, %rdx	# tmp140, _21
# eval/problem80//code.c:33:     strcpy(formatted_out, &out[start]);
	movq	-8(%rbp), %rax	# formatted_out, tmp141
	movq	%rdx, %rsi	# _21,
	movq	%rax, %rdi	# tmp141,
	call	strcpy@PLT	#
# eval/problem80//code.c:35:     strcat(formatted_out, "db");
	movq	-8(%rbp), %rax	# formatted_out, tmp143
	movq	%rax, %rdi	# tmp143,
	call	strlen@PLT	#
	movq	%rax, %rdx	# tmp145, _49
# eval/problem80//code.c:35:     strcat(formatted_out, "db");
	movq	-8(%rbp), %rax	# formatted_out, tmp146
	addq	%rdx, %rax	# _49, _50
	movw	$25188, (%rax)	#, MEM <char[1:3]> [(void *)_50]
	movb	$0, 2(%rax)	#, MEM <char[1:3]> [(void *)_50]
# eval/problem80//code.c:37:     free(out);
	movq	-16(%rbp), %rax	# out, tmp147
	movq	%rax, %rdi	# tmp147,
	call	free@PLT	#
# eval/problem80//code.c:39:     return formatted_out;
	movq	-8(%rbp), %rax	# formatted_out, _25
.L3:
# eval/problem80//code.c:40: }
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
