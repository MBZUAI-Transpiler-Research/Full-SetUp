	.file	"problem90.c"
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
	movq	%rdi, -24(%rbp)	# s, s
	movq	%rsi, -32(%rbp)	# out, out
# problem90.c:6:     for (i = 0; s[i] != '\0'; i++) {
	movl	$0, -8(%rbp)	#, i
# problem90.c:6:     for (i = 0; s[i] != '\0'; i++) {
	jmp	.L2	#
.L3:
# problem90.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	movl	-8(%rbp), %eax	# i, tmp96
	movslq	%eax, %rdx	# tmp96, _1
	movq	-24(%rbp), %rax	# s, tmp97
	addq	%rdx, %rax	# _1, _2
	movzbl	(%rax), %eax	# *_2, _3
# problem90.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	movsbl	%al, %eax	# _3, _4
# problem90.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	leal	-93(%rax), %edx	#, _5
# problem90.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	movslq	%edx, %rax	# _5, tmp98
	imulq	$1321528399, %rax, %rax	#, tmp98, tmp99
	shrq	$32, %rax	#, tmp100
	sarl	$3, %eax	#, tmp101
	movl	%edx, %ecx	# _5, tmp102
	sarl	$31, %ecx	#, tmp102
	subl	%ecx, %eax	# tmp102, _6
	imull	$26, %eax, %ecx	#, _6, tmp103
	movl	%edx, %eax	# _5, _5
	subl	%ecx, %eax	# tmp103, _5
# problem90.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	addl	$97, %eax	#, tmp104
	movl	%eax, -4(%rbp)	# tmp104, w
# problem90.c:8:         out[i] = (char)w;
	movl	-8(%rbp), %eax	# i, tmp105
	movslq	%eax, %rdx	# tmp105, _7
	movq	-32(%rbp), %rax	# out, tmp106
	addq	%rdx, %rax	# _7, _8
# problem90.c:8:         out[i] = (char)w;
	movl	-4(%rbp), %edx	# w, tmp107
# problem90.c:8:         out[i] = (char)w;
	movb	%dl, (%rax)	# _9, *_8
# problem90.c:6:     for (i = 0; s[i] != '\0'; i++) {
	addl	$1, -8(%rbp)	#, i
.L2:
# problem90.c:6:     for (i = 0; s[i] != '\0'; i++) {
	movl	-8(%rbp), %eax	# i, tmp108
	movslq	%eax, %rdx	# tmp108, _10
	movq	-24(%rbp), %rax	# s, tmp109
	addq	%rdx, %rax	# _10, _11
	movzbl	(%rax), %eax	# *_11, _12
# problem90.c:6:     for (i = 0; s[i] != '\0'; i++) {
	testb	%al, %al	# _12
	jne	.L3	#,
# problem90.c:10:     out[i] = '\0';
	movl	-8(%rbp), %eax	# i, tmp110
	movslq	%eax, %rdx	# tmp110, _13
	movq	-32(%rbp), %rax	# out, tmp111
	addq	%rdx, %rax	# _13, _14
# problem90.c:10:     out[i] = '\0';
	movb	$0, (%rax)	#, *_14
# problem90.c:11: }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"hi"
.LC1:
	.string	"lm"
.LC2:
	.string	"problem90.c"
.LC3:
	.string	"strcmp(encrypted, \"lm\") == 0"
.LC4:
	.string	"asdfghjkl"
.LC5:
	.string	"ewhjklnop"
	.align 8
.LC6:
	.string	"strcmp(encrypted, \"ewhjklnop\") == 0"
.LC7:
	.string	"gf"
.LC8:
	.string	"kj"
.LC9:
	.string	"strcmp(encrypted, \"kj\") == 0"
.LC10:
	.string	"et"
.LC11:
	.string	"ix"
.LC12:
	.string	"strcmp(encrypted, \"ix\") == 0"
.LC13:
	.string	"faewfawefaewg"
.LC14:
	.string	"jeiajeaijeiak"
	.align 8
.LC15:
	.string	"strcmp(encrypted, \"jeiajeaijeiak\") == 0"
.LC16:
	.string	"hellomyfriend"
.LC17:
	.string	"lippsqcjvmirh"
	.align 8
.LC18:
	.string	"strcmp(encrypted, \"lippsqcjvmirh\") == 0"
	.align 8
.LC19:
	.string	"dxzdlmnilfuhmilufhlihufnmlimnufhlimnufhfucufh"
	.align 8
.LC20:
	.string	"hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl"
	.align 8
.LC21:
	.string	"strcmp(encrypted, \"hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl\") == 0"
.LC22:
	.string	"a"
.LC23:
	.string	"e"
.LC24:
	.string	"strcmp(encrypted, \"e\") == 0"
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
# problem90.c:19: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp149
	movq	%rax, -8(%rbp)	# tmp149, D.3448
	xorl	%eax, %eax	# tmp149
# problem90.c:22:     func0("hi", encrypted);
	leaq	-112(%rbp), %rax	#, tmp92
	movq	%rax, %rsi	# tmp92,
	leaq	.LC0(%rip), %rax	#, tmp93
	movq	%rax, %rdi	# tmp93,
	call	func0	#
# problem90.c:23:     assert(strcmp(encrypted, "lm") == 0);
	leaq	-112(%rbp), %rax	#, tmp94
	leaq	.LC1(%rip), %rdx	#, tmp95
	movq	%rdx, %rsi	# tmp95,
	movq	%rax, %rdi	# tmp94,
	call	strcmp@PLT	#
# problem90.c:23:     assert(strcmp(encrypted, "lm") == 0);
	testl	%eax, %eax	# _1
	je	.L5	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp96
	movq	%rax, %rcx	# tmp96,
	movl	$23, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp97
	movq	%rax, %rsi	# tmp97,
	leaq	.LC3(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	__assert_fail@PLT	#
.L5:
# problem90.c:25:     func0("asdfghjkl", encrypted);
	leaq	-112(%rbp), %rax	#, tmp99
	movq	%rax, %rsi	# tmp99,
	leaq	.LC4(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	func0	#
# problem90.c:26:     assert(strcmp(encrypted, "ewhjklnop") == 0);
	leaq	-112(%rbp), %rax	#, tmp101
	leaq	.LC5(%rip), %rdx	#, tmp102
	movq	%rdx, %rsi	# tmp102,
	movq	%rax, %rdi	# tmp101,
	call	strcmp@PLT	#
# problem90.c:26:     assert(strcmp(encrypted, "ewhjklnop") == 0);
	testl	%eax, %eax	# _2
	je	.L6	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp103
	movq	%rax, %rcx	# tmp103,
	movl	$26, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp104
	movq	%rax, %rsi	# tmp104,
	leaq	.LC6(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	__assert_fail@PLT	#
.L6:
# problem90.c:28:     func0("gf", encrypted);
	leaq	-112(%rbp), %rax	#, tmp106
	movq	%rax, %rsi	# tmp106,
	leaq	.LC7(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	func0	#
# problem90.c:29:     assert(strcmp(encrypted, "kj") == 0);
	leaq	-112(%rbp), %rax	#, tmp108
	leaq	.LC8(%rip), %rdx	#, tmp109
	movq	%rdx, %rsi	# tmp109,
	movq	%rax, %rdi	# tmp108,
	call	strcmp@PLT	#
# problem90.c:29:     assert(strcmp(encrypted, "kj") == 0);
	testl	%eax, %eax	# _3
	je	.L7	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp110
	movq	%rax, %rcx	# tmp110,
	movl	$29, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp111
	movq	%rax, %rsi	# tmp111,
	leaq	.LC9(%rip), %rax	#, tmp112
	movq	%rax, %rdi	# tmp112,
	call	__assert_fail@PLT	#
.L7:
# problem90.c:31:     func0("et", encrypted);
	leaq	-112(%rbp), %rax	#, tmp113
	movq	%rax, %rsi	# tmp113,
	leaq	.LC10(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	func0	#
# problem90.c:32:     assert(strcmp(encrypted, "ix") == 0);
	leaq	-112(%rbp), %rax	#, tmp115
	leaq	.LC11(%rip), %rdx	#, tmp116
	movq	%rdx, %rsi	# tmp116,
	movq	%rax, %rdi	# tmp115,
	call	strcmp@PLT	#
# problem90.c:32:     assert(strcmp(encrypted, "ix") == 0);
	testl	%eax, %eax	# _4
	je	.L8	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp117
	movq	%rax, %rcx	# tmp117,
	movl	$32, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp118
	movq	%rax, %rsi	# tmp118,
	leaq	.LC12(%rip), %rax	#, tmp119
	movq	%rax, %rdi	# tmp119,
	call	__assert_fail@PLT	#
.L8:
# problem90.c:34:     func0("faewfawefaewg", encrypted);
	leaq	-112(%rbp), %rax	#, tmp120
	movq	%rax, %rsi	# tmp120,
	leaq	.LC13(%rip), %rax	#, tmp121
	movq	%rax, %rdi	# tmp121,
	call	func0	#
# problem90.c:35:     assert(strcmp(encrypted, "jeiajeaijeiak") == 0);
	leaq	-112(%rbp), %rax	#, tmp122
	leaq	.LC14(%rip), %rdx	#, tmp123
	movq	%rdx, %rsi	# tmp123,
	movq	%rax, %rdi	# tmp122,
	call	strcmp@PLT	#
# problem90.c:35:     assert(strcmp(encrypted, "jeiajeaijeiak") == 0);
	testl	%eax, %eax	# _5
	je	.L9	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp124
	movq	%rax, %rcx	# tmp124,
	movl	$35, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp125
	movq	%rax, %rsi	# tmp125,
	leaq	.LC15(%rip), %rax	#, tmp126
	movq	%rax, %rdi	# tmp126,
	call	__assert_fail@PLT	#
.L9:
# problem90.c:37:     func0("hellomyfriend", encrypted);
	leaq	-112(%rbp), %rax	#, tmp127
	movq	%rax, %rsi	# tmp127,
	leaq	.LC16(%rip), %rax	#, tmp128
	movq	%rax, %rdi	# tmp128,
	call	func0	#
# problem90.c:38:     assert(strcmp(encrypted, "lippsqcjvmirh") == 0);
	leaq	-112(%rbp), %rax	#, tmp129
	leaq	.LC17(%rip), %rdx	#, tmp130
	movq	%rdx, %rsi	# tmp130,
	movq	%rax, %rdi	# tmp129,
	call	strcmp@PLT	#
# problem90.c:38:     assert(strcmp(encrypted, "lippsqcjvmirh") == 0);
	testl	%eax, %eax	# _6
	je	.L10	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp131
	movq	%rax, %rcx	# tmp131,
	movl	$38, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp132
	movq	%rax, %rsi	# tmp132,
	leaq	.LC18(%rip), %rax	#, tmp133
	movq	%rax, %rdi	# tmp133,
	call	__assert_fail@PLT	#
.L10:
# problem90.c:40:     func0("dxzdlmnilfuhmilufhlihufnmlimnufhlimnufhfucufh", encrypted);
	leaq	-112(%rbp), %rax	#, tmp134
	movq	%rax, %rsi	# tmp134,
	leaq	.LC19(%rip), %rax	#, tmp135
	movq	%rax, %rdi	# tmp135,
	call	func0	#
# problem90.c:41:     assert(strcmp(encrypted, "hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl") == 0);
	leaq	-112(%rbp), %rax	#, tmp136
	leaq	.LC20(%rip), %rdx	#, tmp137
	movq	%rdx, %rsi	# tmp137,
	movq	%rax, %rdi	# tmp136,
	call	strcmp@PLT	#
# problem90.c:41:     assert(strcmp(encrypted, "hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl") == 0);
	testl	%eax, %eax	# _7
	je	.L11	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp138
	movq	%rax, %rcx	# tmp138,
	movl	$41, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp139
	movq	%rax, %rsi	# tmp139,
	leaq	.LC21(%rip), %rax	#, tmp140
	movq	%rax, %rdi	# tmp140,
	call	__assert_fail@PLT	#
.L11:
# problem90.c:43:     func0("a", encrypted);
	leaq	-112(%rbp), %rax	#, tmp141
	movq	%rax, %rsi	# tmp141,
	leaq	.LC22(%rip), %rax	#, tmp142
	movq	%rax, %rdi	# tmp142,
	call	func0	#
# problem90.c:44:     assert(strcmp(encrypted, "e") == 0);
	leaq	-112(%rbp), %rax	#, tmp143
	leaq	.LC23(%rip), %rdx	#, tmp144
	movq	%rdx, %rsi	# tmp144,
	movq	%rax, %rdi	# tmp143,
	call	strcmp@PLT	#
# problem90.c:44:     assert(strcmp(encrypted, "e") == 0);
	testl	%eax, %eax	# _8
	je	.L12	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp145
	movq	%rax, %rcx	# tmp145,
	movl	$44, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp146
	movq	%rax, %rsi	# tmp146,
	leaq	.LC24(%rip), %rax	#, tmp147
	movq	%rax, %rdi	# tmp147,
	call	__assert_fail@PLT	#
.L12:
# problem90.c:46:     return 0;
	movl	$0, %eax	#, _26
# problem90.c:47: }
	movq	-8(%rbp), %rdx	# D.3448, tmp150
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp150
	je	.L14	#,
	call	__stack_chk_fail@PLT	#
.L14:
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
