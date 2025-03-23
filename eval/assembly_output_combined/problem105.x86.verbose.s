	.file	"problem105.c"
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
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	movl	%esi, -44(%rbp)	# size, size
	movq	%rdx, -56(%rbp)	# out, out
	movq	%rcx, -64(%rbp)	# out_size, out_size
# problem105.c:6:     *out = malloc(size * sizeof(int));
	movl	-44(%rbp), %eax	# size, tmp138
	cltq
	salq	$2, %rax	#, _2
	movq	%rax, %rdi	# _2,
	call	malloc@PLT	#
	movq	%rax, %rdx	# tmp139, _3
# problem105.c:6:     *out = malloc(size * sizeof(int));
	movq	-56(%rbp), %rax	# out, tmp140
	movq	%rdx, (%rax)	# _3, *out_72(D)
# problem105.c:7:     *out_size = 0;
	movq	-64(%rbp), %rax	# out_size, tmp141
	movl	$0, (%rax)	#, *out_size_74(D)
# problem105.c:9:     for (int i = 0; i < size; i++) {
	movl	$0, -20(%rbp)	#, i
# problem105.c:9:     for (int i = 0; i < size; i++) {
	jmp	.L2	#
.L9:
# problem105.c:10:         int num = x[i];
	movl	-20(%rbp), %eax	# i, tmp142
	cltq
	leaq	0(,%rax,4), %rdx	#, _5
	movq	-40(%rbp), %rax	# x, tmp143
	addq	%rdx, %rax	# _5, _6
# problem105.c:10:         int num = x[i];
	movl	(%rax), %eax	# *_6, tmp144
	movl	%eax, -16(%rbp)	# tmp144, num
# problem105.c:11:         bool has_even_digit = false;
	movb	$0, -21(%rbp)	#, has_even_digit
# problem105.c:12:         if (num == 0) has_even_digit = true;
	cmpl	$0, -16(%rbp)	#, num
	jne	.L4	#,
# problem105.c:12:         if (num == 0) has_even_digit = true;
	movb	$1, -21(%rbp)	#, has_even_digit
# problem105.c:14:         while (num > 0 && !has_even_digit) {
	jmp	.L4	#
.L7:
# problem105.c:15:             if (num % 2 == 0) has_even_digit = true;
	movl	-16(%rbp), %eax	# num, num.0_7
	andl	$1, %eax	#, _8
# problem105.c:15:             if (num % 2 == 0) has_even_digit = true;
	testl	%eax, %eax	# _8
	jne	.L5	#,
# problem105.c:15:             if (num % 2 == 0) has_even_digit = true;
	movb	$1, -21(%rbp)	#, has_even_digit
.L5:
# problem105.c:16:             num = num / 10;
	movl	-16(%rbp), %eax	# num, tmp146
	movslq	%eax, %rdx	# tmp146, tmp147
	imulq	$1717986919, %rdx, %rdx	#, tmp147, tmp148
	shrq	$32, %rdx	#, tmp149
	sarl	$2, %edx	#, tmp150
	sarl	$31, %eax	#, tmp146
	movl	%eax, %ecx	# tmp146, tmp151
	movl	%edx, %eax	# tmp150, tmp150
	subl	%ecx, %eax	# tmp151, tmp150
	movl	%eax, -16(%rbp)	# tmp145, num
.L4:
# problem105.c:14:         while (num > 0 && !has_even_digit) {
	cmpl	$0, -16(%rbp)	#, num
	jle	.L6	#,
# problem105.c:14:         while (num > 0 && !has_even_digit) {
	movzbl	-21(%rbp), %eax	# has_even_digit, tmp152
	xorl	$1, %eax	#, _9
# problem105.c:14:         while (num > 0 && !has_even_digit) {
	testb	%al, %al	# _9
	jne	.L7	#,
.L6:
# problem105.c:19:         if (!has_even_digit) {
	movzbl	-21(%rbp), %eax	# has_even_digit, tmp153
	xorl	$1, %eax	#, _10
# problem105.c:19:         if (!has_even_digit) {
	testb	%al, %al	# _10
	je	.L8	#,
# problem105.c:20:             (*out)[*out_size] = x[i];
	movl	-20(%rbp), %eax	# i, tmp154
	cltq
	leaq	0(,%rax,4), %rdx	#, _12
	movq	-40(%rbp), %rax	# x, tmp155
	leaq	(%rdx,%rax), %rcx	#, _13
# problem105.c:20:             (*out)[*out_size] = x[i];
	movq	-56(%rbp), %rax	# out, tmp156
	movq	(%rax), %rdx	# *out_72(D), _14
# problem105.c:20:             (*out)[*out_size] = x[i];
	movq	-64(%rbp), %rax	# out_size, tmp157
	movl	(%rax), %eax	# *out_size_74(D), _15
	cltq
# problem105.c:20:             (*out)[*out_size] = x[i];
	salq	$2, %rax	#, _17
	addq	%rax, %rdx	# _17, _18
# problem105.c:20:             (*out)[*out_size] = x[i];
	movl	(%rcx), %eax	# *_13, _19
# problem105.c:20:             (*out)[*out_size] = x[i];
	movl	%eax, (%rdx)	# _19, *_18
# problem105.c:21:             (*out_size)++;
	movq	-64(%rbp), %rax	# out_size, tmp158
	movl	(%rax), %eax	# *out_size_74(D), _20
# problem105.c:21:             (*out_size)++;
	leal	1(%rax), %edx	#, _21
	movq	-64(%rbp), %rax	# out_size, tmp159
	movl	%edx, (%rax)	# _21, *out_size_74(D)
.L8:
# problem105.c:9:     for (int i = 0; i < size; i++) {
	addl	$1, -20(%rbp)	#, i
.L2:
# problem105.c:9:     for (int i = 0; i < size; i++) {
	movl	-20(%rbp), %eax	# i, tmp160
	cmpl	-44(%rbp), %eax	# size, tmp160
	jl	.L9	#,
# problem105.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	movl	$0, -12(%rbp)	#, i
# problem105.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	jmp	.L10	#
.L14:
# problem105.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	movl	$0, -8(%rbp)	#, j
# problem105.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	jmp	.L11	#
.L13:
# problem105.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	movq	-56(%rbp), %rax	# out, tmp161
	movq	(%rax), %rdx	# *out_72(D), _22
# problem105.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	movl	-8(%rbp), %eax	# j, tmp162
	cltq
	salq	$2, %rax	#, _24
	addq	%rdx, %rax	# _22, _25
	movl	(%rax), %edx	# *_25, _26
# problem105.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	movq	-56(%rbp), %rax	# out, tmp163
	movq	(%rax), %rcx	# *out_72(D), _27
# problem105.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	movl	-8(%rbp), %eax	# j, tmp164
	cltq
	addq	$1, %rax	#, _29
	salq	$2, %rax	#, _30
	addq	%rcx, %rax	# _27, _31
	movl	(%rax), %eax	# *_31, _32
# problem105.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	cmpl	%eax, %edx	# _32, _26
	jle	.L12	#,
# problem105.c:28:                 int temp = (*out)[j];
	movq	-56(%rbp), %rax	# out, tmp165
	movq	(%rax), %rdx	# *out_72(D), _33
# problem105.c:28:                 int temp = (*out)[j];
	movl	-8(%rbp), %eax	# j, tmp166
	cltq
	salq	$2, %rax	#, _35
	addq	%rdx, %rax	# _33, _36
# problem105.c:28:                 int temp = (*out)[j];
	movl	(%rax), %eax	# *_36, tmp167
	movl	%eax, -4(%rbp)	# tmp167, temp
# problem105.c:29:                 (*out)[j] = (*out)[j + 1];
	movq	-56(%rbp), %rax	# out, tmp168
	movq	(%rax), %rdx	# *out_72(D), _37
# problem105.c:29:                 (*out)[j] = (*out)[j + 1];
	movl	-8(%rbp), %eax	# j, tmp169
	cltq
	addq	$1, %rax	#, _39
	salq	$2, %rax	#, _40
	leaq	(%rdx,%rax), %rcx	#, _41
# problem105.c:29:                 (*out)[j] = (*out)[j + 1];
	movq	-56(%rbp), %rax	# out, tmp170
	movq	(%rax), %rdx	# *out_72(D), _42
# problem105.c:29:                 (*out)[j] = (*out)[j + 1];
	movl	-8(%rbp), %eax	# j, tmp171
	cltq
	salq	$2, %rax	#, _44
	addq	%rax, %rdx	# _44, _45
# problem105.c:29:                 (*out)[j] = (*out)[j + 1];
	movl	(%rcx), %eax	# *_41, _46
# problem105.c:29:                 (*out)[j] = (*out)[j + 1];
	movl	%eax, (%rdx)	# _46, *_45
# problem105.c:30:                 (*out)[j + 1] = temp;
	movq	-56(%rbp), %rax	# out, tmp172
	movq	(%rax), %rdx	# *out_72(D), _47
# problem105.c:30:                 (*out)[j + 1] = temp;
	movl	-8(%rbp), %eax	# j, tmp173
	cltq
	addq	$1, %rax	#, _49
	salq	$2, %rax	#, _50
	addq	%rax, %rdx	# _50, _51
# problem105.c:30:                 (*out)[j + 1] = temp;
	movl	-4(%rbp), %eax	# temp, tmp174
	movl	%eax, (%rdx)	# tmp174, *_51
.L12:
# problem105.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	addl	$1, -8(%rbp)	#, j
.L11:
# problem105.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	movq	-64(%rbp), %rax	# out_size, tmp175
	movl	(%rax), %eax	# *out_size_74(D), _52
# problem105.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	subl	-12(%rbp), %eax	# i, _53
# problem105.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	subl	$1, %eax	#, _54
# problem105.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	cmpl	%eax, -8(%rbp)	# _54, j
	jl	.L13	#,
# problem105.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	addl	$1, -12(%rbp)	#, i
.L10:
# problem105.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	movq	-64(%rbp), %rax	# out_size, tmp176
	movl	(%rax), %eax	# *out_size_74(D), _55
# problem105.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	subl	$1, %eax	#, _56
# problem105.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	cmpl	%eax, -12(%rbp)	# _56, i
	jl	.L14	#,
# problem105.c:34: }
	nop	
	nop	
	leave	
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
	movq	%rdi, -24(%rbp)	# a, a
	movl	%esi, -28(%rbp)	# a_size, a_size
	movq	%rdx, -40(%rbp)	# b, b
	movl	%ecx, -32(%rbp)	# b_size, b_size
# problem105.c:44:     if (a_size != b_size) return false;
	movl	-28(%rbp), %eax	# a_size, tmp92
	cmpl	-32(%rbp), %eax	# b_size, tmp92
	je	.L16	#,
# problem105.c:44:     if (a_size != b_size) return false;
	movl	$0, %eax	#, _10
	jmp	.L17	#
.L16:
# problem105.c:45:     for (int i = 0; i < a_size; i++) {
	movl	$0, -4(%rbp)	#, i
# problem105.c:45:     for (int i = 0; i < a_size; i++) {
	jmp	.L18	#
.L20:
# problem105.c:46:         if (a[i] != b[i]) return false;
	movl	-4(%rbp), %eax	# i, tmp93
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# a, tmp94
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# problem105.c:46:         if (a[i] != b[i]) return false;
	movl	-4(%rbp), %eax	# i, tmp95
	cltq
	leaq	0(,%rax,4), %rcx	#, _6
	movq	-40(%rbp), %rax	# b, tmp96
	addq	%rcx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# problem105.c:46:         if (a[i] != b[i]) return false;
	cmpl	%eax, %edx	# _8, _4
	je	.L19	#,
# problem105.c:46:         if (a[i] != b[i]) return false;
	movl	$0, %eax	#, _10
	jmp	.L17	#
.L19:
# problem105.c:45:     for (int i = 0; i < a_size; i++) {
	addl	$1, -4(%rbp)	#, i
.L18:
# problem105.c:45:     for (int i = 0; i < a_size; i++) {
	movl	-4(%rbp), %eax	# i, tmp97
	cmpl	-28(%rbp), %eax	# a_size, tmp97
	jl	.L20	#,
# problem105.c:48:     return true;
	movl	$1, %eax	#, _10
.L17:
# problem105.c:49: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem105.c"
	.align 8
.LC1:
	.string	"issame(out1, out1_size, expected1, 3)"
	.align 8
.LC2:
	.string	"issame(out2, out2_size, NULL, 0)"
	.align 8
.LC3:
	.string	"issame(out3, out3_size, expected3, 2)"
	.align 8
.LC4:
	.string	"issame(out4, out4_size, expected4, 2)"
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
	subq	$160, %rsp	#,
# problem105.c:51: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp128
	movq	%rax, -8(%rbp)	# tmp128, D.2976
	xorl	%eax, %eax	# tmp128
# problem105.c:53:     int test1[] = {15, 33, 1422, 1};
	movl	$15, -64(%rbp)	#, test1[0]
	movl	$33, -60(%rbp)	#, test1[1]
	movl	$1422, -56(%rbp)	#, test1[2]
	movl	$1, -52(%rbp)	#, test1[3]
# problem105.c:54:     int expected1[] = {1, 15, 33};
	movl	$1, -88(%rbp)	#, expected1[0]
	movl	$15, -84(%rbp)	#, expected1[1]
	movl	$33, -80(%rbp)	#, expected1[2]
# problem105.c:57:     func0(test1, 4, &out1, &out1_size);
	leaq	-152(%rbp), %rcx	#, tmp100
	leaq	-136(%rbp), %rdx	#, tmp101
	leaq	-64(%rbp), %rax	#, tmp102
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp102,
	call	func0	#
# problem105.c:58:     assert(issame(out1, out1_size, expected1, 3));
	movl	-152(%rbp), %esi	# out1_size, out1_size.1_1
	movq	-136(%rbp), %rax	# out1, out1.2_2
	leaq	-88(%rbp), %rdx	#, tmp103
	movl	$3, %ecx	#,
	movq	%rax, %rdi	# out1.2_2,
	call	issame	#
	testb	%al, %al	# _3
	jne	.L22	#,
# problem105.c:58:     assert(issame(out1, out1_size, expected1, 3));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp104
	movq	%rax, %rcx	# tmp104,
	movl	$58, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	leaq	.LC1(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	__assert_fail@PLT	#
.L22:
# problem105.c:59:     free(out1);
	movq	-136(%rbp), %rax	# out1, out1.3_4
	movq	%rax, %rdi	# out1.3_4,
	call	free@PLT	#
# problem105.c:61:     int test2[] = {152, 323, 1422, 10};
	movl	$152, -48(%rbp)	#, test2[0]
	movl	$323, -44(%rbp)	#, test2[1]
	movl	$1422, -40(%rbp)	#, test2[2]
	movl	$10, -36(%rbp)	#, test2[3]
# problem105.c:64:     func0(test2, 4, &out2, &out2_size);
	leaq	-148(%rbp), %rcx	#, tmp107
	leaq	-128(%rbp), %rdx	#, tmp108
	leaq	-48(%rbp), %rax	#, tmp109
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp109,
	call	func0	#
# problem105.c:65:     assert(issame(out2, out2_size, NULL, 0));
	movl	-148(%rbp), %esi	# out2_size, out2_size.4_5
	movq	-128(%rbp), %rax	# out2, out2.5_6
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# out2.5_6,
	call	issame	#
	testb	%al, %al	# _7
	jne	.L23	#,
# problem105.c:65:     assert(issame(out2, out2_size, NULL, 0));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp110
	movq	%rax, %rcx	# tmp110,
	movl	$65, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp111
	movq	%rax, %rsi	# tmp111,
	leaq	.LC2(%rip), %rax	#, tmp112
	movq	%rax, %rdi	# tmp112,
	call	__assert_fail@PLT	#
.L23:
# problem105.c:66:     free(out2);
	movq	-128(%rbp), %rax	# out2, out2.6_8
	movq	%rax, %rdi	# out2.6_8,
	call	free@PLT	#
# problem105.c:68:     int test3[] = {12345, 2033, 111, 151};
	movl	$12345, -32(%rbp)	#, test3[0]
	movl	$2033, -28(%rbp)	#, test3[1]
	movl	$111, -24(%rbp)	#, test3[2]
	movl	$151, -20(%rbp)	#, test3[3]
# problem105.c:69:     int expected3[] = {111, 151};
	movl	$111, -104(%rbp)	#, expected3[0]
	movl	$151, -100(%rbp)	#, expected3[1]
# problem105.c:72:     func0(test3, 4, &out3, &out3_size);
	leaq	-144(%rbp), %rcx	#, tmp113
	leaq	-120(%rbp), %rdx	#, tmp114
	leaq	-32(%rbp), %rax	#, tmp115
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp115,
	call	func0	#
# problem105.c:73:     assert(issame(out3, out3_size, expected3, 2));
	movl	-144(%rbp), %esi	# out3_size, out3_size.7_9
	movq	-120(%rbp), %rax	# out3, out3.8_10
	leaq	-104(%rbp), %rdx	#, tmp116
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# out3.8_10,
	call	issame	#
	testb	%al, %al	# _11
	jne	.L24	#,
# problem105.c:73:     assert(issame(out3, out3_size, expected3, 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp117
	movq	%rax, %rcx	# tmp117,
	movl	$73, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp118
	movq	%rax, %rsi	# tmp118,
	leaq	.LC3(%rip), %rax	#, tmp119
	movq	%rax, %rdi	# tmp119,
	call	__assert_fail@PLT	#
.L24:
# problem105.c:74:     free(out3);
	movq	-120(%rbp), %rax	# out3, out3.9_12
	movq	%rax, %rdi	# out3.9_12,
	call	free@PLT	#
# problem105.c:76:     int test4[] = {135, 103, 31};
	movl	$135, -76(%rbp)	#, test4[0]
	movl	$103, -72(%rbp)	#, test4[1]
	movl	$31, -68(%rbp)	#, test4[2]
# problem105.c:77:     int expected4[] = {31, 135};
	movl	$31, -96(%rbp)	#, expected4[0]
	movl	$135, -92(%rbp)	#, expected4[1]
# problem105.c:80:     func0(test4, 3, &out4, &out4_size);
	leaq	-140(%rbp), %rcx	#, tmp120
	leaq	-112(%rbp), %rdx	#, tmp121
	leaq	-76(%rbp), %rax	#, tmp122
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp122,
	call	func0	#
# problem105.c:81:     assert(issame(out4, out4_size, expected4, 2));
	movl	-140(%rbp), %esi	# out4_size, out4_size.10_13
	movq	-112(%rbp), %rax	# out4, out4.11_14
	leaq	-96(%rbp), %rdx	#, tmp123
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# out4.11_14,
	call	issame	#
	testb	%al, %al	# _15
	jne	.L25	#,
# problem105.c:81:     assert(issame(out4, out4_size, expected4, 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp124
	movq	%rax, %rcx	# tmp124,
	movl	$81, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp125
	movq	%rax, %rsi	# tmp125,
	leaq	.LC4(%rip), %rax	#, tmp126
	movq	%rax, %rdi	# tmp126,
	call	__assert_fail@PLT	#
.L25:
# problem105.c:82:     free(out4);
	movq	-112(%rbp), %rax	# out4, out4.12_16
	movq	%rax, %rdi	# out4.12_16,
	call	free@PLT	#
# problem105.c:84:     return 0;
	movl	$0, %eax	#, _56
# problem105.c:85: }
	movq	-8(%rbp), %rdx	# D.2976, tmp129
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp129
	je	.L27	#,
	call	__stack_chk_fail@PLT	#
.L27:
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
