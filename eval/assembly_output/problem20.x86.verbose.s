	.file	"problem20.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

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
# problem20.c:4: const char* func0(const char* numbers) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp162
	movq	%rax, -8(%rbp)	# tmp162, D.3471
	xorl	%eax, %eax	# tmp162
# problem20.c:5:     int count[10] = {0};
	pxor	%xmm0, %xmm0	# tmp113
	movaps	%xmm0, -144(%rbp)	# tmp113, count
	movaps	%xmm0, -128(%rbp)	# tmp113, count
	movq	%xmm0, -112(%rbp)	# tmp113, count
# problem20.c:6:     const char* numto[10] = {"zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"};
	leaq	.LC0(%rip), %rax	#, tmp114
	movq	%rax, -96(%rbp)	# tmp114, numto[0]
	leaq	.LC1(%rip), %rax	#, tmp115
	movq	%rax, -88(%rbp)	# tmp115, numto[1]
	leaq	.LC2(%rip), %rax	#, tmp116
	movq	%rax, -80(%rbp)	# tmp116, numto[2]
	leaq	.LC3(%rip), %rax	#, tmp117
	movq	%rax, -72(%rbp)	# tmp117, numto[3]
	leaq	.LC4(%rip), %rax	#, tmp118
	movq	%rax, -64(%rbp)	# tmp118, numto[4]
	leaq	.LC5(%rip), %rax	#, tmp119
	movq	%rax, -56(%rbp)	# tmp119, numto[5]
	leaq	.LC6(%rip), %rax	#, tmp120
	movq	%rax, -48(%rbp)	# tmp120, numto[6]
	leaq	.LC7(%rip), %rax	#, tmp121
	movq	%rax, -40(%rbp)	# tmp121, numto[7]
	leaq	.LC8(%rip), %rax	#, tmp122
	movq	%rax, -32(%rbp)	# tmp122, numto[8]
	leaq	.LC9(%rip), %rax	#, tmp123
	movq	%rax, -24(%rbp)	# tmp123, numto[9]
# problem20.c:11:     index = 0;
	movl	$0, -160(%rbp)	#, index
# problem20.c:12:     if (*numbers) {
	movq	-168(%rbp), %rax	# numbers, tmp124
	movzbl	(%rax), %eax	# *numbers_60(D), _1
# problem20.c:12:     if (*numbers) {
	testb	%al, %al	# _1
	je	.L2	#,
.L10:
# problem20.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	movl	$0, -156(%rbp)	#, i
# problem20.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	jmp	.L3	#
.L5:
# problem20.c:15:                 current[i] = numbers[i];
	movl	-156(%rbp), %eax	# i, tmp125
	movslq	%eax, %rdx	# tmp125, _2
	movq	-168(%rbp), %rax	# numbers, tmp126
	addq	%rdx, %rax	# _2, _3
	movzbl	(%rax), %edx	# *_3, _4
# problem20.c:15:                 current[i] = numbers[i];
	movl	-156(%rbp), %eax	# i, tmp128
	cltq
	movb	%dl, -14(%rbp,%rax)	# _4, current[i_34]
# problem20.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	addl	$1, -156(%rbp)	#, i
.L3:
# problem20.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	movl	-156(%rbp), %eax	# i, tmp129
	movslq	%eax, %rdx	# tmp129, _5
	movq	-168(%rbp), %rax	# numbers, tmp130
	addq	%rdx, %rax	# _5, _6
	movzbl	(%rax), %eax	# *_6, _7
# problem20.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	cmpb	$32, %al	#, _7
	je	.L4	#,
# problem20.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	movl	-156(%rbp), %eax	# i, tmp131
	movslq	%eax, %rdx	# tmp131, _8
	movq	-168(%rbp), %rax	# numbers, tmp132
	addq	%rdx, %rax	# _8, _9
	movzbl	(%rax), %eax	# *_9, _10
# problem20.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	testb	%al, %al	# _10
	jne	.L5	#,
.L4:
# problem20.c:17:             current[i] = '\0';
	movl	-156(%rbp), %eax	# i, tmp134
	cltq
	movb	$0, -14(%rbp,%rax)	#, current[i_34]
# problem20.c:18:             for (j = 0; j < 10; ++j) {
	movl	$0, -152(%rbp)	#, j
# problem20.c:18:             for (j = 0; j < 10; ++j) {
	jmp	.L6	#
.L9:
# problem20.c:19:                 if (strcmp(current, numto[j]) == 0) {
	movl	-152(%rbp), %eax	# j, tmp136
	cltq
	movq	-96(%rbp,%rax,8), %rdx	# numto[j_36], _11
	leaq	-14(%rbp), %rax	#, tmp137
	movq	%rdx, %rsi	# _11,
	movq	%rax, %rdi	# tmp137,
	call	strcmp@PLT	#
# problem20.c:19:                 if (strcmp(current, numto[j]) == 0) {
	testl	%eax, %eax	# _12
	jne	.L7	#,
# problem20.c:20:                     count[j]++;
	movl	-152(%rbp), %eax	# j, tmp139
	cltq
	movl	-144(%rbp,%rax,4), %eax	# count[j_36], _13
# problem20.c:20:                     count[j]++;
	leal	1(%rax), %edx	#, _14
	movl	-152(%rbp), %eax	# j, tmp141
	cltq
	movl	%edx, -144(%rbp,%rax,4)	# _14, count[j_36]
# problem20.c:21:                     break;
	jmp	.L8	#
.L7:
# problem20.c:18:             for (j = 0; j < 10; ++j) {
	addl	$1, -152(%rbp)	#, j
.L6:
# problem20.c:18:             for (j = 0; j < 10; ++j) {
	cmpl	$9, -152(%rbp)	#, j
	jle	.L9	#,
.L8:
# problem20.c:24:             numbers += i + 1;
	movl	-156(%rbp), %eax	# i, tmp142
	cltq
	addq	$1, %rax	#, _16
	addq	%rax, -168(%rbp)	# _16, numbers
# problem20.c:25:         } while (numbers[-1]);
	movq	-168(%rbp), %rax	# numbers, tmp143
	subq	$1, %rax	#, _17
	movzbl	(%rax), %eax	# *_17, _18
# problem20.c:25:         } while (numbers[-1]);
	testb	%al, %al	# _18
	jne	.L10	#,
.L2:
# problem20.c:28:     for (i = 0; i < 10; ++i) {
	movl	$0, -156(%rbp)	#, i
# problem20.c:28:     for (i = 0; i < 10; ++i) {
	jmp	.L11	#
.L16:
# problem20.c:29:         for (j = 0; j < count[i]; ++j) {
	movl	$0, -152(%rbp)	#, j
# problem20.c:29:         for (j = 0; j < count[i]; ++j) {
	jmp	.L12	#
.L15:
# problem20.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	movl	$0, -148(%rbp)	#, k
# problem20.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	jmp	.L13	#
.L14:
# problem20.c:31:                 out[index] = numto[i][k];
	movl	-156(%rbp), %eax	# i, tmp145
	cltq
	movq	-96(%rbp,%rax,8), %rdx	# numto[i_35], _19
# problem20.c:31:                 out[index] = numto[i][k];
	movl	-148(%rbp), %eax	# k, tmp146
	cltq
	addq	%rdx, %rax	# _19, _21
	movzbl	(%rax), %edx	# *_21, _22
# problem20.c:31:                 out[index] = numto[i][k];
	movl	-160(%rbp), %eax	# index, tmp148
	cltq
	leaq	out.1(%rip), %rcx	#, tmp149
	movb	%dl, (%rax,%rcx)	# _22, out[index_31]
# problem20.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	addl	$1, -148(%rbp)	#, k
# problem20.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	addl	$1, -160(%rbp)	#, index
.L13:
# problem20.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	movl	-156(%rbp), %eax	# i, tmp151
	cltq
	movq	-96(%rbp,%rax,8), %rdx	# numto[i_35], _23
# problem20.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	movl	-148(%rbp), %eax	# k, tmp152
	cltq
	addq	%rdx, %rax	# _23, _25
	movzbl	(%rax), %eax	# *_25, _26
# problem20.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	testb	%al, %al	# _26
	jne	.L14	#,
# problem20.c:33:             out[index++] = ' '; 
	movl	-160(%rbp), %eax	# index, index.0_27
	leal	1(%rax), %edx	#, tmp153
	movl	%edx, -160(%rbp)	# tmp153, index
# problem20.c:33:             out[index++] = ' '; 
	cltq
	leaq	out.1(%rip), %rdx	#, tmp155
	movb	$32, (%rax,%rdx)	#, out[index.0_27]
# problem20.c:29:         for (j = 0; j < count[i]; ++j) {
	addl	$1, -152(%rbp)	#, j
.L12:
# problem20.c:29:         for (j = 0; j < count[i]; ++j) {
	movl	-156(%rbp), %eax	# i, tmp157
	cltq
	movl	-144(%rbp,%rax,4), %eax	# count[i_35], _28
# problem20.c:29:         for (j = 0; j < count[i]; ++j) {
	cmpl	%eax, -152(%rbp)	# _28, j
	jl	.L15	#,
# problem20.c:28:     for (i = 0; i < 10; ++i) {
	addl	$1, -156(%rbp)	#, i
.L11:
# problem20.c:28:     for (i = 0; i < 10; ++i) {
	cmpl	$9, -156(%rbp)	#, i
	jle	.L16	#,
# problem20.c:37:     if (index > 0) {
	cmpl	$0, -160(%rbp)	#, index
	jle	.L17	#,
# problem20.c:38:         out[index - 1] = '\0'; 
	movl	-160(%rbp), %eax	# index, tmp158
	subl	$1, %eax	#, _29
# problem20.c:38:         out[index - 1] = '\0'; 
	cltq
	leaq	out.1(%rip), %rdx	#, tmp160
	movb	$0, (%rax,%rdx)	#, out[_29]
	jmp	.L18	#
.L17:
# problem20.c:40:         out[0] = '\0';
	movb	$0, out.1(%rip)	#, out[0]
.L18:
# problem20.c:43:     return out;
	leaq	out.1(%rip), %rax	#, _72
# problem20.c:44: }
	movq	-8(%rbp), %rdx	# D.3471, tmp163
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp163
	je	.L20	#,
	call	__stack_chk_fail@PLT	#
.L20:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC10:
	.string	""
.LC11:
	.string	"problem20.c"
.LC12:
	.string	"strcmp(func0(\"\"), \"\") == 0"
	.align 8
.LC13:
	.string	"strcmp(func0(\"three\"), \"three\") == 0"
.LC14:
	.string	"three five nine"
	.align 8
.LC15:
	.string	"strcmp(func0(\"three five nine\"), \"three five nine\") == 0"
	.align 8
.LC16:
	.string	"five zero four seven nine eight"
	.align 8
.LC17:
	.string	"zero four five seven eight nine"
	.align 8
.LC18:
	.string	"strcmp(func0(\"five zero four seven nine eight\"), \"zero four five seven eight nine\") == 0"
	.align 8
.LC19:
	.string	"six five four three two one zero"
	.align 8
.LC20:
	.string	"zero one two three four five six"
	.align 8
.LC21:
	.string	"strcmp(func0(\"six five four three two one zero\"), \"zero one two three four five six\") == 0"
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
# problem20.c:52:     assert(strcmp(func0(""), "") == 0);
	leaq	.LC10(%rip), %rax	#, tmp95
	movq	%rax, %rdi	# tmp95,
	call	func0	#
# problem20.c:52:     assert(strcmp(func0(""), "") == 0);
	movzbl	(%rax), %eax	# MEM[(const unsigned char * {ref-all})_1], _13
	movzbl	%al, %eax	# _13, _2
	testl	%eax, %eax	# _2
	je	.L22	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp96
	movq	%rax, %rcx	# tmp96,
	movl	$52, %edx	#,
	leaq	.LC11(%rip), %rax	#, tmp97
	movq	%rax, %rsi	# tmp97,
	leaq	.LC12(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	__assert_fail@PLT	#
.L22:
# problem20.c:53:     assert(strcmp(func0("three"), "three") == 0);
	leaq	.LC3(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	func0	#
	movq	%rax, %rdx	#, _3
# problem20.c:53:     assert(strcmp(func0("three"), "three") == 0);
	leaq	.LC3(%rip), %rax	#, tmp100
	movq	%rax, %rsi	# tmp100,
	movq	%rdx, %rdi	# _3,
	call	strcmp@PLT	#
# problem20.c:53:     assert(strcmp(func0("three"), "three") == 0);
	testl	%eax, %eax	# _4
	je	.L23	#,
# problem20.c:53:     assert(strcmp(func0("three"), "three") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp101
	movq	%rax, %rcx	# tmp101,
	movl	$53, %edx	#,
	leaq	.LC11(%rip), %rax	#, tmp102
	movq	%rax, %rsi	# tmp102,
	leaq	.LC13(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	__assert_fail@PLT	#
.L23:
# problem20.c:54:     assert(strcmp(func0("three five nine"), "three five nine") == 0);
	leaq	.LC14(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	call	func0	#
	movq	%rax, %rdx	#, _5
# problem20.c:54:     assert(strcmp(func0("three five nine"), "three five nine") == 0);
	leaq	.LC14(%rip), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	movq	%rdx, %rdi	# _5,
	call	strcmp@PLT	#
# problem20.c:54:     assert(strcmp(func0("three five nine"), "three five nine") == 0);
	testl	%eax, %eax	# _6
	je	.L24	#,
# problem20.c:54:     assert(strcmp(func0("three five nine"), "three five nine") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp106
	movq	%rax, %rcx	# tmp106,
	movl	$54, %edx	#,
	leaq	.LC11(%rip), %rax	#, tmp107
	movq	%rax, %rsi	# tmp107,
	leaq	.LC15(%rip), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	call	__assert_fail@PLT	#
.L24:
# problem20.c:55:     assert(strcmp(func0("five zero four seven nine eight"), "zero four five seven eight nine") == 0);
	leaq	.LC16(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	func0	#
	movq	%rax, %rdx	#, _7
# problem20.c:55:     assert(strcmp(func0("five zero four seven nine eight"), "zero four five seven eight nine") == 0);
	leaq	.LC17(%rip), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	movq	%rdx, %rdi	# _7,
	call	strcmp@PLT	#
# problem20.c:55:     assert(strcmp(func0("five zero four seven nine eight"), "zero four five seven eight nine") == 0);
	testl	%eax, %eax	# _8
	je	.L25	#,
# problem20.c:55:     assert(strcmp(func0("five zero four seven nine eight"), "zero four five seven eight nine") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp111
	movq	%rax, %rcx	# tmp111,
	movl	$55, %edx	#,
	leaq	.LC11(%rip), %rax	#, tmp112
	movq	%rax, %rsi	# tmp112,
	leaq	.LC18(%rip), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	call	__assert_fail@PLT	#
.L25:
# problem20.c:56:     assert(strcmp(func0("six five four three two one zero"), "zero one two three four five six") == 0);
	leaq	.LC19(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	func0	#
	movq	%rax, %rdx	#, _9
# problem20.c:56:     assert(strcmp(func0("six five four three two one zero"), "zero one two three four five six") == 0);
	leaq	.LC20(%rip), %rax	#, tmp115
	movq	%rax, %rsi	# tmp115,
	movq	%rdx, %rdi	# _9,
	call	strcmp@PLT	#
# problem20.c:56:     assert(strcmp(func0("six five four three two one zero"), "zero one two three four five six") == 0);
	testl	%eax, %eax	# _10
	je	.L26	#,
# problem20.c:56:     assert(strcmp(func0("six five four three two one zero"), "zero one two three four five six") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp116
	movq	%rax, %rcx	# tmp116,
	movl	$56, %edx	#,
	leaq	.LC11(%rip), %rax	#, tmp117
	movq	%rax, %rsi	# tmp117,
	leaq	.LC21(%rip), %rax	#, tmp118
	movq	%rax, %rdi	# tmp118,
	call	__assert_fail@PLT	#
.L26:
# problem20.c:58:     return 0;
	movl	$0, %eax	#, _23
# problem20.c:59: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.local	out.1
	.comm	out.1,1000,32
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
