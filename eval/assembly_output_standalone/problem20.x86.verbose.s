	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"zero"
.LC1:
	.string	"one"
.LC2:
	.string	"two"
.LC3:
	.string	"three"
.LC4:
	.string	"four"
.LC5:
	.string	"five"
.LC6:
	.string	"six"
.LC7:
	.string	"seven"
.LC8:
	.string	"eight"
.LC9:
	.string	"nine"
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
	subq	$176, %rsp	#,
	movq	%rdi, -168(%rbp)	# numbers, numbers
# eval/problem20//code.c:4: const char* func0(const char* numbers) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp161
	movq	%rax, -8(%rbp)	# tmp161, D.2575
	xorl	%eax, %eax	# tmp161
# eval/problem20//code.c:5:     int count[10] = {0};
	movq	$0, -144(%rbp)	#, count
	movq	$0, -136(%rbp)	#, count
	movq	$0, -128(%rbp)	#, count
	movq	$0, -120(%rbp)	#, count
	movq	$0, -112(%rbp)	#, count
# eval/problem20//code.c:6:     const char* numto[10] = {"zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"};
	leaq	.LC0(%rip), %rax	#, tmp113
	movq	%rax, -96(%rbp)	# tmp113, numto[0]
	leaq	.LC1(%rip), %rax	#, tmp114
	movq	%rax, -88(%rbp)	# tmp114, numto[1]
	leaq	.LC2(%rip), %rax	#, tmp115
	movq	%rax, -80(%rbp)	# tmp115, numto[2]
	leaq	.LC3(%rip), %rax	#, tmp116
	movq	%rax, -72(%rbp)	# tmp116, numto[3]
	leaq	.LC4(%rip), %rax	#, tmp117
	movq	%rax, -64(%rbp)	# tmp117, numto[4]
	leaq	.LC5(%rip), %rax	#, tmp118
	movq	%rax, -56(%rbp)	# tmp118, numto[5]
	leaq	.LC6(%rip), %rax	#, tmp119
	movq	%rax, -48(%rbp)	# tmp119, numto[6]
	leaq	.LC7(%rip), %rax	#, tmp120
	movq	%rax, -40(%rbp)	# tmp120, numto[7]
	leaq	.LC8(%rip), %rax	#, tmp121
	movq	%rax, -32(%rbp)	# tmp121, numto[8]
	leaq	.LC9(%rip), %rax	#, tmp122
	movq	%rax, -24(%rbp)	# tmp122, numto[9]
# eval/problem20//code.c:11:     index = 0;
	movl	$0, -160(%rbp)	#, index
# eval/problem20//code.c:12:     if (*numbers) {
	movq	-168(%rbp), %rax	# numbers, tmp123
	movzbl	(%rax), %eax	# *numbers_60(D), _1
# eval/problem20//code.c:12:     if (*numbers) {
	testb	%al, %al	# _1
	je	.L2	#,
.L10:
# eval/problem20//code.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	movl	$0, -156(%rbp)	#, i
# eval/problem20//code.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	jmp	.L3	#
.L5:
# eval/problem20//code.c:15:                 current[i] = numbers[i];
	movl	-156(%rbp), %eax	# i, tmp124
	movslq	%eax, %rdx	# tmp124, _2
	movq	-168(%rbp), %rax	# numbers, tmp125
	addq	%rdx, %rax	# _2, _3
	movzbl	(%rax), %edx	# *_3, _4
# eval/problem20//code.c:15:                 current[i] = numbers[i];
	movl	-156(%rbp), %eax	# i, tmp127
	cltq
	movb	%dl, -14(%rbp,%rax)	# _4, current[i_34]
# eval/problem20//code.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	addl	$1, -156(%rbp)	#, i
.L3:
# eval/problem20//code.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	movl	-156(%rbp), %eax	# i, tmp128
	movslq	%eax, %rdx	# tmp128, _5
	movq	-168(%rbp), %rax	# numbers, tmp129
	addq	%rdx, %rax	# _5, _6
	movzbl	(%rax), %eax	# *_6, _7
# eval/problem20//code.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	cmpb	$32, %al	#, _7
	je	.L4	#,
# eval/problem20//code.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	movl	-156(%rbp), %eax	# i, tmp130
	movslq	%eax, %rdx	# tmp130, _8
	movq	-168(%rbp), %rax	# numbers, tmp131
	addq	%rdx, %rax	# _8, _9
	movzbl	(%rax), %eax	# *_9, _10
# eval/problem20//code.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	testb	%al, %al	# _10
	jne	.L5	#,
.L4:
# eval/problem20//code.c:17:             current[i] = '\0';
	movl	-156(%rbp), %eax	# i, tmp133
	cltq
	movb	$0, -14(%rbp,%rax)	#, current[i_34]
# eval/problem20//code.c:18:             for (j = 0; j < 10; ++j) {
	movl	$0, -152(%rbp)	#, j
# eval/problem20//code.c:18:             for (j = 0; j < 10; ++j) {
	jmp	.L6	#
.L9:
# eval/problem20//code.c:19:                 if (strcmp(current, numto[j]) == 0) {
	movl	-152(%rbp), %eax	# j, tmp135
	cltq
	movq	-96(%rbp,%rax,8), %rdx	# numto[j_36], _11
	leaq	-14(%rbp), %rax	#, tmp136
	movq	%rdx, %rsi	# _11,
	movq	%rax, %rdi	# tmp136,
	call	strcmp@PLT	#
# eval/problem20//code.c:19:                 if (strcmp(current, numto[j]) == 0) {
	testl	%eax, %eax	# _12
	jne	.L7	#,
# eval/problem20//code.c:20:                     count[j]++;
	movl	-152(%rbp), %eax	# j, tmp138
	cltq
	movl	-144(%rbp,%rax,4), %eax	# count[j_36], _13
# eval/problem20//code.c:20:                     count[j]++;
	leal	1(%rax), %edx	#, _14
	movl	-152(%rbp), %eax	# j, tmp140
	cltq
	movl	%edx, -144(%rbp,%rax,4)	# _14, count[j_36]
# eval/problem20//code.c:21:                     break;
	jmp	.L8	#
.L7:
# eval/problem20//code.c:18:             for (j = 0; j < 10; ++j) {
	addl	$1, -152(%rbp)	#, j
.L6:
# eval/problem20//code.c:18:             for (j = 0; j < 10; ++j) {
	cmpl	$9, -152(%rbp)	#, j
	jle	.L9	#,
.L8:
# eval/problem20//code.c:24:             numbers += i + 1;
	movl	-156(%rbp), %eax	# i, tmp141
	cltq
	addq	$1, %rax	#, _16
	addq	%rax, -168(%rbp)	# _16, numbers
# eval/problem20//code.c:25:         } while (numbers[-1]);
	movq	-168(%rbp), %rax	# numbers, tmp142
	subq	$1, %rax	#, _17
	movzbl	(%rax), %eax	# *_17, _18
# eval/problem20//code.c:25:         } while (numbers[-1]);
	testb	%al, %al	# _18
	jne	.L10	#,
.L2:
# eval/problem20//code.c:28:     for (i = 0; i < 10; ++i) {
	movl	$0, -156(%rbp)	#, i
# eval/problem20//code.c:28:     for (i = 0; i < 10; ++i) {
	jmp	.L11	#
.L16:
# eval/problem20//code.c:29:         for (j = 0; j < count[i]; ++j) {
	movl	$0, -152(%rbp)	#, j
# eval/problem20//code.c:29:         for (j = 0; j < count[i]; ++j) {
	jmp	.L12	#
.L15:
# eval/problem20//code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	movl	$0, -148(%rbp)	#, k
# eval/problem20//code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	jmp	.L13	#
.L14:
# eval/problem20//code.c:31:                 out[index] = numto[i][k];
	movl	-156(%rbp), %eax	# i, tmp144
	cltq
	movq	-96(%rbp,%rax,8), %rdx	# numto[i_35], _19
# eval/problem20//code.c:31:                 out[index] = numto[i][k];
	movl	-148(%rbp), %eax	# k, tmp145
	cltq
	addq	%rdx, %rax	# _19, _21
	movzbl	(%rax), %edx	# *_21, _22
# eval/problem20//code.c:31:                 out[index] = numto[i][k];
	movl	-160(%rbp), %eax	# index, tmp147
	cltq
	leaq	out.0(%rip), %rcx	#, tmp148
	movb	%dl, (%rax,%rcx)	# _22, out[index_31]
# eval/problem20//code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	addl	$1, -148(%rbp)	#, k
# eval/problem20//code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	addl	$1, -160(%rbp)	#, index
.L13:
# eval/problem20//code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	movl	-156(%rbp), %eax	# i, tmp150
	cltq
	movq	-96(%rbp,%rax,8), %rdx	# numto[i_35], _23
# eval/problem20//code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	movl	-148(%rbp), %eax	# k, tmp151
	cltq
	addq	%rdx, %rax	# _23, _25
	movzbl	(%rax), %eax	# *_25, _26
# eval/problem20//code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	testb	%al, %al	# _26
	jne	.L14	#,
# eval/problem20//code.c:33:             out[index++] = ' '; 
	movl	-160(%rbp), %eax	# index, index.0_27
	leal	1(%rax), %edx	#, tmp152
	movl	%edx, -160(%rbp)	# tmp152, index
# eval/problem20//code.c:33:             out[index++] = ' '; 
	cltq
	leaq	out.0(%rip), %rdx	#, tmp154
	movb	$32, (%rax,%rdx)	#, out[index.0_27]
# eval/problem20//code.c:29:         for (j = 0; j < count[i]; ++j) {
	addl	$1, -152(%rbp)	#, j
.L12:
# eval/problem20//code.c:29:         for (j = 0; j < count[i]; ++j) {
	movl	-156(%rbp), %eax	# i, tmp156
	cltq
	movl	-144(%rbp,%rax,4), %eax	# count[i_35], _28
# eval/problem20//code.c:29:         for (j = 0; j < count[i]; ++j) {
	cmpl	%eax, -152(%rbp)	# _28, j
	jl	.L15	#,
# eval/problem20//code.c:28:     for (i = 0; i < 10; ++i) {
	addl	$1, -156(%rbp)	#, i
.L11:
# eval/problem20//code.c:28:     for (i = 0; i < 10; ++i) {
	cmpl	$9, -156(%rbp)	#, i
	jle	.L16	#,
# eval/problem20//code.c:37:     if (index > 0) {
	cmpl	$0, -160(%rbp)	#, index
	jle	.L17	#,
# eval/problem20//code.c:38:         out[index - 1] = '\0'; 
	movl	-160(%rbp), %eax	# index, tmp157
	subl	$1, %eax	#, _29
# eval/problem20//code.c:38:         out[index - 1] = '\0'; 
	cltq
	leaq	out.0(%rip), %rdx	#, tmp159
	movb	$0, (%rax,%rdx)	#, out[_29]
	jmp	.L18	#
.L17:
# eval/problem20//code.c:40:         out[0] = '\0';
	movb	$0, out.0(%rip)	#, out[0]
.L18:
# eval/problem20//code.c:43:     return out;
	leaq	out.0(%rip), %rax	#, _72
# eval/problem20//code.c:44: }
	movq	-8(%rbp), %rdx	# D.2575, tmp162
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp162
	je	.L20	#,
	call	__stack_chk_fail@PLT	#
.L20:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.local	out.0
	.comm	out.0,1000,32
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
