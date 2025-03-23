	.file	"problem80.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
# problem80.c:6:     char* out = malloc(64);
	movl	$64, %edi	#,
	call	malloc@PLT	#
	movq	%rax, -16(%rbp)	# tmp107, out
# problem80.c:7:     if (!out) {
	cmpq	$0, -16(%rbp)	#, out
	jne	.L2	#,
# problem80.c:8:         return NULL;
	movl	$0, %eax	#, _25
	jmp	.L3	#
.L2:
# problem80.c:10:     int index = 62;
	movl	$62, -28(%rbp)	#, index
# problem80.c:11:     out[63] = '\0';
	movq	-16(%rbp), %rax	# out, tmp108
	addq	$63, %rax	#, _1
# problem80.c:11:     out[63] = '\0';
	movb	$0, (%rax)	#, *_1
# problem80.c:13:     if (decimal == 0) {
	cmpl	$0, -36(%rbp)	#, decimal
	jne	.L6	#,
# problem80.c:14:         out[index--] = '0';
	movl	-28(%rbp), %eax	# index, index.0_2
	leal	-1(%rax), %edx	#, tmp109
	movl	%edx, -28(%rbp)	# tmp109, index
	movslq	%eax, %rdx	# index.0_2, _3
# problem80.c:14:         out[index--] = '0';
	movq	-16(%rbp), %rax	# out, tmp110
	addq	%rdx, %rax	# _3, _4
# problem80.c:14:         out[index--] = '0';
	movb	$48, (%rax)	#, *_4
	jmp	.L5	#
.L7:
# problem80.c:17:             out[index--] = '0' + (decimal % 2);
	movl	-36(%rbp), %eax	# decimal, tmp111
	cltd
	shrl	$31, %edx	#, tmp113
	addl	%edx, %eax	# tmp113, tmp114
	andl	$1, %eax	#, tmp115
	subl	%edx, %eax	# tmp113, tmp116
# problem80.c:17:             out[index--] = '0' + (decimal % 2);
	leal	48(%rax), %ecx	#, _7
# problem80.c:17:             out[index--] = '0' + (decimal % 2);
	movl	-28(%rbp), %eax	# index, index.1_8
	leal	-1(%rax), %edx	#, tmp117
	movl	%edx, -28(%rbp)	# tmp117, index
	movslq	%eax, %rdx	# index.1_8, _9
# problem80.c:17:             out[index--] = '0' + (decimal % 2);
	movq	-16(%rbp), %rax	# out, tmp118
	addq	%rdx, %rax	# _9, _10
# problem80.c:17:             out[index--] = '0' + (decimal % 2);
	movl	%ecx, %edx	# _7, _11
# problem80.c:17:             out[index--] = '0' + (decimal % 2);
	movb	%dl, (%rax)	# _11, *_10
# problem80.c:18:             decimal /= 2;
	movl	-36(%rbp), %eax	# decimal, tmp120
	movl	%eax, %edx	# tmp120, tmp121
	shrl	$31, %edx	#, tmp121
	addl	%edx, %eax	# tmp121, tmp122
	sarl	%eax	# tmp123
	movl	%eax, -36(%rbp)	# tmp123, decimal
.L6:
# problem80.c:16:         while (decimal > 0) {
	cmpl	$0, -36(%rbp)	#, decimal
	jg	.L7	#,
.L5:
# problem80.c:22:     out[index--] = 'b';
	movl	-28(%rbp), %eax	# index, index.2_12
	leal	-1(%rax), %edx	#, tmp124
	movl	%edx, -28(%rbp)	# tmp124, index
	movslq	%eax, %rdx	# index.2_12, _13
# problem80.c:22:     out[index--] = 'b';
	movq	-16(%rbp), %rax	# out, tmp125
	addq	%rdx, %rax	# _13, _14
# problem80.c:22:     out[index--] = 'b';
	movb	$98, (%rax)	#, *_14
# problem80.c:23:     out[index--] = 'd';
	movl	-28(%rbp), %eax	# index, index.3_15
	leal	-1(%rax), %edx	#, tmp126
	movl	%edx, -28(%rbp)	# tmp126, index
	movslq	%eax, %rdx	# index.3_15, _16
# problem80.c:23:     out[index--] = 'd';
	movq	-16(%rbp), %rax	# out, tmp127
	addq	%rdx, %rax	# _16, _17
# problem80.c:23:     out[index--] = 'd';
	movb	$100, (%rax)	#, *_17
# problem80.c:25:     int start = index + 1;
	movl	-28(%rbp), %eax	# index, tmp131
	addl	$1, %eax	#, tmp130
	movl	%eax, -24(%rbp)	# tmp130, start
# problem80.c:26:     int len = 62 - start;
	movl	$62, %eax	#, tmp135
	subl	-24(%rbp), %eax	# start, tmp134
	movl	%eax, -20(%rbp)	# tmp134, len
# problem80.c:27:     char* formatted_out = malloc(len + 3);
	movl	-20(%rbp), %eax	# len, tmp136
	addl	$3, %eax	#, _18
# problem80.c:27:     char* formatted_out = malloc(len + 3);
	cltq
	movq	%rax, %rdi	# _19,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp137, formatted_out
# problem80.c:28:     if (!formatted_out) {
	cmpq	$0, -8(%rbp)	#, formatted_out
	jne	.L8	#,
# problem80.c:29:         free(out);
	movq	-16(%rbp), %rax	# out, tmp138
	movq	%rax, %rdi	# tmp138,
	call	free@PLT	#
# problem80.c:30:         return NULL;
	movl	$0, %eax	#, _25
	jmp	.L3	#
.L8:
# problem80.c:33:     strcpy(formatted_out, &out[start]);
	movl	-24(%rbp), %eax	# start, tmp139
	movslq	%eax, %rdx	# tmp139, _20
# problem80.c:33:     strcpy(formatted_out, &out[start]);
	movq	-16(%rbp), %rax	# out, tmp140
	addq	%rax, %rdx	# tmp140, _21
# problem80.c:33:     strcpy(formatted_out, &out[start]);
	movq	-8(%rbp), %rax	# formatted_out, tmp141
	movq	%rdx, %rsi	# _21,
	movq	%rax, %rdi	# tmp141,
	call	strcpy@PLT	#
# problem80.c:35:     strcat(formatted_out, "db");
	movq	-8(%rbp), %rax	# formatted_out, tmp143
	movq	%rax, %rdi	# tmp143,
	call	strlen@PLT	#
	movq	%rax, %rdx	# tmp145, _49
	movq	-8(%rbp), %rax	# formatted_out, tmp146
	addq	%rdx, %rax	# _49, _50
	movw	$25188, (%rax)	#, MEM <char[1:3]> [(void *)_50]
	movb	$0, 2(%rax)	#, MEM <char[1:3]> [(void *)_50]
# problem80.c:37:     free(out);
	movq	-16(%rbp), %rax	# out, tmp147
	movq	%rax, %rdi	# tmp147,
	call	free@PLT	#
# problem80.c:39:     return formatted_out;
	movq	-8(%rbp), %rax	# formatted_out, _25
.L3:
# problem80.c:40: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"db0db"
.LC1:
	.string	"problem80.c"
.LC2:
	.string	"strcmp(binary, \"db0db\") == 0"
.LC3:
	.string	"db100000db"
	.align 8
.LC4:
	.string	"strcmp(binary, \"db100000db\") == 0"
.LC5:
	.string	"db1100111db"
	.align 8
.LC6:
	.string	"strcmp(binary, \"db1100111db\") == 0"
.LC7:
	.string	"db1111db"
	.align 8
.LC8:
	.string	"strcmp(binary, \"db1111db\") == 0"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# problem80.c:51:     binary = func0(0);
	movl	$0, %edi	#,
	call	func0	#
	movq	%rax, -8(%rbp)	# tmp88, binary
# problem80.c:52:     assert(strcmp(binary, "db0db") == 0);
	movq	-8(%rbp), %rax	# binary, tmp89
	leaq	.LC0(%rip), %rdx	#, tmp90
	movq	%rdx, %rsi	# tmp90,
	movq	%rax, %rdi	# tmp89,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _1
	je	.L10	#,
# problem80.c:52:     assert(strcmp(binary, "db0db") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp91
	movq	%rax, %rcx	# tmp91,
	movl	$52, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp92
	movq	%rax, %rsi	# tmp92,
	leaq	.LC2(%rip), %rax	#, tmp93
	movq	%rax, %rdi	# tmp93,
	call	__assert_fail@PLT	#
.L10:
# problem80.c:53:     free(binary);
	movq	-8(%rbp), %rax	# binary, tmp94
	movq	%rax, %rdi	# tmp94,
	call	free@PLT	#
# problem80.c:55:     binary = func0(32);
	movl	$32, %edi	#,
	call	func0	#
	movq	%rax, -8(%rbp)	# tmp95, binary
# problem80.c:56:     assert(strcmp(binary, "db100000db") == 0);
	movq	-8(%rbp), %rax	# binary, tmp96
	leaq	.LC3(%rip), %rdx	#, tmp97
	movq	%rdx, %rsi	# tmp97,
	movq	%rax, %rdi	# tmp96,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _2
	je	.L11	#,
# problem80.c:56:     assert(strcmp(binary, "db100000db") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp98
	movq	%rax, %rcx	# tmp98,
	movl	$56, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp99
	movq	%rax, %rsi	# tmp99,
	leaq	.LC4(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	__assert_fail@PLT	#
.L11:
# problem80.c:57:     free(binary);
	movq	-8(%rbp), %rax	# binary, tmp101
	movq	%rax, %rdi	# tmp101,
	call	free@PLT	#
# problem80.c:59:     binary = func0(103);
	movl	$103, %edi	#,
	call	func0	#
	movq	%rax, -8(%rbp)	# tmp102, binary
# problem80.c:60:     assert(strcmp(binary, "db1100111db") == 0);
	movq	-8(%rbp), %rax	# binary, tmp103
	leaq	.LC5(%rip), %rdx	#, tmp104
	movq	%rdx, %rsi	# tmp104,
	movq	%rax, %rdi	# tmp103,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _3
	je	.L12	#,
# problem80.c:60:     assert(strcmp(binary, "db1100111db") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp105
	movq	%rax, %rcx	# tmp105,
	movl	$60, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp106
	movq	%rax, %rsi	# tmp106,
	leaq	.LC6(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	__assert_fail@PLT	#
.L12:
# problem80.c:61:     free(binary);
	movq	-8(%rbp), %rax	# binary, tmp108
	movq	%rax, %rdi	# tmp108,
	call	free@PLT	#
# problem80.c:63:     binary = func0(15);
	movl	$15, %edi	#,
	call	func0	#
	movq	%rax, -8(%rbp)	# tmp109, binary
# problem80.c:64:     assert(strcmp(binary, "db1111db") == 0);
	movq	-8(%rbp), %rax	# binary, tmp110
	leaq	.LC7(%rip), %rdx	#, tmp111
	movq	%rdx, %rsi	# tmp111,
	movq	%rax, %rdi	# tmp110,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _4
	je	.L13	#,
# problem80.c:64:     assert(strcmp(binary, "db1111db") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp112
	movq	%rax, %rcx	# tmp112,
	movl	$64, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp113
	movq	%rax, %rsi	# tmp113,
	leaq	.LC8(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	__assert_fail@PLT	#
.L13:
# problem80.c:65:     free(binary);
	movq	-8(%rbp), %rax	# binary, tmp115
	movq	%rax, %rdi	# tmp115,
	call	free@PLT	#
# problem80.c:67:     return 0;
	movl	$0, %eax	#, _22
# problem80.c:68: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
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
