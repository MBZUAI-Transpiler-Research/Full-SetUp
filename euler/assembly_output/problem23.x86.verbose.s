	.file	"problem23.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
# problem23.c:14:   const int upper_limit = 28123;
	movl	$28123, -24(%rbp)	#, upper_limit
# problem23.c:15:   int *abundants, abundants_count = 0;
	movl	$0, -32(%rbp)	#, abundants_count
# problem23.c:17:   int sum = 0;
	movl	$0, -28(%rbp)	#, sum
# problem23.c:19:   for (i = 1; i < upper_limit; i++) {
	movl	$1, -40(%rbp)	#, i
# problem23.c:19:   for (i = 1; i < upper_limit; i++) {
	jmp	.L2	#
.L4:
# problem23.c:20:     if (is_abundant(i)) {
	movl	-40(%rbp), %eax	# i, tmp108
	movl	%eax, %edi	# tmp108,
	call	is_abundant	#
# problem23.c:20:     if (is_abundant(i)) {
	testl	%eax, %eax	# _1
	je	.L3	#,
# problem23.c:21:       abundants_count++;
	addl	$1, -32(%rbp)	#, abundants_count
.L3:
# problem23.c:19:   for (i = 1; i < upper_limit; i++) {
	addl	$1, -40(%rbp)	#, i
.L2:
# problem23.c:19:   for (i = 1; i < upper_limit; i++) {
	movl	-40(%rbp), %eax	# i, tmp109
	cmpl	-24(%rbp), %eax	# upper_limit, tmp109
	jl	.L4	#,
# problem23.c:25:   abundants = malloc(abundants_count * sizeof *abundants);
	movl	-32(%rbp), %eax	# abundants_count, tmp110
	cltq
	salq	$2, %rax	#, _3
	movq	%rax, %rdi	# _3,
	call	malloc@PLT	#
	movq	%rax, -16(%rbp)	# tmp111, abundants
# problem23.c:26:   j = 0;
	movl	$0, -36(%rbp)	#, j
# problem23.c:27:   for (i = 1; i < upper_limit; i++) {
	movl	$1, -40(%rbp)	#, i
# problem23.c:27:   for (i = 1; i < upper_limit; i++) {
	jmp	.L5	#
.L7:
# problem23.c:28:     if (is_abundant(i)) {
	movl	-40(%rbp), %eax	# i, tmp112
	movl	%eax, %edi	# tmp112,
	call	is_abundant	#
# problem23.c:28:     if (is_abundant(i)) {
	testl	%eax, %eax	# _4
	je	.L6	#,
# problem23.c:29:       abundants[j++] = i;
	movl	-36(%rbp), %eax	# j, j.0_5
	leal	1(%rax), %edx	#, tmp113
	movl	%edx, -36(%rbp)	# tmp113, j
	cltq
# problem23.c:29:       abundants[j++] = i;
	leaq	0(,%rax,4), %rdx	#, _7
	movq	-16(%rbp), %rax	# abundants, tmp114
	addq	%rax, %rdx	# tmp114, _8
# problem23.c:29:       abundants[j++] = i;
	movl	-40(%rbp), %eax	# i, tmp115
	movl	%eax, (%rdx)	# tmp115, *_8
.L6:
# problem23.c:27:   for (i = 1; i < upper_limit; i++) {
	addl	$1, -40(%rbp)	#, i
.L5:
# problem23.c:27:   for (i = 1; i < upper_limit; i++) {
	movl	-40(%rbp), %eax	# i, tmp116
	cmpl	-24(%rbp), %eax	# upper_limit, tmp116
	jl	.L7	#,
# problem23.c:33:   expressed = calloc(upper_limit, sizeof *expressed);
	movl	-24(%rbp), %eax	# upper_limit, tmp117
	cltq
	movl	$1, %esi	#,
	movq	%rax, %rdi	# _9,
	call	calloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp118, expressed
# problem23.c:34:   for (i = 0; i < abundants_count; i++) {
	movl	$0, -40(%rbp)	#, i
# problem23.c:34:   for (i = 0; i < abundants_count; i++) {
	jmp	.L8	#
.L13:
# problem23.c:35:     for (j = i; j < abundants_count; j++) {
	movl	-40(%rbp), %eax	# i, tmp119
	movl	%eax, -36(%rbp)	# tmp119, j
# problem23.c:35:     for (j = i; j < abundants_count; j++) {
	jmp	.L9	#
.L12:
# problem23.c:36:       int k = abundants[i] + abundants[j];
	movl	-40(%rbp), %eax	# i, tmp120
	cltq
	leaq	0(,%rax,4), %rdx	#, _11
	movq	-16(%rbp), %rax	# abundants, tmp121
	addq	%rdx, %rax	# _11, _12
	movl	(%rax), %edx	# *_12, _13
# problem23.c:36:       int k = abundants[i] + abundants[j];
	movl	-36(%rbp), %eax	# j, tmp122
	cltq
	leaq	0(,%rax,4), %rcx	#, _15
	movq	-16(%rbp), %rax	# abundants, tmp123
	addq	%rcx, %rax	# _15, _16
	movl	(%rax), %eax	# *_16, _17
# problem23.c:36:       int k = abundants[i] + abundants[j];
	addl	%edx, %eax	# _13, tmp124
	movl	%eax, -20(%rbp)	# tmp124, k
# problem23.c:37:       if (k >= upper_limit) {
	movl	-20(%rbp), %eax	# k, tmp125
	cmpl	-24(%rbp), %eax	# upper_limit, tmp125
	jge	.L18	#,
# problem23.c:40:       expressed[k-1] = 1;
	movl	-20(%rbp), %eax	# k, tmp126
	cltq
	leaq	-1(%rax), %rdx	#, _19
	movq	-8(%rbp), %rax	# expressed, tmp127
	addq	%rdx, %rax	# _19, _20
# problem23.c:40:       expressed[k-1] = 1;
	movb	$1, (%rax)	#, *_20
# problem23.c:35:     for (j = i; j < abundants_count; j++) {
	addl	$1, -36(%rbp)	#, j
.L9:
# problem23.c:35:     for (j = i; j < abundants_count; j++) {
	movl	-36(%rbp), %eax	# j, tmp128
	cmpl	-32(%rbp), %eax	# abundants_count, tmp128
	jl	.L12	#,
	jmp	.L11	#
.L18:
# problem23.c:38:         break;
	nop	
.L11:
# problem23.c:34:   for (i = 0; i < abundants_count; i++) {
	addl	$1, -40(%rbp)	#, i
.L8:
# problem23.c:34:   for (i = 0; i < abundants_count; i++) {
	movl	-40(%rbp), %eax	# i, tmp129
	cmpl	-32(%rbp), %eax	# abundants_count, tmp129
	jl	.L13	#,
# problem23.c:44:   for (i = 1; i < upper_limit; i++) {
	movl	$1, -40(%rbp)	#, i
# problem23.c:44:   for (i = 1; i < upper_limit; i++) {
	jmp	.L14	#
.L16:
# problem23.c:45:     if (!expressed[i-1]) {
	movl	-40(%rbp), %eax	# i, tmp130
	cltq
	leaq	-1(%rax), %rdx	#, _22
	movq	-8(%rbp), %rax	# expressed, tmp131
	addq	%rdx, %rax	# _22, _23
	movzbl	(%rax), %eax	# *_23, _24
# problem23.c:45:     if (!expressed[i-1]) {
	testb	%al, %al	# _24
	jne	.L15	#,
# problem23.c:46:       sum += i;
	movl	-40(%rbp), %eax	# i, tmp132
	addl	%eax, -28(%rbp)	# tmp132, sum
.L15:
# problem23.c:44:   for (i = 1; i < upper_limit; i++) {
	addl	$1, -40(%rbp)	#, i
.L14:
# problem23.c:44:   for (i = 1; i < upper_limit; i++) {
	movl	-40(%rbp), %eax	# i, tmp133
	cmpl	-24(%rbp), %eax	# upper_limit, tmp133
	jl	.L16	#,
# problem23.c:49:   printf("%d\n", sum);
	movl	-28(%rbp), %eax	# sum, tmp134
	movl	%eax, %esi	# tmp134,
	leaq	.LC0(%rip), %rax	#, tmp135
	movq	%rax, %rdi	# tmp135,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem23.c:51:   free(abundants);
	movq	-16(%rbp), %rax	# abundants, tmp136
	movq	%rax, %rdi	# tmp136,
	call	free@PLT	#
# problem23.c:52:   free(expressed);
	movq	-8(%rbp), %rax	# expressed, tmp137
	movq	%rax, %rdi	# tmp137,
	call	free@PLT	#
# problem23.c:54:   return 0;
	movl	$0, %eax	#, _57
# problem23.c:55: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.type	is_abundant, @function
is_abundant:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# n, n
# problem23.c:59:   int sum = 1;
	movl	$1, -16(%rbp)	#, sum
# problem23.c:60:   int i, k = n;
	movl	-20(%rbp), %eax	# n, tmp91
	movl	%eax, -8(%rbp)	# tmp91, k
# problem23.c:61:   for (i = 2; i <= k; i++) {
	movl	$2, -12(%rbp)	#, i
# problem23.c:61:   for (i = 2; i <= k; i++) {
	jmp	.L20	#
.L23:
# problem23.c:62:     int p = 1;
	movl	$1, -4(%rbp)	#, p
# problem23.c:63:     while (k % i == 0) {
	jmp	.L21	#
.L22:
# problem23.c:64:       p *= i;
	movl	-4(%rbp), %eax	# p, tmp93
	imull	-12(%rbp), %eax	# i, tmp92
	movl	%eax, -4(%rbp)	# tmp92, p
# problem23.c:65:       k /= i;
	movl	-8(%rbp), %eax	# k, tmp97
	cltd
	idivl	-12(%rbp)	# i
	movl	%eax, -8(%rbp)	# tmp95, k
.L21:
# problem23.c:63:     while (k % i == 0) {
	movl	-8(%rbp), %eax	# k, tmp98
	cltd
	idivl	-12(%rbp)	# i
	movl	%edx, %eax	# tmp99, _1
# problem23.c:63:     while (k % i == 0) {
	testl	%eax, %eax	# _1
	je	.L22	#,
# problem23.c:67:     sum *= (p*i - 1)/(i-1);
	movl	-4(%rbp), %eax	# p, tmp101
	imull	-12(%rbp), %eax	# i, _2
# problem23.c:67:     sum *= (p*i - 1)/(i-1);
	subl	$1, %eax	#, _3
# problem23.c:67:     sum *= (p*i - 1)/(i-1);
	movl	-12(%rbp), %edx	# i, tmp102
	leal	-1(%rdx), %ecx	#, _4
# problem23.c:67:     sum *= (p*i - 1)/(i-1);
	cltd
	idivl	%ecx	# _4
	movl	%eax, %edx	# tmp103, _5
# problem23.c:67:     sum *= (p*i - 1)/(i-1);
	movl	-16(%rbp), %eax	# sum, tmp106
	imull	%edx, %eax	# _5, tmp105
	movl	%eax, -16(%rbp)	# tmp105, sum
# problem23.c:61:   for (i = 2; i <= k; i++) {
	addl	$1, -12(%rbp)	#, i
.L20:
# problem23.c:61:   for (i = 2; i <= k; i++) {
	movl	-12(%rbp), %eax	# i, tmp107
	cmpl	-8(%rbp), %eax	# k, tmp107
	jle	.L23	#,
# problem23.c:69:   return 2*n < sum;
	movl	-20(%rbp), %eax	# n, tmp108
	addl	%eax, %eax	# _6
# problem23.c:69:   return 2*n < sum;
	cmpl	%eax, -16(%rbp)	# _6, sum
	setg	%al	#, _7
	movzbl	%al, %eax	# _7, _17
# problem23.c:70: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	is_abundant, .-is_abundant
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
