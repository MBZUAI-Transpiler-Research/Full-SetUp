	.file	"problem111.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"YES"
.LC1:
	.string	"NO"
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
	movq	%rdi, -24(%rbp)	# lst1, lst1
	movl	%esi, -28(%rbp)	# size1, size1
	movq	%rdx, -40(%rbp)	# lst2, lst2
	movl	%ecx, -32(%rbp)	# size2, size2
# problem111.c:4:     int num = 0;
	movl	$0, -12(%rbp)	#, num
# problem111.c:5:     for (int i = 0; i < size1; i++)
	movl	$0, -8(%rbp)	#, i
# problem111.c:5:     for (int i = 0; i < size1; i++)
	jmp	.L2	#
.L4:
# problem111.c:6:         if (lst1[i] % 2 == 0) num += 1;
	movl	-8(%rbp), %eax	# i, tmp96
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# lst1, tmp97
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %eax	# *_3, _4
# problem111.c:6:         if (lst1[i] % 2 == 0) num += 1;
	andl	$1, %eax	#, _6
# problem111.c:6:         if (lst1[i] % 2 == 0) num += 1;
	testl	%eax, %eax	# _6
	jne	.L3	#,
# problem111.c:6:         if (lst1[i] % 2 == 0) num += 1;
	addl	$1, -12(%rbp)	#, num
.L3:
# problem111.c:5:     for (int i = 0; i < size1; i++)
	addl	$1, -8(%rbp)	#, i
.L2:
# problem111.c:5:     for (int i = 0; i < size1; i++)
	movl	-8(%rbp), %eax	# i, tmp98
	cmpl	-28(%rbp), %eax	# size1, tmp98
	jl	.L4	#,
# problem111.c:7:     for (int i = 0; i < size2; i++)
	movl	$0, -4(%rbp)	#, i
# problem111.c:7:     for (int i = 0; i < size2; i++)
	jmp	.L5	#
.L7:
# problem111.c:8:         if (lst2[i] % 2 == 0) num += 1;
	movl	-4(%rbp), %eax	# i, tmp99
	cltq
	leaq	0(,%rax,4), %rdx	#, _8
	movq	-40(%rbp), %rax	# lst2, tmp100
	addq	%rdx, %rax	# _8, _9
	movl	(%rax), %eax	# *_9, _10
# problem111.c:8:         if (lst2[i] % 2 == 0) num += 1;
	andl	$1, %eax	#, _12
# problem111.c:8:         if (lst2[i] % 2 == 0) num += 1;
	testl	%eax, %eax	# _12
	jne	.L6	#,
# problem111.c:8:         if (lst2[i] % 2 == 0) num += 1;
	addl	$1, -12(%rbp)	#, num
.L6:
# problem111.c:7:     for (int i = 0; i < size2; i++)
	addl	$1, -4(%rbp)	#, i
.L5:
# problem111.c:7:     for (int i = 0; i < size2; i++)
	movl	-4(%rbp), %eax	# i, tmp101
	cmpl	-32(%rbp), %eax	# size2, tmp101
	jl	.L7	#,
# problem111.c:9:     if (num >= size1) return "YES";
	movl	-12(%rbp), %eax	# num, tmp102
	cmpl	-28(%rbp), %eax	# size1, tmp102
	jl	.L8	#,
# problem111.c:9:     if (num >= size1) return "YES";
	leaq	.LC0(%rip), %rax	#, _19
	jmp	.L9	#
.L8:
# problem111.c:10:     return "NO";
	leaq	.LC1(%rip), %rax	#, _19
.L9:
# problem111.c:11: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC2:
	.string	"problem111.c"
	.align 8
.LC3:
	.string	"strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){1, 2, 3, 4}, 4), \"YES\") == 0"
	.align 8
.LC4:
	.string	"strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){1, 5, 3, 4}, 4), \"NO\") == 0"
	.align 8
.LC5:
	.string	"strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){2, 1, 4, 3}, 4), \"YES\") == 0"
	.align 8
.LC6:
	.string	"strcmp(func0((int[]){5, 7, 3}, 3, (int[]){2, 6, 4}, 3), \"YES\") == 0"
	.align 8
.LC7:
	.string	"strcmp(func0((int[]){5, 7, 3}, 3, (int[]){2, 6, 3}, 3), \"NO\") == 0"
	.align 8
.LC8:
	.string	"strcmp(func0((int[]){3, 2, 6, 1, 8, 9}, 6, (int[]){3, 5, 5, 1, 1, 1}, 6), \"NO\") == 0"
	.align 8
.LC9:
	.string	"strcmp(func0((int[]){100, 200}, 2, (int[]){200, 200}, 2), \"YES\") == 0"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
# problem111.c:18: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp141
	movq	%rax, -8(%rbp)	# tmp141, D.2637
	xorl	%eax, %eax	# tmp141
# problem111.c:19:     assert(strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){1, 2, 3, 4}, 4), "YES") == 0);
	movl	$1, -32(%rbp)	#, MEM[(int[4] *)_113][0]
	movl	$2, -28(%rbp)	#, MEM[(int[4] *)_113][1]
	movl	$3, -24(%rbp)	#, MEM[(int[4] *)_113][2]
	movl	$4, -20(%rbp)	#, MEM[(int[4] *)_113][3]
	movl	$1, -64(%rbp)	#, MEM[(int[4] *)_112][0]
	movl	$2, -60(%rbp)	#, MEM[(int[4] *)_112][1]
	movl	$3, -56(%rbp)	#, MEM[(int[4] *)_112][2]
	movl	$4, -52(%rbp)	#, MEM[(int[4] *)_112][3]
	leaq	-32(%rbp), %rdx	#, tmp98
	leaq	-64(%rbp), %rax	#, tmp99
	movl	$4, %ecx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp99,
	call	func0	#
	movq	%rax, %rdx	#, _1
	leaq	.LC0(%rip), %rax	#, tmp100
	movq	%rax, %rsi	# tmp100,
	movq	%rdx, %rdi	# _1,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _2
	je	.L11	#,
# problem111.c:19:     assert(strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){1, 2, 3, 4}, 4), "YES") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp101
	movq	%rax, %rcx	# tmp101,
	movl	$19, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp102
	movq	%rax, %rsi	# tmp102,
	leaq	.LC3(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	__assert_fail@PLT	#
.L11:
# problem111.c:20:     assert(strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){1, 5, 3, 4}, 4), "NO") == 0);
	movl	$1, -32(%rbp)	#, MEM[(int[4] *)_113][0]
	movl	$5, -28(%rbp)	#, MEM[(int[4] *)_113][1]
	movl	$3, -24(%rbp)	#, MEM[(int[4] *)_113][2]
	movl	$4, -20(%rbp)	#, MEM[(int[4] *)_113][3]
	movl	$1, -64(%rbp)	#, MEM[(int[4] *)_112][0]
	movl	$2, -60(%rbp)	#, MEM[(int[4] *)_112][1]
	movl	$3, -56(%rbp)	#, MEM[(int[4] *)_112][2]
	movl	$4, -52(%rbp)	#, MEM[(int[4] *)_112][3]
	leaq	-32(%rbp), %rdx	#, tmp104
	leaq	-64(%rbp), %rax	#, tmp105
	movl	$4, %ecx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp105,
	call	func0	#
	movq	%rax, %rdx	#, _3
	leaq	.LC1(%rip), %rax	#, tmp106
	movq	%rax, %rsi	# tmp106,
	movq	%rdx, %rdi	# _3,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _4
	je	.L12	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp107
	movq	%rax, %rcx	# tmp107,
	movl	$20, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp108
	movq	%rax, %rsi	# tmp108,
	leaq	.LC4(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	__assert_fail@PLT	#
.L12:
# problem111.c:21:     assert(strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){2, 1, 4, 3}, 4), "YES") == 0);
	movl	$2, -32(%rbp)	#, MEM[(int[4] *)_113][0]
	movl	$1, -28(%rbp)	#, MEM[(int[4] *)_113][1]
	movl	$4, -24(%rbp)	#, MEM[(int[4] *)_113][2]
	movl	$3, -20(%rbp)	#, MEM[(int[4] *)_113][3]
	movl	$1, -64(%rbp)	#, MEM[(int[4] *)_112][0]
	movl	$2, -60(%rbp)	#, MEM[(int[4] *)_112][1]
	movl	$3, -56(%rbp)	#, MEM[(int[4] *)_112][2]
	movl	$4, -52(%rbp)	#, MEM[(int[4] *)_112][3]
	leaq	-32(%rbp), %rdx	#, tmp110
	leaq	-64(%rbp), %rax	#, tmp111
	movl	$4, %ecx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp111,
	call	func0	#
	movq	%rax, %rdx	#, _5
	leaq	.LC0(%rip), %rax	#, tmp112
	movq	%rax, %rsi	# tmp112,
	movq	%rdx, %rdi	# _5,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _6
	je	.L13	#,
# problem111.c:21:     assert(strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){2, 1, 4, 3}, 4), "YES") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp113
	movq	%rax, %rcx	# tmp113,
	movl	$21, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp114
	movq	%rax, %rsi	# tmp114,
	leaq	.LC5(%rip), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	__assert_fail@PLT	#
.L13:
# problem111.c:22:     assert(strcmp(func0((int[]){5, 7, 3}, 3, (int[]){2, 6, 4}, 3), "YES") == 0);
	movl	$2, -32(%rbp)	#, MEM[(int[3] *)_113][0]
	movl	$6, -28(%rbp)	#, MEM[(int[3] *)_113][1]
	movl	$4, -24(%rbp)	#, MEM[(int[3] *)_113][2]
	movl	$5, -64(%rbp)	#, MEM[(int[3] *)_112][0]
	movl	$7, -60(%rbp)	#, MEM[(int[3] *)_112][1]
	movl	$3, -56(%rbp)	#, MEM[(int[3] *)_112][2]
	leaq	-32(%rbp), %rdx	#, tmp116
	leaq	-64(%rbp), %rax	#, tmp117
	movl	$3, %ecx	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp117,
	call	func0	#
	movq	%rax, %rdx	#, _7
	leaq	.LC0(%rip), %rax	#, tmp118
	movq	%rax, %rsi	# tmp118,
	movq	%rdx, %rdi	# _7,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _8
	je	.L14	#,
# problem111.c:22:     assert(strcmp(func0((int[]){5, 7, 3}, 3, (int[]){2, 6, 4}, 3), "YES") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp119
	movq	%rax, %rcx	# tmp119,
	movl	$22, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp120
	movq	%rax, %rsi	# tmp120,
	leaq	.LC6(%rip), %rax	#, tmp121
	movq	%rax, %rdi	# tmp121,
	call	__assert_fail@PLT	#
.L14:
# problem111.c:23:     assert(strcmp(func0((int[]){5, 7, 3}, 3, (int[]){2, 6, 3}, 3), "NO") == 0);
	movl	$2, -32(%rbp)	#, MEM[(int[3] *)_113][0]
	movl	$6, -28(%rbp)	#, MEM[(int[3] *)_113][1]
	movl	$3, -24(%rbp)	#, MEM[(int[3] *)_113][2]
	movl	$5, -64(%rbp)	#, MEM[(int[3] *)_112][0]
	movl	$7, -60(%rbp)	#, MEM[(int[3] *)_112][1]
	movl	$3, -56(%rbp)	#, MEM[(int[3] *)_112][2]
	leaq	-32(%rbp), %rdx	#, tmp122
	leaq	-64(%rbp), %rax	#, tmp123
	movl	$3, %ecx	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp123,
	call	func0	#
	movq	%rax, %rdx	#, _9
	leaq	.LC1(%rip), %rax	#, tmp124
	movq	%rax, %rsi	# tmp124,
	movq	%rdx, %rdi	# _9,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _10
	je	.L15	#,
# problem111.c:23:     assert(strcmp(func0((int[]){5, 7, 3}, 3, (int[]){2, 6, 3}, 3), "NO") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp125
	movq	%rax, %rcx	# tmp125,
	movl	$23, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp126
	movq	%rax, %rsi	# tmp126,
	leaq	.LC7(%rip), %rax	#, tmp127
	movq	%rax, %rdi	# tmp127,
	call	__assert_fail@PLT	#
.L15:
# problem111.c:24:     assert(strcmp(func0((int[]){3, 2, 6, 1, 8, 9}, 6, (int[]){3, 5, 5, 1, 1, 1}, 6), "NO") == 0);
	movl	$3, -32(%rbp)	#, MEM[(int[6] *)_113][0]
	movl	$5, -28(%rbp)	#, MEM[(int[6] *)_113][1]
	movl	$5, -24(%rbp)	#, MEM[(int[6] *)_113][2]
	movl	$1, -20(%rbp)	#, MEM[(int[6] *)_113][3]
	movl	$1, -16(%rbp)	#, MEM[(int[6] *)_113][4]
	movl	$1, -12(%rbp)	#, MEM[(int[6] *)_113][5]
	movl	$3, -64(%rbp)	#, MEM[(int[6] *)_112][0]
	movl	$2, -60(%rbp)	#, MEM[(int[6] *)_112][1]
	movl	$6, -56(%rbp)	#, MEM[(int[6] *)_112][2]
	movl	$1, -52(%rbp)	#, MEM[(int[6] *)_112][3]
	movl	$8, -48(%rbp)	#, MEM[(int[6] *)_112][4]
	movl	$9, -44(%rbp)	#, MEM[(int[6] *)_112][5]
	leaq	-32(%rbp), %rdx	#, tmp128
	leaq	-64(%rbp), %rax	#, tmp129
	movl	$6, %ecx	#,
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp129,
	call	func0	#
	movq	%rax, %rdx	#, _11
	leaq	.LC1(%rip), %rax	#, tmp130
	movq	%rax, %rsi	# tmp130,
	movq	%rdx, %rdi	# _11,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _12
	je	.L16	#,
# problem111.c:24:     assert(strcmp(func0((int[]){3, 2, 6, 1, 8, 9}, 6, (int[]){3, 5, 5, 1, 1, 1}, 6), "NO") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp131
	movq	%rax, %rcx	# tmp131,
	movl	$24, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp132
	movq	%rax, %rsi	# tmp132,
	leaq	.LC8(%rip), %rax	#, tmp133
	movq	%rax, %rdi	# tmp133,
	call	__assert_fail@PLT	#
.L16:
# problem111.c:25:     assert(strcmp(func0((int[]){100, 200}, 2, (int[]){200, 200}, 2), "YES") == 0);
	movl	$200, -32(%rbp)	#, MEM[(int[2] *)_113][0]
	movl	$200, -28(%rbp)	#, MEM[(int[2] *)_113][1]
	movl	$100, -64(%rbp)	#, MEM[(int[2] *)_112][0]
	movl	$200, -60(%rbp)	#, MEM[(int[2] *)_112][1]
	leaq	-32(%rbp), %rdx	#, tmp134
	leaq	-64(%rbp), %rax	#, tmp135
	movl	$2, %ecx	#,
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp135,
	call	func0	#
	movq	%rax, %rdx	#, _13
	leaq	.LC0(%rip), %rax	#, tmp136
	movq	%rax, %rsi	# tmp136,
	movq	%rdx, %rdi	# _13,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _14
	je	.L17	#,
# problem111.c:25:     assert(strcmp(func0((int[]){100, 200}, 2, (int[]){200, 200}, 2), "YES") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp137
	movq	%rax, %rcx	# tmp137,
	movl	$25, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp138
	movq	%rax, %rsi	# tmp138,
	leaq	.LC9(%rip), %rax	#, tmp139
	movq	%rax, %rdi	# tmp139,
	call	__assert_fail@PLT	#
.L17:
# problem111.c:27:     return 0;
	movl	$0, %eax	#, _96
# problem111.c:28: }
	movq	-8(%rbp), %rdx	# D.2637, tmp142
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp142
	je	.L19	#,
# problem111.c:28: }
	call	__stack_chk_fail@PLT	#
.L19:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
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
