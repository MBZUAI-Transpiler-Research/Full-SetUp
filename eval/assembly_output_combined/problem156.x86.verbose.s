	.file	"problem156.c"
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
	movl	%edi, -20(%rbp)	# num, num
	movq	%rsi, -32(%rbp)	# result, result
# problem156.c:5:     int even_count = 0, odd_count = 0;
	movl	$0, -12(%rbp)	#, even_count
# problem156.c:5:     int even_count = 0, odd_count = 0;
	movl	$0, -8(%rbp)	#, odd_count
# problem156.c:6:     num = abs(num);
	movl	-20(%rbp), %eax	# num, tmp107
	movl	%eax, %edx	# tmp107, tmp108
	negl	%edx	# tmp108
	cmovns	%edx, %eax	# tmp108,, tmp85
	movl	%eax, -20(%rbp)	# tmp85, num
.L4:
# problem156.c:9:         int digit = num % 10;
	movl	-20(%rbp), %edx	# num, tmp87
	movslq	%edx, %rax	# tmp87, tmp88
	imulq	$1717986919, %rax, %rax	#, tmp88, tmp89
	shrq	$32, %rax	#, tmp90
	sarl	$2, %eax	#, tmp91
	movl	%edx, %esi	# tmp87, tmp92
	sarl	$31, %esi	#, tmp92
	subl	%esi, %eax	# tmp92, tmp91
	movl	%eax, %ecx	# tmp91, tmp86
	movl	%ecx, %eax	# tmp86, tmp93
	sall	$2, %eax	#, tmp93
	addl	%ecx, %eax	# tmp86, tmp93
	addl	%eax, %eax	# tmp94
	subl	%eax, %edx	# tmp93, tmp95
	movl	%edx, -4(%rbp)	# tmp95, digit
# problem156.c:10:         if (digit % 2 == 0) {
	movl	-4(%rbp), %eax	# digit, digit.0_1
	andl	$1, %eax	#, _2
# problem156.c:10:         if (digit % 2 == 0) {
	testl	%eax, %eax	# _2
	jne	.L2	#,
# problem156.c:11:             even_count++;
	addl	$1, -12(%rbp)	#, even_count
	jmp	.L3	#
.L2:
# problem156.c:13:             odd_count++;
	addl	$1, -8(%rbp)	#, odd_count
.L3:
# problem156.c:15:         num /= 10;
	movl	-20(%rbp), %eax	# num, tmp97
	movslq	%eax, %rdx	# tmp97, tmp98
	imulq	$1717986919, %rdx, %rdx	#, tmp98, tmp99
	shrq	$32, %rdx	#, tmp100
	sarl	$2, %edx	#, tmp101
	sarl	$31, %eax	#, tmp97
	movl	%eax, %ecx	# tmp97, tmp102
	movl	%edx, %eax	# tmp101, tmp101
	subl	%ecx, %eax	# tmp102, tmp101
	movl	%eax, -20(%rbp)	# tmp96, num
# problem156.c:16:     } while (num > 0);
	cmpl	$0, -20(%rbp)	#, num
	jg	.L4	#,
# problem156.c:18:     result[0] = even_count;
	movq	-32(%rbp), %rax	# result, tmp103
	movl	-12(%rbp), %edx	# even_count, tmp104
	movl	%edx, (%rax)	# tmp104, *result_18(D)
# problem156.c:19:     result[1] = odd_count;
	movq	-32(%rbp), %rax	# result, tmp105
	leaq	4(%rax), %rdx	#, _3
# problem156.c:19:     result[1] = odd_count;
	movl	-8(%rbp), %eax	# odd_count, tmp106
	movl	%eax, (%rdx)	# tmp106, *_3
# problem156.c:20: }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# a, a
	movq	%rsi, -16(%rbp)	# b, b
	movl	%edx, -20(%rbp)	# size, size
# problem156.c:28:     return memcmp(a, b, size * sizeof(int)) == 0;
	movl	-20(%rbp), %eax	# size, tmp88
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-16(%rbp), %rcx	# b, tmp89
	movq	-8(%rbp), %rax	# a, tmp90
	movq	%rcx, %rsi	# tmp89,
	movq	%rax, %rdi	# tmp90,
	call	memcmp@PLT	#
# problem156.c:28:     return memcmp(a, b, size * sizeof(int)) == 0;
	testl	%eax, %eax	# _3
	sete	%al	#, _4
	movzbl	%al, %eax	# _4, _9
# problem156.c:29: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem156.c"
	.align 8
.LC1:
	.string	"issame(result, (int[]){0, 1}, 2)"
	.align 8
.LC2:
	.string	"issame(result, (int[]){1, 1}, 2)"
	.align 8
.LC3:
	.string	"issame(result, (int[]){2, 2}, 2)"
	.align 8
.LC4:
	.string	"issame(result, (int[]){3, 3}, 2)"
	.align 8
.LC5:
	.string	"issame(result, (int[]){1, 0}, 2)"
	.align 8
.LC6:
	.string	"issame(result, (int[]){2, 3}, 2)"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# problem156.c:31: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp141
	movq	%rax, -8(%rbp)	# tmp141, D.3138
	xorl	%eax, %eax	# tmp141
# problem156.c:34:     func0(7, result);
	leaq	-24(%rbp), %rax	#, tmp92
	movq	%rax, %rsi	# tmp92,
	movl	$7, %edi	#,
	call	func0	#
# problem156.c:35:     assert(issame(result, (int[]){0, 1}, 2));
	movl	$0, -16(%rbp)	#, MEM[(int[2] *)_69][0]
	movl	$1, -12(%rbp)	#, MEM[(int[2] *)_69][1]
	leaq	-16(%rbp), %rcx	#, tmp93
	leaq	-24(%rbp), %rax	#, tmp94
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	issame	#
	testl	%eax, %eax	# _1
	jne	.L8	#,
# problem156.c:35:     assert(issame(result, (int[]){0, 1}, 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp95
	movq	%rax, %rcx	# tmp95,
	movl	$35, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp96
	movq	%rax, %rsi	# tmp96,
	leaq	.LC1(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	__assert_fail@PLT	#
.L8:
# problem156.c:37:     func0(-78, result);
	leaq	-24(%rbp), %rax	#, tmp98
	movq	%rax, %rsi	# tmp98,
	movl	$-78, %edi	#,
	call	func0	#
# problem156.c:38:     assert(issame(result, (int[]){1, 1}, 2));
	movl	$1, -16(%rbp)	#, MEM[(int[2] *)_69][0]
	movl	$1, -12(%rbp)	#, MEM[(int[2] *)_69][1]
	leaq	-16(%rbp), %rcx	#, tmp99
	leaq	-24(%rbp), %rax	#, tmp100
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp99,
	movq	%rax, %rdi	# tmp100,
	call	issame	#
	testl	%eax, %eax	# _2
	jne	.L9	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp101
	movq	%rax, %rcx	# tmp101,
	movl	$38, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp102
	movq	%rax, %rsi	# tmp102,
	leaq	.LC2(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	__assert_fail@PLT	#
.L9:
# problem156.c:40:     func0(3452, result);
	leaq	-24(%rbp), %rax	#, tmp104
	movq	%rax, %rsi	# tmp104,
	movl	$3452, %edi	#,
	call	func0	#
# problem156.c:41:     assert(issame(result, (int[]){2, 2}, 2));
	movl	$2, -16(%rbp)	#, MEM[(int[2] *)_69][0]
	movl	$2, -12(%rbp)	#, MEM[(int[2] *)_69][1]
	leaq	-16(%rbp), %rcx	#, tmp105
	leaq	-24(%rbp), %rax	#, tmp106
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp105,
	movq	%rax, %rdi	# tmp106,
	call	issame	#
	testl	%eax, %eax	# _3
	jne	.L10	#,
# problem156.c:41:     assert(issame(result, (int[]){2, 2}, 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp107
	movq	%rax, %rcx	# tmp107,
	movl	$41, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp108
	movq	%rax, %rsi	# tmp108,
	leaq	.LC3(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	__assert_fail@PLT	#
.L10:
# problem156.c:43:     func0(346211, result);
	leaq	-24(%rbp), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	movl	$346211, %edi	#,
	call	func0	#
# problem156.c:44:     assert(issame(result, (int[]){3, 3}, 2));
	movl	$3, -16(%rbp)	#, MEM[(int[2] *)_69][0]
	movl	$3, -12(%rbp)	#, MEM[(int[2] *)_69][1]
	leaq	-16(%rbp), %rcx	#, tmp111
	leaq	-24(%rbp), %rax	#, tmp112
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp111,
	movq	%rax, %rdi	# tmp112,
	call	issame	#
	testl	%eax, %eax	# _4
	jne	.L11	#,
# problem156.c:44:     assert(issame(result, (int[]){3, 3}, 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp113
	movq	%rax, %rcx	# tmp113,
	movl	$44, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp114
	movq	%rax, %rsi	# tmp114,
	leaq	.LC4(%rip), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	__assert_fail@PLT	#
.L11:
# problem156.c:46:     func0(-345821, result);
	leaq	-24(%rbp), %rax	#, tmp116
	movq	%rax, %rsi	# tmp116,
	movl	$-345821, %edi	#,
	call	func0	#
# problem156.c:47:     assert(issame(result, (int[]){3, 3}, 2));
	movl	$3, -16(%rbp)	#, MEM[(int[2] *)_69][0]
	movl	$3, -12(%rbp)	#, MEM[(int[2] *)_69][1]
	leaq	-16(%rbp), %rcx	#, tmp117
	leaq	-24(%rbp), %rax	#, tmp118
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp117,
	movq	%rax, %rdi	# tmp118,
	call	issame	#
	testl	%eax, %eax	# _5
	jne	.L12	#,
# problem156.c:47:     assert(issame(result, (int[]){3, 3}, 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp119
	movq	%rax, %rcx	# tmp119,
	movl	$47, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp120
	movq	%rax, %rsi	# tmp120,
	leaq	.LC4(%rip), %rax	#, tmp121
	movq	%rax, %rdi	# tmp121,
	call	__assert_fail@PLT	#
.L12:
# problem156.c:49:     func0(-2, result);
	leaq	-24(%rbp), %rax	#, tmp122
	movq	%rax, %rsi	# tmp122,
	movl	$-2, %edi	#,
	call	func0	#
# problem156.c:50:     assert(issame(result, (int[]){1, 0}, 2));
	movl	$1, -16(%rbp)	#, MEM[(int[2] *)_69][0]
	movl	$0, -12(%rbp)	#, MEM[(int[2] *)_69][1]
	leaq	-16(%rbp), %rcx	#, tmp123
	leaq	-24(%rbp), %rax	#, tmp124
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp123,
	movq	%rax, %rdi	# tmp124,
	call	issame	#
	testl	%eax, %eax	# _6
	jne	.L13	#,
# problem156.c:50:     assert(issame(result, (int[]){1, 0}, 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp125
	movq	%rax, %rcx	# tmp125,
	movl	$50, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp126
	movq	%rax, %rsi	# tmp126,
	leaq	.LC5(%rip), %rax	#, tmp127
	movq	%rax, %rdi	# tmp127,
	call	__assert_fail@PLT	#
.L13:
# problem156.c:52:     func0(-45347, result);
	leaq	-24(%rbp), %rax	#, tmp128
	movq	%rax, %rsi	# tmp128,
	movl	$-45347, %edi	#,
	call	func0	#
# problem156.c:53:     assert(issame(result, (int[]){2, 3}, 2));
	movl	$2, -16(%rbp)	#, MEM[(int[2] *)_69][0]
	movl	$3, -12(%rbp)	#, MEM[(int[2] *)_69][1]
	leaq	-16(%rbp), %rcx	#, tmp129
	leaq	-24(%rbp), %rax	#, tmp130
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp129,
	movq	%rax, %rdi	# tmp130,
	call	issame	#
	testl	%eax, %eax	# _7
	jne	.L14	#,
# problem156.c:53:     assert(issame(result, (int[]){2, 3}, 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp131
	movq	%rax, %rcx	# tmp131,
	movl	$53, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp132
	movq	%rax, %rsi	# tmp132,
	leaq	.LC6(%rip), %rax	#, tmp133
	movq	%rax, %rdi	# tmp133,
	call	__assert_fail@PLT	#
.L14:
# problem156.c:55:     func0(0, result);
	leaq	-24(%rbp), %rax	#, tmp134
	movq	%rax, %rsi	# tmp134,
	movl	$0, %edi	#,
	call	func0	#
# problem156.c:56:     assert(issame(result, (int[]){1, 0}, 2));
	movl	$1, -16(%rbp)	#, MEM[(int[2] *)_69][0]
	movl	$0, -12(%rbp)	#, MEM[(int[2] *)_69][1]
	leaq	-16(%rbp), %rcx	#, tmp135
	leaq	-24(%rbp), %rax	#, tmp136
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp135,
	movq	%rax, %rdi	# tmp136,
	call	issame	#
	testl	%eax, %eax	# _8
	jne	.L15	#,
# problem156.c:56:     assert(issame(result, (int[]){1, 0}, 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp137
	movq	%rax, %rcx	# tmp137,
	movl	$56, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp138
	movq	%rax, %rsi	# tmp138,
	leaq	.LC5(%rip), %rax	#, tmp139
	movq	%rax, %rdi	# tmp139,
	call	__assert_fail@PLT	#
.L15:
# problem156.c:58:     return 0;
	movl	$0, %eax	#, _58
# problem156.c:59: }
	movq	-8(%rbp), %rdx	# D.3138, tmp142
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp142
	je	.L17	#,
# problem156.c:59: }
	call	__stack_chk_fail@PLT	#
.L17:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
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
