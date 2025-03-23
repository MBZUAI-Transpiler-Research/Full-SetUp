	.file	"problem94.c"
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
# problem94.c:6:     const char* vowels = "aeiouAEIOU";
	leaq	.LC0(%rip), %rax	#, tmp119
	movq	%rax, -8(%rbp)	# tmp119, vowels
# problem94.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	movl	$0, -16(%rbp)	#, i
# problem94.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	jmp	.L2	#
.L10:
# problem94.c:10:         char w = message[i];
	movl	-16(%rbp), %eax	# i, tmp120
	movslq	%eax, %rdx	# tmp120, _1
	movq	-40(%rbp), %rax	# message, tmp121
	addq	%rdx, %rax	# _1, _2
# problem94.c:10:         char w = message[i];
	movzbl	(%rax), %eax	# *_2, tmp122
	movb	%al, -17(%rbp)	# tmp122, w
# problem94.c:11:         if (islower(w)) {
	call	__ctype_b_loc@PLT	#
	movq	(%rax), %rdx	# *_3, _4
	movsbq	-17(%rbp), %rax	# w, _5
	addq	%rax, %rax	# _6
	addq	%rdx, %rax	# _4, _7
	movzwl	(%rax), %eax	# *_7, _8
	movzwl	%ax, %eax	# _8, _9
	andl	$512, %eax	#, _10
# problem94.c:11:         if (islower(w)) {
	testl	%eax, %eax	# _10
	je	.L3	#,
# problem94.c:12:             w = toupper(w);
	movsbl	-17(%rbp), %eax	# w, _11
	movl	%eax, %edi	# _11,
	call	toupper@PLT	#
# problem94.c:12:             w = toupper(w);
	movb	%al, -17(%rbp)	# _12, w
	jmp	.L4	#
.L3:
# problem94.c:13:         } else if (isupper(w)) {
	call	__ctype_b_loc@PLT	#
	movq	(%rax), %rdx	# *_13, _14
	movsbq	-17(%rbp), %rax	# w, _15
	addq	%rax, %rax	# _16
	addq	%rdx, %rax	# _14, _17
	movzwl	(%rax), %eax	# *_17, _18
	movzwl	%ax, %eax	# _18, _19
	andl	$256, %eax	#, _20
# problem94.c:13:         } else if (isupper(w)) {
	testl	%eax, %eax	# _20
	je	.L4	#,
# problem94.c:14:             w = tolower(w);
	movsbl	-17(%rbp), %eax	# w, _21
	movl	%eax, %edi	# _21,
	call	tolower@PLT	#
# problem94.c:14:             w = tolower(w);
	movb	%al, -17(%rbp)	# _22, w
.L4:
# problem94.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	movl	$0, -12(%rbp)	#, j
# problem94.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	jmp	.L5	#
.L9:
# problem94.c:18:             if (w == vowels[j]) {
	movl	-12(%rbp), %eax	# j, tmp123
	movslq	%eax, %rdx	# tmp123, _23
	movq	-8(%rbp), %rax	# vowels, tmp124
	addq	%rdx, %rax	# _23, _24
	movzbl	(%rax), %eax	# *_24, _25
# problem94.c:18:             if (w == vowels[j]) {
	cmpb	%al, -17(%rbp)	# _25, w
	jne	.L6	#,
# problem94.c:19:                 if (j < 10) {
	cmpl	$9, -12(%rbp)	#, j
	jg	.L11	#,
# problem94.c:20:                     w = w + 2;
	movzbl	-17(%rbp), %eax	# w, w.0_26
	addl	$2, %eax	#, _27
# problem94.c:20:                     w = w + 2;
	movb	%al, -17(%rbp)	# _27, w
# problem94.c:22:                 break;
	jmp	.L11	#
.L6:
# problem94.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	addl	$1, -12(%rbp)	#, j
.L5:
# problem94.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	movl	-12(%rbp), %eax	# j, tmp125
	movslq	%eax, %rdx	# tmp125, _28
	movq	-8(%rbp), %rax	# vowels, tmp126
	addq	%rdx, %rax	# _28, _29
	movzbl	(%rax), %eax	# *_29, _30
# problem94.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	testb	%al, %al	# _30
	jne	.L9	#,
	jmp	.L8	#
.L11:
# problem94.c:22:                 break;
	nop	
.L8:
# problem94.c:25:         out[i] = w;
	movl	-16(%rbp), %eax	# i, tmp127
	movslq	%eax, %rdx	# tmp127, _31
	movq	-48(%rbp), %rax	# out, tmp128
	addq	%rax, %rdx	# tmp128, _32
# problem94.c:25:         out[i] = w;
	movzbl	-17(%rbp), %eax	# w, tmp129
	movb	%al, (%rdx)	# tmp129, *_32
# problem94.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	addl	$1, -16(%rbp)	#, i
.L2:
# problem94.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	movl	-16(%rbp), %eax	# i, tmp130
	movslq	%eax, %rdx	# tmp130, _33
	movq	-40(%rbp), %rax	# message, tmp131
	addq	%rdx, %rax	# _33, _34
	movzbl	(%rax), %eax	# *_34, _35
# problem94.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	testb	%al, %al	# _35
	jne	.L10	#,
# problem94.c:27:     out[i] = '\0';
	movl	-16(%rbp), %eax	# i, tmp132
	movslq	%eax, %rdx	# tmp132, _36
	movq	-48(%rbp), %rax	# out, tmp133
	addq	%rdx, %rax	# _36, _37
# problem94.c:27:     out[i] = '\0';
	movb	$0, (%rax)	#, *_37
# problem94.c:28: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC1:
	.string	"TEST"
.LC2:
	.string	"tgst"
.LC3:
	.string	"problem94.c"
.LC4:
	.string	"strcmp(output, \"tgst\") == 0"
.LC5:
	.string	"Mudasir"
.LC6:
	.string	"mWDCSKR"
	.align 8
.LC7:
	.string	"strcmp(output, \"mWDCSKR\") == 0"
.LC8:
	.string	"YES"
.LC9:
	.string	"ygs"
.LC10:
	.string	"strcmp(output, \"ygs\") == 0"
.LC11:
	.string	"This is a message"
.LC12:
	.string	"tHKS KS C MGSSCGG"
	.align 8
.LC13:
	.string	"strcmp(output, \"tHKS KS C MGSSCGG\") == 0"
.LC14:
	.string	"I DoNt KnOw WhAt tO WrItE"
.LC15:
	.string	"k dQnT kNqW wHcT Tq wRkTg"
	.align 8
.LC16:
	.string	"strcmp(output, \"k dQnT kNqW wHcT Tq wRkTg\") == 0"
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
# problem94.c:35: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp125
	movq	%rax, -8(%rbp)	# tmp125, D.2701
	xorl	%eax, %eax	# tmp125
# problem94.c:38:     func0("TEST", output);
	leaq	-112(%rbp), %rax	#, tmp89
	movq	%rax, %rsi	# tmp89,
	leaq	.LC1(%rip), %rax	#, tmp90
	movq	%rax, %rdi	# tmp90,
	call	func0	#
# problem94.c:39:     assert(strcmp(output, "tgst") == 0);
	leaq	-112(%rbp), %rax	#, tmp91
	leaq	.LC2(%rip), %rdx	#, tmp92
	movq	%rdx, %rsi	# tmp92,
	movq	%rax, %rdi	# tmp91,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _1
	je	.L13	#,
# problem94.c:39:     assert(strcmp(output, "tgst") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp93
	movq	%rax, %rcx	# tmp93,
	movl	$39, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp94
	movq	%rax, %rsi	# tmp94,
	leaq	.LC4(%rip), %rax	#, tmp95
	movq	%rax, %rdi	# tmp95,
	call	__assert_fail@PLT	#
.L13:
# problem94.c:41:     func0("Mudasir", output);
	leaq	-112(%rbp), %rax	#, tmp96
	movq	%rax, %rsi	# tmp96,
	leaq	.LC5(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	func0	#
# problem94.c:42:     assert(strcmp(output, "mWDCSKR") == 0);
	leaq	-112(%rbp), %rax	#, tmp98
	leaq	.LC6(%rip), %rdx	#, tmp99
	movq	%rdx, %rsi	# tmp99,
	movq	%rax, %rdi	# tmp98,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _2
	je	.L14	#,
# problem94.c:42:     assert(strcmp(output, "mWDCSKR") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp100
	movq	%rax, %rcx	# tmp100,
	movl	$42, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp101
	movq	%rax, %rsi	# tmp101,
	leaq	.LC7(%rip), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	__assert_fail@PLT	#
.L14:
# problem94.c:44:     func0("YES", output);
	leaq	-112(%rbp), %rax	#, tmp103
	movq	%rax, %rsi	# tmp103,
	leaq	.LC8(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	call	func0	#
# problem94.c:45:     assert(strcmp(output, "ygs") == 0);
	leaq	-112(%rbp), %rax	#, tmp105
	leaq	.LC9(%rip), %rdx	#, tmp106
	movq	%rdx, %rsi	# tmp106,
	movq	%rax, %rdi	# tmp105,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _3
	je	.L15	#,
# problem94.c:45:     assert(strcmp(output, "ygs") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp107
	movq	%rax, %rcx	# tmp107,
	movl	$45, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp108
	movq	%rax, %rsi	# tmp108,
	leaq	.LC10(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	__assert_fail@PLT	#
.L15:
# problem94.c:47:     func0("This is a message", output);
	leaq	-112(%rbp), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	leaq	.LC11(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	func0	#
# problem94.c:48:     assert(strcmp(output, "tHKS KS C MGSSCGG") == 0);
	leaq	-112(%rbp), %rax	#, tmp112
	leaq	.LC12(%rip), %rdx	#, tmp113
	movq	%rdx, %rsi	# tmp113,
	movq	%rax, %rdi	# tmp112,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _4
	je	.L16	#,
# problem94.c:48:     assert(strcmp(output, "tHKS KS C MGSSCGG") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp114
	movq	%rax, %rcx	# tmp114,
	movl	$48, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp115
	movq	%rax, %rsi	# tmp115,
	leaq	.LC13(%rip), %rax	#, tmp116
	movq	%rax, %rdi	# tmp116,
	call	__assert_fail@PLT	#
.L16:
# problem94.c:50:     func0("I DoNt KnOw WhAt tO WrItE", output);
	leaq	-112(%rbp), %rax	#, tmp117
	movq	%rax, %rsi	# tmp117,
	leaq	.LC14(%rip), %rax	#, tmp118
	movq	%rax, %rdi	# tmp118,
	call	func0	#
# problem94.c:51:     assert(strcmp(output, "k dQnT kNqW wHcT Tq wRkTg") == 0);
	leaq	-112(%rbp), %rax	#, tmp119
	leaq	.LC15(%rip), %rdx	#, tmp120
	movq	%rdx, %rsi	# tmp120,
	movq	%rax, %rdi	# tmp119,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _5
	je	.L17	#,
# problem94.c:51:     assert(strcmp(output, "k dQnT kNqW wHcT Tq wRkTg") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp121
	movq	%rax, %rcx	# tmp121,
	movl	$51, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp122
	movq	%rax, %rsi	# tmp122,
	leaq	.LC16(%rip), %rax	#, tmp123
	movq	%rax, %rdi	# tmp123,
	call	__assert_fail@PLT	#
.L17:
# problem94.c:53:     return 0;
	movl	$0, %eax	#, _17
# problem94.c:54: }
	movq	-8(%rbp), %rdx	# D.2701, tmp126
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp126
	je	.L19	#,
	call	__stack_chk_fail@PLT	#
.L19:
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
