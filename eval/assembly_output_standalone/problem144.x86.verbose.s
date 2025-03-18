	.file	"code.c"
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
	movq	%rdi, -40(%rbp)	# sentence, sentence
	movq	%rsi, -48(%rbp)	# out, out
# eval/problem144//code.c:6:     int index = 0, word_len = 0;
	movl	$0, -4(%rbp)	#, index
# eval/problem144//code.c:6:     int index = 0, word_len = 0;
	movl	$0, -20(%rbp)	#, word_len
# eval/problem144//code.c:7:     int out_index = 0;
	movl	$0, -16(%rbp)	#, out_index
# eval/problem144//code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	movl	$0, -12(%rbp)	#, i
# eval/problem144//code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	jmp	.L2	#
.L13:
# eval/problem144//code.c:12:         if (sentence[i] != ' ') {
	movl	-12(%rbp), %eax	# i, tmp114
	movslq	%eax, %rdx	# tmp114, _1
	movq	-40(%rbp), %rax	# sentence, tmp115
	addq	%rdx, %rax	# _1, _2
	movzbl	(%rax), %eax	# *_2, _3
# eval/problem144//code.c:12:         if (sentence[i] != ' ') {
	cmpb	$32, %al	#, _3
	je	.L3	#,
# eval/problem144//code.c:13:             word_len++;
	addl	$1, -20(%rbp)	#, word_len
	jmp	.L4	#
.L3:
# eval/problem144//code.c:15:             if (word_len > 1) {
	cmpl	$1, -20(%rbp)	#, word_len
	jle	.L5	#,
# eval/problem144//code.c:16:                 is_prime = true;
	movb	$1, -21(%rbp)	#, is_prime
# eval/problem144//code.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	movl	$2, -8(%rbp)	#, j
# eval/problem144//code.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	jmp	.L6	#
.L9:
# eval/problem144//code.c:18:                     if (word_len % j == 0) {
	movl	-20(%rbp), %eax	# word_len, tmp116
	cltd
	idivl	-8(%rbp)	# j
	movl	%edx, %eax	# tmp117, _4
# eval/problem144//code.c:18:                     if (word_len % j == 0) {
	testl	%eax, %eax	# _4
	jne	.L7	#,
# eval/problem144//code.c:19:                         is_prime = false;
	movb	$0, -21(%rbp)	#, is_prime
# eval/problem144//code.c:20:                         break;
	jmp	.L10	#
.L7:
# eval/problem144//code.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	addl	$1, -8(%rbp)	#, j
.L6:
# eval/problem144//code.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	movl	-8(%rbp), %eax	# j, tmp119
	imull	%eax, %eax	# tmp119, _5
# eval/problem144//code.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	cmpl	%eax, -20(%rbp)	# _5, word_len
	jge	.L9	#,
	jmp	.L10	#
.L5:
# eval/problem144//code.c:24:                 is_prime = false;
	movb	$0, -21(%rbp)	#, is_prime
.L10:
# eval/problem144//code.c:27:             if (is_prime) {
	cmpb	$0, -21(%rbp)	#, is_prime
	je	.L11	#,
# eval/problem144//code.c:28:                 if (out_index > 0) {
	cmpl	$0, -16(%rbp)	#, out_index
	jle	.L12	#,
# eval/problem144//code.c:29:                     out[out_index++] = ' ';
	movl	-16(%rbp), %eax	# out_index, out_index.0_6
	leal	1(%rax), %edx	#, tmp120
	movl	%edx, -16(%rbp)	# tmp120, out_index
	movslq	%eax, %rdx	# out_index.0_6, _7
# eval/problem144//code.c:29:                     out[out_index++] = ' ';
	movq	-48(%rbp), %rax	# out, tmp121
	addq	%rdx, %rax	# _7, _8
# eval/problem144//code.c:29:                     out[out_index++] = ' ';
	movb	$32, (%rax)	#, *_8
.L12:
# eval/problem144//code.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	movl	-20(%rbp), %eax	# word_len, tmp122
	cltq
# eval/problem144//code.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	movl	-12(%rbp), %edx	# i, tmp123
	movslq	%edx, %rcx	# tmp123, _10
	movl	-20(%rbp), %edx	# word_len, tmp124
	movslq	%edx, %rdx	# tmp124, _11
	subq	%rdx, %rcx	# _11, _12
	movq	-40(%rbp), %rdx	# sentence, tmp125
	leaq	(%rcx,%rdx), %rsi	#, _13
# eval/problem144//code.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	movl	-16(%rbp), %edx	# out_index, tmp126
	movslq	%edx, %rcx	# tmp126, _14
# eval/problem144//code.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	movq	-48(%rbp), %rdx	# out, tmp127
	addq	%rdx, %rcx	# tmp127, _15
# eval/problem144//code.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	movq	%rax, %rdx	# _9,
	movq	%rcx, %rdi	# _15,
	call	memcpy@PLT	#
# eval/problem144//code.c:32:                 out_index += word_len;
	movl	-20(%rbp), %eax	# word_len, tmp128
	addl	%eax, -16(%rbp)	# tmp128, out_index
.L11:
# eval/problem144//code.c:34:             word_len = 0;
	movl	$0, -20(%rbp)	#, word_len
.L4:
# eval/problem144//code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	addl	$1, -12(%rbp)	#, i
.L2:
# eval/problem144//code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	movl	-12(%rbp), %eax	# i, tmp129
	movslq	%eax, %rdx	# tmp129, _16
	movq	-40(%rbp), %rax	# sentence, tmp130
	addq	%rdx, %rax	# _16, _17
	movzbl	(%rax), %eax	# *_17, _18
# eval/problem144//code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	testb	%al, %al	# _18
	jne	.L13	#,
# eval/problem144//code.c:38:     if (word_len > 1) {
	cmpl	$1, -20(%rbp)	#, word_len
	jle	.L14	#,
# eval/problem144//code.c:39:         is_prime = true;
	movb	$1, -21(%rbp)	#, is_prime
# eval/problem144//code.c:40:         for (j = 2; j * j <= word_len; ++j) {
	movl	$2, -8(%rbp)	#, j
# eval/problem144//code.c:40:         for (j = 2; j * j <= word_len; ++j) {
	jmp	.L15	#
.L18:
# eval/problem144//code.c:41:             if (word_len % j == 0) {
	movl	-20(%rbp), %eax	# word_len, tmp131
	cltd
	idivl	-8(%rbp)	# j
	movl	%edx, %eax	# tmp132, _19
# eval/problem144//code.c:41:             if (word_len % j == 0) {
	testl	%eax, %eax	# _19
	jne	.L16	#,
# eval/problem144//code.c:42:                 is_prime = false;
	movb	$0, -21(%rbp)	#, is_prime
# eval/problem144//code.c:43:                 break;
	jmp	.L19	#
.L16:
# eval/problem144//code.c:40:         for (j = 2; j * j <= word_len; ++j) {
	addl	$1, -8(%rbp)	#, j
.L15:
# eval/problem144//code.c:40:         for (j = 2; j * j <= word_len; ++j) {
	movl	-8(%rbp), %eax	# j, tmp134
	imull	%eax, %eax	# tmp134, _20
# eval/problem144//code.c:40:         for (j = 2; j * j <= word_len; ++j) {
	cmpl	%eax, -20(%rbp)	# _20, word_len
	jge	.L18	#,
	jmp	.L19	#
.L14:
# eval/problem144//code.c:47:         is_prime = false;
	movb	$0, -21(%rbp)	#, is_prime
.L19:
# eval/problem144//code.c:50:     if (is_prime) {
	cmpb	$0, -21(%rbp)	#, is_prime
	je	.L20	#,
# eval/problem144//code.c:51:         if (out_index > 0) {
	cmpl	$0, -16(%rbp)	#, out_index
	jle	.L21	#,
# eval/problem144//code.c:52:             out[out_index++] = ' ';
	movl	-16(%rbp), %eax	# out_index, out_index.1_21
	leal	1(%rax), %edx	#, tmp135
	movl	%edx, -16(%rbp)	# tmp135, out_index
	movslq	%eax, %rdx	# out_index.1_21, _22
# eval/problem144//code.c:52:             out[out_index++] = ' ';
	movq	-48(%rbp), %rax	# out, tmp136
	addq	%rdx, %rax	# _22, _23
# eval/problem144//code.c:52:             out[out_index++] = ' ';
	movb	$32, (%rax)	#, *_23
.L21:
# eval/problem144//code.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	movl	-20(%rbp), %eax	# word_len, tmp137
	cltq
# eval/problem144//code.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	movl	-12(%rbp), %edx	# i, tmp138
	movslq	%edx, %rcx	# tmp138, _25
	movl	-20(%rbp), %edx	# word_len, tmp139
	movslq	%edx, %rdx	# tmp139, _26
	subq	%rdx, %rcx	# _26, _27
	movq	-40(%rbp), %rdx	# sentence, tmp140
	leaq	(%rcx,%rdx), %rsi	#, _28
# eval/problem144//code.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	movl	-16(%rbp), %edx	# out_index, tmp141
	movslq	%edx, %rcx	# tmp141, _29
# eval/problem144//code.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	movq	-48(%rbp), %rdx	# out, tmp142
	addq	%rdx, %rcx	# tmp142, _30
# eval/problem144//code.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	movq	%rax, %rdx	# _24,
	movq	%rcx, %rdi	# _30,
	call	memcpy@PLT	#
# eval/problem144//code.c:55:         out_index += word_len;
	movl	-20(%rbp), %eax	# word_len, tmp143
	addl	%eax, -16(%rbp)	# tmp143, out_index
.L20:
# eval/problem144//code.c:58:     out[out_index] = '\0';
	movl	-16(%rbp), %eax	# out_index, tmp144
	movslq	%eax, %rdx	# tmp144, _31
	movq	-48(%rbp), %rax	# out, tmp145
	addq	%rdx, %rax	# _31, _32
# eval/problem144//code.c:58:     out[out_index] = '\0';
	movb	$0, (%rax)	#, *_32
# eval/problem144//code.c:59: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
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
