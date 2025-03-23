	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"aeiouAEIOU"
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
	movq	%rdi, -40(%rbp)	# message, message
	movq	%rsi, -48(%rbp)	# out, out
# eval/problem94//code.c:6:     const char* vowels = "aeiouAEIOU";
	leaq	.LC0(%rip), %rax	#, tmp119
	movq	%rax, -8(%rbp)	# tmp119, vowels
# eval/problem94//code.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	movl	$0, -16(%rbp)	#, i
# eval/problem94//code.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	jmp	.L2	#
.L10:
# eval/problem94//code.c:10:         char w = message[i];
	movl	-16(%rbp), %eax	# i, tmp120
	movslq	%eax, %rdx	# tmp120, _1
	movq	-40(%rbp), %rax	# message, tmp121
	addq	%rdx, %rax	# _1, _2
# eval/problem94//code.c:10:         char w = message[i];
	movzbl	(%rax), %eax	# *_2, tmp122
	movb	%al, -17(%rbp)	# tmp122, w
# eval/problem94//code.c:11:         if (islower(w)) {
	call	__ctype_b_loc@PLT	#
	movq	(%rax), %rdx	# *_3, _4
	movsbq	-17(%rbp), %rax	# w, _5
	addq	%rax, %rax	# _6
	addq	%rdx, %rax	# _4, _7
	movzwl	(%rax), %eax	# *_7, _8
	movzwl	%ax, %eax	# _8, _9
	andl	$512, %eax	#, _10
# eval/problem94//code.c:11:         if (islower(w)) {
	testl	%eax, %eax	# _10
	je	.L3	#,
# eval/problem94//code.c:12:             w = toupper(w);
	movsbl	-17(%rbp), %eax	# w, _11
	movl	%eax, %edi	# _11,
	call	toupper@PLT	#
# eval/problem94//code.c:12:             w = toupper(w);
	movb	%al, -17(%rbp)	# _12, w
	jmp	.L4	#
.L3:
# eval/problem94//code.c:13:         } else if (isupper(w)) {
	call	__ctype_b_loc@PLT	#
	movq	(%rax), %rdx	# *_13, _14
	movsbq	-17(%rbp), %rax	# w, _15
	addq	%rax, %rax	# _16
	addq	%rdx, %rax	# _14, _17
	movzwl	(%rax), %eax	# *_17, _18
	movzwl	%ax, %eax	# _18, _19
	andl	$256, %eax	#, _20
# eval/problem94//code.c:13:         } else if (isupper(w)) {
	testl	%eax, %eax	# _20
	je	.L4	#,
# eval/problem94//code.c:14:             w = tolower(w);
	movsbl	-17(%rbp), %eax	# w, _21
	movl	%eax, %edi	# _21,
	call	tolower@PLT	#
# eval/problem94//code.c:14:             w = tolower(w);
	movb	%al, -17(%rbp)	# _22, w
.L4:
# eval/problem94//code.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	movl	$0, -12(%rbp)	#, j
# eval/problem94//code.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	jmp	.L5	#
.L9:
# eval/problem94//code.c:18:             if (w == vowels[j]) {
	movl	-12(%rbp), %eax	# j, tmp123
	movslq	%eax, %rdx	# tmp123, _23
	movq	-8(%rbp), %rax	# vowels, tmp124
	addq	%rdx, %rax	# _23, _24
	movzbl	(%rax), %eax	# *_24, _25
# eval/problem94//code.c:18:             if (w == vowels[j]) {
	cmpb	%al, -17(%rbp)	# _25, w
	jne	.L6	#,
# eval/problem94//code.c:19:                 if (j < 10) {
	cmpl	$9, -12(%rbp)	#, j
	jg	.L11	#,
# eval/problem94//code.c:20:                     w = w + 2;
	movzbl	-17(%rbp), %eax	# w, w.0_26
	addl	$2, %eax	#, _27
# eval/problem94//code.c:20:                     w = w + 2;
	movb	%al, -17(%rbp)	# _27, w
# eval/problem94//code.c:22:                 break;
	jmp	.L11	#
.L6:
# eval/problem94//code.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	addl	$1, -12(%rbp)	#, j
.L5:
# eval/problem94//code.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	movl	-12(%rbp), %eax	# j, tmp125
	movslq	%eax, %rdx	# tmp125, _28
	movq	-8(%rbp), %rax	# vowels, tmp126
	addq	%rdx, %rax	# _28, _29
	movzbl	(%rax), %eax	# *_29, _30
# eval/problem94//code.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	testb	%al, %al	# _30
	jne	.L9	#,
	jmp	.L8	#
.L11:
# eval/problem94//code.c:22:                 break;
	nop	
.L8:
# eval/problem94//code.c:25:         out[i] = w;
	movl	-16(%rbp), %eax	# i, tmp127
	movslq	%eax, %rdx	# tmp127, _31
	movq	-48(%rbp), %rax	# out, tmp128
	addq	%rax, %rdx	# tmp128, _32
# eval/problem94//code.c:25:         out[i] = w;
	movzbl	-17(%rbp), %eax	# w, tmp129
	movb	%al, (%rdx)	# tmp129, *_32
# eval/problem94//code.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	addl	$1, -16(%rbp)	#, i
.L2:
# eval/problem94//code.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	movl	-16(%rbp), %eax	# i, tmp130
	movslq	%eax, %rdx	# tmp130, _33
	movq	-40(%rbp), %rax	# message, tmp131
	addq	%rdx, %rax	# _33, _34
	movzbl	(%rax), %eax	# *_34, _35
# eval/problem94//code.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	testb	%al, %al	# _35
	jne	.L10	#,
# eval/problem94//code.c:27:     out[i] = '\0';
	movl	-16(%rbp), %eax	# i, tmp132
	movslq	%eax, %rdx	# tmp132, _36
	movq	-48(%rbp), %rax	# out, tmp133
	addq	%rdx, %rax	# _36, _37
# eval/problem94//code.c:27:     out[i] = '\0';
	movb	$0, (%rax)	#, *_37
# eval/problem94//code.c:28: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
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
