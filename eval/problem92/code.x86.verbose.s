	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
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
# code.c:6:     int isstart = 1;
	movl	$1, -16(%rbp)	#, isstart
# code.c:7:     int isi = 0;
	movl	$0, -12(%rbp)	#, isi
# code.c:8:     int sum = 0;
	movl	$0, -8(%rbp)	#, sum
# code.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	movl	$0, -4(%rbp)	#, i
# code.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	jmp	.L2	#
.L9:
# code.c:10:         if (isspace(S[i]) && isi) {
	call	__ctype_b_loc@PLT	#
# code.c:10:         if (isspace(S[i]) && isi) {
	movq	(%rax), %rax	# *_1, _2
	movl	-4(%rbp), %edx	# i, tmp132
	movslq	%edx, %rcx	# tmp132, _3
	movq	-24(%rbp), %rdx	# S, tmp133
	addq	%rcx, %rdx	# _3, _4
	movzbl	(%rdx), %edx	# *_4, _5
	movsbq	%dl, %rdx	# _5, _6
	addq	%rdx, %rdx	# _7
	addq	%rdx, %rax	# _7, _8
	movzwl	(%rax), %eax	# *_8, _9
	movzwl	%ax, %eax	# _9, _10
	andl	$8192, %eax	#, _11
# code.c:10:         if (isspace(S[i]) && isi) {
	testl	%eax, %eax	# _11
	je	.L3	#,
# code.c:10:         if (isspace(S[i]) && isi) {
	cmpl	$0, -12(%rbp)	#, isi
	je	.L3	#,
# code.c:11:             isi = 0;
	movl	$0, -12(%rbp)	#, isi
# code.c:12:             sum += 1;
	addl	$1, -8(%rbp)	#, sum
.L3:
# code.c:14:         if (S[i] == 'I' && isstart) {
	movl	-4(%rbp), %eax	# i, tmp134
	movslq	%eax, %rdx	# tmp134, _12
	movq	-24(%rbp), %rax	# S, tmp135
	addq	%rdx, %rax	# _12, _13
	movzbl	(%rax), %eax	# *_13, _14
# code.c:14:         if (S[i] == 'I' && isstart) {
	cmpb	$73, %al	#, _14
	jne	.L4	#,
# code.c:14:         if (S[i] == 'I' && isstart) {
	cmpl	$0, -16(%rbp)	#, isstart
	je	.L4	#,
# code.c:15:             isi = 1;
	movl	$1, -12(%rbp)	#, isi
	jmp	.L5	#
.L4:
# code.c:16:         } else if (!isspace(S[i])) {
	call	__ctype_b_loc@PLT	#
# code.c:16:         } else if (!isspace(S[i])) {
	movq	(%rax), %rax	# *_15, _16
	movl	-4(%rbp), %edx	# i, tmp136
	movslq	%edx, %rcx	# tmp136, _17
	movq	-24(%rbp), %rdx	# S, tmp137
	addq	%rcx, %rdx	# _17, _18
	movzbl	(%rdx), %edx	# *_18, _19
	movsbq	%dl, %rdx	# _19, _20
	addq	%rdx, %rdx	# _21
	addq	%rdx, %rax	# _21, _22
	movzwl	(%rax), %eax	# *_22, _23
	movzwl	%ax, %eax	# _23, _24
	andl	$8192, %eax	#, _25
# code.c:16:         } else if (!isspace(S[i])) {
	testl	%eax, %eax	# _25
	jne	.L5	#,
# code.c:17:             isi = 0;
	movl	$0, -12(%rbp)	#, isi
.L5:
# code.c:19:         if (!isspace(S[i])) {
	call	__ctype_b_loc@PLT	#
# code.c:19:         if (!isspace(S[i])) {
	movq	(%rax), %rax	# *_26, _27
	movl	-4(%rbp), %edx	# i, tmp138
	movslq	%edx, %rcx	# tmp138, _28
	movq	-24(%rbp), %rdx	# S, tmp139
	addq	%rcx, %rdx	# _28, _29
	movzbl	(%rdx), %edx	# *_29, _30
	movsbq	%dl, %rdx	# _30, _31
	addq	%rdx, %rdx	# _32
	addq	%rdx, %rax	# _32, _33
	movzwl	(%rax), %eax	# *_33, _34
	movzwl	%ax, %eax	# _34, _35
	andl	$8192, %eax	#, _36
# code.c:19:         if (!isspace(S[i])) {
	testl	%eax, %eax	# _36
	jne	.L6	#,
# code.c:20:             isstart = 0;
	movl	$0, -16(%rbp)	#, isstart
.L6:
# code.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	movl	-4(%rbp), %eax	# i, tmp140
	movslq	%eax, %rdx	# tmp140, _37
	movq	-24(%rbp), %rax	# S, tmp141
	addq	%rdx, %rax	# _37, _38
	movzbl	(%rax), %eax	# *_38, _39
# code.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	cmpb	$46, %al	#, _39
	je	.L7	#,
# code.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	movl	-4(%rbp), %eax	# i, tmp142
	movslq	%eax, %rdx	# tmp142, _40
	movq	-24(%rbp), %rax	# S, tmp143
	addq	%rdx, %rax	# _40, _41
	movzbl	(%rax), %eax	# *_41, _42
# code.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	cmpb	$63, %al	#, _42
	je	.L7	#,
# code.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	movl	-4(%rbp), %eax	# i, tmp144
	movslq	%eax, %rdx	# tmp144, _43
	movq	-24(%rbp), %rax	# S, tmp145
	addq	%rdx, %rax	# _43, _44
	movzbl	(%rax), %eax	# *_44, _45
# code.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	cmpb	$33, %al	#, _45
	jne	.L8	#,
.L7:
# code.c:23:             isstart = 1;
	movl	$1, -16(%rbp)	#, isstart
.L8:
# code.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	addl	$1, -4(%rbp)	#, i
.L2:
# code.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	movl	-4(%rbp), %eax	# i, tmp146
	movslq	%eax, %rdx	# tmp146, _46
	movq	-24(%rbp), %rax	# S, tmp147
	addq	%rdx, %rax	# _46, _47
	movzbl	(%rax), %eax	# *_47, _48
# code.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	testb	%al, %al	# _48
	jne	.L9	#,
# code.c:26:     return sum;
	movl	-8(%rbp), %eax	# sum, _64
# code.c:27: }
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
