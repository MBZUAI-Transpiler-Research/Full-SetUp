	.file	"problem53.c"
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
	movq	%rdi, -24(%rbp)	# l, l
	movl	%esi, -28(%rbp)	# size, size
	movl	%edx, -32(%rbp)	# t, t
# problem53.c:5:     for (int i = 0; i < size; i++)
	movl	$0, -4(%rbp)	#, i
# problem53.c:5:     for (int i = 0; i < size; i++)
	jmp	.L2	#
.L5:
# problem53.c:6:         if (l[i] >= t) return false;
	movl	-4(%rbp), %eax	# i, tmp88
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# l, tmp89
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %eax	# *_3, _4
# problem53.c:6:         if (l[i] >= t) return false;
	cmpl	%eax, -32(%rbp)	# _4, t
	jg	.L3	#,
# problem53.c:6:         if (l[i] >= t) return false;
	movl	$0, %eax	#, _6
# problem53.c:6:         if (l[i] >= t) return false;
	jmp	.L4	#
.L3:
# problem53.c:5:     for (int i = 0; i < size; i++)
	addl	$1, -4(%rbp)	#, i
.L2:
# problem53.c:5:     for (int i = 0; i < size; i++)
	movl	-4(%rbp), %eax	# i, tmp90
	cmpl	-28(%rbp), %eax	# size, tmp90
	jl	.L5	#,
# problem53.c:7:     return true;
	movl	$1, %eax	#, _6
.L4:
# problem53.c:8: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem53.c"
.LC1:
	.string	"func0(list1, 4, 100)"
.LC2:
	.string	"!func0(list2, 4, 5)"
.LC3:
	.string	"func0(list3, 4, 21)"
.LC4:
	.string	"func0(list4, 4, 22)"
.LC5:
	.string	"func0(list5, 4, 11)"
.LC6:
	.string	"!func0(list6, 4, 10)"
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
	subq	$112, %rsp	#,
# problem53.c:15: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp117
	movq	%rax, -8(%rbp)	# tmp117, D.3242
	xorl	%eax, %eax	# tmp117
# problem53.c:16:     int list1[] = {1, 2, 4, 10};
	movl	$1, -112(%rbp)	#, list1[0]
	movl	$2, -108(%rbp)	#, list1[1]
	movl	$4, -104(%rbp)	#, list1[2]
	movl	$10, -100(%rbp)	#, list1[3]
# problem53.c:17:     assert(func0(list1, 4, 100));
	leaq	-112(%rbp), %rax	#, tmp92
	movl	$100, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp92,
	call	func0	#
# problem53.c:17:     assert(func0(list1, 4, 100));
	testb	%al, %al	# _1
	jne	.L7	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp93
	movq	%rax, %rcx	# tmp93,
	movl	$17, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp94
	movq	%rax, %rsi	# tmp94,
	leaq	.LC1(%rip), %rax	#, tmp95
	movq	%rax, %rdi	# tmp95,
	call	__assert_fail@PLT	#
.L7:
# problem53.c:19:     int list2[] = {1, 20, 4, 10};
	movl	$1, -96(%rbp)	#, list2[0]
	movl	$20, -92(%rbp)	#, list2[1]
	movl	$4, -88(%rbp)	#, list2[2]
	movl	$10, -84(%rbp)	#, list2[3]
# problem53.c:20:     assert(!func0(list2, 4, 5));
	leaq	-96(%rbp), %rax	#, tmp96
	movl	$5, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp96,
	call	func0	#
# problem53.c:20:     assert(!func0(list2, 4, 5));
	xorl	$1, %eax	#, _3
	testb	%al, %al	# _3
	jne	.L8	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp97
	movq	%rax, %rcx	# tmp97,
	movl	$20, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp98
	movq	%rax, %rsi	# tmp98,
	leaq	.LC2(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	__assert_fail@PLT	#
.L8:
# problem53.c:22:     int list3[] = {1, 20, 4, 10};
	movl	$1, -80(%rbp)	#, list3[0]
	movl	$20, -76(%rbp)	#, list3[1]
	movl	$4, -72(%rbp)	#, list3[2]
	movl	$10, -68(%rbp)	#, list3[3]
# problem53.c:23:     assert(func0(list3, 4, 21));
	leaq	-80(%rbp), %rax	#, tmp100
	movl	$21, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp100,
	call	func0	#
# problem53.c:23:     assert(func0(list3, 4, 21));
	testb	%al, %al	# _4
	jne	.L9	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp101
	movq	%rax, %rcx	# tmp101,
	movl	$23, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp102
	movq	%rax, %rsi	# tmp102,
	leaq	.LC3(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	__assert_fail@PLT	#
.L9:
# problem53.c:25:     int list4[] = {1, 20, 4, 10};
	movl	$1, -64(%rbp)	#, list4[0]
	movl	$20, -60(%rbp)	#, list4[1]
	movl	$4, -56(%rbp)	#, list4[2]
	movl	$10, -52(%rbp)	#, list4[3]
# problem53.c:26:     assert(func0(list4, 4, 22));
	leaq	-64(%rbp), %rax	#, tmp104
	movl	$22, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp104,
	call	func0	#
# problem53.c:26:     assert(func0(list4, 4, 22));
	testb	%al, %al	# _5
	jne	.L10	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp105
	movq	%rax, %rcx	# tmp105,
	movl	$26, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp106
	movq	%rax, %rsi	# tmp106,
	leaq	.LC4(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	__assert_fail@PLT	#
.L10:
# problem53.c:28:     int list5[] = {1, 8, 4, 10};
	movl	$1, -48(%rbp)	#, list5[0]
	movl	$8, -44(%rbp)	#, list5[1]
	movl	$4, -40(%rbp)	#, list5[2]
	movl	$10, -36(%rbp)	#, list5[3]
# problem53.c:29:     assert(func0(list5, 4, 11));
	leaq	-48(%rbp), %rax	#, tmp108
	movl	$11, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp108,
	call	func0	#
# problem53.c:29:     assert(func0(list5, 4, 11));
	testb	%al, %al	# _6
	jne	.L11	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp109
	movq	%rax, %rcx	# tmp109,
	movl	$29, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	leaq	.LC5(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	__assert_fail@PLT	#
.L11:
# problem53.c:31:     int list6[] = {1, 8, 4, 10};
	movl	$1, -32(%rbp)	#, list6[0]
	movl	$8, -28(%rbp)	#, list6[1]
	movl	$4, -24(%rbp)	#, list6[2]
	movl	$10, -20(%rbp)	#, list6[3]
# problem53.c:32:     assert(!func0(list6, 4, 10));
	leaq	-32(%rbp), %rax	#, tmp112
	movl	$10, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp112,
	call	func0	#
# problem53.c:32:     assert(!func0(list6, 4, 10));
	xorl	$1, %eax	#, _8
	testb	%al, %al	# _8
	jne	.L12	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp113
	movq	%rax, %rcx	# tmp113,
	movl	$32, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp114
	movq	%rax, %rsi	# tmp114,
	leaq	.LC6(%rip), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	__assert_fail@PLT	#
.L12:
# problem53.c:34:     return 0;
	movl	$0, %eax	#, _46
# problem53.c:35: }
	movq	-8(%rbp), %rdx	# D.3242, tmp118
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp118
	je	.L14	#,
	call	__stack_chk_fail@PLT	#
.L14:
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
