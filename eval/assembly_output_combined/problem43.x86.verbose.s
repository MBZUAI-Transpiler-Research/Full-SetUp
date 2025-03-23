	.file	"problem43.c"
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
	movq	%rdi, -24(%rbp)	# l, l
	movl	%esi, -28(%rbp)	# size, size
# problem43.c:4:     for (int i = 0; i < size; i++)
	movl	$0, -4(%rbp)	#, i
# problem43.c:4:     for (int i = 0; i < size; i++)
	jmp	.L2	#
.L3:
# problem43.c:5:         l[i] += 1;
	movl	-4(%rbp), %eax	# i, tmp90
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# l, tmp91
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
	movl	-4(%rbp), %eax	# i, tmp92
	cltq
	leaq	0(,%rax,4), %rcx	#, _6
	movq	-24(%rbp), %rax	# l, tmp93
	addq	%rcx, %rax	# _6, _7
	addl	$1, %edx	#, _8
	movl	%edx, (%rax)	# _8, *_7
# problem43.c:4:     for (int i = 0; i < size; i++)
	addl	$1, -4(%rbp)	#, i
.L2:
# problem43.c:4:     for (int i = 0; i < size; i++)
	movl	-4(%rbp), %eax	# i, tmp94
	cmpl	-28(%rbp), %eax	# size, tmp94
	jl	.L3	#,
# problem43.c:6: }
	nop	
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
	movq	%rdi, -24(%rbp)	# a, a
	movl	%esi, -28(%rbp)	# size_a, size_a
	movq	%rdx, -40(%rbp)	# b, b
	movl	%ecx, -32(%rbp)	# size_b, size_b
# problem43.c:14:     if (size_a != size_b) return 0;
	movl	-28(%rbp), %eax	# size_a, tmp92
	cmpl	-32(%rbp), %eax	# size_b, tmp92
	je	.L5	#,
# problem43.c:14:     if (size_a != size_b) return 0;
	movl	$0, %eax	#, _10
	jmp	.L6	#
.L5:
# problem43.c:15:     for (int i = 0; i < size_a; i++) {
	movl	$0, -4(%rbp)	#, i
# problem43.c:15:     for (int i = 0; i < size_a; i++) {
	jmp	.L7	#
.L9:
# problem43.c:16:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp93
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# a, tmp94
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# problem43.c:16:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp95
	cltq
	leaq	0(,%rax,4), %rcx	#, _6
	movq	-40(%rbp), %rax	# b, tmp96
	addq	%rcx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# problem43.c:16:         if (a[i] != b[i]) return 0;
	cmpl	%eax, %edx	# _8, _4
	je	.L8	#,
# problem43.c:16:         if (a[i] != b[i]) return 0;
	movl	$0, %eax	#, _10
	jmp	.L6	#
.L8:
# problem43.c:15:     for (int i = 0; i < size_a; i++) {
	addl	$1, -4(%rbp)	#, i
.L7:
# problem43.c:15:     for (int i = 0; i < size_a; i++) {
	movl	-4(%rbp), %eax	# i, tmp97
	cmpl	-28(%rbp), %eax	# size_a, tmp97
	jl	.L9	#,
# problem43.c:18:     return 1;
	movl	$1, %eax	#, _10
.L6:
# problem43.c:19: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem43.c"
.LC1:
	.string	"issame(list1, 0, result1, 0)"
.LC2:
	.string	"issame(list2, 3, result2, 3)"
.LC3:
	.string	"issame(list3, 9, result3, 9)"
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
	addq	$-128, %rsp	#,
# problem43.c:21: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp106
	movq	%rax, -8(%rbp)	# tmp106, D.2414
	xorl	%eax, %eax	# tmp106
# problem43.c:24:     func0(list1, 0);
	leaq	-128(%rbp), %rax	#, tmp87
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp87,
	call	func0	#
# problem43.c:25:     assert(issame(list1, 0, result1, 0));
	leaq	-124(%rbp), %rdx	#, tmp88
	leaq	-128(%rbp), %rax	#, tmp89
	movl	$0, %ecx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp89,
	call	issame	#
	testl	%eax, %eax	# _1
	jne	.L11	#,
# problem43.c:25:     assert(issame(list1, 0, result1, 0));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp90
	movq	%rax, %rcx	# tmp90,
	movl	$25, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp91
	movq	%rax, %rsi	# tmp91,
	leaq	.LC1(%rip), %rax	#, tmp92
	movq	%rax, %rdi	# tmp92,
	call	__assert_fail@PLT	#
.L11:
# problem43.c:27:     int list2[] = {3, 2, 1};
	movl	$3, -120(%rbp)	#, list2[0]
	movl	$2, -116(%rbp)	#, list2[1]
	movl	$1, -112(%rbp)	#, list2[2]
# problem43.c:28:     int result2[] = {4, 3, 2};
	movl	$4, -108(%rbp)	#, result2[0]
	movl	$3, -104(%rbp)	#, result2[1]
	movl	$2, -100(%rbp)	#, result2[2]
# problem43.c:29:     func0(list2, 3);
	leaq	-120(%rbp), %rax	#, tmp93
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp93,
	call	func0	#
# problem43.c:30:     assert(issame(list2, 3, result2, 3));
	leaq	-108(%rbp), %rdx	#, tmp94
	leaq	-120(%rbp), %rax	#, tmp95
	movl	$3, %ecx	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp95,
	call	issame	#
	testl	%eax, %eax	# _2
	jne	.L12	#,
# problem43.c:30:     assert(issame(list2, 3, result2, 3));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp96
	movq	%rax, %rcx	# tmp96,
	movl	$30, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp97
	movq	%rax, %rsi	# tmp97,
	leaq	.LC2(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	__assert_fail@PLT	#
.L12:
# problem43.c:32:     int list3[] = {5, 2, 5, 2, 3, 3, 9, 0, 123};
	movl	$5, -96(%rbp)	#, list3[0]
	movl	$2, -92(%rbp)	#, list3[1]
	movl	$5, -88(%rbp)	#, list3[2]
	movl	$2, -84(%rbp)	#, list3[3]
	movl	$3, -80(%rbp)	#, list3[4]
	movl	$3, -76(%rbp)	#, list3[5]
	movl	$9, -72(%rbp)	#, list3[6]
	movl	$0, -68(%rbp)	#, list3[7]
	movl	$123, -64(%rbp)	#, list3[8]
# problem43.c:33:     int result3[] = {6, 3, 6, 3, 4, 4, 10, 1, 124};
	movl	$6, -48(%rbp)	#, result3[0]
	movl	$3, -44(%rbp)	#, result3[1]
	movl	$6, -40(%rbp)	#, result3[2]
	movl	$3, -36(%rbp)	#, result3[3]
	movl	$4, -32(%rbp)	#, result3[4]
	movl	$4, -28(%rbp)	#, result3[5]
	movl	$10, -24(%rbp)	#, result3[6]
	movl	$1, -20(%rbp)	#, result3[7]
	movl	$124, -16(%rbp)	#, result3[8]
# problem43.c:34:     func0(list3, 9);
	leaq	-96(%rbp), %rax	#, tmp99
	movl	$9, %esi	#,
	movq	%rax, %rdi	# tmp99,
	call	func0	#
# problem43.c:35:     assert(issame(list3, 9, result3, 9));
	leaq	-48(%rbp), %rdx	#, tmp100
	leaq	-96(%rbp), %rax	#, tmp101
	movl	$9, %ecx	#,
	movl	$9, %esi	#,
	movq	%rax, %rdi	# tmp101,
	call	issame	#
	testl	%eax, %eax	# _3
	jne	.L13	#,
# problem43.c:35:     assert(issame(list3, 9, result3, 9));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp102
	movq	%rax, %rcx	# tmp102,
	movl	$35, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp103
	movq	%rax, %rsi	# tmp103,
	leaq	.LC3(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	call	__assert_fail@PLT	#
.L13:
# problem43.c:37:     return 0;
	movl	$0, %eax	#, _40
# problem43.c:38: }
	movq	-8(%rbp), %rdx	# D.2414, tmp107
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp107
	je	.L15	#,
	call	__stack_chk_fail@PLT	#
.L15:
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
