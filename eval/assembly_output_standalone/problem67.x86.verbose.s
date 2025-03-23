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
	movq	%rdi, -24(%rbp)	# s, s
# eval/problem67//code.c:5:     int sum = 0;
	movl	$0, -8(%rbp)	#, sum
# eval/problem67//code.c:6:     for (int i = 0; s[i] != '\0'; i++)
	movl	$0, -4(%rbp)	#, i
# eval/problem67//code.c:6:     for (int i = 0; s[i] != '\0'; i++)
	jmp	.L2	#
.L4:
# eval/problem67//code.c:7:         if (s[i] >= 'A' && s[i] <= 'Z')
	movl	-4(%rbp), %eax	# i, tmp97
	movslq	%eax, %rdx	# tmp97, _1
	movq	-24(%rbp), %rax	# s, tmp98
	addq	%rdx, %rax	# _1, _2
	movzbl	(%rax), %eax	# *_2, _3
# eval/problem67//code.c:7:         if (s[i] >= 'A' && s[i] <= 'Z')
	cmpb	$64, %al	#, _3
	jle	.L3	#,
# eval/problem67//code.c:7:         if (s[i] >= 'A' && s[i] <= 'Z')
	movl	-4(%rbp), %eax	# i, tmp99
	movslq	%eax, %rdx	# tmp99, _4
	movq	-24(%rbp), %rax	# s, tmp100
	addq	%rdx, %rax	# _4, _5
	movzbl	(%rax), %eax	# *_5, _6
# eval/problem67//code.c:7:         if (s[i] >= 'A' && s[i] <= 'Z')
	cmpb	$90, %al	#, _6
	jg	.L3	#,
# eval/problem67//code.c:8:             sum += s[i];
	movl	-4(%rbp), %eax	# i, tmp101
	movslq	%eax, %rdx	# tmp101, _7
	movq	-24(%rbp), %rax	# s, tmp102
	addq	%rdx, %rax	# _7, _8
	movzbl	(%rax), %eax	# *_8, _9
	movsbl	%al, %eax	# _9, _10
# eval/problem67//code.c:8:             sum += s[i];
	addl	%eax, -8(%rbp)	# _10, sum
.L3:
# eval/problem67//code.c:6:     for (int i = 0; s[i] != '\0'; i++)
	addl	$1, -4(%rbp)	#, i
.L2:
# eval/problem67//code.c:6:     for (int i = 0; s[i] != '\0'; i++)
	movl	-4(%rbp), %eax	# i, tmp103
	movslq	%eax, %rdx	# tmp103, _11
	movq	-24(%rbp), %rax	# s, tmp104
	addq	%rdx, %rax	# _11, _12
	movzbl	(%rax), %eax	# *_12, _13
# eval/problem67//code.c:6:     for (int i = 0; s[i] != '\0'; i++)
	testb	%al, %al	# _13
	jne	.L4	#,
# eval/problem67//code.c:9:     return sum;
	movl	-8(%rbp), %eax	# sum, _21
# eval/problem67//code.c:10: }
	popq	%rbp	#
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
