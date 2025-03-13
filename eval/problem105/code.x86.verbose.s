	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
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
# code.c:6:     *out = malloc(size * sizeof(int));
	movl	-44(%rbp), %eax	# size, tmp138
	cltq
	salq	$2, %rax	#, _2
	movq	%rax, %rdi	# _2,
	call	malloc@PLT	#
	movq	%rax, %rdx	# tmp139, _3
# code.c:6:     *out = malloc(size * sizeof(int));
	movq	-56(%rbp), %rax	# out, tmp140
	movq	%rdx, (%rax)	# _3, *out_72(D)
# code.c:7:     *out_size = 0;
	movq	-64(%rbp), %rax	# out_size, tmp141
	movl	$0, (%rax)	#, *out_size_74(D)
# code.c:9:     for (int i = 0; i < size; i++) {
	movl	$0, -20(%rbp)	#, i
# code.c:9:     for (int i = 0; i < size; i++) {
	jmp	.L2	#
.L9:
# code.c:10:         int num = x[i];
	movl	-20(%rbp), %eax	# i, tmp142
	cltq
	leaq	0(,%rax,4), %rdx	#, _5
	movq	-40(%rbp), %rax	# x, tmp143
	addq	%rdx, %rax	# _5, _6
# code.c:10:         int num = x[i];
	movl	(%rax), %eax	# *_6, tmp144
	movl	%eax, -16(%rbp)	# tmp144, num
# code.c:11:         bool has_even_digit = false;
	movb	$0, -21(%rbp)	#, has_even_digit
# code.c:12:         if (num == 0) has_even_digit = true;
	cmpl	$0, -16(%rbp)	#, num
	jne	.L4	#,
# code.c:12:         if (num == 0) has_even_digit = true;
	movb	$1, -21(%rbp)	#, has_even_digit
# code.c:14:         while (num > 0 && !has_even_digit) {
	jmp	.L4	#
.L7:
# code.c:15:             if (num % 2 == 0) has_even_digit = true;
	movl	-16(%rbp), %eax	# num, num.0_7
	andl	$1, %eax	#, _8
# code.c:15:             if (num % 2 == 0) has_even_digit = true;
	testl	%eax, %eax	# _8
	jne	.L5	#,
# code.c:15:             if (num % 2 == 0) has_even_digit = true;
	movb	$1, -21(%rbp)	#, has_even_digit
.L5:
# code.c:16:             num = num / 10;
	movl	-16(%rbp), %eax	# num, tmp146
	movslq	%eax, %rdx	# tmp146, tmp147
	imulq	$1717986919, %rdx, %rdx	#, tmp147, tmp148
	shrq	$32, %rdx	#, tmp149
	movl	%edx, %ecx	# tmp149, tmp150
	sarl	$2, %ecx	#, tmp150
	cltd
	movl	%ecx, %eax	# tmp150, tmp150
	subl	%edx, %eax	# tmp151, tmp150
	movl	%eax, -16(%rbp)	# tmp145, num
.L4:
# code.c:14:         while (num > 0 && !has_even_digit) {
	cmpl	$0, -16(%rbp)	#, num
	jle	.L6	#,
# code.c:14:         while (num > 0 && !has_even_digit) {
	movzbl	-21(%rbp), %eax	# has_even_digit, tmp152
	xorl	$1, %eax	#, _9
# code.c:14:         while (num > 0 && !has_even_digit) {
	testb	%al, %al	# _9
	jne	.L7	#,
.L6:
# code.c:19:         if (!has_even_digit) {
	movzbl	-21(%rbp), %eax	# has_even_digit, tmp153
	xorl	$1, %eax	#, _10
# code.c:19:         if (!has_even_digit) {
	testb	%al, %al	# _10
	je	.L8	#,
# code.c:20:             (*out)[*out_size] = x[i];
	movl	-20(%rbp), %eax	# i, tmp154
	cltq
	leaq	0(,%rax,4), %rdx	#, _12
	movq	-40(%rbp), %rax	# x, tmp155
	leaq	(%rdx,%rax), %rcx	#, _13
# code.c:20:             (*out)[*out_size] = x[i];
	movq	-56(%rbp), %rax	# out, tmp156
	movq	(%rax), %rdx	# *out_72(D), _14
# code.c:20:             (*out)[*out_size] = x[i];
	movq	-64(%rbp), %rax	# out_size, tmp157
	movl	(%rax), %eax	# *out_size_74(D), _15
	cltq
# code.c:20:             (*out)[*out_size] = x[i];
	salq	$2, %rax	#, _17
	addq	%rax, %rdx	# _17, _18
# code.c:20:             (*out)[*out_size] = x[i];
	movl	(%rcx), %eax	# *_13, _19
# code.c:20:             (*out)[*out_size] = x[i];
	movl	%eax, (%rdx)	# _19, *_18
# code.c:21:             (*out_size)++;
	movq	-64(%rbp), %rax	# out_size, tmp158
	movl	(%rax), %eax	# *out_size_74(D), _20
# code.c:21:             (*out_size)++;
	leal	1(%rax), %edx	#, _21
	movq	-64(%rbp), %rax	# out_size, tmp159
	movl	%edx, (%rax)	# _21, *out_size_74(D)
.L8:
# code.c:9:     for (int i = 0; i < size; i++) {
	addl	$1, -20(%rbp)	#, i
.L2:
# code.c:9:     for (int i = 0; i < size; i++) {
	movl	-20(%rbp), %eax	# i, tmp160
	cmpl	-44(%rbp), %eax	# size, tmp160
	jl	.L9	#,
# code.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	movl	$0, -12(%rbp)	#, i
# code.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	jmp	.L10	#
.L14:
# code.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	movl	$0, -8(%rbp)	#, j
# code.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	jmp	.L11	#
.L13:
# code.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	movq	-56(%rbp), %rax	# out, tmp161
	movq	(%rax), %rax	# *out_72(D), _22
# code.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	movl	-8(%rbp), %edx	# j, tmp162
	movslq	%edx, %rdx	# tmp162, _23
	salq	$2, %rdx	#, _24
	addq	%rdx, %rax	# _24, _25
	movl	(%rax), %edx	# *_25, _26
# code.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	movq	-56(%rbp), %rax	# out, tmp163
	movq	(%rax), %rax	# *out_72(D), _27
# code.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	movl	-8(%rbp), %ecx	# j, tmp164
	movslq	%ecx, %rcx	# tmp164, _28
	addq	$1, %rcx	#, _29
	salq	$2, %rcx	#, _30
	addq	%rcx, %rax	# _30, _31
	movl	(%rax), %eax	# *_31, _32
# code.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	cmpl	%eax, %edx	# _32, _26
	jle	.L12	#,
# code.c:28:                 int temp = (*out)[j];
	movq	-56(%rbp), %rax	# out, tmp165
	movq	(%rax), %rax	# *out_72(D), _33
# code.c:28:                 int temp = (*out)[j];
	movl	-8(%rbp), %edx	# j, tmp166
	movslq	%edx, %rdx	# tmp166, _34
	salq	$2, %rdx	#, _35
	addq	%rdx, %rax	# _35, _36
# code.c:28:                 int temp = (*out)[j];
	movl	(%rax), %eax	# *_36, tmp167
	movl	%eax, -4(%rbp)	# tmp167, temp
# code.c:29:                 (*out)[j] = (*out)[j + 1];
	movq	-56(%rbp), %rax	# out, tmp168
	movq	(%rax), %rax	# *out_72(D), _37
# code.c:29:                 (*out)[j] = (*out)[j + 1];
	movl	-8(%rbp), %edx	# j, tmp169
	movslq	%edx, %rdx	# tmp169, _38
	addq	$1, %rdx	#, _39
	salq	$2, %rdx	#, _40
	leaq	(%rax,%rdx), %rcx	#, _41
# code.c:29:                 (*out)[j] = (*out)[j + 1];
	movq	-56(%rbp), %rax	# out, tmp170
	movq	(%rax), %rax	# *out_72(D), _42
# code.c:29:                 (*out)[j] = (*out)[j + 1];
	movl	-8(%rbp), %edx	# j, tmp171
	movslq	%edx, %rdx	# tmp171, _43
	salq	$2, %rdx	#, _44
	addq	%rax, %rdx	# _42, _45
# code.c:29:                 (*out)[j] = (*out)[j + 1];
	movl	(%rcx), %eax	# *_41, _46
# code.c:29:                 (*out)[j] = (*out)[j + 1];
	movl	%eax, (%rdx)	# _46, *_45
# code.c:30:                 (*out)[j + 1] = temp;
	movq	-56(%rbp), %rax	# out, tmp172
	movq	(%rax), %rax	# *out_72(D), _47
# code.c:30:                 (*out)[j + 1] = temp;
	movl	-8(%rbp), %edx	# j, tmp173
	movslq	%edx, %rdx	# tmp173, _48
	addq	$1, %rdx	#, _49
	salq	$2, %rdx	#, _50
	addq	%rax, %rdx	# _47, _51
# code.c:30:                 (*out)[j + 1] = temp;
	movl	-4(%rbp), %eax	# temp, tmp174
	movl	%eax, (%rdx)	# tmp174, *_51
.L12:
# code.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	addl	$1, -8(%rbp)	#, j
.L11:
# code.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	movq	-64(%rbp), %rax	# out_size, tmp175
	movl	(%rax), %eax	# *out_size_74(D), _52
# code.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	subl	-12(%rbp), %eax	# i, _53
# code.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	subl	$1, %eax	#, _54
# code.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	cmpl	%eax, -8(%rbp)	# _54, j
	jl	.L13	#,
# code.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	addl	$1, -12(%rbp)	#, i
.L10:
# code.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	movq	-64(%rbp), %rax	# out_size, tmp176
	movl	(%rax), %eax	# *out_size_74(D), _55
# code.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	subl	$1, %eax	#, _56
# code.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	cmpl	%eax, -12(%rbp)	# _56, i
	jl	.L14	#,
# code.c:34: }
	nop	
	nop	
	leave	
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
