	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# dict, dict
	movl	%esi, -44(%rbp)	# size, size
# eval/problem96//code.c:7:     if (size == 0) return 0;
	cmpl	$0, -44(%rbp)	#, size
	jne	.L2	#,
# eval/problem96//code.c:7:     if (size == 0) return 0;
	movl	$0, %eax	#, _52
	jmp	.L3	#
.L2:
# eval/problem96//code.c:8:     int has_lower = 0, has_upper = 0;
	movl	$0, -24(%rbp)	#, has_lower
# eval/problem96//code.c:8:     int has_lower = 0, has_upper = 0;
	movl	$0, -20(%rbp)	#, has_upper
# eval/problem96//code.c:9:     for (int i = 0; i < size; ++i) {
	movl	$0, -16(%rbp)	#, i
# eval/problem96//code.c:9:     for (int i = 0; i < size; ++i) {
	jmp	.L4	#
.L11:
# eval/problem96//code.c:10:         char* key = dict[i][0];
	movl	-16(%rbp), %eax	# i, tmp127
	cltq
	salq	$4, %rax	#, _1
	movq	%rax, %rdx	# _1, _2
	movq	-40(%rbp), %rax	# dict, tmp128
	addq	%rdx, %rax	# _2, _3
# eval/problem96//code.c:10:         char* key = dict[i][0];
	movq	(%rax), %rax	# (*_3)[0], tmp129
	movq	%rax, -8(%rbp)	# tmp129, key
# eval/problem96//code.c:11:         for (int j = 0; key[j]; ++j) {
	movl	$0, -12(%rbp)	#, j
# eval/problem96//code.c:11:         for (int j = 0; key[j]; ++j) {
	jmp	.L5	#
.L10:
# eval/problem96//code.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	call	__ctype_b_loc@PLT	#
	movq	(%rax), %rdx	# *_4, _5
	movl	-12(%rbp), %eax	# j, tmp130
	movslq	%eax, %rcx	# tmp130, _6
	movq	-8(%rbp), %rax	# key, tmp131
	addq	%rcx, %rax	# _6, _7
	movzbl	(%rax), %eax	# *_7, _8
	movzbl	%al, %eax	# _9, _10
	addq	%rax, %rax	# _11
	addq	%rdx, %rax	# _5, _12
	movzwl	(%rax), %eax	# *_12, _13
	movzwl	%ax, %eax	# _13, _14
	andl	$1024, %eax	#, _15
# eval/problem96//code.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	testl	%eax, %eax	# _15
	jne	.L6	#,
# eval/problem96//code.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	movl	$0, %eax	#, _52
	jmp	.L3	#
.L6:
# eval/problem96//code.c:13:             if (isupper((unsigned char)key[j])) has_upper = 1;
	call	__ctype_b_loc@PLT	#
	movq	(%rax), %rdx	# *_16, _17
	movl	-12(%rbp), %eax	# j, tmp132
	movslq	%eax, %rcx	# tmp132, _18
	movq	-8(%rbp), %rax	# key, tmp133
	addq	%rcx, %rax	# _18, _19
	movzbl	(%rax), %eax	# *_19, _20
	movzbl	%al, %eax	# _21, _22
	addq	%rax, %rax	# _23
	addq	%rdx, %rax	# _17, _24
	movzwl	(%rax), %eax	# *_24, _25
	movzwl	%ax, %eax	# _25, _26
	andl	$256, %eax	#, _27
# eval/problem96//code.c:13:             if (isupper((unsigned char)key[j])) has_upper = 1;
	testl	%eax, %eax	# _27
	je	.L7	#,
# eval/problem96//code.c:13:             if (isupper((unsigned char)key[j])) has_upper = 1;
	movl	$1, -20(%rbp)	#, has_upper
.L7:
# eval/problem96//code.c:14:             if (islower((unsigned char)key[j])) has_lower = 1;
	call	__ctype_b_loc@PLT	#
	movq	(%rax), %rdx	# *_28, _29
	movl	-12(%rbp), %eax	# j, tmp134
	movslq	%eax, %rcx	# tmp134, _30
	movq	-8(%rbp), %rax	# key, tmp135
	addq	%rcx, %rax	# _30, _31
	movzbl	(%rax), %eax	# *_31, _32
	movzbl	%al, %eax	# _33, _34
	addq	%rax, %rax	# _35
	addq	%rdx, %rax	# _29, _36
	movzwl	(%rax), %eax	# *_36, _37
	movzwl	%ax, %eax	# _37, _38
	andl	$512, %eax	#, _39
# eval/problem96//code.c:14:             if (islower((unsigned char)key[j])) has_lower = 1;
	testl	%eax, %eax	# _39
	je	.L8	#,
# eval/problem96//code.c:14:             if (islower((unsigned char)key[j])) has_lower = 1;
	movl	$1, -24(%rbp)	#, has_lower
.L8:
# eval/problem96//code.c:15:             if (has_upper + has_lower == 2) return 0;
	movl	-20(%rbp), %edx	# has_upper, tmp136
	movl	-24(%rbp), %eax	# has_lower, tmp137
	addl	%edx, %eax	# tmp136, _40
# eval/problem96//code.c:15:             if (has_upper + has_lower == 2) return 0;
	cmpl	$2, %eax	#, _40
	jne	.L9	#,
# eval/problem96//code.c:15:             if (has_upper + has_lower == 2) return 0;
	movl	$0, %eax	#, _52
	jmp	.L3	#
.L9:
# eval/problem96//code.c:11:         for (int j = 0; key[j]; ++j) {
	addl	$1, -12(%rbp)	#, j
.L5:
# eval/problem96//code.c:11:         for (int j = 0; key[j]; ++j) {
	movl	-12(%rbp), %eax	# j, tmp138
	movslq	%eax, %rdx	# tmp138, _41
	movq	-8(%rbp), %rax	# key, tmp139
	addq	%rdx, %rax	# _41, _42
	movzbl	(%rax), %eax	# *_42, _43
# eval/problem96//code.c:11:         for (int j = 0; key[j]; ++j) {
	testb	%al, %al	# _43
	jne	.L10	#,
# eval/problem96//code.c:9:     for (int i = 0; i < size; ++i) {
	addl	$1, -16(%rbp)	#, i
.L4:
# eval/problem96//code.c:9:     for (int i = 0; i < size; ++i) {
	movl	-16(%rbp), %eax	# i, tmp140
	cmpl	-44(%rbp), %eax	# size, tmp140
	jl	.L11	#,
# eval/problem96//code.c:18:     return 1;
	movl	$1, %eax	#, _52
.L3:
# eval/problem96//code.c:19: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
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
