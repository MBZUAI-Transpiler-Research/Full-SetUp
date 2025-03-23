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
	movl	%edi, -20(%rbp)	# num, num
	movq	%rsi, -32(%rbp)	# result, result
# eval/problem156//code.c:5:     int even_count = 0, odd_count = 0;
	movl	$0, -12(%rbp)	#, even_count
# eval/problem156//code.c:5:     int even_count = 0, odd_count = 0;
	movl	$0, -8(%rbp)	#, odd_count
# eval/problem156//code.c:6:     num = abs(num);
	movl	-20(%rbp), %eax	# num, tmp107
	movl	%eax, %edx	# tmp107, tmp108
	negl	%edx	# tmp108
	cmovns	%edx, %eax	# tmp108,, tmp85
	movl	%eax, -20(%rbp)	# tmp85, num
.L4:
# eval/problem156//code.c:9:         int digit = num % 10;
	movl	-20(%rbp), %edx	# num, tmp87
	movslq	%edx, %rax	# tmp87, tmp88
	imulq	$1717986919, %rax, %rax	#, tmp88, tmp89
	shrq	$32, %rax	#, tmp90
	movl	%eax, %ecx	# tmp90, tmp91
	sarl	$2, %ecx	#, tmp91
	movl	%edx, %eax	# tmp87, tmp92
	sarl	$31, %eax	#, tmp92
	subl	%eax, %ecx	# tmp92, tmp86
	movl	%ecx, %eax	# tmp86, tmp93
	sall	$2, %eax	#, tmp93
	addl	%ecx, %eax	# tmp86, tmp93
	addl	%eax, %eax	# tmp94
	subl	%eax, %edx	# tmp93, tmp95
	movl	%edx, -4(%rbp)	# tmp95, digit
# eval/problem156//code.c:10:         if (digit % 2 == 0) {
	movl	-4(%rbp), %eax	# digit, digit.0_1
	andl	$1, %eax	#, _2
# eval/problem156//code.c:10:         if (digit % 2 == 0) {
	testl	%eax, %eax	# _2
	jne	.L2	#,
# eval/problem156//code.c:11:             even_count++;
	addl	$1, -12(%rbp)	#, even_count
	jmp	.L3	#
.L2:
# eval/problem156//code.c:13:             odd_count++;
	addl	$1, -8(%rbp)	#, odd_count
.L3:
# eval/problem156//code.c:15:         num /= 10;
	movl	-20(%rbp), %eax	# num, tmp97
	movslq	%eax, %rdx	# tmp97, tmp98
	imulq	$1717986919, %rdx, %rdx	#, tmp98, tmp99
	shrq	$32, %rdx	#, tmp100
	movl	%edx, %ecx	# tmp100, tmp101
	sarl	$2, %ecx	#, tmp101
	cltd
	movl	%ecx, %eax	# tmp101, tmp101
	subl	%edx, %eax	# tmp102, tmp101
	movl	%eax, -20(%rbp)	# tmp96, num
# eval/problem156//code.c:16:     } while (num > 0);
	cmpl	$0, -20(%rbp)	#, num
	jg	.L4	#,
# eval/problem156//code.c:18:     result[0] = even_count;
	movq	-32(%rbp), %rax	# result, tmp103
	movl	-12(%rbp), %edx	# even_count, tmp104
	movl	%edx, (%rax)	# tmp104, *result_18(D)
# eval/problem156//code.c:19:     result[1] = odd_count;
	movq	-32(%rbp), %rax	# result, tmp105
	leaq	4(%rax), %rdx	#, _3
# eval/problem156//code.c:19:     result[1] = odd_count;
	movl	-8(%rbp), %eax	# odd_count, tmp106
	movl	%eax, (%rdx)	# tmp106, *_3
# eval/problem156//code.c:20: }
	nop	
	popq	%rbp	#
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
