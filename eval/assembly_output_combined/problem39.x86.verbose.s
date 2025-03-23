	.file	"problem39.c"
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
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# s, s
	movl	%esi, -44(%rbp)	# encode, encode
# problem39.c:4: void func0(char *s, int encode) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp130
	movq	%rax, -8(%rbp)	# tmp130, D.4089
	xorl	%eax, %eax	# tmp130
# problem39.c:5:     int l = strlen(s);
	movq	-40(%rbp), %rax	# s, tmp100
	movq	%rax, %rdi	# tmp100,
	call	strlen@PLT	#
# problem39.c:5:     int l = strlen(s);
	movl	%eax, -24(%rbp)	# _1, l
# problem39.c:6:     int num = (l + 2) / 3;
	movl	-24(%rbp), %eax	# l, tmp101
	addl	$2, %eax	#, _2
# problem39.c:6:     int num = (l + 2) / 3;
	movslq	%eax, %rdx	# _2, tmp102
	imulq	$1431655766, %rdx, %rdx	#, tmp102, tmp103
	movq	%rdx, %rcx	# tmp103, tmp103
	shrq	$32, %rcx	#, tmp103
	cltd
	movl	%ecx, %eax	# tmp104, tmp106
	subl	%edx, %eax	# tmp105, tmp106
	movl	%eax, -20(%rbp)	# tmp106, num
# problem39.c:9:     for (int i = 0; i < num; ++i) {
	movl	$0, -28(%rbp)	#, i
# problem39.c:9:     for (int i = 0; i < num; ++i) {
	jmp	.L2	#
.L7:
# problem39.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	movl	-28(%rbp), %eax	# i, tmp107
	leal	1(%rax), %edx	#, _3
	movl	%edx, %eax	# _3, tmp108
	addl	%eax, %eax	# tmp108
	addl	%edx, %eax	# _3, _4
# problem39.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	cmpl	%eax, -24(%rbp)	# _4, l
	jge	.L3	#,
# problem39.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	movl	-28(%rbp), %eax	# i, tmp109
	movl	%eax, %edx	# tmp109, tmp110
	sall	$2, %eax	#, tmp111
	subl	%eax, %edx	# tmp111, _5
# problem39.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	movl	-24(%rbp), %eax	# l, tmp112
	addl	%edx, %eax	# _5, iftmp.0_19
	jmp	.L4	#
.L3:
# problem39.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	movl	$3, %eax	#, iftmp.0_19
.L4:
# problem39.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	movl	%eax, -16(%rbp)	# iftmp.0_19, len
# problem39.c:11:         strncpy(x, s + i * 3, len);
	movl	-16(%rbp), %eax	# len, tmp113
	movslq	%eax, %rcx	# tmp113, _6
# problem39.c:11:         strncpy(x, s + i * 3, len);
	movl	-28(%rbp), %edx	# i, tmp114
	movl	%edx, %eax	# tmp114, tmp115
	addl	%eax, %eax	# tmp115
	addl	%edx, %eax	# tmp114, _7
	movslq	%eax, %rdx	# _7, _8
# problem39.c:11:         strncpy(x, s + i * 3, len);
	movq	-40(%rbp), %rax	# s, tmp116
	leaq	(%rdx,%rax), %rsi	#, _9
# problem39.c:11:         strncpy(x, s + i * 3, len);
	leaq	-12(%rbp), %rax	#, tmp117
	movq	%rcx, %rdx	# _6,
	movq	%rax, %rdi	# tmp117,
	call	strncpy@PLT	#
# problem39.c:12:         x[len] = '\0';
	movl	-16(%rbp), %eax	# len, tmp119
	cltq
	movb	$0, -12(%rbp,%rax)	#, x[len_30]
# problem39.c:14:         if (len == 3) {
	cmpl	$3, -16(%rbp)	#, len
	jne	.L5	#,
# problem39.c:15:             if (encode) {
	cmpl	$0, -44(%rbp)	#, encode
	je	.L6	#,
# problem39.c:16:                 char temp = x[2];
	movzbl	-10(%rbp), %eax	# x[2], tmp120
	movb	%al, -29(%rbp)	# tmp120, temp
# problem39.c:17:                 x[2] = x[1];
	movzbl	-11(%rbp), %eax	# x[1], _10
# problem39.c:17:                 x[2] = x[1];
	movb	%al, -10(%rbp)	# _10, x[2]
# problem39.c:18:                 x[1] = x[0];
	movzbl	-12(%rbp), %eax	# x[0], _11
# problem39.c:18:                 x[1] = x[0];
	movb	%al, -11(%rbp)	# _11, x[1]
# problem39.c:19:                 x[0] = temp;
	movzbl	-29(%rbp), %eax	# temp, tmp121
	movb	%al, -12(%rbp)	# tmp121, x[0]
	jmp	.L5	#
.L6:
# problem39.c:21:                 char temp = x[0];
	movzbl	-12(%rbp), %eax	# x[0], tmp122
	movb	%al, -30(%rbp)	# tmp122, temp
# problem39.c:22:                 x[0] = x[1];
	movzbl	-11(%rbp), %eax	# x[1], _12
# problem39.c:22:                 x[0] = x[1];
	movb	%al, -12(%rbp)	# _12, x[0]
# problem39.c:23:                 x[1] = x[2];
	movzbl	-10(%rbp), %eax	# x[2], _13
# problem39.c:23:                 x[1] = x[2];
	movb	%al, -11(%rbp)	# _13, x[1]
# problem39.c:24:                 x[2] = temp;
	movzbl	-30(%rbp), %eax	# temp, tmp123
	movb	%al, -10(%rbp)	# tmp123, x[2]
.L5:
# problem39.c:27:         strncpy(s + i * 3, x, len);
	movl	-16(%rbp), %eax	# len, tmp124
	movslq	%eax, %rcx	# tmp124, _14
# problem39.c:27:         strncpy(s + i * 3, x, len);
	movl	-28(%rbp), %edx	# i, tmp125
	movl	%edx, %eax	# tmp125, tmp126
	addl	%eax, %eax	# tmp126
	addl	%edx, %eax	# tmp125, _15
	movslq	%eax, %rdx	# _15, _16
# problem39.c:27:         strncpy(s + i * 3, x, len);
	movq	-40(%rbp), %rax	# s, tmp127
	leaq	(%rdx,%rax), %rdi	#, _17
	leaq	-12(%rbp), %rax	#, tmp128
	movq	%rcx, %rdx	# _14,
	movq	%rax, %rsi	# tmp128,
	call	strncpy@PLT	#
# problem39.c:9:     for (int i = 0; i < num; ++i) {
	addl	$1, -28(%rbp)	#, i
.L2:
# problem39.c:9:     for (int i = 0; i < num; ++i) {
	movl	-28(%rbp), %eax	# i, tmp129
	cmpl	-20(%rbp), %eax	# num, tmp129
	jl	.L7	#,
# problem39.c:29: }
	nop	
	movq	-8(%rbp), %rax	# D.4089, tmp131
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp131
	je	.L8	#,
	call	__stack_chk_fail@PLT	#
.L8:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem39.c"
.LC1:
	.string	"strcmp(decoded_str, str) == 0"
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
	subq	$112, %rsp	#,
# problem39.c:39: int main(){
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp124
	movq	%rax, -8(%rbp)	# tmp124, D.4091
	xorl	%eax, %eax	# tmp124
# problem39.c:40:     srand((unsigned int)time(NULL));
	movl	$0, %edi	#,
	call	time@PLT	#
# problem39.c:40:     srand((unsigned int)time(NULL));
	movl	%eax, %edi	# _2,
	call	srand@PLT	#
# problem39.c:43:     for (int i = 0; i < 100; i++) {
	movl	$0, -108(%rbp)	#, i
# problem39.c:43:     for (int i = 0; i < 100; i++) {
	jmp	.L10	#
.L14:
# problem39.c:44:         int l = 10 + rand() % 11;
	call	rand@PLT	#
	movl	%eax, %ecx	#, _3
# problem39.c:44:         int l = 10 + rand() % 11;
	movslq	%ecx, %rax	# _3, tmp94
	imulq	$780903145, %rax, %rax	#, tmp94, tmp95
	shrq	$32, %rax	#, tmp96
	movl	%eax, %edx	# tmp96, tmp97
	sarl	%edx	# tmp97
	movl	%ecx, %eax	# _3, tmp98
	sarl	$31, %eax	#, tmp98
	subl	%eax, %edx	# tmp98, _4
	movl	%edx, %eax	# _4, tmp99
	sall	$2, %eax	#, tmp99
	addl	%edx, %eax	# _4, tmp99
	addl	%eax, %eax	# tmp99
	addl	%edx, %eax	# _4, tmp99
	subl	%eax, %ecx	# tmp99, _3
	movl	%ecx, %edx	# _3, _4
# problem39.c:44:         int l = 10 + rand() % 11;
	leal	10(%rdx), %eax	#, tmp100
	movl	%eax, -100(%rbp)	# tmp100, l
# problem39.c:45:         for (int j = 0; j < l; j++) {
	movl	$0, -104(%rbp)	#, j
# problem39.c:45:         for (int j = 0; j < l; j++) {
	jmp	.L11	#
.L12:
# problem39.c:46:             str[j] = 'a' + rand() % 26;
	call	rand@PLT	#
# problem39.c:46:             str[j] = 'a' + rand() % 26;
	movslq	%eax, %rdx	# _5, tmp101
	imulq	$1321528399, %rdx, %rdx	#, tmp101, tmp102
	shrq	$32, %rdx	#, tmp103
	sarl	$3, %edx	#, tmp104
	movl	%eax, %ecx	# _5, tmp105
	sarl	$31, %ecx	#, tmp105
	subl	%ecx, %edx	# tmp105, _6
	imull	$26, %edx, %ecx	#, _6, tmp106
	subl	%ecx, %eax	# tmp106, _5
	movl	%eax, %edx	# _5, _6
# problem39.c:46:             str[j] = 'a' + rand() % 26;
	movl	%edx, %eax	# _6, _7
	addl	$97, %eax	#, _8
	movl	%eax, %edx	# _8, _9
# problem39.c:46:             str[j] = 'a' + rand() % 26;
	movl	-104(%rbp), %eax	# j, tmp108
	cltq
	movb	%dl, -96(%rbp,%rax)	# _9, str[j_12]
# problem39.c:45:         for (int j = 0; j < l; j++) {
	addl	$1, -104(%rbp)	#, j
.L11:
# problem39.c:45:         for (int j = 0; j < l; j++) {
	movl	-104(%rbp), %eax	# j, tmp109
	cmpl	-100(%rbp), %eax	# l, tmp109
	jl	.L12	#,
# problem39.c:48:         str[l] = '\0';
	movl	-100(%rbp), %eax	# l, tmp111
	cltq
	movb	$0, -96(%rbp,%rax)	#, str[l_24]
# problem39.c:49:         strcpy(temp, str);
	leaq	-96(%rbp), %rdx	#, tmp112
	leaq	-64(%rbp), %rax	#, tmp113
	movq	%rdx, %rsi	# tmp112,
	movq	%rax, %rdi	# tmp113,
	call	strcpy@PLT	#
# problem39.c:51:         func0(temp, 1); // Encode
	leaq	-64(%rbp), %rax	#, tmp114
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp114,
	call	func0	#
# problem39.c:52:         strcpy(decoded_str, temp);
	leaq	-64(%rbp), %rdx	#, tmp115
	leaq	-32(%rbp), %rax	#, tmp116
	movq	%rdx, %rsi	# tmp115,
	movq	%rax, %rdi	# tmp116,
	call	strcpy@PLT	#
# problem39.c:53:         func0(decoded_str, 0); // Decode
	leaq	-32(%rbp), %rax	#, tmp117
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp117,
	call	func0	#
# problem39.c:55:         assert(strcmp(decoded_str, str) == 0);
	leaq	-96(%rbp), %rdx	#, tmp118
	leaq	-32(%rbp), %rax	#, tmp119
	movq	%rdx, %rsi	# tmp118,
	movq	%rax, %rdi	# tmp119,
	call	strcmp@PLT	#
# problem39.c:55:         assert(strcmp(decoded_str, str) == 0);
	testl	%eax, %eax	# _10
	je	.L13	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp120
	movq	%rax, %rcx	# tmp120,
	movl	$55, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp121
	movq	%rax, %rsi	# tmp121,
	leaq	.LC1(%rip), %rax	#, tmp122
	movq	%rax, %rdi	# tmp122,
	call	__assert_fail@PLT	#
.L13:
# problem39.c:43:     for (int i = 0; i < 100; i++) {
	addl	$1, -108(%rbp)	#, i
.L10:
# problem39.c:43:     for (int i = 0; i < 100; i++) {
	cmpl	$99, -108(%rbp)	#, i
	jle	.L14	#,
# problem39.c:58:     return 0;
	movl	$0, %eax	#, _19
# problem39.c:59: }
	movq	-8(%rbp), %rdx	# D.4091, tmp125
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp125
	je	.L16	#,
	call	__stack_chk_fail@PLT	#
.L16:
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
