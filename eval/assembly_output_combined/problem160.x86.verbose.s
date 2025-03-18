	.file	"problem160.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

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
	movl	%edi, -4(%rbp)	# number, number
	movl	%esi, -8(%rbp)	# need, need
	movl	%edx, -12(%rbp)	# remaining, remaining
	movq	%rcx, -24(%rbp)	# result, result
# problem160.c:4:     if (need > remaining) {
	movl	-8(%rbp), %eax	# need, tmp87
	cmpl	-12(%rbp), %eax	# remaining, tmp87
	jle	.L2	#,
# problem160.c:5:         result[0] = number + remaining;
	movl	-4(%rbp), %edx	# number, tmp88
	movl	-12(%rbp), %eax	# remaining, tmp89
	addl	%eax, %edx	# tmp89, _1
# problem160.c:5:         result[0] = number + remaining;
	movq	-24(%rbp), %rax	# result, tmp90
	movl	%edx, (%rax)	# _1, *result_11(D)
# problem160.c:6:         result[1] = 0;
	movq	-24(%rbp), %rax	# result, tmp91
	addq	$4, %rax	#, _2
# problem160.c:6:         result[1] = 0;
	movl	$0, (%rax)	#, *_2
# problem160.c:11: }
	jmp	.L4	#
.L2:
# problem160.c:8:         result[0] = number + need;
	movl	-4(%rbp), %edx	# number, tmp92
	movl	-8(%rbp), %eax	# need, tmp93
	addl	%eax, %edx	# tmp93, _3
# problem160.c:8:         result[0] = number + need;
	movq	-24(%rbp), %rax	# result, tmp94
	movl	%edx, (%rax)	# _3, *result_11(D)
# problem160.c:9:         result[1] = remaining - need;
	movq	-24(%rbp), %rax	# result, tmp95
	leaq	4(%rax), %rdx	#, _4
# problem160.c:9:         result[1] = remaining - need;
	movl	-12(%rbp), %eax	# remaining, tmp96
	subl	-8(%rbp), %eax	# need, _5
# problem160.c:9:         result[1] = remaining - need;
	movl	%eax, (%rdx)	# _5, *_4
.L4:
# problem160.c:11: }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.globl	issame
	.type	issame, @function
issame:
.LFB1:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# a, a
	movq	%rsi, -16(%rbp)	# b, b
# problem160.c:18:     return a[0] == b[0] && a[1] == b[1];
	movq	-8(%rbp), %rax	# a, tmp90
	movl	(%rax), %edx	# *a_9(D), _1
# problem160.c:18:     return a[0] == b[0] && a[1] == b[1];
	movq	-16(%rbp), %rax	# b, tmp91
	movl	(%rax), %eax	# *b_10(D), _2
# problem160.c:18:     return a[0] == b[0] && a[1] == b[1];
	cmpl	%eax, %edx	# _2, _1
	jne	.L6	#,
# problem160.c:18:     return a[0] == b[0] && a[1] == b[1];
	movq	-8(%rbp), %rax	# a, tmp92
	addq	$4, %rax	#, _3
	movl	(%rax), %edx	# *_3, _4
# problem160.c:18:     return a[0] == b[0] && a[1] == b[1];
	movq	-16(%rbp), %rax	# b, tmp93
	addq	$4, %rax	#, _5
	movl	(%rax), %eax	# *_5, _6
# problem160.c:18:     return a[0] == b[0] && a[1] == b[1];
	cmpl	%eax, %edx	# _6, _4
	jne	.L6	#,
# problem160.c:18:     return a[0] == b[0] && a[1] == b[1];
	movl	$1, %eax	#, iftmp.0_7
# problem160.c:18:     return a[0] == b[0] && a[1] == b[1];
	jmp	.L8	#
.L6:
# problem160.c:18:     return a[0] == b[0] && a[1] == b[1];
	movl	$0, %eax	#, iftmp.0_7
.L8:
# problem160.c:19: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem160.c"
	.align 8
.LC1:
	.string	"issame(result, (int[]){11, 4})"
	.align 8
.LC2:
	.string	"issame(result, (int[]){12, 1})"
	.align 8
.LC3:
	.string	"issame(result, (int[]){11, 0})"
.LC4:
	.string	"issame(result, (int[]){7, 0})"
.LC5:
	.string	"issame(result, (int[]){9, 2})"
.LC6:
	.string	"issame(result, (int[]){5, 0})"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# problem160.c:21: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp127
	movq	%rax, -8(%rbp)	# tmp127, D.3259
	xorl	%eax, %eax	# tmp127
# problem160.c:24:     func0(5, 6, 10, result);
	leaq	-24(%rbp), %rax	#, tmp90
	movq	%rax, %rcx	# tmp90,
	movl	$10, %edx	#,
	movl	$6, %esi	#,
	movl	$5, %edi	#,
	call	func0	#
# problem160.c:25:     assert(issame(result, (int[]){11, 4}));
	movl	$11, -16(%rbp)	#, MEM[(int[2] *)_53][0]
	movl	$4, -12(%rbp)	#, MEM[(int[2] *)_53][1]
	leaq	-16(%rbp), %rdx	#, tmp91
	leaq	-24(%rbp), %rax	#, tmp92
	movq	%rdx, %rsi	# tmp91,
	movq	%rax, %rdi	# tmp92,
	call	issame	#
# problem160.c:25:     assert(issame(result, (int[]){11, 4}));
	testl	%eax, %eax	# _1
	jne	.L10	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp93
	movq	%rax, %rcx	# tmp93,
	movl	$25, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp94
	movq	%rax, %rsi	# tmp94,
	leaq	.LC1(%rip), %rax	#, tmp95
	movq	%rax, %rdi	# tmp95,
	call	__assert_fail@PLT	#
.L10:
# problem160.c:27:     func0(4, 8, 9, result);
	leaq	-24(%rbp), %rax	#, tmp96
	movq	%rax, %rcx	# tmp96,
	movl	$9, %edx	#,
	movl	$8, %esi	#,
	movl	$4, %edi	#,
	call	func0	#
# problem160.c:28:     assert(issame(result, (int[]){12, 1}));
	movl	$12, -16(%rbp)	#, MEM[(int[2] *)_53][0]
	movl	$1, -12(%rbp)	#, MEM[(int[2] *)_53][1]
	leaq	-16(%rbp), %rdx	#, tmp97
	leaq	-24(%rbp), %rax	#, tmp98
	movq	%rdx, %rsi	# tmp97,
	movq	%rax, %rdi	# tmp98,
	call	issame	#
# problem160.c:28:     assert(issame(result, (int[]){12, 1}));
	testl	%eax, %eax	# _2
	jne	.L11	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp99
	movq	%rax, %rcx	# tmp99,
	movl	$28, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp100
	movq	%rax, %rsi	# tmp100,
	leaq	.LC2(%rip), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	call	__assert_fail@PLT	#
.L11:
# problem160.c:30:     func0(1, 10, 10, result);
	leaq	-24(%rbp), %rax	#, tmp102
	movq	%rax, %rcx	# tmp102,
	movl	$10, %edx	#,
	movl	$10, %esi	#,
	movl	$1, %edi	#,
	call	func0	#
# problem160.c:31:     assert(issame(result, (int[]){11, 0}));
	movl	$11, -16(%rbp)	#, MEM[(int[2] *)_53][0]
	movl	$0, -12(%rbp)	#, MEM[(int[2] *)_53][1]
	leaq	-16(%rbp), %rdx	#, tmp103
	leaq	-24(%rbp), %rax	#, tmp104
	movq	%rdx, %rsi	# tmp103,
	movq	%rax, %rdi	# tmp104,
	call	issame	#
# problem160.c:31:     assert(issame(result, (int[]){11, 0}));
	testl	%eax, %eax	# _3
	jne	.L12	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp105
	movq	%rax, %rcx	# tmp105,
	movl	$31, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp106
	movq	%rax, %rsi	# tmp106,
	leaq	.LC3(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	__assert_fail@PLT	#
.L12:
# problem160.c:33:     func0(2, 11, 5, result);
	leaq	-24(%rbp), %rax	#, tmp108
	movq	%rax, %rcx	# tmp108,
	movl	$5, %edx	#,
	movl	$11, %esi	#,
	movl	$2, %edi	#,
	call	func0	#
# problem160.c:34:     assert(issame(result, (int[]){7, 0}));
	movl	$7, -16(%rbp)	#, MEM[(int[2] *)_53][0]
	movl	$0, -12(%rbp)	#, MEM[(int[2] *)_53][1]
	leaq	-16(%rbp), %rdx	#, tmp109
	leaq	-24(%rbp), %rax	#, tmp110
	movq	%rdx, %rsi	# tmp109,
	movq	%rax, %rdi	# tmp110,
	call	issame	#
# problem160.c:34:     assert(issame(result, (int[]){7, 0}));
	testl	%eax, %eax	# _4
	jne	.L13	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp111
	movq	%rax, %rcx	# tmp111,
	movl	$34, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp112
	movq	%rax, %rsi	# tmp112,
	leaq	.LC4(%rip), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	call	__assert_fail@PLT	#
.L13:
# problem160.c:36:     func0(4, 5, 7, result);
	leaq	-24(%rbp), %rax	#, tmp114
	movq	%rax, %rcx	# tmp114,
	movl	$7, %edx	#,
	movl	$5, %esi	#,
	movl	$4, %edi	#,
	call	func0	#
# problem160.c:37:     assert(issame(result, (int[]){9, 2}));
	movl	$9, -16(%rbp)	#, MEM[(int[2] *)_53][0]
	movl	$2, -12(%rbp)	#, MEM[(int[2] *)_53][1]
	leaq	-16(%rbp), %rdx	#, tmp115
	leaq	-24(%rbp), %rax	#, tmp116
	movq	%rdx, %rsi	# tmp115,
	movq	%rax, %rdi	# tmp116,
	call	issame	#
# problem160.c:37:     assert(issame(result, (int[]){9, 2}));
	testl	%eax, %eax	# _5
	jne	.L14	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp117
	movq	%rax, %rcx	# tmp117,
	movl	$37, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp118
	movq	%rax, %rsi	# tmp118,
	leaq	.LC5(%rip), %rax	#, tmp119
	movq	%rax, %rdi	# tmp119,
	call	__assert_fail@PLT	#
.L14:
# problem160.c:39:     func0(4, 5, 1, result);
	leaq	-24(%rbp), %rax	#, tmp120
	movq	%rax, %rcx	# tmp120,
	movl	$1, %edx	#,
	movl	$5, %esi	#,
	movl	$4, %edi	#,
	call	func0	#
# problem160.c:40:     assert(issame(result, (int[]){5, 0}));
	movl	$5, -16(%rbp)	#, MEM[(int[2] *)_53][0]
	movl	$0, -12(%rbp)	#, MEM[(int[2] *)_53][1]
	leaq	-16(%rbp), %rdx	#, tmp121
	leaq	-24(%rbp), %rax	#, tmp122
	movq	%rdx, %rsi	# tmp121,
	movq	%rax, %rdi	# tmp122,
	call	issame	#
# problem160.c:40:     assert(issame(result, (int[]){5, 0}));
	testl	%eax, %eax	# _6
	jne	.L15	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp123
	movq	%rax, %rcx	# tmp123,
	movl	$40, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp124
	movq	%rax, %rsi	# tmp124,
	leaq	.LC6(%rip), %rax	#, tmp125
	movq	%rax, %rdi	# tmp125,
	call	__assert_fail@PLT	#
.L15:
# problem160.c:42:     return 0;
	movl	$0, %eax	#, _44
# problem160.c:43: }
	movq	-8(%rbp), %rdx	# D.3259, tmp128
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp128
	je	.L17	#,
	call	__stack_chk_fail@PLT	#
.L17:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
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
