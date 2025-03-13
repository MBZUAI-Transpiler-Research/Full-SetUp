	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
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
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# l, l
	movl	%esi, -44(%rbp)	# size, size
	movq	%rdx, -56(%rbp)	# out, out
# code.c:5:     int *third = malloc((size / 3 + 1) * sizeof(int));
	movl	-44(%rbp), %eax	# size, tmp133
	movslq	%eax, %rdx	# tmp133, tmp134
	imulq	$1431655766, %rdx, %rdx	#, tmp134, tmp135
	shrq	$32, %rdx	#, tmp136
	sarl	$31, %eax	#, tmp137
	subl	%eax, %edx	# tmp137, _1
# code.c:5:     int *third = malloc((size / 3 + 1) * sizeof(int));
	leal	1(%rdx), %eax	#, _2
	cltq
# code.c:5:     int *third = malloc((size / 3 + 1) * sizeof(int));
	salq	$2, %rax	#, _4
	movq	%rax, %rdi	# _4,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp138, third
# code.c:6:     int i, k = 0, third_size = 0;
	movl	$0, -24(%rbp)	#, k
# code.c:6:     int i, k = 0, third_size = 0;
	movl	$0, -20(%rbp)	#, third_size
# code.c:8:     for (i = 0; i * 3 < size; i++) {
	movl	$0, -28(%rbp)	#, i
# code.c:8:     for (i = 0; i * 3 < size; i++) {
	jmp	.L2	#
.L3:
# code.c:9:         third[i] = l[i * 3];
	movl	-28(%rbp), %edx	# i, tmp139
	movl	%edx, %eax	# tmp139, tmp140
	addl	%eax, %eax	# tmp140
	addl	%edx, %eax	# tmp139, _5
	cltq
# code.c:9:         third[i] = l[i * 3];
	leaq	0(,%rax,4), %rdx	#, _7
	movq	-40(%rbp), %rax	# l, tmp141
	addq	%rdx, %rax	# _7, _8
# code.c:9:         third[i] = l[i * 3];
	movl	-28(%rbp), %edx	# i, tmp142
	movslq	%edx, %rdx	# tmp142, _9
	leaq	0(,%rdx,4), %rcx	#, _10
	movq	-8(%rbp), %rdx	# third, tmp143
	addq	%rcx, %rdx	# _10, _11
# code.c:9:         third[i] = l[i * 3];
	movl	(%rax), %eax	# *_8, _12
# code.c:9:         third[i] = l[i * 3];
	movl	%eax, (%rdx)	# _12, *_11
# code.c:10:         third_size++;
	addl	$1, -20(%rbp)	#, third_size
# code.c:8:     for (i = 0; i * 3 < size; i++) {
	addl	$1, -28(%rbp)	#, i
.L2:
# code.c:8:     for (i = 0; i * 3 < size; i++) {
	movl	-28(%rbp), %edx	# i, tmp144
	movl	%edx, %eax	# tmp144, tmp145
	addl	%eax, %eax	# tmp145
	addl	%edx, %eax	# tmp144, _13
# code.c:8:     for (i = 0; i * 3 < size; i++) {
	cmpl	%eax, -44(%rbp)	# _13, size
	jg	.L3	#,
# code.c:13:     for (i = 0; i < third_size - 1; i++) {
	movl	$0, -28(%rbp)	#, i
# code.c:13:     for (i = 0; i < third_size - 1; i++) {
	jmp	.L4	#
.L9:
# code.c:14:         int min_idx = i;
	movl	-28(%rbp), %eax	# i, tmp146
	movl	%eax, -16(%rbp)	# tmp146, min_idx
# code.c:15:         for (k = i + 1; k < third_size; k++) {
	movl	-28(%rbp), %eax	# i, tmp150
	addl	$1, %eax	#, tmp149
	movl	%eax, -24(%rbp)	# tmp149, k
# code.c:15:         for (k = i + 1; k < third_size; k++) {
	jmp	.L5	#
.L7:
# code.c:16:             if (third[k] < third[min_idx])
	movl	-24(%rbp), %eax	# k, tmp151
	cltq
	leaq	0(,%rax,4), %rdx	#, _15
	movq	-8(%rbp), %rax	# third, tmp152
	addq	%rdx, %rax	# _15, _16
	movl	(%rax), %edx	# *_16, _17
# code.c:16:             if (third[k] < third[min_idx])
	movl	-16(%rbp), %eax	# min_idx, tmp153
	cltq
	leaq	0(,%rax,4), %rcx	#, _19
	movq	-8(%rbp), %rax	# third, tmp154
	addq	%rcx, %rax	# _19, _20
	movl	(%rax), %eax	# *_20, _21
# code.c:16:             if (third[k] < third[min_idx])
	cmpl	%eax, %edx	# _21, _17
	jge	.L6	#,
# code.c:17:                 min_idx = k;
	movl	-24(%rbp), %eax	# k, tmp155
	movl	%eax, -16(%rbp)	# tmp155, min_idx
.L6:
# code.c:15:         for (k = i + 1; k < third_size; k++) {
	addl	$1, -24(%rbp)	#, k
.L5:
# code.c:15:         for (k = i + 1; k < third_size; k++) {
	movl	-24(%rbp), %eax	# k, tmp156
	cmpl	-20(%rbp), %eax	# third_size, tmp156
	jl	.L7	#,
# code.c:19:         if (min_idx != i) {
	movl	-16(%rbp), %eax	# min_idx, tmp157
	cmpl	-28(%rbp), %eax	# i, tmp157
	je	.L8	#,
# code.c:20:             int temp = third[i];
	movl	-28(%rbp), %eax	# i, tmp158
	cltq
	leaq	0(,%rax,4), %rdx	#, _23
	movq	-8(%rbp), %rax	# third, tmp159
	addq	%rdx, %rax	# _23, _24
# code.c:20:             int temp = third[i];
	movl	(%rax), %eax	# *_24, tmp160
	movl	%eax, -12(%rbp)	# tmp160, temp
# code.c:21:             third[i] = third[min_idx];
	movl	-16(%rbp), %eax	# min_idx, tmp161
	cltq
	leaq	0(,%rax,4), %rdx	#, _26
	movq	-8(%rbp), %rax	# third, tmp162
	addq	%rdx, %rax	# _26, _27
# code.c:21:             third[i] = third[min_idx];
	movl	-28(%rbp), %edx	# i, tmp163
	movslq	%edx, %rdx	# tmp163, _28
	leaq	0(,%rdx,4), %rcx	#, _29
	movq	-8(%rbp), %rdx	# third, tmp164
	addq	%rcx, %rdx	# _29, _30
# code.c:21:             third[i] = third[min_idx];
	movl	(%rax), %eax	# *_27, _31
# code.c:21:             third[i] = third[min_idx];
	movl	%eax, (%rdx)	# _31, *_30
# code.c:22:             third[min_idx] = temp;
	movl	-16(%rbp), %eax	# min_idx, tmp165
	cltq
	leaq	0(,%rax,4), %rdx	#, _33
	movq	-8(%rbp), %rax	# third, tmp166
	addq	%rax, %rdx	# tmp166, _34
# code.c:22:             third[min_idx] = temp;
	movl	-12(%rbp), %eax	# temp, tmp167
	movl	%eax, (%rdx)	# tmp167, *_34
.L8:
# code.c:13:     for (i = 0; i < third_size - 1; i++) {
	addl	$1, -28(%rbp)	#, i
.L4:
# code.c:13:     for (i = 0; i < third_size - 1; i++) {
	movl	-20(%rbp), %eax	# third_size, tmp168
	subl	$1, %eax	#, _35
# code.c:13:     for (i = 0; i < third_size - 1; i++) {
	cmpl	%eax, -28(%rbp)	# _35, i
	jl	.L9	#,
# code.c:26:     for (i = 0; i < size; i++) {
	movl	$0, -28(%rbp)	#, i
# code.c:26:     for (i = 0; i < size; i++) {
	jmp	.L10	#
.L13:
# code.c:27:         if (i % 3 == 0) {
	movl	-28(%rbp), %ecx	# i, tmp169
	movslq	%ecx, %rax	# tmp169, tmp170
	imulq	$1431655766, %rax, %rax	#, tmp170, tmp171
	shrq	$32, %rax	#, tmp171
	movq	%rax, %rdx	# tmp171, tmp172
	movl	%ecx, %eax	# tmp169, tmp173
	sarl	$31, %eax	#, tmp173
	subl	%eax, %edx	# tmp173, _36
	movl	%edx, %eax	# _36, tmp174
	addl	%eax, %eax	# tmp174
	addl	%edx, %eax	# _36, tmp174
	subl	%eax, %ecx	# tmp174, tmp169
	movl	%ecx, %edx	# tmp169, _36
# code.c:27:         if (i % 3 == 0) {
	testl	%edx, %edx	# _36
	jne	.L11	#,
# code.c:28:             out[i] = third[i / 3];
	movl	-28(%rbp), %eax	# i, tmp175
	movslq	%eax, %rdx	# tmp175, tmp176
	imulq	$1431655766, %rdx, %rdx	#, tmp176, tmp177
	shrq	$32, %rdx	#, tmp178
	sarl	$31, %eax	#, tmp179
	subl	%eax, %edx	# tmp179, _37
	movslq	%edx, %rax	# _37, _38
# code.c:28:             out[i] = third[i / 3];
	leaq	0(,%rax,4), %rdx	#, _39
	movq	-8(%rbp), %rax	# third, tmp180
	addq	%rdx, %rax	# _39, _40
# code.c:28:             out[i] = third[i / 3];
	movl	-28(%rbp), %edx	# i, tmp181
	movslq	%edx, %rdx	# tmp181, _41
	leaq	0(,%rdx,4), %rcx	#, _42
	movq	-56(%rbp), %rdx	# out, tmp182
	addq	%rcx, %rdx	# _42, _43
# code.c:28:             out[i] = third[i / 3];
	movl	(%rax), %eax	# *_40, _44
# code.c:28:             out[i] = third[i / 3];
	movl	%eax, (%rdx)	# _44, *_43
	jmp	.L12	#
.L11:
# code.c:30:             out[i] = l[i];
	movl	-28(%rbp), %eax	# i, tmp183
	cltq
	leaq	0(,%rax,4), %rdx	#, _46
	movq	-40(%rbp), %rax	# l, tmp184
	addq	%rdx, %rax	# _46, _47
# code.c:30:             out[i] = l[i];
	movl	-28(%rbp), %edx	# i, tmp185
	movslq	%edx, %rdx	# tmp185, _48
	leaq	0(,%rdx,4), %rcx	#, _49
	movq	-56(%rbp), %rdx	# out, tmp186
	addq	%rcx, %rdx	# _49, _50
# code.c:30:             out[i] = l[i];
	movl	(%rax), %eax	# *_47, _51
# code.c:30:             out[i] = l[i];
	movl	%eax, (%rdx)	# _51, *_50
.L12:
# code.c:26:     for (i = 0; i < size; i++) {
	addl	$1, -28(%rbp)	#, i
.L10:
# code.c:26:     for (i = 0; i < size; i++) {
	movl	-28(%rbp), %eax	# i, tmp187
	cmpl	-44(%rbp), %eax	# size, tmp187
	jl	.L13	#,
# code.c:34:     free(third);
	movq	-8(%rbp), %rax	# third, tmp188
	movq	%rax, %rdi	# tmp188,
	call	free@PLT	#
# code.c:35: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
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
