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
# code.c:6:     float *even = malloc((size / 2 + 1) * sizeof(float));
	movl	-44(%rbp), %eax	# size, tmp138
	movl	%eax, %edx	# tmp138, tmp139
	shrl	$31, %edx	#, tmp139
	addl	%edx, %eax	# tmp139, tmp140
	sarl	%eax	# tmp141
# code.c:6:     float *even = malloc((size / 2 + 1) * sizeof(float));
	addl	$1, %eax	#, _2
	cltq
# code.c:6:     float *even = malloc((size / 2 + 1) * sizeof(float));
	salq	$2, %rax	#, _4
	movq	%rax, %rdi	# _4,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp142, even
# code.c:7:     int i, j, even_count = 0;
	movl	$0, -16(%rbp)	#, even_count
# code.c:9:     for (i = 0; i < size; i += 2) {
	movl	$0, -24(%rbp)	#, i
# code.c:9:     for (i = 0; i < size; i += 2) {
	jmp	.L2	#
.L3:
# code.c:10:         even[even_count++] = l[i];
	movl	-24(%rbp), %eax	# i, tmp143
	cltq
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-40(%rbp), %rax	# l, tmp144
	leaq	(%rdx,%rax), %rcx	#, _7
# code.c:10:         even[even_count++] = l[i];
	movl	-16(%rbp), %eax	# even_count, even_count.0_8
	leal	1(%rax), %edx	#, tmp145
	movl	%edx, -16(%rbp)	# tmp145, even_count
	cltq
# code.c:10:         even[even_count++] = l[i];
	leaq	0(,%rax,4), %rdx	#, _10
	movq	-8(%rbp), %rax	# even, tmp146
	addq	%rdx, %rax	# _10, _11
# code.c:10:         even[even_count++] = l[i];
	movss	(%rcx), %xmm0	# *_7, _12
# code.c:10:         even[even_count++] = l[i];
	movss	%xmm0, (%rax)	# _12, *_11
# code.c:9:     for (i = 0; i < size; i += 2) {
	addl	$2, -24(%rbp)	#, i
.L2:
# code.c:9:     for (i = 0; i < size; i += 2) {
	movl	-24(%rbp), %eax	# i, tmp147
	cmpl	-44(%rbp), %eax	# size, tmp147
	jl	.L3	#,
# code.c:13:     for (i = 0; i < even_count - 1; i++) {
	movl	$0, -24(%rbp)	#, i
# code.c:13:     for (i = 0; i < even_count - 1; i++) {
	jmp	.L4	#
.L9:
# code.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	movl	$0, -20(%rbp)	#, j
# code.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	jmp	.L5	#
.L8:
# code.c:15:             if (even[j] > even[j + 1]) {
	movl	-20(%rbp), %eax	# j, tmp148
	cltq
	leaq	0(,%rax,4), %rdx	#, _14
	movq	-8(%rbp), %rax	# even, tmp149
	addq	%rdx, %rax	# _14, _15
	movss	(%rax), %xmm0	# *_15, _16
# code.c:15:             if (even[j] > even[j + 1]) {
	movl	-20(%rbp), %eax	# j, tmp150
	cltq
	addq	$1, %rax	#, _18
	leaq	0(,%rax,4), %rdx	#, _19
	movq	-8(%rbp), %rax	# even, tmp151
	addq	%rdx, %rax	# _19, _20
	movss	(%rax), %xmm1	# *_20, _21
# code.c:15:             if (even[j] > even[j + 1]) {
	comiss	%xmm1, %xmm0	# _21, _16
	jbe	.L6	#,
# code.c:16:                 float temp = even[j];
	movl	-20(%rbp), %eax	# j, tmp152
	cltq
	leaq	0(,%rax,4), %rdx	#, _23
	movq	-8(%rbp), %rax	# even, tmp153
	addq	%rdx, %rax	# _23, _24
# code.c:16:                 float temp = even[j];
	movss	(%rax), %xmm0	# *_24, tmp154
	movss	%xmm0, -12(%rbp)	# tmp154, temp
# code.c:17:                 even[j] = even[j + 1];
	movl	-20(%rbp), %eax	# j, tmp155
	cltq
	addq	$1, %rax	#, _26
	leaq	0(,%rax,4), %rdx	#, _27
	movq	-8(%rbp), %rax	# even, tmp156
	addq	%rax, %rdx	# tmp156, _28
# code.c:17:                 even[j] = even[j + 1];
	movl	-20(%rbp), %eax	# j, tmp157
	cltq
	leaq	0(,%rax,4), %rcx	#, _30
	movq	-8(%rbp), %rax	# even, tmp158
	addq	%rcx, %rax	# _30, _31
# code.c:17:                 even[j] = even[j + 1];
	movss	(%rdx), %xmm0	# *_28, _32
# code.c:17:                 even[j] = even[j + 1];
	movss	%xmm0, (%rax)	# _32, *_31
# code.c:18:                 even[j + 1] = temp;
	movl	-20(%rbp), %eax	# j, tmp159
	cltq
	addq	$1, %rax	#, _34
	leaq	0(,%rax,4), %rdx	#, _35
	movq	-8(%rbp), %rax	# even, tmp160
	addq	%rdx, %rax	# _35, _36
# code.c:18:                 even[j + 1] = temp;
	movss	-12(%rbp), %xmm0	# temp, tmp161
	movss	%xmm0, (%rax)	# tmp161, *_36
.L6:
# code.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	addl	$1, -20(%rbp)	#, j
.L5:
# code.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	movl	-16(%rbp), %eax	# even_count, tmp162
	subl	-24(%rbp), %eax	# i, _37
# code.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	subl	$1, %eax	#, _38
# code.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	cmpl	%eax, -20(%rbp)	# _38, j
	jl	.L8	#,
# code.c:13:     for (i = 0; i < even_count - 1; i++) {
	addl	$1, -24(%rbp)	#, i
.L4:
# code.c:13:     for (i = 0; i < even_count - 1; i++) {
	movl	-16(%rbp), %eax	# even_count, tmp163
	subl	$1, %eax	#, _39
# code.c:13:     for (i = 0; i < even_count - 1; i++) {
	cmpl	%eax, -24(%rbp)	# _39, i
	jl	.L9	#,
# code.c:24:     for (i = 0; i < size; i++) {
	movl	$0, -24(%rbp)	#, i
# code.c:24:     for (i = 0; i < size; i++) {
	jmp	.L10	#
.L13:
# code.c:25:         if (i % 2 == 0) {
	movl	-24(%rbp), %eax	# i, i.1_40
	andl	$1, %eax	#, _41
# code.c:25:         if (i % 2 == 0) {
	testl	%eax, %eax	# _41
	jne	.L11	#,
# code.c:26:             out[i] = even[i / 2];
	movl	-24(%rbp), %eax	# i, tmp164
	movl	%eax, %edx	# tmp164, tmp165
	shrl	$31, %edx	#, tmp165
	addl	%edx, %eax	# tmp165, tmp166
	sarl	%eax	# tmp167
	cltq
# code.c:26:             out[i] = even[i / 2];
	leaq	0(,%rax,4), %rdx	#, _44
	movq	-8(%rbp), %rax	# even, tmp168
	addq	%rax, %rdx	# tmp168, _45
# code.c:26:             out[i] = even[i / 2];
	movl	-24(%rbp), %eax	# i, tmp169
	cltq
	leaq	0(,%rax,4), %rcx	#, _47
	movq	-56(%rbp), %rax	# out, tmp170
	addq	%rcx, %rax	# _47, _48
# code.c:26:             out[i] = even[i / 2];
	movss	(%rdx), %xmm0	# *_45, _49
# code.c:26:             out[i] = even[i / 2];
	movss	%xmm0, (%rax)	# _49, *_48
	jmp	.L12	#
.L11:
# code.c:28:             out[i] = l[i];
	movl	-24(%rbp), %eax	# i, tmp171
	cltq
	leaq	0(,%rax,4), %rdx	#, _51
	movq	-40(%rbp), %rax	# l, tmp172
	addq	%rax, %rdx	# tmp172, _52
# code.c:28:             out[i] = l[i];
	movl	-24(%rbp), %eax	# i, tmp173
	cltq
	leaq	0(,%rax,4), %rcx	#, _54
	movq	-56(%rbp), %rax	# out, tmp174
	addq	%rcx, %rax	# _54, _55
# code.c:28:             out[i] = l[i];
	movss	(%rdx), %xmm0	# *_52, _56
# code.c:28:             out[i] = l[i];
	movss	%xmm0, (%rax)	# _56, *_55
.L12:
# code.c:24:     for (i = 0; i < size; i++) {
	addl	$1, -24(%rbp)	#, i
.L10:
# code.c:24:     for (i = 0; i < size; i++) {
	movl	-24(%rbp), %eax	# i, tmp175
	cmpl	-44(%rbp), %eax	# size, tmp175
	jl	.L13	#,
# code.c:32:     free(even);
	movq	-8(%rbp), %rax	# even, tmp176
	movq	%rax, %rdi	# tmp176,
	call	free@PLT	#
# code.c:33: }
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
