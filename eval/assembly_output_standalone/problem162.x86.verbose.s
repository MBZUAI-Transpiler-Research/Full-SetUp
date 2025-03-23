	.file	"code.c"
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
# eval/problem162//code.c:6:     int nletter = 0;
	movl	$0, -16(%rbp)	#, nletter
# eval/problem162//code.c:7:     int length = strlen(s);
	movq	-40(%rbp), %rax	# s, tmp153
	movq	%rax, %rdi	# tmp153,
	call	strlen@PLT	#
# eval/problem162//code.c:7:     int length = strlen(s);
	movl	%eax, -4(%rbp)	# _1, length
# eval/problem162//code.c:8:     for (int i = 0; i < length; i++) {
	movl	$0, -12(%rbp)	#, i
# eval/problem162//code.c:8:     for (int i = 0; i < length; i++) {
	jmp	.L2	#
.L6:
# eval/problem162//code.c:9:         if (isalpha((unsigned char)s[i])) {
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
# eval/problem162//code.c:9:         if (isalpha((unsigned char)s[i])) {
	testl	%eax, %eax	# _13
	je	.L3	#,
# eval/problem162//code.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
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
# eval/problem162//code.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	testl	%eax, %eax	# _25
	je	.L4	#,
# eval/problem162//code.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	movl	-12(%rbp), %eax	# i, tmp158
	movslq	%eax, %rdx	# tmp158, _26
	movq	-40(%rbp), %rax	# s, tmp159
	addq	%rdx, %rax	# _26, _27
	movzbl	(%rax), %eax	# *_27, _28
# eval/problem162//code.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	movzbl	%al, %eax	# _29, _30
	movl	%eax, %edi	# _30,
	call	tolower@PLT	#
	movl	%eax, %edx	#, _31
# eval/problem162//code.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	movl	-12(%rbp), %eax	# i, tmp160
	movslq	%eax, %rcx	# tmp160, _32
	movq	-40(%rbp), %rax	# s, tmp161
	addq	%rcx, %rax	# _32, _33
# eval/problem162//code.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	movb	%dl, (%rax)	# _34, *_33
	jmp	.L5	#
.L4:
# eval/problem162//code.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
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
# eval/problem162//code.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	testl	%eax, %eax	# _46
	je	.L5	#,
# eval/problem162//code.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	movl	-12(%rbp), %eax	# i, tmp164
	movslq	%eax, %rdx	# tmp164, _47
	movq	-40(%rbp), %rax	# s, tmp165
	addq	%rdx, %rax	# _47, _48
	movzbl	(%rax), %eax	# *_48, _49
# eval/problem162//code.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	movzbl	%al, %eax	# _50, _51
	movl	%eax, %edi	# _51,
	call	toupper@PLT	#
	movl	%eax, %edx	#, _52
# eval/problem162//code.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	movl	-12(%rbp), %eax	# i, tmp166
	movslq	%eax, %rcx	# tmp166, _53
	movq	-40(%rbp), %rax	# s, tmp167
	addq	%rcx, %rax	# _53, _54
# eval/problem162//code.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	movb	%dl, (%rax)	# _55, *_54
	jmp	.L5	#
.L3:
# eval/problem162//code.c:13:             nletter += 1;
	addl	$1, -16(%rbp)	#, nletter
.L5:
# eval/problem162//code.c:8:     for (int i = 0; i < length; i++) {
	addl	$1, -12(%rbp)	#, i
.L2:
# eval/problem162//code.c:8:     for (int i = 0; i < length; i++) {
	movl	-12(%rbp), %eax	# i, tmp168
	cmpl	-4(%rbp), %eax	# length, tmp168
	jl	.L6	#,
# eval/problem162//code.c:16:     if (nletter == length) {
	movl	-16(%rbp), %eax	# nletter, tmp169
	cmpl	-4(%rbp), %eax	# length, tmp169
	jne	.L7	#,
# eval/problem162//code.c:17:         for (int i = 0; i < length / 2; i++) {
	movl	$0, -8(%rbp)	#, i
# eval/problem162//code.c:17:         for (int i = 0; i < length / 2; i++) {
	jmp	.L8	#
.L9:
# eval/problem162//code.c:18:             char temp = s[i];
	movl	-8(%rbp), %eax	# i, tmp170
	movslq	%eax, %rdx	# tmp170, _56
	movq	-40(%rbp), %rax	# s, tmp171
	addq	%rdx, %rax	# _56, _57
# eval/problem162//code.c:18:             char temp = s[i];
	movzbl	(%rax), %eax	# *_57, tmp172
	movb	%al, -17(%rbp)	# tmp172, temp
# eval/problem162//code.c:19:             s[i] = s[length - i - 1];
	movl	-4(%rbp), %eax	# length, tmp173
	subl	-8(%rbp), %eax	# i, _58
	cltq
# eval/problem162//code.c:19:             s[i] = s[length - i - 1];
	leaq	-1(%rax), %rdx	#, _60
	movq	-40(%rbp), %rax	# s, tmp174
	addq	%rdx, %rax	# _60, _61
# eval/problem162//code.c:19:             s[i] = s[length - i - 1];
	movl	-8(%rbp), %edx	# i, tmp175
	movslq	%edx, %rcx	# tmp175, _62
	movq	-40(%rbp), %rdx	# s, tmp176
	addq	%rcx, %rdx	# _62, _63
# eval/problem162//code.c:19:             s[i] = s[length - i - 1];
	movzbl	(%rax), %eax	# *_61, _64
# eval/problem162//code.c:19:             s[i] = s[length - i - 1];
	movb	%al, (%rdx)	# _64, *_63
# eval/problem162//code.c:20:             s[length - i - 1] = temp;
	movl	-4(%rbp), %eax	# length, tmp177
	subl	-8(%rbp), %eax	# i, _65
	cltq
# eval/problem162//code.c:20:             s[length - i - 1] = temp;
	leaq	-1(%rax), %rdx	#, _67
	movq	-40(%rbp), %rax	# s, tmp178
	addq	%rax, %rdx	# tmp178, _68
# eval/problem162//code.c:20:             s[length - i - 1] = temp;
	movzbl	-17(%rbp), %eax	# temp, tmp179
	movb	%al, (%rdx)	# tmp179, *_68
# eval/problem162//code.c:17:         for (int i = 0; i < length / 2; i++) {
	addl	$1, -8(%rbp)	#, i
.L8:
# eval/problem162//code.c:17:         for (int i = 0; i < length / 2; i++) {
	movl	-4(%rbp), %eax	# length, tmp180
	movl	%eax, %edx	# tmp180, tmp181
	shrl	$31, %edx	#, tmp181
	addl	%edx, %eax	# tmp181, tmp182
	sarl	%eax	# tmp183
# eval/problem162//code.c:17:         for (int i = 0; i < length / 2; i++) {
	cmpl	%eax, -8(%rbp)	# _69, i
	jl	.L9	#,
.L7:
# eval/problem162//code.c:23:     return s;
	movq	-40(%rbp), %rax	# s, _88
# eval/problem162//code.c:24: }
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
