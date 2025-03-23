	.file	"problem69.c"
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
	movq	%rdi, -24(%rbp)	# arr, arr
	movl	%esi, -28(%rbp)	# length, length
	movq	%rdx, -40(%rbp)	# output, output
# problem69.c:5:     int smallestEven = INT_MAX;
	movl	$2147483647, -12(%rbp)	#, smallestEven
# problem69.c:6:     int index = -1;
	movl	$-1, -8(%rbp)	#, index
# problem69.c:8:     for (int i = 0; i < length; ++i) {
	movl	$0, -4(%rbp)	#, i
# problem69.c:8:     for (int i = 0; i < length; ++i) {
	jmp	.L2	#
.L5:
# problem69.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	movl	-4(%rbp), %eax	# i, tmp98
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# arr, tmp99
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %eax	# *_3, _4
# problem69.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	andl	$1, %eax	#, _6
# problem69.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	testl	%eax, %eax	# _6
	jne	.L3	#,
# problem69.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	movl	-4(%rbp), %eax	# i, tmp100
	cltq
	leaq	0(,%rax,4), %rdx	#, _8
	movq	-24(%rbp), %rax	# arr, tmp101
	addq	%rdx, %rax	# _8, _9
	movl	(%rax), %eax	# *_9, _10
# problem69.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	cmpl	%eax, -12(%rbp)	# _10, smallestEven
	jg	.L4	#,
# problem69.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	cmpl	$-1, -8(%rbp)	#, index
	jne	.L3	#,
.L4:
# problem69.c:10:             smallestEven = arr[i];
	movl	-4(%rbp), %eax	# i, tmp102
	cltq
	leaq	0(,%rax,4), %rdx	#, _12
	movq	-24(%rbp), %rax	# arr, tmp103
	addq	%rdx, %rax	# _12, _13
# problem69.c:10:             smallestEven = arr[i];
	movl	(%rax), %eax	# *_13, tmp104
	movl	%eax, -12(%rbp)	# tmp104, smallestEven
# problem69.c:11:             index = i;
	movl	-4(%rbp), %eax	# i, tmp105
	movl	%eax, -8(%rbp)	# tmp105, index
.L3:
# problem69.c:8:     for (int i = 0; i < length; ++i) {
	addl	$1, -4(%rbp)	#, i
.L2:
# problem69.c:8:     for (int i = 0; i < length; ++i) {
	movl	-4(%rbp), %eax	# i, tmp106
	cmpl	-28(%rbp), %eax	# length, tmp106
	jl	.L5	#,
# problem69.c:15:     if (index == -1) {
	cmpl	$-1, -8(%rbp)	#, index
	jne	.L6	#,
# problem69.c:16:         return NULL;
	movl	$0, %eax	#, _20
	jmp	.L7	#
.L6:
# problem69.c:19:     output[0] = smallestEven;
	movq	-40(%rbp), %rax	# output, tmp107
	movl	-12(%rbp), %edx	# smallestEven, tmp108
	movl	%edx, (%rax)	# tmp108, *output_27(D)
# problem69.c:20:     output[1] = index;
	movq	-40(%rbp), %rax	# output, tmp109
	leaq	4(%rax), %rdx	#, _14
# problem69.c:20:     output[1] = index;
	movl	-8(%rbp), %eax	# index, tmp110
	movl	%eax, (%rdx)	# tmp110, *_14
# problem69.c:21:     return output;
	movq	-40(%rbp), %rax	# output, _20
.L7:
# problem69.c:22: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
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
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# b, b
	movl	%edx, -36(%rbp)	# a_length, a_length
	movl	%ecx, -40(%rbp)	# b_length, b_length
# problem69.c:31:     if (a_length != b_length) return 0;
	movl	-36(%rbp), %eax	# a_length, tmp92
	cmpl	-40(%rbp), %eax	# b_length, tmp92
	je	.L9	#,
# problem69.c:31:     if (a_length != b_length) return 0;
	movl	$0, %eax	#, _10
# problem69.c:31:     if (a_length != b_length) return 0;
	jmp	.L10	#
.L9:
# problem69.c:32:     for (int i = 0; i < a_length; ++i) {
	movl	$0, -4(%rbp)	#, i
# problem69.c:32:     for (int i = 0; i < a_length; ++i) {
	jmp	.L11	#
.L13:
# problem69.c:33:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp93
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# a, tmp94
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# problem69.c:33:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp95
	cltq
	leaq	0(,%rax,4), %rcx	#, _6
	movq	-32(%rbp), %rax	# b, tmp96
	addq	%rcx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# problem69.c:33:         if (a[i] != b[i]) return 0;
	cmpl	%eax, %edx	# _8, _4
	je	.L12	#,
# problem69.c:33:         if (a[i] != b[i]) return 0;
	movl	$0, %eax	#, _10
# problem69.c:33:         if (a[i] != b[i]) return 0;
	jmp	.L10	#
.L12:
# problem69.c:32:     for (int i = 0; i < a_length; ++i) {
	addl	$1, -4(%rbp)	#, i
.L11:
# problem69.c:32:     for (int i = 0; i < a_length; ++i) {
	movl	-4(%rbp), %eax	# i, tmp97
	cmpl	-36(%rbp), %eax	# a_length, tmp97
	jl	.L13	#,
# problem69.c:35:     return 1;
	movl	$1, %eax	#, _10
.L10:
# problem69.c:36: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem69.c"
.LC1:
	.string	"issame(result, expect1, 2, 2)"
.LC2:
	.string	"issame(result, expect2, 2, 2)"
.LC3:
	.string	"result == NULL"
.LC4:
	.string	"issame(result, expect4, 2, 2)"
.LC5:
	.string	"issame(result, expect5, 2, 2)"
.LC6:
	.string	"issame(result, expect6, 2, 2)"
.LC7:
	.string	"issame(result, expect7, 2, 2)"
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
	subq	$224, %rsp	#,
# problem69.c:38: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp151
	movq	%rax, -8(%rbp)	# tmp151, D.3809
	xorl	%eax, %eax	# tmp151
# problem69.c:42:     int test1[] = {4, 2, 3};
	movl	$4, -152(%rbp)	#, test1[0]
	movl	$2, -148(%rbp)	#, test1[1]
	movl	$3, -144(%rbp)	#, test1[2]
# problem69.c:43:     int expect1[] = {2, 1};
	movl	$2, -200(%rbp)	#, expect1[0]
	movl	$1, -196(%rbp)	#, expect1[1]
# problem69.c:44:     result = func0(test1, 3, output);
	leaq	-208(%rbp), %rdx	#, tmp90
	leaq	-152(%rbp), %rax	#, tmp91
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp91,
	call	func0	#
	movq	%rax, -224(%rbp)	# tmp92, result
# problem69.c:45:     assert(issame(result, expect1, 2, 2));
	leaq	-200(%rbp), %rsi	#, tmp93
	movq	-224(%rbp), %rax	# result, tmp94
	movl	$2, %ecx	#,
	movl	$2, %edx	#,
	movq	%rax, %rdi	# tmp94,
	call	issame	#
# problem69.c:45:     assert(issame(result, expect1, 2, 2));
	testl	%eax, %eax	# _1
	jne	.L15	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp95
	movq	%rax, %rcx	# tmp95,
	movl	$45, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp96
	movq	%rax, %rsi	# tmp96,
	leaq	.LC1(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	__assert_fail@PLT	#
.L15:
# problem69.c:47:     int test2[] = {1, 2, 3};
	movl	$1, -140(%rbp)	#, test2[0]
	movl	$2, -136(%rbp)	#, test2[1]
	movl	$3, -132(%rbp)	#, test2[2]
# problem69.c:48:     int expect2[] = {2, 1};
	movl	$2, -192(%rbp)	#, expect2[0]
	movl	$1, -188(%rbp)	#, expect2[1]
# problem69.c:49:     result = func0(test2, 3, output);
	leaq	-208(%rbp), %rdx	#, tmp98
	leaq	-140(%rbp), %rax	#, tmp99
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp99,
	call	func0	#
	movq	%rax, -224(%rbp)	# tmp100, result
# problem69.c:50:     assert(issame(result, expect2, 2, 2));
	leaq	-192(%rbp), %rsi	#, tmp101
	movq	-224(%rbp), %rax	# result, tmp102
	movl	$2, %ecx	#,
	movl	$2, %edx	#,
	movq	%rax, %rdi	# tmp102,
	call	issame	#
# problem69.c:50:     assert(issame(result, expect2, 2, 2));
	testl	%eax, %eax	# _2
	jne	.L16	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp103
	movq	%rax, %rcx	# tmp103,
	movl	$50, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp104
	movq	%rax, %rsi	# tmp104,
	leaq	.LC2(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	__assert_fail@PLT	#
.L16:
# problem69.c:53:     result = func0(test3, 0, output);
	leaq	-208(%rbp), %rdx	#, tmp106
	leaq	-212(%rbp), %rax	#, tmp107
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp107,
	call	func0	#
	movq	%rax, -224(%rbp)	# tmp108, result
# problem69.c:54:     assert(result == NULL);
	cmpq	$0, -224(%rbp)	#, result
	je	.L17	#,
# problem69.c:54:     assert(result == NULL);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp109
	movq	%rax, %rcx	# tmp109,
	movl	$54, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	leaq	.LC3(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	__assert_fail@PLT	#
.L17:
# problem69.c:56:     int test4[] = {5, 0, 3, 0, 4, 2};
	movl	$5, -64(%rbp)	#, test4[0]
	movl	$0, -60(%rbp)	#, test4[1]
	movl	$3, -56(%rbp)	#, test4[2]
	movl	$0, -52(%rbp)	#, test4[3]
	movl	$4, -48(%rbp)	#, test4[4]
	movl	$2, -44(%rbp)	#, test4[5]
# problem69.c:57:     int expect4[] = {0, 1};
	movl	$0, -184(%rbp)	#, expect4[0]
	movl	$1, -180(%rbp)	#, expect4[1]
# problem69.c:58:     result = func0(test4, 6, output);
	leaq	-208(%rbp), %rdx	#, tmp112
	leaq	-64(%rbp), %rax	#, tmp113
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp113,
	call	func0	#
	movq	%rax, -224(%rbp)	# tmp114, result
# problem69.c:59:     assert(issame(result, expect4, 2, 2));
	leaq	-184(%rbp), %rsi	#, tmp115
	movq	-224(%rbp), %rax	# result, tmp116
	movl	$2, %ecx	#,
	movl	$2, %edx	#,
	movq	%rax, %rdi	# tmp116,
	call	issame	#
# problem69.c:59:     assert(issame(result, expect4, 2, 2));
	testl	%eax, %eax	# _3
	jne	.L18	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp117
	movq	%rax, %rcx	# tmp117,
	movl	$59, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp118
	movq	%rax, %rsi	# tmp118,
	leaq	.LC4(%rip), %rax	#, tmp119
	movq	%rax, %rdi	# tmp119,
	call	__assert_fail@PLT	#
.L18:
# problem69.c:61:     int test5[] = {1, 2, 3, 0, 5, 3};
	movl	$1, -32(%rbp)	#, test5[0]
	movl	$2, -28(%rbp)	#, test5[1]
	movl	$3, -24(%rbp)	#, test5[2]
	movl	$0, -20(%rbp)	#, test5[3]
	movl	$5, -16(%rbp)	#, test5[4]
	movl	$3, -12(%rbp)	#, test5[5]
# problem69.c:62:     int expect5[] = {0, 3};
	movl	$0, -176(%rbp)	#, expect5[0]
	movl	$3, -172(%rbp)	#, expect5[1]
# problem69.c:63:     result = func0(test5, 6, output);
	leaq	-208(%rbp), %rdx	#, tmp120
	leaq	-32(%rbp), %rax	#, tmp121
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp121,
	call	func0	#
	movq	%rax, -224(%rbp)	# tmp122, result
# problem69.c:64:     assert(issame(result, expect5, 2, 2));
	leaq	-176(%rbp), %rsi	#, tmp123
	movq	-224(%rbp), %rax	# result, tmp124
	movl	$2, %ecx	#,
	movl	$2, %edx	#,
	movq	%rax, %rdi	# tmp124,
	call	issame	#
# problem69.c:64:     assert(issame(result, expect5, 2, 2));
	testl	%eax, %eax	# _4
	jne	.L19	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp125
	movq	%rax, %rcx	# tmp125,
	movl	$64, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp126
	movq	%rax, %rsi	# tmp126,
	leaq	.LC5(%rip), %rax	#, tmp127
	movq	%rax, %rdi	# tmp127,
	call	__assert_fail@PLT	#
.L19:
# problem69.c:66:     int test6[] = {5, 4, 8, 4, 8};
	movl	$5, -96(%rbp)	#, test6[0]
	movl	$4, -92(%rbp)	#, test6[1]
	movl	$8, -88(%rbp)	#, test6[2]
	movl	$4, -84(%rbp)	#, test6[3]
	movl	$8, -80(%rbp)	#, test6[4]
# problem69.c:67:     int expect6[] = {4, 1};
	movl	$4, -168(%rbp)	#, expect6[0]
	movl	$1, -164(%rbp)	#, expect6[1]
# problem69.c:68:     result = func0(test6, 5, output);
	leaq	-208(%rbp), %rdx	#, tmp128
	leaq	-96(%rbp), %rax	#, tmp129
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp129,
	call	func0	#
	movq	%rax, -224(%rbp)	# tmp130, result
# problem69.c:69:     assert(issame(result, expect6, 2, 2));
	leaq	-168(%rbp), %rsi	#, tmp131
	movq	-224(%rbp), %rax	# result, tmp132
	movl	$2, %ecx	#,
	movl	$2, %edx	#,
	movq	%rax, %rdi	# tmp132,
	call	issame	#
# problem69.c:69:     assert(issame(result, expect6, 2, 2));
	testl	%eax, %eax	# _5
	jne	.L20	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp133
	movq	%rax, %rcx	# tmp133,
	movl	$69, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp134
	movq	%rax, %rsi	# tmp134,
	leaq	.LC6(%rip), %rax	#, tmp135
	movq	%rax, %rdi	# tmp135,
	call	__assert_fail@PLT	#
.L20:
# problem69.c:71:     int test7[] = {7, 6, 7, 1};
	movl	$7, -128(%rbp)	#, test7[0]
	movl	$6, -124(%rbp)	#, test7[1]
	movl	$7, -120(%rbp)	#, test7[2]
	movl	$1, -116(%rbp)	#, test7[3]
# problem69.c:72:     int expect7[] = {6, 1};
	movl	$6, -160(%rbp)	#, expect7[0]
	movl	$1, -156(%rbp)	#, expect7[1]
# problem69.c:73:     result = func0(test7, 4, output);
	leaq	-208(%rbp), %rdx	#, tmp136
	leaq	-128(%rbp), %rax	#, tmp137
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp137,
	call	func0	#
	movq	%rax, -224(%rbp)	# tmp138, result
# problem69.c:74:     assert(issame(result, expect7, 2, 2));
	leaq	-160(%rbp), %rsi	#, tmp139
	movq	-224(%rbp), %rax	# result, tmp140
	movl	$2, %ecx	#,
	movl	$2, %edx	#,
	movq	%rax, %rdi	# tmp140,
	call	issame	#
# problem69.c:74:     assert(issame(result, expect7, 2, 2));
	testl	%eax, %eax	# _6
	jne	.L21	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp141
	movq	%rax, %rcx	# tmp141,
	movl	$74, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp142
	movq	%rax, %rsi	# tmp142,
	leaq	.LC7(%rip), %rax	#, tmp143
	movq	%rax, %rdi	# tmp143,
	call	__assert_fail@PLT	#
.L21:
# problem69.c:76:     int test8[] = {7, 9, 7, 1};
	movl	$7, -112(%rbp)	#, test8[0]
	movl	$9, -108(%rbp)	#, test8[1]
	movl	$7, -104(%rbp)	#, test8[2]
	movl	$1, -100(%rbp)	#, test8[3]
# problem69.c:77:     result = func0(test8, 4, output);
	leaq	-208(%rbp), %rdx	#, tmp144
	leaq	-112(%rbp), %rax	#, tmp145
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp145,
	call	func0	#
	movq	%rax, -224(%rbp)	# tmp146, result
# problem69.c:78:     assert(result == NULL);
	cmpq	$0, -224(%rbp)	#, result
	je	.L22	#,
# problem69.c:78:     assert(result == NULL);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp147
	movq	%rax, %rcx	# tmp147,
	movl	$78, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp148
	movq	%rax, %rsi	# tmp148,
	leaq	.LC3(%rip), %rax	#, tmp149
	movq	%rax, %rdi	# tmp149,
	call	__assert_fail@PLT	#
.L22:
# problem69.c:80:     return 0;
	movl	$0, %eax	#, _81
# problem69.c:81: }
	movq	-8(%rbp), %rdx	# D.3809, tmp152
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp152
	je	.L24	#,
	call	__stack_chk_fail@PLT	#
.L24:
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
