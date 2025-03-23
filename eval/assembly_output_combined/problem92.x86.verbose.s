	.file	"problem92.c"
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
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# S, S
# problem92.c:6:     int isstart = 1;
	movl	$1, -16(%rbp)	#, isstart
# problem92.c:7:     int isi = 0;
	movl	$0, -12(%rbp)	#, isi
# problem92.c:8:     int sum = 0;
	movl	$0, -8(%rbp)	#, sum
# problem92.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	movl	$0, -4(%rbp)	#, i
# problem92.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	jmp	.L2	#
.L9:
# problem92.c:10:         if (isspace(S[i]) && isi) {
	call	__ctype_b_loc@PLT	#
	movq	(%rax), %rdx	# *_1, _2
	movl	-4(%rbp), %eax	# i, tmp132
	movslq	%eax, %rcx	# tmp132, _3
	movq	-24(%rbp), %rax	# S, tmp133
	addq	%rcx, %rax	# _3, _4
	movzbl	(%rax), %eax	# *_4, _5
	movsbq	%al, %rax	# _5, _6
	addq	%rax, %rax	# _7
	addq	%rdx, %rax	# _2, _8
	movzwl	(%rax), %eax	# *_8, _9
	movzwl	%ax, %eax	# _9, _10
	andl	$8192, %eax	#, _11
# problem92.c:10:         if (isspace(S[i]) && isi) {
	testl	%eax, %eax	# _11
	je	.L3	#,
# problem92.c:10:         if (isspace(S[i]) && isi) {
	cmpl	$0, -12(%rbp)	#, isi
	je	.L3	#,
# problem92.c:11:             isi = 0;
	movl	$0, -12(%rbp)	#, isi
# problem92.c:12:             sum += 1;
	addl	$1, -8(%rbp)	#, sum
.L3:
# problem92.c:14:         if (S[i] == 'I' && isstart) {
	movl	-4(%rbp), %eax	# i, tmp134
	movslq	%eax, %rdx	# tmp134, _12
	movq	-24(%rbp), %rax	# S, tmp135
	addq	%rdx, %rax	# _12, _13
	movzbl	(%rax), %eax	# *_13, _14
# problem92.c:14:         if (S[i] == 'I' && isstart) {
	cmpb	$73, %al	#, _14
	jne	.L4	#,
# problem92.c:14:         if (S[i] == 'I' && isstart) {
	cmpl	$0, -16(%rbp)	#, isstart
	je	.L4	#,
# problem92.c:15:             isi = 1;
	movl	$1, -12(%rbp)	#, isi
	jmp	.L5	#
.L4:
# problem92.c:16:         } else if (!isspace(S[i])) {
	call	__ctype_b_loc@PLT	#
	movq	(%rax), %rdx	# *_15, _16
	movl	-4(%rbp), %eax	# i, tmp136
	movslq	%eax, %rcx	# tmp136, _17
	movq	-24(%rbp), %rax	# S, tmp137
	addq	%rcx, %rax	# _17, _18
	movzbl	(%rax), %eax	# *_18, _19
	movsbq	%al, %rax	# _19, _20
	addq	%rax, %rax	# _21
	addq	%rdx, %rax	# _16, _22
	movzwl	(%rax), %eax	# *_22, _23
	movzwl	%ax, %eax	# _23, _24
	andl	$8192, %eax	#, _25
# problem92.c:16:         } else if (!isspace(S[i])) {
	testl	%eax, %eax	# _25
	jne	.L5	#,
# problem92.c:17:             isi = 0;
	movl	$0, -12(%rbp)	#, isi
.L5:
# problem92.c:19:         if (!isspace(S[i])) {
	call	__ctype_b_loc@PLT	#
	movq	(%rax), %rdx	# *_26, _27
	movl	-4(%rbp), %eax	# i, tmp138
	movslq	%eax, %rcx	# tmp138, _28
	movq	-24(%rbp), %rax	# S, tmp139
	addq	%rcx, %rax	# _28, _29
	movzbl	(%rax), %eax	# *_29, _30
	movsbq	%al, %rax	# _30, _31
	addq	%rax, %rax	# _32
	addq	%rdx, %rax	# _27, _33
	movzwl	(%rax), %eax	# *_33, _34
	movzwl	%ax, %eax	# _34, _35
	andl	$8192, %eax	#, _36
# problem92.c:19:         if (!isspace(S[i])) {
	testl	%eax, %eax	# _36
	jne	.L6	#,
# problem92.c:20:             isstart = 0;
	movl	$0, -16(%rbp)	#, isstart
.L6:
# problem92.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	movl	-4(%rbp), %eax	# i, tmp140
	movslq	%eax, %rdx	# tmp140, _37
	movq	-24(%rbp), %rax	# S, tmp141
	addq	%rdx, %rax	# _37, _38
	movzbl	(%rax), %eax	# *_38, _39
# problem92.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	cmpb	$46, %al	#, _39
	je	.L7	#,
# problem92.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	movl	-4(%rbp), %eax	# i, tmp142
	movslq	%eax, %rdx	# tmp142, _40
	movq	-24(%rbp), %rax	# S, tmp143
	addq	%rdx, %rax	# _40, _41
	movzbl	(%rax), %eax	# *_41, _42
# problem92.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	cmpb	$63, %al	#, _42
	je	.L7	#,
# problem92.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	movl	-4(%rbp), %eax	# i, tmp144
	movslq	%eax, %rdx	# tmp144, _43
	movq	-24(%rbp), %rax	# S, tmp145
	addq	%rdx, %rax	# _43, _44
	movzbl	(%rax), %eax	# *_44, _45
# problem92.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	cmpb	$33, %al	#, _45
	jne	.L8	#,
.L7:
# problem92.c:23:             isstart = 1;
	movl	$1, -16(%rbp)	#, isstart
.L8:
# problem92.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	addl	$1, -4(%rbp)	#, i
.L2:
# problem92.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	movl	-4(%rbp), %eax	# i, tmp146
	movslq	%eax, %rdx	# tmp146, _46
	movq	-24(%rbp), %rax	# S, tmp147
	addq	%rdx, %rax	# _46, _47
	movzbl	(%rax), %eax	# *_47, _48
# problem92.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	testb	%al, %al	# _48
	jne	.L9	#,
# problem92.c:26:     return sum;
	movl	-8(%rbp), %eax	# sum, _64
# problem92.c:27: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"Hello world"
.LC1:
	.string	"problem92.c"
.LC2:
	.string	"func0(\"Hello world\") == 0"
.LC3:
	.string	"Is the sky blue?"
	.align 8
.LC4:
	.string	"func0(\"Is the sky blue?\") == 0"
.LC5:
	.string	"I love It !"
.LC6:
	.string	"func0(\"I love It !\") == 1"
.LC7:
	.string	"bIt"
.LC8:
	.string	"func0(\"bIt\") == 0"
	.align 8
.LC9:
	.string	"I feel good today. I will be productive. will kill It"
	.align 8
.LC10:
	.string	"func0(\"I feel good today. I will be productive. will kill It\") == 2"
	.align 8
.LC11:
	.string	"You and I are going for a walk"
	.align 8
.LC12:
	.string	"func0(\"You and I are going for a walk\") == 0"
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
# problem92.c:34:     assert(func0("Hello world") == 0);
	leaq	.LC0(%rip), %rax	#, tmp90
	movq	%rax, %rdi	# tmp90,
	call	func0	#
	testl	%eax, %eax	# _1
	je	.L12	#,
# problem92.c:34:     assert(func0("Hello world") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp91
	movq	%rax, %rcx	# tmp91,
	movl	$34, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp92
	movq	%rax, %rsi	# tmp92,
	leaq	.LC2(%rip), %rax	#, tmp93
	movq	%rax, %rdi	# tmp93,
	call	__assert_fail@PLT	#
.L12:
# problem92.c:35:     assert(func0("Is the sky blue?") == 0);
	leaq	.LC3(%rip), %rax	#, tmp94
	movq	%rax, %rdi	# tmp94,
	call	func0	#
	testl	%eax, %eax	# _2
	je	.L13	#,
# problem92.c:35:     assert(func0("Is the sky blue?") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp95
	movq	%rax, %rcx	# tmp95,
	movl	$35, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp96
	movq	%rax, %rsi	# tmp96,
	leaq	.LC4(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	__assert_fail@PLT	#
.L13:
# problem92.c:36:     assert(func0("I love It !") == 1);
	leaq	.LC5(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	func0	#
	cmpl	$1, %eax	#, _3
	je	.L14	#,
# problem92.c:36:     assert(func0("I love It !") == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp99
	movq	%rax, %rcx	# tmp99,
	movl	$36, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp100
	movq	%rax, %rsi	# tmp100,
	leaq	.LC6(%rip), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	call	__assert_fail@PLT	#
.L14:
# problem92.c:37:     assert(func0("bIt") == 0);
	leaq	.LC7(%rip), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	func0	#
	testl	%eax, %eax	# _4
	je	.L15	#,
# problem92.c:37:     assert(func0("bIt") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp103
	movq	%rax, %rcx	# tmp103,
	movl	$37, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp104
	movq	%rax, %rsi	# tmp104,
	leaq	.LC8(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	__assert_fail@PLT	#
.L15:
# problem92.c:38:     assert(func0("I feel good today. I will be productive. will kill It") == 2);
	leaq	.LC9(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	func0	#
	cmpl	$2, %eax	#, _5
	je	.L16	#,
# problem92.c:38:     assert(func0("I feel good today. I will be productive. will kill It") == 2);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp107
	movq	%rax, %rcx	# tmp107,
	movl	$38, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp108
	movq	%rax, %rsi	# tmp108,
	leaq	.LC10(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	__assert_fail@PLT	#
.L16:
# problem92.c:39:     assert(func0("You and I are going for a walk") == 0);
	leaq	.LC11(%rip), %rax	#, tmp110
	movq	%rax, %rdi	# tmp110,
	call	func0	#
	testl	%eax, %eax	# _6
	je	.L17	#,
# problem92.c:39:     assert(func0("You and I are going for a walk") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp111
	movq	%rax, %rcx	# tmp111,
	movl	$39, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp112
	movq	%rax, %rsi	# tmp112,
	leaq	.LC12(%rip), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	call	__assert_fail@PLT	#
.L17:
# problem92.c:41:     return 0;
	movl	$0, %eax	#, _20
# problem92.c:42: }
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
