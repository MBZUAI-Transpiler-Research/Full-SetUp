	.file	"problem18.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$240, %rsp	#,
# problem18.c:13: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp88
	movq	%rax, -8(%rbp)	# tmp88, D.3199
	xorl	%eax, %eax	# tmp88
# problem18.c:14:   const char triangle[N][N] = {
	movq	$75, -240(%rbp)	#, triangle[0]
	movq	$0, -233(%rbp)	#, triangle[0]
	movq	$16479, -225(%rbp)	#, triangle[1]
	movq	$0, -218(%rbp)	#, triangle[1]
	movq	$5386001, -210(%rbp)	#, triangle[2]
	movq	$0, -203(%rbp)	#, triangle[2]
	movq	$173482770, -195(%rbp)	#, triangle[3]
	movq	$0, -188(%rbp)	#, triangle[3]
	movabsq	$279966778388, %rax	#, tmp91
	movq	%rax, -180(%rbp)	# tmp91, triangle[4]
	movq	$0, -173(%rbp)	#, triangle[4]
	movabsq	$37397540045075, %rax	#, tmp92
	movq	%rax, -165(%rbp)	# tmp92, triangle[5]
	movq	$0, -158(%rbp)	#, triangle[5]
	movabsq	$18928123966718552, %rax	#, tmp93
	movq	%rax, -150(%rbp)	# tmp93, triangle[6]
	movq	$0, -143(%rbp)	#, triangle[6]
	movabsq	$6649019518285005155, %rax	#, tmp94
	movq	%rax, -135(%rbp)	# tmp94, triangle[7]
	movq	$92, -128(%rbp)	#, triangle[7]
	movabsq	$5066593918680443177, %rax	#, tmp95
	movq	%rax, -120(%rbp)	# tmp95, triangle[8]
	movq	$8518, -113(%rbp)	#, triangle[8]
	movabsq	$1163371465539072041, %rax	#, tmp96
	movq	%rax, -105(%rbp)	# tmp96, triangle[9]
	movq	$1924624, -98(%rbp)	#, triangle[9]
	movabsq	$3772656500320519989, %rax	#, tmp97
	movq	%rax, -90(%rbp)	# tmp97, triangle[10]
	movq	$238248244, -83(%rbp)	#, triangle[10]
	movabsq	$5625358005095697222, %rax	#, tmp98
	movq	%rax, -75(%rbp)	# tmp98, triangle[11]
	movabsq	$245102815054, %rax	#, tmp99
	movq	%rax, -68(%rbp)	# tmp99, triangle[11]
	movabsq	$3124106233329764187, %rax	#, tmp100
	movq	%rax, -60(%rbp)	# tmp100, triangle[12]
	movabsq	$52901568461355, %rax	#, tmp101
	movq	%rax, -53(%rbp)	# tmp101, triangle[12]
	movabsq	$2180645302086943295, %rax	#, tmp102
	movq	%rax, -45(%rbp)	# tmp102, triangle[13]
	movabsq	$8770079563991326, %rax	#, tmp103
	movq	%rax, -38(%rbp)	# tmp103, triangle[13]
	movabsq	$7081357458935004676, %rax	#, tmp104
	movq	%rax, -30(%rbp)	# tmp104, triangle[14]
	movabsq	$1658516761753766242, %rax	#, tmp105
	movq	%rax, -23(%rbp)	# tmp105, triangle[14]
# problem18.c:32:   printf("%d\n", findmax(triangle, 0, 0));
	leaq	-240(%rbp), %rax	#, tmp85
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp85,
	call	findmax	#
# problem18.c:32:   printf("%d\n", findmax(triangle, 0, 0));
	movl	%eax, %esi	# _1,
	leaq	.LC0(%rip), %rax	#, tmp86
	movq	%rax, %rdi	# tmp86,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem18.c:34:   return 0;
	movl	$0, %eax	#, _20
# problem18.c:35: }
	movq	-8(%rbp), %rdx	# D.3199, tmp89
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp89
	je	.L3	#,
	call	__stack_chk_fail@PLT	#
.L3:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.type	findmax, @function
findmax:
.LFB1:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# triangle, triangle
	movl	%esi, -28(%rbp)	# row, row
	movl	%edx, -32(%rbp)	# col, col
# problem18.c:42:   if (row == N) {
	cmpl	$15, -28(%rbp)	#, row
	jne	.L5	#,
# problem18.c:43:     return triangle[row][col];
	movl	-28(%rbp), %eax	# row, tmp97
	movslq	%eax, %rdx	# tmp97, _1
	movq	%rdx, %rax	# _1, tmp98
	salq	$4, %rax	#, tmp99
	subq	%rdx, %rax	# _1, tmp98
	movq	%rax, %rcx	# tmp98, _2
	movq	-24(%rbp), %rax	# triangle, tmp100
	leaq	(%rcx,%rax), %rdx	#, _3
# problem18.c:43:     return triangle[row][col];
	movl	-32(%rbp), %eax	# col, tmp102
	cltq
	movzbl	(%rdx,%rax), %eax	# (*_3)[col_19(D)], _4
	movsbl	%al, %eax	# _4, _14
	jmp	.L6	#
.L5:
# problem18.c:45:   left = findmax(triangle, row+1, col);
	movl	-28(%rbp), %eax	# row, tmp103
	leal	1(%rax), %ecx	#, _5
	movl	-32(%rbp), %edx	# col, tmp104
	movq	-24(%rbp), %rax	# triangle, tmp105
	movl	%ecx, %esi	# _5,
	movq	%rax, %rdi	# tmp105,
	call	findmax	#
	movl	%eax, -8(%rbp)	# tmp106, left
# problem18.c:46:   right = findmax(triangle, row+1, col+1);
	movl	-32(%rbp), %eax	# col, tmp107
	leal	1(%rax), %edx	#, _6
	movl	-28(%rbp), %eax	# row, tmp108
	leal	1(%rax), %ecx	#, _7
	movq	-24(%rbp), %rax	# triangle, tmp109
	movl	%ecx, %esi	# _7,
	movq	%rax, %rdi	# tmp109,
	call	findmax	#
	movl	%eax, -4(%rbp)	# tmp110, right
# problem18.c:48:   return triangle[row][col] + (left > right ? left : right);
	movl	-28(%rbp), %eax	# row, tmp111
	movslq	%eax, %rdx	# tmp111, _8
	movq	%rdx, %rax	# _8, tmp112
	salq	$4, %rax	#, tmp113
	subq	%rdx, %rax	# _8, tmp112
	movq	%rax, %rcx	# tmp112, _9
	movq	-24(%rbp), %rax	# triangle, tmp114
	leaq	(%rcx,%rax), %rdx	#, _10
# problem18.c:48:   return triangle[row][col] + (left > right ? left : right);
	movl	-32(%rbp), %eax	# col, tmp116
	cltq
	movzbl	(%rdx,%rax), %eax	# (*_10)[col_19(D)], _11
	movsbl	%al, %ecx	# _11, _12
# problem18.c:48:   return triangle[row][col] + (left > right ? left : right);
	movl	-4(%rbp), %edx	# right, tmp117
	movl	-8(%rbp), %eax	# left, tmp119
	cmpl	%eax, %edx	# tmp119, tmp117
	cmovge	%edx, %eax	# tmp117,, _13
# problem18.c:48:   return triangle[row][col] + (left > right ? left : right);
	addl	%ecx, %eax	# _12, _14
.L6:
# problem18.c:49: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	findmax, .-findmax
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
