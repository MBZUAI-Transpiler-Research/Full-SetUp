	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"the number of odd elements %d in the string %d of the %d input."
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
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# lst, lst
	movl	%esi, -60(%rbp)	# size, size
# eval/problem114//code.c:6:     char **out = malloc(size * sizeof(char *));
	movl	-60(%rbp), %eax	# size, tmp125
	cltq
	salq	$3, %rax	#, _2
	movq	%rax, %rdi	# _2,
	call	malloc@PLT	#
	movq	%rax, -24(%rbp)	# tmp126, out
# eval/problem114//code.c:7:     for (int i = 0; i < size; i++) {
	movl	$0, -36(%rbp)	#, i
# eval/problem114//code.c:7:     for (int i = 0; i < size; i++) {
	jmp	.L2	#
.L6:
# eval/problem114//code.c:8:         int sum = 0;
	movl	$0, -32(%rbp)	#, sum
# eval/problem114//code.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	movl	$0, -28(%rbp)	#, j
# eval/problem114//code.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	jmp	.L3	#
.L5:
# eval/problem114//code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	movl	-36(%rbp), %eax	# i, tmp127
	cltq
	leaq	0(,%rax,8), %rdx	#, _4
	movq	-56(%rbp), %rax	# lst, tmp128
	addq	%rdx, %rax	# _4, _5
	movq	(%rax), %rdx	# *_5, _6
# eval/problem114//code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	movl	-28(%rbp), %eax	# j, tmp129
	cltq
	addq	%rdx, %rax	# _6, _8
	movzbl	(%rax), %eax	# *_8, _9
# eval/problem114//code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	cmpb	$47, %al	#, _9
	jle	.L4	#,
# eval/problem114//code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	movl	-36(%rbp), %eax	# i, tmp130
	cltq
	leaq	0(,%rax,8), %rdx	#, _11
	movq	-56(%rbp), %rax	# lst, tmp131
	addq	%rdx, %rax	# _11, _12
	movq	(%rax), %rdx	# *_12, _13
# eval/problem114//code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	movl	-28(%rbp), %eax	# j, tmp132
	cltq
	addq	%rdx, %rax	# _13, _15
	movzbl	(%rax), %eax	# *_15, _16
# eval/problem114//code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	cmpb	$57, %al	#, _16
	jg	.L4	#,
# eval/problem114//code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	movl	-36(%rbp), %eax	# i, tmp133
	cltq
	leaq	0(,%rax,8), %rdx	#, _18
	movq	-56(%rbp), %rax	# lst, tmp134
	addq	%rdx, %rax	# _18, _19
	movq	(%rax), %rdx	# *_19, _20
# eval/problem114//code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	movl	-28(%rbp), %eax	# j, tmp135
	cltq
	addq	%rdx, %rax	# _20, _22
	movzbl	(%rax), %eax	# *_22, _23
	movsbl	%al, %eax	# _23, _24
# eval/problem114//code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	subl	$48, %eax	#, _25
# eval/problem114//code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	cltd
	shrl	$31, %edx	#, tmp137
	addl	%edx, %eax	# tmp137, tmp138
	andl	$1, %eax	#, tmp139
	subl	%edx, %eax	# tmp137, tmp140
# eval/problem114//code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	cmpl	$1, %eax	#, _26
	jne	.L4	#,
# eval/problem114//code.c:11:                 sum += 1;
	addl	$1, -32(%rbp)	#, sum
.L4:
# eval/problem114//code.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	addl	$1, -28(%rbp)	#, j
.L3:
# eval/problem114//code.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	movl	-36(%rbp), %eax	# i, tmp141
	cltq
	leaq	0(,%rax,8), %rdx	#, _28
	movq	-56(%rbp), %rax	# lst, tmp142
	addq	%rdx, %rax	# _28, _29
	movq	(%rax), %rdx	# *_29, _30
# eval/problem114//code.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	movl	-28(%rbp), %eax	# j, tmp143
	cltq
	addq	%rdx, %rax	# _30, _32
	movzbl	(%rax), %eax	# *_32, _33
# eval/problem114//code.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	testb	%al, %al	# _33
	jne	.L5	#,
# eval/problem114//code.c:13:         out[i] = malloc(100); // Assuming the string will not be longer than 99 characters.
	movl	-36(%rbp), %eax	# i, tmp144
	cltq
	leaq	0(,%rax,8), %rdx	#, _35
	movq	-24(%rbp), %rax	# out, tmp145
	leaq	(%rdx,%rax), %rbx	#, _36
# eval/problem114//code.c:13:         out[i] = malloc(100); // Assuming the string will not be longer than 99 characters.
	movl	$100, %edi	#,
	call	malloc@PLT	#
# eval/problem114//code.c:13:         out[i] = malloc(100); // Assuming the string will not be longer than 99 characters.
	movq	%rax, (%rbx)	# _37, *_36
# eval/problem114//code.c:14:         sprintf(out[i], "the number of odd elements %d in the string %d of the %d input.", sum, sum, sum);
	movl	-36(%rbp), %eax	# i, tmp147
	cltq
	leaq	0(,%rax,8), %rdx	#, _39
	movq	-24(%rbp), %rax	# out, tmp148
	addq	%rdx, %rax	# _39, _40
# eval/problem114//code.c:14:         sprintf(out[i], "the number of odd elements %d in the string %d of the %d input.", sum, sum, sum);
	movq	(%rax), %rax	# *_40, _41
	movl	-32(%rbp), %esi	# sum, tmp149
	movl	-32(%rbp), %ecx	# sum, tmp150
	movl	-32(%rbp), %edx	# sum, tmp151
	movl	%esi, %r8d	# tmp149,
	leaq	.LC0(%rip), %rsi	#, tmp152
	movq	%rax, %rdi	# _41,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# eval/problem114//code.c:7:     for (int i = 0; i < size; i++) {
	addl	$1, -36(%rbp)	#, i
.L2:
# eval/problem114//code.c:7:     for (int i = 0; i < size; i++) {
	movl	-36(%rbp), %eax	# i, tmp153
	cmpl	-60(%rbp), %eax	# size, tmp153
	jl	.L6	#,
# eval/problem114//code.c:16:     return out;
	movq	-24(%rbp), %rax	# out, _52
# eval/problem114//code.c:17: }
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
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
