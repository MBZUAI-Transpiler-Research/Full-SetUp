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
	movl	%edi, -20(%rbp)	# n, n
# eval/problem132//code.c:4:     int prod = 1, has_odd = 0, digit;
	movl	$1, -12(%rbp)	#, prod
# eval/problem132//code.c:4:     int prod = 1, has_odd = 0, digit;
	movl	$0, -8(%rbp)	#, has_odd
# eval/problem132//code.c:5:     while (n > 0) {
	jmp	.L2	#
.L4:
# eval/problem132//code.c:6:         digit = n % 10;
	movl	-20(%rbp), %edx	# n, tmp86
	movslq	%edx, %rax	# tmp86, tmp87
	imulq	$1717986919, %rax, %rax	#, tmp87, tmp88
	shrq	$32, %rax	#, tmp89
	sarl	$2, %eax	#, tmp90
	movl	%edx, %esi	# tmp86, tmp91
	sarl	$31, %esi	#, tmp91
	subl	%esi, %eax	# tmp91, tmp90
	movl	%eax, %ecx	# tmp90, tmp85
	movl	%ecx, %eax	# tmp85, tmp92
	sall	$2, %eax	#, tmp92
	addl	%ecx, %eax	# tmp85, tmp92
	addl	%eax, %eax	# tmp93
	subl	%eax, %edx	# tmp92, tmp94
	movl	%edx, -4(%rbp)	# tmp94, digit
# eval/problem132//code.c:7:         if (digit % 2 == 1) {
	movl	-4(%rbp), %eax	# digit, tmp95
	cltd
	shrl	$31, %edx	#, tmp97
	addl	%edx, %eax	# tmp97, tmp98
	andl	$1, %eax	#, tmp99
	subl	%edx, %eax	# tmp97, tmp100
# eval/problem132//code.c:7:         if (digit % 2 == 1) {
	cmpl	$1, %eax	#, _1
	jne	.L3	#,
# eval/problem132//code.c:8:             has_odd = 1;
	movl	$1, -8(%rbp)	#, has_odd
# eval/problem132//code.c:9:             prod *= digit;
	movl	-12(%rbp), %eax	# prod, tmp102
	imull	-4(%rbp), %eax	# digit, tmp101
	movl	%eax, -12(%rbp)	# tmp101, prod
.L3:
# eval/problem132//code.c:11:         n /= 10;
	movl	-20(%rbp), %eax	# n, tmp104
	movslq	%eax, %rdx	# tmp104, tmp105
	imulq	$1717986919, %rdx, %rdx	#, tmp105, tmp106
	shrq	$32, %rdx	#, tmp107
	sarl	$2, %edx	#, tmp108
	sarl	$31, %eax	#, tmp104
	movl	%eax, %ecx	# tmp104, tmp109
	movl	%edx, %eax	# tmp108, tmp108
	subl	%ecx, %eax	# tmp109, tmp108
	movl	%eax, -20(%rbp)	# tmp103, n
.L2:
# eval/problem132//code.c:5:     while (n > 0) {
	cmpl	$0, -20(%rbp)	#, n
	jg	.L4	#,
# eval/problem132//code.c:13:     return has_odd ? prod : 0;
	cmpl	$0, -8(%rbp)	#, has_odd
	je	.L5	#,
# eval/problem132//code.c:13:     return has_odd ? prod : 0;
	movl	-12(%rbp), %eax	# prod, iftmp.0_7
	jmp	.L7	#
.L5:
# eval/problem132//code.c:13:     return has_odd ? prod : 0;
	movl	$0, %eax	#, iftmp.0_7
.L7:
# eval/problem132//code.c:14: }
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
