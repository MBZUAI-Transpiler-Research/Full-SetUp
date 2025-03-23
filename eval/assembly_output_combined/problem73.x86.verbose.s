	.file	"problem73.c"
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
	movq	%rdi, -24(%rbp)	# q, q
	movl	%esi, -28(%rbp)	# size, size
	movl	%edx, -32(%rbp)	# w, w
# problem73.c:5:     int sum = 0;
	movl	$0, -8(%rbp)	#, sum
# problem73.c:6:     for (int i = 0; i < size / 2; i++) {
	movl	$0, -4(%rbp)	#, i
# problem73.c:6:     for (int i = 0; i < size / 2; i++) {
	jmp	.L2	#
.L5:
# problem73.c:7:         if (q[i] != q[size - 1 - i]) return false;
	movl	-4(%rbp), %eax	# i, tmp112
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# q, tmp113
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# problem73.c:7:         if (q[i] != q[size - 1 - i]) return false;
	movl	-28(%rbp), %eax	# size, tmp114
	subl	$1, %eax	#, _5
# problem73.c:7:         if (q[i] != q[size - 1 - i]) return false;
	subl	-4(%rbp), %eax	# i, _6
	cltq
# problem73.c:7:         if (q[i] != q[size - 1 - i]) return false;
	leaq	0(,%rax,4), %rcx	#, _8
	movq	-24(%rbp), %rax	# q, tmp115
	addq	%rcx, %rax	# _8, _9
	movl	(%rax), %eax	# *_9, _10
# problem73.c:7:         if (q[i] != q[size - 1 - i]) return false;
	cmpl	%eax, %edx	# _10, _4
	je	.L3	#,
# problem73.c:7:         if (q[i] != q[size - 1 - i]) return false;
	movl	$0, %eax	#, _32
	jmp	.L4	#
.L3:
# problem73.c:8:         sum += q[i] + q[size - 1 - i];
	movl	-4(%rbp), %eax	# i, tmp116
	cltq
	leaq	0(,%rax,4), %rdx	#, _12
	movq	-24(%rbp), %rax	# q, tmp117
	addq	%rdx, %rax	# _12, _13
	movl	(%rax), %edx	# *_13, _14
# problem73.c:8:         sum += q[i] + q[size - 1 - i];
	movl	-28(%rbp), %eax	# size, tmp118
	subl	$1, %eax	#, _15
# problem73.c:8:         sum += q[i] + q[size - 1 - i];
	subl	-4(%rbp), %eax	# i, _16
	cltq
# problem73.c:8:         sum += q[i] + q[size - 1 - i];
	leaq	0(,%rax,4), %rcx	#, _18
	movq	-24(%rbp), %rax	# q, tmp119
	addq	%rcx, %rax	# _18, _19
	movl	(%rax), %eax	# *_19, _20
# problem73.c:8:         sum += q[i] + q[size - 1 - i];
	addl	%edx, %eax	# _14, _21
# problem73.c:8:         sum += q[i] + q[size - 1 - i];
	addl	%eax, -8(%rbp)	# _21, sum
# problem73.c:6:     for (int i = 0; i < size / 2; i++) {
	addl	$1, -4(%rbp)	#, i
.L2:
# problem73.c:6:     for (int i = 0; i < size / 2; i++) {
	movl	-28(%rbp), %eax	# size, tmp120
	movl	%eax, %edx	# tmp120, tmp121
	shrl	$31, %edx	#, tmp121
	addl	%edx, %eax	# tmp121, tmp122
	sarl	%eax	# tmp123
# problem73.c:6:     for (int i = 0; i < size / 2; i++) {
	cmpl	%eax, -4(%rbp)	# _22, i
	jl	.L5	#,
# problem73.c:10:     if (size % 2 == 1) sum += q[size / 2];
	movl	-28(%rbp), %eax	# size, tmp124
	cltd
	shrl	$31, %edx	#, tmp126
	addl	%edx, %eax	# tmp126, tmp127
	andl	$1, %eax	#, tmp128
	subl	%edx, %eax	# tmp126, tmp129
# problem73.c:10:     if (size % 2 == 1) sum += q[size / 2];
	cmpl	$1, %eax	#, _23
	jne	.L6	#,
# problem73.c:10:     if (size % 2 == 1) sum += q[size / 2];
	movl	-28(%rbp), %eax	# size, tmp130
	movl	%eax, %edx	# tmp130, tmp131
	shrl	$31, %edx	#, tmp131
	addl	%edx, %eax	# tmp131, tmp132
	sarl	%eax	# tmp133
	cltq
# problem73.c:10:     if (size % 2 == 1) sum += q[size / 2];
	leaq	0(,%rax,4), %rdx	#, _26
	movq	-24(%rbp), %rax	# q, tmp134
	addq	%rdx, %rax	# _26, _27
	movl	(%rax), %eax	# *_27, _28
# problem73.c:10:     if (size % 2 == 1) sum += q[size / 2];
	addl	%eax, -8(%rbp)	# _28, sum
.L6:
# problem73.c:11:     return sum <= w;
	movl	-8(%rbp), %eax	# sum, tmp135
	cmpl	-32(%rbp), %eax	# w, tmp135
	setle	%al	#, _32
.L4:
# problem73.c:12: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem73.c"
.LC1:
	.string	"func0(test1, 3, 9) == true"
.LC2:
	.string	"func0(test2, 2, 5) == false"
.LC3:
	.string	"func0(test3, 1, 5) == true"
.LC4:
	.string	"func0(test4, 3, 1) == false"
.LC5:
	.string	"func0(test5, 3, 6) == false"
.LC6:
	.string	"func0(test6, 1, 5) == true"
.LC7:
	.string	"All tests passed."
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
# problem73.c:20: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp119
	movq	%rax, -8(%rbp)	# tmp119, D.2415
	xorl	%eax, %eax	# tmp119
# problem73.c:21:     int test1[] = {3, 2, 3};
	movl	$3, -44(%rbp)	#, test1[0]
	movl	$2, -40(%rbp)	#, test1[1]
	movl	$3, -36(%rbp)	#, test1[2]
# problem73.c:22:     assert(func0(test1, 3, 9) == true);
	leaq	-44(%rbp), %rax	#, tmp93
	movl	$9, %edx	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp93,
	call	func0	#
	testb	%al, %al	# _1
	jne	.L8	#,
# problem73.c:22:     assert(func0(test1, 3, 9) == true);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp94
	movq	%rax, %rcx	# tmp94,
	movl	$22, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp95
	movq	%rax, %rsi	# tmp95,
	leaq	.LC1(%rip), %rax	#, tmp96
	movq	%rax, %rdi	# tmp96,
	call	__assert_fail@PLT	#
.L8:
# problem73.c:24:     int test2[] = {1, 2};
	movl	$1, -52(%rbp)	#, test2[0]
	movl	$2, -48(%rbp)	#, test2[1]
# problem73.c:25:     assert(func0(test2, 2, 5) == false);
	leaq	-52(%rbp), %rax	#, tmp97
	movl	$5, %edx	#,
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp97,
	call	func0	#
	xorl	$1, %eax	#, _3
	testb	%al, %al	# _3
	jne	.L9	#,
# problem73.c:25:     assert(func0(test2, 2, 5) == false);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp98
	movq	%rax, %rcx	# tmp98,
	movl	$25, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp99
	movq	%rax, %rsi	# tmp99,
	leaq	.LC2(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	__assert_fail@PLT	#
.L9:
# problem73.c:27:     int test3[] = {3};
	movl	$3, -60(%rbp)	#, test3[0]
# problem73.c:28:     assert(func0(test3, 1, 5) == true);
	leaq	-60(%rbp), %rax	#, tmp101
	movl	$5, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp101,
	call	func0	#
	testb	%al, %al	# _4
	jne	.L10	#,
# problem73.c:28:     assert(func0(test3, 1, 5) == true);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp102
	movq	%rax, %rcx	# tmp102,
	movl	$28, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp103
	movq	%rax, %rsi	# tmp103,
	leaq	.LC3(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	call	__assert_fail@PLT	#
.L10:
# problem73.c:30:     int test4[] = {3, 2, 3};
	movl	$3, -32(%rbp)	#, test4[0]
	movl	$2, -28(%rbp)	#, test4[1]
	movl	$3, -24(%rbp)	#, test4[2]
# problem73.c:31:     assert(func0(test4, 3, 1) == false);
	leaq	-32(%rbp), %rax	#, tmp105
	movl	$1, %edx	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp105,
	call	func0	#
	xorl	$1, %eax	#, _6
	testb	%al, %al	# _6
	jne	.L11	#,
# problem73.c:31:     assert(func0(test4, 3, 1) == false);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp106
	movq	%rax, %rcx	# tmp106,
	movl	$31, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp107
	movq	%rax, %rsi	# tmp107,
	leaq	.LC4(%rip), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	call	__assert_fail@PLT	#
.L11:
# problem73.c:33:     int test5[] = {1, 2, 3};
	movl	$1, -20(%rbp)	#, test5[0]
	movl	$2, -16(%rbp)	#, test5[1]
	movl	$3, -12(%rbp)	#, test5[2]
# problem73.c:34:     assert(func0(test5, 3, 6) == false);
	leaq	-20(%rbp), %rax	#, tmp109
	movl	$6, %edx	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp109,
	call	func0	#
	xorl	$1, %eax	#, _8
	testb	%al, %al	# _8
	jne	.L12	#,
# problem73.c:34:     assert(func0(test5, 3, 6) == false);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp110
	movq	%rax, %rcx	# tmp110,
	movl	$34, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp111
	movq	%rax, %rsi	# tmp111,
	leaq	.LC5(%rip), %rax	#, tmp112
	movq	%rax, %rdi	# tmp112,
	call	__assert_fail@PLT	#
.L12:
# problem73.c:36:     int test6[] = {5};
	movl	$5, -56(%rbp)	#, test6[0]
# problem73.c:37:     assert(func0(test6, 1, 5) == true);
	leaq	-56(%rbp), %rax	#, tmp113
	movl	$5, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp113,
	call	func0	#
	testb	%al, %al	# _9
	jne	.L13	#,
# problem73.c:37:     assert(func0(test6, 1, 5) == true);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp114
	movq	%rax, %rcx	# tmp114,
	movl	$37, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp115
	movq	%rax, %rsi	# tmp115,
	leaq	.LC6(%rip), %rax	#, tmp116
	movq	%rax, %rdi	# tmp116,
	call	__assert_fail@PLT	#
.L13:
# problem73.c:39:     printf("All tests passed.\n");
	leaq	.LC7(%rip), %rax	#, tmp117
	movq	%rax, %rdi	# tmp117,
	call	puts@PLT	#
# problem73.c:40:     return 0;
	movl	$0, %eax	#, _37
# problem73.c:41: }
	movq	-8(%rbp), %rdx	# D.2415, tmp120
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp120
	je	.L15	#,
	call	__stack_chk_fail@PLT	#
.L15:
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
