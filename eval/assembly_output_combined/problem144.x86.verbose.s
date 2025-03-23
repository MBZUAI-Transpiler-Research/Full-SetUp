	.file	"problem144.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
	movq	%rdi, -40(%rbp)	# sentence, sentence
	movq	%rsi, -48(%rbp)	# out, out
# problem144.c:6:     int index = 0, word_len = 0;
	movl	$0, -4(%rbp)	#, index
# problem144.c:6:     int index = 0, word_len = 0;
	movl	$0, -20(%rbp)	#, word_len
# problem144.c:7:     int out_index = 0;
	movl	$0, -16(%rbp)	#, out_index
# problem144.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	movl	$0, -12(%rbp)	#, i
# problem144.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	jmp	.L2	#
.L13:
# problem144.c:12:         if (sentence[i] != ' ') {
	movl	-12(%rbp), %eax	# i, tmp114
	movslq	%eax, %rdx	# tmp114, _1
	movq	-40(%rbp), %rax	# sentence, tmp115
	addq	%rdx, %rax	# _1, _2
	movzbl	(%rax), %eax	# *_2, _3
# problem144.c:12:         if (sentence[i] != ' ') {
	cmpb	$32, %al	#, _3
	je	.L3	#,
# problem144.c:13:             word_len++;
	addl	$1, -20(%rbp)	#, word_len
	jmp	.L4	#
.L3:
# problem144.c:15:             if (word_len > 1) {
	cmpl	$1, -20(%rbp)	#, word_len
	jle	.L5	#,
# problem144.c:16:                 is_prime = true;
	movb	$1, -21(%rbp)	#, is_prime
# problem144.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	movl	$2, -8(%rbp)	#, j
# problem144.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	jmp	.L6	#
.L9:
# problem144.c:18:                     if (word_len % j == 0) {
	movl	-20(%rbp), %eax	# word_len, tmp116
	cltd
	idivl	-8(%rbp)	# j
	movl	%edx, %eax	# tmp117, _4
# problem144.c:18:                     if (word_len % j == 0) {
	testl	%eax, %eax	# _4
	jne	.L7	#,
# problem144.c:19:                         is_prime = false;
	movb	$0, -21(%rbp)	#, is_prime
# problem144.c:20:                         break;
	jmp	.L10	#
.L7:
# problem144.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	addl	$1, -8(%rbp)	#, j
.L6:
# problem144.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	movl	-8(%rbp), %eax	# j, tmp119
	imull	%eax, %eax	# tmp119, _5
# problem144.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	cmpl	%eax, -20(%rbp)	# _5, word_len
	jge	.L9	#,
	jmp	.L10	#
.L5:
# problem144.c:24:                 is_prime = false;
	movb	$0, -21(%rbp)	#, is_prime
.L10:
# problem144.c:27:             if (is_prime) {
	cmpb	$0, -21(%rbp)	#, is_prime
	je	.L11	#,
# problem144.c:28:                 if (out_index > 0) {
	cmpl	$0, -16(%rbp)	#, out_index
	jle	.L12	#,
# problem144.c:29:                     out[out_index++] = ' ';
	movl	-16(%rbp), %eax	# out_index, out_index.0_6
	leal	1(%rax), %edx	#, tmp120
	movl	%edx, -16(%rbp)	# tmp120, out_index
	movslq	%eax, %rdx	# out_index.0_6, _7
# problem144.c:29:                     out[out_index++] = ' ';
	movq	-48(%rbp), %rax	# out, tmp121
	addq	%rdx, %rax	# _7, _8
# problem144.c:29:                     out[out_index++] = ' ';
	movb	$32, (%rax)	#, *_8
.L12:
# problem144.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	movl	-20(%rbp), %eax	# word_len, tmp122
	cltq
# problem144.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	movl	-12(%rbp), %edx	# i, tmp123
	movslq	%edx, %rdx	# tmp123, _10
	movl	-20(%rbp), %ecx	# word_len, tmp124
	movslq	%ecx, %rcx	# tmp124, _11
	movq	%rdx, %rsi	# _10, _10
	subq	%rcx, %rsi	# _11, _10
	movq	-40(%rbp), %rdx	# sentence, tmp125
	addq	%rdx, %rsi	# tmp125, _13
# problem144.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	movl	-16(%rbp), %edx	# out_index, tmp126
	movslq	%edx, %rcx	# tmp126, _14
# problem144.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	movq	-48(%rbp), %rdx	# out, tmp127
	addq	%rdx, %rcx	# tmp127, _15
# problem144.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	movq	%rax, %rdx	# _9,
	movq	%rcx, %rdi	# _15,
	call	memcpy@PLT	#
# problem144.c:32:                 out_index += word_len;
	movl	-20(%rbp), %eax	# word_len, tmp128
	addl	%eax, -16(%rbp)	# tmp128, out_index
.L11:
# problem144.c:34:             word_len = 0;
	movl	$0, -20(%rbp)	#, word_len
.L4:
# problem144.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	addl	$1, -12(%rbp)	#, i
.L2:
# problem144.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	movl	-12(%rbp), %eax	# i, tmp129
	movslq	%eax, %rdx	# tmp129, _16
	movq	-40(%rbp), %rax	# sentence, tmp130
	addq	%rdx, %rax	# _16, _17
	movzbl	(%rax), %eax	# *_17, _18
# problem144.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	testb	%al, %al	# _18
	jne	.L13	#,
# problem144.c:38:     if (word_len > 1) {
	cmpl	$1, -20(%rbp)	#, word_len
	jle	.L14	#,
# problem144.c:39:         is_prime = true;
	movb	$1, -21(%rbp)	#, is_prime
# problem144.c:40:         for (j = 2; j * j <= word_len; ++j) {
	movl	$2, -8(%rbp)	#, j
# problem144.c:40:         for (j = 2; j * j <= word_len; ++j) {
	jmp	.L15	#
.L18:
# problem144.c:41:             if (word_len % j == 0) {
	movl	-20(%rbp), %eax	# word_len, tmp131
	cltd
	idivl	-8(%rbp)	# j
	movl	%edx, %eax	# tmp132, _19
# problem144.c:41:             if (word_len % j == 0) {
	testl	%eax, %eax	# _19
	jne	.L16	#,
# problem144.c:42:                 is_prime = false;
	movb	$0, -21(%rbp)	#, is_prime
# problem144.c:43:                 break;
	jmp	.L19	#
.L16:
# problem144.c:40:         for (j = 2; j * j <= word_len; ++j) {
	addl	$1, -8(%rbp)	#, j
.L15:
# problem144.c:40:         for (j = 2; j * j <= word_len; ++j) {
	movl	-8(%rbp), %eax	# j, tmp134
	imull	%eax, %eax	# tmp134, _20
# problem144.c:40:         for (j = 2; j * j <= word_len; ++j) {
	cmpl	%eax, -20(%rbp)	# _20, word_len
	jge	.L18	#,
	jmp	.L19	#
.L14:
# problem144.c:47:         is_prime = false;
	movb	$0, -21(%rbp)	#, is_prime
.L19:
# problem144.c:50:     if (is_prime) {
	cmpb	$0, -21(%rbp)	#, is_prime
	je	.L20	#,
# problem144.c:51:         if (out_index > 0) {
	cmpl	$0, -16(%rbp)	#, out_index
	jle	.L21	#,
# problem144.c:52:             out[out_index++] = ' ';
	movl	-16(%rbp), %eax	# out_index, out_index.1_21
	leal	1(%rax), %edx	#, tmp135
	movl	%edx, -16(%rbp)	# tmp135, out_index
	movslq	%eax, %rdx	# out_index.1_21, _22
# problem144.c:52:             out[out_index++] = ' ';
	movq	-48(%rbp), %rax	# out, tmp136
	addq	%rdx, %rax	# _22, _23
# problem144.c:52:             out[out_index++] = ' ';
	movb	$32, (%rax)	#, *_23
.L21:
# problem144.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	movl	-20(%rbp), %eax	# word_len, tmp137
	cltq
# problem144.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	movl	-12(%rbp), %edx	# i, tmp138
	movslq	%edx, %rdx	# tmp138, _25
	movl	-20(%rbp), %ecx	# word_len, tmp139
	movslq	%ecx, %rcx	# tmp139, _26
	movq	%rdx, %rsi	# _25, _25
	subq	%rcx, %rsi	# _26, _25
	movq	-40(%rbp), %rdx	# sentence, tmp140
	addq	%rdx, %rsi	# tmp140, _28
# problem144.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	movl	-16(%rbp), %edx	# out_index, tmp141
	movslq	%edx, %rcx	# tmp141, _29
# problem144.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	movq	-48(%rbp), %rdx	# out, tmp142
	addq	%rdx, %rcx	# tmp142, _30
# problem144.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	movq	%rax, %rdx	# _24,
	movq	%rcx, %rdi	# _30,
	call	memcpy@PLT	#
# problem144.c:55:         out_index += word_len;
	movl	-20(%rbp), %eax	# word_len, tmp143
	addl	%eax, -16(%rbp)	# tmp143, out_index
.L20:
# problem144.c:58:     out[out_index] = '\0';
	movl	-16(%rbp), %eax	# out_index, tmp144
	movslq	%eax, %rdx	# tmp144, _31
	movq	-48(%rbp), %rax	# out, tmp145
	addq	%rdx, %rax	# _31, _32
# problem144.c:58:     out[out_index] = '\0';
	movb	$0, (%rax)	#, *_32
# problem144.c:59: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"This is a test"
.LC1:
	.string	"is"
.LC2:
	.string	"problem144.c"
.LC3:
	.string	"strcmp(output, \"is\") == 0"
.LC4:
	.string	"lets go for swimming"
.LC5:
	.string	"go for"
.LC6:
	.string	"strcmp(output, \"go for\") == 0"
	.align 8
.LC7:
	.string	"there is no place available here"
.LC8:
	.string	"there is no place"
	.align 8
.LC9:
	.string	"strcmp(output, \"there is no place\") == 0"
.LC10:
	.string	"Hi I am Hussein"
.LC11:
	.string	"Hi am Hussein"
	.align 8
.LC12:
	.string	"strcmp(output, \"Hi am Hussein\") == 0"
.LC13:
	.string	"go for it"
	.align 8
.LC14:
	.string	"strcmp(output, \"go for it\") == 0"
.LC15:
	.string	"here"
.LC16:
	.string	"strcmp(output, \"\") == 0"
.LC17:
	.string	"here is"
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
	subq	$112, %rsp	#,
# problem144.c:66: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp140
	movq	%rax, -8(%rbp)	# tmp140, D.2622
	xorl	%eax, %eax	# tmp140
# problem144.c:69:     func0("This is a test", output);
	leaq	-112(%rbp), %rax	#, tmp92
	movq	%rax, %rsi	# tmp92,
	leaq	.LC0(%rip), %rax	#, tmp93
	movq	%rax, %rdi	# tmp93,
	call	func0	#
# problem144.c:70:     assert(strcmp(output, "is") == 0);
	leaq	-112(%rbp), %rax	#, tmp94
	leaq	.LC1(%rip), %rdx	#, tmp95
	movq	%rdx, %rsi	# tmp95,
	movq	%rax, %rdi	# tmp94,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _1
	je	.L23	#,
# problem144.c:70:     assert(strcmp(output, "is") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp96
	movq	%rax, %rcx	# tmp96,
	movl	$70, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp97
	movq	%rax, %rsi	# tmp97,
	leaq	.LC3(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	__assert_fail@PLT	#
.L23:
# problem144.c:72:     func0("lets go for swimming", output);
	leaq	-112(%rbp), %rax	#, tmp99
	movq	%rax, %rsi	# tmp99,
	leaq	.LC4(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	func0	#
# problem144.c:73:     assert(strcmp(output, "go for") == 0);
	leaq	-112(%rbp), %rax	#, tmp101
	leaq	.LC5(%rip), %rdx	#, tmp102
	movq	%rdx, %rsi	# tmp102,
	movq	%rax, %rdi	# tmp101,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _2
	je	.L24	#,
# problem144.c:73:     assert(strcmp(output, "go for") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp103
	movq	%rax, %rcx	# tmp103,
	movl	$73, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp104
	movq	%rax, %rsi	# tmp104,
	leaq	.LC6(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	__assert_fail@PLT	#
.L24:
# problem144.c:75:     func0("there is no place available here", output);
	leaq	-112(%rbp), %rax	#, tmp106
	movq	%rax, %rsi	# tmp106,
	leaq	.LC7(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	func0	#
# problem144.c:76:     assert(strcmp(output, "there is no place") == 0);
	leaq	-112(%rbp), %rax	#, tmp108
	leaq	.LC8(%rip), %rdx	#, tmp109
	movq	%rdx, %rsi	# tmp109,
	movq	%rax, %rdi	# tmp108,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _3
	je	.L25	#,
# problem144.c:76:     assert(strcmp(output, "there is no place") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp110
	movq	%rax, %rcx	# tmp110,
	movl	$76, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp111
	movq	%rax, %rsi	# tmp111,
	leaq	.LC9(%rip), %rax	#, tmp112
	movq	%rax, %rdi	# tmp112,
	call	__assert_fail@PLT	#
.L25:
# problem144.c:78:     func0("Hi I am Hussein", output);
	leaq	-112(%rbp), %rax	#, tmp113
	movq	%rax, %rsi	# tmp113,
	leaq	.LC10(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	func0	#
# problem144.c:79:     assert(strcmp(output, "Hi am Hussein") == 0);
	leaq	-112(%rbp), %rax	#, tmp115
	leaq	.LC11(%rip), %rdx	#, tmp116
	movq	%rdx, %rsi	# tmp116,
	movq	%rax, %rdi	# tmp115,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _4
	je	.L26	#,
# problem144.c:79:     assert(strcmp(output, "Hi am Hussein") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp117
	movq	%rax, %rcx	# tmp117,
	movl	$79, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp118
	movq	%rax, %rsi	# tmp118,
	leaq	.LC12(%rip), %rax	#, tmp119
	movq	%rax, %rdi	# tmp119,
	call	__assert_fail@PLT	#
.L26:
# problem144.c:81:     func0("go for it", output);
	leaq	-112(%rbp), %rax	#, tmp120
	movq	%rax, %rsi	# tmp120,
	leaq	.LC13(%rip), %rax	#, tmp121
	movq	%rax, %rdi	# tmp121,
	call	func0	#
# problem144.c:82:     assert(strcmp(output, "go for it") == 0);
	leaq	-112(%rbp), %rax	#, tmp122
	leaq	.LC13(%rip), %rdx	#, tmp123
	movq	%rdx, %rsi	# tmp123,
	movq	%rax, %rdi	# tmp122,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _5
	je	.L27	#,
# problem144.c:82:     assert(strcmp(output, "go for it") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp124
	movq	%rax, %rcx	# tmp124,
	movl	$82, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp125
	movq	%rax, %rsi	# tmp125,
	leaq	.LC14(%rip), %rax	#, tmp126
	movq	%rax, %rdi	# tmp126,
	call	__assert_fail@PLT	#
.L27:
# problem144.c:84:     func0("here", output);
	leaq	-112(%rbp), %rax	#, tmp127
	movq	%rax, %rsi	# tmp127,
	leaq	.LC15(%rip), %rax	#, tmp128
	movq	%rax, %rdi	# tmp128,
	call	func0	#
# problem144.c:85:     assert(strcmp(output, "") == 0);
	movzbl	-112(%rbp), %eax	# MEM[(const unsigned char * {ref-all})&output], _20
	movzbl	%al, %eax	# _20, _6
	testl	%eax, %eax	# _6
	je	.L28	#,
# problem144.c:85:     assert(strcmp(output, "") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp129
	movq	%rax, %rcx	# tmp129,
	movl	$85, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp130
	movq	%rax, %rsi	# tmp130,
	leaq	.LC16(%rip), %rax	#, tmp131
	movq	%rax, %rdi	# tmp131,
	call	__assert_fail@PLT	#
.L28:
# problem144.c:87:     func0("here is", output);
	leaq	-112(%rbp), %rax	#, tmp132
	movq	%rax, %rsi	# tmp132,
	leaq	.LC17(%rip), %rax	#, tmp133
	movq	%rax, %rdi	# tmp133,
	call	func0	#
# problem144.c:88:     assert(strcmp(output, "is") == 0);
	leaq	-112(%rbp), %rax	#, tmp134
	leaq	.LC1(%rip), %rdx	#, tmp135
	movq	%rdx, %rsi	# tmp135,
	movq	%rax, %rdi	# tmp134,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _7
	je	.L29	#,
# problem144.c:88:     assert(strcmp(output, "is") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp136
	movq	%rax, %rcx	# tmp136,
	movl	$88, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp137
	movq	%rax, %rsi	# tmp137,
	leaq	.LC3(%rip), %rax	#, tmp138
	movq	%rax, %rdi	# tmp138,
	call	__assert_fail@PLT	#
.L29:
# problem144.c:90:     return 0;
	movl	$0, %eax	#, _24
# problem144.c:91: }
	movq	-8(%rbp), %rdx	# D.2622, tmp141
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp141
	je	.L31	#,
	call	__stack_chk_fail@PLT	#
.L31:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
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
