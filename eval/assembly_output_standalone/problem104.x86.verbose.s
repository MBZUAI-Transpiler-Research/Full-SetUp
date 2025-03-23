	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"-1"
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
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# n, n
	movl	%esi, -24(%rbp)	# m, m
# eval/problem104//code.c:5:     if (n > m) return "-1";
	movl	-20(%rbp), %eax	# n, tmp97
	cmpl	-24(%rbp), %eax	# m, tmp97
	jle	.L2	#,
# eval/problem104//code.c:5:     if (n > m) return "-1";
	leaq	.LC0(%rip), %rax	#, _16
	jmp	.L3	#
.L2:
# eval/problem104//code.c:6:     int num = (m + n) / 2;
	movl	-24(%rbp), %edx	# m, tmp98
	movl	-20(%rbp), %eax	# n, tmp99
	addl	%edx, %eax	# tmp98, _1
# eval/problem104//code.c:6:     int num = (m + n) / 2;
	movl	%eax, %edx	# _1, tmp100
	shrl	$31, %edx	#, tmp100
	addl	%edx, %eax	# tmp100, tmp101
	sarl	%eax	# tmp102
	movl	%eax, -16(%rbp)	# tmp102, num
# eval/problem104//code.c:7:     char* out = (char*)malloc(33);
	movl	$33, %edi	#,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp103, out
# eval/problem104//code.c:8:     out[0] = '\0';
	movq	-8(%rbp), %rax	# out, tmp104
	movb	$0, (%rax)	#, *out_24
# eval/problem104//code.c:10:     int index = 32;
	movl	$32, -12(%rbp)	#, index
# eval/problem104//code.c:11:     out[index--] = '\0';
	movl	-12(%rbp), %eax	# index, index.0_2
	leal	-1(%rax), %edx	#, tmp105
	movl	%edx, -12(%rbp)	# tmp105, index
	movslq	%eax, %rdx	# index.0_2, _3
# eval/problem104//code.c:11:     out[index--] = '\0';
	movq	-8(%rbp), %rax	# out, tmp106
	addq	%rdx, %rax	# _3, _4
# eval/problem104//code.c:11:     out[index--] = '\0';
	movb	$0, (%rax)	#, *_4
.L4:
# eval/problem104//code.c:14:         out[index--] = '0' + num % 2;
	movl	-16(%rbp), %eax	# num, tmp107
	cltd
	shrl	$31, %edx	#, tmp109
	addl	%edx, %eax	# tmp109, tmp110
	andl	$1, %eax	#, tmp111
	subl	%edx, %eax	# tmp109, tmp112
# eval/problem104//code.c:14:         out[index--] = '0' + num % 2;
	leal	48(%rax), %ecx	#, _7
# eval/problem104//code.c:14:         out[index--] = '0' + num % 2;
	movl	-12(%rbp), %eax	# index, index.1_8
	leal	-1(%rax), %edx	#, tmp113
	movl	%edx, -12(%rbp)	# tmp113, index
	movslq	%eax, %rdx	# index.1_8, _9
# eval/problem104//code.c:14:         out[index--] = '0' + num % 2;
	movq	-8(%rbp), %rax	# out, tmp114
	addq	%rdx, %rax	# _9, _10
# eval/problem104//code.c:14:         out[index--] = '0' + num % 2;
	movl	%ecx, %edx	# _7, _11
# eval/problem104//code.c:14:         out[index--] = '0' + num % 2;
	movb	%dl, (%rax)	# _11, *_10
# eval/problem104//code.c:15:         num /= 2;
	movl	-16(%rbp), %eax	# num, tmp116
	movl	%eax, %edx	# tmp116, tmp117
	shrl	$31, %edx	#, tmp117
	addl	%edx, %eax	# tmp117, tmp118
	sarl	%eax	# tmp119
	movl	%eax, -16(%rbp)	# tmp119, num
# eval/problem104//code.c:16:     } while (num > 0);
	cmpl	$0, -16(%rbp)	#, num
	jg	.L4	#,
# eval/problem104//code.c:18:     return &out[index + 1]; 
	movl	-12(%rbp), %eax	# index, tmp120
	cltq
	leaq	1(%rax), %rdx	#, _13
# eval/problem104//code.c:18:     return &out[index + 1]; 
	movq	-8(%rbp), %rax	# out, tmp121
	addq	%rdx, %rax	# _13, _16
.L3:
# eval/problem104//code.c:19: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
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
