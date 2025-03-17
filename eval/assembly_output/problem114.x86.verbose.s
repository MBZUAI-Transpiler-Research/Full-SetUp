	.file	"problem114.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

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
# problem114.c:6:     char **out = malloc(size * sizeof(char *));
	movl	-60(%rbp), %eax	# size, tmp125
	cltq
	salq	$3, %rax	#, _2
	movq	%rax, %rdi	# _2,
	call	malloc@PLT	#
	movq	%rax, -24(%rbp)	# tmp126, out
# problem114.c:7:     for (int i = 0; i < size; i++) {
	movl	$0, -36(%rbp)	#, i
# problem114.c:7:     for (int i = 0; i < size; i++) {
	jmp	.L2	#
.L6:
# problem114.c:8:         int sum = 0;
	movl	$0, -32(%rbp)	#, sum
# problem114.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	movl	$0, -28(%rbp)	#, j
# problem114.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	jmp	.L3	#
.L5:
# problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	movl	-36(%rbp), %eax	# i, tmp127
	cltq
	leaq	0(,%rax,8), %rdx	#, _4
	movq	-56(%rbp), %rax	# lst, tmp128
	addq	%rdx, %rax	# _4, _5
	movq	(%rax), %rdx	# *_5, _6
# problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	movl	-28(%rbp), %eax	# j, tmp129
	cltq
	addq	%rdx, %rax	# _6, _8
	movzbl	(%rax), %eax	# *_8, _9
# problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	cmpb	$47, %al	#, _9
	jle	.L4	#,
# problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	movl	-36(%rbp), %eax	# i, tmp130
	cltq
	leaq	0(,%rax,8), %rdx	#, _11
	movq	-56(%rbp), %rax	# lst, tmp131
	addq	%rdx, %rax	# _11, _12
	movq	(%rax), %rdx	# *_12, _13
# problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	movl	-28(%rbp), %eax	# j, tmp132
	cltq
	addq	%rdx, %rax	# _13, _15
	movzbl	(%rax), %eax	# *_15, _16
# problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	cmpb	$57, %al	#, _16
	jg	.L4	#,
# problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	movl	-36(%rbp), %eax	# i, tmp133
	cltq
	leaq	0(,%rax,8), %rdx	#, _18
	movq	-56(%rbp), %rax	# lst, tmp134
	addq	%rdx, %rax	# _18, _19
	movq	(%rax), %rdx	# *_19, _20
# problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	movl	-28(%rbp), %eax	# j, tmp135
	cltq
	addq	%rdx, %rax	# _20, _22
	movzbl	(%rax), %eax	# *_22, _23
	movsbl	%al, %eax	# _23, _24
# problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	leal	-48(%rax), %edx	#, _25
# problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	movl	%edx, %eax	# _25, tmp136
	sarl	$31, %eax	#, tmp136
	shrl	$31, %eax	#, tmp137
	addl	%eax, %edx	# tmp137, tmp138
	andl	$1, %edx	#, tmp139
	subl	%eax, %edx	# tmp137, tmp140
	movl	%edx, %eax	# tmp140, _26
# problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	cmpl	$1, %eax	#, _26
	jne	.L4	#,
# problem114.c:11:                 sum += 1;
	addl	$1, -32(%rbp)	#, sum
.L4:
# problem114.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	addl	$1, -28(%rbp)	#, j
.L3:
# problem114.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	movl	-36(%rbp), %eax	# i, tmp141
	cltq
	leaq	0(,%rax,8), %rdx	#, _28
	movq	-56(%rbp), %rax	# lst, tmp142
	addq	%rdx, %rax	# _28, _29
	movq	(%rax), %rdx	# *_29, _30
# problem114.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	movl	-28(%rbp), %eax	# j, tmp143
	cltq
	addq	%rdx, %rax	# _30, _32
	movzbl	(%rax), %eax	# *_32, _33
# problem114.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	testb	%al, %al	# _33
	jne	.L5	#,
# problem114.c:13:         out[i] = malloc(100); // Assuming the string will not be longer than 99 characters.
	movl	-36(%rbp), %eax	# i, tmp144
	cltq
	leaq	0(,%rax,8), %rdx	#, _35
	movq	-24(%rbp), %rax	# out, tmp145
	leaq	(%rdx,%rax), %rbx	#, _36
# problem114.c:13:         out[i] = malloc(100); // Assuming the string will not be longer than 99 characters.
	movl	$100, %edi	#,
	call	malloc@PLT	#
# problem114.c:13:         out[i] = malloc(100); // Assuming the string will not be longer than 99 characters.
	movq	%rax, (%rbx)	# _37, *_36
# problem114.c:14:         sprintf(out[i], "the number of odd elements %d in the string %d of the %d input.", sum, sum, sum);
	movl	-36(%rbp), %eax	# i, tmp147
	cltq
	leaq	0(,%rax,8), %rdx	#, _39
	movq	-24(%rbp), %rax	# out, tmp148
	addq	%rdx, %rax	# _39, _40
# problem114.c:14:         sprintf(out[i], "the number of odd elements %d in the string %d of the %d input.", sum, sum, sum);
	movq	(%rax), %rax	# *_40, _41
	movl	-32(%rbp), %esi	# sum, tmp149
	movl	-32(%rbp), %ecx	# sum, tmp150
	movl	-32(%rbp), %edx	# sum, tmp151
	movl	%esi, %r8d	# tmp149,
	leaq	.LC0(%rip), %rsi	#, tmp152
	movq	%rax, %rdi	# _41,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# problem114.c:7:     for (int i = 0; i < size; i++) {
	addl	$1, -36(%rbp)	#, i
.L2:
# problem114.c:7:     for (int i = 0; i < size; i++) {
	movl	-36(%rbp), %eax	# i, tmp153
	cmpl	-60(%rbp), %eax	# size, tmp153
	jl	.L6	#,
# problem114.c:16:     return out;
	movq	-24(%rbp), %rax	# out, _52
# problem114.c:17: }
	movq	-8(%rbp), %rbx	#,
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
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# b, b
	movl	%edx, -36(%rbp)	# size, size
# problem114.c:26:     for (int i = 0; i < size; i++) {
	movl	$0, -4(%rbp)	#, i
# problem114.c:26:     for (int i = 0; i < size; i++) {
	jmp	.L9	#
.L12:
# problem114.c:27:         if (strcmp(a[i], b[i]) != 0) {
	movl	-4(%rbp), %eax	# i, tmp93
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-32(%rbp), %rax	# b, tmp94
	addq	%rdx, %rax	# _2, _3
# problem114.c:27:         if (strcmp(a[i], b[i]) != 0) {
	movq	(%rax), %rdx	# *_3, _4
# problem114.c:27:         if (strcmp(a[i], b[i]) != 0) {
	movl	-4(%rbp), %eax	# i, tmp95
	cltq
	leaq	0(,%rax,8), %rcx	#, _6
	movq	-24(%rbp), %rax	# a, tmp96
	addq	%rcx, %rax	# _6, _7
# problem114.c:27:         if (strcmp(a[i], b[i]) != 0) {
	movq	(%rax), %rax	# *_7, _8
	movq	%rdx, %rsi	# _4,
	movq	%rax, %rdi	# _8,
	call	strcmp@PLT	#
# problem114.c:27:         if (strcmp(a[i], b[i]) != 0) {
	testl	%eax, %eax	# _9
	je	.L10	#,
# problem114.c:28:             return 0;
	movl	$0, %eax	#, _11
	jmp	.L11	#
.L10:
# problem114.c:26:     for (int i = 0; i < size; i++) {
	addl	$1, -4(%rbp)	#, i
.L9:
# problem114.c:26:     for (int i = 0; i < size; i++) {
	movl	-4(%rbp), %eax	# i, tmp97
	cmpl	-36(%rbp), %eax	# size, tmp97
	jl	.L12	#,
# problem114.c:31:     return 1;
	movl	$1, %eax	#, _11
.L11:
# problem114.c:32: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC1:
	.string	"1234567"
	.align 8
.LC2:
	.string	"the number of odd elements 4 in the string 4 of the 4 input."
.LC3:
	.string	"problem114.c"
.LC4:
	.string	"issame(result1, expected1, 1)"
.LC5:
	.string	"3"
.LC6:
	.string	"11111111"
	.align 8
.LC7:
	.string	"the number of odd elements 1 in the string 1 of the 1 input."
	.align 8
.LC8:
	.string	"the number of odd elements 8 in the string 8 of the 8 input."
.LC9:
	.string	"issame(result2, expected2, 2)"
.LC10:
	.string	"271"
.LC11:
	.string	"137"
.LC12:
	.string	"314"
	.align 8
.LC13:
	.string	"the number of odd elements 2 in the string 2 of the 2 input."
	.align 8
.LC14:
	.string	"the number of odd elements 3 in the string 3 of the 3 input."
.LC15:
	.string	"issame(result3, expected3, 3)"
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
# problem114.c:34: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp142
	movq	%rax, -8(%rbp)	# tmp142, D.4012
	xorl	%eax, %eax	# tmp142
# problem114.c:35:     char *input1[] = {"1234567"};
	leaq	.LC1(%rip), %rax	#, tmp99
	movq	%rax, -112(%rbp)	# tmp99, input1[0]
# problem114.c:36:     char *expected1[] = {"the number of odd elements 4 in the string 4 of the 4 input."};
	leaq	.LC2(%rip), %rax	#, tmp100
	movq	%rax, -104(%rbp)	# tmp100, expected1[0]
# problem114.c:37:     char **result1 = func0(input1, 1);
	leaq	-112(%rbp), %rax	#, tmp101
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp101,
	call	func0	#
	movq	%rax, -136(%rbp)	# tmp102, result1
# problem114.c:38:     assert(issame(result1, expected1, 1));
	leaq	-104(%rbp), %rcx	#, tmp103
	movq	-136(%rbp), %rax	# result1, tmp104
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp103,
	movq	%rax, %rdi	# tmp104,
	call	issame	#
# problem114.c:38:     assert(issame(result1, expected1, 1));
	testl	%eax, %eax	# _1
	jne	.L14	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp105
	movq	%rax, %rcx	# tmp105,
	movl	$38, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp106
	movq	%rax, %rsi	# tmp106,
	leaq	.LC4(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	__assert_fail@PLT	#
.L14:
# problem114.c:40:     char *input2[] = {"3", "11111111"};
	leaq	.LC5(%rip), %rax	#, tmp108
	movq	%rax, -96(%rbp)	# tmp108, input2[0]
	leaq	.LC6(%rip), %rax	#, tmp109
	movq	%rax, -88(%rbp)	# tmp109, input2[1]
# problem114.c:41:     char *expected2[] = {
	leaq	.LC7(%rip), %rax	#, tmp110
	movq	%rax, -80(%rbp)	# tmp110, expected2[0]
	leaq	.LC8(%rip), %rax	#, tmp111
	movq	%rax, -72(%rbp)	# tmp111, expected2[1]
# problem114.c:45:     char **result2 = func0(input2, 2);
	leaq	-96(%rbp), %rax	#, tmp112
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp112,
	call	func0	#
	movq	%rax, -128(%rbp)	# tmp113, result2
# problem114.c:46:     assert(issame(result2, expected2, 2));
	leaq	-80(%rbp), %rcx	#, tmp114
	movq	-128(%rbp), %rax	# result2, tmp115
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp114,
	movq	%rax, %rdi	# tmp115,
	call	issame	#
# problem114.c:46:     assert(issame(result2, expected2, 2));
	testl	%eax, %eax	# _2
	jne	.L15	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp116
	movq	%rax, %rcx	# tmp116,
	movl	$46, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp117
	movq	%rax, %rsi	# tmp117,
	leaq	.LC9(%rip), %rax	#, tmp118
	movq	%rax, %rdi	# tmp118,
	call	__assert_fail@PLT	#
.L15:
# problem114.c:48:     char *input3[] = {"271", "137", "314"};
	leaq	.LC10(%rip), %rax	#, tmp119
	movq	%rax, -64(%rbp)	# tmp119, input3[0]
	leaq	.LC11(%rip), %rax	#, tmp120
	movq	%rax, -56(%rbp)	# tmp120, input3[1]
	leaq	.LC12(%rip), %rax	#, tmp121
	movq	%rax, -48(%rbp)	# tmp121, input3[2]
# problem114.c:49:     char *expected3[] = {
	leaq	.LC13(%rip), %rax	#, tmp122
	movq	%rax, -32(%rbp)	# tmp122, expected3[0]
	leaq	.LC14(%rip), %rax	#, tmp123
	movq	%rax, -24(%rbp)	# tmp123, expected3[1]
	leaq	.LC13(%rip), %rax	#, tmp124
	movq	%rax, -16(%rbp)	# tmp124, expected3[2]
# problem114.c:54:     char **result3 = func0(input3, 3);
	leaq	-64(%rbp), %rax	#, tmp125
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp125,
	call	func0	#
	movq	%rax, -120(%rbp)	# tmp126, result3
# problem114.c:55:     assert(issame(result3, expected3, 3));
	leaq	-32(%rbp), %rcx	#, tmp127
	movq	-120(%rbp), %rax	# result3, tmp128
	movl	$3, %edx	#,
	movq	%rcx, %rsi	# tmp127,
	movq	%rax, %rdi	# tmp128,
	call	issame	#
# problem114.c:55:     assert(issame(result3, expected3, 3));
	testl	%eax, %eax	# _3
	jne	.L16	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp129
	movq	%rax, %rcx	# tmp129,
	movl	$55, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp130
	movq	%rax, %rsi	# tmp130,
	leaq	.LC15(%rip), %rax	#, tmp131
	movq	%rax, %rdi	# tmp131,
	call	__assert_fail@PLT	#
.L16:
# problem114.c:58:     for (int i = 0; i < 1; i++) free(result1[i]);
	movl	$0, -148(%rbp)	#, i
# problem114.c:58:     for (int i = 0; i < 1; i++) free(result1[i]);
	jmp	.L17	#
.L18:
# problem114.c:58:     for (int i = 0; i < 1; i++) free(result1[i]);
	movl	-148(%rbp), %eax	# i, tmp132
	cltq
	leaq	0(,%rax,8), %rdx	#, _5
	movq	-136(%rbp), %rax	# result1, tmp133
	addq	%rdx, %rax	# _5, _6
# problem114.c:58:     for (int i = 0; i < 1; i++) free(result1[i]);
	movq	(%rax), %rax	# *_6, _7
	movq	%rax, %rdi	# _7,
	call	free@PLT	#
# problem114.c:58:     for (int i = 0; i < 1; i++) free(result1[i]);
	addl	$1, -148(%rbp)	#, i
.L17:
# problem114.c:58:     for (int i = 0; i < 1; i++) free(result1[i]);
	cmpl	$0, -148(%rbp)	#, i
	jle	.L18	#,
# problem114.c:59:     free(result1);
	movq	-136(%rbp), %rax	# result1, tmp134
	movq	%rax, %rdi	# tmp134,
	call	free@PLT	#
# problem114.c:60:     for (int i = 0; i < 2; i++) free(result2[i]);
	movl	$0, -144(%rbp)	#, i
# problem114.c:60:     for (int i = 0; i < 2; i++) free(result2[i]);
	jmp	.L19	#
.L20:
# problem114.c:60:     for (int i = 0; i < 2; i++) free(result2[i]);
	movl	-144(%rbp), %eax	# i, tmp135
	cltq
	leaq	0(,%rax,8), %rdx	#, _9
	movq	-128(%rbp), %rax	# result2, tmp136
	addq	%rdx, %rax	# _9, _10
# problem114.c:60:     for (int i = 0; i < 2; i++) free(result2[i]);
	movq	(%rax), %rax	# *_10, _11
	movq	%rax, %rdi	# _11,
	call	free@PLT	#
# problem114.c:60:     for (int i = 0; i < 2; i++) free(result2[i]);
	addl	$1, -144(%rbp)	#, i
.L19:
# problem114.c:60:     for (int i = 0; i < 2; i++) free(result2[i]);
	cmpl	$1, -144(%rbp)	#, i
	jle	.L20	#,
# problem114.c:61:     free(result2);
	movq	-128(%rbp), %rax	# result2, tmp137
	movq	%rax, %rdi	# tmp137,
	call	free@PLT	#
# problem114.c:62:     for (int i = 0; i < 3; i++) free(result3[i]);
	movl	$0, -140(%rbp)	#, i
# problem114.c:62:     for (int i = 0; i < 3; i++) free(result3[i]);
	jmp	.L21	#
.L22:
# problem114.c:62:     for (int i = 0; i < 3; i++) free(result3[i]);
	movl	-140(%rbp), %eax	# i, tmp138
	cltq
	leaq	0(,%rax,8), %rdx	#, _13
	movq	-120(%rbp), %rax	# result3, tmp139
	addq	%rdx, %rax	# _13, _14
# problem114.c:62:     for (int i = 0; i < 3; i++) free(result3[i]);
	movq	(%rax), %rax	# *_14, _15
	movq	%rax, %rdi	# _15,
	call	free@PLT	#
# problem114.c:62:     for (int i = 0; i < 3; i++) free(result3[i]);
	addl	$1, -140(%rbp)	#, i
.L21:
# problem114.c:62:     for (int i = 0; i < 3; i++) free(result3[i]);
	cmpl	$2, -140(%rbp)	#, i
	jle	.L22	#,
# problem114.c:63:     free(result3);
	movq	-120(%rbp), %rax	# result3, tmp140
	movq	%rax, %rdi	# tmp140,
	call	free@PLT	#
# problem114.c:65:     return 0;
	movl	$0, %eax	#, _53
# problem114.c:66: }
	movq	-8(%rbp), %rdx	# D.4012, tmp143
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp143
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
