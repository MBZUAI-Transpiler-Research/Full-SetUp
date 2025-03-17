	.file	"problem1.c"
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
	movq	%rdi, -24(%rbp)	# numbers, numbers
	movl	%esi, -28(%rbp)	# size, size
	movss	%xmm0, -32(%rbp)	# threshold, threshold
# problem1.c:7:     for (i = 0; i < size; i++) {
	movl	$0, -8(%rbp)	#, i
# problem1.c:7:     for (i = 0; i < size; i++) {
	jmp	.L2	#
.L8:
# problem1.c:8:         for (j = i + 1; j < size; j++) {
	movl	-8(%rbp), %eax	# i, tmp97
	addl	$1, %eax	#, tmp96
	movl	%eax, -4(%rbp)	# tmp96, j
# problem1.c:8:         for (j = i + 1; j < size; j++) {
	jmp	.L3	#
.L7:
# problem1.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	movl	-8(%rbp), %eax	# i, tmp98
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# numbers, tmp99
	addq	%rdx, %rax	# _2, _3
	movss	(%rax), %xmm0	# *_3, _4
# problem1.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	movl	-4(%rbp), %eax	# j, tmp100
	cltq
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-24(%rbp), %rax	# numbers, tmp101
	addq	%rdx, %rax	# _6, _7
	movss	(%rax), %xmm1	# *_7, _8
# problem1.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	subss	%xmm1, %xmm0	# _8, _9
# problem1.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	movss	.LC0(%rip), %xmm1	#, tmp102
	andps	%xmm0, %xmm1	# _9, _10
# problem1.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	movss	-32(%rbp), %xmm0	# threshold, tmp103
	comiss	%xmm1, %xmm0	# _10, tmp103
	jbe	.L10	#,
# problem1.c:10:                 return 1;
	movl	$1, %eax	#, _13
	jmp	.L6	#
.L10:
# problem1.c:8:         for (j = i + 1; j < size; j++) {
	addl	$1, -4(%rbp)	#, j
.L3:
# problem1.c:8:         for (j = i + 1; j < size; j++) {
	movl	-4(%rbp), %eax	# j, tmp104
	cmpl	-28(%rbp), %eax	# size, tmp104
	jl	.L7	#,
# problem1.c:7:     for (i = 0; i < size; i++) {
	addl	$1, -8(%rbp)	#, i
.L2:
# problem1.c:7:     for (i = 0; i < size; i++) {
	movl	-8(%rbp), %eax	# i, tmp105
	cmpl	-28(%rbp), %eax	# size, tmp105
	jl	.L8	#,
# problem1.c:14:     return 0;
	movl	$0, %eax	#, _13
.L6:
# problem1.c:15: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC7:
	.string	"Testing case 1"
.LC9:
	.string	"problem1.c"
.LC10:
	.string	"func0(a, 6, 0.3) == 1"
.LC12:
	.string	"func0(a, 6, 0.05) == 0"
.LC14:
	.string	"Testing case 2"
.LC16:
	.string	"func0(b, 5, 0.95) == 1"
.LC18:
	.string	"func0(b, 5, 0.8) == 0"
.LC20:
	.string	"Testing case 3"
.LC21:
	.string	"func0(c, 5, 2.0) == 1"
.LC26:
	.string	"Testing case 4"
.LC27:
	.string	"func0(d, 5, 1.0) == 1"
.LC29:
	.string	"func0(d, 5, 0.5) == 0"
.LC30:
	.string	"All tests passed"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
# problem1.c:22: int main(){
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp153
	movq	%rax, -8(%rbp)	# tmp153, D.4827
	xorl	%eax, %eax	# tmp153
# problem1.c:24:     float a[] = {1.0, 2.0, 3.9, 4.0, 5.0, 2.2};
	movss	.LC1(%rip), %xmm0	#, tmp91
	movss	%xmm0, -32(%rbp)	# tmp91, a[0]
	movss	.LC2(%rip), %xmm0	#, tmp92
	movss	%xmm0, -28(%rbp)	# tmp92, a[1]
	movss	.LC3(%rip), %xmm0	#, tmp93
	movss	%xmm0, -24(%rbp)	# tmp93, a[2]
	movss	.LC4(%rip), %xmm0	#, tmp94
	movss	%xmm0, -20(%rbp)	# tmp94, a[3]
	movss	.LC5(%rip), %xmm0	#, tmp95
	movss	%xmm0, -16(%rbp)	# tmp95, a[4]
	movss	.LC6(%rip), %xmm0	#, tmp96
	movss	%xmm0, -12(%rbp)	# tmp96, a[5]
# problem1.c:25:     printf("Testing case 1\n");
	leaq	.LC7(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	puts@PLT	#
# problem1.c:26:     assert(func0(a, 6, 0.3) == 1);
	leaq	-32(%rbp), %rax	#, tmp98
	movl	.LC8(%rip), %edx	#, tmp99
	movd	%edx, %xmm0	# tmp99,
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp98,
	call	func0	#
# problem1.c:26:     assert(func0(a, 6, 0.3) == 1);
	cmpl	$1, %eax	#, _1
	je	.L12	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp100
	movq	%rax, %rcx	# tmp100,
	movl	$26, %edx	#,
	leaq	.LC9(%rip), %rax	#, tmp101
	movq	%rax, %rsi	# tmp101,
	leaq	.LC10(%rip), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	__assert_fail@PLT	#
.L12:
# problem1.c:27:     assert(func0(a, 6, 0.05) == 0);
	leaq	-32(%rbp), %rax	#, tmp103
	movl	.LC11(%rip), %edx	#, tmp104
	movd	%edx, %xmm0	# tmp104,
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp103,
	call	func0	#
# problem1.c:27:     assert(func0(a, 6, 0.05) == 0);
	testl	%eax, %eax	# _2
	je	.L13	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp105
	movq	%rax, %rcx	# tmp105,
	movl	$27, %edx	#,
	leaq	.LC9(%rip), %rax	#, tmp106
	movq	%rax, %rsi	# tmp106,
	leaq	.LC12(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	__assert_fail@PLT	#
.L13:
# problem1.c:29:     float b[] = {1.0, 2.0, 5.9, 4.0, 5.0};
	movss	.LC1(%rip), %xmm0	#, tmp108
	movss	%xmm0, -128(%rbp)	# tmp108, b[0]
	movss	.LC2(%rip), %xmm0	#, tmp109
	movss	%xmm0, -124(%rbp)	# tmp109, b[1]
	movss	.LC13(%rip), %xmm0	#, tmp110
	movss	%xmm0, -120(%rbp)	# tmp110, b[2]
	movss	.LC4(%rip), %xmm0	#, tmp111
	movss	%xmm0, -116(%rbp)	# tmp111, b[3]
	movss	.LC5(%rip), %xmm0	#, tmp112
	movss	%xmm0, -112(%rbp)	# tmp112, b[4]
# problem1.c:30:     printf("Testing case 2\n");
	leaq	.LC14(%rip), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	call	puts@PLT	#
# problem1.c:31:     assert(func0(b, 5, 0.95) == 1);
	leaq	-128(%rbp), %rax	#, tmp114
	movl	.LC15(%rip), %edx	#, tmp115
	movd	%edx, %xmm0	# tmp115,
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp114,
	call	func0	#
# problem1.c:31:     assert(func0(b, 5, 0.95) == 1);
	cmpl	$1, %eax	#, _3
	je	.L14	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp116
	movq	%rax, %rcx	# tmp116,
	movl	$31, %edx	#,
	leaq	.LC9(%rip), %rax	#, tmp117
	movq	%rax, %rsi	# tmp117,
	leaq	.LC16(%rip), %rax	#, tmp118
	movq	%rax, %rdi	# tmp118,
	call	__assert_fail@PLT	#
.L14:
# problem1.c:32:     assert(func0(b, 5, 0.8) == 0);
	leaq	-128(%rbp), %rax	#, tmp119
	movl	.LC17(%rip), %edx	#, tmp120
	movd	%edx, %xmm0	# tmp120,
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp119,
	call	func0	#
# problem1.c:32:     assert(func0(b, 5, 0.8) == 0);
	testl	%eax, %eax	# _4
	je	.L15	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp121
	movq	%rax, %rcx	# tmp121,
	movl	$32, %edx	#,
	leaq	.LC9(%rip), %rax	#, tmp122
	movq	%rax, %rsi	# tmp122,
	leaq	.LC18(%rip), %rax	#, tmp123
	movq	%rax, %rdi	# tmp123,
	call	__assert_fail@PLT	#
.L15:
# problem1.c:34:     float c[] = {1.0, 2.0, 3.0, 4.0, 5.0};
	movss	.LC1(%rip), %xmm0	#, tmp124
	movss	%xmm0, -96(%rbp)	# tmp124, c[0]
	movss	.LC2(%rip), %xmm0	#, tmp125
	movss	%xmm0, -92(%rbp)	# tmp125, c[1]
	movss	.LC19(%rip), %xmm0	#, tmp126
	movss	%xmm0, -88(%rbp)	# tmp126, c[2]
	movss	.LC4(%rip), %xmm0	#, tmp127
	movss	%xmm0, -84(%rbp)	# tmp127, c[3]
	movss	.LC5(%rip), %xmm0	#, tmp128
	movss	%xmm0, -80(%rbp)	# tmp128, c[4]
# problem1.c:35:     printf("Testing case 3\n");
	leaq	.LC20(%rip), %rax	#, tmp129
	movq	%rax, %rdi	# tmp129,
	call	puts@PLT	#
# problem1.c:36:     assert(func0(c, 5, 2.0) == 1);
	leaq	-96(%rbp), %rax	#, tmp130
	movl	.LC2(%rip), %edx	#, tmp131
	movd	%edx, %xmm0	# tmp131,
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp130,
	call	func0	#
# problem1.c:36:     assert(func0(c, 5, 2.0) == 1);
	cmpl	$1, %eax	#, _5
	je	.L16	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp132
	movq	%rax, %rcx	# tmp132,
	movl	$36, %edx	#,
	leaq	.LC9(%rip), %rax	#, tmp133
	movq	%rax, %rsi	# tmp133,
	leaq	.LC21(%rip), %rax	#, tmp134
	movq	%rax, %rdi	# tmp134,
	call	__assert_fail@PLT	#
.L16:
# problem1.c:38:     float d[] = {1.1, 2.2, 3.1, 4.1, 5.1};
	movss	.LC22(%rip), %xmm0	#, tmp135
	movss	%xmm0, -64(%rbp)	# tmp135, d[0]
	movss	.LC6(%rip), %xmm0	#, tmp136
	movss	%xmm0, -60(%rbp)	# tmp136, d[1]
	movss	.LC23(%rip), %xmm0	#, tmp137
	movss	%xmm0, -56(%rbp)	# tmp137, d[2]
	movss	.LC24(%rip), %xmm0	#, tmp138
	movss	%xmm0, -52(%rbp)	# tmp138, d[3]
	movss	.LC25(%rip), %xmm0	#, tmp139
	movss	%xmm0, -48(%rbp)	# tmp139, d[4]
# problem1.c:39:     printf("Testing case 4\n");
	leaq	.LC26(%rip), %rax	#, tmp140
	movq	%rax, %rdi	# tmp140,
	call	puts@PLT	#
# problem1.c:40:     assert(func0(d, 5, 1.0) == 1);
	leaq	-64(%rbp), %rax	#, tmp141
	movl	.LC1(%rip), %edx	#, tmp142
	movd	%edx, %xmm0	# tmp142,
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp141,
	call	func0	#
# problem1.c:40:     assert(func0(d, 5, 1.0) == 1);
	cmpl	$1, %eax	#, _6
	je	.L17	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp143
	movq	%rax, %rcx	# tmp143,
	movl	$40, %edx	#,
	leaq	.LC9(%rip), %rax	#, tmp144
	movq	%rax, %rsi	# tmp144,
	leaq	.LC27(%rip), %rax	#, tmp145
	movq	%rax, %rdi	# tmp145,
	call	__assert_fail@PLT	#
.L17:
# problem1.c:41:     assert(func0(d, 5, 0.5) == 0);
	leaq	-64(%rbp), %rax	#, tmp146
	movl	.LC28(%rip), %edx	#, tmp147
	movd	%edx, %xmm0	# tmp147,
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp146,
	call	func0	#
# problem1.c:41:     assert(func0(d, 5, 0.5) == 0);
	testl	%eax, %eax	# _7
	je	.L18	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp148
	movq	%rax, %rcx	# tmp148,
	movl	$41, %edx	#,
	leaq	.LC9(%rip), %rax	#, tmp149
	movq	%rax, %rsi	# tmp149,
	leaq	.LC29(%rip), %rax	#, tmp150
	movq	%rax, %rdi	# tmp150,
	call	__assert_fail@PLT	#
.L18:
# problem1.c:43:     printf("All tests passed\n");
	leaq	.LC30(%rip), %rax	#, tmp151
	movq	%rax, %rdi	# tmp151,
	call	puts@PLT	#
# problem1.c:44:     return 0;
	movl	$0, %eax	#, _49
# problem1.c:45: }
	movq	-8(%rbp), %rdx	# D.4827, tmp154
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp154
	je	.L20	#,
	call	__stack_chk_fail@PLT	#
.L20:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align 16
.LC0:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 4
.LC1:
	.long	1065353216
	.align 4
.LC2:
	.long	1073741824
	.align 4
.LC3:
	.long	1081711002
	.align 4
.LC4:
	.long	1082130432
	.align 4
.LC5:
	.long	1084227584
	.align 4
.LC6:
	.long	1074580685
	.align 4
.LC8:
	.long	1050253722
	.align 4
.LC11:
	.long	1028443341
	.align 4
.LC13:
	.long	1086115021
	.align 4
.LC15:
	.long	1064514355
	.align 4
.LC17:
	.long	1061997773
	.align 4
.LC19:
	.long	1077936128
	.align 4
.LC22:
	.long	1066192077
	.align 4
.LC23:
	.long	1078355558
	.align 4
.LC24:
	.long	1082340147
	.align 4
.LC25:
	.long	1084437299
	.align 4
.LC28:
	.long	1056964608
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
