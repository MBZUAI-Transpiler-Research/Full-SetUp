	.file	"problem162.c"
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
	movq	%rdi, -40(%rbp)	# s, s
# problem162.c:6:     int nletter = 0;
	movl	$0, -16(%rbp)	#, nletter
# problem162.c:7:     int length = strlen(s);
	movq	-40(%rbp), %rax	# s, tmp153
	movq	%rax, %rdi	# tmp153,
	call	strlen@PLT	#
# problem162.c:7:     int length = strlen(s);
	movl	%eax, -4(%rbp)	# _1, length
# problem162.c:8:     for (int i = 0; i < length; i++) {
	movl	$0, -12(%rbp)	#, i
# problem162.c:8:     for (int i = 0; i < length; i++) {
	jmp	.L2	#
.L6:
# problem162.c:9:         if (isalpha((unsigned char)s[i])) {
	call	__ctype_b_loc@PLT	#
	movq	(%rax), %rdx	# *_2, _3
	movl	-12(%rbp), %eax	# i, tmp154
	movslq	%eax, %rcx	# tmp154, _4
	movq	-40(%rbp), %rax	# s, tmp155
	addq	%rcx, %rax	# _4, _5
	movzbl	(%rax), %eax	# *_5, _6
	movzbl	%al, %eax	# _7, _8
	addq	%rax, %rax	# _9
	addq	%rdx, %rax	# _3, _10
	movzwl	(%rax), %eax	# *_10, _11
	movzwl	%ax, %eax	# _11, _12
	andl	$1024, %eax	#, _13
# problem162.c:9:         if (isalpha((unsigned char)s[i])) {
	testl	%eax, %eax	# _13
	je	.L3	#,
# problem162.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	call	__ctype_b_loc@PLT	#
	movq	(%rax), %rdx	# *_14, _15
	movl	-12(%rbp), %eax	# i, tmp156
	movslq	%eax, %rcx	# tmp156, _16
	movq	-40(%rbp), %rax	# s, tmp157
	addq	%rcx, %rax	# _16, _17
	movzbl	(%rax), %eax	# *_17, _18
	movzbl	%al, %eax	# _19, _20
	addq	%rax, %rax	# _21
	addq	%rdx, %rax	# _15, _22
	movzwl	(%rax), %eax	# *_22, _23
	movzwl	%ax, %eax	# _23, _24
	andl	$256, %eax	#, _25
# problem162.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	testl	%eax, %eax	# _25
	je	.L4	#,
# problem162.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	movl	-12(%rbp), %eax	# i, tmp158
	movslq	%eax, %rdx	# tmp158, _26
	movq	-40(%rbp), %rax	# s, tmp159
	addq	%rdx, %rax	# _26, _27
	movzbl	(%rax), %eax	# *_27, _28
# problem162.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	movzbl	%al, %eax	# _29, _30
	movl	%eax, %edi	# _30,
	call	tolower@PLT	#
	movl	%eax, %edx	#, _31
# problem162.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	movl	-12(%rbp), %eax	# i, tmp160
	movslq	%eax, %rcx	# tmp160, _32
	movq	-40(%rbp), %rax	# s, tmp161
	addq	%rcx, %rax	# _32, _33
# problem162.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	movb	%dl, (%rax)	# _34, *_33
	jmp	.L5	#
.L4:
# problem162.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	call	__ctype_b_loc@PLT	#
	movq	(%rax), %rdx	# *_35, _36
	movl	-12(%rbp), %eax	# i, tmp162
	movslq	%eax, %rcx	# tmp162, _37
	movq	-40(%rbp), %rax	# s, tmp163
	addq	%rcx, %rax	# _37, _38
	movzbl	(%rax), %eax	# *_38, _39
	movzbl	%al, %eax	# _40, _41
	addq	%rax, %rax	# _42
	addq	%rdx, %rax	# _36, _43
	movzwl	(%rax), %eax	# *_43, _44
	movzwl	%ax, %eax	# _44, _45
	andl	$512, %eax	#, _46
# problem162.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	testl	%eax, %eax	# _46
	je	.L5	#,
# problem162.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	movl	-12(%rbp), %eax	# i, tmp164
	movslq	%eax, %rdx	# tmp164, _47
	movq	-40(%rbp), %rax	# s, tmp165
	addq	%rdx, %rax	# _47, _48
	movzbl	(%rax), %eax	# *_48, _49
# problem162.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	movzbl	%al, %eax	# _50, _51
	movl	%eax, %edi	# _51,
	call	toupper@PLT	#
	movl	%eax, %edx	#, _52
# problem162.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	movl	-12(%rbp), %eax	# i, tmp166
	movslq	%eax, %rcx	# tmp166, _53
	movq	-40(%rbp), %rax	# s, tmp167
	addq	%rcx, %rax	# _53, _54
# problem162.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	movb	%dl, (%rax)	# _55, *_54
	jmp	.L5	#
.L3:
# problem162.c:13:             nletter += 1;
	addl	$1, -16(%rbp)	#, nletter
.L5:
# problem162.c:8:     for (int i = 0; i < length; i++) {
	addl	$1, -12(%rbp)	#, i
.L2:
# problem162.c:8:     for (int i = 0; i < length; i++) {
	movl	-12(%rbp), %eax	# i, tmp168
	cmpl	-4(%rbp), %eax	# length, tmp168
	jl	.L6	#,
# problem162.c:16:     if (nletter == length) {
	movl	-16(%rbp), %eax	# nletter, tmp169
	cmpl	-4(%rbp), %eax	# length, tmp169
	jne	.L7	#,
# problem162.c:17:         for (int i = 0; i < length / 2; i++) {
	movl	$0, -8(%rbp)	#, i
# problem162.c:17:         for (int i = 0; i < length / 2; i++) {
	jmp	.L8	#
.L9:
# problem162.c:18:             char temp = s[i];
	movl	-8(%rbp), %eax	# i, tmp170
	movslq	%eax, %rdx	# tmp170, _56
	movq	-40(%rbp), %rax	# s, tmp171
	addq	%rdx, %rax	# _56, _57
# problem162.c:18:             char temp = s[i];
	movzbl	(%rax), %eax	# *_57, tmp172
	movb	%al, -17(%rbp)	# tmp172, temp
# problem162.c:19:             s[i] = s[length - i - 1];
	movl	-4(%rbp), %eax	# length, tmp173
	subl	-8(%rbp), %eax	# i, _58
	cltq
# problem162.c:19:             s[i] = s[length - i - 1];
	leaq	-1(%rax), %rdx	#, _60
	movq	-40(%rbp), %rax	# s, tmp174
	addq	%rdx, %rax	# _60, _61
# problem162.c:19:             s[i] = s[length - i - 1];
	movl	-8(%rbp), %edx	# i, tmp175
	movslq	%edx, %rcx	# tmp175, _62
	movq	-40(%rbp), %rdx	# s, tmp176
	addq	%rcx, %rdx	# _62, _63
# problem162.c:19:             s[i] = s[length - i - 1];
	movzbl	(%rax), %eax	# *_61, _64
# problem162.c:19:             s[i] = s[length - i - 1];
	movb	%al, (%rdx)	# _64, *_63
# problem162.c:20:             s[length - i - 1] = temp;
	movl	-4(%rbp), %eax	# length, tmp177
	subl	-8(%rbp), %eax	# i, _65
	cltq
# problem162.c:20:             s[length - i - 1] = temp;
	leaq	-1(%rax), %rdx	#, _67
	movq	-40(%rbp), %rax	# s, tmp178
	addq	%rax, %rdx	# tmp178, _68
# problem162.c:20:             s[length - i - 1] = temp;
	movzbl	-17(%rbp), %eax	# temp, tmp179
	movb	%al, (%rdx)	# tmp179, *_68
# problem162.c:17:         for (int i = 0; i < length / 2; i++) {
	addl	$1, -8(%rbp)	#, i
.L8:
# problem162.c:17:         for (int i = 0; i < length / 2; i++) {
	movl	-4(%rbp), %eax	# length, tmp180
	movl	%eax, %edx	# tmp180, tmp181
	shrl	$31, %edx	#, tmp181
	addl	%edx, %eax	# tmp181, tmp182
	sarl	%eax	# tmp183
# problem162.c:17:         for (int i = 0; i < length / 2; i++) {
	cmpl	%eax, -8(%rbp)	# _69, i
	jl	.L9	#,
.L7:
# problem162.c:23:     return s;
	movq	-40(%rbp), %rax	# s, _88
# problem162.c:24: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"aSdF"
.LC1:
	.string	"problem162.c"
	.align 8
.LC2:
	.string	"strcmp(func0(test1), \"aSdF\") == 0"
.LC3:
	.string	"4321"
	.align 8
.LC4:
	.string	"strcmp(func0(test2), \"4321\") == 0"
.LC5:
	.string	"AB"
	.align 8
.LC6:
	.string	"strcmp(func0(test3), \"AB\") == 0"
.LC7:
	.string	"#A@c"
	.align 8
.LC8:
	.string	"strcmp(func0(test4), \"#A@c\") == 0"
.LC9:
	.string	"#aSDFw^45"
	.align 8
.LC10:
	.string	"strcmp(func0(test5), \"#aSDFw^45\") == 0"
.LC11:
	.string	"2@6#"
	.align 8
.LC12:
	.string	"strcmp(func0(test6), \"2@6#\") == 0"
.LC13:
	.string	"#$A^d"
	.align 8
.LC14:
	.string	"strcmp(func0(test7), \"#$A^d\") == 0"
.LC15:
	.string	"#CCC"
	.align 8
.LC16:
	.string	"strcmp(func0(test8), \"#CCC\") == 0"
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
	subq	$64, %rsp	#,
# problem162.c:31: int main(){
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp141
	movq	%rax, -8(%rbp)	# tmp141, D.2717
	xorl	%eax, %eax	# tmp141
# problem162.c:32:     char test1[] = "AsDf";
	movl	$1715761985, -49(%rbp)	#, test1
	movb	$0, -45(%rbp)	#, test1
# problem162.c:33:     assert(strcmp(func0(test1), "aSdF") == 0);
	leaq	-49(%rbp), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	func0	#
	movq	%rax, %rdx	#, _1
	leaq	.LC0(%rip), %rax	#, tmp101
	movq	%rax, %rsi	# tmp101,
	movq	%rdx, %rdi	# _1,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _2
	je	.L12	#,
# problem162.c:33:     assert(strcmp(func0(test1), "aSdF") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp102
	movq	%rax, %rcx	# tmp102,
	movl	$33, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp103
	movq	%rax, %rsi	# tmp103,
	leaq	.LC2(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	call	__assert_fail@PLT	#
.L12:
# problem162.c:35:     char test2[] = "1234";
	movl	$875770417, -44(%rbp)	#, test2
	movb	$0, -40(%rbp)	#, test2
# problem162.c:36:     assert(strcmp(func0(test2), "4321") == 0);
	leaq	-44(%rbp), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	func0	#
	movq	%rax, %rdx	#, _3
	leaq	.LC3(%rip), %rax	#, tmp106
	movq	%rax, %rsi	# tmp106,
	movq	%rdx, %rdi	# _3,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _4
	je	.L13	#,
# problem162.c:36:     assert(strcmp(func0(test2), "4321") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp107
	movq	%rax, %rcx	# tmp107,
	movl	$36, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp108
	movq	%rax, %rsi	# tmp108,
	leaq	.LC4(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	__assert_fail@PLT	#
.L13:
# problem162.c:38:     char test3[] = "ab";
	movw	$25185, -52(%rbp)	#, test3
	movb	$0, -50(%rbp)	#, test3
# problem162.c:39:     assert(strcmp(func0(test3), "AB") == 0);
	leaq	-52(%rbp), %rax	#, tmp110
	movq	%rax, %rdi	# tmp110,
	call	func0	#
	movq	%rax, %rdx	#, _5
	leaq	.LC5(%rip), %rax	#, tmp111
	movq	%rax, %rsi	# tmp111,
	movq	%rdx, %rdi	# _5,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _6
	je	.L14	#,
# problem162.c:39:     assert(strcmp(func0(test3), "AB") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp112
	movq	%rax, %rcx	# tmp112,
	movl	$39, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp113
	movq	%rax, %rsi	# tmp113,
	leaq	.LC6(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	__assert_fail@PLT	#
.L14:
# problem162.c:41:     char test4[] = "#a@C";
	movl	$1128292643, -39(%rbp)	#, test4
	movb	$0, -35(%rbp)	#, test4
# problem162.c:42:     assert(strcmp(func0(test4), "#A@c") == 0);
	leaq	-39(%rbp), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	func0	#
	movq	%rax, %rdx	#, _7
	leaq	.LC7(%rip), %rax	#, tmp116
	movq	%rax, %rsi	# tmp116,
	movq	%rdx, %rdi	# _7,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _8
	je	.L15	#,
# problem162.c:42:     assert(strcmp(func0(test4), "#A@c") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp117
	movq	%rax, %rcx	# tmp117,
	movl	$42, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp118
	movq	%rax, %rsi	# tmp118,
	leaq	.LC8(%rip), %rax	#, tmp119
	movq	%rax, %rdi	# tmp119,
	call	__assert_fail@PLT	#
.L15:
# problem162.c:44:     char test5[] = "#AsdfW^45";
	movabsq	$3773549635066609955, %rax	#, tmp144
	movq	%rax, -18(%rbp)	# tmp144, test5
	movw	$53, -10(%rbp)	#, test5
# problem162.c:45:     assert(strcmp(func0(test5), "#aSDFw^45") == 0);
	leaq	-18(%rbp), %rax	#, tmp120
	movq	%rax, %rdi	# tmp120,
	call	func0	#
	movq	%rax, %rdx	#, _9
	leaq	.LC9(%rip), %rax	#, tmp121
	movq	%rax, %rsi	# tmp121,
	movq	%rdx, %rdi	# _9,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _10
	je	.L16	#,
# problem162.c:45:     assert(strcmp(func0(test5), "#aSDFw^45") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp122
	movq	%rax, %rcx	# tmp122,
	movl	$45, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp123
	movq	%rax, %rsi	# tmp123,
	leaq	.LC10(%rip), %rax	#, tmp124
	movq	%rax, %rdi	# tmp124,
	call	__assert_fail@PLT	#
.L16:
# problem162.c:47:     char test6[] = "#6@2";
	movl	$843068963, -34(%rbp)	#, test6
	movb	$0, -30(%rbp)	#, test6
# problem162.c:48:     assert(strcmp(func0(test6), "2@6#") == 0);
	leaq	-34(%rbp), %rax	#, tmp125
	movq	%rax, %rdi	# tmp125,
	call	func0	#
	movq	%rax, %rdx	#, _11
	leaq	.LC11(%rip), %rax	#, tmp126
	movq	%rax, %rsi	# tmp126,
	movq	%rdx, %rdi	# _11,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _12
	je	.L17	#,
# problem162.c:48:     assert(strcmp(func0(test6), "2@6#") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp127
	movq	%rax, %rcx	# tmp127,
	movl	$48, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp128
	movq	%rax, %rsi	# tmp128,
	leaq	.LC12(%rip), %rax	#, tmp129
	movq	%rax, %rdi	# tmp129,
	call	__assert_fail@PLT	#
.L17:
# problem162.c:50:     char test7[] = "#$a^D";
	movl	$1583424547, -24(%rbp)	#, test7
	movw	$68, -20(%rbp)	#, test7
# problem162.c:51:     assert(strcmp(func0(test7), "#$A^d") == 0);
	leaq	-24(%rbp), %rax	#, tmp130
	movq	%rax, %rdi	# tmp130,
	call	func0	#
	movq	%rax, %rdx	#, _13
	leaq	.LC13(%rip), %rax	#, tmp131
	movq	%rax, %rsi	# tmp131,
	movq	%rdx, %rdi	# _13,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _14
	je	.L18	#,
# problem162.c:51:     assert(strcmp(func0(test7), "#$A^d") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp132
	movq	%rax, %rcx	# tmp132,
	movl	$51, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp133
	movq	%rax, %rsi	# tmp133,
	leaq	.LC14(%rip), %rax	#, tmp134
	movq	%rax, %rdi	# tmp134,
	call	__assert_fail@PLT	#
.L18:
# problem162.c:53:     char test8[] = "#ccc";
	movl	$1667457827, -29(%rbp)	#, test8
	movb	$0, -25(%rbp)	#, test8
# problem162.c:54:     assert(strcmp(func0(test8), "#CCC") == 0);
	leaq	-29(%rbp), %rax	#, tmp135
	movq	%rax, %rdi	# tmp135,
	call	func0	#
	movq	%rax, %rdx	#, _15
	leaq	.LC15(%rip), %rax	#, tmp136
	movq	%rax, %rsi	# tmp136,
	movq	%rdx, %rdi	# _15,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _16
	je	.L19	#,
# problem162.c:54:     assert(strcmp(func0(test8), "#CCC") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp137
	movq	%rax, %rcx	# tmp137,
	movl	$54, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp138
	movq	%rax, %rsi	# tmp138,
	leaq	.LC16(%rip), %rax	#, tmp139
	movq	%rax, %rdi	# tmp139,
	call	__assert_fail@PLT	#
.L19:
# problem162.c:56:     return 0;
	movl	$0, %eax	#, _42
# problem162.c:57: }
	movq	-8(%rbp), %rdx	# D.2717, tmp142
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp142
	je	.L21	#,
	call	__stack_chk_fail@PLT	#
.L21:
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
