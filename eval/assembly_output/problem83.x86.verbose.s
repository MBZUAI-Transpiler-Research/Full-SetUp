	.file	"problem83.c"
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
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# str, str
# problem83.c:6:     int l = strlen(str);
	movq	-24(%rbp), %rax	# str, tmp87
	movq	%rax, %rdi	# tmp87,
	call	strlen@PLT	#
# problem83.c:6:     int l = strlen(str);
	movl	%eax, -4(%rbp)	# _1, l
# problem83.c:7:     if (l < 2) return false;
	cmpl	$1, -4(%rbp)	#, l
	jg	.L2	#,
# problem83.c:7:     if (l < 2) return false;
	movl	$0, %eax	#, _5
# problem83.c:7:     if (l < 2) return false;
	jmp	.L3	#
.L2:
# problem83.c:8:     for (int i = 2; i * i <= l; i++) {
	movl	$2, -8(%rbp)	#, i
# problem83.c:8:     for (int i = 2; i * i <= l; i++) {
	jmp	.L4	#
.L6:
# problem83.c:9:         if (l % i == 0) return false;
	movl	-4(%rbp), %eax	# l, tmp88
	cltd
	idivl	-8(%rbp)	# i
	movl	%edx, %eax	# tmp89, _2
# problem83.c:9:         if (l % i == 0) return false;
	testl	%eax, %eax	# _2
	jne	.L5	#,
# problem83.c:9:         if (l % i == 0) return false;
	movl	$0, %eax	#, _5
# problem83.c:9:         if (l % i == 0) return false;
	jmp	.L3	#
.L5:
# problem83.c:8:     for (int i = 2; i * i <= l; i++) {
	addl	$1, -8(%rbp)	#, i
.L4:
# problem83.c:8:     for (int i = 2; i * i <= l; i++) {
	movl	-8(%rbp), %eax	# i, tmp91
	imull	%eax, %eax	# tmp91, _3
# problem83.c:8:     for (int i = 2; i * i <= l; i++) {
	cmpl	%eax, -4(%rbp)	# _3, l
	jge	.L6	#,
# problem83.c:11:     return true;
	movl	$1, %eax	#, _5
.L3:
# problem83.c:12: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"Hello"
.LC1:
	.string	"problem83.c"
.LC2:
	.string	"func0(\"Hello\") == true"
.LC3:
	.string	"abcdcba"
.LC4:
	.string	"func0(\"abcdcba\") == true"
.LC5:
	.string	"kittens"
.LC6:
	.string	"func0(\"kittens\") == true"
.LC7:
	.string	"orange"
.LC8:
	.string	"func0(\"orange\") == false"
.LC9:
	.string	"wow"
.LC10:
	.string	"func0(\"wow\") == true"
.LC11:
	.string	"world"
.LC12:
	.string	"func0(\"world\") == true"
.LC13:
	.string	"MadaM"
.LC14:
	.string	"func0(\"MadaM\") == true"
.LC15:
	.string	"Wow"
.LC16:
	.string	"func0(\"Wow\") == true"
.LC17:
	.string	""
.LC18:
	.string	"func0(\"\") == false"
.LC19:
	.string	"HI"
.LC20:
	.string	"func0(\"HI\") == true"
.LC21:
	.string	"go"
.LC22:
	.string	"func0(\"go\") == true"
.LC23:
	.string	"gogo"
.LC24:
	.string	"func0(\"gogo\") == false"
.LC25:
	.string	"aaaaaaaaaaaaaaa"
	.align 8
.LC26:
	.string	"func0(\"aaaaaaaaaaaaaaa\") == false"
.LC27:
	.string	"Madam"
.LC28:
	.string	"func0(\"Madam\") == true"
.LC29:
	.string	"M"
.LC30:
	.string	"func0(\"M\") == false"
.LC31:
	.string	"0"
.LC32:
	.string	"func0(\"0\") == false"
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
# problem83.c:20:     assert(func0("Hello") == true);
	leaq	.LC0(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	func0	#
# problem83.c:20:     assert(func0("Hello") == true);
	testb	%al, %al	# _1
	jne	.L8	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp107
	movq	%rax, %rcx	# tmp107,
	movl	$20, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp108
	movq	%rax, %rsi	# tmp108,
	leaq	.LC2(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	__assert_fail@PLT	#
.L8:
# problem83.c:21:     assert(func0("abcdcba") == true);
	leaq	.LC3(%rip), %rax	#, tmp110
	movq	%rax, %rdi	# tmp110,
	call	func0	#
# problem83.c:21:     assert(func0("abcdcba") == true);
	testb	%al, %al	# _2
	jne	.L9	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp111
	movq	%rax, %rcx	# tmp111,
	movl	$21, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp112
	movq	%rax, %rsi	# tmp112,
	leaq	.LC4(%rip), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	call	__assert_fail@PLT	#
.L9:
# problem83.c:22:     assert(func0("kittens") == true);
	leaq	.LC5(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	func0	#
# problem83.c:22:     assert(func0("kittens") == true);
	testb	%al, %al	# _3
	jne	.L10	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp115
	movq	%rax, %rcx	# tmp115,
	movl	$22, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp116
	movq	%rax, %rsi	# tmp116,
	leaq	.LC6(%rip), %rax	#, tmp117
	movq	%rax, %rdi	# tmp117,
	call	__assert_fail@PLT	#
.L10:
# problem83.c:23:     assert(func0("orange") == false);
	leaq	.LC7(%rip), %rax	#, tmp118
	movq	%rax, %rdi	# tmp118,
	call	func0	#
# problem83.c:23:     assert(func0("orange") == false);
	xorl	$1, %eax	#, _5
	testb	%al, %al	# _5
	jne	.L11	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp119
	movq	%rax, %rcx	# tmp119,
	movl	$23, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp120
	movq	%rax, %rsi	# tmp120,
	leaq	.LC8(%rip), %rax	#, tmp121
	movq	%rax, %rdi	# tmp121,
	call	__assert_fail@PLT	#
.L11:
# problem83.c:24:     assert(func0("wow") == true);
	leaq	.LC9(%rip), %rax	#, tmp122
	movq	%rax, %rdi	# tmp122,
	call	func0	#
# problem83.c:24:     assert(func0("wow") == true);
	testb	%al, %al	# _6
	jne	.L12	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp123
	movq	%rax, %rcx	# tmp123,
	movl	$24, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp124
	movq	%rax, %rsi	# tmp124,
	leaq	.LC10(%rip), %rax	#, tmp125
	movq	%rax, %rdi	# tmp125,
	call	__assert_fail@PLT	#
.L12:
# problem83.c:25:     assert(func0("world") == true);
	leaq	.LC11(%rip), %rax	#, tmp126
	movq	%rax, %rdi	# tmp126,
	call	func0	#
# problem83.c:25:     assert(func0("world") == true);
	testb	%al, %al	# _7
	jne	.L13	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp127
	movq	%rax, %rcx	# tmp127,
	movl	$25, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp128
	movq	%rax, %rsi	# tmp128,
	leaq	.LC12(%rip), %rax	#, tmp129
	movq	%rax, %rdi	# tmp129,
	call	__assert_fail@PLT	#
.L13:
# problem83.c:26:     assert(func0("MadaM") == true);
	leaq	.LC13(%rip), %rax	#, tmp130
	movq	%rax, %rdi	# tmp130,
	call	func0	#
# problem83.c:26:     assert(func0("MadaM") == true);
	testb	%al, %al	# _8
	jne	.L14	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp131
	movq	%rax, %rcx	# tmp131,
	movl	$26, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp132
	movq	%rax, %rsi	# tmp132,
	leaq	.LC14(%rip), %rax	#, tmp133
	movq	%rax, %rdi	# tmp133,
	call	__assert_fail@PLT	#
.L14:
# problem83.c:27:     assert(func0("Wow") == true);
	leaq	.LC15(%rip), %rax	#, tmp134
	movq	%rax, %rdi	# tmp134,
	call	func0	#
# problem83.c:27:     assert(func0("Wow") == true);
	testb	%al, %al	# _9
	jne	.L15	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp135
	movq	%rax, %rcx	# tmp135,
	movl	$27, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp136
	movq	%rax, %rsi	# tmp136,
	leaq	.LC16(%rip), %rax	#, tmp137
	movq	%rax, %rdi	# tmp137,
	call	__assert_fail@PLT	#
.L15:
# problem83.c:28:     assert(func0("") == false);
	leaq	.LC17(%rip), %rax	#, tmp138
	movq	%rax, %rdi	# tmp138,
	call	func0	#
# problem83.c:28:     assert(func0("") == false);
	xorl	$1, %eax	#, _11
	testb	%al, %al	# _11
	jne	.L16	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp139
	movq	%rax, %rcx	# tmp139,
	movl	$28, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp140
	movq	%rax, %rsi	# tmp140,
	leaq	.LC18(%rip), %rax	#, tmp141
	movq	%rax, %rdi	# tmp141,
	call	__assert_fail@PLT	#
.L16:
# problem83.c:29:     assert(func0("HI") == true);
	leaq	.LC19(%rip), %rax	#, tmp142
	movq	%rax, %rdi	# tmp142,
	call	func0	#
# problem83.c:29:     assert(func0("HI") == true);
	testb	%al, %al	# _12
	jne	.L17	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp143
	movq	%rax, %rcx	# tmp143,
	movl	$29, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp144
	movq	%rax, %rsi	# tmp144,
	leaq	.LC20(%rip), %rax	#, tmp145
	movq	%rax, %rdi	# tmp145,
	call	__assert_fail@PLT	#
.L17:
# problem83.c:30:     assert(func0("go") == true);
	leaq	.LC21(%rip), %rax	#, tmp146
	movq	%rax, %rdi	# tmp146,
	call	func0	#
# problem83.c:30:     assert(func0("go") == true);
	testb	%al, %al	# _13
	jne	.L18	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp147
	movq	%rax, %rcx	# tmp147,
	movl	$30, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp148
	movq	%rax, %rsi	# tmp148,
	leaq	.LC22(%rip), %rax	#, tmp149
	movq	%rax, %rdi	# tmp149,
	call	__assert_fail@PLT	#
.L18:
# problem83.c:31:     assert(func0("gogo") == false);
	leaq	.LC23(%rip), %rax	#, tmp150
	movq	%rax, %rdi	# tmp150,
	call	func0	#
# problem83.c:31:     assert(func0("gogo") == false);
	xorl	$1, %eax	#, _15
	testb	%al, %al	# _15
	jne	.L19	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp151
	movq	%rax, %rcx	# tmp151,
	movl	$31, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp152
	movq	%rax, %rsi	# tmp152,
	leaq	.LC24(%rip), %rax	#, tmp153
	movq	%rax, %rdi	# tmp153,
	call	__assert_fail@PLT	#
.L19:
# problem83.c:32:     assert(func0("aaaaaaaaaaaaaaa") == false);
	leaq	.LC25(%rip), %rax	#, tmp154
	movq	%rax, %rdi	# tmp154,
	call	func0	#
# problem83.c:32:     assert(func0("aaaaaaaaaaaaaaa") == false);
	xorl	$1, %eax	#, _17
	testb	%al, %al	# _17
	jne	.L20	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp155
	movq	%rax, %rcx	# tmp155,
	movl	$32, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp156
	movq	%rax, %rsi	# tmp156,
	leaq	.LC26(%rip), %rax	#, tmp157
	movq	%rax, %rdi	# tmp157,
	call	__assert_fail@PLT	#
.L20:
# problem83.c:33:     assert(func0("Madam") == true);
	leaq	.LC27(%rip), %rax	#, tmp158
	movq	%rax, %rdi	# tmp158,
	call	func0	#
# problem83.c:33:     assert(func0("Madam") == true);
	testb	%al, %al	# _18
	jne	.L21	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp159
	movq	%rax, %rcx	# tmp159,
	movl	$33, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp160
	movq	%rax, %rsi	# tmp160,
	leaq	.LC28(%rip), %rax	#, tmp161
	movq	%rax, %rdi	# tmp161,
	call	__assert_fail@PLT	#
.L21:
# problem83.c:34:     assert(func0("M") == false);
	leaq	.LC29(%rip), %rax	#, tmp162
	movq	%rax, %rdi	# tmp162,
	call	func0	#
# problem83.c:34:     assert(func0("M") == false);
	xorl	$1, %eax	#, _20
	testb	%al, %al	# _20
	jne	.L22	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp163
	movq	%rax, %rcx	# tmp163,
	movl	$34, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp164
	movq	%rax, %rsi	# tmp164,
	leaq	.LC30(%rip), %rax	#, tmp165
	movq	%rax, %rdi	# tmp165,
	call	__assert_fail@PLT	#
.L22:
# problem83.c:35:     assert(func0("0") == false);
	leaq	.LC31(%rip), %rax	#, tmp166
	movq	%rax, %rdi	# tmp166,
	call	func0	#
# problem83.c:35:     assert(func0("0") == false);
	xorl	$1, %eax	#, _22
	testb	%al, %al	# _22
	jne	.L23	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp167
	movq	%rax, %rcx	# tmp167,
	movl	$35, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp168
	movq	%rax, %rsi	# tmp168,
	leaq	.LC32(%rip), %rax	#, tmp169
	movq	%rax, %rdi	# tmp169,
	call	__assert_fail@PLT	#
.L23:
# problem83.c:37:     return 0;
	movl	$0, %eax	#, _56
# problem83.c:38: }
	popq	%rbp	#
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
