	.file	"problem120.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"Yes"
.LC1:
	.string	"No"
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
	movq	%rdi, -40(%rbp)	# s1, s1
	movq	%rsi, -48(%rbp)	# s2, s2
# problem120.c:5:     int count = 0;
	movl	$0, -20(%rbp)	#, count
# problem120.c:6:     int len1 = strlen(s1);
	movq	-40(%rbp), %rax	# s1, tmp110
	movq	%rax, %rdi	# tmp110,
	call	strlen@PLT	#
# problem120.c:6:     int len1 = strlen(s1);
	movl	%eax, -8(%rbp)	# _1, len1
# problem120.c:7:     int len2 = strlen(s2);
	movq	-48(%rbp), %rax	# s2, tmp111
	movq	%rax, %rdi	# tmp111,
	call	strlen@PLT	#
# problem120.c:7:     int len2 = strlen(s2);
	movl	%eax, -4(%rbp)	# _2, len2
# problem120.c:9:     int can = 1;
	movl	$1, -12(%rbp)	#, can
# problem120.c:11:     for (i = 0; i < len1; i++) {
	movl	$0, -16(%rbp)	#, i
# problem120.c:11:     for (i = 0; i < len1; i++) {
	jmp	.L2	#
.L6:
# problem120.c:12:         if (s1[i] == '(') count++;
	movl	-16(%rbp), %eax	# i, tmp112
	movslq	%eax, %rdx	# tmp112, _3
	movq	-40(%rbp), %rax	# s1, tmp113
	addq	%rdx, %rax	# _3, _4
	movzbl	(%rax), %eax	# *_4, _5
# problem120.c:12:         if (s1[i] == '(') count++;
	cmpb	$40, %al	#, _5
	jne	.L3	#,
# problem120.c:12:         if (s1[i] == '(') count++;
	addl	$1, -20(%rbp)	#, count
.L3:
# problem120.c:13:         if (s1[i] == ')') count--;
	movl	-16(%rbp), %eax	# i, tmp114
	movslq	%eax, %rdx	# tmp114, _6
	movq	-40(%rbp), %rax	# s1, tmp115
	addq	%rdx, %rax	# _6, _7
	movzbl	(%rax), %eax	# *_7, _8
# problem120.c:13:         if (s1[i] == ')') count--;
	cmpb	$41, %al	#, _8
	jne	.L4	#,
# problem120.c:13:         if (s1[i] == ')') count--;
	subl	$1, -20(%rbp)	#, count
.L4:
# problem120.c:14:         if (count < 0) can = 0;
	cmpl	$0, -20(%rbp)	#, count
	jns	.L5	#,
# problem120.c:14:         if (count < 0) can = 0;
	movl	$0, -12(%rbp)	#, can
.L5:
# problem120.c:11:     for (i = 0; i < len1; i++) {
	addl	$1, -16(%rbp)	#, i
.L2:
# problem120.c:11:     for (i = 0; i < len1; i++) {
	movl	-16(%rbp), %eax	# i, tmp116
	cmpl	-8(%rbp), %eax	# len1, tmp116
	jl	.L6	#,
# problem120.c:16:     for (i = 0; i < len2; i++) {
	movl	$0, -16(%rbp)	#, i
# problem120.c:16:     for (i = 0; i < len2; i++) {
	jmp	.L7	#
.L11:
# problem120.c:17:         if (s2[i] == '(') count++;
	movl	-16(%rbp), %eax	# i, tmp117
	movslq	%eax, %rdx	# tmp117, _9
	movq	-48(%rbp), %rax	# s2, tmp118
	addq	%rdx, %rax	# _9, _10
	movzbl	(%rax), %eax	# *_10, _11
# problem120.c:17:         if (s2[i] == '(') count++;
	cmpb	$40, %al	#, _11
	jne	.L8	#,
# problem120.c:17:         if (s2[i] == '(') count++;
	addl	$1, -20(%rbp)	#, count
.L8:
# problem120.c:18:         if (s2[i] == ')') count--;
	movl	-16(%rbp), %eax	# i, tmp119
	movslq	%eax, %rdx	# tmp119, _12
	movq	-48(%rbp), %rax	# s2, tmp120
	addq	%rdx, %rax	# _12, _13
	movzbl	(%rax), %eax	# *_13, _14
# problem120.c:18:         if (s2[i] == ')') count--;
	cmpb	$41, %al	#, _14
	jne	.L9	#,
# problem120.c:18:         if (s2[i] == ')') count--;
	subl	$1, -20(%rbp)	#, count
.L9:
# problem120.c:19:         if (count < 0) can = 0;
	cmpl	$0, -20(%rbp)	#, count
	jns	.L10	#,
# problem120.c:19:         if (count < 0) can = 0;
	movl	$0, -12(%rbp)	#, can
.L10:
# problem120.c:16:     for (i = 0; i < len2; i++) {
	addl	$1, -16(%rbp)	#, i
.L7:
# problem120.c:16:     for (i = 0; i < len2; i++) {
	movl	-16(%rbp), %eax	# i, tmp121
	cmpl	-4(%rbp), %eax	# len2, tmp121
	jl	.L11	#,
# problem120.c:21:     if (count == 0 && can) return "Yes";
	cmpl	$0, -20(%rbp)	#, count
	jne	.L12	#,
# problem120.c:21:     if (count == 0 && can) return "Yes";
	cmpl	$0, -12(%rbp)	#, can
	je	.L12	#,
# problem120.c:21:     if (count == 0 && can) return "Yes";
	leaq	.LC0(%rip), %rax	#, _51
	jmp	.L13	#
.L12:
# problem120.c:23:     count = 0;
	movl	$0, -20(%rbp)	#, count
# problem120.c:24:     can = 1;
	movl	$1, -12(%rbp)	#, can
# problem120.c:26:     for (i = 0; i < len2; i++) {
	movl	$0, -16(%rbp)	#, i
# problem120.c:26:     for (i = 0; i < len2; i++) {
	jmp	.L14	#
.L18:
# problem120.c:27:         if (s2[i] == '(') count++;
	movl	-16(%rbp), %eax	# i, tmp122
	movslq	%eax, %rdx	# tmp122, _15
	movq	-48(%rbp), %rax	# s2, tmp123
	addq	%rdx, %rax	# _15, _16
	movzbl	(%rax), %eax	# *_16, _17
# problem120.c:27:         if (s2[i] == '(') count++;
	cmpb	$40, %al	#, _17
	jne	.L15	#,
# problem120.c:27:         if (s2[i] == '(') count++;
	addl	$1, -20(%rbp)	#, count
.L15:
# problem120.c:28:         if (s2[i] == ')') count--;
	movl	-16(%rbp), %eax	# i, tmp124
	movslq	%eax, %rdx	# tmp124, _18
	movq	-48(%rbp), %rax	# s2, tmp125
	addq	%rdx, %rax	# _18, _19
	movzbl	(%rax), %eax	# *_19, _20
# problem120.c:28:         if (s2[i] == ')') count--;
	cmpb	$41, %al	#, _20
	jne	.L16	#,
# problem120.c:28:         if (s2[i] == ')') count--;
	subl	$1, -20(%rbp)	#, count
.L16:
# problem120.c:29:         if (count < 0) can = 0;
	cmpl	$0, -20(%rbp)	#, count
	jns	.L17	#,
# problem120.c:29:         if (count < 0) can = 0;
	movl	$0, -12(%rbp)	#, can
.L17:
# problem120.c:26:     for (i = 0; i < len2; i++) {
	addl	$1, -16(%rbp)	#, i
.L14:
# problem120.c:26:     for (i = 0; i < len2; i++) {
	movl	-16(%rbp), %eax	# i, tmp126
	cmpl	-4(%rbp), %eax	# len2, tmp126
	jl	.L18	#,
# problem120.c:31:     for (i = 0; i < len1; i++) {
	movl	$0, -16(%rbp)	#, i
# problem120.c:31:     for (i = 0; i < len1; i++) {
	jmp	.L19	#
.L23:
# problem120.c:32:         if (s1[i] == '(') count++;
	movl	-16(%rbp), %eax	# i, tmp127
	movslq	%eax, %rdx	# tmp127, _21
	movq	-40(%rbp), %rax	# s1, tmp128
	addq	%rdx, %rax	# _21, _22
	movzbl	(%rax), %eax	# *_22, _23
# problem120.c:32:         if (s1[i] == '(') count++;
	cmpb	$40, %al	#, _23
	jne	.L20	#,
# problem120.c:32:         if (s1[i] == '(') count++;
	addl	$1, -20(%rbp)	#, count
.L20:
# problem120.c:33:         if (s1[i] == ')') count--;
	movl	-16(%rbp), %eax	# i, tmp129
	movslq	%eax, %rdx	# tmp129, _24
	movq	-40(%rbp), %rax	# s1, tmp130
	addq	%rdx, %rax	# _24, _25
	movzbl	(%rax), %eax	# *_25, _26
# problem120.c:33:         if (s1[i] == ')') count--;
	cmpb	$41, %al	#, _26
	jne	.L21	#,
# problem120.c:33:         if (s1[i] == ')') count--;
	subl	$1, -20(%rbp)	#, count
.L21:
# problem120.c:34:         if (count < 0) can = 0;
	cmpl	$0, -20(%rbp)	#, count
	jns	.L22	#,
# problem120.c:34:         if (count < 0) can = 0;
	movl	$0, -12(%rbp)	#, can
.L22:
# problem120.c:31:     for (i = 0; i < len1; i++) {
	addl	$1, -16(%rbp)	#, i
.L19:
# problem120.c:31:     for (i = 0; i < len1; i++) {
	movl	-16(%rbp), %eax	# i, tmp131
	cmpl	-8(%rbp), %eax	# len1, tmp131
	jl	.L23	#,
# problem120.c:36:     if (count == 0 && can) return "Yes";
	cmpl	$0, -20(%rbp)	#, count
	jne	.L24	#,
# problem120.c:36:     if (count == 0 && can) return "Yes";
	cmpl	$0, -12(%rbp)	#, can
	je	.L24	#,
# problem120.c:36:     if (count == 0 && can) return "Yes";
	leaq	.LC0(%rip), %rax	#, _51
	jmp	.L13	#
.L24:
# problem120.c:38:     return "No";
	leaq	.LC1(%rip), %rax	#, _51
.L13:
# problem120.c:39: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC2:
	.string	")"
.LC3:
	.string	"()("
.LC4:
	.string	"problem120.c"
	.align 8
.LC5:
	.string	"strcmp(func0(\"()(\", \")\"), \"Yes\") == 0"
	.align 8
.LC6:
	.string	"strcmp(func0(\")\", \")\"), \"No\") == 0"
.LC7:
	.string	"())())"
.LC8:
	.string	"(()(())"
	.align 8
.LC9:
	.string	"strcmp(func0(\"(()(())\", \"())())\"), \"No\") == 0"
.LC10:
	.string	"(()()("
.LC11:
	.string	")())"
	.align 8
.LC12:
	.string	"strcmp(func0(\")())\", \"(()()(\"), \"Yes\") == 0"
.LC13:
	.string	"(()())(("
.LC14:
	.string	"(())))"
	.align 8
.LC15:
	.string	"strcmp(func0(\"(())))\", \"(()())((\"), \"Yes\") == 0"
.LC16:
	.string	"())"
.LC17:
	.string	"()"
	.align 8
.LC18:
	.string	"strcmp(func0(\"()\", \"())\"), \"No\") == 0"
.LC19:
	.string	"()))()"
.LC20:
	.string	"(()("
	.align 8
.LC21:
	.string	"strcmp(func0(\"(()(\", \"()))()\"), \"Yes\") == 0"
.LC22:
	.string	"((())"
.LC23:
	.string	"(((("
	.align 8
.LC24:
	.string	"strcmp(func0(\"((((\", \"((())\"), \"No\") == 0"
.LC25:
	.string	")(()"
	.align 8
.LC26:
	.string	"strcmp(func0(\")(()\", \"(()(\"), \"No\") == 0"
.LC27:
	.string	")("
	.align 8
.LC28:
	.string	"strcmp(func0(\")(\", \")(\"), \"No\") == 0"
.LC29:
	.string	"("
	.align 8
.LC30:
	.string	"strcmp(func0(\"(\", \")\"), \"Yes\") == 0"
	.align 8
.LC31:
	.string	"strcmp(func0(\")\", \"(\"), \"Yes\") == 0"
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
# problem120.c:48:     assert(strcmp(func0("()(", ")"), "Yes") == 0);
	leaq	.LC2(%rip), %rax	#, tmp108
	movq	%rax, %rsi	# tmp108,
	leaq	.LC3(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	func0	#
	movq	%rax, %rdx	#, _1
	leaq	.LC0(%rip), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	movq	%rdx, %rdi	# _1,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _2
	je	.L26	#,
# problem120.c:48:     assert(strcmp(func0("()(", ")"), "Yes") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp111
	movq	%rax, %rcx	# tmp111,
	movl	$48, %edx	#,
	leaq	.LC4(%rip), %rax	#, tmp112
	movq	%rax, %rsi	# tmp112,
	leaq	.LC5(%rip), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	call	__assert_fail@PLT	#
.L26:
# problem120.c:49:     assert(strcmp(func0(")", ")"), "No") == 0);
	leaq	.LC2(%rip), %rax	#, tmp114
	movq	%rax, %rsi	# tmp114,
	leaq	.LC2(%rip), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	func0	#
	movq	%rax, %rdx	#, _3
	leaq	.LC1(%rip), %rax	#, tmp116
	movq	%rax, %rsi	# tmp116,
	movq	%rdx, %rdi	# _3,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _4
	je	.L27	#,
# problem120.c:49:     assert(strcmp(func0(")", ")"), "No") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp117
	movq	%rax, %rcx	# tmp117,
	movl	$49, %edx	#,
	leaq	.LC4(%rip), %rax	#, tmp118
	movq	%rax, %rsi	# tmp118,
	leaq	.LC6(%rip), %rax	#, tmp119
	movq	%rax, %rdi	# tmp119,
	call	__assert_fail@PLT	#
.L27:
# problem120.c:50:     assert(strcmp(func0("(()(())", "())())"), "No") == 0);
	leaq	.LC7(%rip), %rax	#, tmp120
	movq	%rax, %rsi	# tmp120,
	leaq	.LC8(%rip), %rax	#, tmp121
	movq	%rax, %rdi	# tmp121,
	call	func0	#
	movq	%rax, %rdx	#, _5
	leaq	.LC1(%rip), %rax	#, tmp122
	movq	%rax, %rsi	# tmp122,
	movq	%rdx, %rdi	# _5,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _6
	je	.L28	#,
# problem120.c:50:     assert(strcmp(func0("(()(())", "())())"), "No") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp123
	movq	%rax, %rcx	# tmp123,
	movl	$50, %edx	#,
	leaq	.LC4(%rip), %rax	#, tmp124
	movq	%rax, %rsi	# tmp124,
	leaq	.LC9(%rip), %rax	#, tmp125
	movq	%rax, %rdi	# tmp125,
	call	__assert_fail@PLT	#
.L28:
# problem120.c:51:     assert(strcmp(func0(")())", "(()()("), "Yes") == 0);
	leaq	.LC10(%rip), %rax	#, tmp126
	movq	%rax, %rsi	# tmp126,
	leaq	.LC11(%rip), %rax	#, tmp127
	movq	%rax, %rdi	# tmp127,
	call	func0	#
	movq	%rax, %rdx	#, _7
	leaq	.LC0(%rip), %rax	#, tmp128
	movq	%rax, %rsi	# tmp128,
	movq	%rdx, %rdi	# _7,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _8
	je	.L29	#,
# problem120.c:51:     assert(strcmp(func0(")())", "(()()("), "Yes") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp129
	movq	%rax, %rcx	# tmp129,
	movl	$51, %edx	#,
	leaq	.LC4(%rip), %rax	#, tmp130
	movq	%rax, %rsi	# tmp130,
	leaq	.LC12(%rip), %rax	#, tmp131
	movq	%rax, %rdi	# tmp131,
	call	__assert_fail@PLT	#
.L29:
# problem120.c:52:     assert(strcmp(func0("(())))", "(()())(("), "Yes") == 0);
	leaq	.LC13(%rip), %rax	#, tmp132
	movq	%rax, %rsi	# tmp132,
	leaq	.LC14(%rip), %rax	#, tmp133
	movq	%rax, %rdi	# tmp133,
	call	func0	#
	movq	%rax, %rdx	#, _9
	leaq	.LC0(%rip), %rax	#, tmp134
	movq	%rax, %rsi	# tmp134,
	movq	%rdx, %rdi	# _9,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _10
	je	.L30	#,
# problem120.c:52:     assert(strcmp(func0("(())))", "(()())(("), "Yes") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp135
	movq	%rax, %rcx	# tmp135,
	movl	$52, %edx	#,
	leaq	.LC4(%rip), %rax	#, tmp136
	movq	%rax, %rsi	# tmp136,
	leaq	.LC15(%rip), %rax	#, tmp137
	movq	%rax, %rdi	# tmp137,
	call	__assert_fail@PLT	#
.L30:
# problem120.c:53:     assert(strcmp(func0("()", "())"), "No") == 0);
	leaq	.LC16(%rip), %rax	#, tmp138
	movq	%rax, %rsi	# tmp138,
	leaq	.LC17(%rip), %rax	#, tmp139
	movq	%rax, %rdi	# tmp139,
	call	func0	#
	movq	%rax, %rdx	#, _11
	leaq	.LC1(%rip), %rax	#, tmp140
	movq	%rax, %rsi	# tmp140,
	movq	%rdx, %rdi	# _11,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _12
	je	.L31	#,
# problem120.c:53:     assert(strcmp(func0("()", "())"), "No") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp141
	movq	%rax, %rcx	# tmp141,
	movl	$53, %edx	#,
	leaq	.LC4(%rip), %rax	#, tmp142
	movq	%rax, %rsi	# tmp142,
	leaq	.LC18(%rip), %rax	#, tmp143
	movq	%rax, %rdi	# tmp143,
	call	__assert_fail@PLT	#
.L31:
# problem120.c:54:     assert(strcmp(func0("(()(", "()))()"), "Yes") == 0);
	leaq	.LC19(%rip), %rax	#, tmp144
	movq	%rax, %rsi	# tmp144,
	leaq	.LC20(%rip), %rax	#, tmp145
	movq	%rax, %rdi	# tmp145,
	call	func0	#
	movq	%rax, %rdx	#, _13
	leaq	.LC0(%rip), %rax	#, tmp146
	movq	%rax, %rsi	# tmp146,
	movq	%rdx, %rdi	# _13,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _14
	je	.L32	#,
# problem120.c:54:     assert(strcmp(func0("(()(", "()))()"), "Yes") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp147
	movq	%rax, %rcx	# tmp147,
	movl	$54, %edx	#,
	leaq	.LC4(%rip), %rax	#, tmp148
	movq	%rax, %rsi	# tmp148,
	leaq	.LC21(%rip), %rax	#, tmp149
	movq	%rax, %rdi	# tmp149,
	call	__assert_fail@PLT	#
.L32:
# problem120.c:55:     assert(strcmp(func0("((((", "((())"), "No") == 0);
	leaq	.LC22(%rip), %rax	#, tmp150
	movq	%rax, %rsi	# tmp150,
	leaq	.LC23(%rip), %rax	#, tmp151
	movq	%rax, %rdi	# tmp151,
	call	func0	#
	movq	%rax, %rdx	#, _15
	leaq	.LC1(%rip), %rax	#, tmp152
	movq	%rax, %rsi	# tmp152,
	movq	%rdx, %rdi	# _15,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _16
	je	.L33	#,
# problem120.c:55:     assert(strcmp(func0("((((", "((())"), "No") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp153
	movq	%rax, %rcx	# tmp153,
	movl	$55, %edx	#,
	leaq	.LC4(%rip), %rax	#, tmp154
	movq	%rax, %rsi	# tmp154,
	leaq	.LC24(%rip), %rax	#, tmp155
	movq	%rax, %rdi	# tmp155,
	call	__assert_fail@PLT	#
.L33:
# problem120.c:56:     assert(strcmp(func0(")(()", "(()("), "No") == 0);
	leaq	.LC20(%rip), %rax	#, tmp156
	movq	%rax, %rsi	# tmp156,
	leaq	.LC25(%rip), %rax	#, tmp157
	movq	%rax, %rdi	# tmp157,
	call	func0	#
	movq	%rax, %rdx	#, _17
	leaq	.LC1(%rip), %rax	#, tmp158
	movq	%rax, %rsi	# tmp158,
	movq	%rdx, %rdi	# _17,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _18
	je	.L34	#,
# problem120.c:56:     assert(strcmp(func0(")(()", "(()("), "No") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp159
	movq	%rax, %rcx	# tmp159,
	movl	$56, %edx	#,
	leaq	.LC4(%rip), %rax	#, tmp160
	movq	%rax, %rsi	# tmp160,
	leaq	.LC26(%rip), %rax	#, tmp161
	movq	%rax, %rdi	# tmp161,
	call	__assert_fail@PLT	#
.L34:
# problem120.c:57:     assert(strcmp(func0(")(", ")("), "No") == 0);
	leaq	.LC27(%rip), %rax	#, tmp162
	movq	%rax, %rsi	# tmp162,
	leaq	.LC27(%rip), %rax	#, tmp163
	movq	%rax, %rdi	# tmp163,
	call	func0	#
	movq	%rax, %rdx	#, _19
	leaq	.LC1(%rip), %rax	#, tmp164
	movq	%rax, %rsi	# tmp164,
	movq	%rdx, %rdi	# _19,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _20
	je	.L35	#,
# problem120.c:57:     assert(strcmp(func0(")(", ")("), "No") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp165
	movq	%rax, %rcx	# tmp165,
	movl	$57, %edx	#,
	leaq	.LC4(%rip), %rax	#, tmp166
	movq	%rax, %rsi	# tmp166,
	leaq	.LC28(%rip), %rax	#, tmp167
	movq	%rax, %rdi	# tmp167,
	call	__assert_fail@PLT	#
.L35:
# problem120.c:58:     assert(strcmp(func0("(", ")"), "Yes") == 0);
	leaq	.LC2(%rip), %rax	#, tmp168
	movq	%rax, %rsi	# tmp168,
	leaq	.LC29(%rip), %rax	#, tmp169
	movq	%rax, %rdi	# tmp169,
	call	func0	#
	movq	%rax, %rdx	#, _21
	leaq	.LC0(%rip), %rax	#, tmp170
	movq	%rax, %rsi	# tmp170,
	movq	%rdx, %rdi	# _21,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _22
	je	.L36	#,
# problem120.c:58:     assert(strcmp(func0("(", ")"), "Yes") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp171
	movq	%rax, %rcx	# tmp171,
	movl	$58, %edx	#,
	leaq	.LC4(%rip), %rax	#, tmp172
	movq	%rax, %rsi	# tmp172,
	leaq	.LC30(%rip), %rax	#, tmp173
	movq	%rax, %rdi	# tmp173,
	call	__assert_fail@PLT	#
.L36:
# problem120.c:59:     assert(strcmp(func0(")", "("), "Yes") == 0);
	leaq	.LC29(%rip), %rax	#, tmp174
	movq	%rax, %rsi	# tmp174,
	leaq	.LC2(%rip), %rax	#, tmp175
	movq	%rax, %rdi	# tmp175,
	call	func0	#
	movq	%rax, %rdx	#, _23
	leaq	.LC0(%rip), %rax	#, tmp176
	movq	%rax, %rsi	# tmp176,
	movq	%rdx, %rdi	# _23,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _24
	je	.L37	#,
# problem120.c:59:     assert(strcmp(func0(")", "("), "Yes") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp177
	movq	%rax, %rcx	# tmp177,
	movl	$59, %edx	#,
	leaq	.LC4(%rip), %rax	#, tmp178
	movq	%rax, %rsi	# tmp178,
	leaq	.LC31(%rip), %rax	#, tmp179
	movq	%rax, %rdi	# tmp179,
	call	__assert_fail@PLT	#
.L37:
# problem120.c:61:     return 0;
	movl	$0, %eax	#, _50
# problem120.c:62: }
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
