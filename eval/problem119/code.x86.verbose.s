	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"AEIOUaeiou"
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
	movq	%rdi, -40(%rbp)	# word, word
# code.c:6:     const char *vowels = "AEIOUaeiou";
	leaq	.LC0(%rip), %rax	#, tmp106
	movq	%rax, -16(%rbp)	# tmp106, vowels
# code.c:7:     size_t len = strlen(word);
	movq	-40(%rbp), %rax	# word, tmp107
	movq	%rax, %rdi	# tmp107,
	call	strlen@PLT	#
	movq	%rax, -8(%rbp)	# tmp108, len
# code.c:9:     for (int i = len - 2; i >= 1; i--) {
	movq	-8(%rbp), %rax	# len, tmp109
	subl	$2, %eax	#, _2
# code.c:9:     for (int i = len - 2; i >= 1; i--) {
	movl	%eax, -20(%rbp)	# _2, i
# code.c:9:     for (int i = len - 2; i >= 1; i--) {
	jmp	.L2	#
.L5:
# code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	movl	-20(%rbp), %eax	# i, tmp110
	movslq	%eax, %rdx	# tmp110, _3
	movq	-40(%rbp), %rax	# word, tmp111
	addq	%rdx, %rax	# _3, _4
	movzbl	(%rax), %eax	# *_4, _5
# code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	movsbl	%al, %edx	# _5, _6
	movq	-16(%rbp), %rax	# vowels, tmp112
	movl	%edx, %esi	# _6,
	movq	%rax, %rdi	# tmp112,
	call	strchr@PLT	#
# code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	testq	%rax, %rax	# _7
	je	.L3	#,
# code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	movl	-20(%rbp), %eax	# i, tmp113
	cltq
	leaq	1(%rax), %rdx	#, _9
	movq	-40(%rbp), %rax	# word, tmp114
	addq	%rdx, %rax	# _9, _10
	movzbl	(%rax), %eax	# *_10, _11
# code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	movsbl	%al, %edx	# _11, _12
	movq	-16(%rbp), %rax	# vowels, tmp115
	movl	%edx, %esi	# _12,
	movq	%rax, %rdi	# tmp115,
	call	strchr@PLT	#
# code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	testq	%rax, %rax	# _13
	jne	.L3	#,
# code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	movl	-20(%rbp), %eax	# i, tmp116
	cltq
	leaq	-1(%rax), %rdx	#, _15
	movq	-40(%rbp), %rax	# word, tmp117
	addq	%rdx, %rax	# _15, _16
	movzbl	(%rax), %eax	# *_16, _17
# code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	movsbl	%al, %edx	# _17, _18
	movq	-16(%rbp), %rax	# vowels, tmp118
	movl	%edx, %esi	# _18,
	movq	%rax, %rdi	# tmp118,
	call	strchr@PLT	#
# code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	testq	%rax, %rax	# _19
	jne	.L3	#,
# code.c:11:             out[0] = word[i];
	movl	-20(%rbp), %eax	# i, tmp119
	movslq	%eax, %rdx	# tmp119, _20
	movq	-40(%rbp), %rax	# word, tmp120
	addq	%rdx, %rax	# _20, _21
	movzbl	(%rax), %eax	# *_21, _22
# code.c:11:             out[0] = word[i];
	movb	%al, out.0(%rip)	# _22, out[0]
# code.c:12:             return out;
	leaq	out.0(%rip), %rax	#, _24
	jmp	.L4	#
.L3:
# code.c:9:     for (int i = len - 2; i >= 1; i--) {
	subl	$1, -20(%rbp)	#, i
.L2:
# code.c:9:     for (int i = len - 2; i >= 1; i--) {
	cmpl	$0, -20(%rbp)	#, i
	jg	.L5	#,
# code.c:15:     out[0] = '\0';
	movb	$0, out.0(%rip)	#, out[0]
# code.c:16:     return out;
	leaq	out.0(%rip), %rax	#, _24
.L4:
# code.c:17: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.local	out.0
	.comm	out.0,2,1
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
